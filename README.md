# ionicApp_ContentScrollKeyboardInputTest
An Ionic test to see if I can make the keyboard, scrolling and input behave as expected...

Testing this application on an android 4 phone should be no more than running

 npm run developPhone


I have been testing on an HTC with Android 4.0.3


This project uses browserify and iced-coffee-script, but that shouldn't matter
since the main concern is the template file
*www/js/components/ionic-test/ionTestDirective.html*.

That file contains a lot of input tags, but when you tap one input field, type
something on the onscreen keyboard, and then try to tap the next field, nothing
works as expected.

 * The screen jumps everywhere, and you don't know which input field is selected
 * if you scroll down a little bit while the keyboard is visible, and then tap
   the next field, it's as if it has lost the correct position and you actually
   click somewhere else
 * This also has effects on the scrolling, because when you try to scroll again,
   it jumps first with an offset that seems related to how much you scrolled
   just before
