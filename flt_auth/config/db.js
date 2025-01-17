const mongoose = require('mongoose')
const dbConfig = require('./dbConfig')

const connectDB = async() => {
    try {
        const conn = await mongoose.connect(process.env.DB_CONN, {
            useNewUrlParser: true,
            useUnifiedTopology: true,
            useFindAndModify : false
        })
        console.log(`MongoDB Connected: ${conn.connection.host}`)
    }
    catch (err) {
        console.log(err)
        process.exit(1)

    }
}

module.exports = connectDB