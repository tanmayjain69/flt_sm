var mongoose = require('mongoose')
var Schema = mongoose.Schema;


var profileSchema = new Schema({
    name: {
        type:  String,
        require: true,
        unique: true
    },

    LastName: {
        type: String,
        require: true,
        default: " "
        
    
    },

    FirstName: {
        type: String,
        require: false,
        default: " "
    },

    Bio: {
        type: String,
        default: " "
    },
    
    
    Skills: {
        type: Array
    },
    Communities: {
        type: Array
    },

    Followers: {
        type: Number,
        default: 0
    },

    Posts: {
        type: Number,
        default: 0
    },

    Following: {
        type: Number,
        default: 0
    },

    
})


module.exports = mongoose.model('Profile',profileSchema)