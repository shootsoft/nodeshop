/**
* Order.js
*
* @description :: TODO: You might write a short summary of how this model works and what it represents here.
* @docs        :: http://sailsjs.org/#!documentation/models
*/

module.exports = {
  tableName: 't_order',
  attributes: {

    id: {
          type: 'integer',
          primaryKey: true
    },

    user_id : { type: 'int' },

    total_price : { type: 'float' },

    item_count : { type: 'int' },

    status : { type: 'int' },

    createdAt: {type:'datetime'}
  }
};

