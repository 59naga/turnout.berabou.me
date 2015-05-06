# Environment
port= 59798

# Dependencies
express= require 'express'
turnout= require 'express-turnout'

# Setup express
app= express()
app.use turnout()
app.use (req,res)->
  res.sendFile __dirname+'/index.html'

# Boot
app.listen port,->
  console.log 'listening at %s', port