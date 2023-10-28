-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2021 at 11:05 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myelmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'admin', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM'),
(2, 'tekle', 'tekle', '2021-09-16 06:26:21', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `aid` int(255) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `ans_id` int(250) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`aid`, `answer`, `ans_id`, `course_name`) VALUES
(1, 'Home Tool Markup Language', 1, 'html'),
(2, 'Hyperlinks and Text Markup Language', 1, 'html'),
(3, ' Hyper Text Markup Language', 1, 'html'),
(4, ' Hyper Train Markup Language', 1, 'html'),
(5, '  Mozilla', 2, 'html'),
(6, '  Google', 2, 'html'),
(7, 'Microsoft', 2, 'html'),
(8, 'W3C', 2, 'html'),
(9, '<head>', 3, 'html'),
(10, '<heading>', 3, 'html'),
(11, '<h6>', 3, 'html'),
(12, '<h1>', 3, 'html'),
(13, '<lb>', 4, 'html'),
(14, '<br>', 4, 'html'),
(15, '<break>', 4, 'html'),
(16, '<bk>', 4, 'html'),
(17, 'programming language', 5, 'java'),
(18, 'web designing language', 5, 'java'),
(19, 'OOPS language', 5, 'java'),
(20, 'general purpose language', 5, 'java');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(4) NOT NULL,
  `cat_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`) VALUES
(1, 'php'),
(2, 'java'),
(3, 'Maths'),
(4, 'python'),
(5, 'android'),
(6, 'Physics'),
(8, 'Biology'),
(11, 'Social Study');

-- --------------------------------------------------------

--
-- Table structure for table `commentsection`
--

CREATE TABLE `commentsection` (
  `cid` int(11) NOT NULL,
  `uid` varchar(120) NOT NULL,
  `date` datetime NOT NULL,
  `message` text NOT NULL,
  `video_id` int(255) NOT NULL,
  `video_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commentsection`
--

INSERT INTO `commentsection` (`cid`, `uid`, `date`, `message`, `video_id`, `video_path`) VALUES
(153, 'sunil yadav', '2019-04-15 19:05:17', '5', 50, 'comedy knights'),
(158, '', '2021-08-19 01:05:16', 'Advantageous video', 51, ''),
(159, 'admin', '2021-09-16 10:48:52', '', 58, '');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `topic_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `videopath` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `video` text NOT NULL,
  `adminid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `topic_name`, `description`, `course_name`, `videopath`, `notes`, `video`, `adminid`) VALUES
