package com.electronic.equipment.service.impl;

import com.electronic.equipment.entity.Issue;
import com.electronic.equipment.repository.IssueRepository;
import com.electronic.equipment.service.IssueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IssueServiceImpl implements IssueService {

    private IssueRepository issueRepository;

    @Autowired
    public IssueServiceImpl(IssueRepository issueRepository) {
        this.issueRepository = issueRepository;
    }

    @Override
    public Issue saveIssue(Issue issue) {
        return this.issueRepository.save(issue);
    }

    @Override
    public Issue getIssueById(long id) {
        return this.issueRepository.getOne(id);
    }
}
