/**
 * UsersController
 *
 * @description :: Server-side logic for managing Users
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {

	/**
	 * `UsersController.index()`
	 */
	index: function(req, res) {
		// User.find().exec(function(err, users) {
		// 	console.log(err)
		// 	console.log(users)
		// })

		return res.view()
	}
};
