<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix = "s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>上传照片</title>
</head>

<body>
 <form action="student/uploadAvatar" enctype="multipart/form-data" method="post">
        <input type="file" name="upload" label="请选择要上传的照片" /><!-- 似乎必须为upload -->
        <input type="submit" value="上传" />
    </form>

</body>
</html>