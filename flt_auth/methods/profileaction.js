var User = require('../models/user')
var Profile = require('../models/profile')
var jwt = require('jwt-simple')
var config = require('../config/dbConfig')
var multer = require('multer')
var actions = require('../methods/actions')

//Multer config
const storage = multer.diskStorage({
    destination: (req,file,cb) => {
        cb(null, "./uploads");
    },
    filename: (req,file,cb) => {
        cb(null, "xyz" + ".jpg");
    }
})

const fileFilter = (req,file,cb) => {
    if(file.mimetype == "image/jpeg" || file.mimetype == "image/png") {
        cb(null,true)
    }
    else{
        cb(null,false)
    }

}

const upload = multer({
    storage: storage,
    limits: {
        fileSize: 1024 * 1024 * 6,
    },
    fileFilter: fileFilter

})


var functions = {
    addtoProfile : function(req,res){
        var tk = actions.getinfo

            // return res.json({success:true,msg: 'Hello '+ decodedtoken.name})
            var newUser =  Profile({
                name: tk['msg'],
                LastName: req.body.LastName,
                FirstName: req.body.FirstName,
                Bio: req.body.Bio
               
               });
               newUser.save(function(err,newUser){
                   if(err){
                       res.json({success:false,msg:'Failed to save',err})
   
                   }
                   else{
                       res.json({success:true,msg:'Successfully saved'})
                   }
               })
        }
        
        } 
    
module.exports = functions