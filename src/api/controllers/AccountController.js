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
				return res.json({
					email: email,
					password: password
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

		return res.json({
			todo: 'logout() is not implemented yet!'
		});
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