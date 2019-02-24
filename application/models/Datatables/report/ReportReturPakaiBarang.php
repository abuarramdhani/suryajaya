<?php
	defined('BASEPATH') OR exit('No direct script access allowed');
	class ReportReturPakaiBarang extends CI_Model 
	{
		var $table = 'trx_retur_pakai_barang_det a';
		var $column_order = array('b.tgl_retur','b.no_nota','c.tgl_pakai_brg','e.nopol','d.nama_barang','a.qty_retur','a.jumlah');
		var $column_search = array('b.tgl_retur','b.no_nota','c.tgl_pakai_brg','e.nopol','d.nama_barang','a.qty_retur','a.jumlah');
		var $order = array('b.tgl_retur' => 'asc'); 
		public function __construct()
		{
			parent::__construct();		
		}
		private function _get_datatables_query()
		{
			if($this->input->post('no_pakai_brg'))
			{
				$this->db->where('b.no_pakai_brg',$this->input->post('no_pakai_brg'));
			}
			if ($this->input->post('tgl_awal') != null AND $this->input->post('tgl_akhir') != null )
			{
				$this->db->where('b.tgl_retur >=', $this->dateFix_($this->input->post('tgl_awal')));
        $this->db->where('b.tgl_retur <=', $this->dateFix_($this->input->post('tgl_akhir')));
			}
			$this->db->select('b.tgl_retur, c.tgl_pakai_brg, a.qty_retur, e.nopol, e.tipe_kendaraan, e.jenis_kendaraan, d.nama_barang, a.jumlah, b.no_pakai_brg');
			$this->db->from($this->table);
			$this->db->join('trx_retur_pakai_barang b','b.no_retur = a.no_retur');
			$this->db->join('trx_pakai_barang c','c.no_pakai_brg = b.no_pakai_brg');
			$this->db->join('master_barang d','d.kode_barang = a.kode_barang');
			$this->db->join('master_kendaraan e','e.kode_kendaraan = c.kode_kendaraan');
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