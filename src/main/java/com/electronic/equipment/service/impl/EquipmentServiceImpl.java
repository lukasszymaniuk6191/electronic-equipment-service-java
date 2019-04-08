package com.electronic.equipment.service.impl;

import com.electronic.equipment.entity.Equipment;
import com.electronic.equipment.repository.EquipmentRepository;
import com.electronic.equipment.service.EquipmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EquipmentServiceImpl implements EquipmentService {

    private EquipmentRepository equipmentRepository;

    @Autowired
    public EquipmentServiceImpl(EquipmentRepository equipmentRepository) {
        this.equipmentRepository = equipmentRepository;
    }

    public List<Equipment> getAllEquipments() {
        return this.equipmentRepository.findAllEquipments();
    }

    public List<Equipment> getEquipmentsByCategoryId(long id) {
        return this.equipmentRepository.findEquipmentsByCategoryId(id);
    }

    public Equipment getEquipmentById(long id) {
        return this.equipmentRepository.getOne(id);
    }

    public Equipment saveEquipment(Equipment equipment) {
        return this.equipmentRepository.save(equipment);
    }

    public Equipment updateEquipment(Equipment equipment) {
        Equipment eq = this.equipmentRepository.getOne(equipment.getId());
        eq.setCategory(equipment.getCategory());
        eq.setComments(equipment.getComments());
        eq.setIssue(equipment.getIssue());
        eq.setParameters(equipment.getParameters());

        return this.equipmentRepository.save(eq);
    }

    public Equipment deleteEquipment(long id) {
        Equipment equipment = this.equipmentRepository.getOne(id);
        if (equipment != null) {
            this.equipmentRepository.delete(equipment);
        }
        return equipment;
    }


}
