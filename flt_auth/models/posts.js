var mongoose = require('mongoose')
var Schema = mongoose.Schema;

var postsSchema = new Schema({

    
    name: {
        type: String
    },
    Image : {
        type: String,
        default: "https://www.jpost.com/HttpHandlers/ShowImage.ashx?id=320510&w=898&h=628"
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
        type: Array
    },
    tag: {
        type: String
    },
    Location: {
        type: String
    }
},{
    timestamps: true
})

module.exports = mongoose.model('Post',postsSchema)