(1, 'JAVA_HOME', '<h1 style=\"margin-left:200px\"><span style=\"color:#3498db\"><strong>Java Tutorial</strong></span></h1>\r\n\r\n<p>Java is a high-level programming language originally developed by Sun Microsystems and released in 1995. Java runs on a variety of platforms, such as Windows, Mac OS, and the various versions of UNIX. This tutorial gives a complete understanding of Java. This reference will take you through simple and practical approaches while learning Java Programming language.</p>\r\n\r\n<video controls width=\"600\">\r\n    <source src=\"elmsmp4.mp4\"\r\n   type=\"video/mp4\">\r\n</video>\r\n\r\n<h1>Audience</h1>\r\n\r\n<p>This tutorial has been prepared for the beginners to help them understand the basic to advanced concepts related to Java Programming language.</p>\r\n\r\n<h1>Prerequisites</h1>\r\n\r\n<p>Before you start practicing various types of examples given in this reference, we assume that you are already aware about computer programs and computer programming languages.</p>\r\n', 'java', '', '0', '0', 0),
(2, 'Java - Overview', '<h1 style=\"margin-left:160px\"><span style=\"color:#3498db\"><strong>Java - Overview</strong></span></h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Java programming language was originally developed by Sun Microsystems which was initiated by James Gosling and released in 1995 as core component of Sun Microsystems&#39; Java platform (Java 1.0 [J2SE]).</p>\r\n\r\n<p>The latest release of the Java Standard Edition is Java SE 8. With the advancement of Java and its widespread popularity, multiple configurations were built to suit various types of platforms. For example: J2EE for Enterprise Applications, J2ME for Mobile Applications.</p>\r\n\r\n<p>The new J2 versions were renamed as Java SE, Java EE, and Java ME respectively. Java is guaranteed to be&nbsp;<strong>Write Once, Run Anywhere.</strong></p>\r\n\r\n<p>Java is &minus;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Object Oriented</strong>&nbsp;&minus; In Java, everything is an Object. Java can be easily extended since it is based on the Object model.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Platform Independent</strong>&nbsp;&minus; Unlike many other programming languages including C and C++, when Java is compiled, it is not compiled into platform specific machine, rather into platform independent byte code. This byte code is distributed over the web and interpreted by the Virtual Machine (JVM) on whichever platform it is being run on.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Simple</strong>&nbsp;&minus; Java is designed to be easy to learn. If you understand the basic concept of OOP Java, it would be easy to master.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Secure</strong>&nbsp;&minus; With Java&#39;s secure feature it enables to develop virus-free, tamper-free systems. Authentication techniques are based on public-key encryption.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Architecture-neutral</strong>&nbsp;&minus; Java compiler generates an architecture-neutral object file format, which makes the compiled code executable on many processors, with the presence of Java runtime system.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Portable</strong>&nbsp;&minus; Being architecture-neutral and having no implementation dependent aspects of the specification makes Java portable. Compiler in Java is written in ANSI C with a clean portability boundary, which is a POSIX subset.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Robust</strong>&nbsp;&minus; Java makes an effort to eliminate error prone situations by emphasizing mainly on compile time error checking and runtime checking.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Multithreaded</strong>&nbsp;&minus; With Java&#39;s multithreaded feature it is possible to write programs that can perform many tasks simultaneously. This design feature allows the developers to construct interactive applications that can run smoothly.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Interpreted</strong>&nbsp;&minus; Java byte code is translated on the fly to native machine instructions and is not stored anywhere. The development process is more rapid and analytical since the linking is an incremental and light-weight process.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>High Performance</strong>&nbsp;&minus; With the use of Just-In-Time compilers, Java enables high performance.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Distributed</strong>&nbsp;&minus; Java is designed for the distributed environment of the internet.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Dynamic</strong>&nbsp;&minus; Java is considered to be more dynamic than C or C++ since it is designed to adapt to an evolving environment. Java programs can carry extensive amount of run-time information that can be used to verify and resolve accesses to objects on run-time.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>History of Java</h2>\r\n\r\n<p>James Gosling initiated Java language project in June 1991 for use in one of his many set-top box projects. The language, initially called &lsquo;Oak&rsquo; after an oak tree that stood outside Gosling&#39;s office, also went by the name &lsquo;Green&rsquo; and ended up later being renamed as Java, from a list of random words.</p>\r\n\r\n<p>Sun released the first public implementation as Java 1.0 in 1995. It promised&nbsp;<strong>Write Once, Run Anywhere</strong>&nbsp;(WORA), providing no-cost run-times on popular platforms.</p>\r\n\r\n<p>On 13 November, 2006, Sun released much of Java as free and open source software under the terms of the GNU General Public License (GPL).</p>\r\n\r\n<p>On 8 May, 2007, Sun finished the process, making all of Java&#39;s core code free and open-source, aside from a small portion of code to which Sun did not hold the copyright.</p>\r\n\r\n<h2>Tools You Will Need</h2>\r\n\r\n<p>For performing the examples discussed in this tutorial, you will need a Pentium 200-MHz computer with a minimum of 64 MB of RAM (128 MB of RAM recommended).</p>\r\n\r\n<p>You will also need the following softwares &minus;</p>\r\n\r\n<ul>\r\n	<li>Linux 7.1 or Windows xp/7/8 operating system</li>\r\n	<li>Java JDK 8</li>\r\n	<li>Microsoft Notepad or any other text editor</li>\r\n</ul>\r\n\r\n<p>This tutorial will provide the necessary skills to create GUI, networking, and web applications using Java.</p>\r\n\r\n<h2>What is Next?</h2>\r\n\r\n<p>The next chapter will guide you to how you can obtain Java and its documentation. Finally, it instructs you on how to install Java and prepare an environment to develop Java applications.</p>\r\n', 'java', '<video controls width=\"600\">\r\n    <source src=\"elmsmp4.mp4\"\r\n   type=\"video/mp4\">\r\n		</video>', '0', '0', 0),
(33, 'Java - Environment Setup', '<h1 style=\"margin-left:120px\"><span style=\"font-size:24px\"><span style=\"color:#3498db\"><strong>Java - Environment Setup</strong></span></span></h1>\r\n\r\n<p>In this chapter, we will discuss on the different aspects of setting up a congenial environment for Java.</p>\r\n\r\n<h2>Local Environment Setup</h2>\r\n\r\n<p>If you are still willing to set up your environment for Java programming language, then this section guides you on how to download and set up Java on your machine. Following are the steps to set up the environment.</p>\r\n\r\n<p>Java SE is freely available from the link&nbsp;<a href=\"https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html\" rel=\"nofollow\" target=\"_blank\">Download Java</a>. You can download a version based on your operating system.</p>\r\n\r\n<p>Follow the instructions to download Java and run the&nbsp;<strong>.exe</strong>&nbsp;to install Java on your machine. Once you installed Java on your machine, you will need to set environment variables to point to correct installation directories &minus;</p>\r\n\r\n<h3>Setting Up the Path for Windows</h3>\r\n\r\n<p>Assuming you have installed Java in&nbsp;<em>c:Program Filesjavajdk</em>&nbsp;directory &minus;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Right-click on &#39;My Computer&#39; and select &#39;Properties&#39;.</p>\r\n	</li>\r\n	<li>\r\n	<p>Click the &#39;Environment variables&#39; button under the &#39;Advanced&#39; tab.</p>\r\n	</li>\r\n	<li>\r\n	<p>Now, alter the &#39;Path&#39; variable so that it also contains the path to the Java executable. Example, if the path is currently set to &#39;C:WINDOWSSYSTEM32&#39;, then change your path to read &#39;C:WINDOWSSYSTEM32;c:Program Filesjavajdkin&#39;.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Setting Up the Path for Linux, UNIX, Solaris, FreeBSD</h3>\r\n\r\n<p>Environment variable PATH should be set to point to where the Java binaries have been installed. Refer to your shell documentation, if you have trouble doing this.</p>\r\n\r\n<p>Example, if you use&nbsp;<em>bash</em>&nbsp;as your shell, then you would add the following line to the end of your &#39;.bashrc: export PATH = /path/to/java:$PATH&#39;</p>\r\n\r\n<h2>Popular Java Editors</h2>\r\n\r\n<p>To write your Java programs, you will need a text editor. There are even more sophisticated IDEs available in the market. But for now, you can consider one of the following &minus;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Notepad</strong>&nbsp;&minus; On Windows machine, you can use any simple text editor like Notepad (Recommended for this tutorial), TextPad.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Netbeans</strong>&nbsp;&minus; A Java IDE that is open-source and free which can be downloaded from&nbsp;<a href=\"https://www.netbeans.org/index.html\" rel=\"nofollow\" target=\"_blank\">https://www.netbeans.org/index.html</a>.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Eclipse</strong>&nbsp;&minus; A Java IDE developed by the eclipse open-source community and can be downloaded from&nbsp;<a href=\"https://www.eclipse.org/\" rel=\"nofollow\" target=\"_blank\">https://www.eclipse.org/</a>.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>What is Next?</h2>\r\n\r\n<p>Next chapter will teach you how to write and run your first Java program and some of the important basic syntaxes in Java needed for developing applications.</p>\r\n', 'java', '', '0', '0', 0),
(34, 'Java - Basic Syntax', '<h1 style=\"margin-left:80px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\">Java - Basic Syntax</span></span></h1>\r\n\r\n<p>When we consider a Java program, it can be defined as a collection of objects that communicate via invoking each other&#39;s methods. Let us now briefly look into what do class, object, methods, and instance variables mean.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Object</strong>&nbsp;&minus; Objects have states and behaviors. Example: A dog has states - color, name, breed as well as behavior such as wagging their tail, barking, eating. An object is an instance of a class.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Class</strong>&nbsp;&minus; A class can be defined as a template/blueprint that describes the behavior/state that the object of its type supports.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Methods</strong>&nbsp;&minus; A method is basically a behavior. A class can contain many methods. It is in methods where the logics are written, data is manipulated and all the actions are executed.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Instance Variables</strong>&nbsp;&minus; Each object has its unique set of instance variables. An object&#39;s state is created by the values assigned to these instance variables.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>First Java Program</h2>\r\n\r\n<p>Let us look at a simple code that will print the words&nbsp;<strong><em>Hello World</em></strong>.</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<p><a href=\"http://tpcg.io/tv5b2l\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\npublic class MyFirstJavaProgram {\r\n\r\n   /* This is my first java program.\r\n    * This will print &#39;Hello World&#39; as the output\r\n    */\r\n\r\n   public static void main(String []args) {\r\n      System.out.println(&quot;Hello World&quot;); // prints Hello World\r\n   }\r\n}</pre>\r\n\r\n<p>Let&#39;s look at how to save the file, compile, and run the program. Please follow the subsequent steps &minus;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Open notepad and add the code as above.</p>\r\n	</li>\r\n	<li>\r\n	<p>Save the file as: MyFirstJavaProgram.java.</p>\r\n	</li>\r\n	<li>\r\n	<p>Open a command prompt window and go to the directory where you saved the class. Assume it&#39;s C:.</p>\r\n	</li>\r\n	<li>\r\n	<p>Type &#39;javac MyFirstJavaProgram.java&#39; and press enter to compile your code. If there are no errors in your code, the command prompt will take you to the next line (Assumption : The path variable is set).</p>\r\n	</li>\r\n	<li>\r\n	<p>Now, type &#39; java MyFirstJavaProgram &#39; to run your program.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will be able to see &#39; Hello World &#39; printed on the window.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\nC:&gt; javac MyFirstJavaProgram.java\r\nC:&gt; java MyFirstJavaProgram \r\nHello World\r\n</pre>\r\n\r\n<h2>Basic Syntax</h2>\r\n\r\n<p>About Java programs, it is very important to keep in mind the following points.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Case Sensitivity</strong>&nbsp;&minus; Java is case sensitive, which means identifier&nbsp;<strong>Hello</strong>&nbsp;and&nbsp;<strong>hello</strong>&nbsp;would have different meaning in Java.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Class Names</strong>&nbsp;&minus; For all class names the first letter should be in Upper Case. If several words are used to form a name of the class, each inner word&#39;s first letter should be in Upper Case.</p>\r\n\r\n	<p><strong>Example:</strong>&nbsp;<em>class MyFirstJavaClass</em></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Method Names</strong>&nbsp;&minus; All method names should start with a Lower Case letter. If several words are used to form the name of the method, then each inner word&#39;s first letter should be in Upper Case.</p>\r\n\r\n	<p><strong>Example:</strong>&nbsp;<em>public void myMethodName()</em></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Program File Name</strong>&nbsp;&minus; Name of the program file should exactly match the class name.</p>\r\n\r\n	<p>When saving the file, you should save it using the class name (Remember Java is case sensitive) and append &#39;.java&#39; to the end of the name (if the file name and the class name do not match, your program will not compile).</p>\r\n\r\n	<p>But please make a note that in case you do not have a public class present in the file then file name can be different than class name. It is also not mandatory to have a public class in the file.</p>\r\n\r\n	<p><strong>Example:</strong>&nbsp;Assume &#39;MyFirstJavaProgram&#39; is the class name. Then the file should be saved as&nbsp;<em>&#39;MyFirstJavaProgram.java&#39;</em></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>public static void main(String args[])</strong>&nbsp;&minus; Java program processing starts from the main() method which is a mandatory part of every Java program.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Java Identifiers</h2>\r\n\r\n<p>All Java components require names. Names used for classes, variables, and methods are called&nbsp;<strong>identifiers</strong>.</p>\r\n\r\n<p>In Java, there are several points to remember about identifiers. They are as follows &minus;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>All identifiers should begin with a letter (A to Z or a to z), currency character ($) or an underscore (_).</p>\r\n	</li>\r\n	<li>\r\n	<p>After the first character, identifiers can have any combination of characters.</p>\r\n	</li>\r\n	<li>\r\n	<p>A key word cannot be used as an identifier.</p>\r\n	</li>\r\n	<li>\r\n	<p>Most importantly, identifiers are case sensitive.</p>\r\n	</li>\r\n	<li>\r\n	<p>Examples of legal identifiers: age, $salary, _value, __1_value.</p>\r\n	</li>\r\n	<li>\r\n	<p>Examples of illegal identifiers: 123abc, -salary.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Java Modifiers</h2>\r\n\r\n<p>Like other languages, it is possible to modify classes, methods, etc., by using modifiers. There are two categories of modifiers &minus;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Access Modifiers</strong>&nbsp;&minus; default, public , protected, private</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Non-access Modifiers</strong>&nbsp;&minus; final, abstract, strictfp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>We will be looking into more details about modifiers in the next section.</p>\r\n\r\n<h2>Java Variables</h2>\r\n\r\n<p>Following are the types of variables in Java &minus;</p>\r\n\r\n<ul>\r\n	<li>Local Variables</li>\r\n	<li>Class Variables (Static Variables)</li>\r\n	<li>Instance Variables (Non-static Variables)</li>\r\n</ul>\r\n\r\n<h2>Java Arrays</h2>\r\n\r\n<p>Arrays are objects that store multiple variables of the same type. However, an array itself is an object on the heap. We will look into how to declare, construct, and initialize in the upcoming chapters.</p>\r\n\r\n<h2>Java Enums</h2>\r\n\r\n<p>Enums were introduced in Java 5.0. Enums restrict a variable to have one of only a few predefined values. The values in this enumerated list are called enums.</p>\r\n\r\n<p>With the use of enums it is possible to reduce the number of bugs in your code.</p>\r\n\r\n<p>For example, if we consider an application for a fresh juice shop, it would be possible to restrict the glass size to small, medium, and large. This would make sure that it would not allow anyone to order any size other than small, medium, or large.</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<p><a href=\"http://tpcg.io/VNJ9DE\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\nclass FreshJuice {\r\n   enum FreshJuiceSize{ SMALL, MEDIUM, LARGE }\r\n   FreshJuiceSize size;\r\n}\r\n\r\npublic class FreshJuiceTest {\r\n\r\n   public static void main(String args[]) {\r\n      FreshJuice juice = new FreshJuice();\r\n      juice.size = FreshJuice.FreshJuiceSize.MEDIUM ;\r\n      System.out.println(&quot;Size: &quot; + juice.size);\r\n   }\r\n}</pre>\r\n\r\n<p>The above example will produce the following result &minus;</p>\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\nSize: MEDIUM\r\n</pre>\r\n\r\n<p><strong>Note</strong>&nbsp;&minus; Enums can be declared as their own or inside a class. Methods, variables, constructors can be defined inside enums as well.</p>\r\n\r\n<h2>Java Keywords</h2>\r\n\r\n<p>The following list shows the reserved words in Java. These reserved words may not be used as constant or variable or any other identifier names.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>abstract</td>\r\n			<td>assert</td>\r\n			<td>boolean</td>\r\n			<td>break</td>\r\n		</tr>\r\n		<tr>\r\n			<td>byte</td>\r\n			<td>case</td>\r\n			<td>catch</td>\r\n			<td>char</td>\r\n		</tr>\r\n		<tr>\r\n			<td>class</td>\r\n			<td>const</td>\r\n			<td>continue</td>\r\n			<td>default</td>\r\n		</tr>\r\n		<tr>\r\n			<td>do</td>\r\n			<td>double</td>\r\n			<td>else</td>\r\n			<td>enum</td>\r\n		</tr>\r\n		<tr>\r\n			<td>extends</td>\r\n			<td>final</td>\r\n			<td>finally</td>\r\n			<td>float</td>\r\n		</tr>\r\n		<tr>\r\n			<td>for</td>\r\n			<td>goto</td>\r\n			<td>if</td>\r\n			<td>implements</td>\r\n		</tr>\r\n		<tr>\r\n			<td>import</td>\r\n			<td>instanceof</td>\r\n			<td>int</td>\r\n			<td>interface</td>\r\n		</tr>\r\n		<tr>\r\n			<td>long</td>\r\n			<td>native</td>\r\n			<td>new</td>\r\n			<td>package</td>\r\n		</tr>\r\n		<tr>\r\n			<td>private</td>\r\n			<td>protected</td>\r\n			<td>public</td>\r\n			<td>return</td>\r\n		</tr>\r\n		<tr>\r\n			<td>short</td>\r\n			<td>static</td>\r\n			<td>strictfp</td>\r\n			<td>super</td>\r\n		</tr>\r\n		<tr>\r\n			<td>switch</td>\r\n			<td>synchronized</td>\r\n			<td>this</td>\r\n			<td>throw</td>\r\n		</tr>\r\n		<tr>\r\n			<td>throws</td>\r\n			<td>transient</td>\r\n			<td>try</td>\r\n			<td>void</td>\r\n		</tr>\r\n		<tr>\r\n			<td>volatile</td>\r\n			<td>while</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Comments in Java</h2>\r\n\r\n<p>Java supports single-line and multi-line comments very similar to C and C++. All characters available inside any comment are ignored by Java compiler.</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<p><a href=\"http://tpcg.io/RVBY2x\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\npublic class MyFirstJavaProgram {\r\n\r\n   /* This is my first java program.\r\n    * This will print &#39;Hello World&#39; as the output\r\n    * This is an example of multi-line comments.\r\n    */\r\n\r\n   public static void main(String []args) {\r\n      // This is an example of single line comment\r\n      /* This is also an example of single line comment. */\r\n      System.out.println(&quot;Hello World&quot;);\r\n   }\r\n}</pre>\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\nHello World\r\n</pre>\r\n\r\n<h2>Using Blank Lines</h2>\r\n\r\n<p>A line containing only white space, possibly with a comment, is known as a blank line, and Java totally ignores it.</p>\r\n\r\n<h2>Inheritance</h2>\r\n\r\n<p>In Java, classes can be derived from classes. Basically, if you need to create a new class and here is already a class that has some of the code you require, then it is possible to derive your new class from the already existing code.</p>\r\n\r\n<p>This concept allows you to reuse the fields and methods of the existing class without having to rewrite the code in a new class. In this scenario, the existing class is called the&nbsp;<strong>superclass</strong>&nbsp;and the derived class is called the&nbsp;<strong>subclass</strong>.</p>\r\n\r\n<h2>Interfaces</h2>\r\n\r\n<p>In Java language, an interface can be defined as a contract between objects on how to communicate with each other. Interfaces play a vital role when it comes to the concept of inheritance.</p>\r\n\r\n<p>An interface defines the methods, a deriving class (subclass) should use. But the implementation of the methods is totally up to the subclass.</p>\r\n\r\n<h2>What is Next?</h2>\r\n\r\n<p>The next section explains about Objects and classes in Java programming. At the end of the session, you will be able to get a clear picture as to what are objects and what are classes in Java.</p>\r\n', 'java', '', '0', '0', 0),
(35, 'Java - Object and Classes', '<h1 style=\"margin-left:80px\"><span style=\"color:#3498db\"><strong><span style=\"font-size:24px\">Java - Object and Classes</span></strong></span></h1>\r\n\r\n<p>Java is an Object-Oriented Language. As a language that has the Object-Oriented feature, Java supports the following fundamental concepts &minus;</p>\r\n\r\n<ul>\r\n	<li>Polymorphism</li>\r\n	<li>Inheritance</li>\r\n	<li>Encapsulation</li>\r\n	<li>Abstraction</li>\r\n	<li>Classes</li>\r\n	<li>Objects</li>\r\n	<li>Instance</li>\r\n	<li>Method</li>\r\n	<li>Message Passing</li>\r\n</ul>\r\n\r\n<p>In this chapter, we will look into the concepts - Classes and Objects.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Object</strong>&nbsp;&minus; Objects have states and behaviors. Example: A dog has states - color, name, breed as well as behaviors &ndash; wagging the tail, barking, eating. An object is an instance of a class.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Class</strong>&nbsp;&minus; A class can be defined as a template/blueprint that describes the behavior/state that the object of its type support.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Objects in Java</h2>\r\n\r\n<p>Let us now look deep into what are objects. If we consider the real-world, we can find many objects around us, cars, dogs, humans, etc. All these objects have a state and a behavior.</p>\r\n\r\n<p>If we consider a dog, then its state is - name, breed, color, and the behavior is - barking, wagging the tail, running.</p>\r\n\r\n<p>If you compare the software object with a real-world object, they have very similar characteristics.</p>\r\n\r\n<p>Software objects also have a state and a behavior. A software object&#39;s state is stored in fields and behavior is shown via methods.</p>\r\n\r\n<p>So in software development, methods operate on the internal state of an object and the object-to-object communication is done via methods.</p>\r\n\r\n<h2>Classes in Java</h2>\r\n\r\n<p>A class is a blueprint from which individual objects are created.</p>\r\n\r\n<p>Following is a sample of a class.</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<pre>\r\npublic class Dog {\r\n   String breed;\r\n   int age;\r\n   String color;\r\n\r\n   void barking() {\r\n   }\r\n\r\n   void hungry() {\r\n   }\r\n\r\n   void sleeping() {\r\n   }\r\n}</pre>\r\n\r\n<p>A class can contain any of the following variable types.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Local variables</strong>&nbsp;&minus; Variables defined inside methods, constructors or blocks are called local variables. The variable will be declared and initialized within the method and the variable will be destroyed when the method has completed.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Instance variables</strong>&nbsp;&minus; Instance variables are variables within a class but outside any method. These variables are initialized when the class is instantiated. Instance variables can be accessed from inside any method, constructor or blocks of that particular class.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Class variables</strong>&nbsp;&minus; Class variables are variables declared within a class, outside any method, with the static keyword.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>A class can have any number of methods to access the value of various kinds of methods. In the above example, barking(), hungry() and sleeping() are methods.</p>\r\n\r\n<p>Following are some of the important topics that need to be discussed when looking into classes of the Java Language.</p>\r\n\r\n<h2>Constructors</h2>\r\n\r\n<p>When discussing about classes, one of the most important sub topic would be constructors. Every class has a constructor. If we do not explicitly write a constructor for a class, the Java compiler builds a default constructor for that class.</p>\r\n\r\n<p>Each time a new object is created, at least one constructor will be invoked. The main rule of constructors is that they should have the same name as the class. A class can have more than one constructor.</p>\r\n\r\n<p>Following is an example of a constructor &minus;</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<pre>\r\npublic class Puppy {\r\n   public Puppy() {\r\n   }\r\n\r\n   public Puppy(String name) {\r\n      // This constructor has one parameter, <em>name</em>.\r\n   }\r\n}</pre>\r\n\r\n<p>Java also supports&nbsp;<a href=\"https://www.tutorialspoint.com/java/java_using_singleton.htm\">Singleton Classes</a>&nbsp;where you would be able to create only one instance of a class.</p>\r\n\r\n<p><strong>Note</strong>&nbsp;&minus; We have two different types of constructors. We are going to discuss constructors in detail in the subsequent chapters.</p>\r\n\r\n<h2>Creating an Object</h2>\r\n\r\n<p>As mentioned previously, a class provides the blueprints for objects. So basically, an object is created from a class. In Java, the new keyword is used to create new objects.</p>\r\n\r\n<p>There are three steps when creating an object from a class &minus;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Declaration</strong>&nbsp;&minus; A variable declaration with a variable name with an object type.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Instantiation</strong>&nbsp;&minus; The &#39;new&#39; keyword is used to create the object.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Initialization</strong>&nbsp;&minus; The &#39;new&#39; keyword is followed by a call to a constructor. This call initializes the new object.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Following is an example of creating an object &minus;</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<p><a href=\"http://tpcg.io/gQv0gO\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\npublic class Puppy {\r\n   public Puppy(String name) {\r\n      // This constructor has one parameter, <em>name</em>.\r\n      System.out.println(&quot;Passed Name is :&quot; + name );\r\n   }\r\n\r\n   public static void main(String []args) {\r\n      // Following statement would create an object myPuppy\r\n      Puppy myPuppy = new Puppy( &quot;tommy&quot; );\r\n   }\r\n}</pre>\r\n\r\n<p>If we compile and run the above program, then it will produce the following result &minus;</p>\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\nPassed Name is :tommy\r\n</pre>\r\n\r\n<h2>Accessing Instance Variables and Methods</h2>\r\n\r\n<p>Instance variables and methods are accessed via created objects. To access an instance variable, following is the fully qualified path &minus;</p>\r\n\r\n<pre>\r\n/* First create an object */\r\nObjectReference = new Constructor();\r\n\r\n/* Now call a variable as follows */\r\nObjectReference.variableName;\r\n\r\n/* Now you can call a class method as follows */\r\nObjectReference.MethodName();\r\n</pre>\r\n\r\n<h3>Example</h3>\r\n\r\n<p>This example explains how to access instance variables and methods of a class.</p>\r\n\r\n<p><a href=\"http://tpcg.io/VnuprO\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\npublic class Puppy {\r\n   int puppyAge;\r\n\r\n   public Puppy(String name) {\r\n      // This constructor has one parameter, <em>name</em>.\r\n      System.out.println(&quot;Name chosen is :&quot; + name );\r\n   }\r\n\r\n   public void setAge( int age ) {\r\n      puppyAge = age;\r\n   }\r\n\r\n   public int getAge( ) {\r\n      System.out.println(&quot;Puppy&#39;s age is :&quot; + puppyAge );\r\n      return puppyAge;\r\n   }\r\n\r\n   public static void main(String []args) {\r\n      /* Object creation */\r\n      Puppy myPuppy = new Puppy( &quot;tommy&quot; );\r\n\r\n      /* Call class method to set puppy&#39;s age */\r\n      myPuppy.setAge( 2 );\r\n\r\n      /* Call another class method to get puppy&#39;s age */\r\n      myPuppy.getAge( );\r\n\r\n      /* You can access instance variable as follows as well */\r\n      System.out.println(&quot;Variable Value :&quot; + myPuppy.puppyAge );\r\n   }\r\n}</pre>\r\n\r\n<p>If we compile and run the above program, then it will produce the following result &minus;</p>\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\nName chosen is :tommy\r\nPuppy&#39;s age is :2\r\nVariable Value :2\r\n</pre>\r\n\r\n<h2>Source File Declaration Rules</h2>\r\n\r\n<p>As the last part of this section, let&#39;s now look into the source file declaration rules. These rules are essential when declaring classes,&nbsp;<em>import</em>&nbsp;statements and&nbsp;<em>package</em>&nbsp;statements in a source file.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>There can be only one public class per source file.</p>\r\n	</li>\r\n	<li>\r\n	<p>A source file can have multiple non-public classes.</p>\r\n	</li>\r\n	<li>\r\n	<p>The public class name should be the name of the source file as well which should be appended by&nbsp;<strong>.java</strong>&nbsp;at the end. For example: the class name is&nbsp;<em>public class Employee{}</em>&nbsp;then the source file should be as Employee.java.</p>\r\n	</li>\r\n	<li>\r\n	<p>If the class is defined inside a package, then the package statement should be the first statement in the source file.</p>\r\n	</li>\r\n	<li>\r\n	<p>If import statements are present, then they must be written between the package statement and the class declaration. If there are no package statements, then the import statement should be the first line in the source file.</p>\r\n	</li>\r\n	<li>\r\n	<p>Import and package statements will imply to all the classes present in the source file. It is not possible to declare different import and/or package statements to different classes in the source file.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Classes have several access levels and there are different types of classes; abstract classes, final classes, etc. We will be explaining about all these in the access modifiers chapter.</p>\r\n\r\n<p>Apart from the above mentioned types of classes, Java also has some special classes called Inner classes and Anonymous classes.</p>\r\n\r\n<h2>Java Package</h2>\r\n\r\n<p>In simple words, it is a way of categorizing the classes and interfaces. When developing applications in Java, hundreds of classes and interfaces will be written, therefore categorizing these classes is a must as well as makes life much easier.</p>\r\n\r\n<h2>Import Statements</h2>\r\n\r\n<p>In Java if a fully qualified name, which includes the package and the class name is given, then the compiler can easily locate the source code or classes. Import statement is a way of giving the proper location for the compiler to find that particular class.</p>\r\n\r\n<p>For example, the following line would ask the compiler to load all the classes available in directory java_installation/java/io &minus;</p>\r\n\r\n<pre>\r\nimport java.io.*;\r\n</pre>\r\n\r\n<h2>A Simple Case Study</h2>\r\n\r\n<p>For our case study, we will be creating two classes. They are Employee and EmployeeTest.</p>\r\n\r\n<p>First open notepad and add the following code. Remember this is the Employee class and the class is a public class. Now, save this source file with the name Employee.java.</p>\r\n\r\n<p>The Employee class has four instance variables - name, age, designation and salary. The class has one explicitly defined constructor, which takes a parameter.</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<pre>\r\nimport java.io.*;\r\npublic class Employee {\r\n\r\n   String name;\r\n   int age;\r\n   String designation;\r\n   double salary;\r\n\r\n   // This is the constructor of the class Employee\r\n   public Employee(String name) {\r\n      this.name = name;\r\n   }\r\n\r\n   // Assign the age of the Employee  to the variable age.\r\n   public void empAge(int empAge) {\r\n      age = empAge;\r\n   }\r\n\r\n   /* Assign the designation to the variable designation.*/\r\n   public void empDesignation(String empDesig) {\r\n      designation = empDesig;\r\n   }\r\n\r\n   /* Assign the salary to the variable	salary.*/\r\n   public void empSalary(double empSalary) {\r\n      salary = empSalary;\r\n   }\r\n\r\n   /* Print the Employee details */\r\n   public void printEmployee() {\r\n      System.out.println(&quot;Name:&quot;+ name );\r\n      System.out.println(&quot;Age:&quot; + age );\r\n      System.out.println(&quot;Designation:&quot; + designation );\r\n      System.out.println(&quot;Salary:&quot; + salary);\r\n   }\r\n}</pre>\r\n\r\n<p>As mentioned previously in this tutorial, processing starts from the main method. Therefore, in order for us to run this Employee class there should be a main method and objects should be created. We will be creating a separate class for these tasks.</p>\r\n\r\n<p>Following is the&nbsp;<em>EmployeeTest</em>&nbsp;class, which creates two instances of the class Employee and invokes the methods for each object to assign values for each variable.</p>\r\n\r\n<p>Save the following code in EmployeeTest.java file.</p>\r\n\r\n<pre>\r\nimport java.io.*;\r\npublic class EmployeeTest {\r\n\r\n   public static void main(String args[]) {\r\n      /* Create two objects using constructor */\r\n      Employee empOne = new Employee(&quot;James Smith&quot;);\r\n      Employee empTwo = new Employee(&quot;Mary Anne&quot;);\r\n\r\n      // Invoking methods for each object created\r\n      empOne.empAge(26);\r\n      empOne.empDesignation(&quot;Senior Software Engineer&quot;);\r\n      empOne.empSalary(1000);\r\n      empOne.printEmployee();\r\n\r\n      empTwo.empAge(21);\r\n      empTwo.empDesignation(&quot;Software Engineer&quot;);\r\n      empTwo.empSalary(500);\r\n      empTwo.printEmployee();\r\n   }\r\n}</pre>\r\n\r\n<p>Now, compile both the classes and then run&nbsp;<em>EmployeeTest</em>&nbsp;to see the result as follows &minus;</p>\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\nC:&gt; javac Employee.java\r\nC:&gt; javac EmployeeTest.java\r\nC:&gt; java EmployeeTest\r\nName:James Smith\r\nAge:26\r\nDesignation:Senior Software Engineer\r\nSalary:1000.0\r\nName:Mary Anne\r\nAge:21\r\nDesignation:Software Engineer\r\nSalary:500.0\r\n</pre>\r\n\r\n<h2>What is Next?</h2>\r\n\r\n<p>In the next session, we will discuss the basic data types in Java and how they can be used when developing Java applications.</p>\r\n', 'java', '', '0', '0', 0),
(47, 'Python - Basic Syntax', '<h1 style=\"margin-left:120px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>Python - Basic Syntax</strong></span></span></h1>\r\n\r\n<p>The Python language has many similarities to Perl, C, and Java. However, there are some definite differences between the languages.</p>\r\n\r\n<h2>First Python Program</h2>\r\n\r\n<p>Let us execute programs in different modes of programming.</p>\r\n\r\n<h3>Interactive Mode Programming</h3>\r\n\r\n<p>Invoking the interpreter without passing a script file as a parameter brings up the following prompt &minus;</p>\r\n\r\n<pre>\r\n$ python\r\nPython 2.4.3 (#1, Nov 11 2010, 13:34:43)\r\n[GCC 4.1.2 20080704 (Red Hat 4.1.2-48)] on linux2\r\nType &quot;help&quot;, &quot;copyright&quot;, &quot;credits&quot; or &quot;license&quot; for more information.\r\n&gt;&gt;&gt;</pre>\r\n\r\n<p>Type the following text at the Python prompt and press the Enter &minus;</p>\r\n\r\n<pre>\r\n&gt;&gt;&gt; print &quot;Hello, Python!&quot;</pre>\r\n\r\n<p>If you are running new version of Python, then you would need to use print statement with parenthesis as in&nbsp;<strong>print (&quot;Hello, Python!&quot;);</strong>. However in Python version 2.4.3, this produces the following result &minus;</p>\r\n\r\n<pre>\r\nHello, Python!\r\n</pre>\r\n\r\n<h3>Script Mode Programming</h3>\r\n\r\n<p>Invoking the interpreter with a script parameter begins execution of the script and continues until the script is finished. When the script is finished, the interpreter is no longer active.</p>\r\n\r\n<p>Let us write a simple Python program in a script. Python files have extension&nbsp;<strong>.py</strong>. Type the following source code in a test.py file &minus;</p>\r\n\r\n<p><a href=\"http://tpcg.io/lsYEBf\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\nprint &quot;Hello, Python!&quot;</pre>\r\n\r\n<p>We assume that you have Python interpreter set in PATH variable. Now, try to run this program as follows &minus;</p>\r\n\r\n<pre>\r\n$ python test.py</pre>\r\n\r\n<p>This produces the following result &minus;</p>\r\n\r\n<pre>\r\nHello, Python!\r\n</pre>\r\n\r\n<p>Let us try another way to execute a Python script. Here is the modified test.py file &minus;</p>\r\n\r\n<p><a href=\"http://tpcg.io/2hIf1p\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\nprint &quot;Hello, Python!&quot;</pre>\r\n\r\n<p>We assume that you have Python interpreter available in /usr/bin directory. Now, try to run this program as follows &minus;</p>\r\n\r\n<pre>\r\n$ chmod +x test.py     # This is to make file executable\r\n$./test.py</pre>\r\n\r\n<p>This produces the following result &minus;</p>\r\n\r\n<pre>\r\nHello, Python!\r\n</pre>\r\n\r\n<h2>Python Identifiers</h2>\r\n\r\n<p>A Python identifier is a name used to identify a variable, function, class, module or other object. An identifier starts with a letter A to Z or a to z or an underscore (_) followed by zero or more letters, underscores and digits (0 to 9).</p>\r\n\r\n<p>Python does not allow punctuation characters such as @, $, and % within identifiers. Python is a case sensitive programming language. Thus,&nbsp;<strong>Manpower</strong>&nbsp;and&nbsp;<strong>manpower</strong>&nbsp;are two different identifiers in Python.</p>\r\n\r\n<p>Here are naming conventions for Python identifiers &minus;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Class names start with an uppercase letter. All other identifiers start with a lowercase letter.</p>\r\n	</li>\r\n	<li>\r\n	<p>Starting an identifier with a single leading underscore indicates that the identifier is private.</p>\r\n	</li>\r\n	<li>\r\n	<p>Starting an identifier with two leading underscores indicates a strongly private identifier.</p>\r\n	</li>\r\n	<li>\r\n	<p>If the identifier also ends with two trailing underscores, the identifier is a language-defined special name.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Reserved Words</h2>\r\n\r\n<p>The following list shows the Python keywords. These are reserved words and you cannot use them as constant or variable or any other identifier names. All the Python keywords contain lowercase letters only.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>and</td>\r\n			<td>exec</td>\r\n			<td>not</td>\r\n		</tr>\r\n		<tr>\r\n			<td>assert</td>\r\n			<td>finally</td>\r\n			<td>or</td>\r\n		</tr>\r\n		<tr>\r\n			<td>break</td>\r\n			<td>for</td>\r\n			<td>pass</td>\r\n		</tr>\r\n		<tr>\r\n			<td>class</td>\r\n			<td>from</td>\r\n			<td>print</td>\r\n		</tr>\r\n		<tr>\r\n			<td>continue</td>\r\n			<td>global</td>\r\n			<td>raise</td>\r\n		</tr>\r\n		<tr>\r\n			<td>def</td>\r\n			<td>if</td>\r\n			<td>return</td>\r\n		</tr>\r\n		<tr>\r\n			<td>del</td>\r\n			<td>import</td>\r\n			<td>try</td>\r\n		</tr>\r\n		<tr>\r\n			<td>elif</td>\r\n			<td>in</td>\r\n			<td>while</td>\r\n		</tr>\r\n		<tr>\r\n			<td>else</td>\r\n			<td>is</td>\r\n			<td>with</td>\r\n		</tr>\r\n		<tr>\r\n			<td>except</td>\r\n			<td>lambda</td>\r\n			<td>yield</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Lines and Indentation</h2>\r\n\r\n<p>Python provides no braces to indicate blocks of code for class and function definitions or flow control. Blocks of code are denoted by line indentation, which is rigidly enforced.</p>\r\n\r\n<p>The number of spaces in the indentation is variable, but all statements within the block must be indented the same amount. For example &minus;</p>\r\n\r\n<pre>\r\nif True:\r\n   print &quot;True&quot;\r\nelse:\r\n   print &quot;False&quot;\r\n</pre>\r\n\r\n<p>However, the following block generates an error &minus;</p>\r\n\r\n<pre>\r\nif True:\r\nprint &quot;Answer&quot;\r\nprint &quot;True&quot;\r\nelse:\r\nprint &quot;Answer&quot;\r\nprint &quot;False&quot;</pre>\r\n\r\n<p>Thus, in Python all the continuous lines indented with same number of spaces would form a block. The following example has various statement blocks &minus;</p>\r\n\r\n<p><strong>Note</strong>&nbsp;&minus; Do not try to understand the logic at this point of time. Just make sure you understood various blocks even if they are without braces.</p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\nimport sys\r\n\r\ntry:\r\n   # open file stream\r\n   file = open(file_name, &quot;w&quot;)\r\nexcept IOError:\r\n   print &quot;There was an error writing to&quot;, file_name\r\n   sys.exit()\r\nprint &quot;Enter &#39;&quot;, file_finish,\r\nprint &quot;&#39; When finished&quot;\r\nwhile file_text != file_finish:\r\n   file_text = raw_input(&quot;Enter text: &quot;)\r\n   if file_text == file_finish:\r\n      # close the file\r\n      file.close\r\n      break\r\n   file.write(file_text)\r\n   file.write(&quot;\n&quot;)\r\nfile.close()\r\nfile_name = raw_input(&quot;Enter filename: &quot;)\r\nif len(file_name) == 0:\r\n   print &quot;Next time please enter something&quot;\r\n   sys.exit()\r\ntry:\r\n   file = open(file_name, &quot;r&quot;)\r\nexcept IOError:\r\n   print &quot;There was an error reading file&quot;\r\n   sys.exit()\r\nfile_text = file.read()\r\nfile.close()\r\nprint file_text</pre>\r\n\r\n<h2>Multi-Line Statements</h2>\r\n\r\n<p>Statements in Python typically end with a new line. Python does, however, allow the use of the line continuation character () to denote that the line should continue. For example &minus;</p>\r\n\r\n<pre>\r\ntotal = item_one + \r\n        item_two + \r\n        item_three\r\n</pre>\r\n\r\n<p>Statements contained within the [], {}, or () brackets do not need to use the line continuation character. For example &minus;</p>\r\n\r\n<pre>\r\ndays = [&#39;Monday&#39;, &#39;Tuesday&#39;, &#39;Wednesday&#39;,\r\n        &#39;Thursday&#39;, &#39;Friday&#39;]\r\n</pre>\r\n\r\n<h2>Quotation in Python</h2>\r\n\r\n<p>Python accepts single (&#39;), double (&quot;) and triple (&#39;&#39;&#39; or &quot;&quot;&quot;) quotes to denote string literals, as long as the same type of quote starts and ends the string.</p>\r\n\r\n<p>The triple quotes are used to span the string across multiple lines. For example, all the following are legal &minus;</p>\r\n\r\n<pre>\r\nword = &#39;word&#39;\r\nsentence = &quot;This is a sentence.&quot;\r\nparagraph = &quot;&quot;&quot;This is a paragraph. It is\r\nmade up of multiple lines and sentences.&quot;&quot;&quot;\r\n</pre>\r\n\r\n<h2>Comments in Python</h2>\r\n\r\n<p>A hash sign (#) that is not inside a string literal begins a comment. All characters after the # and up to the end of the physical line are part of the comment and the Python interpreter ignores them.</p>\r\n\r\n<p><a href=\"http://tpcg.io/VgbqMb\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\n# First comment\r\nprint &quot;Hello, Python!&quot; # second comment</pre>\r\n\r\n<p>This produces the following result &minus;</p>\r\n\r\n<pre>\r\nHello, Python!\r\n</pre>\r\n\r\n<p>You can type a comment on the same line after a statement or expression &minus;</p>\r\n\r\n<pre>\r\nname = &quot;Madisetti&quot; # This is again comment\r\n</pre>\r\n\r\n<p>You can comment multiple lines as follows &minus;</p>\r\n\r\n<pre>\r\n# This is a comment.\r\n# This is a comment, too.\r\n# This is a comment, too.\r\n# I said that already.\r\n</pre>\r\n\r\n<p>Following triple-quoted string is also ignored by Python interpreter and can be used as a multiline comments:</p>\r\n\r\n<pre>\r\n&#39;&#39;&#39;\r\nThis is a multiline\r\ncomment.\r\n&#39;&#39;&#39;\r\n</pre>\r\n\r\n<h2>Using Blank Lines</h2>\r\n\r\n<p>A line containing only whitespace, possibly with a comment, is known as a blank line and Python totally ignores it.</p>\r\n\r\n<p>In an interactive interpreter session, you must enter an empty physical line to terminate a multiline statement.</p>\r\n\r\n<h2>Waiting for the User</h2>\r\n\r\n<p>The following line of the program displays the prompt, the statement saying &ldquo;Press the enter key to exit&rdquo;, and waits for the user to take action &minus;</p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\nraw_input(&quot;\n\nPress the enter key to exit.&quot;)</pre>\r\n\r\n<p>Here, &quot;\n\n&quot; is used to create two new lines before displaying the actual line. Once the user presses the key, the program ends. This is a nice trick to keep a console window open until the user is done with an application.</p>\r\n\r\n<h2>Multiple Statements on a Single Line</h2>\r\n\r\n<p>The semicolon ( ; ) allows multiple statements on the single line given that neither statement starts a new code block. Here is a sample snip using the semicolon &minus;</p>\r\n\r\n<pre>\r\nimport sys; x = &#39;foo&#39;; sys.stdout.write(x + &#39;\n&#39;)</pre>\r\n\r\n<h2>Multiple Statement Groups as Suites</h2>\r\n\r\n<p>A group of individual statements, which make a single code block are called&nbsp;<strong>suites</strong>&nbsp;in Python. Compound or complex statements, such as if, while, def, and class require a header line and a suite.</p>\r\n\r\n<p>Header lines begin the statement (with the keyword) and terminate with a colon ( : ) and are followed by one or more lines which make up the suite. For example &minus;</p>\r\n\r\n<pre>\r\nif expression : \r\n   suite\r\nelif expression : \r\n   suite \r\nelse : \r\n   suite\r\n</pre>\r\n\r\n<h2>Command Line Arguments</h2>\r\n\r\n<p>Many programs can be run to provide you with some basic information about how they should be run. Python enables you to do this with -h &minus;</p>\r\n\r\n<pre>\r\n$ python -h\r\nusage: python [option] ... [-c cmd | -m mod | file | -] [arg] ...\r\nOptions and arguments (and corresponding environment variables):\r\n-c cmd : program passed in as string (terminates option list)\r\n-d     : debug output from parser (also PYTHONDEBUG=x)\r\n-E     : ignore environment variables (such as PYTHONPATH)\r\n-h     : print this help message and exit\r\n\r\n[ etc. ]</pre>\r\n\r\n<p>You can also program your script in such a way that it should accept various options.&nbsp;<a href=\"https://www.tutorialspoint.com/python/python_command_line_arguments.htm\">Command Line Arguments</a>&nbsp;is an advanced topic and should be studied a bit later once you have gone through rest of the Python concepts.</p>\r\n', 'PYTHON', '', '0', '0', 0);
INSERT INTO `courses` (`id`, `topic_name`, `description`, `course_name`, `videopath`, `notes`, `video`, `adminid`) VALUES
(48, 'Python - Variable Types', '<h1 style=\"margin-left:120px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>Python - Variable Types</strong></span></span></h1>\r\n\r\n<p>Variables are nothing but reserved memory locations to store values. This means that when you create a variable you reserve some space in memory.</p>\r\n\r\n<p>Based on the data type of a variable, the interpreter allocates memory and decides what can be stored in the reserved memory. Therefore, by assigning different data types to variables, you can store integers, decimals or characters in these variables.</p>\r\n\r\n<h2>Assigning Values to Variables</h2>\r\n\r\n<p>Python variables do not need explicit declaration to reserve memory space. The declaration happens automatically when you assign a value to a variable. The equal sign (=) is used to assign values to variables.</p>\r\n\r\n<p>The operand to the left of the = operator is the name of the variable and the operand to the right of the = operator is the value stored in the variable. For example &minus;</p>\r\n\r\n<p><a href=\"http://tpcg.io/Eh9FoM\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\ncounter = 100          # An integer assignment\r\nmiles   = 1000.0       # A floating point\r\nname    = &quot;John&quot;       # A string\r\n\r\nprint counter\r\nprint miles\r\nprint name</pre>\r\n\r\n<p>Here, 100, 1000.0 and &quot;John&quot; are the values assigned to&nbsp;<em>counter</em>,&nbsp;<em>miles</em>, and&nbsp;<em>name</em>&nbsp;variables, respectively. This produces the following result &minus;</p>\r\n\r\n<pre>\r\n100\r\n1000.0\r\nJohn\r\n</pre>\r\n\r\n<h2>Multiple Assignment</h2>\r\n\r\n<p>Python allows you to assign a single value to several variables simultaneously. For example &minus;</p>\r\n\r\n<pre>\r\na = b = c = 1\r\n</pre>\r\n\r\n<p>Here, an integer object is created with the value 1, and all three variables are assigned to the same memory location. You can also assign multiple objects to multiple variables. For example &minus;</p>\r\n\r\n<pre>\r\na,b,c = 1,2,&quot;john&quot;\r\n</pre>\r\n\r\n<p>Here, two integer objects with values 1 and 2 are assigned to variables a and b respectively, and one string object with the value &quot;john&quot; is assigned to the variable c.</p>\r\n\r\n<h2>Standard Data Types</h2>\r\n\r\n<p>The data stored in memory can be of many types. For example, a person&#39;s age is stored as a numeric value and his or her address is stored as alphanumeric characters. Python has various standard data types that are used to define the operations possible on them and the storage method for each of them.</p>\r\n\r\n<p>Python has five standard data types &minus;</p>\r\n\r\n<ul>\r\n	<li>Numbers</li>\r\n	<li>String</li>\r\n	<li>List</li>\r\n	<li>Tuple</li>\r\n	<li>Dictionary</li>\r\n</ul>\r\n\r\n<h2>Python Numbers</h2>\r\n\r\n<p>Number data types store numeric values. Number objects are created when you assign a value to them. For example &minus;</p>\r\n\r\n<pre>\r\nvar1 = 1\r\nvar2 = 10\r\n</pre>\r\n\r\n<p>You can also delete the reference to a number object by using the del statement. The syntax of the del statement is &minus;</p>\r\n\r\n<pre>\r\ndel var1[,var2[,var3[....,varN]]]]\r\n</pre>\r\n\r\n<p>You can delete a single object or multiple objects by using the del statement. For example &minus;</p>\r\n\r\n<pre>\r\ndel var\r\ndel var_a, var_b\r\n</pre>\r\n\r\n<p>Python supports four different numerical types &minus;</p>\r\n\r\n<ul>\r\n	<li>int (signed integers)</li>\r\n	<li>long (long integers, they can also be represented in octal and hexadecimal)</li>\r\n	<li>float (floating point real values)</li>\r\n	<li>complex (complex numbers)</li>\r\n</ul>\r\n\r\n<h3>Examples</h3>\r\n\r\n<p>Here are some examples of numbers &minus;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>int</th>\r\n			<th>long</th>\r\n			<th>float</th>\r\n			<th>complex</th>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>51924361L</td>\r\n			<td>0.0</td>\r\n			<td>3.14j</td>\r\n		</tr>\r\n		<tr>\r\n			<td>100</td>\r\n			<td>-0x19323L</td>\r\n			<td>15.20</td>\r\n			<td>45.j</td>\r\n		</tr>\r\n		<tr>\r\n			<td>-786</td>\r\n			<td>0122L</td>\r\n			<td>-21.9</td>\r\n			<td>9.322e-36j</td>\r\n		</tr>\r\n		<tr>\r\n			<td>080</td>\r\n			<td>0xDEFABCECBDAECBFBAEl</td>\r\n			<td>32.3+e18</td>\r\n			<td>.876j</td>\r\n		</tr>\r\n		<tr>\r\n			<td>-0490</td>\r\n			<td>535633629843L</td>\r\n			<td>-90.</td>\r\n			<td>-.6545+0J</td>\r\n		</tr>\r\n		<tr>\r\n			<td>-0x260</td>\r\n			<td>-052318172735L</td>\r\n			<td>-32.54e100</td>\r\n			<td>3e+26J</td>\r\n		</tr>\r\n		<tr>\r\n			<td>0x69</td>\r\n			<td>-4721885298529L</td>\r\n			<td>70.2-E12</td>\r\n			<td>4.53e-7j</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Python allows you to use a lowercase l with long, but it is recommended that you use only an uppercase L to avoid confusion with the number 1. Python displays long integers with an uppercase L.</p>\r\n	</li>\r\n	<li>\r\n	<p>A complex number consists of an ordered pair of real floating-point numbers denoted by x + yj, where x and y are the real numbers and j is the imaginary unit.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Python Strings</h2>\r\n\r\n<p>Strings in Python are identified as a contiguous set of characters represented in the quotation marks. Python allows for either pairs of single or double quotes. Subsets of strings can be taken using the slice operator ([ ] and [:] ) with indexes starting at 0 in the beginning of the string and working their way from -1 at the end.</p>\r\n\r\n<p>The plus (+) sign is the string concatenation operator and the asterisk (*) is the repetition operator. For example &minus;</p>\r\n\r\n<p><a href=\"http://tpcg.io/PsSj6c\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\nstr = &#39;Hello World!&#39;\r\n\r\nprint str          # Prints complete string\r\nprint str[0]       # Prints first character of the string\r\nprint str[2:5]     # Prints characters starting from 3rd to 5th\r\nprint str[2:]      # Prints string starting from 3rd character\r\nprint str * 2      # Prints string two times\r\nprint str + &quot;TEST&quot; # Prints concatenated string</pre>\r\n\r\n<p>This will produce the following result &minus;</p>\r\n\r\n<pre>\r\nHello World!\r\nH\r\nllo\r\nllo World!\r\nHello World!Hello World!\r\nHello World!TEST\r\n</pre>\r\n\r\n<h2>Python Lists</h2>\r\n\r\n<p>Lists are the most versatile of Python&#39;s compound data types. A list contains items separated by commas and enclosed within square brackets ([]). To some extent, lists are similar to arrays in C. One difference between them is that all the items belonging to a list can be of different data type.</p>\r\n\r\n<p>The values stored in a list can be accessed using the slice operator ([ ] and [:]) with indexes starting at 0 in the beginning of the list and working their way to end -1. The plus (+) sign is the list concatenation operator, and the asterisk (*) is the repetition operator. For example &minus;</p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\nlist = [ &#39;abcd&#39;, 786 , 2.23, &#39;john&#39;, 70.2 ]\r\ntinylist = [123, &#39;john&#39;]\r\n\r\nprint list          # Prints complete list\r\nprint list[0]       # Prints first element of the list\r\nprint list[1:3]     # Prints elements starting from 2nd till 3rd \r\nprint list[2:]      # Prints elements starting from 3rd element\r\nprint tinylist * 2  # Prints list two times\r\nprint list + tinylist # Prints concatenated lists</pre>\r\n\r\n<p>This produce the following result &minus;</p>\r\n\r\n<pre>\r\n[&#39;abcd&#39;, 786, 2.23, &#39;john&#39;, 70.2]\r\nabcd\r\n[786, 2.23]\r\n[2.23, &#39;john&#39;, 70.2]\r\n[123, &#39;john&#39;, 123, &#39;john&#39;]\r\n[&#39;abcd&#39;, 786, 2.23, &#39;john&#39;, 70.2, 123, &#39;john&#39;]\r\n</pre>\r\n\r\n<h2>Python Tuples</h2>\r\n\r\n<p>A tuple is another sequence data type that is similar to the list. A tuple consists of a number of values separated by commas. Unlike lists, however, tuples are enclosed within parentheses.</p>\r\n\r\n<p>The main differences between lists and tuples are: Lists are enclosed in brackets ( [ ] ) and their elements and size can be changed, while tuples are enclosed in parentheses ( ( ) ) and cannot be updated. Tuples can be thought of as&nbsp;<strong>read-only</strong>&nbsp;lists. For example &minus;</p>\r\n\r\n<p><a href=\"http://tpcg.io/XYBk9k\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\ntuple = ( &#39;abcd&#39;, 786 , 2.23, &#39;john&#39;, 70.2  )\r\ntinytuple = (123, &#39;john&#39;)\r\n\r\nprint tuple           # Prints complete list\r\nprint tuple[0]        # Prints first element of the list\r\nprint tuple[1:3]      # Prints elements starting from 2nd till 3rd \r\nprint tuple[2:]       # Prints elements starting from 3rd element\r\nprint tinytuple * 2   # Prints list two times\r\nprint tuple + tinytuple # Prints concatenated lists</pre>\r\n\r\n<p>This produce the following result &minus;</p>\r\n\r\n<pre>\r\n(&#39;abcd&#39;, 786, 2.23, &#39;john&#39;, 70.2)\r\nabcd\r\n(786, 2.23)\r\n(2.23, &#39;john&#39;, 70.2)\r\n(123, &#39;john&#39;, 123, &#39;john&#39;)\r\n(&#39;abcd&#39;, 786, 2.23, &#39;john&#39;, 70.2, 123, &#39;john&#39;)\r\n</pre>\r\n\r\n<p>The following code is invalid with tuple, because we attempted to update a tuple, which is not allowed. Similar case is possible with lists &minus;</p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\ntuple = ( &#39;abcd&#39;, 786 , 2.23, &#39;john&#39;, 70.2  )\r\nlist = [ &#39;abcd&#39;, 786 , 2.23, &#39;john&#39;, 70.2  ]\r\ntuple[2] = 1000    # Invalid syntax with tuple\r\nlist[2] = 1000     # Valid syntax with list</pre>\r\n\r\n<h2>Python Dictionary</h2>\r\n\r\n<p>Python&#39;s dictionaries are kind of hash table type. They work like associative arrays or hashes found in Perl and consist of key-value pairs. A dictionary key can be almost any Python type, but are usually numbers or strings. Values, on the other hand, can be any arbitrary Python object.</p>\r\n\r\n<p>Dictionaries are enclosed by curly braces ({ }) and values can be assigned and accessed using square braces ([]). For example &minus;</p>\r\n\r\n<p><a href=\"http://tpcg.io/DlY1Gc\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\ndict = {}\r\ndict[&#39;one&#39;] = &quot;This is one&quot;\r\ndict[2]     = &quot;This is two&quot;\r\n\r\ntinydict = {&#39;name&#39;: &#39;john&#39;,&#39;code&#39;:6734, &#39;dept&#39;: &#39;sales&#39;}\r\n\r\n\r\nprint dict[&#39;one&#39;]       # Prints value for &#39;one&#39; key\r\nprint dict[2]           # Prints value for 2 key\r\nprint tinydict          # Prints complete dictionary\r\nprint tinydict.keys()   # Prints all the keys\r\nprint tinydict.values() # Prints all the values</pre>\r\n\r\n<p>This produce the following result &minus;</p>\r\n\r\n<pre>\r\nThis is one\r\nThis is two\r\n{&#39;dept&#39;: &#39;sales&#39;, &#39;code&#39;: 6734, &#39;name&#39;: &#39;john&#39;}\r\n[&#39;dept&#39;, &#39;code&#39;, &#39;name&#39;]\r\n[&#39;sales&#39;, 6734, &#39;john&#39;]\r\n</pre>\r\n\r\n<p>Dictionaries have no concept of order among elements. It is incorrect to say that the elements are &quot;out of order&quot;; they are simply unordered.</p>\r\n\r\n<h2>Data Type Conversion</h2>\r\n\r\n<p>Sometimes, you may need to perform conversions between the built-in types. To convert between types, you simply use the type name as a function.</p>\r\n\r\n<p>There are several built-in functions to perform conversion from one data type to another. These functions return a new object representing the converted value.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Sr.No.</th>\r\n			<th>Function &amp; Description</th>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>\r\n			<p><strong>int(x [,base])</strong></p>\r\n\r\n			<p>Converts x to an integer. base specifies the base if x is a string.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>\r\n			<p><strong>long(x [,base] )</strong></p>\r\n\r\n			<p>Converts x to a long integer. base specifies the base if x is a string.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>\r\n			<p><strong>float(x)</strong></p>\r\n\r\n			<p>Converts x to a floating-point number.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>\r\n			<p><strong>complex(real [,imag])</strong></p>\r\n\r\n			<p>Creates a complex number.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>\r\n			<p><strong>str(x)</strong></p>\r\n\r\n			<p>Converts object x to a string representation.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>\r\n			<p><strong>repr(x)</strong></p>\r\n\r\n			<p>Converts object x to an expression string.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>\r\n			<p><strong>eval(str)</strong></p>\r\n\r\n			<p>Evaluates a string and returns an object.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>\r\n			<p><strong>tuple(s)</strong></p>\r\n\r\n			<p>Converts s to a tuple.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>\r\n			<p><strong>list(s)</strong></p>\r\n\r\n			<p>Converts s to a list.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>\r\n			<p><strong>set(s)</strong></p>\r\n\r\n			<p>Converts s to a set.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>\r\n			<p><strong>dict(d)</strong></p>\r\n\r\n			<p>Creates a dictionary. d must be a sequence of (key,value) tuples.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>\r\n			<p><strong>frozenset(s)</strong></p>\r\n\r\n			<p>Converts s to a frozen set.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>\r\n			<p><strong>chr(x)</strong></p>\r\n\r\n			<p>Converts an integer to a character.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>\r\n			<p><strong>unichr(x)</strong></p>\r\n\r\n			<p>Converts an integer to a Unicode character.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>\r\n			<p><strong>ord(x)</strong></p>\r\n\r\n			<p>Converts a single character to its integer value.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>\r\n			<p><strong>hex(x)</strong></p>\r\n\r\n			<p>Converts an integer to a hexadecimal string.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>\r\n			<p><strong>oct(x)</strong></p>\r\n\r\n			<p>Converts an integer to an octal string.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'PYTHON', '', '0', '0', 0),
(49, 'Python - Basic Operators', '<h1 style=\"margin-left:120px\"><span style=\"font-size:24px\"><span style=\"color:#3498db\"><strong>Python - Basic Operators</strong></span></span></h1>\r\n\r\n<p>Operators are the constructs which can manipulate the value of operands.</p>\r\n\r\n<p>Consider the expression 4 + 5 = 9. Here, 4 and 5 are called operands and + is called operator.</p>\r\n\r\n<h2>Types of Operator</h2>\r\n\r\n<p>Python language supports the following types of operators.</p>\r\n\r\n<ul>\r\n	<li>Arithmetic Operators</li>\r\n	<li>Comparison (Relational) Operators</li>\r\n	<li>Assignment Operators</li>\r\n	<li>Logical Operators</li>\r\n	<li>Bitwise Operators</li>\r\n	<li>Membership Operators</li>\r\n	<li>Identity Operators</li>\r\n</ul>\r\n\r\n<p>Let us have a look on all operators one by one.</p>\r\n\r\n<h2>Python Arithmetic Operators</h2>\r\n\r\n<p>Assume variable a holds 10 and variable b holds 20, then &minus;</p>\r\n\r\n<p>[&nbsp;<a href=\"https://www.tutorialspoint.com/python/arithmetic_operators_example.htm\">Show Example</a>&nbsp;]</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Operator</th>\r\n			<th>Description</th>\r\n			<th>Example</th>\r\n		</tr>\r\n		<tr>\r\n			<td>+ Addition</td>\r\n			<td>Adds values on either side of the operator.</td>\r\n			<td>a + b = 30</td>\r\n		</tr>\r\n		<tr>\r\n			<td>- Subtraction</td>\r\n			<td>Subtracts right hand operand from left hand operand.</td>\r\n			<td>a &ndash; b = -10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>* Multiplication</td>\r\n			<td>Multiplies values on either side of the operator</td>\r\n			<td>a * b = 200</td>\r\n		</tr>\r\n		<tr>\r\n			<td>/ Division</td>\r\n			<td>Divides left hand operand by right hand operand</td>\r\n			<td>b / a = 2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>% Modulus</td>\r\n			<td>Divides left hand operand by right hand operand and returns remainder</td>\r\n			<td>b % a = 0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>** Exponent</td>\r\n			<td>Performs exponential (power) calculation on operators</td>\r\n			<td>a**b =10 to the power 20</td>\r\n		</tr>\r\n		<tr>\r\n			<td>//</td>\r\n			<td>Floor Division - The division of operands where the result is the quotient in which the digits after the decimal point are removed. But if one of the operands is negative, the result is floored, i.e., rounded away from zero (towards negative infinity) &minus;</td>\r\n			<td>9//2 = 4 and 9.0//2.0 = 4.0, -11//3 = -4, -11.0//3 = -4.0</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Python Comparison Operators</h2>\r\n\r\n<p>These operators compare the values on either sides of them and decide the relation among them. They are also called Relational operators.</p>\r\n\r\n<p>Assume variable a holds 10 and variable b holds 20, then &minus;</p>\r\n\r\n<p>[&nbsp;<a href=\"https://www.tutorialspoint.com/python/comparison_operators_example.htm\">Show Example</a>&nbsp;]</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Operator</th>\r\n			<th>Description</th>\r\n			<th>Example</th>\r\n		</tr>\r\n		<tr>\r\n			<td>==</td>\r\n			<td>If the values of two operands are equal, then the condition becomes true.</td>\r\n			<td>(a == b) is not true.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>!=</td>\r\n			<td>If values of two operands are not equal, then condition becomes true.</td>\r\n			<td>(a != b) is true.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&lt;&gt;</td>\r\n			<td>If values of two operands are not equal, then condition becomes true.</td>\r\n			<td>(a &lt;&gt; b) is true. This is similar to != operator.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&gt;</td>\r\n			<td>If the value of left operand is greater than the value of right operand, then condition becomes true.</td>\r\n			<td>(a &gt; b) is not true.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&lt;</td>\r\n			<td>If the value of left operand is less than the value of right operand, then condition becomes true.</td>\r\n			<td>(a &lt; b) is true.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&gt;=</td>\r\n			<td>If the value of left operand is greater than or equal to the value of right operand, then condition becomes true.</td>\r\n			<td>(a &gt;= b) is not true.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&lt;=</td>\r\n			<td>If the value of left operand is less than or equal to the value of right operand, then condition becomes true.</td>\r\n			<td>(a &lt;= b) is true.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Python Assignment Operators</h2>\r\n\r\n<p>Assume variable a holds 10 and variable b holds 20, then &minus;</p>\r\n\r\n<p>[&nbsp;<a href=\"https://www.tutorialspoint.com/python/assignment_operators_example.htm\">Show Example</a>&nbsp;]</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Operator</th>\r\n			<th>Description</th>\r\n			<th>Example</th>\r\n		</tr>\r\n		<tr>\r\n			<td>=</td>\r\n			<td>Assigns values from right side operands to left side operand</td>\r\n			<td>c = a + b assigns value of a + b into c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>+= Add AND</td>\r\n			<td>It adds right operand to the left operand and assign the result to left operand</td>\r\n			<td>c += a is equivalent to c = c + a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>-= Subtract AND</td>\r\n			<td>It subtracts right operand from the left operand and assign the result to left operand</td>\r\n			<td>c -= a is equivalent to c = c - a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>*= Multiply AND</td>\r\n			<td>It multiplies right operand with the left operand and assign the result to left operand</td>\r\n			<td>c *= a is equivalent to c = c * a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>/= Divide AND</td>\r\n			<td>It divides left operand with the right operand and assign the result to left operand</td>\r\n			<td>c /= a is equivalent to c = c / ac /= a is equivalent to c = c / a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>%= Modulus AND</td>\r\n			<td>It takes modulus using two operands and assign the result to left operand</td>\r\n			<td>c %= a is equivalent to c = c % a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>**= Exponent AND</td>\r\n			<td>Performs exponential (power) calculation on operators and assign value to the left operand</td>\r\n			<td>c **= a is equivalent to c = c ** a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>//= Floor Division</td>\r\n			<td>It performs floor division on operators and assign value to the left operand</td>\r\n			<td>c //= a is equivalent to c = c // a</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Python Bitwise Operators</h2>\r\n\r\n<p>Bitwise operator works on bits and performs bit by bit operation. Assume if a = 60; and b = 13; Now in binary format they will be as follows &minus;</p>\r\n\r\n<p>a = 0011 1100</p>\r\n\r\n<p>b = 0000 1101</p>\r\n\r\n<p>-----------------</p>\r\n\r\n<p>a&amp;b = 0000 1100</p>\r\n\r\n<p>a|b = 0011 1101</p>\r\n\r\n<p>a^b = 0011 0001</p>\r\n\r\n<p>~a&nbsp; = 1100 0011</p>\r\n\r\n<p>There are following Bitwise operators supported by Python language</p>\r\n\r\n<p>[&nbsp;<a href=\"https://www.tutorialspoint.com/python/bitwise_operators_example.htm\">Show Example</a>&nbsp;]</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Operator</th>\r\n			<th>Description</th>\r\n			<th>Example</th>\r\n		</tr>\r\n		<tr>\r\n			<td>&amp; Binary AND</td>\r\n			<td>Operator copies a bit to the result if it exists in both operands</td>\r\n			<td>(a &amp; b) (means 0000 1100)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>| Binary OR</td>\r\n			<td>It copies a bit if it exists in either operand.</td>\r\n			<td>(a | b) = 61 (means 0011 1101)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>^ Binary XOR</td>\r\n			<td>It copies the bit if it is set in one operand but not both.</td>\r\n			<td>(a ^ b) = 49 (means 0011 0001)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>~ Binary Ones Complement</td>\r\n			<td>It is unary and has the effect of &#39;flipping&#39; bits.</td>\r\n			<td>(~a ) = -61 (means 1100 0011 in 2&#39;s complement form due to a signed binary number.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&lt;&lt; Binary Left Shift</td>\r\n			<td>The left operands value is moved left by the number of bits specified by the right operand.</td>\r\n			<td>a &lt;&lt; 2 = 240 (means 1111 0000)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&gt;&gt; Binary Right Shift</td>\r\n			<td>The left operands value is moved right by the number of bits specified by the right operand.</td>\r\n			<td>a &gt;&gt; 2 = 15 (means 0000 1111)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Python Logical Operators</h2>\r\n\r\n<p>There are following logical operators supported by Python language. Assume variable a holds 10 and variable b holds 20 then</p>\r\n\r\n<p>[&nbsp;<a href=\"https://www.tutorialspoint.com/python/logical_operators_example.htm\">Show Example</a>&nbsp;]</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Operator</th>\r\n			<th>Description</th>\r\n			<th>Example</th>\r\n		</tr>\r\n		<tr>\r\n			<td>and Logical AND</td>\r\n			<td>If both the operands are true then condition becomes true.</td>\r\n			<td>(a and b) is true.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>or Logical OR</td>\r\n			<td>If any of the two operands are non-zero then condition becomes true.</td>\r\n			<td>(a or b) is true.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>not Logical NOT</td>\r\n			<td>Used to reverse the logical state of its operand.</td>\r\n			<td>Not(a and b) is false.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Used to reverse the logical state of its operand.</p>\r\n\r\n<h2>Python Membership Operators</h2>\r\n\r\n<p>Python&rsquo;s membership operators test for membership in a sequence, such as strings, lists, or tuples. There are two membership operators as explained below &minus;</p>\r\n\r\n<p>[&nbsp;<a href=\"https://www.tutorialspoint.com/python/membership_operators_example.htm\">Show Example</a>&nbsp;]</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Operator</th>\r\n			<th>Description</th>\r\n			<th>Example</th>\r\n		</tr>\r\n		<tr>\r\n			<td>in</td>\r\n			<td>Evaluates to true if it finds a variable in the specified sequence and false otherwise.</td>\r\n			<td>x in y, here in results in a 1 if x is a member of sequence y.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>not in</td>\r\n			<td>Evaluates to true if it does not finds a variable in the specified sequence and false otherwise.</td>\r\n			<td>x not in y, here not in results in a 1 if x is not a member of sequence y.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Python Identity Operators</h2>\r\n\r\n<p>Identity operators compare the memory locations of two objects. There are two Identity operators explained below &minus;</p>\r\n\r\n<p>[&nbsp;<a href=\"https://www.tutorialspoint.com/python/identity_operators_example.htm\">Show Example</a>&nbsp;]</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Operator</th>\r\n			<th>Description</th>\r\n			<th>Example</th>\r\n		</tr>\r\n		<tr>\r\n			<td>is</td>\r\n			<td>Evaluates to true if the variables on either side of the operator point to the same object and false otherwise.</td>\r\n			<td>x is y, here&nbsp;<strong>is</strong>&nbsp;results in 1 if id(x) equals id(y).</td>\r\n		</tr>\r\n		<tr>\r\n			<td>is not</td>\r\n			<td>Evaluates to false if the variables on either side of the operator point to the same object and true otherwise.</td>\r\n			<td>x is not y, here&nbsp;<strong>is not</strong>&nbsp;results in 1 if id(x) is not equal to id(y).</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Python Operators Precedence</h2>\r\n\r\n<p>The following table lists all operators from highest precedence to lowest.</p>\r\n\r\n<p>[&nbsp;<a href=\"https://www.tutorialspoint.com/python/operators_precedence_example.htm\">Show Example</a>&nbsp;]</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Sr.No.</th>\r\n			<th>Operator &amp; Description</th>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>\r\n			<p><strong>**</strong></p>\r\n\r\n			<p>Exponentiation (raise to the power)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>\r\n			<p><strong>~ + -</strong></p>\r\n\r\n			<p>Complement, unary plus and minus (method names for the last two are +@ and -@)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>\r\n			<p><strong>* / % //</strong></p>\r\n\r\n			<p>Multiply, divide, modulo and floor division</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>\r\n			<p><strong>+ -</strong></p>\r\n\r\n			<p>Addition and subtraction</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>\r\n			<p><strong>&gt;&gt; &lt;&lt;</strong></p>\r\n\r\n			<p>Right and left bitwise shift</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>\r\n			<p><strong>&amp;</strong></p>\r\n\r\n			<p>Bitwise &#39;AND&#39;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>\r\n			<p><strong>^ |</strong></p>\r\n\r\n			<p>Bitwise exclusive `OR&#39; and regular `OR&#39;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>\r\n			<p><strong>&lt;= &lt; &gt; &gt;=</strong></p>\r\n\r\n			<p>Comparison operators</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>\r\n			<p><strong>&lt;&gt; == !=</strong></p>\r\n\r\n			<p>Equality operators</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>\r\n			<p><strong>= %= /= //= -= += *= **=</strong></p>\r\n\r\n			<p>Assignment operators</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>\r\n			<p><strong>is is not</strong></p>\r\n\r\n			<p>Identity operators</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>\r\n			<p><strong>in not in</strong></p>\r\n\r\n			<p>Membership operators</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>\r\n			<p><strong>not or and</strong></p>\r\n\r\n			<p>Logical operators</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'PYTHON', '', '0', '0', 0),
(51, 'C-Variable', '<p>vavriab;e</p>\r\n', 'C', '', '0', '0', 0),
(52, 'android-variable', '<h1 style=\"margin-left:120px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>Python - Variable Types</strong></span></span></h1>\r\n\r\n<p>Variables are nothing but reserved memory locations to store values. This means that when you create a variable you reserve some space in memory.</p>\r\n\r\n<p>Based on the data type of a variable, the interpreter allocates memory and decides what can be stored in the reserved memory. Therefore, by assigning different data types to variables, you can store integers, decimals or characters in these variables.</p>\r\n\r\n<h2>Assigning Values to Variables</h2>\r\n\r\n<p>Python variables do not need explicit declaration to reserve memory space. The declaration happens automatically when you assign a value to a variable. The equal sign (=) is used to assign values to variables.</p>\r\n\r\n<p>The operand to the left of the = operator is the name of the variable and the operand to the right of the = operator is the value stored in the variable. For example &minus;</p>\r\n\r\n<p><a href=\"http://tpcg.io/Eh9FoM\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\ncounter = 100          # An integer assignment\r\nmiles   = 1000.0       # A floating point\r\nname    = &quot;John&quot;       # A string\r\n\r\nprint counter\r\nprint miles\r\nprint name</pre>\r\n\r\n<p>Here, 100, 1000.0 and &quot;John&quot; are the values assigned to&nbsp;<em>counter</em>,&nbsp;<em>miles</em>, and&nbsp;<em>name</em>&nbsp;variables, respectively. This produces the following result &minus;</p>\r\n\r\n<pre>\r\n100\r\n1000.0\r\nJohn\r\n</pre>\r\n\r\n<h2>Multiple Assignment</h2>\r\n\r\n<p>Python allows you to assign a single value to several variables simultaneously. For example &minus;</p>\r\n\r\n<pre>\r\na = b = c = 1\r\n</pre>\r\n\r\n<p>Here, an integer object is created with the value 1, and all three variables are assigned to the same memory location. You can also assign multiple objects to multiple variables. For example &minus;</p>\r\n\r\n<pre>\r\na,b,c = 1,2,&quot;john&quot;\r\n</pre>\r\n\r\n<p>Here, two integer objects with values 1 and 2 are assigned to variables a and b respectively, and one string object with the value &quot;john&quot; is assigned to the variable c.</p>\r\n\r\n<h2>Standard Data Types</h2>\r\n\r\n<p>The data stored in memory can be of many types. For example, a person&#39;s age is stored as a numeric value and his or her address is stored as alphanumeric characters. Python has various standard data types that are used to define the operations possible on them and the storage method for each of them.</p>\r\n\r\n<p>Python has five standard data types &minus;</p>\r\n\r\n<ul>\r\n	<li>Numbers</li>\r\n	<li>String</li>\r\n	<li>List</li>\r\n	<li>Tuple</li>\r\n	<li>Dictionary</li>\r\n</ul>\r\n\r\n<h2>Python Numbers</h2>\r\n\r\n<p>Number data types store numeric values. Number objects are created when you assign a value to them. For example &minus;</p>\r\n\r\n<pre>\r\nvar1 = 1\r\nvar2 = 10\r\n</pre>\r\n\r\n<p>You can also delete the reference to a number object by using the del statement. The syntax of the del statement is &minus;</p>\r\n\r\n<pre>\r\ndel var1[,var2[,var3[....,varN]]]]\r\n</pre>\r\n\r\n<p>You can delete a single object or multiple objects by using the del statement. For example &minus;</p>\r\n\r\n<pre>\r\ndel var\r\ndel var_a, var_b\r\n</pre>\r\n\r\n<p>Python supports four different numerical types &minus;</p>\r\n\r\n<ul>\r\n	<li>int (signed integers)</li>\r\n	<li>long (long integers, they can also be represented in octal and hexadecimal)</li>\r\n	<li>float (floating point real values)</li>\r\n	<li>complex (complex numbers)</li>\r\n</ul>\r\n\r\n<h3>Examples</h3>\r\n\r\n<p>Here are some examples of numbers &minus;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>int</th>\r\n			<th>long</th>\r\n			<th>float</th>\r\n			<th>complex</th>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>51924361L</td>\r\n			<td>0.0</td>\r\n			<td>3.14j</td>\r\n		</tr>\r\n		<tr>\r\n			<td>100</td>\r\n			<td>-0x19323L</td>\r\n			<td>15.20</td>\r\n			<td>45.j</td>\r\n		</tr>\r\n		<tr>\r\n			<td>-786</td>\r\n			<td>0122L</td>\r\n			<td>-21.9</td>\r\n			<td>9.322e-36j</td>\r\n		</tr>\r\n		<tr>\r\n			<td>080</td>\r\n			<td>0xDEFABCECBDAECBFBAEl</td>\r\n			<td>32.3+e18</td>\r\n			<td>.876j</td>\r\n		</tr>\r\n		<tr>\r\n			<td>-0490</td>\r\n			<td>535633629843L</td>\r\n			<td>-90.</td>\r\n			<td>-.6545+0J</td>\r\n		</tr>\r\n		<tr>\r\n			<td>-0x260</td>\r\n			<td>-052318172735L</td>\r\n			<td>-32.54e100</td>\r\n			<td>3e+26J</td>\r\n		</tr>\r\n		<tr>\r\n			<td>0x69</td>\r\n			<td>-4721885298529L</td>\r\n			<td>70.2-E12</td>\r\n			<td>4.53e-7j</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Python allows you to use a lowercase l with long, but it is recommended that you use only an uppercase L to avoid confusion with the number 1. Python displays long integers with an uppercase L.</p>\r\n	</li>\r\n	<li>\r\n	<p>A complex number consists of an ordered pair of real floating-point numbers denoted by x + yj, where x and y are the real numbers and j is the imaginary unit.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Python Strings</h2>\r\n\r\n<p>Strings in Python are identified as a contiguous set of characters represented in the quotation marks. Python allows for either pairs of single or double quotes. Subsets of strings can be taken using the slice operator ([ ] and [:] ) with indexes starting at 0 in the beginning of the string and working their way from -1 at the end.</p>\r\n\r\n<p>The plus (+) sign is the string concatenation operator and the asterisk (*) is the repetition operator. For example &minus;</p>\r\n\r\n<p><a href=\"http://tpcg.io/PsSj6c\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\nstr = &#39;Hello World!&#39;\r\n\r\nprint str          # Prints complete string\r\nprint str[0]       # Prints first character of the string\r\nprint str[2:5]     # Prints characters starting from 3rd to 5th\r\nprint str[2:]      # Prints string starting from 3rd character\r\nprint str * 2      # Prints string two times\r\nprint str + &quot;TEST&quot; # Prints concatenated string</pre>\r\n\r\n<p>This will produce the following result &minus;</p>\r\n\r\n<pre>\r\nHello World!\r\nH\r\nllo\r\nllo World!\r\nHello World!Hello World!\r\nHello World!TEST\r\n</pre>\r\n\r\n<h2>Python Lists</h2>\r\n\r\n<p>Lists are the most versatile of Python&#39;s compound data types. A list contains items separated by commas and enclosed within square brackets ([]). To some extent, lists are similar to arrays in C. One difference between them is that all the items belonging to a list can be of different data type.</p>\r\n\r\n<p>The values stored in a list can be accessed using the slice operator ([ ] and [:]) with indexes starting at 0 in the beginning of the list and working their way to end -1. The plus (+) sign is the list concatenation operator, and the asterisk (*) is the repetition operator. For example &minus;</p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\nlist = [ &#39;abcd&#39;, 786 , 2.23, &#39;john&#39;, 70.2 ]\r\ntinylist = [123, &#39;john&#39;]\r\n\r\nprint list          # Prints complete list\r\nprint list[0]       # Prints first element of the list\r\nprint list[1:3]     # Prints elements starting from 2nd till 3rd \r\nprint list[2:]      # Prints elements starting from 3rd element\r\nprint tinylist * 2  # Prints list two times\r\nprint list + tinylist # Prints concatenated lists</pre>\r\n\r\n<p>This produce the following result &minus;</p>\r\n\r\n<pre>\r\n[&#39;abcd&#39;, 786, 2.23, &#39;john&#39;, 70.2]\r\nabcd\r\n[786, 2.23]\r\n[2.23, &#39;john&#39;, 70.2]\r\n[123, &#39;john&#39;, 123, &#39;john&#39;]\r\n[&#39;abcd&#39;, 786, 2.23, &#39;john&#39;, 70.2, 123, &#39;john&#39;]\r\n</pre>\r\n\r\n<h2>Python Tuples</h2>\r\n\r\n<p>A tuple is another sequence data type that is similar to the list. A tuple consists of a number of values separated by commas. Unlike lists, however, tuples are enclosed within parentheses.</p>\r\n\r\n<p>The main differences between lists and tuples are: Lists are enclosed in brackets ( [ ] ) and their elements and size can be changed, while tuples are enclosed in parentheses ( ( ) ) and cannot be updated. Tuples can be thought of as&nbsp;<strong>read-only</strong>&nbsp;lists. For example &minus;</p>\r\n\r\n<p><a href=\"http://tpcg.io/XYBk9k\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\ntuple = ( &#39;abcd&#39;, 786 , 2.23, &#39;john&#39;, 70.2  )\r\ntinytuple = (123, &#39;john&#39;)\r\n\r\nprint tuple           # Prints complete list\r\nprint tuple[0]        # Prints first element of the list\r\nprint tuple[1:3]      # Prints elements starting from 2nd till 3rd \r\nprint tuple[2:]       # Prints elements starting from 3rd element\r\nprint tinytuple * 2   # Prints list two times\r\nprint tuple + tinytuple # Prints concatenated lists</pre>\r\n\r\n<p>This produce the following result &minus;</p>\r\n\r\n<pre>\r\n(&#39;abcd&#39;, 786, 2.23, &#39;john&#39;, 70.2)\r\nabcd\r\n(786, 2.23)\r\n(2.23, &#39;john&#39;, 70.2)\r\n(123, &#39;john&#39;, 123, &#39;john&#39;)\r\n(&#39;abcd&#39;, 786, 2.23, &#39;john&#39;, 70.2, 123, &#39;john&#39;)\r\n</pre>\r\n\r\n<p>The following code is invalid with tuple, because we attempted to update a tuple, which is not allowed. Similar case is possible with lists &minus;</p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\ntuple = ( &#39;abcd&#39;, 786 , 2.23, &#39;john&#39;, 70.2  )\r\nlist = [ &#39;abcd&#39;, 786 , 2.23, &#39;john&#39;, 70.2  ]\r\ntuple[2] = 1000    # Invalid syntax with tuple\r\nlist[2] = 1000     # Valid syntax with list</pre>\r\n\r\n<h2>Python Dictionary</h2>\r\n\r\n<p>Python&#39;s dictionaries are kind of hash table type. They work like associative arrays or hashes found in Perl and consist of key-value pairs. A dictionary key can be almost any Python type, but are usually numbers or strings. Values, on the other hand, can be any arbitrary Python object.</p>\r\n\r\n<p>Dictionaries are enclosed by curly braces ({ }) and values can be assigned and accessed using square braces ([]). For example &minus;</p>\r\n\r\n<p><a href=\"http://tpcg.io/DlY1Gc\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\ndict = {}\r\ndict[&#39;one&#39;] = &quot;This is one&quot;\r\ndict[2]     = &quot;This is two&quot;\r\n\r\ntinydict = {&#39;name&#39;: &#39;john&#39;,&#39;code&#39;:6734, &#39;dept&#39;: &#39;sales&#39;}\r\n\r\n\r\nprint dict[&#39;one&#39;]       # Prints value for &#39;one&#39; key\r\nprint dict[2]           # Prints value for 2 key\r\nprint tinydict          # Prints complete dictionary\r\nprint tinydict.keys()   # Prints all the keys\r\nprint tinydict.values() # Prints all the values</pre>\r\n\r\n<p>This produce the following result &minus;</p>\r\n\r\n<pre>\r\nThis is one\r\nThis is two\r\n{&#39;dept&#39;: &#39;sales&#39;, &#39;code&#39;: 6734, &#39;name&#39;: &#39;john&#39;}\r\n[&#39;dept&#39;, &#39;code&#39;, &#39;name&#39;]\r\n[&#39;sales&#39;, 6734, &#39;john&#39;]\r\n</pre>\r\n\r\n<p>Dictionaries have no concept of order among elements. It is incorrect to say that the elements are &quot;out of order&quot;; they are simply unordered.</p>\r\n\r\n<h2>Data Type Conversion</h2>\r\n\r\n<p>Sometimes, you may need to perform conversions between the built-in types. To convert between types, you simply use the type name as a function.</p>\r\n\r\n<p>There are several built-in functions to perform conversion from one data type to another. These functions return a new object representing the converted value.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Sr.No.</th>\r\n			<th>Function &amp; Description</th>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>\r\n			<p><strong>int(x [,base])</strong></p>\r\n\r\n			<p>Converts x to an integer. base specifies the base if x is a string.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>\r\n			<p><strong>long(x [,base] )</strong></p>\r\n\r\n			<p>Converts x to a long integer. base specifies the base if x is a string.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>\r\n			<p><strong>float(x)</strong></p>\r\n\r\n			<p>Converts x to a floating-point number.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>\r\n			<p><strong>complex(real [,imag])</strong></p>\r\n\r\n			<p>Creates a complex number.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>\r\n			<p><strong>str(x)</strong></p>\r\n\r\n			<p>Converts object x to a string representation.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>\r\n			<p><strong>repr(x)</strong></p>\r\n\r\n			<p>Converts object x to an expression string.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>\r\n			<p><strong>eval(str)</strong></p>\r\n\r\n			<p>Evaluates a string and returns an object.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>\r\n			<p><strong>tuple(s)</strong></p>\r\n\r\n			<p>Converts s to a tuple.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>\r\n			<p><strong>list(s)</strong></p>\r\n\r\n			<p>Converts s to a list.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>\r\n			<p><strong>set(s)</strong></p>\r\n\r\n			<p>Converts s to a set.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>\r\n			<p><strong>dict(d)</strong></p>\r\n\r\n			<p>Creates a dictionary. d must be a sequence of (key,value) tuples.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>\r\n			<p><strong>frozenset(s)</strong></p>\r\n\r\n			<p>Converts s to a frozen set.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>\r\n			<p><strong>chr(x)</strong></p>\r\n\r\n			<p>Converts an integer to a character.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>\r\n			<p><strong>unichr(x)</strong></p>\r\n\r\n			<p>Converts an integer to a Unicode character.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>\r\n			<p><strong>ord(x)</strong></p>\r\n\r\n			<p>Converts a single character to its integer value.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>\r\n			<p><strong>hex(x)</strong></p>\r\n\r\n			<p>Converts an integer to a hexadecimal string.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>\r\n			<p><strong>oct(x)</strong></p>\r\n\r\n			<p>Converts an integer to an octal string.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Android', '', '0', '0', 0),
(54, 'CSS Variable', '<p>CSS VAriabel demo.</p>\r\n', 'css', '', '0', '0', 0),
(55, 'CSS style tag', '<p>it is a description</p>\r\n', 'css', '', '0', '0', 0),
(58, 'Tekles upload', '<p>bestofme</p>\r\n', 'java', '', '', '', 0),
(59, 'done', '<p>yes</p>\r\n', 'java', '', '', '', 0);
INSERT INTO `courses` (`id`, `topic_name`, `description`, `course_name`, `videopath`, `notes`, `video`, `adminid`) VALUES
(60, 'Objects in Android', '<p>Let us now look deep into what are objects. If we consider the real-world, we can find many objects around us, cars, dogs, humans, etc. All these objects have a state and a behavior.</p>\n\n<p>If we consider a dog, then its state is - name, breed, color, and the behavior is - barking, wagging the tail, running.</p>\n\n<p>If you compare the software object with a real-world object, they have very similar characteristics.</p>\n\n<p>Software objects also have a state and a behavior. A software object&#39;s state is stored in fields and behavior is shown via methods.</p>\n\n<p>So in software development, methods operate on the internal state of an object and the object-to-object communication is done via methods.</p>\n\n<h2>Classes in Java</h2>\n\n<p>A class is a blueprint from which individual objects are created.</p>\n\n<p>Following is a sample of a class.</p>\n\n<h3>Example</h3>\n\n<pre>\npublic class Dog {\n   String breed;\n   int age;\n   String color;\n\n   void barking() {\n   }\n\n   void hungry() {\n   }\n\n   void sleeping() {\n   }\n}</pre>\n\n<p>A class can contain any of the following variable types.</p>\n\n<ul>\n	<li>\n	<p><strong>Local variables</strong>&nbsp;&minus; Variables defined inside methods, constructors or blocks are called local variables. The variable will be declared and initialized within the method and the variable will be destroyed when the method has completed.</p>\n	</li>\n	<li>\n	<p><strong>Instance variables</strong>&nbsp;&minus; Instance variables are variables within a class but outside any method. These variables are initialized when the class is instantiated. Instance variables can be accessed from inside any method, constructor or blocks of that particular class.</p>\n	</li>\n	<li>\n	<p><strong>Class variables</strong>&nbsp;&minus; Class variables are variables declared within a class, outside any method, with the static keyword.</p>\n	</li>\n</ul>\n\n<p>A class can have any number of methods to access the value of various kinds of methods. In the above example, barking(), hungry() and sleeping() are methods.</p>\n\n<p>Following are some of the important topics that need to be discussed when looking into classes of the Java Language.</p>\n\n<h2>Constructors</h2>\n\n<p>When discussing about classes, one of the most important sub topic would be constructors. Every class has a constructor. If we do not explicitly write a constructor for a class, the Java compiler builds a default constructor for that class.</p>\n\n<p>Each time a new object is created, at least one constructor will be invoked. The main rule of constructors is that they should have the same name as the class. A class can have more than one constructor.</p>\n\n<p>Following is an example of a constructor &minus;</p>\n\n<h3>Example</h3>\n\n<pre>\npublic class Puppy {\n   public Puppy() {\n   }\n\n   public Puppy(String name) {\n      // This constructor has one parameter, <em>name</em>.\n   }\n}</pre>\n\n<p>Java also supports&nbsp;<a href=\"https://www.tutorialspoint.com/java/java_using_singleton.htm\">Singleton Classes</a>&nbsp;where you would be able to create only one instance of a class.</p>\n\n<p><strong>Note</strong>&nbsp;&minus; We have two different types of constructors. We are going to discuss constructors in detail in the subsequent chapters.</p>\n\n<h2>Creating an Object</h2>\n\n<p>As mentioned previously, a class provides the blueprints for objects. So basically, an object is created from a class. In Java, the new keyword is used to create new objects.</p>\n\n<p>There are three steps when creating an object from a class &minus;</p>\n\n<ul>\n	<li>\n	<p><strong>Declaration</strong>&nbsp;&minus; A variable declaration with a variable name with an object type.</p>\n	</li>\n	<li>\n	<p><strong>Instantiation</strong>&nbsp;&minus; The &#39;new&#39; keyword is used to create the object.</p>\n	</li>\n	<li>\n	<p><strong>Initialization</strong>&nbsp;&minus; The &#39;new&#39; keyword is followed by a call to a constructor. This call initializes the new object.</p>\n	</li>\n</ul>\n\n<p>Following is an example of creating an object &minus;</p>\n\n<h3>Example</h3>\n\n<p><a href=\"http://tpcg.io/gQv0gO\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\n\n<pre>\npublic class Puppy {\n   public Puppy(String name) {\n      // This constructor has one parameter, <em>name</em>.\n      System.out.println(&quot;Passed Name is :&quot; + name );\n   }\n\n   public static void main(String []args) {\n      // Following statement would create an object myPuppy\n      Puppy myPuppy = new Puppy( &quot;tommy&quot; );\n   }\n}</pre>\n\n<p>If we compile and run the above program, then it will produce the following result &minus;</p>\n\n<h3>Output</h3>\n\n<pre>\nPassed Name is :tommy\n</pre>\n\n<h2>Accessing Instance Variables and Methods</h2>\n\n<p>Instance variables and methods are accessed via created objects. To access an instance variable, following is the fully qualified path &minus;</p>\n\n<pre>\n/* First create an object */\nObjectReference = new Constructor();\n\n/* Now call a variable as follows */\nObjectReference.variableName;\n\n/* Now you can call a class method as follows */\nObjectReference.MethodName();\n</pre>\n\n<h3>Example</h3>\n\n<p>This example explains how to access instance variables and methods of a class.</p>\n\n<p><a href=\"http://tpcg.io/VnuprO\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\n\n<pre>\npublic class Puppy {\n   int puppyAge;\n\n   public Puppy(String name) {\n      // This constructor has one parameter, <em>name</em>.\n      System.out.println(&quot;Name chosen is :&quot; + name );\n   }\n\n   public void setAge( int age ) {\n      puppyAge = age;\n   }\n\n   public int getAge( ) {\n      System.out.println(&quot;Puppy&#39;s age is :&quot; + puppyAge );\n      return puppyAge;\n   }\n\n   public static void main(String []args) {\n      /* Object creation */\n      Puppy myPuppy = new Puppy( &quot;tommy&quot; );\n\n      /* Call class method to set puppy&#39;s age */\n      myPuppy.setAge( 2 );\n\n      /* Call another class method to get puppy&#39;s age */\n      myPuppy.getAge( );\n\n      /* You can access instance variable as follows as well */\n      System.out.println(&quot;Variable Value :&quot; + myPuppy.puppyAge );\n   }\n}</pre>\n\n<p>If we compile and run the above program, then it will produce the following result &minus;</p>\n\n<h3>Output</h3>\n\n<pre>\nName chosen is :tommy\nPuppy&#39;s age is :2\nVariable Value :2\n</pre>\n\n<h2>Source File Declaration Rules</h2>\n\n<p>As the last part of this section, let&#39;s now look into the source file declaration rules. These rules are essential when declaring classes,&nbsp;<em>import</em>&nbsp;statements and&nbsp;<em>package</em>&nbsp;statements in a source file.</p>\n\n<ul>\n	<li>\n	<p>There can be only one public class per source file.</p>\n	</li>\n	<li>\n	<p>A source file can have multiple non-public classes.</p>\n	</li>\n	<li>\n	<p>The public class name should be the name of the source file as well which should be appended by&nbsp;<strong>.java</strong>&nbsp;at the end. For example: the class name is&nbsp;<em>public class Employee{}</em>&nbsp;then the source file should be as Employee.java.</p>\n	</li>\n	<li>\n	<p>If the class is defined inside a package, then the package statement should be the first statement in the source file.</p>\n	</li>\n	<li>\n	<p>If import statements are present, then they must be written between the package statement and the class declaration. If there are no package statements, then the import statement should be the first line in the source file.</p>\n	</li>\n	<li>\n	<p>Import and package statements will imply to all the classes present in the source file. It is not possible to declare different import and/or package statements to different classes in the source file.</p>\n	</li>\n</ul>\n\n<p>Classes have several access levels and there are different types of classes; abstract classes, final classes, etc. We will be explaining about all these in the access modifiers chapter.</p>\n\n<p>Apart from the above mentioned types of classes, Java also has some special classes called Inner classes and Anonymous classes.</p>\n\n<h2>Java Package</h2>\n\n<p>In simple words, it is a way of categorizing the classes and interfaces. When developing applications in Java, hundreds of classes and interfaces will be written, therefore categorizing these classes is a must as well as makes life much easier.</p>\n\n<h2>Import Statements</h2>\n\n<p>In Java if a fully qualified name, which includes the package and the class name is given, then the compiler can easily locate the source code or classes. Import statement is a way of giving the proper location for the compiler to find that particular class.</p>\n\n<p>For example, the following line would ask the compiler to load all the classes available in directory java_installation/java/io &minus;</p>\n\n<pre>\nimport java.io.*;\n</pre>\n\n<h2>A Simple Case Study</h2>\n\n<p>For our case study, we will be creating two classes. They are Employee and EmployeeTest.</p>\n\n<p>First open notepad and add the following code. Remember this is the Employee class and the class is a public class. Now, save this source file with the name Employee.java.</p>\n\n<p>The Employee class has four instance variables - name, age, designation and salary. The class has one explicitly defined constructor, which takes a parameter.</p>\n\n<h3>Example</h3>\n\n<pre>\nimport java.io.*;\npublic class Employee {\n\n   String name;\n   int age;\n   String designation;\n   double salary;\n\n   // This is the constructor of the class Employee\n   public Employee(String name) {\n      this.name = name;\n   }\n\n   // Assign the age of the Employee  to the variable age.\n   public void empAge(int empAge) {\n      age = empAge;\n   }\n\n   /* Assign the designation to the variable designation.*/\n   public void empDesignation(String empDesig) {\n      designation = empDesig;\n   }\n\n   /* Assign the salary to the variable	salary.*/\n   public void empSalary(double empSalary) {\n      salary = empSalary;\n   }\n\n   /* Print the Employee details */\n   public void printEmployee() {\n      System.out.println(&quot;Name:&quot;+ name );\n      System.out.println(&quot;Age:&quot; + age );\n      System.out.println(&quot;Designation:&quot; + designation );\n      System.out.println(&quot;Salary:&quot; + salary);\n   }\n}</pre>\n\n<p>As mentioned previously in this tutorial, processing starts from the main method. Therefore, in order for us to run this Employee class there should be a main method and objects should be created. We will be creating a separate class for these tasks.</p>\n\n<p>Following is the&nbsp;<em>EmployeeTest</em>&nbsp;class, which creates two instances of the class Employee and invokes the methods for each object to assign values for each variable.</p>\n\n<p>Save the following code in EmployeeTest.java file.</p>\n', 'Android', '', '', '', 0),
(61, 'Basics of Maths', '<p>Startup and Shutdown To start the system in Standby mode<br />\r\n12 6000 Series LC/MS Maintenance Guide<br />\r\nTo start the system in Standby mode This procedure brings the system from the powered off state to Standby mode. 1 Check that nitrogen gas for the drying gas is turned on. If equipped with a collision cell, check that nitrogen gas for the collision cell is turned on. When you use an Agilent Jet Stream source (single or dual nebulizer), the nitrogen gas requirements are greater than when operating with electrospray, APCI, APPI, or multimode sources. The supply line must have two gas filters (part number BHT-4 or RMSN-4) plumbed in parallel to achieve these flows without triggering errors at the instrument. Refer to the Installation Guide for more details. 2 Check that the rough pump is properly connected to the LC/MS instrument. a Check that rough pump power cable is connected to the Foreline Pump power receptacle. For instruments without a pump expander box: The Foreline Pump power receptacle is behind the service panel. b For instruments with an ion funnel: Check that the ion funnel pump is connected to the Auxiliary Pump power receptacle in the pump expander box. c Check that the LC/MS mainframe pump has the correct voltage rating for your AC power (200 to 240 VAC). d Check that the rough vacuum hose is connected to the inlet port of the rough pump. e For instruments with an ion funnel: Check that the ion funnel rough vacuum hose is connected to the ion funnel rough pump inlet. f Check that the switch on the rough pump (or pumps) is in the On position. 3 Check that all foreline and ion funnel pumps and the spray chamber exhaust are vented outside the laboratory. WARNING Vent all exhausts external to the building where they cannot be recirculated by environmental control systems. Do not vent exhaust into your laboratory. The exhaust fumes from the vacuum pumps and spray chamber contains trace amounts of the chemicals you analyze. Health hazards include chemical toxicity from solvents, buffers, samples and pump fluid vapor, as well as potentially biohazardous aerosols of biological samples.&nbsp;</p>\r\n', 'Maths', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`img`) VALUES
('uploadimg/4.png'),
('uploadimg/4.png'),
('uploadimg/3logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `email`) VALUES
(1, 'Tekle tade', '1234', 'sam123.sy28@gmail.com'),
(3, 'Abebe', '1234', 'sdjcjsavj@gmail.com'),
(8, 'Mebruk', '5687', 'ndvnkvjks'),
(11, 'Zelame', '258', 'lsnzbbv'),
(12, 'Lema', '520', 'sam8rt7gnailvnnvngkjf'),
(19, 'friend', 'rtat', ''),
(20, 'Ahmed', '7896', 'osdbfas@ukhsvdfb');

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

CREATE TABLE `mytable` (
  `id` int(255) NOT NULL,
  `video_path` varchar(255) NOT NULL,
  `video_name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mytable`
--

INSERT INTO `mytable` (`id`, `video_path`, `video_name`, `img`) VALUES
(1, 'path1', 'myvideo', 'httpvideo'),
(2, 'path2', 'myvideo2', 'httpvideo2');

-- --------------------------------------------------------

--
-- Table structure for table `programming_languages`
--

CREATE TABLE `programming_languages` (
  `id` int(255) NOT NULL,
  `language_name` varchar(255) DEFAULT NULL,
  `language_image` varchar(255) DEFAULT NULL,
  `language_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programming_languages`
--

INSERT INTO `programming_languages` (`id`, `language_name`, `language_image`, `language_description`) VALUES
(0, 'java', 'uploadimg/JAVA.png', 'its an android course'),
(3, 'Android', 'uploadimg/ANDROID.png', 'its an android course'),
(9, 'python', 'uploadimg/PYTHON.png', 'its an android course'),
(10, 'Maths', 'uploadimg/IMG_20210213_120755.jpg', 'General Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qid` int(250) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `ans_id` int(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `question`, `ans_id`, `course_name`) VALUES
(1, 'what does html stands for', 1, 'html'),
(2, ' Who is making the Web standards?', 5, 'html'),
(3, ' Choose the correct HTML element for the largest heading:', 9, 'html'),
(4, 'What is the correct HTML element for inserting a line break?', 13, 'html'),
(5, 'what is java ?', 17, 'java');

-- --------------------------------------------------------

--
-- Table structure for table `question_test`
--

CREATE TABLE `question_test` (
  `id` int(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `opt1` varchar(255) NOT NULL,
  `opt2` varchar(255) NOT NULL,
  `opt3` varchar(255) NOT NULL,
  `opt4` varchar(255) NOT NULL,
  `answer` int(100) NOT NULL,
  `course_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_test`
--

INSERT INTO `question_test` (`id`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `answer`, `course_id`) VALUES
(1, 'What does PHP stand for?', 'PHP: Hypertext Preprocessor', 'Private Home Page', 'Personal Hypertext Processor', 'i dont know', 0, 1),
(2, 'How do you write \"Hello World\" in PHP', ' Document.Write(\"Hello World\")', ' echo \"Hello World\"', '\"Hello World\"', 'i dont know', 1, 1),
(14, 'what is haddop', 'i dont know', 'whatever ', 'bigdata soluntion', 'bigdata', 2, 9),
(15, 'The practice of creating objects based on predefined classes is often referred to as..', ' class creation', 'object creation', 'object instantiation', 'class instantiation', 3, 1),
(19, '', '', '', '', '', 0, 0),
(20, 'question 1', 'option 1', 'option 2', 'option 3', 'option 4 ', 1, 13),
(21, '', '', '', '', '', 0, 0),
(22, 'question 1', 'option 1', 'option 2', 'option 3', 'option 4 ', 1, 14),
(23, '', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notes_details`
--

CREATE TABLE `tbl_notes_details` (
  `notes_id` int(11) NOT NULL,
  `course` text NOT NULL,
  `subject` text NOT NULL,
  `topic` text NOT NULL,
  `date` text NOT NULL,
  `notes` text NOT NULL,
  `video` text NOT NULL,
  `summary` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notes_details`
--

INSERT INTO `tbl_notes_details` (`notes_id`, `course`, `subject`, `topic`, `date`, `notes`, `video`, `summary`) VALUES
(7, 'MCA', 'JAVA', 'INTRODUCTION', '30/04/2016', 'os_linux.pdf', 'bomb.mp4', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `totalques` int(255) DEFAULT NULL,
  `answerscorrect` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `username`, `totalques`, `answerscorrect`) VALUES
(1, 'Tekle tade', 5, 4),
(2, 'Tekle tade', 5, 0),
(28, 'Tekle tade', 5, 1),
(29, 'Tekle tade', 5, 1),
(30, 'Tekle tade', 5, 0),
(31, 'Tekle tade', 5, 0),
(32, 'Tekle tade', 5, 0),
(33, 'Tekle tade', 5, 0),
(34, 'Tekle tade', 5, 0),
(35, 'Tekle tade', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(0, 'mam@gmail.com', 0x3a3a3100000000000000000000000000, '2021-08-20 16:52:50', '21-08-2021 10:35:40 PM', 0),
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(26, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-24 16:45:51', '24-07-2021 10:27:18 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `passwords` int(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `passwords`, `email`, `img`, `contactno`, `password`) VALUES
(15, 'Tekle tade', 2365, 'sam123.sy28@gmail.com', 'img1.jpg', 22222222, '333333'),
(21, 'tekle', 56441, 'tekle@gmail.com', 'javalogo.png', 44444, '4456666'),
(22, 'mam', 999, 'mam@gmail.com', '', 444444444, 'b735b0c78e12553e91397a3ff19f8fd1'),
(23, 'zeq', 0, 'zek@gmil.com', '', 123456789, '827ccb0eea8a706c4c34a16891f84e7b'),
(24, 'efafa', NULL, 'effaa@gmail.com', NULL, 455355335, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `video_id` int(255) NOT NULL,
  `video_path` varchar(255) NOT NULL,
  `video_name` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `video_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`video_id`, `video_path`, `video_name`, `course_name`, `video_image`) VALUES
(51, 'video/java1.mp4', 'How to download jcalender in Netbeans | Part 1', 'java', 'thumbnail/4.png'),
(52, 'video/vi.mp4', 'How to download jcalender in Netbeans | Part 2', 'java', 'thumbnail/v.png'),
(54, 'video/android.mp4', 'How to do this', 'Android', 'thumbnail/ANDROID.png'),
(56, 'video/java1.mp4', 'This is a python video', 'python', 'thumbnail/PYTHON.png'),
(57, 'video/java2.mp4', 'This is a python video2', 'python', 'thumbnail/PYTHON.png'),
(58, 'video/java2.mp4', 'java', 'java', 'thumbnail/4.png'),
(59, 'video/java1.mp4', 'phython', 'python', 'thumbnail/PYTHON.png'),
(62, 'video/java2.mp4', 'Android', 'Android', 'thumbnail/ANDROID.png'),
(64, 'video/vi.mp4', 'Mathemtics', 'Maths', 'thumbnail/webservices_online.png');

-- --------------------------------------------------------

--
-- Table structure for table `videos_demo`
--

CREATE TABLE `videos_demo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `video_info`
--

CREATE TABLE `video_info` (
  `course_id` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video_info`
--

INSERT INTO `video_info` (`course_id`, `image`, `description`, `course_name`) VALUES
(20, 'uploadimg/java.png', 'its a complete java tutorial', 'java'),
(21, 'uploadimg/android.png', 'Android video tutorial', 'Android'),
(22, 'uploadimg/python.png', 'Python videos', 'python'),
(26, 'uploadimg/IMG_20210213_120755.jpg', 'General Mathematics', 'Maths');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commentsection`
--
ALTER TABLE `commentsection`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programming_languages`
--
ALTER TABLE `programming_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `question_test`
--
ALTER TABLE `question_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notes_details`
--
ALTER TABLE `tbl_notes_details`
  ADD PRIMARY KEY (`notes_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`video_id`);

--
-- Indexes for table `videos_demo`
--
ALTER TABLE `videos_demo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_info`
--
ALTER TABLE `video_info`
  ADD PRIMARY KEY (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `aid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `commentsection`
--
ALTER TABLE `commentsection`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `mytable`
--
ALTER TABLE `mytable`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `programming_languages`
--
ALTER TABLE `programming_languages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `question_test`
--
ALTER TABLE `question_test`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_notes_details`
--
ALTER TABLE `tbl_notes_details`
  MODIFY `notes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `videos_demo`
--
ALTER TABLE `videos_demo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_info`
--
ALTER TABLE `video_info`
  MODIFY `course_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
