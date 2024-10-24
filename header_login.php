<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<style>
.slick-container{
  width:100%;
  padding-top: 20px;
  text-align:center;
}
  .slick-slide img{
  margin:20px;
  
}
.slick-slot img{
  padding:10px;
  max-width: 100%;
}
.slick-slider{
  width:120%;
  
}
    .slick-slide {
  display: none;
  float: left;
  height: auto;
  min-height: 1px;
}
.marquee {
  overflow: hidden;
  font-family: "Pridi", sans-serif;
  font-weight: 600;
  font-size: 16px;
  text-transform: uppercase;

}
.marquee__line {
  flex-shrink: 0;
  margin: 0;
  padding-bottom: 10px;
  padding-top: 10px;
  padding-right: 30px;
  min-width: 100%;
  white-space: nowrap;
  animation-name: marqueeLine;
  animation-duration: 10s;
  animation-timing-function: ease-in-out;
  animation-iteration-count: infinite;

}
.modal-backdrop {
  --bs-backdrop-zindex: 1050;
  --bs-backdrop-bg: #000;
  --bs-backdrop-opacity: 0.5;
  background-color: #000;
  background-color: var(--bs-backdrop-bg);
  height: 100vh;
  left: 0;
 
  top: 0;
  width: 100vw;
  z-index: 200;
}
@keyframes marqueeLine {
  from {
    transform: translateX(100%);
  }
  
  to {
    transform: translateX(-230%);
  }
}

.scrollable-content {
  overflow-y: scroll;
}
svg {
  overflow: hidden;
  height: 50px;
}
.app-header .logo {
  margin: 0 auto;
  width: auto;
}
</style>
<div id="__nuxt"style="background-image: url(<?php echo $data['background_image'] ?>);background-size: cover;"><!---->
    <div id="__layout">
      <div class="mobile-layout">
        <div class="">
          <div class="navbar app-header">
            <div class="container"><button type="button" class="btn bg-transparent p-0 x-hamburger tap-menu-game" href="#account" data-toggle="modal" data-target="#accountModal">><span></span>
                <span></span> <span></span></button> <a href="" aria-current="page" class="logo nuxt-link-exact-active nuxt-link-active" style="width: auto;"><svg height="50" viewBox="0 0 162 37" fill="none"
                  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                  <path d="M0 0H162V37H0V0Z" fill="url(#pattern0)"></path>
                  <defs>
                    <pattern id="pattern0" patternContentUnits="objectBoundingBox" width="1" height="1">
                      <use xlink:href="#image0_329_2845" transform="matrix(0.00250984 0 0 0.010989 -0.00196717 0)">
                      </use>
                    </pattern>
                    <image id="image0_329_2845" width="400" height="91"
                      href="<?= $data['Logopc'] ?>">
                    </image>
                  </defs>
                </svg></a>
  <div class="right-content">
    <button type="button" class="btn btn-register" style="padding: 0.25em 1em;color: #000;border: none;border-radius: 5px;font-weight: 600;">
        <a href="#accountModalMobile" data-toggle="modal" data-target="#accountModalMobile" style="color: #000;">ข้อมูลบัญชี</a>
    </button>
