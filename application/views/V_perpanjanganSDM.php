  <div class="container">
    <div class="container-fluid">
    	 <div class="box"> 
                <div class="box-header">
                  <center><h3 class="box-title">Verifikasi Usulan Perpanjangan Tugas Belajar</h3></center> <br>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr> 
                        <th>No.</th>
                        <th>Nama <br> NIP</th>
                        <th>Unit Kerja Fakultas</th>
                        <th>Pangkat Golongan</th>
                        <th>Status Pegawai</th>
                        <th>Jenis Kepegawaian</th>
                        <th>Tanggal Mulai</th>
                        <th>Tanggal Selesai</th>
                        <th>Status</th>
                        <th>Lokasi Data</th>
                        <th width="150px">Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
                        <?php $a=0; foreach ($tubel as $data){ $a++ ?>
                      <tr>
                        <td><?php echo $a.'.' ?></td>
                        <td><?php echo $data->NAMA ?><br> <?php echo $data->NIK ?><br> <?php echo $data->TEMPAT_LAHIR ?>, <?php echo $data->TGL_LAHIR ?></td>
                        <td><?php echo $data->UNIT_KERJA ?></td>
                        <td><?php echo $data->PANGKAT_GOLONGAN?></td>
                        <td><?php echo $data->STATUS_PEGAWAI?></td>
                        <td><?php echo $data->JENIS_KEPEGAWAIAN?></td>
                        <td><?php echo $data->MULAI_PERPANJANGAN ?></td>
                        <td><?php echo $data->SELESAI_PERPANJANGAN ?></td>
                         <td><?php if($data->NUM>0 && $data->CEK==0){
                          echo "Terdapat file ditangguhkan";
                        }else{ echo $data->STATUS_SL;}?></td>
                        <td><?php if($data->NUM>0 && $data->CEK==0 ){
                          echo "Dosen/Tendik dan Unit Kerja";
                        }else{ echo $data->LOKASI_DATA;}?></td>
                        <td> <?php if($data->ID_STATUS_SL>=2){if($data->CEK>0){ ?> <a href="<?php echo base_url().'C_subditSDM/prosesPerpanjanganSubdit/'.$data->ID_PERPANJANGAN;?>" class="btn btn-block btn-primary btn-sm" >Proses</a> <?php }else{if($data->NUM==0){?><a href="<?php echo base_url().'C_subditSDM/prosesPerpanjanganSubdit/'.$data->ID_PERPANJANGAN;?>" class="btn btn-block btn-primary btn-sm" >Proses</a> <?php }}} ?></td>
                      </tr>
                       <?php } ?>
                  </table>
                </div><!-- /.box-body -->
              </div>
    </div>
</div>