###
 * http://usejsdoc.org/
 * > coffee --compile --output ./ src/
###

_ = require 'underscore'

_.extend _, {isDefined: (object) -> not _.isUndefined object}

Validator =
	validate: (rules, object, callback) ->
		console.log _.isDefined rules
	toString: ->
		['Object Validator version ', @version, 'by', @author].join ' '

Object.defineProperty Validator, 'author', {get: -> 'Ernesto Islas <isc.ernesto.islas@gmail.com>'}
Object.defineProperty Validator, 'version', {get: -> '0.0.1'}

module.exports = Validator
