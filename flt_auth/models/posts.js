var mongoose = require('mongoose')
var Schema = mongoose.Schema;

var postsSchema = new Schema({

    
    name: {
        type: String
    },
    Image : {
        type: String,
        default: " "
    },
    Caption : {
        type: String
    },
    Likes: {
        type: Number
    },
    Rewards: {
        type: Number
    },
    Comments: {
        type: String
    }
})

module.exports = mongoose.model('Post',postsSchema)