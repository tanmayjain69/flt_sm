const express = require('express')
const actions = require('../methods/actions')
const post_actions = require('../methods/post_actions')
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
// router.patch('/updatePost',posts.updateProfile)
router.get('/postInfo',post_actions.getPostInfo)

module.exports = router