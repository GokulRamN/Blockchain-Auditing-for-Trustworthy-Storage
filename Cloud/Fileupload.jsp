

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>File Upload</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="css1/style.css">

  
</head>

<body>
  <div class="header-container-wrapper">
  <div class="header-container">
    <div class="custom-header-bg">
      <div class="page-center">
        <div class="logo">Remote Data Integrity Checking</div>
        <div class="navigation">
          <ul>
            <li><a href="Upload" class="button click-upload"><i class="fa fa-cloud-upload" aria-hidden="true"></i>Upload</a></li>
            <li><a href="#" class="button open-progress"><i class="fa fa-tasks" aria-hidden="true"></i>Progress</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="body-container-wrapper">
  <div class="body-container">
    <div class="page-center">
      
     

      
      <i class="fa fa-cloud" aria-hidden="true"></i>
      <h1>Upload Your <strong>Files</strong> Cloud Server</h1>
      <a class="upload" id="call-to-action"><span>Select Your Upload</span></a>
      <form id="upload" method="post" action="Upload" enctype="multipart/form-data">
        <div id="drop">
      <input type="file" name="data" multiple  multiple class="upload-hidden">
          </div>
        </form>
      <div class="file-upload-bar">
        <div class="bar-wrapper">
          <div class="overall"><span>Overall Progress</span>
          </div>
          <div class="individual-files">
            <ul>
              <li>
                <span class="filename"><i>File Name:</i><b>xyz.jpg</b></span>
                <span class="filesize"><i>File Size:</i><b>Mb</b></span>
                <span class="file-link"><i>File Link</i><b><input value=""></b></span>
                <span class="copy-link"><b>Copy Link</b></span>
              </li>
              <li>
                <span class="filename"><i>File Name:</i><b>xyz.jpg</b></span>
                <span class="filesize"><i>File Size:</i><b>Mb</b></span>
                <span class="file-link"><i>File Link</i><b><input value=""></b></span>
                <span class="copy-link"><b>Copy Link</b></span>
              </li>
             
            </ul>
            </div>
        </div>
      </div>
      <div class="file-upload-bar-closed"></div>
    </div>
  </div>
</div>

<div class="footer-container-wrapper">
  <div class="footer-container">
    <div class="custom-footer-bg">
      <div class="page-center">
        <p></p>
      </div>
    </div>
  </div>
</div>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
<script src='http://demo.tutorialzine.com/2013/05/mini-ajax-file-upload-form/assets/js/jquery.knob.js'></script>
<script src='http://demo.tutorialzine.com/2013/05/mini-ajax-file-upload-form/assets/js/jquery.ui.widget.js'></script>
<script src='http://demo.tutorialzine.com/2013/05/mini-ajax-file-upload-form/assets/js/jquery.iframe-transport.js'></script>
<script src='http://demo.tutorialzine.com/2013/05/mini-ajax-file-upload-form/assets/js/jquery.fileupload.js'></script>

    <script  src="js1/index.js"></script>

</body>
</html>
