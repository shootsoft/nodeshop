/**
 * UserService
 *
 * @description :: Server-side logic for managing user's service
 */

module.exports = {

	/**
	 * 
	 */
	create: function(req, res, product_ids) {
		sails.log.debug('creating order ' + JSON.stringify(product_ids))
		var user_id = req.session.user.id
		if(!user_id){
			sails.log.debug('empty user_id')
			return
		}
		//TODO: catch errors
		Product.find({id : product_ids}).then(function(data){
			var products={}
			for (i in data){
				var p = data[i]
				products[p.id] = p
			}
			//sails.log.debug(JSON.stringify(products))
			var details = []
			var time = JSON.stringify(new Date())
			var order = {total_price:0, item_count:0, user_id:user_id, status:0,createdAt: time,
					updatedAt: time }
			for (i in product_ids){
				var id = product_ids[i]
				//sails.log.debug(JSON.stringify(products[id]))
				var d = {
					product_id: id,
					price: products[id].price,
					createdAt: time,
					updatedAt: time
				}
				if (!d.price){
					d.price = 0
				}
				order.item_count += 1
				order.total_price += d.price
				details.push(d)
			}

			Order.create(order).then(function(created){
				if(created && created.id){
					for(i in details){
						details[i].order_id = created.id
					}

					sails.log.debug("order details: ")
					sails.log.debug(JSON.stringify(details))

					OrderDetail.create(details).exec(function createCB(err, created){
						if(err){
							sails.log.error(err)
						}
						//res.redirect('/orders/')
					})

				}
				sails.log.debug(JSON.stringify(created))
				
			})
			
			sails.log.debug(JSON.stringify(details))

			

		}).catch(function(err){
			sails.log.error('error: ')
			sails.log.error(err)
			//res.redirect('/orders/')
		})


	},


	query: function(req, res){

		var cols = ['id', 'createdAt', 'total_price', 'item_count', "status"]
		var all = req.allParams();
		var search = req.param('search')
		var order = req.param('order')
		var limit = all['length']
		var skip = req.param('start')
		var sort = cols[order[0].column] + ' ' + order[0].dir 
		//sails.log.debug(limit)

		var query;
		var condition = {}
		if(req.session.my==1){
			condition = {user_id: req.session.user.id}
			query = Order.find({
				user_id: req.session.user.id, 
				limit: limit, 
				skip: skip,
				//sort: sort
			})
		} else {
			query = Order.find({
				limit: limit, 
				skip: skip,
				//sort: sort
			})
		}

		
		Order.count(condition).exec(function countCB(error, count) {
			query.sort(sort).then(function(data){
				User.find().exec(function findCB(error, users){
					var dict = {}
					for (i in users){
						var u = users[i]
						dict[u.id] = u
					}

					for (i in data){
						var d = data[i]
						if(dict[d.user_id]){
							data[i].email = dict[d.user_id].email
						} else {
							data[i].email = ''
						}
						
					}
					//sails.log.debug(data)
					return res.json(
						{
						    "draw": req.param('draw'),
						    "recordsTotal": count,
						    "recordsFiltered": count,
						    "data": data
						}
					)
				})
				
			})
		});
	}

};
