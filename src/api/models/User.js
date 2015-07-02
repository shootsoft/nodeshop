/**
 * User.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/#!documentation/models
 */

module.exports = {
    tableName: 't_user',
    attributes: {

        id: {
            type: 'int'
        },

        email: {
            type: 'email'
        },

        password: {
            type: 'string'
        },

        salt: {
            type: 'string'
        },

        role: {
            type: 'int'
        },

        createdAt: {
            type: 'datetime'
        }
    }
};
