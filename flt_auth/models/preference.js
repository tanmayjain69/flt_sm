var mongoose = require('mongoose')
var Schema = mongoose.Schema;

var preferenceSchema = new Schema({

    
    name: {
        type: String
    },
    Communities : {
        type: Array,
    },
    
},{
    timestamps: true
})

module.exports = mongoose.model('Preference',preferenceSchema)