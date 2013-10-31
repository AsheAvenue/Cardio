var statusapp = (function(){
    
    var self;
    
    return {
    
        init: function(){
    
            self = this;
            
            if(document.location.protocol == 'https:') {
                $('iframe').load( function() {
                    $('iframe').contents().find(".chart_header").remove();
                });
            }
        },
        
    };
})();

$(document).ready(function(){
    statusapp.init();
});    