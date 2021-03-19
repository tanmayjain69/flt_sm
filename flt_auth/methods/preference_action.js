var Preference = require('../models/preference')

var functions = {
    addPreference: function(req,res){
        var newPreference = Preference({
            name: req.body.name,
            Communities: req.body.Communities  
        });

        newPreference.save(function(err,newPreference){
            if(err){
                res.json({success:false,msg:err})
            }
            else{
                res.json({success:true,msg:'Successfully saved'})
            }
        })
    },

    getPreferences: function(req,res){
        const filter = {name:req.body.name};
        Preference.find(filter,function(err,post){
            if(err) throw (err);
            else{
                res.json({success:true,msg:post})
            }
        });
    }
}

module.exports = functions