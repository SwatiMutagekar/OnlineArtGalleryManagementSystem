<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<h1><b>Portrait arts</b></h1>
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
<body><div><h2><u>Description:</u></h2>
<h3>A portrait is a painting, photograph, sculpture, or other artistic representation of a person, in which the face and its expression is predominant. The intent is to display the likeness, personality, and even the mood of the person. For this reason, in photography a portrait is generally not a snapshot, but a composed image of a person in a still position. A portrait often shows a person looking directly at the painter or photographer, in order to most successfully engage the subject with the viewer.
</h3></div>
<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="p1.jsp">
      <img src="portrait/1.jpg" alt="" width="300" height="200">
    </a>
    <div class="desc">Cute baby<br>
     &#x20b9 10,000</div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="p2.jsp">
      <img src="portrait/2.jpg" alt="" width="300" height="200">
    </a>
    <div class="desc">Blue Orange Lady<br>
    &#x20b9 10,500</div>
  </div>
</div>


<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="p3.jsp">
      <img src="portrait/3.jpg" alt="" width="300" height="200">
    </a>
    <div class="desc">Rural Look<br>
    &#x20b9 11,000</div>
    
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="p4.jsp">
      <img src="portrait/4.jpg" alt="" width="300" height="200">
    </a>
    <div class="desc">Serene Smile<br>
    &#x20b9 10,500
    </div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="p5.jsp">
      <img src="portrait/5.jpg" alt="" width="300" height="200">
    </a>
    <div class="desc">Obama<br>
    &#x20b9 10,500</div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="p6.jsp">
      <img src="portrait/6.jpg" alt="" width="300" height="200">
    </a>
    <div class="desc">Grand Plead<br>
    &#x20b9 9,500</div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="p7.jsp">
      <img src="portrait/7.jpg" alt="" width="300" height="200">
    </a>
    <div class="desc">Blink <br>
    &#x20b9 10,900</div>
  </div>
</div>
<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="p8.jsp">
      <img src="portrait/8.jpg" alt="" width="300" height="200">
    </a>
    <div class="desc">White Beauty<br>
    &#x20b9 9,000</div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="p9.jsp">
      <img src="portrait/9.jpg" alt="" width="300" height="200">
    </a>
    <div class="desc">Abraham Lincoln<br>
    &#x20b9 10,000</div>
  </div>
</div>
<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="p10.jsp">
      <img src="portrait/10.jpg" alt="" width="300" height="200">
    </a>
    <div class="desc">Violin Player<br>
    &#x20b9 9,500</div>
  </div>
</div>
<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="p11.jsp">
      <img src="portrait/11.jpg" alt="" width="300" height="200">
    </a>
    <div class="desc">Warm Work<br>
    &#x20b9 10,000</div>
  </div>
</div>





<div class="clearfix"></div>



</body>
</html>