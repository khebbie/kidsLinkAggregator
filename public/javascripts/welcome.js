function populateLinks()
{
 $.getJSON('/categories.json', function(categories) {

    $.getJSON('/approved.json', function(approvedLinks) {
      jQuery.each(categories, function(i, catid) {
        $('.result').append('<h3>' + catid.category.name + '</h3>');
       
        $('.result').append('<p><ul>');

        $.each(approvedLinks, function(index, value) {
         
         if(value.link.category_id == catid.category.id)
          
          $('.result').append('<li><a href="' + value.link.url + '" target="_blank">' + value.link.name + '</a></li>');
            
        $('.result').append('</ul></p>');
          });
        });
      }); 
      });
}
