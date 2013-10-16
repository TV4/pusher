// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require_tree .

// handle if console is not defined (IE browsers)
if (!window.console) {console = {log: function () {}}; }
console.debug = console.debug || function () {};
console.warn = console.warn || function () {};
console.info = console.info || function () {};


pusher = {
  publish: function(pubnubChannel, message) {
    if(typeof pubnubChannel != 'undefined') {
      console.log(new Date());
      console.log(message);
      console.log(pubnubChannel);

      PUBNUB.publish({
        channel: pubnubChannel,
        message: message
      });
    }
  }
}


$(function(){
  $(document).foundation();
});
