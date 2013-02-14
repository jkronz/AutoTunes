// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require websocket_rails/main
//= require init
//= require models/track
//= require models/dj
//= require models/request
//= require collections/trackSearchResults
//= require views/base_view
//= require views/error
//= require views/djs/create
//= require views/djs/host
//= require views/djs/show
//= require views/tracks/trackSearch
//= require views/tracks/trackSearchResult
//= require router
//= require app
//= require_tree ./templates
$(function() {
  window.App.app = new App.Application();
  window.App.app.load();
});

