var $heart = $("#like-button img");
$("#like-button").on("click", function(){
  var $likeSum = $("#like-sum")
  like_function(#{@book.id},$(this), $heart, $likeSum)
});

function like_function(id, button, heart, sum) {
  if (button.hasClass("decrement")){
      $.ajax({url: "/likes/" + id, type: "delete", data: {books_id: id, dataType: "json"}})
      .done(function(data){
      button.removeClass("decrement").addClass("increment")
      heart.attr("src", "/assets/unlike.png")
      sum.text(data["count"])
      })
    }else{
      $.ajax({url: "/likes", type: "post", data: {book_id: id, dataType: "json"}})
      .done(function(data){
      button.removeClass("increment").addClass("decrement")
      heart.attr("src", "/assets/like.png")
      sum.text(data["count"])
      })
    }
    
}


