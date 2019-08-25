import express from 'express'
import httpProxy from 'express-http-proxy'
import { config } from 'dotenv'

config()
const app = express()

app.get('/api', (req, res, next) => {
  console.log('reached gateway')
})

app.listen(process.env.PORT)