<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
 .mainlogo{
  margin: 0 auto;
  float: right;
  height: 80px;
  
}
    /* 헤더 */
  header{
    width: 100%; height: 10%;
    border-top: 2px solid  #999afe;
    border-bottom: 2px solid  #999afe;

    display: flex;
  }
                  /*로고가 들어갈 곳*/
                    .logo{
                      width: 15%; height: 100%;
                      float: left;
                    }
                     /*로고 글씨 or image*/
                    .logo h3{
                      text-align: center;
                      position: relative;
                      top: 30%;
                      font-size: x-large; 

                    }
                    /*메인 네비 중간부분*/
                    nav{
                      width:70%;
                      float: left;
                      height: 100%;
                      line-height: 5.0;
                      border-left:1px dotted #999afe; 
                      text-align: center;
                    }
                    nav ul li{
                      float: left;
                      width:20%; height: 100%;
                    list-style: none;
                    font-weight: 900;
                    position: relative;
                  }
                  nav ul li ul {
                    display: none;
                    position: absolute;
                    width: 100%;
                    z-index: 2; 
                  }
                  nav ul li ul li:hover{
                    background-color: #dcd8e8;
                  }

                  nav ul li:hover ul {
                    display: block;
                    background-color: #999afe;
                 
                
                  }
                  nav ul li ul li{
               
                    width: 100%; 
                    line-height: 4.0;
                   
                  }
                  nav ul li ul li:hover{
                    background-color: #dcd8e8;
                  }


                    a{text-decoration:none;font-size:15px; } 
                  /*내정보/관리자*/
                  #admin_nav{
                    float: left;
                    width: 15%; height: 100%;
                    border-left:1px dotted #999afe; 
                  }
                  #admin_nav ul{
                    display: flex;
                    position: relative;
                      left: 10%;
                  }
                  #admin_nav ul li{
                    width: 100px; height: 100%;
                    list-style: none;
                    line-height: 5.0;
                  }

</style>

</head>
<body>
<img class="mainlogo" src="fIRST- WORKS.png" >
<header>
<!--헤더 -->

<div class="logo">
   <a href="home.jsp"><img src="fIRST- WORKS2.png" alt="" height="80px"></a>
</div>
<nav>
  <ul>

    <li><a href="notice.html">공지사항</a></li>
    <li><a href="@">일정관리</a></li>
    <li>
      <a href="main3.html">전자결재</a>
        <ul> 
              <li><a href="main3.html">결재 신청 하기</a> </li>
              <li><a href="">승인 하기</a> </li>
        </ul>
    
    </li>
    <li>
      <a href="@">근태관리</a>

        <ul> 
              <li><a href="">출결정보</a> </li>
              <li><a href="">#</a> </li>
         </ul>

    </li>
    <li>
      <a href="notice.html">자유게시판</a>

      <ul> 
        <li><a href="">출결정보</a> </li>
        <li><a href="">#</a> </li>
      </ul>

    </li>

  </ul>
</nav>
<div id="admin_nav">
  <ul>
    <li><a href="@">내정보</a></li>
    <li><a href="@">로그아웃</a></li>

  </ul>


</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</header>
</body>
</html>