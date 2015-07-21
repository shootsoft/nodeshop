/**
 * OrdersController
 *
 * @description :: Server-side logic for managing Orders
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	
	/**
	 * `OrdersController.new()`
	 * generate new orders
	 */
	new: function(req, res) {

		var ids = req.param('product_id');

		if(ids){
			if(req.session.user){
				OrderService.create(req, res, ids);
				res.redirect('/orders/')
			} else {
				req.session.temp_products = ids
				res.redirect('/account/login?url=/orders/')
			}
		} else {

			res.redirect('/orders/')
		}

		//return res.view()
	},

	/**
	 * `OrdersController.index()`
	 * list orders
	 */
	index: function(req, res){

		if(!req.session.user){
			return res.redirect('/account/login/?url=/orders/');
		}

		//process product that user ordered before login
		if (req.session.temp_products ){
			var ids = req.session.temp_products
			req.session.temp_products = undefined
			OrderService.create(req, res, ids);
		}

		return res.view()
	},


	/**
	 * `OrdersController.query()`
	 * return order list in json
	 */
	query: function(req, res) {

		if(!req.session.admin){
			sales.log.debug(req.session.admin)
			req.session.my = 1
		} else {
			req.session.my =  undefined
		}

		OrderService.query(req, res)
		
	},

	/**
	 * `OrdersController.my()`
	 * list personal orders
	 */
	my: function(req, res) {
		req.session.my = 1
		OrderService.query(req, res)
	},
	
	/**
	 * `OrdersController.my()`
	 * show a detail of a order
	 */
	detail: function(req, res){
		if(!req.session.user){
			return res.redirect('/')
		}
		var id = req.param('id')
		Order.findOne({id:id}).exec(function callbk(err, order){

			if(order && !req.session.admin && req.session.user.id != order.user_id){
				return res.json(order)
			}

			OrderDetail.find({order_id:id}).then(function(details){
				return res.view('orders/detail', {layout:'', details: details})
			})
		})
	}
};

