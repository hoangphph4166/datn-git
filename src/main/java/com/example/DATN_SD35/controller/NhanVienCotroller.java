package com.example.DATN_SD35.controller;

import com.example.DATN_SD35.entity.NhanVien;
import com.example.DATN_SD35.repository.NhanVienRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Optional;

@Controller
public class NhanVienCotroller {
    @Autowired
    NhanVienRepo nhanVienRepo;

    @GetMapping("/nhanvien")
    public String listNhanVien(Model model){
        model.addAttribute("nhanvien",nhanVienRepo.findAll());
        return "nhanvien";
    }
    @GetMapping("/nhanvien/add")
    public String showadd(){
        return "addNhanVien";
    }
    @PostMapping("/nhanvien/add")
    public String addNhanVien(NhanVien nv){
        nhanVienRepo.save(nv);
        return "redirect:/nhanvien";
    }
    @GetMapping("/nhanvien/update/{id}")
    public String showupdate(@PathVariable("id")Integer id, Model model){
        Optional<NhanVien> nhanviens = nhanVienRepo.findById(id);
        if(nhanviens.isPresent()){
            model.addAttribute("nhanvien",nhanviens);
            return "updateNhanVien";
        }
        return "redirect:/nhanvien";
    }
    @PostMapping("/nhanvien/update/{id}")
    public String updateNhanVien(NhanVien nv){
        nhanVienRepo.save(nv);
        return "redirect:/nhanvien";
    }
    @GetMapping("/detail/{id}")
    public String showdetail(@PathVariable("id")Integer id,Model model){
        model.addAttribute("nhanvien",nhanVienRepo.findById(id).get());
        return "updateNhanVien";
    }
    @GetMapping("/delete/{id}")
    public String deleteNhanVien(@PathVariable("id")Integer id){
        nhanVienRepo.deleteById(id);
        return "redirect:/nhanvien";
    }
}
