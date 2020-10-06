const express = require('express')
const actions = require('../methods/actions')
const post_actions = require('../methods/post_actions')
const preference = require('../models/preference')
const preference_action = require('../methods/preference_action')
const router = express.Router()
router.get('/',(req,res) => {
    res.send('Hello World')
})

//@desc auth routes
router.post('/adduser',actions.addNew)
router.post('/authenticate',actions.authenticate)
router.get('/getinfo',actions.getinfo)

//@profile routes
router.post('/addtoProfile',actions.addtoProfile)
router.patch('/update',actions.updateProfile)
router.get('/profileInfo',actions.getProfileInfo)
// router.patch('/updateImage',profileaction.updateImage)

//@posts routes
router.post('/addPost',post_actions.addPost)
router.get('/postInfo',post_actions.getPostInfo)


//@preference routes
router.post('/addPreference',preference_action.addPreference)
router.get('/getPreference',preference_action.getPreferences)

module.exports = router