$(document).on("page:change", function(){
	var counter = 0;
	$('#categorie_products').on('click', '.pick-product', function() {
		var id = $(this).data('id');
		var name = $(this).data('name');
		var avatarUrl = $(this).data('image');
		$('form').append('<input type="hidden" value="' + id + '" name="order[order_products_attributes][' + counter + '][product_id]" id="product-' + counter + '"> ');
		$('#picked-products').append('<tr><td class="text-center"><img src="'+ avatarUrl +'" height="30" width="30" ></td><td class="text-center">' + name + '</td> <td class="text-center"><a data-pos="' + counter + '" class="delete-product btn btn-danger">Eliminar Item</a></td> </tr>');
		counter++;
	})

	$('#order_products').on('click', '.delete-product', function(){
		var counter = 0;
		var pos = $(this).data('pos');
		var id_to_remove = $(this).data('id');
		$(this).parents("tr").remove();
		$('#product-'+pos).remove();
	});
});

// <input id="strategy_tips_attributes_70332768605840__destroy" 
// name="strategy[tips_attributes][70332768605840][_destroy]" type="hidden" value="false" />
// '<a data-confirm="¿Esta seguro que desea cancelar este producto de la orden?" data-pos="'+counter+'" data-id="239" class="delete-product btn btn-danger" href="/remove_op.41?op_id=239"><span>Eliminar Item</span></a>'