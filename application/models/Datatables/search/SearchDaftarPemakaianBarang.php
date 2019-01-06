<?php
	defined('BASEPATH') OR exit('No direct script access allowed');
	class SearchDaftarPemakaianBarang extends CI_Model 
	{
		var $table = 'trx_pakai_barang a';
		var $column_order = array(null,'a.no_pakai_brg','a.tgl_pakai_brg','b.nama_karyawan','a.data_sts',null);
		var $column_search = array('a.no_pakai_brg','a.tgl_pakai_brg','b.nama_karyawan','a.data_sts');
		var $order = array('a.tgl_pakai_brg' => 'asc'); 
		public function __construct()
		{
			parent::__construct();
		}
		private function _get_datatables_query()
		{
			$this->db->select('a.*,b.nama_karyawan');
			$this->db->from($this->table);
			$this->db->join('master_karyawan b','b.kode_karyawan = a.kode_karyawan','left');
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
	}
?>