<!DOCTYPE html>
<html>
   
  <body class="skin-blue">
  <div class="container">
        <div class="container-fluid">
          <div class="col-md-6 col-md-offset-3" >
              <!-- general form elements -->
              <div class="box box-primary" >
                <div class="box-header">
                  <h5 class="text-center"><b>Langkah 2 dari 4 Usulan Izin Belajar</b></h5><br>
                  <h4 class="text-center">Formulir Pengajuan Izin Belajar</h4>
                </div><!-- /.box-header -->
                <!-- form start -->
                <?php foreach ($Tubel as $data) { ?>
                <form action="<?php echo base_url().'C_dosen/updateIb' ?>" method="POST" enctype="multipart/form-data">
                  <div class="box-body">



                    <input type="hidden" class="form-control" name="idibel" placeholder="idtubel" value="<?php echo $data->ID_IB?>" />

                    <div class="form-group">
                      <label for="Rumpun">NIK</label>
                        <input type="text" class="form-control" name="NIK" placeholder="NIK" value="<?php echo $this->session->userdata('NIK')?>" />
                    </div>

                    <div class="form-group">
                      <label for="Rumpun">Nama Perguruan Tinggi</label>
                        <input type="text" class="form-control" name="namaPT" placeholder="Nama Perguruan Tinggi" value="<?php echo $data->PERGURUAN_TINGGI_PENYELENGGARA;?>"/>
                    </div>

                    <div class="form-group">
                      <label for="Rumpun">Bidang:</label>
                        <input type="text" class="form-control" name="bidang" placeholder="Bidang **Contoh:Ilmu Komputer" value="<?php echo $data->NAMA_BIDANG_PERGURUAN_TINGGI;?>"/>
                    </div>

                   <div class="form-group">
                      <label>Jenjang Pendidikan Penyelenggara:</label></br>
                      <select class="form-control" name="jenjang" id="jenjang">
                          <option value="<?php echo $data->ID_JENJANG;?>" selected><?php echo $data->NAMA_JENJANG;?></option>
                          <option>Pilih Jenjang</option>
                          <?php foreach ($jenjang as $k){ ?>
                          <option value="<?php echo $k->ID_JENJANG ?>"><?php echo $k->NAMA_JENJANG ?></option>
                          <?php } ?>

                      </select>
                    </div><!-- /.form group -->

                    <div class="form-group">
                      <label for="Rumpun">Mulai Izin Belajar</label>
                        <input type="date" class="form-control" name="mulai" value="<?php echo $data->MULAI_IB;?>"/>
                    </div>

                    <div class="form-group">
                      <label for="Rumpun">Selesai Izin Belajar</label>
                        <input type="date" class="form-control" name="selesai" value="<?php echo $data->SELESAI_IB;?>"/>
                    </div>


                    



                  <!-- /.box-body -->
                  <div class="box-footer" >
                  <a href="<?php echo base_url().'C_dosen/formBioIb' ?>" class="btn btn-primary">Kembali</a>
                  <button type="submit" class="btn btn-success">Simpan</button>
                  </div>
                </form>
              <?php } ?>
                
                
              </div><!-- /.box -->
            </div>
</div>
</div>



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
    <script src="<?php echo base_url().'assets/Admin/"plugins/fastclick/fastclick.min.js'?>"></script>
    <!-- AdminLTE App -->
    <script src="<?php echo base_url().'assets/Admin/dist/js/app.min.js'?>" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <!-- <script src="<?php echo base_url().'assets/Admin/dist/js/demo.js'?>" type="text/javascript"></script> -->