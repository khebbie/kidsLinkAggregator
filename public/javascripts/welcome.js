function populateCategory(catid, approvedLinks)
{
   $('.result').append('<h3>' + catid.category.name + '</h3>');
   $('.result').append('<p><ul>');

   $.each(approvedLinks, function(index, value) {
     if(value.link.category_id == catid.category.id)
     {
       $('.result').append('<li><a href="' + value.link.url + '" target="_blank">' + value.link.name + '</a></li>');
     }
     $('.result').append('</ul></p>');
    });

}

function populateLinks()
{
  var approvedLinks;

 $.getJSON('/approved.json', function(app) {
   approvedLinks = app;
 });

 $.getJSON('/categories.json', function(categories) {
    jQuery.each(categories, function(i, catid) {
      populateCategory(catid, approvedLinks);
    }); 
  });
}


