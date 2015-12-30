<%@ page language="java" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>标签表管理</title>

	
<script src="<%=basePath%>/lib/jquery/jquery-1.11.3.js" type="text/javascript"></script>

 <style>
        .BaseInfo{
          margin: 1em;
	border: 1px solid #CCC;
	border-top: none;
        }
		.popoverlay {
			position:absolute;top:0;left:0;width:100%;height:960px;background:#000;opacity:0.5;filter:alpha(opacity=50);-khtml-opacity:0.5;
		} 
		.popbox {
			position:absolute;top:45%;left:50%;width:492px;height:346px;background:#fff;margin:-102px 0 0 -202px;line-height: 200px;text-align: center;border: 4px solid #CCC;
		}
</style>


<script language="javascript">
       
	function goPage(currentPage){

		$.ajax({
					type: "POST",
					url: "../saleOrderAction_queryOrderById", 
					data:{"id":38},
		   		    dataType: "json",
		   		    success:function(data){
		   		    		alert(data.order.note_type);
		   		    },
			        error:function(data){
			        	alert("error");
			        }
		   	    })
		
		/* $.jsonp({
	        url: "http://localhost:8080/valueline-web/buyOrderAction_queryOrderById?id=2&&jsonp=?",
	        //data: {"id":2},
	        //callback:"callbackAction",
	        success: function (json) {
	        	alert(json);
	            //your code             
	        },
	        error: function (xOptions, textStatus) {
	        	alert("error");
	            //your code            
	        }
	    }); */
		
	  /*  $.ajax({
			
			url: "http://localhost:8080/valueline-web/buyOrderAction_queryOrderById?id=2&callback=?", 
			//data:{"id":2},
   		    dataType: "jsonp",
   		    type:'get',
   		    success:function(data){ 
   		    	alert(data);
   		    },
	   		error:function(XMLHttpRequest, textStatus, errorThrown) {
	   	       alert(XMLHttpRequest.status);
	   	       alert(XMLHttpRequest.readyState);
	   	       alert(textStatus);
	   	    }
	})  */
}

</script>
</head>
<body>
	<button onclick="javascirpt:goPage();">首页</button>
</body>
</html>