package com.electronic.equipment.entity;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.List;
import java.util.Set;

@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
@Entity
@Table(name = "equipments")
public class Equipment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @NotNull
    private String model;

    @NotNull
    private String mark;

    @NotNull
    private String owner;

    @OneToOne
    @JoinColumn(name = "category_id", referencedColumnName = "id")
    private Category category;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "equipment_id")
    private List<Parameter> parameters;

    @OneToMany(
            mappedBy = "equipment",
            cascade = CascadeType.ALL,
            fetch = FetchType.LAZY
    )
    @JsonIgnoreProperties(value = {"equipment"})
    private List<Comment> comments;

    @OneToOne(mappedBy = "equipment",
            fetch = FetchType.LAZY)
    @JsonIgnoreProperties(value = {"equipment"})
    private Issue issue;


}
