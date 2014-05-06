/// <reference path="jquery-1.9.1.js" />
/// <reference path="jquery-ui-1.8.24.js" />
$(document).ready(function() {

    $(":input[data-autocomplete]").each(function() {
        $(this).autocomplete({
            source: $(this).attr("data-autocomplete")
        });

    });

})


