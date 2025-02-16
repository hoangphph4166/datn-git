package com.example.DATN_SD35.repository;

import com.example.DATN_SD35.entity.NhanVien;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NhanVienRepo extends JpaRepository<NhanVien,Integer> {
}
