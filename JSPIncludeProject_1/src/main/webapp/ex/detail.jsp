
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
    <div class="container">
        <div class="row">
            
                <div class="col-md-4">
                    <div class="thumbnail">
                        
                            <!-- Corrected the expression for accessing the 'poster' property -->
                            <img src="${vo.poster}" alt="Lights" style="width:400px;height:600px">
                            <div class="caption">
                                <!-- Corrected the expression for accessing the 'title' property -->
                                <p>${vo.ename}</p>
                                <p>${vo.eename}</p>
                                <p>${vo.item}</p>
                                <p>${vo.host}</p>
                                <p>${vo.eitem}</p>
                                <p>${vo.homepage}</p>
                                <p>${vo.loc}</p>
                                <p>${vo.loc_detail}</p>
                                <p>${vo.cate}</p>
                            </div>
                        
                    </div>
                </div>
            
        </div>
        
    </div>
</body>
</html>
	
</body>
</html>