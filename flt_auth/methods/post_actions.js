var User = require('../models/user')
var Post = require('../models/posts')
var jwt = require('jwt-simple')
var config = require('../config/dbConfig')

var functions = {
    addPost: function(req,res){
        var newPost = Post({
            name: req.body.name,
            Image: req.body.Image,
            Caption: req.body.Caption,
            Likes: req.body.Likes,
            Rewards: req.body.Rewards,
            Comments: req.body.Comments,
            tag: req.body.tag
        }); 
        newPost.save(function(err,newPost){
            if(err){
                res.json({success:false,msg:err})
            }
            else{
                res.json({success:true,msg:'Successfully saved'})
            }
        })
    },

    getPostInfo: function(req,res){
        const filter = {name:req.body.name};
        Post.find(filter,function(err,post){
            if(err) throw (err);
            else{
                res.json({success:true,msg:post})
            }
        });
    },
    getAllPosts: function(req,res) {
      Post.find(function(err,post){
          if(err) throw (err);
          else{
              res.json({success:true,msg:post})
          }
      });  
    },
}


module.exports = functions