# Ionic Starter App

# angular.module is a global place for creating, registering and retrieving Angular modules
# 'starter' is the name of this angular module example (also set in a <body> attribute in index.html)
# the 2nd parameter is an array of 'requires'

angular = require( 'angular' )
require( '../components/ionic-test/' )

app = angular.module( 'myApplication',
                      [
                        'ionic'
                        'ionic-test'
                      ]
                    )

# app.config( [ '$ionicConfigProvider', ( $ionicConfigProvider ) ->
#               if ( ! ionic.Platform.isIOS() )
#                 $ionicConfigProvider.scrolling.jsScrolling( false )
# ] )


# IMPORTANT
app.run( [ '$ionicPlatform', ( $ionicPlatform ) ->
            $ionicPlatform.ready( () ->
              if ( window.cordova && window.cordova.plugins.Keyboard )
                console.debug( "window.cordova.plugins.Keyboard seems ENABLED" )
                # Hide the accessory bar by default (remove this to show the accessory bar
                # above the keyboard for form inputs)
                window.cordova.plugins.Keyboard.hideKeyboardAccessoryBar( true )

                # Don't remove this line unless you know what you are doing. It stops the viewport
                # from snapping when text inputs are focused. Ionic handles this internally for
                # a much nicer keyboard experience.
                cordova.plugins.Keyboard.disableScroll( true ) # originally TRUE, but let's try what happens with FALSE

              if ( window.StatusBar )
                window.StatusBar.styleDefault()

              console.debug( "Setting ionic.Platform.isFullScreen = ..." )
              ionic.Platform.isFullScreen = false

            )
] )

module.exports = app
