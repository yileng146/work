	var i=1;
	go2();
	function go2()
{
	var imgid= document.getElementById("imgid");
	imgid.src="../img/ajax/"+i+".jpg";
	for(var j=1;j<8;j++)
	{
		var numid0=document.getElementById("num"+j) ;
		numid0.className="one";
	}
	
	var numid=document.getElementById("num"+i) ;
	numid.className="two";
	i++;
	if (i==8)
	{
		i=1;
	}
	setTimeout("go2()",1000);
}
	function ordinary_submit()
	{
		console.log("66666");
		var ordinary_form=document.getElementById("ordinary_form");
		ordinary_form.action="../servlet/ajaxservlet?para=ordinamry_submit";
		ordinary_form.submit();
	}
