 <div class="container">
    <div class="container-fluid">
       <div class="box">
                <div class="box-header">
                  <center><h3 class="box-title">Laporan Izin Belajar</h3></center> <br>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>No.</th>
                        <th>Nama | NIP | TTL</th>
                        <th>Unit Kerja</th>
                        <th>Pangkat Golongan</th>
                        <th>Status Pegawai</th>
                        <th>Jenis Kepegawaian</th>
                        <th>Tanggal Lulus IB</th>
                        <th>Status</th>
                        <th width="200px">Laporan</th>
                        <th width="100px"></th>
                      </tr>
                    </thead>
                    <tbody> 
                      <?php $a=0; foreach ($mon as $data){ $a++ ?>
                      <tr>
                         <td><?php echo $a.'.' ?></td>
                        <td><?php echo $data->NAMA ?><br> <?php echo $data->NIK ?><br> <?php echo $data->TEMPAT_LAHIR ?>, <?php echo $data->TGL_LAHIR ?></td>
                        <td><?php echo $data->UNIT_KERJA ?></td>
                        <td><?php echo $data->UNIT_KERJA ?></td>
                        <td><?php echo $data->PANGKAT_GOLONGAN?></td>
                        <td><?php echo $data->STATUS_PEGAWAI?></td>
                        <td><?php echo $data->TANGGAL_SUBMIT_PK_IB?></td>
                        <?php if(!empty($data->APPROVAL_DATE)){ ?>
                          <td>Izin Belajar Selesai</td>
                          <?php } else { ?>
                            <td>Menunggu Persetujuan SDM</td>
                          <?php } ?>
                        <td><a href='<?php echo base_url()."file/laporan/".$data->FILE_IJAZAH; ?>' target='_blank'>Ijazah</a></td>
                        <td>
                          <?php if(empty($data->APPROVAL_DATE)){ ?><a href="<?php echo base_url().'C_subditSDM/approveIB/'.$data->ID_PENGAKTIFAN_IB;?>" class="btn btn-block btn-primary btn-sm" >Proses</a><?php } ?>
                        </td>
                      </tr>
                        <?php } ?>
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
              </div>
    </div>
</div>