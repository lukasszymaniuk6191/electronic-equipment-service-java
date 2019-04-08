package com.electronic.equipment.service;


import com.electronic.equipment.entity.Equipment;

import java.util.List;

public interface EquipmentService {

    List<Equipment> getAllEquipments();

    List<Equipment> getEquipmentsByCategoryId(long id);

    Equipment getEquipmentById(long id);

    Equipment saveEquipment(Equipment equipment);

    Equipment updateEquipment(Equipment equipment);

    Equipment deleteEquipment(long id);

}
