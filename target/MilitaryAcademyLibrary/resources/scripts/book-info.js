/**
 * 
 */
function getBookInfo(id) {
	$(function() {

$("#book-data").click(
				function() {
					
					
					var bookName = $("#"+id.toString()).text();
					alert(bookName);
					$.ajax({
						url : "book-info?bookName=" + bookName + "",
						success : function(result) {
							$("#book-info").html(result);
						}
					});
				});

	});
}