module.exports = [
  '$http'
  ( $http ) ->
      return {
        restrict: 'E'
        template: require( './ionTestDirective.html' )
        replace: true
        scope: true
        link: ( $scope, element, attrs ) ->
          console.debug( "linking directive" )

          $scope.input = JSON.parse( window.localStorage.getItem( "input" ) )
          if not $scope.input? or typeof $scope.input != 'object'
            $scope.input =
              currentLocation:
                street: ""
                number: ""
                city: ""
              details:
                firstName: ""
                lastName: ""
                telephone: ""
                email: ""
                homeStreet: ""
                homeNr: ""
                homeMailbox: ""
                homeZipCode: ""
                homeCity: ""

          # store the input to localstorage every 5 seconds so we don't need to fill out the form again and again
          window.setInterval( () ->
                      window.localStorage.setItem( "input", JSON.stringify( $scope.input ) )
                    , 5 * 1000
                  )

        controller: ( $scope ) ->
            console.debug( "Initializing controller" )

      }
]
