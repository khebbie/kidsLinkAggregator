function attachDelete()
{
$('a.delete').click (function(){
            if(confirm("Are you sure?")){
                var row = $(this).closest("tr").get(0);
                $.post(this.href, {_method:'delete'}, null, "script");
                $(row).fadeOut();
                return false;
            } else {
                //they clicked no.
                return false;
            }

    });
}
