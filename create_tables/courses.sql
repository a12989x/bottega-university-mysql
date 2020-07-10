CREATE TABLE `bottega-university`.`courses` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `courses_professors_id` INT NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
    INDEX `courses_professors_id_idx`     (`courses_professors_id` ASC) VISIBLE,
    CONSTRAINT `courses_professors_id`
        FOREIGN KEY (`courses_professors_id`)
        REFERENCES `bottega-university`.`professors`    (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION);
