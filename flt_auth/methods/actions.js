var User = require('../models/user')
var Profile = require('../models/profile')
var jwt = require('jwt-simple')
var config = require('../config/dbConfig')
var multer = require('multer')


// //Multer config
// const storage = multer.diskStorage({
//     destination: (req,file,cb) => {
//         cb(null, "./uploads");
//     },
//     filename: (req,file,cb) => {
//         cb(null, "xyz" + ".jpg");
//     }
// })

// const fileFilter = (req,file,cb) => {
//     if(file.mimetype == "image/jpeg" || file.mimetype == "image/png") {
//         cb(null,true)
//     }
//     else{
//         cb(null,false)
//     }

// }

// const upload = multer({
//     storage: storage,
//     limits: {
//         fileSize: 1024 * 1024 * 6,
//     },
//     fileFilter: fileFilter

// })

var functions  = {
    addNew: function(req,res){
        if((!req.body.name) || (!req.body.password) || (!req.body.email)){
            res.json({success:false, msg: 'Enter all fields'})
        }
        else{
            var newUser =  User({
             name: req.body.name,
             email: req.body.email,
             FirstName: req.body.FirstName,
             password: req.body.password
            
            });
            newUser.save(function(err,newUser){
                if(err){
                    res.json({success:false,msg:'Failed to save'})

                }
                else{
                    res.json({success:true,msg:'Successfully saved'})
                }
            })
        }       
    },
    authenticate: function(req,res){
        User.findOne({
         name: req.body.name
        }, function(err,user) {
            if(err) throw err
            if(!user){
                res.status(403).send({success:false,msg:'user not registered'})
            }
            else{
                user.comparePassword(req.body.password,function(err,isMatch){
                    if(isMatch && !err){
                        var token = jwt.encode(user,config.secret)
                        res.json({success:true,token: token})

                    }
                    else{
                        return res.status(403).send({success:false,msg:'Authentication Failed'})

                    }
                })
            }
        }

        )
    },
    getinfo : function(req,res){
        if(req.headers.authorization && req.headers.authorization.split(' ')[0] === 'Bearer'){
            var token = req.headers.authorization.split(' ')[1]
            var decodedtoken = jwt.decode(token,config.secret)
            // return res.json({success:true,msg: 'Hello '+ decodedtoken.name})
            return res.json({success:true,msg: decodedtoken.name})


        }
        else{
            return res.json({success:false,msg:'No Headers'})
        }
    },

    addtoProfile : function(req,res){
        if(req.headers.authorization && req.headers.authorization.split(' ')[0] === 'Bearer'){
            var token = req.headers.authorization.split(' ')[1]
            var decodedtoken = jwt.decode(token,config.secret)

            // return res.json({success:true,msg: 'Hello '+ decodedtoken.name})
            var newUser =  Profile({
                name: decodedtoken.name,
                LastName: req.body.LastName,
                FirstName: req.body.FirstName,
                Bio: req.body.Bio,
                Followers: req.body.Followers,
                Posts: req.body.Posts,
                Following: req.body.Following,
                Skills: req.body.Skills
               
               });
               newUser.save(function(err,newUser){
                   if(err){
                       res.json({success:false,msg:'Failed to save'})
   
                   }
                   else{
                       res.json({success:true,msg:'Successfully saved'})
                   }
               })
        }
        else{
            return res.json({success:false,msg:'No Headers'})
        } 
    },

    updateProfile : function(req,res){
        Profile.update({name:req.body.name},{$set:{
            Bio: req.body.Bio,
            LastName: req.body.LastName,
            FirstName: req.body.FirstName,
            Posts: req.body.Posts,
            Following: req.body.Following, 
            Followers: req.body.Followers,
            Skills: req.body.Skills
        }}, function(err,result){
            if(err){
            res.json({success:false,msg:err})  
            }
            else{
                res.json({success:true,msg:'Successfully updated'})  
            }
        });
    },

    getProfileInfo : function(req,res){
        Profile.findOne({name: req.body.name},function(err,result){
            if(err) throw err;
            res.json({success:true,msg:result}) 
        })
    }
    
}

module.exports = functions