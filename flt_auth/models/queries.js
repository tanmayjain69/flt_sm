var mongoose = require('mongoose')
var Schema = mongoose.Schema;
var querySchema = new Schema({
    name: {
        type:  String,
    },
    tag: {
        type: String,
    
    },

    details: {
        type: String,
    },

    
},
{
    timestamps: true
})


module.exports = mongoose.model('Query',querySchema)