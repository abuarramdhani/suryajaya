<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <?= $page_header ;?>
        <small><?php if(isset($page_desc)){echo $page_desc;}?></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
      <div class="row">
        <div class="col-md-4 col-xs-12">
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Form Master Pom</h3>
            </div>
            <form role="form" id="form-pom">
              <input type="hidden" name="tipe_form" value="">
              <div class="box-body">
                <div class="form-group">
                  <label>Kode</label>
                  <input type="text" name="kode_pom" class="form-control">
                </div>
                <div class="form-group">
                  <label>Nama</label>
                  <input type="text" name="nama_pom" class="form-control">
                </div>
                <div class="form-group">
                  <button type="button" class="btn btn-sm btn-primary" onclick="add()">Simpan</button>
                </div>
              </div>
            </form>
          </div>
        </div>
        <div class="col-md-8 col-xs-12">
          <div class="box">
            <div class="box-body">
              <table id="m_pom" class="table table-bordered table-striped" cellpadding="0" cellspacing="0" width="100%">
                <thead>
                  <tr>
                    <th class="text-center">No</th>
                    <th class="text-center">Kode</th>
                    <th class="text-center">Nama</th>
                    <th class="text-center">Action</th>
                  </tr>
                </thead>
                <tbody></tbody>
              </table>
            </div>
          </div>        
        </div>
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <?php include 'application/views/layout/footer.php' ;?>
  <?php include 'application/views/layout/controlsidebar.php' ;?>
  <?php include 'application/views/layout/jspack.php' ;?>

  <script>
    $(function ()
    {
      tbPom();
    })
    function tbPom()
    {
      table = $('#m_pom').DataTable({
        "info": false,
        "responsive": true,
        "processing": true,
        "serverSide": true,
        "order": [],
        "ajax": {
          "url": "<?php echo site_url('Datatables/mPom')?>",
          "type": "POST",
          },
        "columnDefs": [
          { 
            "targets": [ 0 ],
            "orderable": false,
          },
          {
            "className": "text-center", "targets": ['_all']
          }
        ],
        "dom": 'Bfrtip',
          "buttons": 
          {
            "dom": 
            {
              "button": 
              {
                "tag": 'button',
                "className": 'btn btn-sm btn-info'
              }
            },
            "buttons": ['excelHtml5','print']
          }
      });
    }
    function reloadTb()
    {
      table.ajax.reload(null,false);
    }
    function add()
    {
      var urls = ($('[name="tipe_form"]').val()!='1')?'<?= site_url('Crud/addPom')?>':'<?= site_url('Crud/updPom')?>';
      $.ajax({
        type: 'POST',
        url: urls,
        data: $('#form-pom').serialize(),
        dataType: 'JSON',
        success: function(data)
        {
          if(data.status)
          {
            alert('Sukses Menambah Pom');
            $('#form-pom')[0].reset();
            $('[name="tipe_form"]').val('');
            reloadTb();
          }
          else
          {
            alert('Gagal Menambah Pom');
          }
        }
      });
    }
    function edit(id)
    {
      $.ajax({
        type: 'GET',
        url: '<?= site_url('Crud/getPom/')?>'+id,
        dataType: 'JSON',
        success: function(data)
        {
          $('[name="kode_pom"]').val(data.kode_pom);
          $('[name="nama_pom"]').val(data.nama_pom);
          $('[name="tipe_form"]').val('1');
        }
      });
    }
    function del(id)
    {
      $.ajax({
        type: 'GET',
        url: '<?= site_url('Crud/delPom/')?>'+id,
        dataType: 'JSON',
        success: function(data)
        {
          if(data.status)
          {
            alert('Sukses Menghapus Pom');
            $('#form-pom')[0].reset();
            $('[name="tipe_form"]').val('');
            reloadTb();
          }
          else
          {
            alert('Gagal Menghapus Pom');
          }
        }
      });
    }
  </script>