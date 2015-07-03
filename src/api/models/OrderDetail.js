/**
* OrderDetail.js
*
* @description :: TODO: You might write a short summary of how this model works and what it represents here.
* @docs        :: http://sailsjs.org/#!documentation/models
*/

module.exports = {
  
  tableName: 't_order_details',
  attributes: {

    id : { type: 'int' },

    order_id : { type: 'int' },

    product_id : { type: 'int' },

    price : { type: 'float' },

    createdAt : { type: 'datetime' },

    updatedAt : { type: 'datetime' }
  }
};

