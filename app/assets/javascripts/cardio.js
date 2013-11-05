var cardio = (function(){
    
    var self,
        overlay_enabled = false;
    
    return {
    
        init: function(){
    
            self = this;
            self.showOverlay();
        },
        
        showOverlay: function(){
            if(cardio.overlay_enabled == true) {
                setTimeout(function () {
                    alert('overlay here');
                }, 1000);
            }
        },
        
        hideOverlay: function() {
            if(cardio.overlay_enabled == true) {
                alert('hide overlay');
            }
        }
    };
})();

$(document).ready(function(){
    cardio.init();
});    