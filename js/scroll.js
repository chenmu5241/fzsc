//scroll方法
(function(window,$){
    window.setScrollHeight = function(item){
        localStorage.setItem(item, $(document).scrollTop());
    }
    
    window.scrollTo  = function(item){
        $(document).scrollTop(localStorage.getItem(item));
    }

    window.resetScroll = function(item){
        localStorage.setItem(item, 0);
    }
}(window,jQuery))