</div>
            </div>
          </div>
          <div class="app-nav">
            <div class="nav-item"><a href="<?= base_url() ?>" class="nav-link">
                <div class="icon"><img
                    src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAEbSURBVHgB7ZO9SgNBFEa/iYoIYutPoWgawTcQGwvBzpdIbWeT0tJHsBfEB1AbRQsbC3urxcpKEEREknBzQghJhp0km0ySInvgsHB3934zu3eknJwAZlbCI00Kwubw3NqUNG4IWcRL66aCZY0Lmq/gg4W5QKeY0HALn60/V7isGNCoiIkNzj2uaxRocJAxtMUrbmgYePEQ/2x4EtzNGnpqzWkdlQ/cHyTQ4ZnF5QuP+wWfWJyd+vzgamdWwcvew3nFp3HEisG7rGoTvy0+b7ikXvDANt5YPMqWcq79Ty3nXMLlJbCuKi6kuKMwt/T89IuZ/ydNqn6NHdWUkYKmRB489eBfxeM/rRia6ju8xjWv3mt6n1Jqj/iunJmkDguhB1XOf9IXAAAAAElFTkSuQmCC"
                    alt=""></div>
                <div class="label">หน้าหลัก</div>
              </a></div>
            <div class="nav-item"><a href="<?= base_url() ?>game/sport"  class="nav-link">
                <div class="icon"><img src="<?= base_url() ?>_nuxt/img/icon-sport.09fe894.png" height="28" alt=""></div>
                <div class="label">แทงบอล</div>
              </a></div>
            <div class="nav-item"><a href="<?= base_url() ?>game/casinogame"  class="nav-link">
                <div class="icon"><img src="<?= base_url() ?>_nuxt/img/icon-casino.5b16f51.png" height="28" alt=""></div>
                <div class="label">คาสโน</div>
              </a></div>
            <div class="nav-item"><a href="<?= base_url() ?>game/slot"  class="nav-link">
                <div class="icon"><img src="<?= base_url() ?>_nuxt/img/icon-slot.c9fa954.png" height="28" alt=""></div>
                <div class="label">เกมสล็อต</div>
              </a></div>
            <div class="nav-item"><a href="<?= base_url() ?>game/lotto"  class="nav-link">
                <div class="icon"><img src="https://seeklogo.com/images/L/lotto-logo-D9C121DBE3-seeklogo.com.png" height="28" alt=""></div>
                <div class="label">หวย</div>
              </a></div>
          </div>
          <div class="app-announcement">
            <div class="announcement-wrapper">
              <div class="left-icon"><img src="<?= base_url() ?>_nuxt/img/icon-wallet.642d473.png" alt=""></div>
              <div class="balance-wrapper ">
                <div class="current-balance text-secondary d-flex align-items-center justify-content-center"><span id="customer-balance">
                                                    <span class="-amount"><?= $user['credit'] ?></span>
                                                </span> </div>
              </div>
              <div class="message-wrapper">
                <div class="message-list mb-0 list-unstyled">
                  <div class="marquee"scrollamount="0">
                  <div class="marquee__line" scrollamount="0"><?= $data['marquee_text_footer'] ?></div>
                
                </div>
                </div>
              </div>
              <div class="right-icon"><img src="<?= base_url() ?>_nuxt/img/icon-notification.5366a92.png" alt=""></div>
            </div>
       
			
<script>
    Bonn.boots.push(function() {

        var $webListSidebar = $('.x-web-list-sidebar');

        $('.js-hamburger-toggle').click(function() {
            $(this).toggleClass('open');
            $webListSidebar.toggleClass('open');
        });



        if ($webListSidebar.length > 0) {
            $('.x-web-list-sidebar .-overlay').click(function() {
                $('.js-hamburger-toggle').toggleClass('open');
                $webListSidebar.toggleClass('open')
            })

        }

    });
</script>



