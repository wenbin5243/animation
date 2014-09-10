$(function(){
  $("body").addClass("ani1");
  $(".buttons").on("click","button",function(){
    var index=$("button").index(this)+1;
    $("body").removeClass().addClass("ani"+index);
  })
})