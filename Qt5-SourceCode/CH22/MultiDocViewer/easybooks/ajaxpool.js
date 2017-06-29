var ajaxpool = {
    _objPool: [],
    _getInstance: function (){
        for (var i = 0; i < this._objPool.length; i ++){
            if (this._objPool[i].readyState == 0 || this._objPool[i].readyState == 4){
                return this._objPool[i];
            }
        }
        this._objPool[this._objPool.length] = this._createObj();
        return this._objPool[this._objPool.length - 1];
    },
    _createObj: function (){
        if (window.XMLHttpRequest){
            var objXMLHttp = new XMLHttpRequest();
        }else{
            var MSXML = ['MSXML2.XMLHTTP.5.0', 'MSXML2.XMLHTTP.4.0', 'MSXML2.XMLHTTP.3.0', 'MSXML2.XMLHTTP', 'Microsoft.XMLHTTP'];
            for(var n = 0; n < MSXML.length; n ++){
                try{
                    var objXMLHttp = new ActiveXObject(MSXML[n]);
                    break;
                }catch(e){
                }
            }
         }
        if (objXMLHttp.readyState == null){
            objXMLHttp.readyState = 0;
            objXMLHttp.addEventListener("load", function (){
                    objXMLHttp.readyState = 4;
                    if (typeof objXMLHttp.onreadystatechange == "function"){
                        objXMLHttp.onreadystatechange();
                    }
                },  false);
        }
        return objXMLHttp;
    },
	sendReq: function ( url, callback, cbparam, ret ) {
        var objXMLHttp = this._getInstance();
        with(objXMLHttp){
            try{
                if (url.indexOf("?") > 0){
                    url += "&randnum=" + Math.random();
                }else{
                    url += "?randnum=" + Math.random();
                }
                open( "GET", url, true );
                setRequestHeader('Content-Type', 'application/x-www-form-urlencoded; charset=UTF-8');
                send(null);
                
                if( callback ){
					onreadystatechange = function () {
	                    if (objXMLHttp.readyState == 4 && (objXMLHttp.status == 200 || objXMLHttp.status == 304)){
	                        ret == "xml"? callback( objXMLHttp.responseXML, cbparam ) : callback( objXMLHttp.responseText, cbparam );
	                    }
	                }
                }
            }catch(e){
                alert(e);
            }
        }
    },
    postReq: function ( url, param, callback, cbparam, ret ) {
        var objXMLHttp = this._getInstance();
        with(objXMLHttp){
            try{
                if ( param==null || param.length == 0){
                    param += "randnum=" + Math.random();
                }else{
                    param += "&randnum=" + Math.random();
                }
                open( "POST", url, true );
                setRequestHeader('Content-Type', 'application/x-www-form-urlencoded; charset=UTF-8');
                send( param );
                
                if( callback ){
	                onreadystatechange = function () {
	                    if (objXMLHttp.readyState == 4 && (objXMLHttp.status == 200 || objXMLHttp.status == 304)){
							ret == "xml"? callback( objXMLHttp.responseXML, cbparam ) : callback( objXMLHttp.responseText, cbparam );
	                    }
	                }
                }
            }catch(e){
                alert(e);
            }
        }
    }
};