angular = require( 'angular' )

angularModule = angular.module( 'ionic-test', [] )

angularModule.directive( 'ionTest', require( './ionTestDirective.iced' ) )

module.exports = angularModule
