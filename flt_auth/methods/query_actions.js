var Query = require('../models/queries')

var functions = {
    addQuery: function (req,res) {
        var newQuery = Query({
            name: req.body.name,
            tag: req.body.tag,
            details: req.body.details
        })

        newQuery.save(function (err,newQuery) {
            if(err){
                res.json({success:false,msg:err})
            }
            else{
                res.json({success:true,msg:'Successfully saved'})
            }
            
        })
        
    },

    getQuery: function (req,res) {
     
        Query.find( function(err,post){
            if(err) throw (err);
            else{
                res.json({success:true,msg:post})
            }
        });
        
    }
}

module.exports = functions
