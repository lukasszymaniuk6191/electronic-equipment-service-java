package com.electronic.equipment.service;

import com.electronic.equipment.entity.Issue;

public interface IssueService {

    Issue saveIssue(Issue issue);

    Issue getIssueById(long id);

}
