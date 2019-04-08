package com.electronic.equipment.controller;

import com.electronic.equipment.entity.Equipment;
import com.electronic.equipment.service.EquipmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;


import java.util.List;

@CrossOrigin(origins = "http://localhost:4200", maxAge = 3600)
@RestController
@RequestMapping({"/api"})
public class EquipmentController {

    private EquipmentService equipmentService;

    @Autowired
    public EquipmentController(EquipmentService equipmentService) {
        this.equipmentService = equipmentService;
    }

    @GetMapping(path = "/equipment", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public Equipment getEquipmentById(@RequestParam("id") long id) {
        return this.equipmentService.getEquipmentById(id);
    }

    @GetMapping(path = "/equipments", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public List<Equipment> getAllEquipments() {
        return this.equipmentService.getAllEquipments();
    }

    @GetMapping(path = "/equipments/category/{id}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public List<Equipment> getEquipmentByCategoryId(@PathVariable("id") long id) {
        return this.equipmentService.getEquipmentsByCategoryId(id);
    }

    @PostMapping(path = "/equipment", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public Equipment saveEquipment(@RequestBody Equipment equipment) {
        return this.equipmentService.saveEquipment(equipment);
    }

    @PutMapping(path = "/equipment", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public Equipment updateEquipment(@RequestBody Equipment equipment) {
        return this.equipmentService.updateEquipment(equipment);
    }

    @DeleteMapping(path = "/equipment/{id}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public Equipment updateEquipment(@PathVariable("id") long id) {
        return this.equipmentService.deleteEquipment(id);
    }


}
