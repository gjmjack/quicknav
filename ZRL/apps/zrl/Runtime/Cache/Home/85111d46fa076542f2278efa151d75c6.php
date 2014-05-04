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
         <h1>About ZRL</h1>
         <p>Hello everybody:</p>
         <p>Welcome to zrl.so. This web site is used to shorten url. This is really a cool stuff.</p>
         <p>Imagine that you have got a very cool link or web site and you wanted to share with your friends or keep it in your blog.</p>
         <p> You may try to use 'Ctrl + C' and 'Ctrl + V', and send it to your friends via IM, email or other way. That is very easy indeed.</p>

         <p>But, if you want to share it via mobile device, how to do that?  Typing the full URL on your mobile device ?</P>
         <p>If the URL is very very very long, that would be a nightmare.  If use zrl.so that would be different. You can shorten the URL and share it over mobile device via just scan the QR code.</p>
         <p>You can input your own url and zip(shorten) it and you can share it to your friends.</p>
         <p>Scan the QR code below to quick access http://zrl.so on mobile device</p>
         <p>
            <div class="row">
              <div class="col-xs-6 col-md-3">
                <span class="thumbnail" style="width:120px;">
                  <img   src="/content/img/zrl.so.png"   />
                </span>
              </div>
            </div>
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