$(function(){
  $("nav ul li #a").click(function(e){
	e.preventDefault();
	$("section #test").removeClass('show');
	$("nav ul li #a").removeClass('on');
    $(this).addClass( 'on' );

	if($(this).text() == "마이페이지"){
		$("section #test").eq(0).addClass( 'show' );
	}else if($(this).text() == "게시판 관리"){
		$("section #test").eq(1).addClass( 'show' );
	}else if($(this).text() == "신고 관리"){
		$("section #test").eq(2).addClass( 'show' );
	}else if($(this).text() == "회원 관리"){
		$("section #test").eq(3).addClass( 'show' );
	}
  });
});
