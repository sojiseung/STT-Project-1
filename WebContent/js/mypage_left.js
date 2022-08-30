
$(document).ready(function() {
            $(".fun").click(function() {
                var submenu = $(this).next("ul");
                if(submenu.is(":visible")){
                    submenu.slideUp();
                } else {
                    submenu.slideDown();
                }
            });
        });