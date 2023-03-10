<!DOCTYPE html>
<html>
   
<body class="skin-blue">
  <div class="container">
        <div class="container-fluid">
          <div class="col-md-6 col-md-offset-3" >
              <!-- general form elements -->
              <div class="box box-primary" >
                <div class="box-header">
                  <h5><b>Semester <?php echo $this->session->userdata('sms');?></b></h5><br>
                  <h3 class="box-title"><b>PUBLIKASI</b></h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                <?php foreach($publik as $data) { ?>
                <form action="<?php echo base_url().'C_dosen/editPublikasi/'.$data->ID_PUBLIKASI ?>" method="POST" enctype="multipart/form-data">
                  <div class="box-body">
                  <div class="form-group">
                      <!-- <label for="Rumpun">NIK</label> -->
                       <input type="Hidden" class="form-control" name="idmonitor"  value="<?php echo $this->session->userdata('IDMON');?> "/>
                        <input type="Hidden" class="form-control" name="semester" value="<?php echo $this->session->userdata('sms');?> "/>
                        <input type="Hidden" name="namafile" value="<?php echo $data->BUKTI_PUBLIKASI; ?>">
                        <input type="Hidden" name="status" value="<?php echo $data->SUDAH_BELUM; ?>">
                  </div>

                  <?php if ($data->SUDAH_BELUM==0) { ?>
                    <div class="form-group">
                      <label>Rencana:</label>
                      <input type="date" class="form-control" name="tglrencana" value="<?php echo $data->TGL_RENCANA; ?>" />
                    </div><!-- /.form group -->
                <?php } else { ?>
                  <div class="form-group">
                      <label>Kategori:</label>
                      <select class="form-control" name="kategoripublikasi" >
                        <option value="<?php echo $data->KATEGORI_PUBLIKASI; ?>"><?php echo $data->KATEGORI_PUBLIKASI; ?></option>
                        <option value="">---Pilih---</option>
                        <option value="Jurnal">Jurnal</option>
                        <option value="Prosedings">Prosedings</option>
                      </select>
                    </div><!-- /.form group -->     

                    <div class="form-group">
                      <label>Nama Jurnal/Forum Ilmiah/Seminar:</label>
                      <input type="text" class="form-control" name="namapublikasi" placeholder="Tulis disini..." value="<?php echo $data->NAMA_PUBLIKASI; ?>" />
                    </div>

                    <div class="form-group">
                      <label>Progres Publikasi:</label>
                      <select class="form-control" name="progrespublikasi" />
                        <option value="<?php echo $data->PROGRESS_JURNAL; ?>"><?php echo $data->PROGRESS_JURNAL; ?></option>
                        <option value="">---Pilih---</option>
                        <option value="Accepted">Accepted</option>
                        <option value="Publish">Publish</option>
                        <option value="Submit">Submit</option>
                      </select>
                    </div>

                    <div class="form-group">
                      <label>Tanggal Submit/Penyelenggaraan:</label>
                      <input type="date" class="form-control" name="tglpublikasi" value="<?php echo $data->TGL_SUBMIT; ?>" />
                    </div> 

                    <div class="form-group">
                      <label>Unggah Bukti:</label>
                      <a href="<?php echo base_url().'/file/monitoring/publikasi/'.$data->BUKTI_PUBLIKASI; ?>"><?php echo $data->BUKTI_PUBLIKASI; ?></a>

                      <input type="file" accept=".png, .jpg, .jpeg, .pdf, .bmp" class="form-control" name="buktipublikasi" accept="application/pdf"/>
                    </div>            
                <?php }?>

                  <!-- /.box-body -->
                  <div class="box-footer" >
                  <a href="<?php echo base_url().'C_dosen/tabelMonitoringDosen/'.$this->session->userdata('sms') ?>" class="btn btn-primary">Kembali</a>
                  <button type="submit" class="btn btn-success">Simpan</button>
                  </div>
                </div>
                </form>
                <?php } ?>              
              </div><!-- /.box -->
            </div>
        </div>
  </div>



    <!-- InputMask -->
    <script type="text/javascript">
    function yesnoCheck() {
    if (document.getElementById('belum').checked) {
        document.getElementById('ifYes').style.visibility = 'visible';
        document.getElementById('ifNo').style.visibility = 'hidden'
    }
    else {
      document.getElementById('ifNo').style.visibility = 'visible';
      document.getElementById('ifYes').style.visibility = 'hidden';
    }

}
    </script>
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
    <script src="<?php echo base_url().'assets/Admin/"plugins/fastclick/fastclick.min.js'?>"></script>
    <!-- AdminLTE App -->
    <script src="<?php echo base_url().'assets/Admin/dist/js/app.min.js'?>" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <!-- <script src="<?php echo base_url().'assets/Admin/dist/js/demo.js'?>" type="text/javascript"></script> -->