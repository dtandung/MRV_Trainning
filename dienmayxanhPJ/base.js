$(document).ready(function(){
  $('.pause-carousel').carousel({
    interval: false
  })
});
    // $(".pro-recom").click(function(e){
    //   e.preventDefault();
    //   $(".card").removeClass("d-none");
    //   $(".show-recommend").addClass("d-none");
    // });
  $(window).on('scroll',function(){
    let dothitoanhoc = window.scrollY;
    if(dothitoanhoc > 545){
      $(".banner-left-right").show()
    }else{
      $(".banner-left-right").hide()
    }
    console.log(dothitoanhoc)
  })

  $(".show-item-click").click(function(e){
    e.preventDefault();
    $(this).parent().addClass("d-none");
  })

    

  $("#open").click(function(e){
    e.preventDefault();
    $("#modal-message").addClass("show");
  })

  $("#close").click(function(e){
    e.preventDefault();
    $("#modal-message").removeClass("show");
  })

  

    // $(".menutitle").hover(function(){
    //   $(".menu-show").removeClass("d-none");
    // })

    // $(".menutitle").mouseleave(function(){
    //   $(".menu-show").addClass("d-none");
    // })
    



  // let $dd = $(".d-block.w-100")
  // console.log($dd)
  

  