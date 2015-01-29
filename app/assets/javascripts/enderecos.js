// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  $(".estado").change(function(){
    var id = $(".estado option:selected" ).val();
    $.getJSON("/estados/" + id + "/municipios.json", function(data) {
      $('.municipio').empty();
      $('.bairro').empty();
      $('.rua').empty();
      $.each(data, function (i, item) {
        append($(".municipio"), item.id, item.nome);
      });
    })
  });

  $(".municipio").change(function(){
    var id = $(".municipio option:selected" ).val();
    $.getJSON("/municipios/" + id + "/bairros.json", function(data) {
      $('.bairro').empty();
      $('.rua').empty();
      $.each(data, function (i, item) {
        append($(".bairro"), item.id, item.nome);
      });
    })
  });

  $(".bairro").change(function(){
    var id = $(".bairro option:selected" ).val();
    $.getJSON("/bairros/" + id + "/ruas.json", function(data) {
      $('.rua').empty();
      $.each(data, function (i, item) {
        append($(".rua"), item.id, item.nome);
      });
    })
  });
});

append = function(selector, id, text) {
  if (selector.children().size() == 0) {
      selector.append($("<option></option>"));
  }
  selector.append($("<option></option>")
    .attr("value", id)
    .text(text));
};
