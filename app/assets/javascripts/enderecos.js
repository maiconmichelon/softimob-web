// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  $(".estado").click(function(){
    $.ajax({
      url: "/application/get_programs_for_center",
      type: "POST",
      datatype: 'json',
      data: formdata,
      success: function(response){
        var options = $("#school_application_program"); 
        removeOptions(document.getElementById("school_application_program"));
        $.each(response.programs, function(i,item) {
          options.append($("<option />").val(response.programs[i].id).text(response.programs[i].name)); 
        });
      }
    });
  });
});