const express = require('express')
const app = express()
const now = Date.now()

app.get('/', (req, res) => res.send(`=/ ${now}`))
app.listen(3000, () => console.log('listening on port 3000'))
