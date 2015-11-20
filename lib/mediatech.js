/*

Archive for MediaTech. The limited API that enables the embedding of a project browser in the MediaTech
website. 

Authors: 
Maarten van Hees
Roland van Dierendonck
Max van Duijn

VER: 0.01

*/

function Archive()
{}

Archive.prototype.project = function(query, sorting)
{
	$("#project").append( "<h3> Projects </h3>");
	
	$.ajax({
		url: 'lib/php/archivemt.php',
		data: {"query":query, "sorting":sorting, "function":"project"},
		success: function(data)
		{			
			//$("#project").append(data);
			var obj = JSON.parse(data);
			//obj.forEach(function(entry) {
//				$("#project").append("<div class="+ entry['year'] +">"+entry['year']+"</div>");				
	//		});
			
			var s = "";
			obj.forEach(function(entry) {
				
				s += "<div class='grid-item' id=project-"+entry['uid']+">"+entry['description']+"</div>";				
				
			});
			
			//s+="</div>";
			$("#project").append(s);
			
			$('.grid').masonry({
			  itemSelector: '.grid-item',
			  columnWidth: 60
			});
		}
	});
};