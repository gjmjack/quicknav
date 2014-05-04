<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
  <head>
     <title><?php echo ($tile); ?></title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="/content/img/favicon.ico">
    <script type="text/javascript" src="/content/js/require.js"></script>
    <script type="text/javascript">
        require.config({
            baseUrl: "/content/js",
        });
    </script>
    <link rel="stylesheet" href="/content/css/bootstrap.css"/>
    <link rel="stylesheet" href="/content/css/zrl.css" />
  </head>
  <body>
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a  id="home" class="navbar-brand" href="/">ZRL</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
           <?php
$navibar=array( "Home"=>"/", "Blog"=>"/blog/", "About"=>"/about.html", "Contact"=>"/contact.html", ); $ackey="Home"; foreach ($navibar as $key => $value) { if ($activeName==$key) { $ackey=$key; break; } } foreach ($navibar as $key => $value) { if ($key==$ackey) { echo ' <li class="active"><a href="'.$value.'">'.$key.'</a></li>'; } else { echo ' <li><a href="'.$value.'">'.$key.'</a></li>'; } } ?>
          </ul>
          <ul class="nav navbar-nav navbar-right">
          </ul>
        </div>
      </div>
    </div>
    
      
 
     <div class="jumbotron">
            <h1>Contact me</h1>
            <p>
                  <ul class="list-group">
                    <li class="list-group-item">
                         <span class="thumbnail " style=" margin-bottom: 0px;width:120px;height:120px; ">
                                 <img src="/content/img/me.jpg"/>
                         </span>
                    </li>
                    <li class="list-group-item">
                        <span>Email:
                           <a href="mailto:gjmjack@126.com">gjmjack@126.com</a>
                        </span>
                    </li>
                    <!-- <li class="list-group-item">Donate:
                        <a href="https://me.alipay.com/zrlso" target="_blank">
                            <span class="glyphicon glyphicon-heart"></span>
                            <span class="glyphicon glyphicon-heart"></span>
                            <span class="glyphicon glyphicon-heart"></span>
                            <span class="glyphicon glyphicon-heart"></span>
                            <span class="glyphicon glyphicon-heart"></span>
                        </a>
                    </li>-->
                  </ul>
            </p>
     </div>
     <script type="text/javascript">
         require(['bootstrap']);
    </script>

     
      
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-49009026-1', 'zrl.so');
  ga('send', 'pageview');

</script>
  </body>
</html>