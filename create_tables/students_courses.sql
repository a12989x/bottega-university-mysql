CREATE TABLE `bottega-university`.`students_courses` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `students_courses_students_id` INT NOT NULL,
    `students_courses_courses_id` INT NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
    INDEX `students_courses_students_id_idx` (`students_courses_students_id` ASC) VISIBLE,
    INDEX `students_courses_courses_id_idx` (`students_courses_courses_id` ASC) VISIBLE,
    CONSTRAINT `students_courses_students_id`
        FOREIGN KEY (`students_courses_students_id`)
        REFERENCES `bottega-university`.`students` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `students_courses_courses_id`
        FOREIGN KEY (`students_courses_courses_id`)
        REFERENCES `bottega-university`.`courses` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION);
