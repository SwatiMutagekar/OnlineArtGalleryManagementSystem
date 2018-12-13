<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<h1><b>Surrealism arts</b></h1>
<style>
div.gallery {
    border: 1px solid #ccc;
}

div.gallery:hover {
    border: 1px solid #777;
}

div.gallery img {
    width: 319px;
    height: 250px;
  
}

div.desc {
    padding: 15px;
    text-align: center;
}

* {
    box-sizing: border-box;
}

.responsive {
    padding: 0 6px;
    float: left;
    width: 24.99999%;
}

@media only screen and (max-width: 700px){
    .responsive {
        width: 49.99999%;
        margin: 6px 0;
    }
}

@media only screen and (max-width: 500px){
    .responsive {
        width: 100%;
    }
}

.clearfix:after {
    content: "";
    display: table;
    clear: both;
}
</style>
</head>
<body>
<div><h2><u>Description:</u></h2>
<h3>Surrealism is a modern painting style that juxtaposes various images together to give a startling effect. The images are often illogical and have a dream-like quality about them. Surrealist paintings emphasize the subconscious.</h3></div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="s1.jsp">
      <img src="surrealism/1.jpg" alt="" width="300" height="200">
    </a>
    <div class="desc">Eye-Valley<br>
     &#x20b9 12,000</div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="s2.jsp">
      <img src="surrealism/2.jpg" alt="" width="300" height="200">
    </a>
    <div class="desc">Eye-Art<br>
    &#x20b9 10,500</div>
  </div>
</div>


<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="s3.jsp">
      <img src="surrealism/3.jpg" alt="" width="300" height="200">
    </a>
    <div class="desc">Peter Angel<br>
    &#x20b9 10,000</div>
    
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="s4.jsp">
      <img src="surrealism/4.jpg" alt="" width="300" height="200">
    </a>
    <div class="desc">Spirit art<br>
    &#x20b9 9,000
    </div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="s5.jsp">
      <img src="surrealism/5.jpg" alt="" width="300" height="200">
    </a>
    <div class="desc">Ocean work<br>
    &#x20b9 9,500</div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="s6.jsp">
      <img src="surrealism/6.jpg" alt="" width="300" height="200">
    </a>
    <div class="desc">Wood Cutting<br>
    &#x20b9 10,500</div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="s7.jsp">
      <img src="surrealism/7.jpg" alt="" width="300" height="200">
    </a>
    <div class="desc">Dark art work<br>
    &#x20b9 8,900</div>
  </div>
</div>
<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="s8.jsp">
      <img src="surrealism/8.jpg" alt="" width="300" height="200">
    </a>
    <div class="desc">Shoe bridge<br>
    &#x20b9 9,000</div>
  </div>
</div>
<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="s9.jsp">
      <img src="surrealism/9.jpg" alt="" width="300" height="200">
    </a>
    <div class="desc">Floral Music<br>
    &#x20b9 9,000</div>
  </div>
</div>







<div class="clearfix"></div>



</body>
</html>