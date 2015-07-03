
$(document).ready(function() {
    $('#dataTables-example').DataTable({
        "processing": true,
        "serverSide": true,
        "searching": false,        
        "ajax": {
            "url": "/orders/my",
            "type": "POST"
        },
        "columns": [
            { "data": "id" },
            { "data": "createdAt" },
            { "data": "total_price" },
            { "data": "item_count" },
            { "data": "status" },
            { "data": "email" },
            { "data": "updatedAt" }
        ],
        //TODO: set last column order false
        responsive: true,
        "rowCallback": function( row, data, index ) {
		 	// cart.products[data.id] = data
		  //   if (data.image){
		  //   	data.image = '<img style="height:30%" src="'+data.image+'" />'
		  //   	$('td:eq(1)', row).html( data.image);
		  //   }

		  //   if (data.desc && data.desc.length > 400){
		  //   	$('td:eq(3)', row).html( 
		  //   		'<span class="desctip" data-toggle="tooltip" data-placement="top"  title="'
		  //   		+data.desc+'">'+data.desc.substring(0, 400)+'...</span>');
		  //   }

		  $('td:eq(6)', row).html('<button onclick="order.showdetails('+data.id+')" data-toggle="modal" data-target="#details" class="btn btn-success">Details</button>')
		},

		"drawCallback": function( settings ) {
	        // tooltip demo
		    //$('.desctip').tooltip()

	    }
       
    });
    
});

var order ={
    showdetails:function(id){
        $('#detailbody').load('/orders/detail?id='+id)
    }
}
