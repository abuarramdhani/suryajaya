<?php
	defined('BASEPATH') OR exit('No direct script access allowed');
	class ReportBeliBan extends CI_Model 
	{
		var $table = 'inv_ban a';
		var $column_order = array('b.tgl_pembelian','d.nama_supplier','e.nama_ban','e.jenis_ban','c.qty_beli','c.harga_satuan','a.bkl');
		var $column_search = array('b.tgl_pembelian','d.nama_supplier','e.nama_ban','e.jenis_ban','c.qty_beli','c.harga_satuan','a.bkl');
		var $order = array('b.tgl_pembelian' => 'asc'); 
		public function __construct()
		{
			parent::__construct();		
		}
		private function _get_datatables_query()
		{
			if($this->input->post('kode_supplier'))
			{
				$this->db->where('d.kode_supplier',$this->input->post('kode_supplier'));
			}
			if ($this->input->post('tgl_awal') != null AND $this->input->post('tgl_akhir') != null )
			{
				$this->db->where('b.tgl_pembelian >=', $this->dateFix_($this->input->post('tgl_awal')));
        $this->db->where('b.tgl_pembelian <=', $this->dateFix_($this->input->post('tgl_akhir')));
			}
			$this->db->from($this->table);
			$this->db->join('trx_beli_ban b','b.no_pembelian = a.kode_transaksi');
			$this->db->join('trx_beli_ban_det c','c.no_pembelian = b.no_pembelian');
			$this->db->join('master_supplier d','d.kode_supplier = b.kode_supplier');
			$this->db->join('master_ban e','e.kode_ban = a.kode_ban');
			$this->db->where('b.data_sts','1');
			$i = 0;
			foreach ($this->column_search as $item)
			{
				if($_POST['search']['value'])
				{
					if($i===0)
					{
						$this->db->group_start();
						$this->db->like($item, $_POST['search']['value']);
					}
					else
					{
						$this->db->or_like($item, $_POST['search']['value']);
					}
					if(count($this->column_search) - 1 == $i)
						$this->db->group_end();
				}
				$i++;
			}
			if(isset($_POST['order']))
			{
				$this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
			}
			else if(isset($this->order))
			{
				$order = $this->order;
				$this->db->order_by(key($order), $order[key($order)]);
			}
		}
		public function get_datatables()
		{
			$this->_get_datatables_query();
			if($_POST['length'] != -1)
			$this->db->limit($_POST['length'], $_POST['start']);
			$query = $this->db->get();
			return $query->result();
		}
		public function count_filtered()
		{
			$this->_get_datatables_query();
			$query = $this->db->get();
			return $query->num_rows();
		}
		public function count_all()
		{
			$this->db->from($this->table);
			return $this->db->count_all_results();
		}

		//Date Fixer
		function dateFix_($inp)
		{
			$date = str_replace('/', '-', $inp);
			return date('Y-m-d', strtotime($date));
		}
	}
?>