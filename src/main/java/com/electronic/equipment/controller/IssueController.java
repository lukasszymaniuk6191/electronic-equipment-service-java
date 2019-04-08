package com.electronic.equipment.controller;

import com.electronic.equipment.entity.Issue;
import com.electronic.equipment.service.IssueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = "http://localhost:4200", maxAge = 3600)
@RestController
@RequestMapping({"/api"})
public class IssueController {

    private IssueService issueService;

    @Autowired
    public IssueController(IssueService issueService) {
        this.issueService = issueService;
    }

    @GetMapping(path = "/issue/{id}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public Issue getIssueById(@PathVariable("id") long id) {
        return this.issueService.getIssueById(id);
    }

    @PostMapping(path = "/issue", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public Issue saveIssue(@RequestBody Issue issue) {

        System.out.println(issue);

        return this.issueService.saveIssue(issue);
    }

}
