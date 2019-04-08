package com.electronic.equipment.service.impl;

import com.electronic.equipment.entity.Status;
import com.electronic.equipment.repository.StatusRepository;
import com.electronic.equipment.service.StatusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StatusServiceImpl implements StatusService {

    private StatusRepository statusRepository;

    @Autowired
    public StatusServiceImpl(StatusRepository statusRepository) {
        this.statusRepository = statusRepository;
    }

    @Override
    public List<Status> getAllStatuses() {
        return this.statusRepository.findAll();
    }
}
