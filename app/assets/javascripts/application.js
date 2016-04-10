// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

;(function() {

  'use strict';

  var doc = document,
      mainTable;

  mainTable = doc.querySelector('.main-table');

  if (mainTable) {
    mainTable.style.marginLeft = '-' + mainTable.offsetWidth / 2 + 'px';
  }

<<<<<<< HEAD
  // Message Validation | If message == blank > hide submit

  var postText,
      sendPostBtn;

  postText = doc.querySelector('#micropost_content');
  sendPostBtn = doc.querySelector('.btn.fa.fa-share');

  if (postText) {

    postText.addEventListener('keyup', function() {
      
      var sendPostBtnOpacity = 0;

      if (postText.value != '') {
        sendPostBtn.style.display = 'block';

        if (sendPostBtn.style.opacity == 0 || sendPostBtn.style.opacity == -0.1) {
          var btnOpacityUp = setInterval(function() {
            sendPostBtnOpacity += .1

            sendPostBtn.style.opacity = sendPostBtnOpacity;

            if (sendPostBtnOpacity > .9) {
              clearInterval(btnOpacityUp);
            }
          }, 20)
        }

      } else {

        if (sendPostBtn.style.opacity == 1) {
          var btnOpacityDown = setInterval(function() {
            sendPostBtnOpacity -= .1;

            sendPostBtn.style.opacity = sendPostBtnOpacity;

            if (sendPostBtnOpacity < 0) {
              clearInterval(btnOpacityDown);

              setTimeout(function() {
                if (sendPostBtn.style.opacity == '-0.1') {
                  sendPostBtn.style.display = 'none';
                }
              }, 80);
            }
          }, 80);
        }

      }

    });

  }

  // End Message Validation //

=======
>>>>>>> fd807bd2050b2487d2564e3900c5f67e7f02f16c
})();