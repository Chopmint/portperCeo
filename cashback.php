<div id="main_content_income" class="container">
   <section class="row x-category-index">
      <style>
         .offtab{
         filter: grayscale(100%) !important;
         }
      </style>
      <div class="-nav-menu-container col-12 js-category-menus">
         <nav class="nav-menu" id="navbarCategory">
            <ul class="-menu-parent navbar-nav js-menu-container" id="accordion-recommend">
               <li class="-list-parent nav-item -category-dashboard">
                  <a href="recommend" class="-menu-btn -parent nav-link ">
                     <div class="-img-category"></div>
                     <div class="-menu-text">
                        <span class="-menu-text-main">ภาพรวม</span>
                     </div>
                  </a>
               </li>

               <li class="-list-parent nav-item -category-cashback" style="">
                  <a href="cashback" class="-menu-btn -parent nav-link ">
                     <div class="-img-category"></div>
                     <div class="-menu-text">
                        <span class="-menu-text-main">คืนยอดเสีย</span>
                     </div>
                  </a>
               </li>
               <li class="-list-parent nav-item -category-cashback" style="">
                  <a href="spinner" class="-menu-btn -parent nav-link ">
                     <div class="-img-category"></div>
                     <div class="-menu-text">
                        <span class="-menu-text-main">หมุนกงล้อ</span>
                     </div>
                  </a>
               </li>
            </ul>
         </nav>
      </div>
      <div class="col-sm-12 col-lg-12 col-12 recommend_section">
         <h3 class="text-center mb-3" style="font-weight: 500;">คืนยอดเสีย</h3>
         <div class="row no-gutters">
            <div class="col-sm-12 col-lg-12 col-12">
               <fieldset class="form-group">
                  <table class="table table-bordered shadow-sm mb-4 ">
                     <thead>
                        <tr>
                           <th scope="col" class="text-center">
                              <p style="text-align:center;font-weight: 500;">
                              <?php echo $Get_Setting->cashback; ?> ของยอดเสีย ทุกวัน
                              </p>
                              <p style="text-align:center;font-weight: 500;">ยอดจ่ายสูงสุด
                                 3,000.00 บาท
                              </p>
                              <p>► คำนวณยอดใน 1 วัน (ตั้งแต่ 00:01 น. ถึง 23:59 น.)<br>
                              ► โบนัสจะได้รับทุกวันสามารถกดรับโบนัสได้ที่หน้าเว็บ<br>
                              ► โบนัสที่ได้รับไม่ต้องทำเทิร์นโอเวอร์ ถอนได้ทันที!<br>

                              ► เมื่อรับโปรโมชั่น เครดิตจะมีอายุการใช้งาน 3 วัน จากนั้นเครดิตคืนยอดเสียจะถูกปรับเป็น 0
                              </p>
                           </th>
                        </tr>
                     </thead>
                      <?php
                        $winlose = $Load_Master->Master_TurnOver($_SESSION["UsernameUFA"]);
                        if ($winlose == "error") {
                           $winlose = 0;
                        }
                        $winlose2 = $winlose * -$Get_Setting->cashback / 100;
                     ?>
                     <tbody>
                        <tr>
                           <td class="text-center val_D">
                           <div class="-date-range-container text-center">
                     โบนัสยอดเสียสามารถรับได้ทุกวันหลังเที่ยงคืน <br>
                     ยอดเสียของท่านทั้งหมด : <font color="#fff200"><?php
                                                                     if ($winlose >= 0) {
                                                                        echo 'ท่านไม่มียอดเสีย';
                                                                     } else {
                                                                        echo $winlose;
                                                                     } ?></font><br>
                     ยอดเงินที่ได้คืน : <font color="#fff200"><?php
                                                               if ($winlose >= 0) {
                                                                  echo 'วันนี้ท่านไม่ได้รับเงินคืน';
                                                               } else {
                                                                  echo $winlose2;
                                                               } ?></font>
                  </div>
                           </td>
                        </tr>
                        <tr>
                           <td class="text-center p-3">
                           <button type="button" class="btn btn-primary -promotion-return-btn submit_cashback">
                     <span class="-text-btn">กดรับยอดเสีย</span>
                  </button>
                           </td>
                        </tr>
                        <tr class="text-center">
                           <td>
                              <p style="color:red;font-weight: 500;">เมื่อมียอดเสียมากกว่า
                                 3,000 บาท ขึ้นไป
                              </p>
                           </td>
                        </tr>
                     </tbody>
                  </table>
                  <table class="table table-striped mt-2">

                     <thead>
                        <tr>

                           <th>วันเวลา</th>
                           <th>สถานะ</th>
                           <th>ยอดเงิน</th>

                        </tr>
                     </thead>
                     <?php
                     $querywd = "SELECT * FROM withdraw WHERE id_wd=$id_mb AND amount_cashback!='' ORDER BY id DESC limit 10";
                     $wdwdwd = $class->Query_Mysqli($querywd);
                     // echo $querywd;
                     ?>
                     <?php foreach ($wdwdwd as $rowwd) { ?>
                        <tbody>

                           <tr>

                              <td><?php echo $rowwd['date_wd']; ?></td>
                              <td><?php

                                    if ($rowwd["confirm_wd"] == "รอดำเนินการ") {
                                       echo "<span style='background: #c98e15;'>รอดำเนินการ</span>";
                                    } elseif ($rowwd["confirm_wd"] == "อนุมัติ") {
                                       echo "<span style='background: #017a13;'>สำเร็จ</span>";
                                    } elseif ($rowwd["confirm_wd"] == "ปฏิเสธ") {
                                       echo "<span style='background: #db1b1b;'>ไม่สำเร็จ</span>";
                                    } ?></td>
                              <td><?php echo $rowwd['amount_cashback']; ?></td>

                           </tr>

                        </tbody><?php } ?>
                     </table>
                  <fieldset class="form-group text-center  mb-0">
                     <p class="text-gold-color" style="font-weight: 500;">ยอด <span class="text-success">+</span>
                        และมี <span class="text-success">สีเขียว</span> คือ เว็บแพ้ ส่วนผู้เล่นชนะ
                     </p>
                     <p class="text-gold-color" style="font-weight: 500;">ยอด <span class="text-danger">-</span>
                        และมี <span class="text-danger">สีแดง</span> คือ เว็บชนะ ส่วนผู้เล่นแพ้
                     </p>
                     <p class="text-gold-color" style="font-weight: 500;color:#fec33f;">
                        ผู้เล่นที่มีสิทธิได้รับการคืนยอดเสีย
                     </p>
                     <p class="text-gold-color" style="font-weight: 500;color:#fec33f;">ยอดได้คืน จะต้องเป็น +
                        แล้วมีสีเขียว
                     </p>
                     <p class="text-gold-color" style="font-weight: 500;color:#fec33f;">
                        และยอดรวมในสัปดาห์ที่ผ่านมาจะต้องมากกว่า
                        3,000 บาท
                     </p>
                     <p class="text-gold-color" style="font-weight: 500;">*** เงื่อนไขในการรับ ***</p>
                     <p class="text-gold-color" style="font-weight: 500;">&nbsp; &nbsp; - ลูกค้าจะต้องไม่กดรับ
                        โบนัส ทุกประเภท
                     </p>
                     <p class="text-gold-color" style="font-weight: 500;">&nbsp; &nbsp; -
                        การรับโบนัสจากการเติมโดยแอดมิน
                     </p>
                     <p class="text-gold-color" style="font-weight: 500;">&nbsp; &nbsp; - โบนัสจากกิจกรรมทุกประเภท
                     </p>
                  </fieldset>
               </fieldset>
            </div>
         </div>
      </div>
   </section>
