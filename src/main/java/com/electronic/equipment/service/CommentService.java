package com.electronic.equipment.service;

import com.electronic.equipment.entity.Comment;

import java.util.List;

public interface CommentService {

    Comment saveComment(Comment comment);

    Comment getCommentById(long id);

    List<Comment> getCommentsByEquipmentId(long id);

}
