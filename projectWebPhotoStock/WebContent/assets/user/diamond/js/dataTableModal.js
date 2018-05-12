/**
 * 
 */
$(document).ready(function() {
	$('.table .eBtn').on('click', function(event) {
		event.preventDefault();
		var href = $(this).attr('href');
		$.get(href, function(item, status){
			$('.myForm #seller').val(item.seller.id);
			$('.myForm #id').val(item.id);
			$('.myForm #picture').val(item.itemCode);
			$('.myForm #name').val(item.itemName);
			$('.myForm #categoryName option:selected').text(item.category.name);
			$('.myForm #price').val(item.itemPrice);
			$('.myForm #output_image').attr('src', '/ProjectWebPhotoStock/assets/user/images/items/' + item.itemCode);		
		})
		$('.myForm #exampleModal').modal();
	
	});
});