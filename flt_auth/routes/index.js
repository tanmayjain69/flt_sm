const express = require('express')
const actions = require('../methods/actions')
const post_actions = require('../methods/post_actions')
const preference = require('../models/preference')
const preference_action = require('../methods/preference_action')
const query_actions = require('../methods/query_actions')
const router = express.Router()
router.get('/',(req,res) => {
    res.send('WELCOME TO SAYYAH')
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
router.get('/getAllPosts',post_actions.getAllPosts)

//@preference routes
router.post('/addPreference',preference_action.addPreference)
router.get('/getPreference',preference_action.getPreferences)

//@query routes
router.post('/addQuery',query_actions.addQuery)
router.get('/getQuery', query_actions.getQuery)


module.exports = router