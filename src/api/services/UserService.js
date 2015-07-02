/**
 * UserService
 *
 * @description :: Server-side logic for managing user's service
 */

module.exports = {


	/**
	 *
	 */
	find: function(req, res, email, password) {
		User.findOneByEmail(email).exec(function (err, zookeepers){
		  // would you look at all those zookeepers?
		});
	}
};
