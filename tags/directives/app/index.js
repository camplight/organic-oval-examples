var oval = require('organic-oval')
oval.init()
require('./app')
oval.mountAll('*', document)
