package com.electronic.equipment.repository;

import com.electronic.equipment.entity.Equipment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EquipmentRepository extends JpaRepository<Equipment, Long> {

    @Query("SELECT  e FROM Equipment e")
    List<Equipment> findAllEquipments();

    @Query("SELECT e " +
            "FROM Equipment e " +
            "JOIN e.category c " +
            "WHERE c.id =:id ")
    List<Equipment> findEquipmentsByCategoryId(@Param("id") long id);

    Equipment findEquipmentById(long id);

}
