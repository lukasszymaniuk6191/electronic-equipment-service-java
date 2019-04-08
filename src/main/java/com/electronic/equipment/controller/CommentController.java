package com.electronic.equipment.controller;

import com.electronic.equipment.entity.Comment;
import com.electronic.equipment.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:4200", maxAge = 3600)
@RestController
@RequestMapping({"/api"})
public class CommentController {

    private CommentService commentService;

    @Autowired
    public CommentController(CommentService commentService) {
        this.commentService = commentService;
    }

    @GetMapping(path = "/comment/{id}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public Comment getCommentById(@PathVariable("id") long id) {
        return this.commentService.getCommentById(id);
    }

    @PostMapping(path = "/comment", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public Comment saveComment(@RequestBody Comment comment) {
        return this.commentService.saveComment(comment);
    }

    @GetMapping(path = "/comments/equipment/{id}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public List<Comment> getCommentsByEquipmentId(@PathVariable("id") long id) {
        return this.commentService.getCommentsByEquipmentId(id);
    }

}
