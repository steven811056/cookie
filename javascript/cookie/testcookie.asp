 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script type="text/javascript">
	function setCookie(c_name,value,expiredays) //setCookie('username','value','time');
	{
		var exdate=new Date()
		exdate.setDate(exdate.getDate()+expiredays)//setDate 設定月份中的日期  getDate取得月份中的日期 setseconds....
		document.cookie=c_name+ "=" +escape(value)+((expiredays==null) ? "" : ";expires="+exdate)
	}   //document.cookie = "c_name = "'idName'('過期時間')  "
	/*cookie 的生命周期也就是有效期和失效期，即 cookie 的存在时间。
	在默认的情况下，cookie 会在浏览器关闭的时候自动清除，如果想要 cookie 能在浏览器关掉之后还可以使用，
	就必须要为该 cookie 设置有效期，也就是 cookie 的失效日期
	语法如下：document.cookie = "name=value;expires=date" */
    function getCookie(c_name) //getCookie(Cookie Name)
	{
        if (document.cookie.length>0) //要是c_name是空的 return null
		{			
            c_start=document.cookie.indexOf(c_name + "=")   
			/*indexOf(searchValue,fromIndex)
				檢查字串字元，返回某個指定的字串字元在字串中首次出現的位置。如果要檢索的字串值没有出现，則該方法返回 -1。
				參數searchValue：必須要填，要檢索的字符串的值。
				參數fromIndex：可选的整數參數。規定在字串中开始檢索的位置。
				它的合法取值是 0 到 stringObject.length - 1。如省略该參數，则將從字串的首字开始檢索。*/
			//這邊是從linksNewWindow= 之後開始檢索	
			if (c_start!=-1) //要是c_start沒有檢查到符合的 return null
			{ 
				
                c_start=c_start + c_name.length+1 //c_start = 檢查"c_name="之後的第n個數+c_name長度再+1(+1其實就是"="的字元的意思)
                c_end=document.cookie.indexOf(";",c_start)//c_end是自己設定結束檢索的位置  這邊是從c_name=....之後開始檢索";"字元
                if (c_end==-1) c_end=document.cookie.length //要是沒打分號 這裡會自動檢查結束的位置
                    return unescape(document.cookie.substring(c_start,c_end))
            } 
        }
        return null
    }
	/*在设置 cookie 信息以前要先使用escape()函数将 cookie 值信息进行编码，
	在获取到 cookie 值得时候再使用unescape()函数把值进行转换回来。*/
	onload=function()
	{
		document.getElementById('linksNewWindow').checked = getCookie('linksNewWindow')==1? true : false;
	}/*(a == b) ? do(a) : do(b); 
		? 前面為判斷式 (a == b)，若為真，則執行 : (冒號)前的程式碼，若不為真，則執行冒號後的程式碼。*/
		/*此為document.getElementById('linksNewWindow').checked 要是等於1 則傳回true*/
	function set_check()
	{
		setCookie('linksNewWindow', document.getElementById('linksNewWindow').checked? 1 : 0, 10);
	}
/*	var str = "Hello world!"
	document.write(str.indexOf("Hello") + "<br />")
	document.write(str.indexOf("World") + "<br />")
	document.write(str.indexOf("world"))*/
</script>
</head>
<body>
<div>Hi</div>
<input type="checkbox" id="linksNewWindow" onchange="set_check();">

</body>
</html>