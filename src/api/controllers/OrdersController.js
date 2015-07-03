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
	 */
	query: function(req, res) {

		if(!req.session.admin){
			req.session.my = 1
		}

		OrderService.query(req, res)
		
	},

	/**
	 * `OrdersController.my()`
	 */
	my: function(req, res) {
		req.session.my = 1
		OrderService.query(req, res)
	},

	detail: function(req, res){
		if(!req.session.user){
			//console.log('mb1')
			//return
			//sails.log.debug('need login')
			return res.redirect('/')
		}
		var id = req.param('id')
		Order.findOne({id:id}).exec(function callbk(err, order){

			if(order && !req.session.admin && req.session.user.id != order.user_id){
				
				//console.log(JSON.stringify(order))
				return res.json(order)
				//return res.redirect('/')
				//sails.log.debug('error user id')
				//return res.redirect('/')
			}

			OrderDetail.find({order_id:id}).then(function(details){
				return res.view('orders/detail', {layout:'', details: details})
			})
		})
	}
};

