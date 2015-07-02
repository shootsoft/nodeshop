/**
 * AccountController
 *
 * @description :: Server-side logic for managing accounts
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {

	/**
	 * `AccountController.login()`
	 */
	login: function(req, res) {
		if (req.method == 'GET') {
			return res.view('account/login', {
				layout: ''
			})
		} else {
			email = req.param('email', '')
			password = req.param('password', '')
			if (email && password) {
				//Login
				User.findOneByEmail(email)
					.then(function(user) {
						var pass = false
						if (user) {
							var crypto = require('crypto');
							var hash = crypto.createHash('sha1').update(password + user.salt).digest(
								"hex")
							console.log(hash)
							if (user.password == hash) {
								pass = true
							}
						}
						if (pass) {
							req.session.user = user
							console.log(user.role)
								//set admin role
							if (user.role == 1) {
								req.session.admin = true
							}
							res.redirect('/')
						} else {
							return res.view('account/login', {
								msg: 'Please check your email and password',
								layout: ''
							})
						}

					})

			} else {
				return res.view('account/login', {
					msg: 'Please input your email and password',
					layout: ''
				})
			}

		}
	},


	/**
	 * `AccountController.logout()`
	 */
	logout: function(req, res) {
		req.session.user = undefined
		req.session.admin = undefined
		return res.redirect('/');
	},


	/**
	 * `AccountController.register()`
	 */
	register: function(req, res) {
		return res.json({
			todo: 'register() is not implemented yet!'
		});
	}
};
