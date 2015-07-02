/**
 * Product.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/#!documentation/models
 */

module.exports = {
    tableName: 't_product',
    attributes: {

        id: {
            type: 'int'
        },

        name: {
            type: 'string'
        },

        desc: {
            type: 'string'
        },

        image: {
            type: 'string'
        },

        price: {
            type: 'float'
        },

        createdAt: {
            type: 'datetime'
        },

        updatedAt: {
            type: 'datetime'
        }
    }
};
