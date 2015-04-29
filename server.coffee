application = module.exports = (options, callback) ->

    americano = require 'americano'
    initialize = require './server/init'

    options ?= {}
    options.name = 'Kresus'
    options.root ?= __dirname
    options.port ?= process.env.PORT || 9876
    options.host = process.env.HOST || "127.0.0.1"
    options.dbName = process.env.POUCHDB_NAME || 'db'

    americano.start options, (err, app, server) ->
        initialize app, server, callback

if not module.parent
    application()

