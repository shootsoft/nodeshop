
$(document).ready(function() {
    $('#dataTables-example').DataTable({
        "processing": true,
        "serverSide": true,
        "ajax": {
            "url": "/products/query",
            "type": "POST"
        },
        "columns": [
            { "data": "name" },
            { "data": "image" },
            { "data": "price" },
            { "data": "desc" },
            { "data": "createdAt" }
        ],
        responsive: true,
        "rowCallback": function( row, data, index ) {
		 	cart.products[data.id] = data
		    if (data.image){
		    	data.image = '<img style="height:30%" src="'+data.image+'" />'
		    	$('td:eq(1)', row).html( data.image);
		    }

		    if (data.desc && data.desc.length > 400){
		    	$('td:eq(3)', row).html( 
		    		'<span class="desctip" data-toggle="tooltip" data-placement="top"  title="'
		    		+data.desc+'">'+data.desc.substring(0, 400)+'...</span>');
		    }

		    $('td:eq(4)', row).html('<button onclick="cart.add('+data.id+')" data-toggle="modal" data-target="#cart" class="btn btn-success">Order</button>')
		},

		"drawCallback": function( settings ) {
	        // tooltip demo
		    $('.desctip').tooltip()

	    }
       
    });
    

    $('#genorder').bind('click', function(){

    })
});

var cart ={
	products:{},
	add:function(id){
		var p = cart.products[id]
		if(p){
			var ui = '<div class="row"><div class="col-lg-4">'+p.name+'</div>'
					+'<div class="col-lg-4">'+p.image+'</div>'
        			+'<div class="col-lg-4"></div></div>'
        	$('#cartbody').append(ui)
		}
	}

}