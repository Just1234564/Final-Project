CREATE TABLE `Login_Password` (
    `login` VARCHAR(255) DEFAULT 'user1',
    `password` VARCHAR(255) DEFAULT 'password123',
    `user_id` INT AUTO_INCREMENT,
    PRIMARY KEY (`user_id`)
);

CREATE TABLE `Users` (
    `user_id` INT AUTO_INCREMENT,
    `name` VARCHAR(255) DEFAULT 'Иван',
    `last_name` VARCHAR(255) DEFAULT 'Иванов',
    `age` INT DEFAULT 30,
    `phone_number` INT DEFAULT 1234567890,
    `email` VARCHAR(255) DEFAULT 'ivan.ivanov@example.com',
    `bank_card` INT DEFAULT 1,
    `user_message` INT DEFAULT 1,
    PRIMARY KEY (`user_id`),
    FOREIGN KEY (`bank_card`) REFERENCES `bank_card`(`card_id`),
    FOREIGN KEY (`user_message`) REFERENCES `User_message`(`message_id`)
);

CREATE TABLE `bank_card` (
    `card_id` INT AUTO_INCREMENT,
    `number_card` VARCHAR(255) DEFAULT '1234-5678-9012-3456',
    `type_card` VARCHAR(255) DEFAULT 'Visa',
    `balance` INT DEFAULT 1000,
    PRIMARY KEY (`card_id`)
);

CREATE TABLE `User_message` (
    `message_id` INT AUTO_INCREMENT,
    `data` VARCHAR(255) DEFAULT '2023-09-13',
    `text` VARCHAR(255) DEFAULT 'Привет, как дела?',
    `topic` VARCHAR(255) DEFAULT 'Общий',
    PRIMARY KEY (`message_id`)
);
