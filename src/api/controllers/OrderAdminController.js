/**
 * OrderAdminController
 *
 * @description :: Server-side logic for managing Orders
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	
	

	index: function(req, res){

		if(!req.session.user){
			return res.redirect('/account/login/?url=/orderadmin/');
		}

		if(!req.session.admin){
			return res.redirect('/orders/');
		}

		return res.view('orders/admin')
	},

	
};

