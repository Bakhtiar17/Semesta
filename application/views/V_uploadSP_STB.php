<div class="container">
    <div class="container-fluid">
    	 <div class="box">
                <div class="box-header">
                  <center><h3 class="box-title">Unggah Surat Perjanjian dan Tugas Belajar</h3></center> <br>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>No.</th>
                        <th>Nama | NIP | TTL</th>
                        <th>Unit Kerja Fakultas</th>
                        <th>Tanggal Pengajuan</th>
                        <th>Status</th>
                        <th>Lokasi</th>
                        <th>Pangkat Golongan</th>
                        <th>Status Pegawai</th>
                        <th>Jenis Kepegawaian</th>
                        <th>Unduh Template</th>
                        <th width="200px">Unggah Berkas (format PDF, maks.5MB)</th>
                        <th width="100px">Aksi</th>
                      </tr>
                    </thead>
                    <tbody> 
                      <?php $a=0; foreach ($tubel as $data){ $a++ ?>
                      <tr>
                         <td rowspan="2"><?php echo $a.'.' ?></td>
                        <td rowspan="2"><?php echo $data->NAMA ?><br> <?php echo $data->NIK ?><br> <?php echo $data->TEMPAT_LAHIR ?>, <?php echo $data->TGL_LAHIR ?></td>
                        <td rowspan="2"><?php echo $data->UNIT_KERJA ?></td>
                        <td rowspan="2"><?php echo $data->TGL_SUBMIT_TB ?></td>
                        <td rowspan="2"><?php echo $data->STATUS_SL?></td>
                        <td rowspan="2"><?php if($data->LOKASI_TUBEL==1) echo "Luar Negeri"; else echo "Dalam Negeri"; ?></td>
                        <td rowspan="2"><?php echo $data->PANGKAT_GOLONGAN?></td>
                        <td rowspan="2"><?php echo $data->STATUS_PEGAWAI?></td>
                        <td rowspan="2"><?php echo $data->JENIS_KEPEGAWAIAN?></td>
                        <td rowspan="2"><a href="<?php echo base_url().'C_subditSDM/outputSPerjanjian/'.$data->ID_TUBEL;?>">Unduh SP</a><br><a href="<?php echo base_url().'C_subditSDM/outputSTB/'.$data->ID_TUBEL;?>">Unduh STB</a>
                        <?php if($data->A==NULL){ ?>
                          <form role="form" action="<?php echo base_url().'C_subditSDM/uploadfile_SP/'.$data->ID_TUBEL;?>"class="form-group" method="POST" enctype="multipart/form-data">
                            <td>
                               <input type="hidden" class="form-control" name="nik" value="<?php echo $data->NIK; ?>" >
                               <input type="hidden" class="form-control" name="namafile" value="Perjanjian Tugas Belajar" >
                               <input type="hidden" class="form-control" name="jenisfile" value="14" >
                               <input type="hidden" class="form-control" name="lokasi" value="<?php echo $data->LOKASI_TUBEL; ?>" >
                                <label>Tanggal & Nomor SP</label>

                               <input type="text" class="form-control" name="nomor_surat" placeholder="nomor surat" required="required">

                               <input type="date" class="form-control" name="tgl_surat" placeholder="tanggal surat" required="required">
                               <label>Perjanjian Tugas Belajar</label>
                                <input type="file" accept=".png, .jpg, .jpeg, .pdf, .bmp" class="form-control" name="<?php echo $data->ID_TUBEL?>" required>
                            </td>
                            <td><button type="submit" class="btn btn-primary" name="btsub">Simpan</button></td>
                          </form>
                          <?php } else { echo "<td>Perjanjian Tugas Belajar Terunggah</td>"; }?>
                          
                      </tr>
                      <tr>
                         <?php if($data->B==NULL){?>
                         <form role="form" action="<?php echo base_url().'C_subditSDM/uploadfile_SP/'.$data->ID_TUBEL;?>"class="form-group" method="POST" enctype="multipart/form-data">
                          <td>
                             <input type="hidden" class="form-control" name="nik" value="<?php echo $data->NIK; ?>" >
                              <input type="hidden" class="form-control" name="namafile" value="Surat Tugas Belajar" >
                               <input type="hidden" class="form-control" name="jenisfile" value="20" >
                                <input type="hidden" class="form-control" name="lokasi" value="<?php echo $data->LOKASI_TUBEL; ?>" >
                                 <label>Tanggal & Nomor STB</label>

                               <input type="text" class="form-control" name="nomor_surat" placeholder="nomor surat" required="required">

                               <input type="date" class="form-control" name="tgl_surat" placeholder="tanggal surat" required="required">
                              <label>Surat Tugas Belajar</label>
                              <input type="file" accept=".png, .jpg, .jpeg, .pdf, .bmp" class="form-control" name="<?php echo $data->ID_TUBEL?>" required>
                          </td>
                          <td><button type="submit" class="btn btn-primary" name="btsub">Simpan</button></td>
                        </form>
                         <?php } else { echo "<td>Surat Tugas Belajar Terunggah</td>"; }?>
                      </tr>
                        <?php } ?>
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
              </div>
    </div>
</div>