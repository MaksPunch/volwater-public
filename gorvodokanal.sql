/*
 Navicat Premium Data Transfer

 Source Server         : volwater-edu
 Source Server Type    : MySQL
 Source Server Version : 80037 (8.0.37-0ubuntu0.22.04.3)
 Source Host           : localhost:3306
 Source Schema         : volwater_edu

 Target Server Type    : MySQL
 Target Server Version : 80037 (8.0.37-0ubuntu0.22.04.3)
 File Encoding         : 65001

 Date: 24/06/2024 00:08:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answer_progresses
-- ----------------------------
DROP TABLE IF EXISTS `answer_progresses`;
CREATE TABLE `answer_progresses`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `selected` tinyint(1) NULL DEFAULT 0,
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `answerId` int NULL DEFAULT NULL,
  `userId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `answer_progresses_userId_answerId_unique`(`answerId` ASC, `userId` ASC) USING BTREE,
  INDEX `userId`(`userId` ASC) USING BTREE,
  CONSTRAINT `answer_progresses_ibfk_41` FOREIGN KEY (`answerId`) REFERENCES `answers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `answer_progresses_ibfk_42` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answer_progresses
-- ----------------------------
INSERT INTO `answer_progresses` VALUES (1, 1, '', '2024-06-09 21:02:58', '2024-06-09 21:16:50', 11, 1);
INSERT INTO `answer_progresses` VALUES (2, 1, '', '2024-06-10 15:27:36', '2024-06-10 15:27:36', 14, 4);
INSERT INTO `answer_progresses` VALUES (3, 1, '', '2024-06-10 21:18:43', '2024-06-10 21:18:43', 11, 5);
INSERT INTO `answer_progresses` VALUES (4, 1, '', '2024-06-10 21:18:45', '2024-06-10 21:18:46', 16, 5);
INSERT INTO `answer_progresses` VALUES (5, 1, '', '2024-06-10 21:18:45', '2024-06-10 21:18:47', 17, 5);
INSERT INTO `answer_progresses` VALUES (6, 1, '', '2024-06-10 21:18:47', '2024-06-10 21:18:47', 20, 5);
INSERT INTO `answer_progresses` VALUES (7, 1, '', '2024-06-10 21:18:48', '2024-06-10 21:18:48', 21, 5);
INSERT INTO `answer_progresses` VALUES (8, 1, 'конфиденциальность', '2024-06-10 21:18:50', '2024-06-10 21:18:53', 23, 5);
INSERT INTO `answer_progresses` VALUES (9, 1, '', '2024-06-20 21:25:41', '2024-06-20 21:25:41', 44, 1);
INSERT INTO `answer_progresses` VALUES (10, 1, '', '2024-06-20 21:25:51', '2024-06-20 21:25:51', 49, 1);
INSERT INTO `answer_progresses` VALUES (11, 1, '', '2024-06-20 21:26:07', '2024-06-20 21:26:07', 51, 1);
INSERT INTO `answer_progresses` VALUES (12, 1, '', '2024-06-20 21:26:11', '2024-06-20 21:26:11', 57, 1);
INSERT INTO `answer_progresses` VALUES (13, 1, '', '2024-06-21 06:56:06', '2024-06-21 06:56:06', 60, 1);
INSERT INTO `answer_progresses` VALUES (14, 1, '', '2024-06-21 07:34:21', '2024-06-21 07:34:21', 5, 9);
INSERT INTO `answer_progresses` VALUES (15, 1, 'Пароль', '2024-06-21 07:34:25', '2024-06-21 07:34:25', 76, 9);

-- ----------------------------
-- Table structure for answers
-- ----------------------------
DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` tinyint(1) NULL DEFAULT 0,
  `right_answer` tinyint(1) NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `questionId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `questionId`(`questionId` ASC) USING BTREE,
  CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`questionId`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answers
-- ----------------------------
INSERT INTO `answers` VALUES (2, '123', 0, 1, '2024-05-02 11:58:02', '2024-06-09 19:13:03', 1);
INSERT INTO `answers` VALUES (4, '123', 0, 0, '2024-05-02 12:02:21', '2024-05-22 14:57:49', 1);
INSERT INTO `answers` VALUES (5, '123', 0, 0, '2024-05-02 12:02:22', '2024-05-22 14:57:49', 1);
INSERT INTO `answers` VALUES (6, '123', 0, 0, '2024-05-02 12:10:16', '2024-05-22 14:57:49', 1);
INSERT INTO `answers` VALUES (7, '1234567', 1, 0, '2024-05-02 12:35:19', '2024-05-22 14:57:31', 1);
INSERT INTO `answers` VALUES (10, '', 1, 1, '2024-05-22 18:46:15', '2024-06-21 06:55:40', 2);
INSERT INTO `answers` VALUES (11, 'Авторизация', 0, 1, '2024-05-22 18:46:17', '2024-06-21 06:55:40', 2);
INSERT INTO `answers` VALUES (12, 'Подотчетность', 0, 0, '2024-05-22 18:46:22', '2024-06-21 06:55:40', 2);
INSERT INTO `answers` VALUES (13, 'Конфиденциальность ', 0, 0, '2024-05-22 18:46:36', '2024-06-21 06:55:40', 2);
INSERT INTO `answers` VALUES (14, 'Доступность', 0, 0, '2024-06-09 21:37:39', '2024-06-21 06:55:40', 2);
INSERT INTO `answers` VALUES (15, 'Целостность', 0, 0, '2024-06-09 21:37:44', '2024-06-21 06:55:40', 2);
INSERT INTO `answers` VALUES (16, 'Создание механизма и условий оперативного реагирования на угрозы безопасности', 0, 1, '2024-06-09 21:38:22', '2024-06-09 21:38:26', 3);
INSERT INTO `answers` VALUES (17, 'Эффективное пресечение посягательств на ресурсы и угроз персоналу на основе правовых, организационных и инженерно-технических мер и средств обеспечения безопасности', 0, 1, '2024-06-09 21:38:33', '2024-06-09 21:38:47', 3);
INSERT INTO `answers` VALUES (18, 'Проявлять негативные тенденции в функционировании предприятия', 0, 0, '2024-06-09 21:38:35', '2024-06-09 21:38:53', 3);
INSERT INTO `answers` VALUES (19, 'Своевременное выявление и устранение угроз безопасности и ресурсам', 0, 0, '2024-06-09 21:38:37', '2024-06-09 21:38:56', 3);
INSERT INTO `answers` VALUES (20, 'Создание условий для максимально возможного возмещения и локализации наносимого ущерба', 0, 1, '2024-06-09 21:38:39', '2024-06-09 21:39:22', 3);
INSERT INTO `answers` VALUES (21, 'Влиять нарушениями безопасности на достижение целей организации', 0, 1, '2024-06-09 21:38:41', '2024-06-09 21:39:20', 3);
INSERT INTO `answers` VALUES (22, 'Способствовать покрытию финансового, материального и морального ущерба', 0, 0, '2024-06-09 21:39:13', '2024-06-09 21:39:15', 3);
INSERT INTO `answers` VALUES (23, 'Конфиденциальность', 0, 1, '2024-06-09 21:39:28', '2024-06-09 21:39:51', 4);
INSERT INTO `answers` VALUES (24, '11111', 0, 0, '2024-06-13 13:55:03', '2024-06-13 13:55:13', 5);
INSERT INTO `answers` VALUES (25, '22222', 0, 0, '2024-06-13 13:55:13', '2024-06-13 13:55:18', 5);
INSERT INTO `answers` VALUES (26, '1', 0, 1, '2024-06-13 13:55:41', '2024-06-13 13:55:48', 6);
INSERT INTO `answers` VALUES (27, 'Регистрируют фальшивые аккаунты', 0, 1, '2024-06-16 19:47:28', '2024-06-16 19:48:46', 7);
INSERT INTO `answers` VALUES (28, 'Приходят лично', 0, 0, '2024-06-16 19:47:30', '2024-06-16 19:47:41', 7);
INSERT INTO `answers` VALUES (29, 'Подбирают пароль к аккаунту', 0, 1, '2024-06-16 19:47:31', '2024-06-16 19:48:43', 7);
INSERT INTO `answers` VALUES (30, 'Создают поддельные сайты', 0, 1, '2024-06-16 19:47:33', '2024-06-16 19:48:44', 7);
INSERT INTO `answers` VALUES (31, 'Кибернейминг', 0, 0, '2024-06-16 19:49:03', '2024-06-16 19:49:09', 8);
INSERT INTO `answers` VALUES (32, 'Кибербуллинг', 0, 1, '2024-06-16 19:49:05', '2024-06-16 19:49:20', 8);
INSERT INTO `answers` VALUES (33, 'Киберхантинг', 0, 0, '2024-06-16 19:49:06', '2024-06-16 19:49:14', 8);
INSERT INTO `answers` VALUES (34, 'Киберсёрфинг', 0, 0, '2024-06-16 19:49:07', '2024-06-16 19:49:16', 8);
INSERT INTO `answers` VALUES (35, 'Все пользователи социальной сети', 0, 1, '2024-06-16 19:51:08', '2024-06-16 19:51:27', 9);
INSERT INTO `answers` VALUES (36, 'Только члены семьи и друзья', 0, 0, '2024-06-16 19:51:10', '2024-06-16 19:51:29', 9);
INSERT INTO `answers` VALUES (37, 'Только те, кого я знаю', 0, 0, '2024-06-16 19:51:11', '2024-06-16 19:51:23', 9);
INSERT INTO `answers` VALUES (38, 'Только члены семьи', 0, 0, '2024-06-16 19:51:12', '2024-06-16 19:51:25', 9);
INSERT INTO `answers` VALUES (39, 'Только в видеоархиве', 0, 0, '2024-06-16 19:52:06', '2024-06-16 19:52:18', 10);
INSERT INTO `answers` VALUES (40, 'Только в фотоальбоме', 0, 0, '2024-06-16 19:52:09', '2024-06-16 19:52:21', 10);
INSERT INTO `answers` VALUES (41, 'Везде, включая переписку по специальному запросу', 0, 1, '2024-06-16 19:52:11', '2024-06-16 19:52:36', 10);
INSERT INTO `answers` VALUES (42, 'Только на стене аккаунта', 0, 0, '2024-06-16 19:52:12', '2024-06-16 19:52:28', 10);
INSERT INTO `answers` VALUES (43, 'Имя и фамилия', 0, 0, '2024-06-16 19:54:54', '2024-06-16 19:55:00', 11);
INSERT INTO `answers` VALUES (44, 'Пароль', 0, 1, '2024-06-16 19:54:56', '2024-06-16 19:55:13', 11);
INSERT INTO `answers` VALUES (45, 'Электронная почта', 0, 0, '2024-06-16 19:54:57', '2024-06-16 19:55:08', 11);
INSERT INTO `answers` VALUES (46, 'Номер телефона', 0, 0, '2024-06-16 19:54:58', '2024-06-16 19:55:10', 11);
INSERT INTO `answers` VALUES (47, 'Буквы и цифры', 0, 0, '2024-06-16 19:55:40', '2024-06-16 19:55:46', 12);
INSERT INTO `answers` VALUES (48, 'Буквы', 0, 0, '2024-06-16 19:55:41', '2024-06-16 19:55:49', 12);
INSERT INTO `answers` VALUES (49, 'Буквы и цифры, а также спецсимволы', 0, 1, '2024-06-16 19:55:43', '2024-06-16 19:56:01', 12);
INSERT INTO `answers` VALUES (50, 'Буквы прописные и строчные', 0, 0, '2024-06-16 19:55:44', '2024-06-16 19:55:55', 12);
INSERT INTO `answers` VALUES (51, 'Добавить к парольной фразе слово или символы', 0, 1, '2024-06-16 19:56:26', '2024-06-16 19:57:14', 13);
INSERT INTO `answers` VALUES (52, 'Не использовать несколько аккаунтов', 0, 0, '2024-06-16 19:56:27', '2024-06-16 19:56:48', 13);
INSERT INTO `answers` VALUES (53, 'Создать несколько паролей', 0, 0, '2024-06-16 19:56:29', '2024-06-16 19:57:14', 13);
INSERT INTO `answers` VALUES (54, 'Использовать один пароль', 0, 0, '2024-06-16 19:56:30', '2024-06-16 19:56:40', 13);
INSERT INTO `answers` VALUES (55, 'asdfgh', 0, 0, '2024-06-16 19:58:20', '2024-06-16 19:58:27', 14);
INSERT INTO `answers` VALUES (56, 'Iloveyou', 0, 0, '2024-06-16 19:58:21', '2024-06-16 19:58:30', 14);
INSERT INTO `answers` VALUES (57, 'L!v3rp80l', 0, 1, '2024-06-16 19:58:22', '2024-06-16 19:58:34', 14);
INSERT INTO `answers` VALUES (58, '0000000000', 0, 0, '2024-06-16 19:58:24', '2024-06-16 19:58:37', 14);
INSERT INTO `answers` VALUES (59, 'Двухэтапная аутентификация', 0, 1, '2024-06-16 19:59:42', '2024-06-16 19:59:59', 15);
INSERT INTO `answers` VALUES (60, 'Длинная верификация', 0, 0, '2024-06-16 19:59:43', '2024-06-16 19:59:51', 15);
INSERT INTO `answers` VALUES (61, 'Двухшаговое сличение', 0, 0, '2024-06-16 19:59:45', '2024-06-16 19:59:54', 15);
INSERT INTO `answers` VALUES (62, 'Двойная проверка', 0, 0, '2024-06-16 19:59:46', '2024-06-16 19:59:57', 15);
INSERT INTO `answers` VALUES (63, 'Вы вводите пароль на сайте, а для подтверждения входа используете USB-токен', 0, 1, '2024-06-16 20:00:20', '2024-06-16 20:01:17', 16);
INSERT INTO `answers` VALUES (64, 'Вы вводите пароль на сайте, код приходит в письме на вашу почту', 0, 0, '2024-06-16 20:00:22', '2024-06-16 20:00:36', 16);
INSERT INTO `answers` VALUES (65, 'Вы вводите пароль в приложении на смартфоне, код приходит в смс на тот же смартфон', 0, 0, '2024-06-16 20:00:25', '2024-06-16 20:00:42', 16);
INSERT INTO `answers` VALUES (66, 'Вы вспомнили пароль, а потом – вспомнили проверочное слово для входа', 0, 0, '2024-06-16 20:00:26', '2024-06-16 20:00:46', 16);
INSERT INTO `answers` VALUES (72, '123', 1, 0, '2024-06-21 07:31:52', '2024-06-21 07:32:05', 18);
INSERT INTO `answers` VALUES (73, '213', 1, 0, '2024-06-21 07:31:54', '2024-06-21 07:32:05', 18);
INSERT INTO `answers` VALUES (74, '123', 1, 0, '2024-06-21 07:31:55', '2024-06-21 07:32:05', 18);
INSERT INTO `answers` VALUES (75, '123', 1, 0, '2024-06-21 07:31:56', '2024-06-21 07:32:03', 18);
INSERT INTO `answers` VALUES (76, 'Пароль', 0, 1, '2024-06-21 07:32:03', '2024-06-21 07:32:09', 18);
INSERT INTO `answers` VALUES (77, '', 0, 0, '2024-06-23 19:19:31', '2024-06-23 19:19:31', 1);

-- ----------------------------
-- Table structure for course_departments
-- ----------------------------
DROP TABLE IF EXISTS `course_departments`;
CREATE TABLE `course_departments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `departmentId` int NULL DEFAULT NULL,
  `courseId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `course_departments_courseId_departmentId_unique`(`departmentId` ASC, `courseId` ASC) USING BTREE,
  INDEX `courseId`(`courseId` ASC) USING BTREE,
  CONSTRAINT `course_departments_ibfk_45` FOREIGN KEY (`departmentId`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `course_departments_ibfk_46` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_departments
-- ----------------------------
INSERT INTO `course_departments` VALUES (3, '2024-04-25 13:27:02', '2024-04-25 13:27:02', 1, 2);
INSERT INTO `course_departments` VALUES (6, '2024-04-25 14:13:29', '2024-04-25 14:13:29', 1, 9);

-- ----------------------------
-- Table structure for course_progresses
-- ----------------------------
DROP TABLE IF EXISTS `course_progresses`;
CREATE TABLE `course_progresses`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `completed` tinyint(1) NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `courseId` int NULL DEFAULT NULL,
  `userId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `course_progresses_userId_courseId_unique`(`courseId` ASC, `userId` ASC) USING BTREE,
  INDEX `userId`(`userId` ASC) USING BTREE,
  CONSTRAINT `course_progresses_ibfk_45` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `course_progresses_ibfk_46` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_progresses
-- ----------------------------

-- ----------------------------
-- Table structure for course_users
-- ----------------------------
DROP TABLE IF EXISTS `course_users`;
CREATE TABLE `course_users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `courseId` int NULL DEFAULT NULL,
  `userId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `course_users_userId_courseId_unique`(`courseId` ASC, `userId` ASC) USING BTREE,
  INDEX `userId`(`userId` ASC) USING BTREE,
  CONSTRAINT `course_users_ibfk_27` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `course_users_ibfk_28` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_users
-- ----------------------------
INSERT INTO `course_users` VALUES (2, '2024-06-09 20:43:57', '2024-06-09 20:43:57', 10, 1);
INSERT INTO `course_users` VALUES (3, '2024-06-10 15:08:43', '2024-06-10 15:08:43', 10, 4);
INSERT INTO `course_users` VALUES (4, '2024-06-10 21:09:27', '2024-06-10 21:09:27', 10, 5);
INSERT INTO `course_users` VALUES (5, '2024-06-16 20:01:48', '2024-06-16 20:01:48', 12, 1);
INSERT INTO `course_users` VALUES (6, '2024-06-21 07:32:31', '2024-06-21 07:32:31', 13, 1);
INSERT INTO `course_users` VALUES (7, '2024-06-21 07:33:41', '2024-06-21 07:33:41', 13, 9);

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` tinyint(1) NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES (2, 'test course', 1, '2024-04-06 09:16:27', '2024-04-06 09:18:31');
INSERT INTO `courses` VALUES (9, 'Тестовый курс 234', 0, '2024-04-25 14:13:18', '2024-05-22 14:58:31');
INSERT INTO `courses` VALUES (10, 'Информационная безопасность', 0, '2024-04-25 14:13:21', '2024-06-09 21:34:39');
INSERT INTO `courses` VALUES (11, 'ТЕСТТЕСТ', 0, '2024-06-13 13:53:35', '2024-06-13 13:56:39');
INSERT INTO `courses` VALUES (12, 'Как защитить свой аккаунт в соцсетях', 0, '2024-06-16 19:52:54', '2024-06-16 19:53:06');
INSERT INTO `courses` VALUES (13, 'Информационная безопасность 123', 1, '2024-06-21 07:30:49', '2024-06-22 17:49:06');

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` tinyint(1) NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES (1, '1', 0, '2024-04-25 13:25:01', '2024-04-26 13:02:48');
INSERT INTO `departments` VALUES (4, '2', 0, '2024-04-25 13:38:39', '2024-04-26 12:52:02');
INSERT INTO `departments` VALUES (5, '3', 0, '2024-04-25 13:39:57', '2024-04-26 12:47:08');
INSERT INTO `departments` VALUES (6, '4', 0, '2024-04-25 13:42:38', '2024-04-26 13:03:29');
INSERT INTO `departments` VALUES (7, '5', 0, '2024-04-25 13:44:01', '2024-04-26 12:47:13');

-- ----------------------------
-- Table structure for moderator_departments
-- ----------------------------
DROP TABLE IF EXISTS `moderator_departments`;
CREATE TABLE `moderator_departments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `departmentId` int NULL DEFAULT NULL,
  `userId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `moderator_departments_userId_departmentId_unique`(`departmentId` ASC, `userId` ASC) USING BTREE,
  INDEX `userId`(`userId` ASC) USING BTREE,
  CONSTRAINT `moderator_departments_ibfk_13` FOREIGN KEY (`departmentId`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `moderator_departments_ibfk_14` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of moderator_departments
-- ----------------------------

-- ----------------------------
-- Table structure for question_progresses
-- ----------------------------
DROP TABLE IF EXISTS `question_progresses`;
CREATE TABLE `question_progresses`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `completed` tinyint(1) NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `questionId` int NULL DEFAULT NULL,
  `userId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `question_progresses_userId_questionId_unique`(`questionId` ASC, `userId` ASC) USING BTREE,
  INDEX `userId`(`userId` ASC) USING BTREE,
  CONSTRAINT `question_progresses_ibfk_41` FOREIGN KEY (`questionId`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `question_progresses_ibfk_42` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question_progresses
-- ----------------------------

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` tinyint(1) NULL DEFAULT 0,
  `type` enum('radio','checkbox','text') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `testId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `testId`(`testId` ASC) USING BTREE,
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`testId`) REFERENCES `tests` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES (1, '123', 0, 'radio', '2024-04-06 11:19:02', '2024-06-09 19:13:03', 1);
INSERT INTO `questions` VALUES (2, 'Что описывает данное определение: \"права и разрешения, предоставленные индивидууму (или процессу), которые обеспечивают возможность доступа к ресурсу.\"', 0, 'radio', '2024-05-22 18:45:53', '2024-06-21 06:55:40', 8);
INSERT INTO `questions` VALUES (3, 'Выберите основные задачи системы ИБ', 0, 'checkbox', '2024-06-09 21:37:51', '2024-06-09 21:38:20', 8);
INSERT INTO `questions` VALUES (4, '? - это гарантия, что информация может быть прочитана и проинтерпретирована только теми людьми и процессами, которые авторизованы это делать', 0, 'text', '2024-06-09 21:38:00', '2024-06-09 21:39:29', 8);
INSERT INTO `questions` VALUES (5, '1', 0, 'checkbox', '2024-06-13 13:54:47', '2024-06-13 13:54:59', 9);
INSERT INTO `questions` VALUES (6, '2', 0, 'text', '2024-06-13 13:55:27', '2024-06-13 13:55:41', 9);
INSERT INTO `questions` VALUES (7, 'Какими средствами и технологиями пользуются цифровые преступники?', 0, 'checkbox', '2024-06-16 19:47:06', '2024-06-16 19:47:26', 10);
INSERT INTO `questions` VALUES (8, 'Как называется травля и преследование в интернете?', 0, 'radio', '2024-06-16 19:48:50', '2024-06-16 19:48:58', 10);
INSERT INTO `questions` VALUES (9, 'Кто получит доступ к вашему посту в соцсети о вашем отъезде из дома, если вы не меняли настроек приватности аккаунта и опубликовали пост в открытом доступе?', 0, 'radio', '2024-06-16 19:50:42', '2024-06-16 19:50:47', 11);
INSERT INTO `questions` VALUES (10, 'Где в аккаунте социальной сети правоохранительные органы могут найти противоправный контент?', 0, 'radio', '2024-06-16 19:51:56', '2024-06-16 19:52:03', 11);
INSERT INTO `questions` VALUES (11, 'Что защищает ваш аккаунт в социальной сети?', 0, 'radio', '2024-06-16 19:54:34', '2024-06-16 19:54:50', 12);
INSERT INTO `questions` VALUES (12, 'Какие символы рекомендуется использовать в пароле?', 0, 'radio', '2024-06-16 19:55:16', '2024-06-16 19:55:32', 12);
INSERT INTO `questions` VALUES (13, 'Как использовать парольную фразу для нескольких аккаунтов?', 0, 'radio', '2024-06-16 19:56:13', '2024-06-16 19:56:16', 12);
INSERT INTO `questions` VALUES (14, 'Выберите самый надёжный пароль из предложенных:', 0, 'radio', '2024-06-16 19:58:12', '2024-06-16 19:58:17', 12);
INSERT INTO `questions` VALUES (15, 'Вход с подтверждением — это', 0, 'radio', '2024-06-16 19:59:31', '2024-06-16 19:59:33', 13);
INSERT INTO `questions` VALUES (16, 'Двухфакторная аутентификация предполагает наличие одного из трёх отдельных факторов: знать, владеть или биометрические данные. Укажите вариант, где используются два разных фактора:', 0, 'radio', '2024-06-16 20:00:07', '2024-06-16 20:00:17', 13);
INSERT INTO `questions` VALUES (18, '123', 0, 'text', '2024-06-21 07:31:18', '2024-06-21 07:32:12', 1);

-- ----------------------------
-- Table structure for section_progresses
-- ----------------------------
DROP TABLE IF EXISTS `section_progresses`;
CREATE TABLE `section_progresses`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `completed` tinyint(1) NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int NULL DEFAULT NULL,
  `sectionId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `userId`(`userId` ASC) USING BTREE,
  INDEX `sectionId`(`sectionId` ASC) USING BTREE,
  CONSTRAINT `section_progresses_ibfk_21` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `section_progresses_ibfk_22` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of section_progresses
-- ----------------------------
INSERT INTO `section_progresses` VALUES (1, 1, '2024-06-09 21:02:59', '2024-06-09 21:02:59', 1, 9);
INSERT INTO `section_progresses` VALUES (2, 1, '2024-06-10 15:13:39', '2024-06-10 15:13:39', 4, 9);
INSERT INTO `section_progresses` VALUES (3, 1, '2024-06-10 21:19:14', '2024-06-10 21:19:14', 5, 9);
INSERT INTO `section_progresses` VALUES (4, 1, '2024-06-20 21:26:13', '2024-06-20 21:26:13', 1, 13);
INSERT INTO `section_progresses` VALUES (5, 1, '2024-06-21 07:34:27', '2024-06-21 07:34:27', 9, 15);
INSERT INTO `section_progresses` VALUES (6, 1, '2024-06-23 19:17:57', '2024-06-23 19:17:57', 1, 11);
INSERT INTO `section_progresses` VALUES (7, 1, '2024-06-23 19:18:11', '2024-06-23 19:18:11', 1, 12);

-- ----------------------------
-- Table structure for section_step_progresses
-- ----------------------------
DROP TABLE IF EXISTS `section_step_progresses`;
CREATE TABLE `section_step_progresses`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `completed` tinyint(1) NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `sectionStepId` int NULL DEFAULT NULL,
  `userId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `section_step_progresses_userId_sectionStepId_unique`(`sectionStepId` ASC, `userId` ASC) USING BTREE,
  INDEX `userId`(`userId` ASC) USING BTREE,
  CONSTRAINT `section_step_progresses_ibfk_25` FOREIGN KEY (`sectionStepId`) REFERENCES `section_steps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `section_step_progresses_ibfk_26` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of section_step_progresses
-- ----------------------------
INSERT INTO `section_step_progresses` VALUES (1, 1, '2024-06-09 21:02:53', '2024-06-09 21:02:53', 1, 1);
INSERT INTO `section_step_progresses` VALUES (2, 1, '2024-06-10 15:06:58', '2024-06-10 15:06:58', 3, 1);
INSERT INTO `section_step_progresses` VALUES (3, 1, '2024-06-10 15:24:19', '2024-06-10 15:24:19', 1, 4);
INSERT INTO `section_step_progresses` VALUES (4, 1, '2024-06-10 15:24:28', '2024-06-10 15:24:28', 3, 4);
INSERT INTO `section_step_progresses` VALUES (5, 1, '2024-06-10 21:18:16', '2024-06-10 21:18:16', 1, 5);
INSERT INTO `section_step_progresses` VALUES (6, 1, '2024-06-10 21:18:24', '2024-06-10 21:18:24', 3, 5);
INSERT INTO `section_step_progresses` VALUES (7, 1, '2024-06-20 18:08:41', '2024-06-20 18:08:41', 7, 1);
INSERT INTO `section_step_progresses` VALUES (8, 1, '2024-06-20 18:08:45', '2024-06-20 18:08:45', 8, 1);
INSERT INTO `section_step_progresses` VALUES (9, 1, '2024-06-21 06:56:01', '2024-06-21 06:56:01', 9, 1);
INSERT INTO `section_step_progresses` VALUES (10, 1, '2024-06-21 07:34:17', '2024-06-21 07:34:17', 10, 9);
INSERT INTO `section_step_progresses` VALUES (11, 1, '2024-06-21 07:34:18', '2024-06-21 07:34:18', 11, 9);
INSERT INTO `section_step_progresses` VALUES (12, 1, '2024-06-23 19:17:55', '2024-06-23 19:17:55', 5, 1);
INSERT INTO `section_step_progresses` VALUES (13, 1, '2024-06-23 19:18:08', '2024-06-23 19:18:08', 6, 1);

-- ----------------------------
-- Table structure for section_steps
-- ----------------------------
DROP TABLE IF EXISTS `section_steps`;
CREATE TABLE `section_steps`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` tinyint(1) NULL DEFAULT 0,
  `page_number` int NULL DEFAULT 1,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `sectionId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sectionId`(`sectionId` ASC) USING BTREE,
  CONSTRAINT `section_steps_ibfk_1` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of section_steps
-- ----------------------------
INSERT INTO `section_steps` VALUES (1, '<figure class=\"image\"><img style=\"aspect-ratio:220/220;\" src=\"https://bx4oseje0pc3bzba.public.blob.vercel-storage.com/sectionImages/761478f7-3b78-4635-8a05-4ea0280d8b77-v6er8LlthRMstJcdUNw06BBNhCq0uU.png\" width=\"220\" height=\"220\"></figure><p>Основой безопасной ИТ-инфраструктуры является триада сервисов –&nbsp;Конфиденциальность,&nbsp;Целостность, Доступность –&nbsp;Confidentiality,&nbsp;Integrity,&nbsp;Availability&nbsp;(CIA).</p><p>Целью информационной безопасности является обеспечение трех наиболее важных сервисов безопасности:&nbsp;конфиденциальность,&nbsp;целостность&nbsp;и доступность.</p><p>&nbsp;</p><p><strong>Конфиденциальность</strong>&nbsp;– это гарантия, что&nbsp;информация&nbsp;может быть прочитана и проинтерпретирована только теми людьми и процессами, которые авторизованы это делать. Обеспечение конфиденциальности включает процедуры и меры, предотвращающие&nbsp;раскрытие информации&nbsp;неавторизованными пользователями.&nbsp;Информация, которая может считаться конфиденциальной, также называется чувствительной. Примером может являться почтовое сообщение, которое защищено от прочтения кем бы то ни было, кроме адресата.</p><p>&nbsp;</p><p><strong>Целостность</strong>&nbsp;– это гарантирование того, что&nbsp;информация&nbsp;остается неизменной, корректной и аутентичной. Обеспечение целостности предполагает предотвращение и&nbsp;определение&nbsp;неавторизованного создания, модификации или удаления информации. Примером могут являться меры, гарантирующие, что почтовое сообщение не было изменено при пересылке.</p><p><strong>Доступность&nbsp;</strong>– это гарантирование того, что авторизованные пользователи могут иметь&nbsp;доступ&nbsp;и работать с информационными активами, ресурсами и системами, которые им необходимы, при этом обеспечивается требуемая&nbsp;производительность. Обеспечение доступности включает меры для поддержания доступности информации, несмотря на возможность создания помех, включая отказ системы и преднамеренные попытки нарушения доступности. Примером может являться&nbsp;защита доступа&nbsp;и обеспечение пропускной способности почтового сервиса.</p><p>Три основных сервиса –&nbsp;CIA&nbsp;– служат фундаментом информационной безопасности. Для реализации этих трех основных сервисов требуется выполнение следующих сервисов.</p><p>&nbsp;</p><p><strong>Идентификация</strong>&nbsp;– сервис, с помощью которого указываются уникальные атрибуты пользователей, позволяющие отличать пользователей друг от друга, и способы, с помощью которых пользователи указывают свои идентификации информационной системе.&nbsp;Идентификация&nbsp;тесно связана с аутентификацией.</p><p>&nbsp;</p><p><strong>Аутентификация</strong>&nbsp;– сервис, с помощью которого доказывается, что участники являются требуемыми, т.е. обеспечивается&nbsp;доказательство&nbsp;идентификации. Это может достигаться с помощью паролей, смарт-карт, биометрических токенов и т.п. В случае передачи единственного сообщения&nbsp;аутентификация&nbsp;должна гарантировать, что получателем сообщения является тот, кто нужно, и сообщение получено из заявленного источника. В случае установления соединения имеют&nbsp;место&nbsp;два аспекта. Во-первых, при инициализации соединения сервис должен гарантировать, что оба участника являются требуемыми. Во-вторых, сервис должен гарантировать, что на соединение не воздействуют таким образом, что третья сторона сможет маскироваться под одну из легальных сторон уже после установления соединения.</p><p>&nbsp;</p><p><strong>Подотчетность</strong> – возможность системы идентифицировать отдельного индивидуума и выполняемые им действия. Наличие этого сервиса означает возможность связать действия с пользователями. Данный сервис очень тесно связан с сервисом невозможности отказа.</p><p>&nbsp;</p><p><strong>Невозможность отказа</strong> – сервис, который обеспечивает невозможность индивидуума отказаться от своих действий. Например, если потребитель сделал заказ, и в системе отсутствует сервис невозможности отказа, то потребитель может отказаться от факта покупки. Невозможность отказа обеспечивает способы доказательства того, что&nbsp;транзакция&nbsp;имела&nbsp;место, не зависимо от того, является ли&nbsp;транзакция&nbsp;online-заказом или почтовым сообщением, которое было послано или получено. Для обеспечения невозможности отказа как правило используются цифровые подписи.</p><p>&nbsp;</p><p><strong>Авторизация</strong>&nbsp;–&nbsp;права&nbsp;и разрешения, предоставленные индивидууму (или процессу), которые обеспечивают возможность доступа к ресурсу. После того, как&nbsp;пользователь&nbsp;аутентифицирован,&nbsp;авторизация&nbsp;определяет, какие&nbsp;права доступа&nbsp;к каким ресурсам есть у пользователя.</p><p>&nbsp;</p><p><strong>Защита частной информации </strong>– уровень конфиденциальности, который предоставляется пользователю системой. Это часто является важным компонентом безопасности. Защита частной информации не только необходима для обеспечения конфиденциальности данных организации, но и необходима для защиты частной информации, которая будет использоваться оператором.</p><p>&nbsp;</p><p>Если хотя бы один из этих сервисов не функционирует, то можно говорить о нарушении всей исходной триады&nbsp;CIA.</p><p>Для реализации сервисов безопасности должна быть создана так называемая \"оборона в глубину\". Для этого должно быть проделано:</p><ol><li>Необходимо обеспечить гарантирование выполнения всех сервисов безопасности.</li><li>Должен быть выполнен&nbsp;анализ рисков.</li><li>Необходимо реализовать аутентификацию и управление&nbsp;Идентификациями.</li><li>Необходимо реализовать&nbsp;авторизацию&nbsp;доступа к ресурсам.</li><li>Необходимо обеспечение подотчетности.</li><li>Необходимо гарантирование доступности всех сервисов системы.</li><li>Необходимо управление конфигурацией.</li><li>Необходимо управление инцидентами.</li></ol><p>&nbsp;</p>', 0, 1, '2024-05-22 14:58:35', '2024-06-09 21:36:11', 9);
INSERT INTO `section_steps` VALUES (3, '<h2>Задачи информационной безопасности</h2><p>Основными задачами системы ИБ являются:</p><ul><li>своевременное выявление и устранение угроз безопасности и ресурсам, причин и условий, способствующих нанесению финансового, материального и морального ущерба его интересам;</li><li>создание механизма и условий оперативного реагирования на угрозы безопасности и проявлению негативных тенденций в функционировании предприятия;</li><li>эффективное пресечение посягательств на ресурсы и угроз персоналу на основе правовых, организационных и инженерно-технических мер и средств обеспечения безопасности;</li><li>создание условий для максимально возможного возмещения и локализации наносимого ущерба неправомерными действиями физических и юридических лиц, ослабление негативного влияния последствий нарушения безопасности на достижение целей организации.</li></ul><p>Понятие информационной безопасности в узком смысле этого слова подразумевает: надежность работы компьютера; сохранность ценных данных; защиту информации от внесения в нее изменений неуполномоченными лицами; сохранение тайны переписки в электронной связи.</p><h2>Основные цели информационной безопасности</h2><p>Использование систем информационной безопасности ставит перед собой конкретные задачи по сохранению ключевых характеристик информации и обеспечивает:</p><ul><li><strong>конфиденциальность данных </strong>– доступ есть только у лиц, имеющих на это полномочия;</li><li><strong>доступность </strong>информационных систем с находящимися в них данными конкретным пользователям, у которых есть право доступа к таким сведениям;</li><li><strong>целостность</strong> данных предполагает блокировку несанкционированного изменения информации;</li><li><strong>подлинность</strong> – полнота и общая точность информации;</li><li><strong>неотказуемость </strong>– возможность определить источник или авторство информации.&nbsp;</li></ul><p><strong>Главная цель систем информационной безопасности – гарантия защиты данных от внешних и внутренних угроз.</strong></p><p>Для обеспечения в информационной системе полной конфиденциальности применяются <strong>четыре метода, актуальных для любого формата информации:</strong></p><ul><li>ограничение или полное закрытие доступа к информации;</li><li>шифрование;</li><li>дробление на части и разрозненное хранение;</li><li>скрытие самого факта существования информации.</li></ul>', 0, 2, '2024-06-09 21:36:14', '2024-06-09 21:36:30', 9);
INSERT INTO `section_steps` VALUES (4, '', 0, 1, '2024-06-13 13:54:08', '2024-06-13 13:54:08', 10);
INSERT INTO `section_steps` VALUES (5, '<p>Введение в модуль (цели, задачи, план лекции и результаты модуля); ключевые понятия и характеристики.</p><figure class=\"media\"><div data-oembed-url=\"https://www.youtube.com/watch?v=ovg2il6DyKU\"><div style=\"position: relative; padding-bottom: 100%; height: 0; padding-bottom: 56.2493%;\"><iframe src=\"https://www.youtube.com/embed/ovg2il6DyKU\" style=\"position: absolute; width: 100%; height: 100%; top: 0; left: 0;\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\"></iframe></div></div></figure>', 0, 1, '2024-06-16 19:45:42', '2024-06-16 19:46:45', 11);
INSERT INTO `section_steps` VALUES (6, '<p>Какие существуют угрозы в интернете, их разновидности и способы разоблачения.</p><p>&nbsp;</p>', 0, 1, '2024-06-16 19:49:54', '2024-06-16 19:50:03', 12);
INSERT INTO `section_steps` VALUES (7, '<p>Как научиться создавать самые надежные пароли без особых затруднений</p><figure class=\"media\"><div data-oembed-url=\"https://youtu.be/gER8ATRSYQU\"><div style=\"position: relative; padding-bottom: 100%; height: 0; padding-bottom: 56.2493%;\"><iframe src=\"https://www.youtube.com/embed/gER8ATRSYQU\" style=\"position: absolute; width: 100%; height: 100%; top: 0; left: 0;\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\"></iframe></div></div></figure>', 0, 1, '2024-06-16 19:53:18', '2024-06-16 19:53:49', 13);
INSERT INTO `section_steps` VALUES (8, '<p>Как научиться создавать самые надежные пароли без особых затруднений. Продолжение</p><figure class=\"media\"><div data-oembed-url=\"https://youtu.be/B4nO_Gxl5vs\"><div style=\"position: relative; padding-bottom: 100%; height: 0; padding-bottom: 56.2493%;\"><iframe src=\"https://www.youtube.com/embed/B4nO_Gxl5vs\" style=\"position: absolute; width: 100%; height: 100%; top: 0; left: 0;\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\"></iframe></div></div></figure>', 0, 2, '2024-06-16 19:53:53', '2024-06-16 19:54:09', 13);
INSERT INTO `section_steps` VALUES (9, '<p>Подтверждение пароля – основная необходимая информация об этом.</p><figure class=\"media\"><div data-oembed-url=\"https://youtu.be/5PtPK0fq5lo\"><div style=\"position: relative; padding-bottom: 100%; height: 0; padding-bottom: 56.2493%;\"><iframe src=\"https://www.youtube.com/embed/5PtPK0fq5lo\" style=\"position: absolute; width: 100%; height: 100%; top: 0; left: 0;\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\"></iframe></div></div></figure>', 0, 1, '2024-06-16 19:59:07', '2024-06-16 19:59:19', 14);
INSERT INTO `section_steps` VALUES (10, '<figure class=\"image\"><img src=\"31279a37-98de-4258-9fb5-35c730c05495.png\"></figure><p>123</p>', 0, 1, '2024-06-21 07:30:57', '2024-06-21 07:31:46', 15);
INSERT INTO `section_steps` VALUES (11, '<p>123</p>', 0, 2, '2024-06-21 07:31:07', '2024-06-21 07:31:09', 15);

-- ----------------------------
-- Table structure for sections
-- ----------------------------
DROP TABLE IF EXISTS `sections`;
CREATE TABLE `sections`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` tinyint(1) NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `courseId` int NULL DEFAULT NULL,
  `testId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courseId`(`courseId` ASC) USING BTREE,
  INDEX `testId`(`testId` ASC) USING BTREE,
  CONSTRAINT `sections_ibfk_3` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sections_ibfk_4` FOREIGN KEY (`testId`) REFERENCES `tests` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sections
-- ----------------------------
INSERT INTO `sections` VALUES (1, 'test section', 1, '2024-04-06 09:11:48', '2024-04-06 09:17:19', NULL, NULL);
INSERT INTO `sections` VALUES (2, 'Информационная безопасность', 1, '2024-04-06 09:16:34', '2024-04-06 09:27:37', NULL, NULL);
INSERT INTO `sections` VALUES (3, 'test section', 0, '2024-04-06 09:17:19', '2024-04-06 09:17:19', NULL, NULL);
INSERT INTO `sections` VALUES (4, 'test section', 0, '2024-04-06 09:18:31', '2024-04-06 09:18:31', NULL, NULL);
INSERT INTO `sections` VALUES (9, 'Безопасность в интернете', 0, '2024-05-22 14:58:35', '2024-06-09 21:41:12', 10, 8);
INSERT INTO `sections` VALUES (10, 'Тема1', 0, '2024-06-13 13:54:08', '2024-06-13 13:54:39', 11, 9);
INSERT INTO `sections` VALUES (11, 'Цифровые преступники', 0, '2024-06-16 19:45:42', '2024-06-16 19:46:50', 10, 10);
INSERT INTO `sections` VALUES (12, 'Другие угрозы', 0, '2024-06-16 19:49:54', '2024-06-16 19:50:33', 10, 11);
INSERT INTO `sections` VALUES (13, 'Первый уровень защиты. Создаем надежный пароль', 0, '2024-06-16 19:53:18', '2024-06-16 19:54:22', 12, 12);
INSERT INTO `sections` VALUES (14, 'Второй уровень защиты. Подтверждение пароля', 0, '2024-06-16 19:59:07', '2024-06-16 19:59:22', 12, 13);
INSERT INTO `sections` VALUES (15, 'Канцелярия', 0, '2024-06-21 07:30:57', '2024-06-21 07:31:02', 13, 1);

-- ----------------------------
-- Table structure for test_progresses
-- ----------------------------
DROP TABLE IF EXISTS `test_progresses`;
CREATE TABLE `test_progresses`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `completed` tinyint(1) NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `testId` int NULL DEFAULT NULL,
  `userId` int NULL DEFAULT NULL,
  `score` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `test_progresses_userId_testId_unique`(`testId` ASC, `userId` ASC) USING BTREE,
  INDEX `userId`(`userId` ASC) USING BTREE,
  CONSTRAINT `test_progresses_ibfk_46` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_progresses
-- ----------------------------
INSERT INTO `test_progresses` VALUES (1, 1, '2024-06-09 21:02:59', '2024-06-09 21:03:00', 8, 1, 1);
INSERT INTO `test_progresses` VALUES (2, 1, '2024-06-10 15:13:39', '2024-06-10 15:27:45', 8, 4, 0);
INSERT INTO `test_progresses` VALUES (3, 1, '2024-06-10 21:19:14', '2024-06-10 21:19:16', 8, 5, 3);
INSERT INTO `test_progresses` VALUES (4, 1, '2024-06-20 21:26:13', '2024-06-20 21:26:13', 12, 1, 4);
INSERT INTO `test_progresses` VALUES (5, 1, '2024-06-21 07:34:27', '2024-06-21 07:34:27', 1, 9, 1);
INSERT INTO `test_progresses` VALUES (6, 1, '2024-06-23 19:17:57', '2024-06-23 19:17:57', 10, 1, 0);
INSERT INTO `test_progresses` VALUES (7, 1, '2024-06-23 19:18:11', '2024-06-23 19:18:11', 11, 1, 0);

-- ----------------------------
-- Table structure for tests
-- ----------------------------
DROP TABLE IF EXISTS `tests`;
CREATE TABLE `tests`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` tinyint(1) NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tests
-- ----------------------------
INSERT INTO `tests` VALUES (1, 'Тестовый тест 12345', 0, '2024-04-06 11:17:18', '2024-06-21 07:32:15');
INSERT INTO `tests` VALUES (2, '2', 0, '2024-05-01 14:38:26', '2024-05-01 14:56:32');
INSERT INTO `tests` VALUES (3, '3', 0, '2024-05-01 14:38:35', '2024-05-01 14:56:35');
INSERT INTO `tests` VALUES (4, '4', 0, '2024-05-01 14:38:47', '2024-05-01 14:56:38');
INSERT INTO `tests` VALUES (5, '5', 0, '2024-05-01 14:38:49', '2024-05-01 14:56:41');
INSERT INTO `tests` VALUES (6, '6', 0, '2024-05-01 14:38:50', '2024-05-01 14:56:44');
INSERT INTO `tests` VALUES (8, 'Информационная безопасность', 0, '2024-05-22 18:45:47', '2024-06-09 21:36:47');
INSERT INTO `tests` VALUES (9, 'й', 0, '2024-06-13 13:54:39', '2024-06-13 13:54:46');
INSERT INTO `tests` VALUES (10, 'Цифровые преступники', 0, '2024-06-16 19:46:50', '2024-06-16 19:47:03');
INSERT INTO `tests` VALUES (11, 'Другие угрозы', 0, '2024-06-16 19:50:33', '2024-06-16 19:50:40');
INSERT INTO `tests` VALUES (12, 'Первый уровень защиты', 0, '2024-06-16 19:54:21', '2024-06-16 19:54:43');
INSERT INTO `tests` VALUES (13, 'Второй уровень защиты', 0, '2024-06-16 19:59:22', '2024-06-16 19:59:39');

-- ----------------------------
-- Table structure for user_departments
-- ----------------------------
DROP TABLE IF EXISTS `user_departments`;
CREATE TABLE `user_departments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `departmentId` int NULL DEFAULT NULL,
  `userId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_departments_userId_departmentId_unique`(`departmentId` ASC, `userId` ASC) USING BTREE,
  INDEX `userId`(`userId` ASC) USING BTREE,
  CONSTRAINT `user_departments_ibfk_31` FOREIGN KEY (`departmentId`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_departments_ibfk_32` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_departments
-- ----------------------------
INSERT INTO `user_departments` VALUES (1, '2024-06-21 07:32:38', '2024-06-21 07:32:38', 1, 1);
INSERT INTO `user_departments` VALUES (2, '2024-06-21 07:33:47', '2024-06-21 07:33:47', 1, 9);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `surname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `patronymic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` enum('ADMIN','USER','MODERATOR') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'USER',
  `deleted` tinyint(1) NULL DEFAULT 0,
  `profile_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'default.png',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'ivan', 'Иванов ', '', 'ivan@gmail.com', 'U2FsdGVkX1+ozYNTR2nx6mGkz/h2mOnint8n8goK3fE=', 'ADMIN', 0, 'userAvatars/default.png', '2024-03-20 21:25:25', '2024-06-23 20:06:44', '+7 (213) 132-21-31');
INSERT INTO `users` VALUES (2, 'test23', 'Иванов', 'рядовой', 'tarasovmaks19@gmail.com', 'U2FsdGVkX18Js9Llw2pCPMJ5/Q/6ICHMvrTFIdoS9j4=', 'ADMIN', 0, 'userAvatars/default.png', '2024-03-21 15:48:47', '2024-06-23 20:06:30', '+7 (321) 123-12-33');
INSERT INTO `users` VALUES (3, 'Николай', 'Ашапатов', NULL, 'nikolayashapatov@gmail.com', 'U2FsdGVkX1+c59xuFk91EEqynDl+fGSbManv1GQmh30=', 'ADMIN', 0, 'userAvatars/default.png', '2024-05-19 01:51:05', '2024-06-23 12:04:46', '+79999999999');
INSERT INTO `users` VALUES (4, 'a', 'dasd', 'рядовой', 'sdad', 'U2FsdGVkX19pNHbTLgzE5sqtuhPFmZTckBKtAYmE1uQ=', 'ADMIN', 0, 'userAvatars/default.png', '2024-06-10 15:07:24', '2024-06-23 12:04:51', '+79999999999');
INSERT INTO `users` VALUES (5, 'Иван', 'Иванов', '', 'example@gmail.com', 'U2FsdGVkX18UPAMuV33NINQ/M1B1rxBaI0nU/FL6Cag=', 'USER', 0, 'userAvatars/default.png', '2024-06-10 20:37:35', '2024-06-23 12:04:56', '+79999999999');
INSERT INTO `users` VALUES (6, '', '', NULL, '', 'U2FsdGVkX19NN2U7o4mrjnxLhQwSkbT081RYcyUhoZc=', 'USER', 0, 'userAvatars/default.png', '2024-06-13 15:48:07', '2024-06-23 12:05:01', '');
INSERT INTO `users` VALUES (7, '', '', NULL, '', 'U2FsdGVkX1/5f/uyFyBn06xMuHAiY8XRWol/1RrIhkA=', 'USER', 0, 'userAvatars/default.png', '2024-06-13 15:48:08', '2024-06-23 12:05:05', '');
INSERT INTO `users` VALUES (8, '', '', NULL, '', 'U2FsdGVkX19NX6wL3XaMaDNo+SxIEbH+I+Tgw6nFFqQ=', 'USER', 0, 'userAvatars/default.png', '2024-06-13 15:48:09', '2024-06-23 12:05:10', '');
INSERT INTO `users` VALUES (9, 'Евгений', 'Тарасов', NULL, 'frolov2004dima@gmail.com', 'U2FsdGVkX199DUellYUL/TtyIdaAW8KUN+pINAS33t0=', 'USER', 0, 'userAvatars/default.png', '2024-06-21 07:32:50', '2024-06-23 12:05:16', '+7 981 431 40 52');
INSERT INTO `users` VALUES (10, '', '', NULL, '', 'U2FsdGVkX1/m5g7E6AxUhKHSZ0Yl/TIsK5X991VtI2M=', 'USER', 0, 'userAvatars/default.png', '2024-06-22 17:49:12', '2024-06-23 12:05:26', '');

SET FOREIGN_KEY_CHECKS = 1;