<script>
    (function update_credit() {

        $.ajax({

            type: "GET",

            url: "<?= base_url() ?>ajax_load/balance",

            success: function(data) {



                $('#customer-balance').html(data);

                $('#customer-balance1').html(data);

                $('#customer-balance2').html(data);



            },

            error: function(jqXHR, exception) {

                var msg = '';

                if (jqXHR.status === 0) {

                    msg = 'Not connect.\n Verify Network.';

                } else if (jqXHR.status == 404) {

                    msg = 'Requested page not found. [404]';

                } else if (jqXHR.status == 500) {

                    msg = 'Internal Server Error [500].';

                } else if (exception === 'parsererror') {

                    msg = 'Requested JSON parse failed.';

                } else if (exception === 'timeout') {

                    msg = 'Time out error.';

                } else if (exception === 'abort') {

                    msg = 'Ajax request aborted.';

                } else {

                    msg = 'Uncaught Error.\n' + jqXHR.responseText;

                }

                msg = 'Uncaught Error.\n' + jqXHR.responseText;

                /*

                Swal.fire({

                	icon: 'error',

                	title: 'ผิดพลาด!',

                	html: msg,

                }); */

            }

        }).then(function() {

            setTimeout(update_credit, 10000);

        });

    })();


    (function update_credit2() {

        $.ajax({

            type: "GET",

            url: "<?= base_url() ?>ajax_load/balance2",

            success: function(data) {



                $('#ufa-balance').html(data);

                $('#ufa-balance1').html(data);

                $('#ufa-balance2').html(data);



            },

            error: function(jqXHR, exception) {

                var msg = '';

                if (jqXHR.status === 0) {

                    msg = 'Not connect.\n Verify Network.';

                } else if (jqXHR.status == 404) {

                    msg = 'Requested page not found. [404]';

                } else if (jqXHR.status == 500) {

                    msg = 'Internal Server Error [500].';

                } else if (exception === 'parsererror') {

                    msg = 'Requested JSON parse failed.';

                } else if (exception === 'timeout') {

                    msg = 'Time out error.';

                } else if (exception === 'abort') {

                    msg = 'Ajax request aborted.';

                } else {

                    msg = 'Uncaught Error.\n' + jqXHR.responseText;

                }

                msg = 'Uncaught Error.\n' + jqXHR.responseText;

                /*

                Swal.fire({

                	icon: 'error',

                	title: 'ผิดพลาด!',

                	html: msg,

                }); */

            }

        }).then(function() {

            setTimeout(update_credit2, 10000);

        });

    })();

    (function update1() {

        $.ajax({

            type: "GET",

            url: "<?= base_url() ?>ajax/get_user_notice",

            dataType: 'json',

            cache: false,

            success: function(data) {

                console.log(data);

                if (data.status == "lock") {
                    Swal.fire({
                icon: 'error',
                title: 'Account Lock',
                text: 'ขออภัยท่านถูกระงับบัญชี กรุณาติดต่อแอดมิน!'
              }).then(function() {
                        window.location = "<?php echo base_url(); ?>logout";
                    });
                    
                } else
                if (data.status == "success") {

                    var audio = new Audio('<?= $theme_path ?>/sound/notice.mp3?t=1000');

                    audio.play();

                    if (data.data.icon == 'error') {
                        data.data.icon = "fail";
                    }

                    if (page == "decimal") {

                        _billing_alert(data.data.icon, data.data.text);

                    } else {

                        /*Swal.fire({

                        	icon: data.data.icon,

                        	title: data.data.title,

                        	html: data.data.text,

                        });*/



                        _billing_alert(data.data.icon, data.data.text);

                    }



                }



            },

            error: function(jqXHR, exception) {

                var msg = '';

                if (jqXHR.status === 0) {

                    msg = 'Not connect.\n Verify Network.';

                } else if (jqXHR.status == 404) {

                    msg = 'Requested page not found. [404]';

                } else if (jqXHR.status == 500) {

                    msg = 'Internal Server Error [500].';

                } else if (exception === 'parsererror') {

                    msg = 'Requested JSON parse failed.';

                } else if (exception === 'timeout') {

                    msg = 'Time out error.';

                } else if (exception === 'abort') {

                    msg = 'Ajax request aborted.';

                } else {

                    msg = 'Uncaught Error.\n' + jqXHR.responseText;

                }

                msg = 'Uncaught Error.\n' + jqXHR.responseText;

                /*Swal.fire({

                	icon: 'error',

                	title: 'ผิดพลาด!',

                	html: msg,

                });*/

            }

        }).then(function() {

            setTimeout(update1, 5000);

        });

    })();
</script>

  	