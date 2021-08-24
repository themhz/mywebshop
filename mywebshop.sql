-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 24, 2021 at 11:31 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00"; 


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mywebshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zipcode` varchar(45) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`) VALUES
(1, 0, 'Languages'),
(2, 1, 'Java'),
(3, 1, 'Python'),
(4, 1, 'Artificial Inteligence'),
(5, 1, 'PHP'),
(6, 1, 'C#'),
(7, 1, 'Css'),
(8, 1, 'Javascript'),
(9, 1, 'Html'),
(10, 1, 'SQL'),
(11, 2, 'Object oriented patterns');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `payment_method` int(11) DEFAULT NULL,
  `shipment_method` int(11) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

DROP TABLE IF EXISTS `orders_detail`;
CREATE TABLE IF NOT EXISTS `orders_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `soldprice` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
CREATE TABLE IF NOT EXISTS `payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `descr` varchar(1000) DEFAULT NULL,
  `fee` float DEFAULT NULL,
  `regdate` date DEFAULT NULL,
  `customdetails` varchar(2000) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `regdate`) VALUES
(1, 'Σύνοψη του βιβλίου \"Διαδικτυακός προγραμματισμός C', 'Το βιβλίο απευθύνεται στους φοιτητές και σπουδαστές πανεπιστημιακών τμημάτων και ΤΕΙ που έχουν σχέση με την Κοινωνία της Πληροφορίας (Προγραμματιστές, Αναλυτές, Μηχανικούς Λογισμικού) και σε φοιτητές και σπουδαστές που η C# και το .ΝΕΤ κρίνεται απαραίτητο εργαλείο στην ειδικότητά τους (π.χ. τμήματα Μαθηματικών, Φυσικής, Μηχανολόγων, Πολιτικών Μηχανικών, ΜΜΕ, Ανώτατες Στρατιωτικές Σχολές κ.λπ.). Απευθύνεται παράλληλα και σε επαγγελματίες μηχανικούς υπολογιστών που πρέπει να εκσυγχρονίσουν τις γνώσεις τους σε θέματα Πληροφορικής και ειδικότερα στο διαδικτυακό προγραμματισμό, κάνοντας το πέρασμα από την JAVA στη C#.', '36.00', 'book1.jpg', NULL),
(2, 'Απαντήσεις στα προβλήματα της C', 'Στο βιβλίο αυτό θα βρείτε συγκεντρωμένες τις απαντήσεις στις ασκήσεις του βιβλίου \"Η γλώσσα προγραμματισμού C\" των Kernigan και Ritchie. Ο συνδυασμός των δύο αυτών βιβλίων αποτελεί ιδανική λύση για κάθε σειρά μαθημάτων που αφορούν τη γλώσσα C.', '12.00', 'book2.jpg', NULL),
(3, 'PHP Cookbook', 'Want to understand a certain PHP programming technique? Or learn how to accomplish a particular task? This cookbook is the first place to look. With more than 350 code-rich recipes revised for PHP 5.4 and 5.5, this third edition provides updated solutions for generating dynamic web content - everything from using basic data types to querying databases, and from calling RESTful APIs to testing and securing your site. Each recipe includes code solutions that you can freely use, along with a discussion of how and why they work. Whether you\'re an experienced PHP programmer or coming to PHP from another language, this book is an ideal on-the-job resource. You\'ll find recipes to help you with: Basic data types: strings, numbers, arrays, and dates and times Program building blocks: variables, functions, classes, and objects Web programming: cookies, forms, sessions, and authentication Database access using PDO, SQLite, and other extensions RESTful API clients and servers, including HTTP, XML, and OAuth Key concepts: email, regular expressions, and graphics creation Designing robust applications: security and encryption, error handling, debugging and testing, and performance tuning Files, directories, and PHP\'s Command Line Interface Libraries and package managers such as Composer and PECL', '58.00', 'book3.jpg', NULL),
(4, 'Μάθετε Ajax, Javascript και PHP', 'Με το βιβλίο αυτό μπορείτε σε πολύ λίγο χρόνο να μάθετε πώς να χρησιμοποιείτε την Ajax, την JavaScript και την PHP για να δημιουργείτε διαδραστικές διασυνδέσεις στις εφαρμογές σας Web, συνδυάζοντας αυτές τις δυναμικές τεχνολογίες. Xρησιμοποιώντας μια άμεση, βήμα προς βήμα προσέγγιση, κάθε κεφάλαιο του βιβλίου βασίζεται στις γνώσεις που αποχτήσατε στα προγούμενα και τις επαυξάνει, επιτρέποντάς σας να μάθετε τα ουσιώδη του προγραμματισμού σε Ajax με JavaScript, PHP και τις σχετικές τεχνολογίες, αρχίζοντας από την αρχή.', '19.00', 'book4.jpg', NULL),
(5, 'SQL For Dummies', 'Uncover the secrets of SQL and start building better relational databases today! This fun and friendly guide will help you demystify database management systems so you can create more powerful databases and access information with ease. Updated for the latest SQL functionality, SQL For Dummies, 8th Edition covers the core SQL language and shows you how to use SQL to structure a DBMS, implement a database design, secure your data, and retrieve information when you need it. Includes new enhancements of SQL:2011, including temporal data functionality which allows you to set valid times for transactions to occur and helps prevent database corruption Covers creating, accessing, manipulating, maintaining, and storing information in relational database management systems like Access, Oracle, SQL Server, and MySQL Provides tips for keeping your data safe from theft, accidental or malicious corruption, or loss due to equipment failures and advice on eliminating errors in your work Don\'t be daunted by database development anymore - get SQL For Dummies, 8th Edition, and you\'ll be on your way to SQL stardom.', '29.00', 'book5.jpg', NULL),
(6, 'Learning SQL', 'As data floods into your company, you need to put it to work right away-and SQL is the best tool for the job. With the latest edition of this introductory guide, author Alan Beaulieu helps developers get up to speed with SQL fundamentals for writing database applications, performing administrative tasks, and generating reports. You\'ll find new chapters on SQL and big data, analytic functions, and working with very large databases. Each chapter presents a self-contained lesson on a key SQL concept or technique using numerous illustrations and annotated examples. Exercises let you practice the skills you learn. Knowledge of SQL is a must for interacting with data. With Learning SQL, you\'ll quickly discover how to put the power and flexibility of this language to work. Move quickly through SQL basics and several advanced features Use SQL data statements to generate, manipulate, and retrieve data Create database objects, such as tables, indexes, and constraints with SQL schema statements Learn how datasets interact with queries; understand the importance of subqueries Convert and manipulate data with SQL\'s built-in functions and use conditional logic in data statements', '58.00', 'book6.jpg', NULL),
(7, 'JavaScript & JQuery', 'Learn JavaScript and jQuery a nicer way This full-color book adopts a visual approach to teaching JavaScript & jQuery, showing you how to make web pages more interactive and interfaces more intuitive through the use of inspiring code examples, infographics, and photography. The content assumes no previous programming experience, other than knowing how to create a basic web page in HTML & CSS. You\'ll learn how to achieve techniques seen on many popular websites (such as adding animation, tabbed panels, content sliders, form validation, interactive galleries, and sorting data).. Introduces core programming concepts in JavaScript and jQuery Uses clear descriptions, inspiring examples, and easy-to-follow diagrams Teaches you how to create scripts from scratch, and understand the thousands of JavaScripts, JavaScript APIs, and jQuery plugins that are available on the web Demonstrates the latest practices in progressive enhancement, cross-browser compatibility, and when you may be better off using CSS3 If you\'re looking to create more enriching web experiences and express your creativity through code, then this is the book for you. This book is also available as part of a set in hardcover - Web Design with HTML, CSS, JavaScript and jQuery, 9781119038634 - and in softcover - Web Design with HTML, CSS, JavaScript and jQuery, 9781118907443.', '40.00', 'book7.jpg', NULL),
(8, 'JavaScript with Promises', 'Asynchronous JavaScript is everywhere, whether you\'re using Ajax, AngularJS, Node.js, or WebRTC. This practical guide shows intermediate to advanced JavaScript developers how Promises can help you manage asynchronous code effectively-including the inevitable flood of callbacks as your codebase grows. You\'ll learn the inner workings of Promises and ways to avoid difficulties and missteps when using them. The ability to asynchronously fetch data and load scripts in the browser broadens the capabilities of JavaScript applications. But if you don\'t understand how the async part works, you\'ll wind up with unpredictable code that\'s difficult to maintain. This book is ideal whether you\'re new to Promises or want to expand your knowledge of this technology. Understand how async JavaScript works by delving into callbacks, the event loop, and threading Learn how Promises organize callbacks into discrete steps that are easier to read and maintain Examine scenarios you\'ll encounter and techniques you can use when writing real-world applications Use features in the Bluebird library and jQuery to work with Promises Learn how the Promise API handles asynchronous errors Explore ECMAScript 6 language features that simplify Promise-related code', '19.00', 'book8.jpg', NULL),
(9, 'Advanced Game Design with HTML5 and JavaScript', 'How do you make a video game? Advanced Game Design with HTML5 and JavaScript is a down to earth education in how to make video games from scratch, using the powerful HTML5 and JavaScript technologies. This book is a point-by-point round up of all the essential techniques that every game designer needs to know. You\'ll discover how to create and render game graphics, add interactivity, sound, and animation. You\'ll learn how to build your own custom game engine with reusable components so that you can quickly develop games with maximum impact and minimum code. You\'ll also learn the secrets of vector math and advanced collision detection techniques, all of which are covered in a friendly and non-technical manner. You\'ll find detailed working examples, with hundreds of illustrations and thousands of lines of source code that you can freely adapt for your own projects. All the math and programming techniques are elaborately explained and examples are open-ended to encourage you to think of original ways to use these techniques in your own games. You can use what you learn in this book to make games for desktops, mobile phones, tablets or the Web. Advanced Game Design with HTML5 and JavaScript is a great next step for experienced programmers or ambitious beginners who already have some JavaScript experience, and want to jump head first into the world of video game development. It\'s also great follow-up book for readers of Foundation Game Design with HTML5 and JavaScript (by the same author) who want to add depth and precision to their skills. The game examples in this book use pure JavaScript, so you can code as close to the metal as possible without having to be dependent on any limiting frameworks or game engines. No libraries, no dependencies, no third-party plugins: just you, your computer, and the code. If you\'re looking for a book to take your game design skills into the stratosphere and beyond, this is it!', '38.00', 'book9.jpg', NULL),
(10, 'Java Programming for Android Developers For Dummies', 'Develop the next killer Android App using Java programming! Android is everywhere! It runs more than half the smartphones in the U.S. and Java makes it go. If you want to cash in on its popularity by learning to build Android apps with Java, all the easy-to-follow guidance you need to get started is at your fingertips. Inside, you\'ll learn the basics of Java and grasp how it works with Android; then, you\'ll go on to create your first real, working application. How cool is that? The demand for Android apps isn\'t showing any signs of slowing, but if you\'re a mobile developer who wants to get in on the action, it\'s vital that you get the necessary Java background to be a success. With the help of Java Programming for Android Developers For Dummies, you\'ll quickly and painlessly discover the ins and outs of using Java to create groundbreaking Android apps no prior knowledge or experience required! * Get the know-how to create an Android program from the ground up * Make sense of basic Java development concepts and techniques * Develop the skills to handle programming challenges * Find out how to debug your app Don\'t sit back and watch other developers release apps that bring in the bucks! Everything you need to create that next killer Android app is just a page away!', '21.00', 'book10.jpg', NULL),
(11, 'Head First Java', 'Learning a complex new language is no easy task especially when it s an object-oriented computer programming language like Java. You might think the problem is your brain. It seems to have a mind of its own, a mind that doesn\'t always want to take in the dry, technical stuff you\'re forced to study. The fact is your brain craves novelty. It\'s constantly searching, scanning, waiting for something unusual to happen. After all, that\'s the way it was built to help you stay alive. It takes all the routine, ordinary, dull stuff and filters it to the background so it won\'t interfere with your brain\'s real work--recording things that matter. How does your brain know what matters? It\'s like the creators of the Head First approach say, suppose you\'re out for a hike and a tiger jumps in front of you, what happens in your brain? Neurons fire. Emotions crank up. Chemicals surge. That\'s how your brain knows. And that\'s how your brain will learn Java. Head First Java combines puzzles, strong visuals, mysteries, and soul-searching interviews with famous Java objects to engage you in many different ways. It\'s fast, it\'s fun, and its effective. And, despite its playful appearance, Head First Java is serious stuff: a complete introduction to object-oriented programming and Java. You\'ll learn everything from the fundamentals to advanced topics, including threads, network sockets, and distributed programming with RMI. And the new. second edition focuses on Java 5.0, the latest version of the Java language and development platform. Because Java 5.0 is a major update to the platform, with deep, code-level changes, even more careful study and implementation is required. So learning the Head First way is more important than ever. If you\'ve read a Head First book, you know what to expect--a visually rich format designed for the way your brain works. If you haven\'t, you\'re in for a treat. You\'ll see why people say it\'s unlike any other Java book you\'ve ever read. By exploiting how your brain works, Head First Java compresses the time it takes to learn and retain--complex information. Its unique approach not only shows you what you need to know about Java syntax, it teaches you to think like a Java programmer. If you want to be bored, buy some other book. But if you want to understand Java, this book\'s for you.', '44.00', 'book11.jpg', NULL),
(12, 'Το βιβλίο της PYTHON', 'Το \"Βιβλίο της Python\" είναι ένα πλήρες εγχειρίδιο αναφοράς της γλώσσας για την εκμάθησή της. Ξεκινάει από τα πιο βασικά και απολύτως απαραίτητα στοιχεία που χρειάζεται να μάθει κάποιος που ασχολείται για πρώτη φορά με τον προγραμματισμό και προχωράει σε βάθος, σε κάθε πτυχή της γλώσσας, και σε πιο σύνθετες προγραμματιστικές τεχνικές που θα καλύψουν ακόμα και τους πιο προχωρημένους και απαιτητικούς αναγνώστες.', '31.00', 'book12.jpg', NULL),
(13, 'Artificial Intelligence in Practice', 'Cyber-solutions to real-world business problems Artificial Intelligence in Practice is a fascinating look into how companies use AI and machine learning to solve problems. Presenting 50 case studies of actual situations, this book demonstrates practical applications to issues faced by businesses around the globe. The rapidly evolving field of artificial intelligence has expanded beyond research labs and computer science departments and made its way into the mainstream business environment. Artificial intelligence and machine learning are cited as the most important modern business trends to drive success. It is used in areas ranging from banking and finance to social media and marketing. This technology continues to provide innovative solutions to businesses of all sizes, sectors and industries. This engaging and topical book explores a wide range of cases illustrating how businesses use AI to boost performance, drive efficiency, analyse market preferences and many others. Best-selling author and renowned AI expert Bernard Marr reveals how machine learning technology is transforming the way companies conduct business. This detailed examination provides an overview of each company, describes the specific problem and explains how AI facilitates resolution. Each case study provides a comprehensive overview, including some technical details as well as key learning summaries: Understand how specific business problems are addressed by innovative machine learning methods Explore how current artificial intelligence applications improve performance and increase efficiency in various situations Expand your knowledge of recent AI advancements in technology Gain insight on the future of AI and its increasing role in business and industry Artificial Intelligence in Practice: How 50 Successful Companies Used Artificial Intelligence to Solve Problems is an insightful and informative exploration of the transformative power of technology in 21st century commerce.', '37.00', 'book13.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE IF NOT EXISTS `product_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product` (`product_id`),
  KEY `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `product_id`, `category_id`, `regdate`) VALUES
(1, 1, 6, NULL),
(2, 2, 6, NULL),
(3, 3, 5, NULL),
(4, 4, 5, NULL),
(5, 6, 10, NULL),
(6, 7, 8, NULL),
(7, 8, 8, NULL),
(8, 9, 8, NULL),
(9, 10, 2, NULL),
(10, 11, 2, NULL),
(11, 12, 3, NULL),
(13, 13, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_method`
--

DROP TABLE IF EXISTS `shipping_method`;
CREATE TABLE IF NOT EXISTS `shipping_method` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `descr` varchar(1000) DEFAULT NULL,
  `fee` varchar(45) DEFAULT NULL,
  `regdate` date DEFAULT NULL,
  `customdetails` varchar(2000) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
CREATE TABLE IF NOT EXISTS `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fpa` float DEFAULT NULL,
  `opened` time DEFAULT NULL,
  `closed` time DEFAULT NULL,
  `metatitle` varchar(250) DEFAULT NULL,
  `metadescription` varchar(1000) DEFAULT NULL,
  `metakeywords` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `fpa`, `opened`, `closed`, `metatitle`, `metadescription`, `metakeywords`) VALUES
(1, 24, '08:00:00', '17:00:00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `openid` varchar(250) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zipcode` varchar(45) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `fullname`, `openid`, `phone`, `address`, `city`, `zipcode`, `regdate`) VALUES
(1, 'themhz@gmail.com', '526996', 'themis theotokatos', NULL, '6987556486', 'dodekanisou 18', 'ilioupolh', '16754', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

DROP TABLE IF EXISTS `user_messages`;
CREATE TABLE IF NOT EXISTS `user_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `about` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
