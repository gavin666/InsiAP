var addTabs = function(options,parentId) {
	id = "tab_" + options.id;
	$(".active").removeClass("active");
	$(".open").removeClass("open");
	$("#"+options.id).addClass("active");
	$("#"+parentId).addClass("active");
	$("#"+parentId).addClass("open");
	
	
	// 如果TAB不存在，创建一个新的TAB
	if (!$("#" + id)[0]) {
		// 固定TAB中IFRAME高度
		// mainHeight = $(document.body).height();
		mainHeight = document.documentElement.clientHeight;
		// 创建新TAB的title
		title = '<li role="presentation" id="tab_' + id + '"><a href="#' + id
				+ '" aria-controls="' + id + '" role="tab" data-toggle="tab">'
				+ options.title;
		// 是否显示关闭，false为关闭
		if (false) {   //options.close
			title += ' <i class="glyphicon glyphicon-remove" tabclose="' + id
					+ '"></i>';
		}
		title += '</a></li>';
		// 是否指定TAB内容
		if (options.content) {
			content = '<div role="tabpanel" class="tab-pane" id="' + id + '">'
					+ options.content + '</div>';
		} else {// 没有内容，使用IFRAME打开链接
			content = '<div role="tabpanel" class="tab-pane" id="'
					+ id
					+ '"><iframe src="'
					+ options.url
					+ '" width="100%" height="'
					+ mainHeight
					+ '" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="yes" allowtransparency="yes"></iframe></div>';
		}
		// 加入TABS
		$(".nav-tabs").append(title);
		$(".tab-content").append(content);
	}

	var last = $("#tabs>ul>li:last");

	// 关闭其他页
	var tab = last.children("a").attr("aria-controls").toString();
	$("#tabs>ul>li").not(last).remove();
	$("#tabs>div>div").not($("#tabs").find("div[id='" + tab + "']")).remove();
	//last.addClass("active");
	var id = last.children("a").attr("aria-controls").toString();
	$("#tabs").find("div[id='" + id + "']").addClass("active");

	last.contextPopup();//右键
};

$(function() {
	mainHeight = $(document.body).height();
	$('.main-left,.main-right').height(mainHeight);
	$("[addtabs]").click(function() {
		addTabs({
			id : $(this).attr("id"),
			title : $(this).attr('title'),
			close : false
		});
	});

});
