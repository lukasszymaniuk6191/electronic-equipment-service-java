package com.electronic.equipment.service.impl;

import com.electronic.equipment.entity.Comment;
import com.electronic.equipment.repository.CommentRepository;
import com.electronic.equipment.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {

    private CommentRepository commentRepository;

    @Autowired
    public CommentServiceImpl(CommentRepository commentRepository) {
        this.commentRepository = commentRepository;
    }


    @Override
    public Comment saveComment(Comment comment) {
        return this.commentRepository.save(comment);
    }

    @Override
    public Comment getCommentById(long id) {
        return this.commentRepository.findById(id).get();
    }

    @Override
    public List<Comment> getCommentsByEquipmentId(long id) {
        return this.commentRepository.findCommentsByEquipment_Id(id);
    }
}
