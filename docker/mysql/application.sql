use idp_sql;

CREATE TABLE `lessons` (
       `id` int(11) NOT NULL AUTO_INCREMENT,
        `title` VARCHAR(60) NOT NULL UNIQUE,
       PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `queries` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `lesson_id` int(11) NOT NULL,
   `query` text NOT NULL,
   `sort` int(3) NOT NULL DEFAULT '100',
   `description` text,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;