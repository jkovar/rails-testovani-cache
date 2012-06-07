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
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready( function () {
    $('#mytable').dataTable( {
      'aaSorting': [[1, 'desc']]
    });

    var start = new Date();
    $.get('http://localhost:3000/books/cached_index.json', function(data){
      var table = $('#mytable').dataTable();
      for(var i = 0; i < data.length; i++){
        table.fnAddData( [data[i].id, data[i].title, data[i].author, data[i].year, data[i].century] )
      }
      end = new Date();
      alert('Akce trvala: '+(end.getTime() - start.getTime() )+'ms');
    });

} );
