/**
 * UserService
 *
 * @description :: Server-side logic for managing user's service
 */

module.exports = {


	/**
	 *
	 */
	login: function(req, res, email, password) {
		User.findOneByEmail(email)
			.then(function(user) {
				var pass = false
				if (user) {
					if (user.password == UserService.hash(password, user.salt)) {
						pass = true
					}
				}
				if (pass) {
					req.session.user = user
						//console.log(user.role)
						//set admin role
					if (user.role == 1) {
						req.session.admin = true
					}

					var url = req.param('url')
					//sails.log.debug(url)
					//TODO: url shouldn't be login again
					if (url && url!='undefined' && url!='null'){
						res.redirect(url)
					} else {
						res.redirect('/')
					}
				} else {
					return res.view('account/login', {
						msg: 'Please check your email and password',
						layout: ''
					})
				}


			})
	},

	register: function(email, password, role) {
		User.findOneByEmail(email)
			.then(function(user) {
				if (user == undefined) {
					var salt = Math.random().toString(36).substring(2)
					User.create({
						email: email,
						salt: salt,
						password: UserService.hash(password, salt),
						role: role
					}).exec(function createCB(err, user) {
						sails.log.debug('Created user with email ' + user.email);
					});
				}
			})
	},

	hash: function(password, salt) {
		var crypto = require('crypto');
		return crypto.createHash('sha1').update(password + salt).digest(
			"hex")
	}


};
