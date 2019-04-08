package com.electronic.equipment.entity;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.sql.Timestamp;


@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
@Entity
@Table(name = "comments")
public class Comment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @NotNull
    private Timestamp date;

    @NotNull
    private String author;

    @NotNull
    @Column(name = "comment_text")
    private String commentText;

    @ManyToOne
    @JoinColumn(name = "equipment_id")
    @JsonIgnoreProperties(value = {"comments"})
    private Equipment equipment;
}
