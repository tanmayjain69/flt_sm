const express = require('express')
const actions = require('../methods/actions')
const router = express.Router()
const profileaction = require('../methods/profileaction')
router.get('/',(req,res) => {
    res.send('Hello World')
})

//@desc Add user
router.post('/adduser',actions.addNew)
router.post('/authenticate',actions.authenticate)
router.get('/getinfo',actions.getinfo)
router.post('/addtoProfile',actions.addtoProfile)
// router.patch('/updateImage',profileaction.updateImage)


module.exports = router