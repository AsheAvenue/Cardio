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
                    $('.overlay').fadeIn();
                }, 10);
            }
        },

        hideOverlay: function() {
            if(cardio.overlay_enabled == true) {
                $('.overlay').fadeOut();
            }
        }
    };
})();

$(document).ready(function(){
    cardio.init();
});