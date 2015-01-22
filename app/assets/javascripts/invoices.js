$(document).on("page:change", function() {
    var counter = 0;
    $('#invoice_table').on('click', '.invoice_row', function() {
        var row = $(this);
        var id = row.data('id');
        var name = row.find(".product").data('name');
        console.log(name);
        var price = row.find('.price').data('price');
        $('form').append('<input type="hidden" value=' + id + ' name="invoice[invoice_products_attributes][' + counter + '][order_product_id]" id="product-' + counter + '">');
        $('#receipe_products').append('<tr><td class="product">' + name + 
        	'</td><td class="price">' + price + '</td><td><a data-name="' + name + '" data-product_id=' + id + ' data-price=' + price + ' data-pos=' + counter + ' class="delete-invoice-item btn btn-danger">Eliminar Item</a></td></tr>');
        row.remove();
        counter++;
    })

    $('#receipe_products').on('click', 'a.delete-invoice-item', function() {
        var id = $(this).data('product_id');
        var name = $(this).data('name');
        var pos = $(this).data('pos');
        var price = $(this).data('price');
        $('#invoice_table').append('<tr class="invoice_row" data-id="' + id + '"><td class="invoice_cell product" data-name="' + name + '">' + name + '</td><td class="invoice_cell price" data-price=' + price + '>' + price + '</td></tr>');
        $('#product-' + pos).remove();
        $(this).parents("tr").remove();
    });
});


// $('#items_to_invoice').on('click', '#generate_invoice', function(){
//     $('form').html('<input value="91" type="hidden" name="invoice[order_id]" id="invoice_order_id"><a class="btn pos_button_blue admin_rol invoice" href="/orders/91/edit">VOLVER A ORDEN</a><input type="submit" name="commit" value="RECIBO" class="btn pos_button_blue admin_rol invoice" id="generate_invoice"></input><a class="btn pos_button_blue admin_rol invoice" href="/orders">VOLVER A PEDIDOS</a>');
// });