<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<body style="text-align: center; font-family: monospace; background-color: #FFFFFF;">
<%@include file="/resources/include/playheader.jsp"%>
<style>
    #particles-js {
        position: absolute;
        width: 100%;
        height: 100%;
        background-repeat: no-repeat;
        background-size: cover;
        background-position: 50% 50%;
        z-index: -990;
    }
</style>
<div class="circlediv">
    <canvas id="c" style="display: block;
        position: absolute;
        left: 0px; top: 0px;
        width: 100%;
        height: 100%;
        z-index: -990;"></canvas>
</div>

<div id="grp" cusid ="${grade}" ></div>
<div id="outer" style="position: absolute; left: 0px; top:0px; z-index: -1000 "></div><!--하늘 효과주는 js-->

<button class="btn btn-warning col-lg-1 readbtn" id="bgmbtn" style=" position: absolute; left: 0px; top: 0px; z-index: 1000;"> <span style="margin-right: 5px"></span>음악</button> <!--bgm player-->
	<canvas id="stage" width="500" height="100" style=" position: absolute; left: 0px; top: 0px" ></canvas>
	 <div class="textdiv">
    <canvas id="text" width="500" height="500" style="position: absolute; left: 0px; top: 0px"></canvas>
    </div>
     <video id="video" autoplay="true" style="display:none;"></video><!-- webcam video-->
    <canvas id="canvas" style="margin-top: 15%;width:640px; height:420px;  border-radius: 100px; "></canvas><!--웹캠띄우는 canvas-->
<script src = "/resources/temp3.js"></script>
<script src = "/resources/css/circleshow.js"></script>
<script type="text/javascript">

$(".textdiv").hide();
var bgm = new Audio("/resources/sound/bgm.mp3")
$("#bgmbtn").on("click",function (event) {
	bgm.volume = 0.1;
    if(bgm.currentTime != 0){
        bgm.pause();
        bgm.currentTime = 0;
    }else{
        bgm.play();
    }
})
</script>
</body>
</html>