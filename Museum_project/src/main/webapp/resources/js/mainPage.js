$(document).ready(function() {
	getCommentList();
	function getCommentList(){
		$.ajax({
			url:"./notice?sv=mlist",
			type: "get",
			success: function(data){
				console.log("data: ");
				console.log(data);
				
			},
			error: function(){
				alert("가져오기 오류");
			}
		});
	};
});
