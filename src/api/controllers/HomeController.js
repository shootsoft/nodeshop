/**
 * HomeController
 *
 * @description :: Server-side logic for managing homes
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {

	/**
	 * `HomeController.index()`
	 */
	index: function(req, res) {
		// User.find().exec(function(err, users) {
		// 	console.log(err)
		// 	console.log(users)
		// })

		return res.view()
	}
};
