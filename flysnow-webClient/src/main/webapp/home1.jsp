<%@ page language="java" contentType="text/htm l; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>管理系统</title>
<style type="text/css">
.content {
	padding: 10px 10px 10px 10px;
}
.divNorth{
	background:url('image/TitleBackground.jpg') no-repeat center center;
	background-size:100% 100%;
}
</style>
</head>
<body class="easyui-layout">
	<!-- North Title -->
	<div class="divNorth" style="height:100px;" data-options="region:'north'" >
		<table id="_TableHeader" width="100%" border="0" cellpadding="0"
		cellspacing="0" class="bluebg">
		<tbody>
			<tr>
				<td valign="top">
					<div style="position:relative;">
						<div style="text-align:right;font-size:15px;margin:2px 0 0 0;">
							<span style="display:inline-block;font-size:20px;color:#c1dff7;margin:0 0 8px 0;">
								计算机科学与技术学院
							</span><br/>

							<span style="color:#c1dff7;">${activeUser.rolename}:</span>
							<span style="color:#c1dff7;">
								${activeUser.username}
							</span>
						    &nbsp;<a href="logout" style="text-decoration:none;color:#A9C3D6;"> 退出</a>&nbsp;  &nbsp;
						</div>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	</div>

	<!-- <div data-options="region:'west',title:'功能菜单',split:true" style="width:213px;"> -->
	<div id="HomeFuncAccordion" class="easyui-accordion" style="width:213px;" data-options="region:'west',title:'功能菜单',split:false">
		<div title="系统配置" data-options="selected:true" style="padding:10px;">
			<ul id="sysconfig" class="easyui-tree" data-options="animate:true,lines:true">
				<li><span>系统配置</span>
					<ul>
						<li id="11" data-options="attributes:{'url':'order/find'}">全局变量管理</li>
					</ul>
					<ul>
						<li id="12" data-options="attributes:{'url':'custom/find'}">字典管理</li>
					</ul>
				</li>
			</ul>
		</div>
		<div title="权限管理" data-options="selected:true" style="padding:10px;">
			<ul id="authroity" class="easyui-tree" data-options="animate:true,lines:true">
				<li><span>权限管理</span>
					<ul>
						<li id="21" data-options="attributes:{'url':'order/find'}">功能管理</li>
					</ul>
					<ul>
						<li id="22" data-options="attributes:{'url':'custom/find'}">角色管理</li>
					</ul>
					<ul>
						<li id="22" data-options="attributes:{'url':'custom/find'}">用户管理</li>
					</ul>
				</li>
			</ul>
		</div>
		<div title="日志管理" data-options="selected:true" style="padding:10px;">
			<ul id="logmanage" class="easyui-tree" data-options="animate:true,lines:true">
				<li><span>日志管理</span>
					<ul>
						<li id="31" data-options="attributes:{'url':'order/find'}">登录日志</li>
					</ul>
					<ul>
						<li id="32" data-options="attributes:{'url':'custom/find'}">操作日志</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>

	<!-- </div> -->
	<div id="MainPage" data-options="region:'center',title:''">
		<div id="tabs" class="easyui-tabs">
			<div title="首页" style="padding:20px;"></div>
		</div>
	</div>

	<script type="text/javascript">
		$(function() {
			$('#sysconfig').tree({
				onClick : function(node) {
					if ($('#sysconfig').tree("isLeaf", node.target)) {
						var tabs1 = $("#tabs");
						var tab1 = tabs1.tabs("getTab", node.text);
						if (tab1) {
							tabs1.tabs("select", node.text);
						} else {
							tabs1.tabs('add', {
								title : node.text,
								href : node.attributes.url,
								closable : true,
								bodyCls : "content"
							});
						}
					}
				}
			});

			$('#authroity').tree({
				onClick : function(node) {
					if ($('#authroity').tree("isLeaf", node.target)) {
						var tabs2 = $("#tabs");
						var tab2 = tabs2.tabs("getTab", node.text);
						if (tab2) {
							tabs2.tabs("select", node.text);
						} else {
							tabs2.tabs('add', {
								title : node.text,
								href : node.attributes.url,
								closable : true,
								bodyCls : "content"
							});
						}
					}
				}
			});
			$('#logmanage').tree({
				onClick : function(node) {
					if ($('#logmanage').tree("isLeaf", node.target)) {
						var tabs2 = $("#tabs");
						var tab2 = tabs2.tabs("getTab", node.text);
						if (tab2) {
							tabs2.tabs("select", node.text);
						} else {
							tabs2.tabs('add', {
								title : node.text,
								href : node.attributes.url,
								closable : true,
								bodyCls : "content"
							});
						}
					}
				}
			});
	    });
	</script>
</body>
</html>