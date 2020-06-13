var Progress = {
    on : function(event) {
        var html = '\t<div style="position:fixed; width:100%; height:100vh; display:flex; z-index: 30; background-color: rgba(0,0,0,0.5); top:0;\n' +
            '\t\t\tjustify-content: center; align-items: center;" id="progressCon">\n' +
            '\t\t<div style="z-index: 10">\n' +
            '\t\t\t<img src="/resources/img/loading-bar.svg">\n' +
            '\t\t</div>\n' +
            '\t</div>';
        $("body").append(html);

        window.setTimeout(function () {
            $("#progressCon").remove();
        }, 60000)
    },
    off : function(text) {
        window.setTimeout(function () {
            $("#progressCon").remove();
        },500);
    },
};

var pop = {
    alertPop : function (content) {
        var html =
            "<div style=\"position:fixed; width:100%; height:100vh; \n" +
            "  display:flex; z-index: 30; background-color: rgba(0,0,0,0.5); top:0; justify-content: center; align-items: center;\" id=\"alertCon\"\">\n" +
            "    <div style=\"background-color: white; padding: 30px 50px 50px 50px; width: 400px; height: 100px; position: relative;\">\n" +
            "      <div class=\"\" style=\"font-size: 30px; line-height: 40px; text-align: center;\">\n" +
            "        " + content + "\n" +
            "      </div>\n" +
            "      <div class=\"btn-style1-con type2\" style=\"position: absolute; bottom: 10px;\">\n" +
            "        <input class=\"btn-style1\" readonly value=\"확인\" onclick=\"pop.removePop()\">\n" +
            "      </div>\n" +
            "    </div>\n" +
            "  </div>"
        $("body").append(html)
        $("#alertCon").on("click", function () {
            this.remove();
        })
    },
    removePop : function () {
        $("#alertCon").remove();
    }
};


function openPopup(obj) {
	var dataPopup = $(obj).data('popup');
	console.log(dataPopup)
    $("[data-popup= " + dataPopup + "]").addClass('open');

    var popupUrl = $(obj).data('url');
    if(popupUrl !== undefined && popupUrl !== ""){
    	if($(obj).data('idx') !== undefined && $(obj).data('idx') !== ""){
        	popupBody = popupUrl+"?idx="+$(obj).data('idx');
        }else{
        	popupBody = popupUrl;
        }

    	if(popupBody !== undefined && popupBody !== ""){
        	$("[data-popup= " + dataPopup + "]").find(".popup_con").load(popupBody);
        }
    }

    var popupTitle = $(obj).data('title');
    if(popupTitle !== undefined && popupTitle !== ""){
    	$("[data-popup= " + dataPopup + "]").find(".popup_title").text(popupTitle);
    }

    var popupCon = $(obj).data('popcon');
    if(popupCon !== undefined && popupCon !== ""){
    	$("[data-popup= " + dataPopup + "]").find(".popup_con").text(popupCon);
    }

    $('body').addClass('popup_open');

    $('.js-popup-close').on('click', function() {
    	console.log("2");
        $(this).closest('.layer_popup').removeClass('open');
        $('body').removeClass('popup_open');
      });
}

function closePopup(obj) {
	$(obj).closest('.layer_popup').removeClass('open');
	$('body').removeClass('popup_open');
}