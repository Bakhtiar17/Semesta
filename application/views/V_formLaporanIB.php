<!DOCTYPE html>
<html>
   
  <body class="skin-blue">
  <div class="container">
    <div class="container-fluid">
        <div class="col-md-6 col-md-offset-3" >
              <!-- general form elements -->
              <div class="box box-primary" >
                <div class="box-header">
                  <h3 class="box-title">Laporan Selesai Izin Belajar</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                
                <form action="<?php echo base_url().'C_dosen/saveLaporan' ?>" method="POST" enctype="multipart/form-data">
                  <div class="box-body">
                  <div class="form-group">
                      <!-- <label for="Rumpun">NIK</label> -->
                      <?php  foreach($ibel as $data) { ?>
                        <input type="Hidden" class="form-control" name="idib" placeholder="NIK" value="<?php echo $data->id_ib; ?>"/>
                        <?php } ?>
                  </div>

                  <div class="form-group">
                      <label for="NIDN">Tanggal Kelulusan Sesuai Ijazah :</label>
                        <input type="date" class="form-control" name="tgl" placeholder="Tanggal Lulus" required />
                  </div>

                    <div class="form-group">
                      <label>File Upload Ijazah / Surat Keterangan Lulus:</label></br>
                      <input type="file" accept=".png, .jpg, .jpeg, .pdf, .bmp" class="form-control" name="file" required /></br>
                      Format berkas PDF dengan ukuran maksimal 5 MB
                    </div> <!-- /.form group -->

                  <!-- /.box-body -->
                  <div class="box-footer" >
                  <a href="<?php echo base_url().'C_dosen' ?>" class="btn btn-primary">Kembali</a>
                  <button type="submit" class="btn btn-success">Simpan</button>
                  </div>
                </div>
                </form>
              </div><!-- /.box -->
        </div>
  </div>
</div>
</body>



    <!-- InputMask -->
    <script src="<?php echo base_url().'assets/Admin/plugins/input-mask/jquery.inputmask.js" type="text/javascript'?>"></script>
    <script src="<?php echo base_url().'assets/Admin/plugins/input-mask/jquery.inputmask.date.extensions.js'?>" type="text/javascript"></script>
    <script src="<?php echo base_url().'assets/Admin/plugins/input-mask/jquery.inputmask.extensions.js'?>" type="text/javascript"></script>
    <!-- date-range-picker -->
    <script src="<?php echo base_url().'assets/Admin/plugins/daterangepicker/daterangepicker.js'?>" type="text/javascript"></script>
    <!-- bootstrap color picker -->
    <script src="<?php echo base_url().'assets/Admin/plugins/colorpicker/bootstrap-colorpicker.min.js'?>" type="text/javascript"></script>
    <!-- bootstrap time picker -->
    <script src="<?php echo base_url().'assets/Admin/plugins/timepicker/bootstrap-timepicker.min.js'?>" type="text/javascript"></script>
    <!-- SlimScroll 1.3.0 -->
    <script src="<?php echo base_url().'assets/Admin/plugins/slimScroll/jquery.slimscroll.min.js'?>" type="text/javascript"></script>
    <!-- iCheck 1.0.1 -->
    <script src="<?php echo base_url().'assets/Admin/plugins/iCheck/icheck.min.js'?>" type="text/javascript"></script>
    <!-- FastClick -->
    <script src="<?php echo base_url().'assets/Admin/plugins/fastclick/fastclick.min.js'?>"></script>
    <!-- AdminLTE App -->
    <script src="<?php echo base_url().'assets/Admin/dist/js/app.min.js'?>" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <!-- <script src="<?php echo base_url().'assets/Admin/dist/js/demo.js'?>" type="text/javascript"></script> -->