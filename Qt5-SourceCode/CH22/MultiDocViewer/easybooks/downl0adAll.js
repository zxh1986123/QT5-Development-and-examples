var fake_pop = null;
function testDeal( sort, subject, tType ){
	var content = "<div style=\"margin-top:70px;width:350px;text-align:center;\">您还未登陆，请登陆后进行操作。<\/div>\
					<div style=\"margin-top:10px;width:350px;text-align:center;\">\
					<A href=\"javascript:fake_pop.close();\"><IMG src=\"images/comfirm_02.jpg\"></A>\
					<\/div>";
	if( fake_pop === null ){
		fake_pop = new Popup({ contentType:2, isReloadOnClose:false, width:350, height:204 });
	}
	fake_pop.setContent("title", (tType=="1")?"支付组卷":"支付测试");
	fake_pop.setContent("contentHtml", content );
	fake_pop.build();
	fake_pop.startWait();
	fake_pop.show();
}

function cwDeal( cname, cid ){
	var content = "<div style=\"margin-top:70px;width:350px;text-align:center;\">您还未登陆，请登陆后下载。 <\/div>\
					<div style=\"margin-top:10px;width:350px;text-align:center;\">\
					<A href=\"javascript:fake_pop.close();\"><IMG src=\"images/comfirm_02.jpg\"></A>\
					<\/div>";
	if( fake_pop === null ){
		fake_pop = new Popup({ contentType:2, isReloadOnClose:false, width:350, height:204 });
	}
	fake_pop.setContent("title","下载("+cname+")");
	fake_pop.setContent("contentHtml", content );
	fake_pop.build();
	fake_pop.startWait();
	fake_pop.show();
}

function downloadResource(resourceId,resourceName,_baseUrl)
{
	var content = "<div style=\"margin-top:70px;width:350px;text-align:center;\">您还未登陆，请登陆后下载。 <\/div>\
					<div style=\"margin-top:10px;width:350px;text-align:center;\">\
					<A href=\"javascript:fake_pop.close();\"><IMG src=\""+(_baseUrl==undefined?"":_baseUrl)+"images/comfirm_02.jpg\"></A>\
					<\/div>";
	if( fake_pop === null ){
		if( _baseUrl )
			fake_pop = new Popup({ contentType:2, isReloadOnClose:false, width:350, height:224, baseUrl:_baseUrl });
		else 
			fake_pop = new Popup({ contentType:2, isReloadOnClose:false, width:350, height:224 });
	}
	fake_pop.setContent("title", "资源下载");
	fake_pop.setContent("contentHtml", content );
	fake_pop.build();
	fake_pop.startWait();
	fake_pop.show();
}

function uploadBookResource(bookCode){
	var content = "<div style=\"margin-top:70px;width:350px;text-align:center;\">您还未登陆，请登陆后进行操作。<\/div>\
					<div style=\"margin-top:10px;width:350px;text-align:center;\">\
					<A href=\"javascript:fake_pop.close();\"><IMG src=\"images/comfirm_02.jpg\"></A>\
					<\/div>";
	if( fake_pop === null ){
		fake_pop = new Popup({ contentType:2, isReloadOnClose:false, width:350, height:204 });
	}
	fake_pop.setContent("title", "配套资源上传");
	fake_pop.setContent("contentHtml", content );
	fake_pop.build();
	fake_pop.startWait();
	fake_pop.show();
}