package com.electronic.equipment.controller;

import com.electronic.equipment.entity.Status;
import com.electronic.equipment.service.StatusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin(origins = "http://localhost:4200", maxAge = 3600)
@RestController
@RequestMapping({"/api"})
public class StatusController {

    private StatusService statusService;

    @Autowired
    public StatusController(StatusService statusService) {
        this.statusService = statusService;
    }

    @GetMapping(path = "/statuses", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public List<Status> getAllStatuses() {
        return this.statusService.getAllStatuses();
    }

}
