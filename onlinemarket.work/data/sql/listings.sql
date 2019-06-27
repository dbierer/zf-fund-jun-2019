-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 27, 2019 at 07:31 AM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.3.5-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zfcourse`
--

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `listings_id` int(10) UNSIGNED NOT NULL,
  `category` char(16) NOT NULL,
  `title` varchar(128) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_expires` timestamp NULL DEFAULT NULL,
  `description` varchar(4096) DEFAULT NULL,
  `photo_filename` varchar(1024) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(32) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `country` char(2) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `delete_code` char(16) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`listings_id`, `category`, `title`, `date_created`, `date_expires`, `description`, `photo_filename`, `contact_name`, `contact_email`, `contact_phone`, `city`, `country`, `price`, `delete_code`) VALUES
(1, 'beauty', 'Classic Cuts', '2013-08-16 20:43:05', NULL, 'Sed magna tellus, consectetur vel luctus id, viverra eget mi. Mauris rutrum est lobortis turpis vehicula dapibus. Nam fringilla luctus felis, nec placerat massa rutrum eget. Phasellus at ante at justo gravida accumsan. Vestibulum gravida viverra erat, id ornare elit tincidunt mattis. Morbi nulla massa, pulvinar ac auctor sed, porttitor id risus. Nulla eu interdum risus. Nam semper aliquet velit, at varius nibh scelerisque ullamcorper. Vestibulum lectus justo, fermentum a sagittis pellentesque, luctus vitae tellus.', '/images/beauty/beauty_classic_cuts.png', 'Jake Conner', 'jake.conner@digisouth.com', '+91 721-706-2109', 'Amravati', 'IN', '4068.68', NULL),
(2, 'beauty', 'Discount Lipstick', '2013-03-27 01:41:27', NULL, 'Duis viverra dapibus nunc vel egestas. In hac habitasse platea dictumst. Nunc scelerisque elementum tellus, id laoreet dui molestie id. In lacinia rhoncus ante, et elementum ipsum ornare vitae. Donec facilisis laoreet turpis, quis sagittis lacus vestibulum at. Nullam vel arcu in tortor ullamcorper mollis. Mauris mi orci, pretium et varius id, faucibus condimentum metus. Nunc a dolor diam, quis viverra tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tempor urna ac tortor placerat id mattis ipsum consectetur. Nunc et purus mi, ac lacinia turpis. Aenean tristique libero ac turpis hendrerit tincidunt sodales urna fermentum. Donec eleifend, elit in tempor vehicula, massa lectus vulputate ipsum, non imperdiet diam metus at libero. Vestibulum quis molestie orci. Integer non vulputate libero. Mauris elit elit, tempus in consectetur ac, hendrerit ac leo.', '/images/beauty/beauty_discount_on_lipstick.png', 'Phil Ayala', 'phil.ayala@telewest.com', '+1 678-833-8754', 'Atlanta', 'US', '8774.74', NULL),
(3, 'beauty', 'Handmade Jewelry', '2013-05-05 07:18:44', NULL, 'Nam tempor leo non risus blandit lobortis. Quisque vestibulum tellus ac justo iaculis non semper neque congue. Nam fermentum tincidunt turpis, vel tincidunt tellus cursus sit amet. Praesent a nulla quis mauris suscipit tincidunt. Sed porttitor elementum suscipit. Aliquam erat volutpat. Aliquam fringilla congue tincidunt. Integer ac arcu nec purus bibendum fermentum. Curabitur neque nulla, ultrices eget hendrerit volutpat, viverra quis nunc. Donec nisl risus, tempor id porttitor non, pellentesque vitae sem. Nulla facilisi.', '/images/beauty/beauty_karthikeyan_ruby_flatmix.png', 'Alfred Cohen', 'alfred.cohen@bellcon.net', '+55 11-946-6214', 'Santo Andr', 'BR', '1667.63', NULL),
(4, 'beauty', 'Muga Makeup', '2013-04-25 00:23:46', NULL, 'Donec ac libero magna, ut cursus turpis. Fusce libero massa, volutpat non malesuada a, commodo id elit. In a dui sem, eu lacinia elit. Sed pharetra lacinia risus ultricies tincidunt. Integer scelerisque dui in ipsum vehicula quis suscipit sapien dictum. Proin ullamcorper egestas adipiscing. Sed quis nisi laoreet odio feugiat pulvinar nec ac purus. Nulla volutpat porta justo quis bibendum. Praesent a quam ut libero porta interdum. Cras eu lectus neque, et mollis enim. Pellentesque non mollis sem. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean a sollicitudin felis.', '/images/beauty/beauty_Muga_Make_up.png', 'Darren Mayo', 'darren.mayo@mediacentral.net', '+91 6466-627-224', 'Kishanganj', 'IN', '2013.95', NULL),
(5, 'entertainment', 'Disco Ball Remix by Merlin', '2013-04-17 17:23:33', NULL, 'Nam leo odio, sollicitudin ac lobortis eu, luctus a quam. Aliquam aliquam ullamcorper elementum. Curabitur vehicula diam a lorem dapibus in pretium lorem tristique. Integer vitae nibh id elit auctor vulputate. Morbi aliquam est ut eros aliquam eu auctor est consequat. Donec viverra, nunc ut pretium pretium, ante velit dignissim nibh, bibendum tincidunt erat dui at lacus. Donec non quam at ligula tincidunt placerat. Proin augue dolor, lobortis in condimentum ut, suscipit quis eros. Cras justo leo, pretium at vulputate nec, placerat a diam. Quisque volutpat dui vel sapien fermentum bibendum. Morbi et metus ut mi interdum egestas. Nam dictum turpis at ipsum gravida volutpat. Nullam eget lorem vel tellus consectetur pellentesque fringilla at lorem. Integer volutpat blandit ante eu luctus. Integer pellentesque quam quis nulla ornare in sodales ipsum elementum. Donec et felis vel leo interdum scelerisque sed nec nisi. ', '/images/entertainment/entertainment_Disco_Ball_Remix_by_Merlin2525.png', 'Esteban Hines', 'esteban.hines@bellcentral.com', '+1 418-653-1146', 'Riviere Du Loup', 'CA', '5066.86', NULL),
(6, 'barter', 'Luggage', '2013-01-09 15:43:06', NULL, 'Luis Vitton designer luggage set, mint condition.  Will barter for a set of Wallis Snow Tires or any reasonable offer.', '/images/barter/barter_luggage.png', 'Herman Hyde', 'herman.hyde@telecentral.net', '+44 1709-728-550', 'Rotherham', 'GB', '9292.46', NULL),
(7, 'clothing', 'Discount Dresses -- Many Styles', '2013-01-19 12:59:16', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id mauris massa. Nam vel metus elit. Duis consectetur nisi ac felis porttitor volutpat. Donec consectetur odio nec turpis imperdiet at tempor velit facilisis. In velit mi, aliquam nec consectetur id, vehicula sed sapien. Maecenas semper arcu sit amet tortor bibendum viverra. Cras aliquam elit non velit tincidunt et eleifend ipsum cursus. Nulla pulvinar consequat lacus eget interdum.', '/images/clothing/clothing_dress.png', 'Buddy Stark', 'buddy.stark@teleeast.com', '+91 5564-729-851', 'Padrauna', 'IN', '1261.71', NULL),
(8, 'clothing', 'Original Indiana Jones Hat', '2013-09-25 02:54:55', NULL, 'Proin posuere egestas dictum. Nunc condimentum consectetur auctor. Donec eget nisl id tortor imperdiet fermentum. Proin auctor rhoncus velit quis commodo. Proin nisi ipsum, commodo a congue a, egestas vitae dolor. Donec pretium adipiscing urna, non scelerisque tortor pharetra sed. Praesent vitae dictum elit. Phasellus consectetur dignissim pellentesque. Morbi neque turpis, pretium ac suscipit sit amet, tempor at tortor.', '/images/clothing/clothing_indiana_jones_hat.png', 'Emil Freeman', 'emil.freeman@commcentral.net', '+1 812-148-1812', 'Evansville', 'US', '1234.00', NULL),
(9, 'clothing', 'Discount Jeans', '2013-03-11 02:39:08', NULL, 'Pellentesque non ligula id tortor varius sagittis. Donec ac ante massa, et ultrices metus. Vestibulum aliquet egestas nunc eu iaculis. Donec vel sapien lacus. Nullam elit mauris, facilisis eget aliquam a, lacinia quis odio. Morbi imperdiet pellentesque tristique. Phasellus mattis ligula eget neque laoreet iaculis. Aenean et consectetur ligula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam laoreet, enim ac luctus molestie, metus neque scelerisque nunc, a suscipit nibh velit id sem.', '/images/clothing/clothing_jeans.png', 'Isaac Patel', 'isaac.patel@mediasouth.com', '+31 30-428-9706', 'de Meern', 'NL', '8431.17', NULL),
(10, 'clothing', 'Red Hat', '2013-12-25 06:50:15', NULL, 'Sed enim lacus, mollis a blandit ac, convallis non nisl. Integer dolor ipsum, lacinia in adipiscing vitae, gravida sit amet arcu. Cras dignissim vehicula mi in tempus. Donec ut euismod lectus. Cras lectus sapien, tristique sed mollis at, tincidunt in nisi. Quisque sollicitudin, dui vitae cursus lobortis, lacus nibh scelerisque felis, eget lacinia lectus nibh et odio. Sed ut magna eu purus tristique imperdiet. Phasellus eleifend vestibulum metus id feugiat. Nullam pellentesque tincidunt mollis. Aenean auctor posuere malesuada. Integer hendrerit laoreet nunc eget rhoncus. Ut viverra lacinia est quis malesuada. Morbi ultrices rhoncus dictum. Praesent iaculis placerat suscipit.', '/images/clothing/clothing_red_hat.png', 'Ethan Chan', 'ethan.chan@mediasouth.net', '+91 6226-950-476', 'Sitamarhi', 'IN', '8370.72', NULL),
(11, 'clothing', 'Remi Inconnu Shoes', '2013-05-10 15:32:21', NULL, 'Proin posuere egestas dictum. Nunc condimentum consectetur auctor. Donec eget nisl id tortor imperdiet fermentum. Proin auctor rhoncus velit quis commodo. Proin nisi ipsum, commodo a congue a, egestas vitae dolor. Donec pretium adipiscing urna, non scelerisque tortor pharetra sed. Praesent vitae dictum elit. Phasellus consectetur dignissim pellentesque. Morbi neque turpis, pretium ac suscipit sit amet, tempor at tortor.', '/images/clothing/clothing_remi_inconnu_shoe.png', 'Armando Curry', 'armando.curry@commnorth.net', '+91 6782-949-471', 'Balasore', 'IN', '6560.08', NULL),
(12, 'clothing', 'Classic Keds Tennis Shoes', '2013-08-23 08:39:10', NULL, 'Donec ac libero magna, ut cursus turpis. Fusce libero massa, volutpat non malesuada a, commodo id elit. In a dui sem, eu lacinia elit. Sed pharetra lacinia risus ultricies tincidunt. Integer scelerisque dui in ipsum vehicula quis suscipit sapien dictum. Proin ullamcorper egestas adipiscing. Sed quis nisi laoreet odio feugiat pulvinar nec ac purus. Nulla volutpat porta justo quis bibendum. Praesent a quam ut libero porta interdum. Cras eu lectus neque, et mollis enim. Pellentesque non mollis sem. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean a sollicitudin felis.', '/images/clothing/clothing_shoe.png', 'Jimmy Gilbert', 'jimmy.gilbert@mediawest.com', '+91 7432-502-870', 'Jhalawar', 'IN', '7688.26', NULL),
(13, 'clothing', 'Grey Suit', '2013-06-18 18:24:06', NULL, 'Integer pharetra ipsum sed leo vehicula pellentesque sodales metus suscipit. Praesent mollis vestibulum mollis. Sed suscipit orci pellentesque lectus volutpat et fringilla nunc laoreet. Praesent pulvinar ullamcorper sem, eget sagittis nisi ornare quis. Nunc condimentum, massa ac sollicitudin pharetra, tellus metus mattis felis, nec feugiat metus tortor vitae urna. Nam id rutrum purus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', '/images/clothing/clothing_suit_grey.png', 'Ismael Gay', 'ismael.gay@telenorth.net', '+91 40-244-7621', 'Hyderabad', 'IN', '8761.07', NULL),
(14, 'clothing', 'T Shirts', '2013-09-05 20:57:50', NULL, 'Integer pharetra ipsum sed leo vehicula pellentesque sodales metus suscipit. Praesent mollis vestibulum mollis. Sed suscipit orci pellentesque lectus volutpat et fringilla nunc laoreet. Praesent pulvinar ullamcorper sem, eget sagittis nisi ornare quis. Nunc condimentum, massa ac sollicitudin pharetra, tellus metus mattis felis, nec feugiat metus tortor vitae urna. Nam id rutrum purus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', '/images/clothing/clothing_t_shirts.png', 'Byron Medina', 'byron.medina@belleast.net', '+233 22-579-8841', 'Tema', 'GH', '740.56', NULL),
(15, 'computer', '3.5 Inch Diskettes', '2013-04-06 23:45:15', NULL, 'Duis viverra dapibus nunc vel egestas. In hac habitasse platea dictumst. Nunc scelerisque elementum tellus, id laoreet dui molestie id. In lacinia rhoncus ante, et elementum ipsum ornare vitae. Donec facilisis laoreet turpis, quis sagittis lacus vestibulum at. Nullam vel arcu in tortor ullamcorper mollis. Mauris mi orci, pretium et varius id, faucibus condimentum metus. Nunc a dolor diam, quis viverra tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tempor urna ac tortor placerat id mattis ipsum consectetur. Nunc et purus mi, ac lacinia turpis. Aenean tristique libero ac turpis hendrerit tincidunt sodales urna fermentum. Donec eleifend, elit in tempor vehicula, massa lectus vulputate ipsum, non imperdiet diam metus at libero. Vestibulum quis molestie orci. Integer non vulputate libero. Mauris elit elit, tempus in consectetur ac, hendrerit ac leo.', '/images/computer/computer_3.5_diskettes.png', 'Marvin Bradford', 'marvin.bradford@telenorth.net', '+91 7642-344-727', 'Mandla', 'IN', '7419.58', NULL),
(16, 'computer', 'Slightly Used Cray-1 for Sale', '2013-10-18 19:02:33', NULL, 'Nam leo odio, sollicitudin ac lobortis eu, luctus a quam. Aliquam aliquam ullamcorper elementum. Curabitur vehicula diam a lorem dapibus in pretium lorem tristique. Integer vitae nibh id elit auctor vulputate. Morbi aliquam est ut eros aliquam eu auctor est consequat. Donec viverra, nunc ut pretium pretium, ante velit dignissim nibh, bibendum tincidunt erat dui at lacus. Donec non quam at ligula tincidunt placerat. Proin augue dolor, lobortis in condimentum ut, suscipit quis eros. Cras justo leo, pretium at vulputate nec, placerat a diam. Quisque volutpat dui vel sapien fermentum bibendum. Morbi et metus ut mi interdum egestas. Nam dictum turpis at ipsum gravida volutpat. Nullam eget lorem vel tellus consectetur pellentesque fringilla at lorem. Integer volutpat blandit ante eu luctus. Integer pellentesque quam quis nulla ornare in sodales ipsum elementum. Donec et felis vel leo interdum scelerisque sed nec nisi. ', '/images/computer/computer_cray_1.png', 'Merle Vang', 'merle.vang@mediawest.com', '+91 233-410-4288', 'Sangli', 'IN', '8800000.00', NULL),
(17, 'computer', 'HP Desktop Computer -- Base Unit', '2013-02-04 22:23:12', NULL, 'Aenean egestas, urna id interdum venenatis, tellus magna varius leo, sed laoreet urna turpis sit amet tortor. Curabitur molestie, ligula eu dapibus egestas, arcu ipsum egestas ante, tempor sodales lectus lacus eu odio. Aenean neque odio, viverra eu pharetra at, sollicitudin porta diam. Ut volutpat mattis mi. Etiam egestas luctus metus nec laoreet. Donec bibendum justo at ipsum tempor sit amet tincidunt nisl hendrerit. Maecenas lacinia convallis tincidunt. Maecenas dictum congue accumsan. Phasellus vel ante ac velit tempor tincidunt. Vivamus est dolor, lobortis a laoreet et, vulputate in nibh. In eget pretium ligula. Cras tristique fermentum mattis. Sed scelerisque varius rhoncus.', '/images/computer/computer_hp.png', 'Drew Melendez', 'drew.melendez@teleeast.com', '+91 761-936-9507', 'Jabalpur', 'IN', '234.00', NULL),
(18, 'computer', 'Laptop for Sale', '2013-06-05 01:44:13', NULL, 'Morbi et interdum tellus. Vivamus eu ipsum turpis, quis semper lacus. Duis sagittis elementum sem ut varius. Cras fringilla, neque dictum adipiscing lobortis, erat lorem volutpat felis, quis sagittis turpis diam ut quam. Praesent ac vestibulum mauris. Donec pulvinar iaculis justo, at vulputate sapien malesuada id. Duis sit amet neque nibh, non suscipit dolor. Vestibulum bibendum lorem libero. Phasellus vestibulum malesuada hendrerit. Vivamus euismod placerat tellus, id iaculis eros fringilla nec. Nullam viverra, lorem sed vehicula lobortis, diam mi gravida nulla, a laoreet mi leo suscipit velit. Sed velit eros, lobortis ac fermentum sed, lacinia a nunc. Duis neque nulla, interdum sit amet convallis sit amet, molestie quis libero. Curabitur rutrum risus consequat eros ullamcorper facilisis. Maecenas nisi arcu, malesuada quis rutrum non, eleifend at dui.', '/images/computer/computer_laptop.png', 'Emil Sawyer', 'emil.sawyer@commcon.com', '+33 2-860-0826', 'Rouen', 'FR', '439.00', NULL),
(19, 'computer', 'Original Compaq Luggable', '2013-07-15 19:11:28', NULL, 'Sed enim lacus, mollis a blandit ac, convallis non nisl. Integer dolor ipsum, lacinia in adipiscing vitae, gravida sit amet arcu. Cras dignissim vehicula mi in tempus. Donec ut euismod lectus. Cras lectus sapien, tristique sed mollis at, tincidunt in nisi. Quisque sollicitudin, dui vitae cursus lobortis, lacus nibh scelerisque felis, eget lacinia lectus nibh et odio. Sed ut magna eu purus tristique imperdiet. Phasellus eleifend vestibulum metus id feugiat. Nullam pellentesque tincidunt mollis. Aenean auctor posuere malesuada. Integer hendrerit laoreet nunc eget rhoncus. Ut viverra lacinia est quis malesuada. Morbi ultrices rhoncus dictum. Praesent iaculis placerat suscipit.', '/images/computer/computer_original_compaq.png', 'Anton Lewis', 'anton.lewis@mediacon.com', '+64 765-491-3440', 'Richmond', 'NZ', '999.00', NULL),
(20, 'household', 'Ikea Computer Desk', '2013-04-26 21:05:12', NULL, 'Morbi et interdum tellus. Vivamus eu ipsum turpis, quis semper lacus. Duis sagittis elementum sem ut varius. Cras fringilla, neque dictum adipiscing lobortis, erat lorem volutpat felis, quis sagittis turpis diam ut quam. Praesent ac vestibulum mauris. Donec pulvinar iaculis justo, at vulputate sapien malesuada id. Duis sit amet neque nibh, non suscipit dolor. Vestibulum bibendum lorem libero. Phasellus vestibulum malesuada hendrerit. Vivamus euismod placerat tellus, id iaculis eros fringilla nec. Nullam viverra, lorem sed vehicula lobortis, diam mi gravida nulla, a laoreet mi leo suscipit velit. Sed velit eros, lobortis ac fermentum sed, lacinia a nunc. Duis neque nulla, interdum sit amet convallis sit amet, molestie quis libero. Curabitur rutrum risus consequat eros ullamcorper facilisis. Maecenas nisi arcu, malesuada quis rutrum non, eleifend at dui.', '/images/household/household_computer_desk.png', 'Mario Wooten', 'mario.wooten@bellcon.net', '+1 867-706-3327', 'Wekweti', 'CA', '49.95', NULL),
(21, 'phones', 'Original Telefono Pubblico SIP', '2013-11-25 19:25:53', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id mauris massa. Nam vel metus elit. Duis consectetur nisi ac felis porttitor volutpat. Donec consectetur odio nec turpis imperdiet at tempor velit facilisis. In velit mi, aliquam nec consectetur id, vehicula sed sapien. Maecenas semper arcu sit amet tortor bibendum viverra. Cras aliquam elit non velit tincidunt et eleifend ipsum cursus. Nulla pulvinar consequat lacus eget interdum.', '/images/phones/phones_Telefono_Pubblico_SIP.png', 'Ava Gallagher', 'ava.gallagher@bellcon.net', '+234 2-162-9665', 'Ibadan', 'NG', '399.00', NULL),
(22, 'property', 'Mountainside Plot of Land for Sale', '2013-11-21 14:52:21', NULL, 'Donec ac libero magna, ut cursus turpis. Fusce libero massa, volutpat non malesuada a, commodo id elit. In a dui sem, eu lacinia elit. Sed pharetra lacinia risus ultricies tincidunt. Integer scelerisque dui in ipsum vehicula quis suscipit sapien dictum. Proin ullamcorper egestas adipiscing. Sed quis nisi laoreet odio feugiat pulvinar nec ac purus. Nulla volutpat porta justo quis bibendum. Praesent a quam ut libero porta interdum. Cras eu lectus neque, et mollis enim. Pellentesque non mollis sem. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean a sollicitudin felis.', '/images/property/property_Snowscape.png', 'Dollie Pitts', 'dollie.pitts@mediacon.net', '+7 475-582-9388', 'Tambov', 'RU', '1200000.00', NULL),
(23, 'sporting', 'Hot Air Balloon', '2013-05-26 12:22:59', NULL, 'Slightly used, a couple of dents in the basket, only crashed once.  A bargain at any price!', '/images/sporting/sporting_hot-air-baloon.png', 'Wilma Parker', 'wilma.parker@telecentral.net', '+55 55-229-4322', 'Uruguaiana', 'BR', '29000.00', NULL),
(24, 'sporting', 'Karate Lessons', '2013-02-01 03:32:33', NULL, 'Pellentesque non ligula id tortor varius sagittis. Donec ac ante massa, et ultrices metus. Vestibulum aliquet egestas nunc eu iaculis. Donec vel sapien lacus. Nullam elit mauris, facilisis eget aliquam a, lacinia quis odio. Morbi imperdiet pellentesque tristique. Phasellus mattis ligula eget neque laoreet iaculis. Aenean et consectetur ligula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam laoreet, enim ac luctus molestie, metus neque scelerisque nunc, a suscipit nibh velit id sem.', '/images/sporting/sporting_PackardJennings_Karate_girl_breaks_board.png', 'Ora Armstrong', 'ora.armstrong@telecon.net', '+1 830-540-5472', 'New Braunfels', 'US', '4876.22', NULL),
(25, 'transportation', 'Golf Cart', '2013-05-26 16:01:06', NULL, 'Nam porttitor metus quis eros imperdiet fermentum. Quisque scelerisque pellentesque mauris, ultricies sagittis tellus ultrices aliquam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tempus accumsan lectus et pharetra. Donec sed risus eu mauris eleifend fermentum. Fusce ipsum arcu, accumsan ac accumsan sed, consequat sed dui. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', '/images/transportation/transportation_johnny_automatic_golf_cart.png', 'Jerri Eaton', 'jerri.eaton@mediawest.com', '+91 7592-309-198', 'Vidisha', 'IN', '2999.00', NULL),
(26, 'transportation', 'Used Ocean Liner', '2013-05-28 03:51:12', NULL, 'Fantastic bargain for the discerning buyer.  Only been around the world once.  Mainly used by a member of the Royal Family on Sundays.', '/images/transportation/transportation_johnny_automatic_ocean_liner.png', 'Leanna Pruitt', 'leanna.pruitt@belleast.net', '+7 41322-399-919', 'Magadan', 'RU', '299000000.00', NULL),
(27, 'transportation', 'Syrena 105 for Sale', '2013-01-13 01:31:23', NULL, 'Mint condition.  Only driven by a grandmother on Sundays.', '/images/transportation/transportation_koconmus_Syrena_105.png', 'Chrystal Reed', 'chrystal.reed@bellcon.net', '+44 115-868-2599', 'Nottingham', 'GB', '14995.00', NULL),
(28, 'transportation', 'Non-Street-Legal Limited Edition Lotus Exige', '2013-01-17 10:31:32', NULL, 'Nam tempor leo non risus blandit lobortis. Quisque vestibulum tellus ac justo iaculis non semper neque congue. Nam fermentum tincidunt turpis, vel tincidunt tellus cursus sit amet. Praesent a nulla quis mauris suscipit tincidunt. Sed porttitor elementum suscipit. Aliquam erat volutpat. Aliquam fringilla congue tincidunt. Integer ac arcu nec purus bibendum fermentum. Curabitur neque nulla, ultrices eget hendrerit volutpat, viverra quis nunc. Donec nisl risus, tempor id porttitor non, pellentesque vitae sem. Nulla facilisi.', '/images/transportation/transportation_lotus.png', 'Reyna Holman', 'reyna.holman@bellnorth.com', '+91 6792-747-360', 'Baripada', 'IN', '69999.00', NULL),
(29, 'transportation', 'Skoda Fabia', '2013-08-22 13:02:04', NULL, 'Nam leo odio, sollicitudin ac lobortis eu, luctus a quam. Aliquam aliquam ullamcorper elementum. Curabitur vehicula diam a lorem dapibus in pretium lorem tristique. Integer vitae nibh id elit auctor vulputate. Morbi aliquam est ut eros aliquam eu auctor est consequat. Donec viverra, nunc ut pretium pretium, ante velit dignissim nibh, bibendum tincidunt erat dui at lacus. Donec non quam at ligula tincidunt placerat. Proin augue dolor, lobortis in condimentum ut, suscipit quis eros. Cras justo leo, pretium at vulputate nec, placerat a diam. Quisque volutpat dui vel sapien fermentum bibendum. Morbi et metus ut mi interdum egestas. Nam dictum turpis at ipsum gravida volutpat. Nullam eget lorem vel tellus consectetur pellentesque fringilla at lorem. Integer volutpat blandit ante eu luctus. Integer pellentesque quam quis nulla ornare in sodales ipsum elementum. Donec et felis vel leo interdum scelerisque sed nec nisi. ', '/images/transportation/transportation_ryanlerch_fabia_all_views.png', 'Rena Keller', 'rena.keller@telecentral.com', '+91 2462-469-437', 'Nanded', 'IN', '2999.00', NULL),
(30, 'wanted', 'Viking Longship Wanted', '2013-11-16 13:32:05', NULL, 'Must be in working order.  Urgent!  Must meet deadline for a few raids along the English coast.', '/images/wanted/wanted_GMcGlinn_Viking_Longship.png', 'Josie Morales', 'josie.morales@commwest.com', '+46 671-501-0054', 'Hoting', 'SE', '2122.36', NULL),
(31, 'general', 'Instant Camera', '2013-07-12 00:08:03', NULL, 'Morbi et interdum tellus. Vivamus eu ipsum turpis, quis semper lacus. Duis sagittis elementum sem ut varius. Cras fringilla, neque dictum adipiscing lobortis, erat lorem volutpat felis, quis sagittis turpis diam ut quam. Praesent ac vestibulum mauris. Donec pulvinar iaculis justo, at vulputate sapien malesuada id. Duis sit amet neque nibh, non suscipit dolor. Vestibulum bibendum lorem libero. Phasellus vestibulum malesuada hendrerit. Vivamus euismod placerat tellus, id iaculis eros fringilla nec. Nullam viverra, lorem sed vehicula lobortis, diam mi gravida nulla, a laoreet mi leo suscipit velit. Sed velit eros, lobortis ac fermentum sed, lacinia a nunc. Duis neque nulla, interdum sit amet convallis sit amet, molestie quis libero. Curabitur rutrum risus consequat eros ullamcorper facilisis. Maecenas nisi arcu, malesuada quis rutrum non, eleifend at dui.', '/images/general/general_instantcamera.png', 'Letitia West', 'letitia.west@telewest.net', '+1 606-294-1819', 'London', 'US', '5983.13', NULL),
(32, 'transportation', 'Restored Italian Streetcar from Milano', '2013-11-10 01:52:34', NULL, 'Duis viverra dapibus nunc vel egestas. In hac habitasse platea dictumst. Nunc scelerisque elementum tellus, id laoreet dui molestie id. In lacinia rhoncus ante, et elementum ipsum ornare vitae. Donec facilisis laoreet turpis, quis sagittis lacus vestibulum at. Nullam vel arcu in tortor ullamcorper mollis. Mauris mi orci, pretium et varius id, faucibus condimentum metus. Nunc a dolor diam, quis viverra tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tempor urna ac tortor placerat id mattis ipsum consectetur. Nunc et purus mi, ac lacinia turpis. Aenean tristique libero ac turpis hendrerit tincidunt sodales urna fermentum. Donec eleifend, elit in tempor vehicula, massa lectus vulputate ipsum, non imperdiet diam metus at libero. Vestibulum quis molestie orci. Integer non vulputate libero. Mauris elit elit, tempus in consectetur ac, hendrerit ac leo.', '/images/transportation/transportation_SteveLambert_Milan_Streetcar.png', 'Darcy Valentine', 'darcy.valentine@bellsouth.net', '+1 423-975-9608', 'Chattanooga', 'US', '149999.00', NULL),
(33, 'barter', 'Newly Fallen Snowflakes', '2013-01-04 14:55:04', NULL, 'Guaranteed fresh!  Recently fallen.  Make a snowball, make a snowman.  Surprise your friends.', '/images/barter/barter_snowflakes2.png', 'Ila Justice', 'ila.justice@telenorth.net', '+44 1189-533-365', 'Reading', 'UK', '22.50', NULL),
(34, 'entertainment', 'Theresa Knott Grand Piano', '2013-01-04 14:59:23', NULL, 'Full sized replica of a classic 9 foot long Steinway Grand Piano.  New manufacturing techniques results in drastically lower costs.  Quantities limited!  Get one while they last!  Buy one for a friend.  Everybody should have one in their living room!', '/images/entertainment/entertainment_TheresaKnott_piano.png', 'Dollie Pitts', 'dollie.pitts@mediacon.com', '+1 212-780-4726', 'New York', 'US', '19.99', NULL),
(36, 'household', 'Cheap Lightbulbs', '2013-01-11 14:08:11', NULL, 'Cheap lightbulbs designed to last exactly 99 days.  All purchases include a manufacturer\'s warranty of 3 months.  You can\'t go wrong!  Buy some for your in-laws.', '/images/household/household_lightbulb.png', 'Joe', 'joe@joe.com', '+1 555-666-7777', 'Aachen', 'DE', '0.01', '123456'),
(37, 'health', 'Effective Sleeping Course', '2013-01-12 09:55:48', NULL, 'This course will give you a foundation level understanding on how to sleep effectively.  See the complimentary course on Advanced Sleep Techniques.', '/images/health/health_sleeping.png', 'Nolan Somnia', 'nolan@bt.net', '+44 123-456-7890', 'Aix en Provence', 'FR', '1295.00', '123456'),
(38, 'property', 'Used City for Sale', '2013-01-12 10:22:28', '2013-02-11 10:22:28', 'Beautiful seaside city, slightly used, but mainly only on Sundays.  Will entertain any reasonable offer.  Must unload this city ASAP: council taxes are due!', '/images/property/property_city.png', 'Eric Ritchie', 'eric@zend.com', '+44 1224-888-999', 'Aberdeen', 'GB', '2999999.00', '123456 ABCD'),
(41, 'free', 'Free Money', '2013-01-12 21:53:18', '2013-01-13 21:53:18', 'Free money, just 9.99.  What a bargain!', '/images/free/free_bag_of_money.png', 'Jacques Gratuit', 'jfree@free.com', '+33 222-333-4444', 'Aix en Provence', 'FR', '9.99', '123456'),
(43, 'health', 'Exercise Bicycle', '2013-01-13 18:12:26', '2013-01-20 18:12:26', 'Exercise bike for sale.  Mint condition.  Mainly used on Sundays.', '/images/health/health_exercise_bike.png', 'Julia Roberts', 'jroberts@someplace.net', '+61 399-888-7777', 'Melbourne', 'AU', '299.99', '123456'),
(44, 'household', 'Gas Mask for Sale', '2013-01-13 19:32:04', NULL, 'Used only one time: worked pretty well.  No household should be without one!', '/images/household/household_gas_mask.png', 'Irene Smith', 'irene@bellwest.com', '+1 555-666-7777', 'Aachen', 'DE', '129.00', '123456'),
(45, 'wanted', 'Al Capone', '2013-01-14 16:14:12', NULL, 'It is believed that the notorious gangster Al Capone has been somehow brought back from the dead, and is once again on the loose, terrorizing innocent citizens.  Any person coming forward with information leading to his re-arrest will be rewarded with the princely sum of $599.', '/images/wanted/wanted_al_capone.png', 'Elliott Ness', 'eness@untouchables.gov', '+1 312-555-1212', 'Chicago', 'US', '599.00', '123456'),
(47, 'entertainment', 'Real Live Exploding Black Bombs', '2013-01-17 11:09:09', '2013-02-16 11:09:09', 'Be the life of the party. Amaze your friends.  This explosive new form of entertainment will leave them talking about the event for years to come.  Every kid should have one!', '/images/entertainment/entertainment_black_bomb.png', 'Boris Badanov', 'boris@rocky.n.bullwinkle.com', '+7 495-555-6666', 'Moscow', 'RU', '9.99', '123456'),
(49, 'free', 'Free City', '2013-01-25 13:20:18', NULL, 'How would you like to own the beautiful city of Paris, France?  For a limited time only, this city is on offer for the incredible price of 100% absolutely free!  Contact owner for details.  [Fine print: there is a minor matter of a few billion Euro in outstanding taxes, but that\'s life, right?)', '/images/free/free_city.png', 'Julius Caesar', 'julius@romanempire.com', '+0 000-000-0000', 'Paris', ' F', '0.00', '123456'),
(53, 'wanted', 'World Peace', '2017-06-20 07:52:05', '2017-06-20 07:52:05', 'World peace or peace on Earth is an ideal state of freedom, peace, and happiness among and within all nations and people. This ideal of world non-violence provides a basis for peoples and nations to willingly cooperate, either voluntarily or by virtue of a system of governance that prevents warfare. While different cultures, religions, philosophies, and organizations may have differing concepts about how such an ideal state might come about, they have in common this ideal of a cessation of all hostility amongst all humanity.', '/images/wanted/wanted_world_peace.jpg', 'Mr. Sane', 'somebody.sane@whats.this.world.coming.to.com', '00-999-888-7777', 'Paris', 'FR', '999999999.99', '12345'),
(54, 'wanted', 'Last Known Address of J Caesar', '2017-06-21 05:24:57', '2017-07-20 22:24:57', 'The scoundrel was last seen fleeing in a boat heading for Sicily.  Would pay more but he took all the money in our treasury.  If you hear rumors that this individual was murdered, don\'t believe it for a second ... and DON\'T BLAME ME.  You should really be asking about that  Calpurnia.', '/images/wanted/wanted_la_clemence_de_caesar.jpg', 'Cleopatrat', 'cleo@philopator.com', '+00-000-000-0000', 'Cairo', 'EG', '99.99', '12345'),
(57, 'barter', 'Bend It Like Beckham', '2017-11-06 17:04:47', '2017-11-07 17:04:47', 'Willing to trade used footballer for younger model.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/020607beckhamPK.jpg/220px-020607beckhamPK.jpg', 'Victoria', 'vicky@not.so.spicy.com', '+44-888-999-0000', 'London', 'UK', '99.99', '12345'),
(60, 'barter', 'Swap Mall for Airport', '2018-05-24 04:03:13', '2018-05-25 04:03:13', 'Want to swap slightly used shopping mall for a *real* airport.  Doggoned developer sold me this piece of trash and swore up and down it was an airport terminal.  @#$&#@&*#*$&#*#$)', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Terminal_21_Atrium_2018.jpg/250px-Terminal_21_Atrium_2018.jpg', 'M. Shopping', 'shops@alotofstuff.com', '111-111-1111', 'Korat', 'TH', '99.99', '12345'),
(64, 'garden', 'Live Volcano', '2018-06-22 08:32:45', '2018-07-22 01:32:45', 'Live volcano for sale.  Perfect natural source of energy.  Provides so much backlighting you won\'t need to turn on the lights at night.  Once this beauty is installed you\'ll be the talk of the neighborhood.  But not to worry: soon you won\'t have any neighbors, trust us.  Bargain price.  You will need to provide a means of transporting it.', '/images/garden/volcano.jpg', 'NGS', 'got_a_live_one@ngs.gov', '+1 111-111-1111', 'Hilo HI', 'US', '99.99', '12345'),
(65, 'barter', 'Sled Dogs', '2018-06-22 15:42:02', '2018-06-23 08:42:02', 'Want to trade a Pomeranian for a *real* sled dog.  Bought this one over the Internet ... and the doggone thing (uh ... pardon the pun) just plain never grew up!', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Sparkles_Cute.jpg/220px-Sparkles_Cute.jpg', 'S. Kimo', 'itz@very.cold.outside.us', '+1-907-459-2700', 'Fairbanks AK', 'US', '99.99', '12345'),
(66, 'free', 'Free Hurricane', '2018-09-12 07:48:34', '2018-10-12 07:48:34', 'Large hurricane on offer.  Certified by the White House in Washington, DC to be \"very wet\" and having \"lots of water\".  You must provide own transport.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Hurricane_Isabel_from_ISS.jpg/300px-Hurricane_Isabel_from_ISS.jpg', 'Florence', 'hurricane@very.wet.gov', '111-111-1111', 'Charleston SC', 'US', '99.99', '12345'),
(68, 'clothing', 'Hand Warmer', '2018-09-27 06:29:29', '2018-10-04 06:29:29', 'Elegant matching vest and trousers.  Serves as hand warmer.  Be the envy of your friends.  Rule the neighborhood.  Bargain price.  Must sell before heading off to Elba.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Jacques-Louis_David_-_The_Emperor_Napoleon_in_His_Study_at_the_Tuileries_-_Google_Art_Project.jpg/220px-Jacques-Louis_David_-_The_Emperor_Napoleon_in_His_Study_at_the_Tuileries_-_Google_Art_Project.jpg', 'The Napster', 'n@bon.apart.fr', '+33-444-555-6666', 'Paris', 'FR', '9.99', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`listings_id`),
  ADD KEY `title` (`title`),
  ADD KEY `category` (`category`),
  ADD KEY `delete_code` (`delete_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `listings_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;