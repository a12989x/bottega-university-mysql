CREATE TABLE `bottega-university`.`grades` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `grade` INT NOT NULL,
    `grades_students_id` INT NOT NULL,
    `grades_courses_id` INT NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
    INDEX `grades_students_id_idx` (`grades_students_id` ASC) VISIBLE,
    INDEX `grades_courses_id_idx` (`grades_courses_id` ASC) VISIBLE,
    CONSTRAINT `grades_students_id`
        FOREIGN KEY (`grades_students_id`)
        REFERENCES `bottega-university`.`students` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `grades_courses_id`
        FOREIGN KEY (`grades_courses_id`)
        REFERENCES `bottega-university`.`courses` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION);
