# Environment
process.env.PORT?= 59798

# Dependencies
express= require 'express'
turnout= require 'express-turnout'

# Setup express
app= express()
app.use turnout blacklist:[/^private/]
app.use (req,res)->
  res.sendFile __dirname+'/index.html'

# Boot
app.listen process.env.PORT,->
  console.log 'listening at %s',process.env.PORT