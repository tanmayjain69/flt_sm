const express = require('express')
const actions = require('../methods/actions')
const router = express.Router()

router.get('/',(req,res) => {
    res.send('Hello World')
})

//@desc Add user
router.post('/adduser',actions.addNew)
router.post('/authenticate',actions.authenticate)
router.get('/getinfo',actions.getinfo)
router.post('/addtoProfile',actions.addtoProfile)
module.exports = router