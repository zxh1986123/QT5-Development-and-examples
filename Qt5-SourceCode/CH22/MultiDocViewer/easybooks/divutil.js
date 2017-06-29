//----------------------------------- auto div scrolling control
function DivAutoScroll(){}
_p = DivAutoScroll.prototype;

_p.pager = null;
_p.scroller = null;

_p.name = "";
_p.idset = "";

_p.totalPage = 1;
_p.curpage = 1;
_p._prevHref = null;
_p._nextHref = null;
_p._pager = null;

_p._interval = -1;

_p._mouseover = false;

_p.init = function( _pagerDiv, _scrollDiv, _name, _idset )
{
	if( typeof( _pagerDiv ) == "string" ){
		this.pager = document.getElementById( _pagerDiv ) || document.all[_pagerDiv];
	}
	else{
		this.pager = _pagerDiv;
	}
	if( !this.pager ){
		alert("指定的分页器无法找到！");
		return;
	}
	
	if( typeof( _scrollDiv ) == "string" ){
		this.scroller = document.getElementById( _scrollDiv ) || document.all[_scrollDiv];
	}
	else{
		this.scroller = _scrollDiv;
	}
	if( !this.scroller ){
		alert("指定的卷动Div无法找到！");
		return;
	}
	
	this.name = _name;
	this.idset = _idset;
	
	var i = this.scroller.offsetHeight;//-?
	this.totalPage = Math.ceil( this.scroller.scrollHeight / this.scroller.offsetHeight );

	this._createPager();
	this._interval = setInterval( this.name+"._nextPage()", 3000 );
	
	this.scroller.onmouseover = new Function(this.name+"._mouseover = true;");
	this.scroller.onmouseout = new Function(this.name+"._mouseover = false;");
	
	this.pager.onmouseover = new Function(this.name+"._mouseover = true;");
	this.pager.onmouseout = new Function(this.name+"._mouseover = false;");
}

_p._createPager = function()
{
	if( this.totalPage > 1 ){
	//	
	try{
		//--
		this._prevHref = document.createElement( "a" );
		this.pager.appendChild( this._prevHref );
		this._prevHref.id = this.idset + "_pa";
		this._prevHref.innerHTML = "&lt;";
		this._prevHref.href = "javascript:"+this.name+".prevPage();";
		
		//alert( this.pager.innerHTML );
		this._pager = document.createElement( "span" );
		this.pager.appendChild( this._pager );
		this._pager.id = this.idset + "_pgr";
		this._pager.innerHTML = this.curpage + "/" + this.totalPage;
		
		this._nextHref = document.createElement( "a" );
		this.pager.appendChild( this._nextHref );
		this._nextHref.id = this.idset + "_na";
		this._nextHref.innerHTML = "&gt;";
		this._nextHref.href = "javascript:"+this.name+".nextPage();";
		//--
	}
	catch(e){alert(e.message);}
	//
	}
}

_p.prevPage = function()
{
	//alert( this.scroller.id );
	if( this.curpage <= 1) return;
	this.curpage --;
	this._gotoPage();
}

_p.nextPage = function()
{
	if( this.curpage >= this.totalPage ) return;
	this.curpage ++;
	this._gotoPage();
}

_p._nextPage = function()
{
	if( this._mouseover ) return;
	if( this.curpage >= this.totalPage )
		this.curpage = 1;
	else
		this.curpage ++;
	this._gotoPage();
}

_p._gotoPage = function()
{
	this._prevHref.disabled = this.curpage == 1;
	this._nextHref.disabled = this.curpage == this.totalPage;
	
	this._pager.innerHTML = this.curpage + "/" + this.totalPage;
	
	this.scroller.scrollTop = this.scroller.offsetHeight * (this.curpage-1);
}

//------------------- auto div>ul>li texttrim
var StringTool = {
	substring2:function( source, bytelen, preserve )
	{
		var preserveLen = this.strlen2( preserve );
		var sourceLen = this.strlen2( source );
		
		if( preserveLen > bytelen ) return "...";
		
		var leftLen = bytelen - preserveLen;
		if( leftLen > sourceLen ){
			return source;
		}
		else{
			return this.strtrim2( source, leftLen ) + "...";
		}
	},
	strlen2:function(str)
	{
		if (str == undefined)
			return 0;
		
		var totalCount = 0;  
	
		for (var i = 0; i < str.length; i++) {
			var c = str.charCodeAt(i);
			if ((c >= 0x0001 && c <= 0x007e) || (0xff60 <= c && c <= 0xff9f)) {
				totalCount++;
			} else {
				totalCount += 2;
			}
		}
		
		return totalCount;
	},
	strtrim2:function( str, bytelen )
	{
		var newStr = "";
		var totalCount = 0;
		for( var i = 0;i<str.length;i++ ){
			var c = str.charCodeAt(i);
			if ((c >= 0x0001 && c <= 0x007e) || (0xff60 <= c && c <= 0xff9f)) {
				totalCount++;
			} else {
				totalCount += 2;
			}
			
			if( totalCount<bytelen )
				newStr += str.charAt(i);
			else
				break;
		}
		
		return newStr;
	}
}

function DivUlLiDance(){}
_p = DivUlLiDance.prototype;

_p.dance = function( _targetDiv, _dancerType, _tlen )
{
	var targetDiv = document.getElementById( _targetDiv );
	if( !targetDiv ){
		alert( "找不到目标-(" + _targetDiv + ")" );
		return;
	}
	
	var dancers = targetDiv.getElementsByTagName( _dancerType );
	for( var i=0;i<dancers.length;i++ ){
		var dancer = dancers[i];
		var innerHtml = dancer.innerHTML;
		dancer.title = innerHtml;
		
		var trhtml = StringTool.substring2( innerHtml, _tlen, "" );
		dancer.innerHTML = trhtml;
	}
	
}


