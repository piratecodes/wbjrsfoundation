-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 30, 2025 at 11:24 AM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u256055601_wbjrsfound_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `adm_id` int(11) NOT NULL,
  `login_id` varchar(30) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`adm_id`, `login_id`, `password`, `name`, `mobile`, `email`, `status`, `last_login`) VALUES
(1, 'admin', '183723726a927563ad46963f2138cc147d04cea0', 'Admin', '9999999999', NULL, 'Active', '2025-04-28 22:56:02');

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `a_id` int(11) NOT NULL,
  `regn_no` varchar(30) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `qualification` text DEFAULT NULL,
  `job_status` varchar(30) DEFAULT NULL,
  `work_experience` text DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` enum('Pending','Approved','Rejected') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`a_id`, `regn_no`, `course_id`, `name`, `dob`, `mobile`, `email`, `address`, `state`, `district`, `qualification`, `job_status`, `work_experience`, `gender`, `date`, `status`) VALUES
(2, 'WA24234', NULL, 'Lashey Porzionato', NULL, '+13054808432', 'rmreibzimuza@dont-reply.me', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-02', 'Approved'),
(4, 'WA24473', NULL, 'Shantaye Griffes', NULL, '+17302390223', 'labisizeaum@dont-reply.me', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-19', 'Approved'),
(5, 'WA24522', NULL, 'Chrisalyn Ormerod', NULL, '+13052021306', 'zezbjlmjlzum@dont-reply.me', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-28', 'Approved'),
(6, 'WA24621', NULL, 'Kaysun Varchetto', NULL, '+17302397479', 'zaseajejbsum@dont-reply.me', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-07', 'Approved'),
(7, 'WA24735', NULL, 'Catherine Yuson', NULL, '+15056262160', 'zmbzmzrmmbum@dont-reply.me', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16', 'Approved'),
(8, 'WA24851', NULL, 'Elphege Todoli', NULL, '+15056448778', 'ezzaszzeaiuzm@dont-reply.me', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-22', 'Approved'),
(9, 'WA24983', NULL, 'Steaven Dempsay', NULL, '+15058641757', 'ebmamjmbzsuzm@do-not-respond.me', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-28', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `admission_query`
--

CREATE TABLE `admission_query` (
  `aq_id` int(11) NOT NULL,
  `query_num` varchar(30) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `Resume` varchar(100) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` enum('Seen','Unseen') NOT NULL DEFAULT 'Unseen',
  `remarks` text DEFAULT NULL,
  `dt2` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admission_query`
--

INSERT INTO `admission_query` (`aq_id`, `query_num`, `course_id`, `name`, `email`, `mobile`, `Resume`, `subject`, `message`, `date`, `status`, `remarks`, `dt2`) VALUES
(1, 'WQ24181', NULL, 'Mike Miers', 'peterJist@gmail.com', '88328948927', NULL, 'Add WhatsApp Marketing channel for wbjrsfoundation.org', 'Hi there \r\n \r\nThe Internet is full with false Whatsapp advertising methods which promise: “Marketing automation using your own WhatsApp Number”. \r\n \r\nIt’s a total scam and will only get your number banned in whatsapp in seconds. \r\n \r\nThe only way to do this legally and safely is by our researched methods. \r\nWe will set up everything for you and you will be able to send Whatsapp Marketing messages legally and attract local audience for your business. \r\n \r\nCheck all details below. \r\nhttps://www.onlinelocalmarketing.org/product/local-whatsapp-marketing/ \r\n \r\nRegards \r\nMike Miers\r\n https://www.onlinelocalmarketing.org', '2024-05-11', 'Seen', NULL, '2025-03-29'),
(2, 'WQ24250', 0, 'Mike Dunce', 'mikeDiessaffic@gmail.com', '81525233227', NULL, 'Domain Authority of your wbjrsfoundation.org', 'Hi there, \r\n \r\nI have reviewed your domain in MOZ and have observed that you may benefit from an increase in authority. \r\n \r\nOur solution guarantees you a high-quality domain authority score within a period of three months. This will increase your organic visibility and strengthen your website authority, thus making it stronger against Google updates. \r\n \r\nCheck out our deals for more details. \r\nhttps://www.monkeydigital.co/domain-authority-plan/ \r\n \r\nNEW: Ahrefs Domain Rating \r\nhttps://www.monkeydigital.co/ahrefs-seo/ \r\n \r\n \r\nThanks and regards \r\nMike Dunce\r\n', '2024-05-13', 'Seen', NULL, '2025-03-29'),
(3, 'WQ24368', 0, 'Williamslita', 'maynardtroy@icloud.com', '83431959228', NULL, 'Expand Your Business Horizons: Join Accstores.com\'s Supplier Platform!', 'Discover https://Accstores.com, the ultimate destination for seamless web accessibility solutions. We provide a comprehensive range of tools and services designed to make the internet accessible to all users, regardless of ability. Join us in our mission to create a more inclusive online experience for everyone. Explore https://Accstores.com today and unlock the power of accessibility. \r\n \r\n \r\nsimply Click The Next Site \r\nhttps://Accstores.com', '2024-05-15', 'Seen', NULL, '2025-03-29'),
(4, 'WQ24435', 0, 'Mike Parson', 'mikeEnlile@gmail.com', '84927976613', NULL, 'FREE fast ranks for wbjrsfoundation.org', 'Hi there \r\n \r\nJust checked your wbjrsfoundation.org baclink profile, I noticed a moderate percentage of toxic links pointing to your website \r\n \r\nWe will investigate each link for its toxicity and perform a professional clean up for you free of charge. \r\n \r\nStart recovering your ranks today: \r\nhttps://www.hilkom-digital.de/professional-linksprofile-clean-up-service/ \r\n \r\nRegards \r\nMike Parson\r\nHilkom Digital SEO Experts \r\nhttps://www.hilkom-digital.de/', '2024-05-18', 'Seen', NULL, '2025-03-29'),
(5, 'WQ24522', 0, 'Mike Daniels', 'peterJist@gmail.com', '84423268773', NULL, 'Whitehat SEO for wbjrsfoundation.org', 'Howdy \r\n \r\nI have just verified your SEO on  wbjrsfoundation.org for its SEO Trend and saw that your website could use a boost. \r\n \r\nWe will increase your ranks organically and safely, using only state of the art AI and whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nMore info: \r\nhttps://www.digital-x-press.com/unbeatable-seo/ \r\n \r\n \r\nRegards \r\nMike Daniels\r\n \r\nDigital X SEO Experts', '2024-05-20', 'Seen', NULL, '2025-03-29'),
(6, 'WQ24630', 0, 'Beulah', 'wbjrsfoundation.org@gmail.com', '4065874658', NULL, 'WBJRS Academic Foundation || Learning Today... Leading Tomorrow', 'Hi there, \r\n\r\nI hope this email finds you well. I wanted to let you know about our new BANGE backpacks and sling bags that just released.\r\n\r\nBange is perfect for students, professionals and travelers. The backpacks and sling bags feature a built-in USB charging port, making it easy to charge your devices on the go.  Also they are waterproof and anti-theft design, making it ideal for carrying your valuables.\r\n\r\nBoth bags are made of durable and high-quality materials, and are perfect for everyday use or travel.\r\n\r\nOrder yours now at 50% OFF with FREE Shipping: http://bangeshop.com\r\n\r\nRegards,\r\n\r\nBeulah', '2024-05-21', 'Seen', NULL, '2025-03-29'),
(7, 'WQ24727', 0, 'AlfredCoura', 'kristinefalbo@icloud.com', '84165615183', NULL, 'Champion Accessibility: Team Up with Accstores.com for Inclusive Design', 'https://Accstores.com: Your gateway to web accessibility excellence. We offer a diverse range of cutting-edge tools and services to ensure your website is inclusive and accessible to all users. From automated testing to personalized consultations, our platform equips businesses with everything they need to create a truly inclusive online experience. Join us in our mission to make the web accessible to everyone, everywhere. Explore https://Accstores.com today and take the first step towards a more inclusive digital future. \r\n \r\n \r\nvisit My Website \r\nhttps://Accstores.com', '2024-05-23', 'Seen', NULL, '2025-03-29'),
(8, 'WQ24845', 0, 'Mike Stephen', 'mikeCotojist@gmail.com', '89417722977', NULL, 'Collaboration request', 'Hi there, \r\n \r\nMy name is Mike from Monkey Digital, \r\n \r\nAllow me to present to you a lifetime revenue opportunity of 35% \r\nThat\'s right, you can earn 35% of every order made by your affiliate for life. \r\n \r\nSimply register with us, generate your affiliate links, and incorporate them on your website, and you are done. It takes only 5 minutes to set up everything, and the payouts are sent each month. \r\n \r\nClick here to enroll with us today: \r\nhttps://www.monkey-digital.com/affiliates/ \r\n \r\nThink about it, \r\nEvery website owner requires the use of search engine optimization (SEO) for their website. This endeavor holds significant potential for both parties involved. \r\n \r\nThanks and regards \r\nMike Stephen\r\n \r\nMonkey Digital', '2024-05-26', 'Seen', NULL, '2025-03-29'),
(9, 'WQ24924', 0, 'OsvaldoFug', 'morrismi1@outlook.com', '87386673863', NULL, 'Assets/payment handler. ', 'A remote job opportunity for a Law Firm, the role of a Payment/Deposit Handler. This position involves managing payments and deposits, ensuring accurate processing, and maintaining financial record. This position is only for American citizens living in US. \r\n \r\nJob location:  USA \r\nWeekly wages: $2,150 per week. \r\n \r\nWe are looking for a detail-oriented individual with a good background and no criminal record. \r\n \r\nIf you are interested in joining our team, please send an email to get more details jasonmorrisca@yahoo.com \r\n \r\nRegards.', '2024-05-30', 'Seen', NULL, '2025-03-29'),
(10, 'WQ241094', 0, 'Mike Bradshaw', 'mikeKt@gmail.com', '88275746874', NULL, 'NEW: Semrush Backlinks', 'Hi there \r\n \r\nThis is Mike Bradshaw\r\n \r\nLet me introduce to you our latest research results from our constant SEO feedbacks that we have from our plans: \r\n \r\nhttps://www.strictly-digital.com/semrush-backlinks/ \r\n \r\nThe new Semrush Backlinks, which will make your wbjrsfoundation.org SEO trend have an immediate push. \r\nThe method is actually very simple, we are building links from domains that have a high number of keywords ranking for them.  \r\n \r\nForget about the SEO metrics or any other factors that so many tools try to teach you that is good. The most valuable link is the one that comes from a website that has a healthy trend and lots of ranking keywords. \r\nWe thought about that, so we have built this plan for you \r\n \r\nCheck in detail here: \r\nhttps://www.strictly-digital.com/semrush-backlinks/ \r\n \r\nCheap and effective \r\nTry it anytime soon \r\n \r\nRegards \r\nMike Bradshaw\r\n \r\nhttps://www.strictly-digital.com/whatsapp-us/', '2024-06-01', 'Seen', NULL, '2025-03-29'),
(11, 'WQ241148', 0, 'Mike Holmes', 'mikeTriexedreasiasal@gmail.com', '81977243914', NULL, 'Increase sales for your local business', 'This service is perfect for boosting your local business\' visibility on the map in a specific location. \r\n \r\nWe provide Google Maps listing management, optimization, and promotion services that cover everything needed to rank in the Google 3-Pack. \r\n \r\nMore info: \r\nhttps://www.speed-seo.net/ranking-in-the-maps-means-sales/ \r\n \r\nThanks and Regards \r\nMike Holmes\r\n \r\nhttps://www.speed-seo.net/whatsapp-us/', '2024-06-03', 'Seen', NULL, '2025-03-29'),
(12, 'WQ241249', 0, 'Oman Rook', 'pr5yukr3hkpq@opayq.com', '88755598546', NULL, 'Need Business Capital Funding', 'Hello, \r\n \r\nOne of the most significant hurdles for startups and existing businesses is securing the necessary funding to fuel their growth and bring their ideas to fruition. Our company specializes in providing tailored financing solutions to both startups and existing businesses. We offer debt financing with a competitive interest rate designed to support capital growth without burdening the business owners. \r\n \r\nOur loan interest rate is set at a favorable 3% annually, and with no early payment penalties, giving you the flexibility to manage your finances with ease. For those seeking equity financing, our venture capital funding option provides the capital you need to fuel your expansion. With just a modest 10% equity stake, you can access the resources necessary to scale your business while retaining control and ownership. We recognize these challenges and are committed to providing startups with flexible financing options tailored to their unique needs. \r\n \r\nWe are happy to review your pitch deck or executive summary to better understand your business and this will assist in determining the best possible investment structure that we can pursue and discuss extensively. \r\n \r\nI look forward to further communication. \r\n \r\nBest Regard, \r\nOman Rook \r\nExecutive Investment Consultant/Director \r\nCateus Investment Company (CIC) \r\n2401 AlMoayyed Tower Seef District \r\nManama - Kingdom of Bahrain \r\nEmail: oman.rook@cateusinvestmentgroup.com \r\ncateusgroup@gmail.com', '2024-06-04', 'Seen', NULL, '2025-03-29'),
(13, 'WQ241358', 0, 'Madison', 't.uh@hin.ch', '3283392417', NULL, 'WBJRS Academic Foundation || Learning Today... Leading Tomorrow', 'Hi,\r\n\r\nIf you are one of the sufferers of the common problems nails have, then you are in luck! Our Toenail Clippers is here to help. It has a specially designed clip that can help those with troubles with winding nails, hard nails, two nails, nail cracks, deep nails, and thickened nails.\r\n\r\nWe are confident that our Toenail Clippers will provide you with the results you are looking for.\r\n\r\nGet yours today with 60% OFF: https://podiatristusa.sale\r\n\r\nThe Best,\r\n\r\nMadison', '2024-06-10', 'Seen', NULL, '2025-03-29'),
(14, 'WQ241438', 0, 'Mike Adamson', 'mikeEnlile@gmail.com', '88795779861', NULL, 'FREE fast ranks for wbjrsfoundation.org', 'Hi there \r\n \r\nJust checked your wbjrsfoundation.org baclink profile, I noticed a moderate percentage of toxic links pointing to your website \r\n \r\nWe will investigate each link for its toxicity and perform a professional clean up for you free of charge. \r\n \r\nStart recovering your ranks today: \r\nhttps://www.hilkom-digital.co/professional-linksprofile-clean-up-service/ \r\n \r\nRegards \r\nMike Adamson\r\nHilkom Digital SEO Experts \r\nhttps://www.hilkom-digital.co/whatsapp-us/', '2024-06-11', 'Seen', NULL, '2025-03-29'),
(15, 'WQ241598', 0, 'Michalak Aleksandra', 'barreiromartin36@gmail.com', '89872843145', NULL, 'We are willing to fund your Business/Project', 'Greetings. \r\n \r\nRef: Business/Project Funding. \r\n \r\nMy name is Michalak Aleksandra, a financial consultant and business facilitator; I represent a financial consulting firm and we have reputable investors that are expanding their global presence by investing in viable businesses and projects across the globe. They are currently providing financial support to both companies and individuals for business and project expansion through debt financing. \r\n \r\nKindly contact me if you are seeking for funding to expand or invest into your business or project, we will be excited to work with you; please use the following email to reach me, michaleksandra.consult@gmail.com \r\n \r\nIf you are not interested, you may give a referral to anyone that might need this opportunity and you will receive a commission from us otherwise ignore the message. \r\n \r\nRegards, \r\nMichalak Aleksandra', '2024-06-12', 'Seen', NULL, '2025-03-29'),
(16, 'WQ241683', 0, 'Mike Cramer', 'mikeDiessaffic@gmail.com', '84951962293', NULL, 'Domain Authority of your wbjrsfoundation.org', 'Hi there, \r\n \r\nI have reviewed your domain in MOZ and have observed that you may benefit from an increase in authority. \r\n \r\nOur solution guarantees you a high-quality domain authority score within a period of three months. This will increase your organic visibility and strengthen your website authority, thus making it stronger against Google updates. \r\n \r\nCheck out our deals for more details. \r\nhttps://www.monkeydigital.co/domain-authority-plan/ \r\n \r\n \r\nThanks and regards \r\nMike Cramer\r\n \r\nMonkey Digital \r\nhttps://www.monkeydigital.co/whatsapp-us/', '2024-06-13', 'Seen', NULL, '2025-03-29'),
(17, 'WQ241792', 0, 'Hannah Ackerman', 'rachelmanagement@skiff.com', '89517917286', NULL, 'Explore funding Solutions', 'Hello, \r\n \r\nI trust this message reaches you in good spirits. \r\n \r\nOur consultancy specializes in granting high-net-worth international investors access to investment prospects. We extend loans with competitive interest rates ranging between 2.5% and 5%, contingent upon the details of your project. These loan packages feature a 2-year grace period and adaptable repayment plans spanning 10 to 15 years. \r\n \r\nShould you require financial support for your business or personal endeavors, please don\'t hesitate to reach out to us to schedule a consultation via our official platform. \r\n \r\nThank you for contemplating this opportunity. \r\n \r\nWarm regards, \r\n \r\nMrs. Hannah Ackerman \r\n \r\nrachelconsult@hgdtkbcs-sec.com \r\n \r\nRachel Consult \r\n \r\nPortfolio Manager', '2024-06-13', 'Seen', NULL, '2025-03-29'),
(18, 'WQ241867', 0, 'MichaelUseft', 'rhearebell@icloud.com', '84888754845', NULL, 'Join a Culture of Innovation: Accstores.com is Hiring Sales Talent!', 'Welcome to https://Accstores.com, your premier destination for revolutionary web accessibility solutions. We specialize in providing innovative tools and services to empower businesses and organizations in creating inclusive online experiences for all users. Join us in our mission to make the web accessible to everyone, everywhere. \r\n \r\n \r\nsuggested Website \r\nhttps://Accstores.com', '2024-06-15', 'Seen', NULL, '2025-03-29'),
(19, 'WQ241938', 0, 'Mike Becker', 'peterJist@gmail.com', '88743931289', NULL, 'Whitehat SEO for wbjrsfoundation.org', 'Greetings \r\n \r\nI have just verified your SEO on  wbjrsfoundation.org for  the current search visibility and saw that your website could use an upgrade. \r\n \r\nWe will enhance your ranks organically and safely, using only state of the art AI and whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nMore info: \r\nhttps://www.digital-x-press.co/unbeatable-seo/ \r\n \r\nRegards \r\nMike Becker\r\n \r\nDigital X SEO Experts \r\nhttps://www.digital-x-press.co/whatsapp-us/', '2024-06-19', 'Seen', NULL, '2025-03-29'),
(20, 'WQ242077', 0, 'Philip Norman', 'philipnorman777@yahoo.com', '86669744317', NULL, 'Flexible Loans for big projects', 'Greetings, \r\n \r\nI hope this message finds you well. My name is Philip Norman, and I am a seasoned loan broker with an impeccable track record of facilitating fast, flexible, and competitive loan solutions for a diverse range of clients. I am reaching out to offer my expertise and services in helping you secure the financial resources you need to achieve your business objectives. \r\n \r\nWhatever is the amount or specific needs, whether for investment, operational needs, trading , Real Estate or Infrastructure we guarantee rapid loan approval and disbursement processes with flexible repayment terms tailored to your cash flow and business cycles, offering the most competitive interest rates in the market. \r\n \r\nI would be delighted to discuss your specific needs and explore how we can work together to achieve your financial goals. Please let me know a convenient time for a consultation, or feel free to reach out directly at +44 7706280570. \r\n \r\nThank you for considering this proposal. I look forward to the opportunity to assist you in securing the financing necessary to drive your business forward. \r\n \r\nWarm regards, \r\n \r\nMr. Philip Norman \r\nEmail: Philipnorman192@gmail.com \r\n \r\nSenior Loan Broker', '2024-06-21', 'Seen', NULL, '2025-03-29'),
(21, 'WQ242141', 0, 'Mike Ford', 'mikeCotojist@gmail.com', '84834351695', NULL, 'Collaboration request', 'Hi there, \r\n \r\nMy name is Mike from Monkey Digital, \r\n \r\nAllow me to present to you a lifetime revenue opportunity of 35% \r\nThat\'s right, you can earn 35% of every order made by your affiliate for life. \r\n \r\nSimply register with us, generate your affiliate links, and incorporate them on your website, and you are done. It takes only 5 minutes to set up everything, and the payouts are sent each month. \r\n \r\nClick here to enroll with us today: \r\nhttps://www.monkeydigital.co/join-affiliates/ \r\n \r\nThink about it, \r\nEvery website owner requires the use of search engine optimization (SEO) for their website. This endeavor holds significant potential for both parties involved. \r\n \r\nThanks and regards \r\nMike Ford\r\n \r\nMonkey Digital \r\nhttps://www.monkeydigital.co/whatsapp-affiliates/', '2024-06-21', 'Seen', NULL, '2025-03-29'),
(22, 'WQ242251', 0, 'Kala', 'kala@wbjrsfoundation.org', '9252122430', NULL, 'Kala Chandler', 'Hi \r\n\r\nThe New Powerful LED Flashlight is The Perfect Flashlight For Any Situation!\r\n\r\nThe 3,000 Lumens & Adjustable Zoom gives you the wide field of view and brightness other flashlights don’t have.\r\n\r\n50% OFF + Free Shipping!  Get it Now: https://linterna.cc\r\n\r\nBest Wishes, \r\n\r\nKala', '2024-06-22', 'Seen', NULL, '2025-03-29'),
(23, 'WQ242378', 0, 'Mike Brickman', 'mikeCotojist@gmail.com', '87493444165', NULL, 'NEW: Semrush Backlinks', 'Greetings \r\n \r\nThis is Mike Brickman\r\n \r\nLet me show you our latest research results from our constant SEO feedbacks that we have from our plans: \r\n \r\nThe new Semrush Backlinks, which will make your wbjrsfoundation.org SEO trend have an immediate push. \r\nThe method is actually very simple, we are building links from domains that have a high number of keywords ranking for them.  \r\n \r\nForget about the SEO metrics or any other factors that so many tools try to teach you that is good. The most valuable link is the one that comes from a website that has a healthy trend and lots of ranking keywords. \r\nWe thought about that, so we have built this plan for you \r\n \r\nCheck in detail here: \r\nhttps://www.strictlydigital.co/semrush-backlinks/ \r\n \r\nCheap and effective \r\nTry it anytime soon \r\n \r\nRegards \r\nMike Brickman\r\n https://www.strictlydigital.co/whatsapp-us/', '2024-06-26', 'Seen', NULL, '2025-03-29'),
(24, 'WQ242465', 0, 'MichaelUseft', 'stephaniegepp7682@icloud.com', '87126344399', NULL, 'Join the Accessibility Ecosystem: Become a Partner with Accstores.com Today!', 'https://Accstores.com: Your Gateway to Inclusive Web Solutions. Our platform offers cutting-edge accessibility tools and services to ensure that every online experience is barrier-free. Join us in shaping a more inclusive digital world today. \r\n \r\n \r\nvisit This Site \r\nhttps://Accstores.com', '2024-06-27', 'Seen', NULL, '2025-03-29'),
(25, 'WQ242538', 0, 'AmandaEldegea', 'amandawhobBowl1@gmail.com', '89986844657', NULL, 'Hey stud, ready for love?', 'Hey darling, want to hang out? -  https://rb.gy/7rnhss?Unlaft', '2024-06-29', 'Seen', NULL, '2025-03-29'),
(26, 'WQ242649', 0, 'Tobiasfueld', 'no.reply.PedroFournier@gmail.com', '83163364123', NULL, 'Do you require a cost-effective and creative advertising service at a competitive rate?', 'Yo! \r\n \r\nDid you know that it is possible to send commercial offer wholly legitimately? We are submitting a new way of sending letters through contact forms. \r\nFeedback Forms make sure that messages won\'t be seen as junk, as they are considered essential. \r\nWe gіve уou the chance to test our service for nothing! \r\nWe can deliver up to 50,000 messages to you. \r\n \r\nThe cost of sending one million messages is $59. \r\n \r\nThis message was automatically generated. \r\nPlease use the contact details below to get in touch with us. \r\n \r\nContact us. \r\nTelegram - https://t.me/FeedbackFormEU \r\nSkype  live:feedbackform2019 \r\nWhatsApp  +375259112693 \r\nWhatsApp  https://wa.me/+375259112693 \r\n \r\nWe only use chat for communication.', '2024-07-01', 'Seen', NULL, '2025-03-29'),
(27, 'WQ242769', 0, 'Mike Gilbert', 'mikeJist@gmail.com', '85522326317', NULL, 'Increase rankings with a SEO friendly web design', 'Hi there \r\nI just checked wbjrsfoundation.org ranks and am sorry to bring this up, but it lacks in many areas. \r\n \r\nUnfortunately, building a bunch of links won\'t solve the issue in this case, and a more comprehensive strategy is required. Google has undergone significant changes over the past year, making it nearly impossible to compete for favorable rankings without a well-designed website. \r\n \r\nWe recommend a search engine-friendly website layout to resolve all issues and propel your site to the top. \r\n \r\nYou can check more details here: https://www.speed-seo.org/web-design/ \r\n \r\nThanks for your consideration \r\nMike Gilbert\r\nSpeed Designs \r\nhttps://www.speed-seo.org/whatsapp-us/', '2024-07-02', 'Seen', NULL, '2025-03-29'),
(28, 'WQ242856', 0, 'Anna Boryslav', 'annaofficial2@shrooqconsultant.com', '81945493885', NULL, 'Business Proposal', 'Dear Mr/Mrs, \r\n \r\nWe would like to take this opportunity to introduce our company. We are System Intergrated Services Company, a private regulatory compliance and calibration technology company in Ukraine. We provide complete testing and certification services for Ukraine and across boarders, as well as CE verification testing and approval services for mobile communications equipment (EMC, Safety, SAR and R&TTE for GSM/CDMA/PCS equipment. We believe that such <product/service> has a very good potential to insert market potential/customer publicity/customer beneits. It is in this respect that we would like to extend our interest in forming apartnership with your company or you as an individual. \r\n \r\nOur main budget investment is 7 million EUR and we want to invest in all kind of telecommunication communications equipments and other products/business that has a speedy beneficial effect. \r\n \r\nHowever, we take this drastic decision due to the conflict the president has initiated against us here in Ukraine, which has crippled all alot of businesses. \r\n \r\nPlease I would like to receive additional information and advice on how to properly invest in your country. \r\n \r\nLooking forward to discussing further. \r\n \r\nRegards \r\nDr Anna Boryslav \r\nReply to - annaofficial@shrooqconsultant.com', '2024-07-11', 'Seen', NULL, '2025-03-29'),
(29, 'WQ242935', 0, 'Mike Warren', 'mikeJist@gmail.com', '89271847479', NULL, 'Social ads country traffic', 'Hello, \r\n \r\nHey, I\'m Mike from Monkey Digital. We offer a highly popular service that costs only 10$ per 5000 social ads visits. \r\n \r\nMore info:  \r\nhttps://www.monkey-seo.com/get-started/ \r\n \r\nTracking will be sent the same day, the advertisement goes live within a few hours, effective and cheap marketing, try it out, it will be worth every penny. \r\n \r\nRegards \r\nMonkey Digital \r\nhttps://www.monkey-seo.com/whatsapp-us/', '2024-07-13', 'Seen', NULL, '2025-03-29'),
(30, 'WQ243092', 0, 'Mike Salisburry', 'peterJist@gmail.com', '81333857737', NULL, 'Whitehat SEO for wbjrsfoundation.org', 'Hi \r\n \r\nI have just took a look on your SEO for  wbjrsfoundation.org for its SEO Trend and saw that your website could use a boost. \r\n \r\nWe will increase your ranks organically and safely, using only state of the art AI and whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nMore info: \r\nhttps://www.digital-x-press.com/unbeatable-seo/ \r\n \r\nRegards \r\nMike Salisburry\r\n \r\nDigital X SEO Experts \r\nhttps://www.digital-x-press.com/whatsapp-us/', '2024-07-17', 'Seen', NULL, '2025-03-29'),
(31, 'WQ243157', 0, 'Mike Sheldon', 'mikeCotojist@gmail.com', '88913575267', NULL, 'Collaboration request', 'Hi there, \r\n \r\nMy name is Mike from Monkey Digital, \r\n \r\nAllow me to present to you a lifetime revenue opportunity of 35% \r\nThat\'s right, you can earn 35% of every order made by your affiliate for life. \r\n \r\nSimply register with us, generate your affiliate links, and incorporate them on your website, and you are done. It takes only 5 minutes to set up everything, and the payouts are sent each month. \r\n \r\nClick here to enroll with us today: \r\nhttps://www.monkeydigital.co/join-affiliates/ \r\n \r\nThink about it, \r\nEvery website owner requires the use of search engine optimization (SEO) for their website. This endeavor holds significant potential for both parties involved. \r\n \r\nThanks and regards \r\nMike Sheldon\r\n \r\nMonkey Digital \r\nhttps://www.monkeydigital.co/whatsapp-affiliates/', '2024-07-18', 'Seen', NULL, '2025-03-29'),
(32, 'WQ243294', 0, 'Kirk', 'magicmat@wbjrsfoundation.org', '4561991', NULL, 'Don’t wear last year’s styles', 'Get The Worlds Greatest Magic Sand Free Beach Mat!\r\n\r\nWatch sand, dirt & dust disappear right before your eyes! It\'s perfect for beach, picnic, camping or hiking.\r\n\r\nAct Now And Receive A Special Discount For Our Magic Mat!\r\n\r\nGet Yours Here:  https://magicmats.co\r\n\r\nHave a great time, \r\n \r\nKirk', '2024-07-23', 'Seen', NULL, '2025-03-29'),
(33, 'WQ243347', 0, 'Mike Otis', 'mikeCotojist@gmail.com', '89813118777', NULL, 'NEW: semrush backlinks available on sale', 'Hello \r\nThis is Mike Otis\r\nfrom Strictly Digital \r\n \r\nLet me present to you our latest discovered from the SEO environment. \r\nWe have noticed that getting backlinks from websites that have high SEO metrics values doesn\'t always help, and in fact, what is more important is to have backlinks from sites that are actually ranking for many keywords. \r\n \r\nThus, we have built this service especially to meet these new discoveries and the results are astonishing. \r\n \r\nPlease check more details here: \r\nhttps://www.strictlyseonet.com/semrush-backlinks \r\n \r\n \r\n \r\nRegards, \r\nStrictly Digital SEO Team \r\n \r\nWhatsapp us for more details: \r\nhttps://www.strictlyseonet.com/whatsapp-us/', '2024-07-24', 'Seen', NULL, '2025-03-29'),
(34, 'WQ243471', 0, 'Thomaszerge', 'yasen.krasen.13+92387@mail.ru', '88666622478', NULL, 'Mjewdjwjdw jwksqkowjfjj kkepwlw3jreklm kwldewkdjr3kdw2o keo2kswlkforejw', 'Ofedkwdkjwkjdkwjdkjw jdwidjwijdwfw fjdkqwasqfoewofjewof ojqwejfqwkdokjwofjewofjewoi wbjrsfoundation.org', '2024-07-26', 'Seen', NULL, '2025-03-29'),
(35, 'WQ243565', 0, 'MichaelUseft', 'michaelalight@icloud.com', '84695428971', NULL, 'Together We Thrive: Accstores.com Welcomes Partners in Web Accessibility!', 'Empower your digital presence with https://Accstores.com, your go-to destination for web accessibility solutions. From automated testing to expert consultation, we offer comprehensive tools and services to ensure inclusivity for all users. Join us in creating a more accessible online experience. Explore https://Accstores.com today and unlock the potential of accessibility. \r\n \r\nvisit  Now >>> \r\nhttps://Accstores.com', '2024-07-27', 'Seen', NULL, '2025-03-29'),
(36, 'WQ243630', 0, 'Lee Jones', 'pdq-funding@mail.com', '89723117693', NULL, 'Unsecured Business Loans', 'Hello, \r\nLooking for a business loan? Get a decision within 24hrs. \r\nWe specialise in securing funding for companies across a broad range of sectors: \r\n•	Unsecured business loans from ?10k - ?300k \r\n•	Rates from 8% APR \r\n•	Terms from 6 to 36 months \r\n•	Decisions and funds payable within 24-hours \r\nPlease get in touch via our website PDQ-Funding.co.uk for us to provide a free, no obligation funding review to source the best options within the market for your consideration. \r\nContact us : 01246 233108 \r\nWeb: http://PDQ-FUNDING.CO.UK \r\nRegards \r\nLee Jones', '2024-07-29', 'Seen', NULL, '2025-03-29'),
(37, 'WQ243770', 0, 'Jonatonbrelm', 'webte.rra.z@gmail.com', '83543466851', NULL, 'JCB Machinery Spare Parts', 'Hello to all residents of the site wbjrsfoundation.org, I apologize for being \"off topic\", but I really need help. You need an authoritative opinion. I order a website on the topic of spare parts and here I found a more or less website, they trade <a href=https://39jcb.ru><font color=#1C1C1C>JCB</font></a> spare parts, I think I\'ll take it from him appearance. I really want to hear your opinions on how convenient and interesting it will be for people, and I will also listen to a proposal for making the same site and better. The payment will be decent. \r\n<a href=http://triskel-airsoft.org/viewtopic.php?t=667>JCB Machinery Spare Parts</a> <a href=http://changupga.org/bbs/board.php?bo_table=minidoc&wr_id=167329>JCB Spare Parts</a> <a href=https://goodwaywithus.org/bbs/board.php?bo_table=playground&wr_id=65494>JCB spare parts sal</a>  71946f3 ', '2024-07-30', 'Seen', NULL, '2025-03-29'),
(38, 'WQ243846', 0, 'DimaSick', 'info@elementscommunications.com', '85179349851', NULL, 'Attention, digital mogul', 'Explore the future of gaming with Musk Empire - a revolutionary Web3 experience! Expand your business realm without in-app purchases. Upgrade your ventures to increase your earnings per hour. Engage, accumulate, and eventually convert in-game currency for actual cash. Enter the Musk Empire today and shape your digital fortune! Link http://tiny.cc/mempire', '2024-08-01', 'Seen', NULL, '2025-03-29'),
(39, 'WQ243914', 0, 'Mike Atcheson', 'mikeJist@gmail.com', '87789798675', NULL, 'Increase rankings with a SEO friendly web design', 'Hi there \r\nI just checked wbjrsfoundation.org ranks and am sorry to bring this up, but it lacks in many areas. \r\n \r\nUnfortunately, building a bunch of links won\'t solve the issue in this case, and a more comprehensive strategy is required. Google has undergone significant changes over the past year, making it nearly impossible to compete for favorable rankings without a well-designed website. \r\n \r\nWe recommend a search engine-friendly website layout to resolve all issues and propel your site to the top. \r\n \r\nYou can check more details here: https://www.speedseo-digital.net/web-design/ \r\n \r\nThanks for your consideration \r\nMike Atcheson\r\nSpeed Designs \r\nhttps://www.speedseo-digital.net/whatapp-us/', '2024-08-01', 'Seen', NULL, '2025-03-29'),
(40, 'WQ244089', 0, 'ThomasBug', 'madjekvalley@bigpond.com', '88294446341', NULL, 'You Did It iPhone 16 Pro Max', 'Amazing Win: iPhone 16 Pro Max http://s-club.co.jp/cutlinks/rank.php?url=https%3A%2F%2Ftelegra.ph%2Fiphone-07-06-5%3F1369', '2024-08-03', 'Seen', NULL, '2025-03-29'),
(41, 'WQ244124', 0, 'ThomasBug', 'ramosroni@yahoo.com', '87862972267', NULL, 'Act Fast: Withdraw Your $77,000 – Secure Your Financial Freedom!', 'Quick Cash Alert: $77,000 Ready for Withdrawal—Get It Now! https://script.google.com/macros/s/AKfycby4b0A4txC1PpvdmTZC3yHCpcU8ZUHsolHC_BJp7Iu8vSisHA07uNuN0r3cOHA_2V9P/exec', '2024-08-05', 'Seen', NULL, '2025-03-29'),
(42, 'WQ244280', 0, 'MichaelUseft', 'marinajaeger@icloud.com', '88878284813', NULL, 'Join a Culture of Success: Accstores.com Seeks Sales Professionals!', 'Introducing https://Accstores.com, your go-to resource for top-notch web accessibility solutions. Our platform is dedicated to ensuring that every website is inclusive and accessible to all users. With a wide range of innovative tools and services, we empower businesses to create digital experiences that leave no one behind. Join us in our commitment to inclusivity and accessibility for all. Explore https://Accstores.com today and elevate your online presence to new heights. \r\n \r\n \r\nclick The Next Website Page \r\nhttps://Accstores.com', '2024-08-05', 'Seen', NULL, '2025-03-29'),
(43, 'WQ244329', NULL, 'Lida', 'wbjrsfoundation.org@aol.com', 'Tdizd Y', NULL, 'WBJRS Academic Foundation ||WBJRS Academic Foundation', 'Hello \r\n\r\nI wanted to reach out and let you know about our new dog harness. It\'s really easy to put on and take off - in just 2 seconds - and it\'s personalized for each dog. \r\nPlus, we offer a lifetime warranty so you can be sure your pet is always safe and stylish.\r\n\r\nWe\'ve had a lot of success with it so far and I think your dog would love it. \r\n\r\nGet yours today with 50% OFF: https://caredogbest.com\r\n\r\nFREE Shipping - TODAY ONLY! \r\n\r\nEnjoy, \r\n\r\nLida', '2024-08-06', 'Seen', NULL, '2025-03-29'),
(44, 'WQ244448', 0, 'ThomasBug', 'nick_siafrakas95@hotmail.com', '89157618767', NULL, 'Collect Your $50,000 Cash Prize Now or Never', 'YOUR $50,000 REWARD AWAITS: ACT NOW https://www.eatoutlongisland.com/forward?x_website=telegra.ph%2Fxlerty-06-04%3F6800', '2024-08-06', 'Seen', NULL, '2025-03-29'),
(45, 'WQ244573', 0, 'LewisSnasp', 'paumang03@icloud.com', '81568684651', NULL, 'GRAB YOUR SHARE: CLAIM $50,000 NOW', 'LAST CHANCE: SECURE YOUR $50,000 IN WINNINGS https://script.google.com/macros/s/AKfycbzFcTGn25qmn7hh-GGcxUKGQPmgZ8hbAdKzUHGNqdXNf9P1m_bVMDfpi1mjp4er6-m8/exec', '2024-08-07', 'Seen', NULL, '2025-03-29'),
(46, 'WQ244641', 0, 'Marvinelicy', 'micah.carganilla@outlook.com', '83153936886', NULL, 'Don\'t Hesitate: Secure Your $50,000 Prize', 'Secure Your $50,000 Cash Prize Now https://pimg.danawa.com/proxy/telegra.ph%2Fxlerty-06-04%3F9445', '2024-08-08', 'Seen', NULL, '2025-03-29'),
(47, 'WQ244774', 0, 'Marvinelicy', 'a2boye90@icloud.com', '84848263965', NULL, 'A Simple Guide to Earning $50,000 Per Week with Crypto Passive Income', 'Turn Your Crypto Investments into $50,000 Weekly Passive Income https://www.retinavitreousjournal.com/change_lang.php?lang=en&return=telegra.ph%2Fxlerty-06-04%3F8308', '2024-08-08', 'Seen', NULL, '2025-03-29'),
(48, 'WQ244825', 0, 'Mike Youmans', 'mikeJist@gmail.com', '88466369128', NULL, 'Improve your website`s ranks totally free', 'Hi there, \r\n \r\nWhile checking your wbjrsfoundation.org for its ranks, I have noticed that there are some toxic links pointing towards it. \r\n \r\nGrab your free clean up and improve ranks in no time \r\nhttps://www.hilkom-seo.com/free-links-cleanup/ \r\n \r\nIt really works, get a free backlinks clean up with us today \r\n \r\n \r\nRegards \r\nMike Youmans\r\n \r\nWhatsapp:https://www.hilkom-seo.com/whatsapp-us/', '2024-08-10', 'Seen', NULL, '2025-03-29'),
(49, 'WQ244987', 0, 'AnnaSic', 'turki.shop.ping8@gmail.com', '84626731171', NULL, 'Joint trips in Istanbul (Turkey) for fur coats, leather jackets, polto, sheepskin coats', 'Ищу попутчиков в Стамбул (Looking for travel companions to Istanbul ) <a href=https://vc.ru/u/3606503-variag/1288118-modnye-trendy-dublenka-v-stile-stambul-vdohnovenie-vostoka><font color=#1C1C1C> buy a fur coat or sheepskin coat (купить шубу или дубленку)</font></a>.', '2024-08-11', 'Seen', NULL, '2025-03-29'),
(50, 'WQ245070', 0, 'Mike Simon', 'mikeJist@gmail.com', '84373584812', NULL, 'Social ads country traffic', 'Hello, \r\n \r\nHey, I\'m Mike from Monkey Digital. We offer a highly popular service that costs only 10$ per 5000 social ads visits. \r\n \r\nMore info:  \r\nhttps://www.monkey-seo.com/get-started/ \r\n \r\nTracking will be sent the same day, the advertisement goes live within a few hours, effective and cheap marketing, try it out, it will be worth every penny. \r\n \r\nRegards \r\nMonkey Digital \r\nhttps://www.monkey-seo.com/whatsapp-us/', '2024-08-11', 'Seen', NULL, '2025-03-29'),
(51, 'WQ245113', 0, 'Marvinelicy', 'jerryduckett@me.com', '82287367823', NULL, 'Claim Your $50,000 Cash Prize Immediately', 'DON\'T MISS YOUR SHOT: COLLECT $50,000 NOW https://script.google.com/macros/s/AKfycbzgYhGFmBlUzCoaMFNlPa1_1k1cvtXNXUythvgahtsv4VK-wbbBcmD0wwo6FRifwCdwZQ/exec', '2024-08-11', 'Seen', NULL, '2025-03-29'),
(52, 'WQ245273', 0, 'AnnaSic', 'turki.shop.ping8@gmail.com', '87359189479', NULL, 'To go in Istanbul (Turkey) for fur coats, leather jackets, polto, sheepskin coats', 'Ищу попутчиков в Стамбул (Looking for travel companions to Istanbul ) <a href=https://telegra.ph/Dublenka-v-Stambule-kak-vybrat-luchshuyu-model-dlya-turistov-07-07><font color=#1C1C1C> buy a fur coat or sheepskin coat (купить шубу или дубленку)</font></a>.', '2024-08-12', 'Seen', NULL, '2025-03-29'),
(53, 'WQ245367', 0, 'Marvinelicy', 'sheebarani358@gmail.com', '89684732222', NULL, 'Act Now: Claim Your $50,000 Reward', 'TIME SENSITIVE: CLAIM YOUR $50,000 JACKPOT https://script.google.com/macros/s/AKfycbyc8soqsUsaAtAj6KIK9xFdPfNd-f2YGDeYTB9WFpCLqKqcd7XiQCVkSwM1MHjEWO3GfQ/exec', '2024-08-14', 'Seen', NULL, '2025-03-29'),
(54, 'WQ245474', 0, 'Mike Harrison', 'mikeCotojist@gmail.com', '85397113395', NULL, 'NEW: semrush backlinks available on sale', 'Hello \r\nThis is Mike Harrison\r\nfrom Strictly Digital \r\n \r\nLet me present to you our latest discovered from the SEO environment. \r\nWe have noticed that getting backlinks from websites that have high SEO metrics values doesn\'t always help, and in fact, what is more important is to have backlinks from sites that are actually ranking for many keywords. \r\n \r\nThus, we have built this service especially to meet these new discoveries and the results are astonishing. \r\n \r\nPlease check more details here: \r\nhttps://www.semrushbacklinks.com/get-started/ \r\n \r\n \r\n \r\nRegards, \r\nStrictly Digital SEO Team \r\n \r\nWhatsapp us for more details: \r\nhttps://www.semrushbacklinks.com/whatsapp-us/', '2024-08-15', 'Seen', NULL, '2025-03-29'),
(55, 'WQ245561', 0, 'Mike Finch', 'mikeCotojist@gmail.com', '87253663119', NULL, 'Collaboration request', 'Hi there, \r\n \r\nMy name is Mike from Monkey Digital, \r\n \r\nAllow me to present to you a lifetime revenue opportunity of 35% \r\nThat\'s right, you can earn 35% of every order made by your affiliate for life. \r\n \r\nSimply register with us, generate your affiliate links, and incorporate them on your website, and you are done. It takes only 5 minutes to set up everything, and the payouts are sent each month. \r\n \r\nClick here to enroll with us today: \r\nhttps://www.earn35percent.com/get-started/ \r\n \r\nThink about it, \r\nEvery website owner requires the use of search engine optimization (SEO) for their website. This endeavor holds significant potential for both parties involved. \r\n \r\nThanks and regards \r\nMike Finch\r\n \r\nMonkey Digital \r\nhttps://www.earn35percent.com/whatsapp-affiliates/', '2024-08-15', 'Seen', NULL, '2025-03-29'),
(56, 'WQ245679', 0, 'Mike Pearcy', 'peterJist@gmail.com', '88653537818', NULL, 'Whitehat SEO for wbjrsfoundation.org', 'Greetings \r\n \r\nI have just took a look on your SEO for  wbjrsfoundation.org for its SEO metrics and saw that your website could use a boost. \r\n \r\nWe will improve your ranks organically and safely, using only state of the art AI and whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nMore info: \r\nhttps://www.unlimitedgoogle.com/monthly-seo/ \r\n \r\nRegards \r\nMike Pearcy\r\n \r\nDigital X SEO Experts \r\nhttps://www.unlimitedgoogle.com/whatsapp-us/', '2024-08-17', 'Seen', NULL, '2025-03-29'),
(57, 'WQ245772', 0, 'MichaelUseft', 'ulrichsuper@icloud.com', '86662573472', NULL, 'Unlock Your Potential: Collaborate with Accstores.com for Inclusive Websites', 'Transform your online presence with https://Accstores.com, the leading platform for web accessibility solutions. Our comprehensive tools and services empower businesses to create inclusive and user-friendly websites for all. From accessibility audits to personalized consultations, we offer tailored solutions to meet your needs. Join us in shaping a more accessible digital landscape. Explore https://Accstores.com today and make your website accessible to everyone. \r\n \r\n \r\nhave A Peek At This Website \r\nhttps://Accstores.com', '2024-08-18', 'Seen', NULL, '2025-03-29'),
(58, 'WQ245848', NULL, 'Norma', 'info@michaelis.pawsafer.net', '7059307429', NULL, 'Norma Michaelis', 'Morning \r\n \r\nIs your dog\'s nails getting too long? If you\'re tired of going to the vet or groomer to get them trimmed, why not try PawSafer™? \r\nWith PawSafer™, you can trim your dog\'s nails from the comfort of your own home, and it only takes a few minutes!\r\n\r\nPawSafer™ is the safest and most convenient way to trim your dog\'s nails, and it\'s very affordable. \r\n\r\nGet it while it\'s still 50% OFF + FREE Shipping\r\n\r\nBuy here: https://pawsafer.net\r\n \r\nBest, \r\n \r\nNorma', '2024-08-18', 'Seen', NULL, '2025-03-29'),
(59, 'WQ245993', 0, 'MichaelUseft', 'bettyesimonson@icloud.com', '87554725685', NULL, 'Seize the Opportunity: Partner with Accstores.com as a Supplier!', 'https://Accstores.com: Your Gateway to Inclusive Web Solutions. Our platform offers cutting-edge accessibility tools and services to ensure that every online experience is barrier-free. Join us in shaping a more inclusive digital world today. \r\n \r\n \r\nmouse Click The Following Website Page \r\nhttps://Accstores.com', '2024-08-22', 'Seen', NULL, '2025-03-29'),
(100, 'WQ2410088', 0, 'Davidzew', 'kayleighbpsteamship@gmail.com', '82168352422', NULL, 'Aloha,   wrote about   the price for reseller', 'Ciao, volevo sapere il tuo prezzo.', '2024-09-29', 'Seen', NULL, '2025-03-29'),
(101, 'WQ2410186', 0, 'john smith', 'jsmith0123@gmail.com', '9665438722', NULL, 'computer', 'computer', '2024-09-30', 'Seen', NULL, '2025-03-29'),
(311, 'WQ2531170', 0, 'SUMAN MODAK', 'modaksuman86@gmail.com', '9635438985', NULL, 'M.Sc', 'I want to apply for Faculty position for Computer Application', '2025-03-27', 'Seen', NULL, '2025-03-29'),
(316, 'WQ2531661', 0, 'ymuUPrOldj', 'crawflinn49@gmail.com', '5072824436', NULL, 'SwrRWiQIEgP', NULL, '2025-04-16', 'Unseen', NULL, NULL),
(317, 'WQ2531751', 0, 'MDVuCbNnw', 'combottkrakhurd1979@yahoo.com', '9212461006', NULL, 'nifqJgpN', NULL, '2025-04-24', 'Unseen', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `id` int(11) NOT NULL,
  `certificate_num` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `course_name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `total_score` varchar(30) DEFAULT NULL,
  `marks_obtained` varchar(30) DEFAULT NULL,
  `qrcode` varchar(100) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `updated_on` date DEFAULT NULL,
  `type` enum('Participation','Completion') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`id`, `certificate_num`, `date`, `name`, `subject`, `course_name`, `location`, `total_score`, `marks_obtained`, `qrcode`, `status`, `updated_on`, `type`) VALUES
(1, 'WAF624D1006', '2025-03-01', 'Aditya Biswas', 'Artificial Intelligent & Machine Learning Seminar', 'SEMINAR ON AI & MACHINE LEARNING', 'Kalyani Government Engineering College', NULL, NULL, 'Qrcode6641.png', 'Active', '2025-03-28', 'Participation'),
(2, '123', '2025-03-28', 'Rajdeep Sahaw', 'Performane Maeketing, SEO Optimization, Lead generation', 'College Seminar in Digital Marketing', 'Kalyani Govt. Engineering College', NULL, NULL, 'Qrcode6292.png', 'Active', '2025-04-01', 'Participation'),
(3, 'WAF27KG001', '2024-09-30', 'Aaditya Biswas', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Leraning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode8733.png', 'Active', '2025-04-01', 'Participation'),
(4, 'WAF27KGO53', '2024-09-30', 'Aishika Dutta', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Leraning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode6284.png', 'Active', '2025-04-01', 'Participation'),
(5, 'WAF27KGO45', '2024-09-30', 'Akash Bhakat', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Leraning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode9415.png', 'Active', '2025-04-01', 'Participation'),
(6, 'WAF27KG055', '2024-09-30', 'Aananya Malik', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Leraning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode2686.png', 'Active', '2025-04-01', 'Participation'),
(7, 'WAF27KG042', '2024-09-30', 'Anirban Tudu', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode6837.png', 'Active', '2025-04-01', 'Participation'),
(8, 'WAF27KG002', '2024-09-30', 'Anirudhya Gain', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode7388.png', 'Active', '2025-04-01', 'Participation'),
(9, 'WAF27KG003', '2024-09-30', 'Anurag Chaudhuri', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode6699.png', 'Active', '2025-04-01', 'Participation'),
(10, 'WAF27KG004', '2024-09-30', 'Apurba Sarkar', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode22110.png', 'Active', '2025-04-01', 'Participation'),
(11, 'WAF27KG058', '2024-09-30', 'Arka Mandal', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode7511.png', 'Active', '2025-04-01', 'Participation'),
(12, 'WAF27KG057', '2024-09-30', 'Arko Kundu', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode52312.png', 'Active', '2025-04-01', 'Participation'),
(13, 'WAF27KG052', '2024-09-30', 'Bikram Saha', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode32313.png', 'Active', '2025-04-01', 'Participation'),
(14, 'WAF27KG006', '2024-09-30', 'Bikram Soren', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode7814.png', 'Active', '2025-04-01', 'Participation'),
(15, 'WAF27KG054', '2024-09-30', 'Bratati Mandal', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode69915.png', 'Active', '2025-04-01', 'Participation'),
(16, 'WAF27KG007', '2024-09-30', 'Chandra Prakash Gupta', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode89916.png', 'Active', '2025-04-01', 'Participation'),
(17, 'WAF27KG008', '2024-09-30', 'Debanjan Das', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode49917.png', 'Active', '2025-04-01', 'Participation'),
(18, 'WAF27KG009', '2024-09-30', 'Dipak Kirtania', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode11918.png', 'Active', '2025-04-01', 'Participation'),
(19, 'WAF27KG013', '2024-09-30', 'Dutimoy Bhunia', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode49919.png', 'Active', '2025-04-01', 'Participation'),
(20, 'WAF27KG056', '2024-09-30', 'Goutam Gupta', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode42720.png', 'Active', '2025-04-01', 'Participation'),
(21, 'WAF27KG061', '2024-09-30', 'Indranil Maji', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode74121.png', 'Active', '2025-04-01', 'Participation'),
(22, 'WAF27KG039', '2024-09-30', 'Indranil Sarkar', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode16022.png', 'Active', '2025-04-01', 'Participation'),
(23, 'WAF27KG060', '2024-09-30', 'Ishika Senapati', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode69723.png', 'Active', '2025-04-01', 'Participation'),
(24, 'WAF27KG014', '2024-09-30', 'Jayashree Das', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode78724.png', 'Active', '2025-04-01', 'Participation'),
(25, 'WAF27KG015', '2024-09-30', 'Jyotiska Biswas', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode62325.png', 'Active', '2025-04-01', 'Participation'),
(26, 'WAF27KG016', '2024-09-30', 'Koushik Nath', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode46126.png', 'Active', '2025-04-01', 'Participation'),
(27, 'WAF27KG017', '2024-09-30', 'Manish Bairagi', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode14627.png', 'Active', '2025-04-01', 'Participation'),
(28, 'WAF27KG049', '2024-09-30', 'Md Javed Akhtar Mallic', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode13928.png', 'Active', '2025-04-01', 'Participation'),
(29, 'WAF27KG051', '2024-09-30', 'Meghma Sarkar', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode46729.png', 'Active', '2025-04-01', 'Participation'),
(30, 'WAF27KG010', '2024-09-30', 'Mufti Mohammed Sayeed', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode2130.png', 'Active', '2025-04-02', 'Participation'),
(31, 'WAF27KG040', '2024-09-30', 'Nirupam Dutta', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode80931.png', 'Active', '2025-04-02', 'Participation'),
(32, 'WAF27KG038', '2024-09-30', 'Nivriti Pradhan', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode89732.png', 'Active', '2025-04-02', 'Participation'),
(33, 'WAF27KG011', '2024-09-30', 'Pradip Das', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode68133.png', 'Active', '2025-04-02', 'Participation'),
(34, 'WAF27KG043', '2024-09-30', 'Pratham Das', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode77334.png', 'Active', '2025-04-02', 'Participation'),
(35, 'WAF27KG046', '2024-09-30', 'Pushpendu Bar', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode73035.png', 'Active', '2025-04-02', 'Participation'),
(36, 'WAF27KG012', '2024-09-30', 'Ramesh Kumar Patra', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode80436.png', 'Active', '2025-04-02', 'Participation'),
(37, 'WAF27KG018', '2024-09-30', 'Rupam Das', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode53437.png', 'Active', '2025-04-02', 'Participation'),
(38, 'WAF27KG019', '2024-09-30', 'Rupantar Mondal', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode19838.png', 'Active', '2025-04-02', 'Participation'),
(39, 'WAF27KG059', '2024-09-30', 'Sagnik Bera', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode94339.png', 'Active', '2025-04-02', 'Participation'),
(40, 'WAF27KG020', '2024-09-30', 'Sagun Soren', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode82740.png', 'Active', '2025-04-02', 'Participation'),
(41, 'WAF27KG044', '2024-09-30', 'Saikat Roy', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode24641.png', 'Active', '2025-04-02', 'Participation'),
(42, 'WAF27KG050', '2024-09-30', 'Sambhunath Das', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode28442.png', 'Active', '2025-04-02', 'Participation'),
(43, 'WAF27KG022', '2024-09-30', 'Sanju Bhunia', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode71743.png', 'Active', '2025-04-02', 'Participation'),
(44, 'WAF27KG047', '2024-09-30', 'Santanu Bhunia', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode70544.png', 'Active', '2025-04-02', 'Participation'),
(45, 'WAF27KG048', '2024-09-30', 'Santanu Purkait', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode31145.png', 'Active', '2025-04-02', 'Participation'),
(46, 'WAF27KG023', '2024-09-30', 'Satya Sundar Dey', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode12446.png', 'Active', '2025-04-02', 'Participation'),
(47, 'WAF27KG064', '2024-09-30', 'Sayan Panda', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode14547.png', 'Active', '2025-04-02', 'Participation'),
(48, 'WAF27KG036', '2024-09-30', 'Sayan Paul', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode68848.png', 'Active', '2025-04-02', 'Participation'),
(49, 'WAF27KG024', '2024-09-30', 'Sayandip Paul', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode37549.png', 'Active', '2025-04-02', 'Participation'),
(50, 'WAF27KG025', '2024-09-30', 'Shatadru Dhar', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode75150.png', 'Active', '2025-04-02', 'Participation'),
(51, 'WAF27KG026', '2024-09-30', 'Shayan Mondal', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode97951.png', 'Active', '2025-04-02', 'Participation'),
(52, 'WAF27KG062', '2024-09-30', 'Shubhamay Nandi', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode94752.png', 'Active', '2025-04-02', 'Participation'),
(53, 'WAF27KG027', '2024-09-30', 'Sima Nandi', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode4853.png', 'Active', '2025-04-02', 'Participation'),
(54, 'WAF27KG035', '2024-09-30', 'Soonava Chatterjee', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode26654.png', 'Active', '2025-04-02', 'Participation'),
(55, 'WAF27KG028', '2024-09-30', 'Souhardya Patra', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode72055.png', 'Active', '2025-04-02', 'Participation'),
(56, 'WAF27KG029', '2024-09-30', 'Soumyapriya Goswami', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode58056.png', 'Active', '2025-04-02', 'Participation'),
(57, 'WAF27KG037', '2024-09-30', 'Subhadeep Sarkar', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode26357.png', 'Active', '2025-04-02', 'Participation'),
(58, 'WAF27KG041', '2024-09-30', 'Subhodeep Mondal', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode10458.png', 'Active', '2025-04-02', 'Participation'),
(59, 'WAF27KG030', '2024-09-30', 'Sujit Kumar Shaw', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode69859.png', 'Active', '2025-04-02', 'Participation'),
(60, 'WAF27KG031', '2024-09-30', 'Suprabhat Maiti', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode56560.png', 'Active', '2025-04-02', 'Participation'),
(61, 'WAF27KG032', '2024-09-30', 'Susmita Mazumder', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode36361.png', 'Active', '2025-04-02', 'Participation'),
(62, 'WAF27KG033', '2024-09-30', 'Swayamprabha Banerjee', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode99462.png', 'Active', '2025-04-02', 'Participation'),
(63, 'WAF27KG034', '2024-09-30', 'Utpal Pal', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode79663.png', 'Active', '2025-04-02', 'Participation'),
(64, 'WAF27KG063', '2024-09-30', 'Vansh Gupta', 'Seminar on AI & Machine Learning', 'Seminar on AI & Machine Learning', 'Kalyani Engineering College', NULL, NULL, 'Qrcode1064.png', 'Active', '2025-04-02', 'Participation');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('007f826a03bdf2ab131d71e7124ac9caa3a71025', '207.46.13.18', 1745907906, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930373930363b),
('008d09f381b5429a455a4e601bc7c85bd5735ab2', '54.36.148.242', 1745919246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353931393234363b),
('019602a49cc0f411137fed8dc8a38a1ba21cd890', '64.15.129.122', 1745984207, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938343230373b),
('023f5103a754a0e1e093c472e4a24118cecc3090', '2001:4860:7:405::a4', 1745853908, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835333930383b),
('043c23300e62a98f9d6e0f4167051a4bbeb81f4b', '54.36.148.220', 1745871277, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353837313237373b),
('047021ac339a146d91adb6ed421795ede9e9a2a2', '66.249.79.36', 1745884537, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353838343533373b),
('04befe7f59026ec6c17ade97ea10a745e36a1ed8', '2a03:2880:20ff:1::', 1745863743, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836333734333b),
('062b89604acbe726864f3b06de0fda009bcf9111', '27.115.124.41', 1745959604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353935393630343b),
('062c6c05156547f3db71fc5e90a48f8c2b24c567', '66.249.79.36', 1745938797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933383739373b),
('06d33a506a0b3a1a8d8a42cbbd46374338ed70f9', '94.191.43.82', 1745853584, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835333538343b),
('07fa86e13e71b1299bf6902e626bb3153b6373a6', '66.249.79.36', 1745938761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933383736313b),
('09d7c3474f41380a01a1688ea2e1c04b0eae9b76', '38.153.152.246', 1745920261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353932303236313b),
('0a717a6da0c7a2ffb34da4d065d5f74f8a6184a9', '54.36.149.38', 1745981444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938313434343b),
('0b36d5573ead5830295c4d7e86cde65bb662d736', '2a03:2880:f802:16::', 1745985175, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938353137353b),
('0bd8535d418b34a92a0e56d6568e601b921235c5', '184.105.108.4', 1745878294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353837383239343b),
('0c33f04536d4c6a12d841b4386b30dc42206fbb8', '66.249.79.32', 1745989018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938393031383b),
('0ca1ad32aa7d30ec43a806fc68abf6775f176d48', '54.36.148.135', 1745878144, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353837383134343b),
('0ca74a980f0c58054990109379029535dc730256', '95.108.213.189', 1745875433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353837353433333b),
('0d39531079c60569ad211cf45209f701379f8bc4', '54.36.148.242', 1745991411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939313431313b),
('0d4bcb128ba412164a90235ea3f5becc484dd586', '52.167.144.149', 1745877379, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353837373337393b),
('0d8812ec7e177320fcbb61c6a94947d5866efb1e', '157.55.39.53', 1745897088, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353839373038383b),
('0db86c60a570274dcbf8b2af86239e1e0908a236', '52.230.164.189', 1745995743, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939353734333b),
('0ddcf65bd598af186b69ab73150cec1a59dd84ef', '66.249.79.36', 1745906177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930363137373b),
('0e38410f73028dd2f1ed86b0d0829b896216767c', '2a03:2880:2ff:5::', 1745941022, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934313032323b),
('0e3be3e8642b6be512661ae7346ad660d0136647', '66.249.79.36', 1745841776, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834313737363b),
('0e736bfa40fce727ecd93a20a963c0959681001f', '64.15.129.108', 1745983319, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938333331393b),
('0e8048d89a2284fdf2ac865954d0d764d2e5c630', '47.79.198.99', 1745948985, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934383938353b),
('0e8f9eba4bf5efdafb465d629cfb7c6a4fde2194', '54.36.149.73', 1745953305, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353935333330353b),
('1305b9c9dfe24a490b30bf6a4cebc129b72f8a32', '66.249.79.36', 1745901797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930313739373b),
('13efea52f55c552f8d0354a3c5d291912cd5b668', '54.36.149.33', 1745886065, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353838363036353b),
('14345215c13af62cf4a75e0d1e54ca3b6e2c3c73', '66.249.79.36', 1745906045, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930363034353b),
('15344c8040d71bab7a3354dce5505a019c025e65', '66.249.79.36', 1745846748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834363734383b),
('158d481f08f1fba0c6b46d50dc509b68ea99d667', '54.36.148.33', 1745922140, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353932323134303b),
('163b38f2217b4d31392a70f8659ddbb24880f8e0', '18.191.195.228', 1745984384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938343338343b),
('17963ec7c13ec45065572c6921e1ec6424a4ad77', '64.233.173.233', 1745987852, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938373835323b),
('18a4021daaa940c2615aa1adf95958c60fa1264c', '2401:4900:8828:e93a:fada:4f9:1f03:6726', 1745854209, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835333939343b),
('18e064308fd9b44e14eaa80def5aaaf956acdd1f', '66.249.79.37', 1745964271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353936343237313b),
('1990ac5605cf7cf64785abfdcc236c38d988db25', '72.14.199.164', 1745859559, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835393535393b),
('19aef06e2eb73d5e00fb9b520814a0ba7dcb049a', '54.36.148.80', 1745883973, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353838333937333b),
('19f3701916a4401096de66681c1037e577cc1586', '213.180.203.238', 1745883317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353838333331373b),
('1a0612a00989a114cc777e4b3636369caf57ef63', '54.36.149.29', 1745992874, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939323837343b),
('1a8fea93090be98894270ef1bca0049892c6e381', '54.36.148.224', 1745893333, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353839333333333b),
('1b04bb5ab8209aff729b3ccd249369d0ae240f8e', '2a03:2880:f802:b::', 1745941120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934313132303b),
('1c1b4919ee5cf232ddc77c8408dde64e2a102f6d', '193.176.23.38', 1745905012, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930353031303b6d7367327c613a323a7b733a313a2274223b733a373a2273756363657373223b733a343a226d657373223b733a32363a2252657175657374207375636365737366756c6c792073656e742e223b7d5f5f63695f766172737c613a313a7b733a343a226d736732223b733a333a226f6c64223b7d),
('1c7082f5d6a3fd80eec8a89b5ac5292d235c41d3', '47.79.212.65', 1745932303, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933323330333b),
('1d19347d153041f44e2d33a1761b5a24e2c88cab', '52.230.164.184', 1745995743, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939353734333b),
('1d1aad6395926e88a0afb87e385a19ea184e7cf2', '47.79.196.240', 1745979373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353937393337333b),
('1d47a0e8724c0ead50a5dd92139efc126bae71fe', '54.36.148.240', 1745957753, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353935373735333b),
('1e86457545c4528f3ea808a955ff4a7cfb5d1299', '2a03:2880:f802:1d::', 1745883106, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353838333130363b),
('1f62da61ab21832d531c6d16e83c6ffdce689514', '54.36.148.236', 1745911652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353931313635323b),
('2027bf121ac98d283c5b5aec37e20191a5b3720e', '106.0.59.151', 1745841979, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834313937393b),
('210edfb81c2c654706c847397cbdf6262e461c9e', '66.249.79.32', 1745968285, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353936383238353b),
('222e0589e0f7ea098520c4bda267933a5a6daa7d', '54.36.148.185', 1745926437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353932363433373b),
('225708a821f3239bc6aa6fd85fa089c2ec504de6', '106.0.59.151', 1745842002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834323030323b),
('241787838d39bf799f8a6304bcaa95c6f2697534', '66.249.79.37', 1745905625, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930353632353b),
('249616ccf287d9aa5c238e4f80fc692b55f062cb', '66.249.79.37', 1745888085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353838383038353b),
('257cb288d5a469ce8f5a46ad2679a0c280a472b0', '66.249.79.37', 1745960389, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353936303338393b),
('2589d576c41c8424f099698a28b1b8975df400c3', '2a03:2880:f802:f::', 1745957221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353935373232313b),
('26d3e5c094794fbf43dc5050df2eefb860bad549', '66.249.79.36', 1745902023, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930323032333b),
('2714644497aec5052501a43106a631222575a530', '54.36.149.53', 1745843711, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834333731313b),
('27fd9177c3f950e1abb22b72918c2b2c8f24c5a7', '103.119.241.170', 1745900206, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930303230363b),
('28e64b53507cea1a151f5b6b57edb621811cb45c', '2a03:2880:f802:10::', 1745918500, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353931383439393b),
('2a869ce3ff848d57aec3140d5ae5edbcbb2a2417', '52.167.144.156', 1745845160, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834353136303b),
('2b83baadd1c1096c58c4abb2ffec52b5862276b7', '54.36.148.181', 1745963146, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353936333134363b),
('2b8fc0f63559e071d98cc88bef7af36f595c1320', '66.249.79.37', 1745906055, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930363035353b),
('2c06a18ce079b1e386d7a82bc448fbf7ec71a655', '66.249.79.36', 1745946480, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934363438303b),
('2c3792a4a2d69486223e551a84af888bab14cce0', '54.36.148.252', 1745889597, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353838393539373b),
('2c62ccef1f87dc91c9319962e89ffa2246471c81', '2a03:2880:f802:13::', 1745842828, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834323832383b),
('2c90ea6074a14eb20b1bd6869b8aa47526e675a3', '54.36.148.61', 1745968092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353936383039323b),
('2cd4da8d44207f7fd0ea8d57a899c3da8b943103', '54.36.149.23', 1746004540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734363030343534303b),
('2e82a1484d9fd7acdf5df47e39d8758072060207', '66.249.79.36', 1745942168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934323136383b),
('2f03050db6efc3697a026170c87c9eed6c159d7c', '157.55.39.13', 1745879151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353837393135313b),
('2f083d8f2e190a7059b00d2e03bf2e4dda7544db', '54.36.148.44', 1745874709, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353837343730393b),
('2f2b754135afddebc2def99794f4f6a17cd1a382', '2001:4860:7:405::ac', 1745851417, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835313431373b),
('2f8699492257e9c4c7ba0df530923c72e113d5e4', '54.36.149.77', 1745835520, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353833353532303b),
('300c78e4b457a35074283e9f799e1821bbd44a2b', '66.249.79.32', 1745879137, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353837393133373b),
('30537d98cf0c8f7d77dbc9a5d083fd92982f6461', '66.249.79.32', 1745908867, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930383836373b),
('305be57ad396e83070cac92a23c2c99e5bd7af46', '2001:4860:7:805::89', 1745996956, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939363935363b),
('30e3e9a1bbb17d47877c95dc790d4ade68303efc', '66.249.88.226', 1745907757, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930373735373b),
('31123717c3abef343485e220759386c80a76acde', '2409:40e0:10b:c64a:3b:5400:42a6:44ed', 1745861990, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836313939303b),
('320676f9dfcde6aed4b9448c5b6f2d935b8ebb58', '54.36.148.43', 1745975773, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353937353737333b),
('3210e35480b685a4c49e20c741e5f54e5eb51732', '54.36.148.246', 1745994410, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939343431303b),
('335b96dc123ae7b7360fdc39ace049a25431058f', '192.175.111.238', 1745984211, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938343231313b),
('34000e772f31c3e96b48263cb157f28468f08162', '2a03:2880:ff:d::', 1745837115, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353833373131353b),
('340fc4175b93b095aa4d42253438791adf3c1b09', '54.36.148.78', 1745908172, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930383137323b),
('34743bf803bc289e7d94dc5ac80c4c926ac760c9', '54.36.148.110', 1745989571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938393537313b),
('34b5713e975ba606b6c5bf908ef97a66993e4550', '54.36.148.34', 1745833039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353833333033393b),
('3614672875ef9757a8d3f4912ea026701cb0129e', '66.249.79.37', 1745938746, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933383734363b),
('373481f03f6c04ebb7645d297b51c72ac68b159d', '18.191.165.252', 1745982645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938323634353b),
('38fb835b67319609e5de68bed4f03c7dbf1c9248', '54.36.148.79', 1745949759, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934393735393b),
('3afa28ae9c7e1301cc9ed899628afe024f73f052', '66.249.79.32', 1745856398, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835363339383b),
('3b62434f8c91425cf5517bb0f480731e692db4fc', '2409:40e0:1029:84c6:b1b9:e0fc:81e9:acbd', 1745927733, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353932373733333b),
('3b691dea79792b25b97b1a957dc9fe55d3233221', '54.36.149.0', 1745965829, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353936353832393b),
('3c2b2f0219ebc0c663686e740e39011e81380259', '52.167.144.205', 1745883314, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353838333331343b),
('3c993de892dae6e75bb666679752a48236f1a646', '2a03:2880:ff:10::', 1745877157, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353837373135373b),
('3c9a1776c3517f008a295a5777743d94647440ad', '66.249.79.37', 1745947457, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934373435373b),
('3ca811995d15111b161559fd0c69c905b5fa3b0b', '2a03:2880:f802:1d::', 1745915109, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353931353130393b),
('3cc5c81e8a0239106368ac29d0e93c4555ad0469', '40.84.221.209', 1745980451, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938303435313b),
('3cfc24693a9410b56684d3ac7e5be5866296915b', '66.249.79.32', 1745960425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353936303432353b),
('3d61cab738d4809e203c553061c479243b53dace', '54.36.148.254', 1745914113, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353931343131333b),
('3e1b1790ceb703d38de700c28200e7b7d9f81d2d', '185.170.167.18', 1745949235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934393233353b),
('3e464c513502818df7d39896d096417c2d7a2abf', '66.249.79.36', 1745938572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933383537323b),
('4175582be75a4d91c90a6d87d179c2a7590bbe79', '66.249.79.37', 1745983465, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938333436353b),
('41d7f4af9832c65faf4b2d31f02dd16c4532d855', '47.128.111.171', 1745976604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353937363630343b),
('4304fb28d92752b32999b3104ff394616a80146b', '54.36.148.172', 1745932004, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933323030343b),
('4481821d4cb209a83b3fbf99386bfcd4644524b5', '54.36.149.55', 1745836664, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353833363636343b),
('45517ce9598bef070beaa04e57eca30262914e27', '207.46.13.111', 1745871818, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353837313831383b),
('4563e4c174ef5951f62a0ccb60e204dc22629050', '54.36.148.116', 1745944871, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934343837313b),
('46ac789ea84f6157f4feb693ea2b6d9a9775750d', '54.36.148.84', 1745988435, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938383433353b),
('46cc65d084bf2a55f17c94ea6d48b22e4b40c1ff', '66.249.79.37', 1745982858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938323835383b),
('46dd9036fa1f950175abd33c7b9cdf85d0492384', '66.249.79.32', 1745948594, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934383539343b),
('47c52fe9e9a5a426c444657de9be6db2dc357239', '2409:40e0:f4:5af8:1da6:e499:cac:eb23', 1745988598, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938383539383b),
('47e545db026fee2bc3c8b0671f14acb4c6d3906f', '66.249.79.36', 1745844949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834343934393b),
('47f79b4773da66333c4c66e702333767ff2b73c1', '66.249.79.37', 1745975735, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353937353733353b),
('4807758bbbc312f864bd6b2ccb0bb916b174be01', '2a03:2880:ff:4::', 1745877157, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353837373135373b),
('48b244752e7f632d1f6226a4ab447ef24d2b674e', '2a02:4780:11:c0de::21', 1746003224, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734363030333232343b),
('48e0f2868caada916b9a466c1ec15ff0a31944bb', '66.249.79.36', 1745924057, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353932343035373b),
('4917d0f3eb0741c294686b1ae0663fa8bcf028b2', '66.249.79.37', 1745948508, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934383530383b),
('4b03cce8188057cb02f79c963520f9ed352840c6', '66.249.79.37', 1745902437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930323433373b),
('4c15299ef07eba29e40d8c47b3e2ac22fcc62ec4', '54.36.149.40', 1745972385, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353937323338353b),
('4c18f88c40991aa0db056f5abc22ae7814ad1c60', '66.249.79.37', 1745864637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836343633373b),
('4c559b5ab06c704642141acd36420845616c108a', '66.249.79.37', 1745878927, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353837383932373b),
('4d0c0f2fd1cafe958618d4307b0232c34c87c7f7', '66.249.79.36', 1745996335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939363333353b),
('4dadb0fbd14d4fbee82c5d97f7578ce06259f596', '52.167.144.156', 1745958936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353935383933363b),
('4e2b113ea4716df67ac7236f59d96c5d9f85eb4d', '54.36.148.158', 1745906916, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930363931363b),
('4f1bb5a30a9134c07bba479d4d3ee14a3df36cc8', '54.36.148.115', 1745960450, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353936303435303b),
('4f74402ceb8fc64373f6dd617da0ee1b37e23cca', '54.36.149.43', 1746005980, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734363030353938303b),
('5035c592f74d1d47571db3eb66e5b6b179aef7fc', '47.79.214.95', 1746005226, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734363030353232363b),
('5063b4fdc73d909d1dbcb8e4ca9351e3cfeb29fe', '64.15.129.102', 1745983312, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938333331323b),
('50a4d8265b548bbe81cafb9678c399a20b0b9c4a', '66.249.79.32', 1745971858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353937313835383b),
('5230c51b69eb08e991a6ab9da386febe2246bc55', '66.249.79.32', 1745925470, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353932353437303b),
('525c58adfab99217d69d489733b8e659ef7a49af', '66.249.79.36', 1745931253, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933313235333b),
('52c4311fefaa2e621291c3c96f026897e76b1fbd', '67.205.153.102', 1745997737, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939373733373b),
('56a7ecb0651b3463566726302830398d917a407e', '47.79.198.98', 1745982155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938323135353b),
('57a4ce29ecb1e7a89aca16255f6bff79eece9abc', '27.131.213.153', 1745930699, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933303639393b),
('5b3e1bfcd44fcbf61d32ca83f44bbc9505745cde', '66.249.79.37', 1745917058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353931373035383b),
('5bfaf06c9b73ed97c9464dc3a2c8e552482da399', '54.36.148.200', 1745916558, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353931363535383b),
('5d528680097f88123f5806b3feaf44527d4f318f', '66.249.79.32', 1745938640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933383634303b),
('5d7ed3b9382fed6152bac91b7df5a019d1d8e0c8', '2a03:2880:f802:e::', 1745862586, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836323538363b),
('5dad67106e53af236a77f3b73436d4234a9ae21a', '2409:40e0:10b:c64a:3b:5400:42a6:44ed', 1745862668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836323636383b),
('5e24c02b4a309e71906301d5d624667465e0fc27', '66.249.79.32', 1745832223, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353833323232333b),
('5e8fbdcfed97dfb22bd1d55748f87472ee70749e', '2a03:2880:f802:b::', 1745939058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933393035383b),
('5ee88a8cdf032a02f3c15e7e6f7f5eb88c46da8e', '2a03:2880:f802:1a::', 1745903976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930333937363b),
('5eeaed262647c908aa9f4cfb5b1559600109e359', '64.23.203.12', 1745919833, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353931393833333b),
('5feacdd076503a7e18b7642f62e81b336ebef061', '40.77.167.8', 1745895844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353839353834343b),
('603b7164517178199ae3cc82c0c277f6b5f5c21b', '66.249.79.32', 1745837599, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353833373539393b),
('608446a8e5fb91495199cc9c516162cf6d3eacec', '54.36.148.209', 1745955178, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353935353137383b),
('608905c0edfec3f9feceb075e7e88e53999bcaf6', '34.234.211.207', 1745991834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939313833343b),
('60b935dc540d44bc9b02c8f7741882559f0fc521', '2a03:2880:f802:1a::', 1745887582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353838373538323b),
('60bf64ebee00df0895805bc23f38404a3478f96f', '40.77.167.33', 1745942916, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934323931363b),
('60e4bbdf3ee052967f41dd7e12705b38f0c96f9c', '54.36.148.151', 1745936057, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933363035373b),
('615881ad8516e77a9d6e47ab5a2030f0c058e305', '66.249.79.37', 1745938737, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933383733373b),
('626e57d14579dfa3870495695da3cc3bb0ce9808', '54.36.149.91', 1745887887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353838373838373b),
('62b842f9259ce5b023c0038370e1da090afd9c9d', '66.249.79.36', 1745847791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834373739313b),
('6448ebfe2d36a1d2b9d8be54c0017d052cf3248e', '54.174.140.70', 1745861828, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836313832383b),
('644b1d08d04be49986448506c075c19ec4cfb919', '47.79.213.70', 1745957707, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353935373730373b),
('64e9aa81a694df526eeda3742c0430e16b7e477d', '3.23.102.192', 1745911083, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353931313038333b),
('652b778acef872ce86d99a0f8c99b6d3a24c7ca8', '207.46.13.150', 1745919063, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353931393036333b),
('65bc37ee1a06791c51c50bdb1d2e12625401b653', '66.249.79.32', 1745847728, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834373732383b),
('65c47196bc3541ecbe4f65b5f1a9f838836c3cdd', '66.249.79.32', 1745932017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933323031373b),
('65d7347e8fa2fec15a732a258e7ab5a1a0da99a5', '66.249.79.32', 1746000907, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734363030303930373b),
('675a8aeb27cdcfe918d027bc47dd41a16cd3895b', '54.36.148.211', 1745837861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353833373836313b),
('67e0e05e298d38236ae37ce5a09fc027ba9362cb', '66.249.79.37', 1745947457, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934373435373b),
('682976411c4eeb98b0a81b23d3cc61330981fc9e', '40.77.167.33', 1745850279, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835303237393b),
('69239aebc3edf5181272e5be25924e6e67cb37e5', '192.36.137.155', 1745833795, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353833333739353b),
('69b764fe95b36c2897defb4cf163345be5a5ca4a', '54.36.148.59', 1745910504, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353931303530343b),
('6a4837cec8e9afb4800dc8faa8e5c45b247036bd', '54.36.149.32', 1745869550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836393535303b),
('6a660fc74dbfece395ca0f36742c9e1931611930', '66.249.79.36', 1745884644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353838343634343b),
('6a76a2628d50c706b5888f8750a63102a3dbd8f2', '2402:3a80:198d:7e97:3ddc:dcfe:1ece:d13e', 1745880038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353838303033383b),
('6b628a8c18ed2caa879c08a04f6b624af4c1ba5e', '2401:4900:8828:e93a:28f4:4ce9:357:f90f', 1745942156, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934323135363b),
('6b7ca1fa8e15afb7668fe15df4f53813fb4294cd', '121.4.97.180', 1745888246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353838383234363b),
('6c3eaf88d706378c758b0400cd715c3a6b855c9c', '72.14.199.160', 1745928777, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353932383737373b),
('6d4472953ae7717b050331512697e15c7b1e33ed', '2409:40e0:10b:c64a:3b:5400:42a6:44ed', 1745862867, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836323636383b),
('6d9e99102eb95fe560c8d3e2e9d70ce63b7de264', '66.249.79.37', 1745934855, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933343835353b),
('6da1cd796f88d40618b977d8adbfc79b4d475f3e', '66.249.79.36', 1745953052, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353935333035323b),
('6dc72319b0d4990ecdc3c8e6c30f496a90161bed', '2401:4900:8828:e93a:fada:4f9:1f03:6726', 1745861208, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836313230383b),
('6e814dc2376dfb6b76e0a17320f5f2b877fcc3df', '40.77.167.131', 1745846664, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834363636343b),
('6f065e3a040764138358d16c7faf7a865282386e', '66.249.79.36', 1745948650, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934383635303b),
('6fbe18b75f3ca46a5f03d0b1a77ffd1b2c3b8b9a', '52.167.144.140', 1745875532, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353837353533323b),
('70a0344ef841a40cda2127cf1437ae870eab4171', '94.189.235.137', 1745996211, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939363231313b),
('70a525f75b80cf1a5f62d9a183a5c471d8a384f5', '2a03:2880:f802:e::', 1745899518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353839393531383b),
('72d2d8be6b7be99dac8c864a3f73b1f2bb0796ef', '66.249.79.32', 1745956706, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353935363730363b),
('73b14d31ed5e3ae346dea883efdc8c904351f033', '17.241.75.169', 1745954871, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353935343837313b),
('741fc73afe68ec20675d58cfe1984d69774c9e97', '66.249.79.36', 1745862881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836323838313b),
('74f90f496a5e0999824824463b4b64b2734e8812', '54.36.149.96', 1745941903, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934313930333b),
('7549b6d5774d433c995cd5a3afa13308040bbd24', '66.249.79.36', 1745884654, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353838343635343b),
('77f944f0cfb6e7c28f1d2c8d28bded23391e6c4e', '207.46.13.153', 1745839508, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353833393530383b),
('78727d387d1a96f270425922c6d5a53c0e231fae', '2a03:2880:f802:1d::', 1745873676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353837333637363b),
('78e4cb255661c9f230871b3e341fc8a31233c975', '54.36.149.91', 1745928032, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353932383033323b),
('7a33d2ee548e1c5872334ea2563d0f7120052551', '66.249.66.5', 1745997124, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939373132343b),
('7a56189c2bbaf5d422a2a7631eab979a3e53d734', '52.167.144.185', 1745899109, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353839393130393b),
('7a780feb94bd047ff60c1a4c7a9b0f41fe1a1d78', '66.249.79.32', 1745866502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836363530323b),
('7a9d6fb12b0138477fe1002a3b65bdcf6c5281ad', '54.36.148.214', 1746003159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734363030333135393b),
('7b01bf74df0a17892aa552ac56bd5f745d13030e', '47.128.31.64', 1745976580, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353937363538303b),
('7cb06da481736faa417e71fd41e7d1005a415c2b', '2a03:2880:12ff:5::', 1745863736, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836333733363b),
('7e48d62f37b43dba38155b000972be4ba18e0c80', '104.239.80.64', 1745942598, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934323539383b),
('7e538055a75c95df6652495afe42b77a6ed64142', '66.249.79.32', 1745846821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834363832313b),
('7f2e74294870315920e7b611f3117aea0c81dcf8', '207.46.13.111', 1745957243, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353935373234333b),
('7f6f84aa8e7a413e4caa9b0e32da8aff1853fca7', '54.36.148.214', 1745841081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834313038313b),
('7fad8a6f3aecfedb2e4e2a44baa62c8bdfe4f273', '2409:40e0:10b:c64a:3b:5400:42a6:44ed', 1745862310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836323331303b),
('80d0e7b1e6d3b15037b4567306700daf4d93f4d7', '66.249.79.36', 1745933483, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933333438333b),
('81e73ea06a1557005bd925913b3b698c26519eb0', '54.36.149.66', 1746008731, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734363030383733313b),
('820c39aa6791b07df71fa81f7d488ae9075fcbac', '213.180.203.194', 1745966525, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353936363532353b),
('841b1c7d877c6b48d9f8ec86d4b0eb44b9f6337f', '66.249.79.37', 1745847542, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834373534323b),
('846608d5fdcedc62dc21404677a49430758fdc17', '66.249.79.37', 1745846591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834363539313b),
('849f973aa0ef24336064da011ee7da36bda8a76e', '66.249.79.37', 1745841573, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834313537333b),
('856a9abfaa4cfaf1260aa4b83ae52d0668c14228', '66.249.79.37', 1745916963, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353931363936333b),
('864c2dffe8567f73499ffbdaf2b10839a49cef56', '2001:4860:7:805::a7', 1745929295, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353932393239353b),
('86ec1957cde0c081034a0f7ab244170c123a64ac', '66.249.79.32', 1745904247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930343234373b),
('8713879328c93e6998022e772a0ceaf16efa5c68', '2001:4860:7:405::e', 1745853909, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835333930393b),
('87171c249945d97aa424bab251d1a2b8fecb21a6', '52.230.164.179', 1745997492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939373439323b),
('8773fe96925a8d658a113694b4bb22fa3667f9b3', '185.191.171.7', 1745853318, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835333331383b),
('87ca0e1c500f06ef8864b98f624b000467e959e7', '66.249.79.36', 1745833579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353833333537393b),
('87e864674e3608f55c3708bace0bd036b36929bf', '66.249.79.36', 1745987225, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938373232353b),
('885d0c9f06ef19daf6efa9a6b38dd94d81e67b12', '54.36.148.196', 1745915357, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353931353335373b),
('88fc41d66eea6a5e61a353993ac5c51857e94e57', '43.153.102.138', 1745846330, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834363333303b),
('89aa9dd6487db6ec091144c6131af504cbd88a5c', '192.175.111.236', 1745984204, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938343230343b),
('8ace0f8449a3193ca98be533e849146ef1fb69ba', '54.36.148.203', 1745862564, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836323536343b),
('8b1c0b081999b17e038ca3bd87f24db731916729', '64.15.129.112', 1745984213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938343231333b),
('8b77526cac5bce0c66e16848dfb78a80ae6e0d15', '47.79.213.53', 1745962283, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353936323238333b),
('8bb39395c20c8fa20229770034343810c22bafca', '66.249.79.32', 1745888080, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353838383038303b),
('8c7cc28e88fc07752fae625c0b64d35dd1599c70', '40.77.167.18', 1745853845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835333834353b),
('8ce6c60c1a6d0d4614ffc5acc1b58f779a3b39bd', '159.223.10.175', 1745996131, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939363133313b),
('8d4836a6f075c5d84fb9afbc3b35ae8217cc3f0f', '66.249.79.32', 1745967876, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353936373837363b),
('8dd0b877cf4a64bccaa1b045e7d0191d8e3c20c5', '2a03:2880:ff:8::', 1745837113, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353833373131333b),
('8e527a365cc3b2664679c76603017ec85a815cd8', '66.249.79.32', 1745890811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353839303831313b),
('8eb83490799aa5bf8a08a35e289b09a5424c780f', '54.36.149.52', 1745860748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836303734383b),
('90140a63dc5e21947cc188a21e7a324a87040c40', '66.249.79.36', 1745913283, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353931333238333b),
('904798041ba3eb96baa279f8961af890b3452bf0', '54.36.148.127', 1745856910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835363931303b),
('9162da085199abd0dce515d95e8020efa417c2be', '66.249.79.36', 1745905385, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930353338353b),
('916dc0c9f295a9a20e7a2bad7eed66e04ac9576d', '2a03:2880:f802:18::', 1745943101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934333130313b),
('91988fcb2b83a84bde9b62dfaa1725999c40e8cc', '2a03:2880:f802:3::', 1745968368, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353936383336383b),
('92a5d09290a8437a8b2f7e6d7abe2d316eeca69f', '66.249.79.37', 1745990703, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939303730333b),
('934602287eb5cb3239e9b675208c90ebaaed92c6', '2001:4860:7:405::73', 1745853981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835333938313b),
('9368d3c80a1e8b3127028ba2b3087ec4c68635ef', '66.249.79.36', 1745841665, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834313636353b),
('93bbda5ea28c764dab02cefc9ba847c351b84fc9', '2409:40e0:c:9a8f:84fe:9a96:f946:6c75', 1745991747, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939313638313b),
('94155e388680b0875dc99e2a7d5bb97809cdf4bc', '66.249.79.36', 1745981752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938313735323b),
('945a51b920b8a2dc6b8a8af83dc235deea6958ef', '54.36.148.63', 1745912863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353931323836333b),
('94c4e9dfc036c8474182d18eba7cca9e1a801de2', '52.167.144.191', 1745893380, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353839333338303b),
('9627ebf74514f42728c0c40eb0c9dddf497ac6dc', '118.195.165.218', 1745841396, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834313339363b),
('97f96085c333cd38038c83d67246ef64c2507a23', '40.84.221.216', 1745980451, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938303435313b),
('98c4abc68d406344a79e7c73e7cb83354a5e4026', '54.36.148.226', 1745947931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934373933313b),
('98ffa76b2605ddf478115fe9fd05c469dba60932', '94.23.49.223', 1745884099, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353838343039393b),
('98ffacdd28e797b218337534b168d8d086ac1402', '66.249.79.37', 1745878717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353837383731373b),
('9911c73fda3bfa3531bc71fe6c404635a12e1941', '47.79.199.221', 1746008824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734363030383832343b),
('9a7820e5d5523eefca7a2ecce2e3ee2056b550c4', '54.36.148.54', 1745982651, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938323635313b),
('9c0b0bf8133345c206fa4994c7f55ff751bcdca5', '66.249.79.37', 1745841517, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834313531373b),
('9f1378cb5493acb02c33ce7570cd1515edd09806', '54.36.149.71', 1745917811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353931373831313b),
('9fd7ee214e3df68b45a339277d3c6d843478c67c', '54.36.148.212', 1745987265, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938373236353b),
('a00c1a6863c7a7309f1b4315d10fa6e25fe2bb75', '207.46.13.150', 1745910842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353931303834323b),
('a0470476e0131e15416f683be0ec94fa4b314a40', '66.249.66.6', 1745997123, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939373132333b),
('a090ce1ccf642ee50edc1b64733f5cfed1e21c1a', '66.249.79.37', 1745851860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835313836303b),
('a0d03e51a5b3df2c9031676a5f54c61007263d96', '54.36.148.168', 1745934039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933343033393b),
('a13abe0b1234782686d6c54e94972a44c030b572', '207.46.13.54', 1745993647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939333634373b),
('a2a7c293b283cbdbfef45e23c47badc32ed0d400', '52.167.144.183', 1745966886, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353936363838363b),
('a3665ab48c461c463bc858637ffef4a1da00a612', '40.77.167.33', 1745890450, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353839303435303b),
('a4134a42703b41ba5314fce72d7982f4ddf087ce', '66.249.79.32', 1745862658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836323635383b),
('a459e4fd72fb6d8c86f1114024255051fc3f7cce', '42.118.118.151', 1745928290, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353932383239303b),
('a506b31dcfc5d916f8c91105115630749d24d0f9', '66.249.79.36', 1745938781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933383738313b),
('a54eaf8835a686436340d33ec968aa57495a7641', '66.249.66.4', 1746011146, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734363031313134363b),
('a56f865f0a60fa4e208dbbd5c598292ff8677c8d', '66.249.79.37', 1745861038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836313033383b),
('a572ca4ce4afb5cf238941739b26df7f8dfc1aa2', '47.79.215.188', 1745959966, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353935393936363b),
('a5e1d1663453b9730bd82bd7d95575a5da5e7c46', '66.249.79.36', 1745975434, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353937353433343b),
('a6188787dedd783b825a69e886cf3d250f900e88', '66.249.79.36', 1745933234, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933333233343b),
('a6a17f8fdea4df37964210c6bfc28415fb19fc9c', '40.77.167.55', 1745999595, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939393539353b),
('a9bddd8290a40e89e1421f6c450ccf273b9788bd', '54.36.148.176', 1745974096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353937343039363b),
('aa085282d4937025423a6d2535ac2d41b2a5aec6', '47.79.213.70', 1745959480, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353935393438303b),
('aa7cce7cd434590c3825066d8da5b261105af97d', '52.167.144.203', 1745881294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353838313239343b),
('acb132a6af596955171b7a3e54a1082048917375', '66.249.79.37', 1745925901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353932353930313b),
('ae893c70e14d4d56bbfd48e68b66f180dbd96374', '66.249.79.37', 1745965642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353936353634323b),
('aecc60ce548e8901e9b75278ec41c3deff579dff', '54.244.219.233', 1746010793, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734363031303739333b),
('b0042543b26932ed8a1f23e3e73b671d460a7b55', '43.231.241.78', 1745901387, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930313331333b),
('b031b34fdd9961bf9638d261609516a4a46603c6', '54.36.148.15', 1745895376, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353839353337363b),
('b0cf114c57878df418949c9053f1eb6508f42c57', '66.249.79.32', 1745900657, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930303635373b),
('b0d4f29064d5f0496b09ee33564607918a85e563', '66.249.79.37', 1745947042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934373034323b),
('b17d06360f87d04f88d431c20f9bd54c5944c309', '47.128.96.20', 1745992505, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939323530353b),
('b1b9d73845be3b62c5c6eeb5a32775688d6507fe', '66.249.79.32', 1745841610, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834313631303b),
('b1f3fba5ba3b7e6538c744c127481247557d0fd0', '66.249.79.32', 1745854192, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835343139323b),
('b1f441ae1598c684b6346e3be5fb6a1d9f1e6599', '54.36.148.144', 1745909326, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930393332363b),
('b2c37929ec483a2df23761749068f317e0ef1c85', '66.249.79.37', 1745867094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836373039343b),
('b4c8bcffedc1f48ed647daf6b8248a9fe646ae29', '52.167.144.156', 1745869623, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836393632333b),
('b5777888a30f2362f8bc54a0ab93800b443c62bd', '66.249.79.36', 1745836686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353833363638363b),
('b5e137b3116104be8192f31114718152929c6dd7', '54.36.148.116', 1745938297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933383239373b),
('b6070fbac4b0e949dc87a061d2e1e4e36c044baf', '101.44.25.124', 1745862505, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836323530353b),
('b60c1a65fb45018938194709b94bf9b7cfc235bc', '66.249.79.36', 1745906062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930363036323b),
('b68741612f7c094bb706bb8c1aaea0c333c1cd37', '66.249.79.32', 1745841314, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834313331343b),
('b78950f6e65d3594fe9a1c505b1be8b12dddbee0', '2a03:2880:f802:5::', 1745841285, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834313238353b),
('b811a0b7314833cadf09d0903e59aa977b988516', '54.36.148.80', 1745998395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939383339353b),
('b84ec3ce6bd43404dcc5fcc42fb465dd4a10a823', '2409:40e0:2f:49b3:8000::', 1745896179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353839363137393b),
('b86606d4b093239dd7651bca009a65cc99a34d6e', '52.230.164.188', 1745997070, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939373037303b),
('b88a18cd68c5fdafeb29a78adce6898d128f1f89', '66.249.79.37', 1745917061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353931373036303b),
('b9449f995f33d9488d0cf697c1a5181d24105858', '66.249.79.36', 1745906128, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930363132383b),
('b9939403f0d6f0c5666d0e12e285fe76ab85c6a3', '54.36.148.238', 1745920658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353932303635383b),
('ba0d312e5b3de3bc5b69d524dd76648842236fe7', '2401:4900:1046:23d0:49f7:3e54:80cc:b670', 1745836039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353833363033393b),
('bc5ccfe8b1188699ffc791b1c91a0dcbf4209150', '54.174.140.70', 1745861806, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836313830363b),
('bceb9ab0efe14f3d7c1c14905830dc2bfa4dc249', '17.241.227.129', 1745959609, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353935393630393b),
('be14677725be747d127e04274915c7a4a7a9aa75', '66.249.79.36', 1745967963, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353936373936333b),
('befb22a7e7ec9e791142009db64d214679807c80', '2a03:2880:2ff::', 1745941022, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934313032323b),
('bf12d5acd1f1bf11aa0d0f2886d6eed4c5fde452', '54.36.148.202', 1745839351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353833393335313b),
('bf3afc2d5aa40a856390c2722ad3d34cf45d1014', '54.36.148.140', 1745858741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835383734313b),
('bf8a9323f0f1c47dfbab390f33edc7e1d53adf67', '72.14.199.164', 1745850386, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835303338363b),
('bf937c2a92cfeef48f45623112aa904f43978fbc', '66.249.79.37', 1745932016, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933323031363b),
('bfb11f3304d876af34cd7f74df142b899dbdc844', '52.167.144.185', 1745899289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353839393238393b),
('c06806fe2e119f0c307f5cd70a10fe9c327213ae', '213.180.203.111', 1745883310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353838333331303b),
('c0c5cdb4315b1e57a9058998199173ab98d52f63', '54.36.148.64', 1746010378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734363031303337383b),
('c1c629daff16d5d69b2f1a2947647e0c85d3f047', '66.249.79.32', 1745837896, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353833373839363b),
('c2a281c34c422f32438b2572c7dee78dd93a52d0', '54.36.148.223', 1745984266, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938343236363b),
('c2cbc4afcaee0fa6d9ffc98ac874cc6ca4557226', '66.249.92.6', 1745841996, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834313939363b),
('c32e459b4231e9bab9da9422ca210b64d3bec602', '66.249.79.36', 1745866884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836363838343b),
('c442996c3697bf6b4b3df14963a97888b7a64ffa', '17.241.75.146', 1745902185, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930323138353b),
('c48fb8076a6d0e810537d800257725787e30fbd3', '66.249.79.32', 1745856588, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835363538383b),
('c5da37822f50c1de3511b62ffe226d7998ab61fd', '66.249.79.37', 1745939613, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933393631333b),
('c63ede08797ecd41a65b79a62301785e9fe0b007', '54.36.148.29', 1745980263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938303236333b),
('c7207df1cbd69b352487eb4e9b992d26c5d52f11', '2a03:2880:f802:d::', 1745945768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934353736383b),
('c759099412445829fd3129611106c5c52aaba695', '66.249.79.36', 1745988498, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938383439383b),
('c83f6cb071bf1af6371c7b0f494e34e7a6755c26', '54.36.149.37', 1745867753, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836373735333b),
('ca27da921300fc45b37d49ca31b75852939e00d0', '2a03:2880:12ff:71::', 1745863740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836333734303b),
('cb5ab2452ab3a5fb3962f5bac32f12ab06ef3cfd', '54.36.148.66', 1745970274, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353937303237343b),
('cbbe80acc0e971bd7a0e420e9d2e187ed35e4b67', '66.249.79.37', 1745846599, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834363539393b),
('cbecbb084ffdc337489c8b4f816b30c8546bd742', '52.167.144.162', 1745904701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930343730313b),
('cda3a949fe258aa28c2524d846f59cd776dc0446', '192.175.111.233', 1745983315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938333331353b),
('ce75872eb135198e8d5e636989f970097b208be5', '157.55.39.201', 1745835591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353833353539313b),
('ced3c97187811b031d96dad2d298e8d92343a2ba', '2001:4860:7:805::da', 1745996956, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939363935363b),
('cf1cdb26482e4c1241cc80147e58498bfbd26530', '66.249.79.36', 1745909660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930393636303b),
('cf60d3fa94dde3bb9c11912e8dfa0a705933aec5', '152.58.176.218', 1745837075, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353833373037353b),
('cf8970880a399470a968ffad5503a3494842590e', '2a03:2880:f802:7::', 1745940455, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934303435353b),
('d1d815d9949af791d89de90933d32224bcfa71df', '2a03:2880:f802:3::', 1745852826, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835323832363b),
('d2005e88ac8fbe9afcb88fc1428f6d63d8fca9b8', '66.249.79.37', 1745997579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939373537393b),
('d314529fae0de8476e784000220556a2e4354526', '2409:40e0:f4:5af8:1da6:e499:cac:eb23', 1745991681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939313638313b),
('d32fe3c8313817f30cb5f84eddc2c6ec931e2431', '54.36.148.150', 1746001649, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734363030313634393b),
('d5048985835500d9391b1afa8de74c888289ba93', '54.36.148.149', 1745865963, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836353936333b),
('d58817778028c01b9a88f1b7644f31de9bb2bf99', '2a03:2880:12ff:8::', 1745863738, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836333733383b),
('d660c998a755660e5f4a19e9ed8787cf2ba0a634', '54.36.149.73', 1745925027, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353932353032373b),
('d6972f32aa54ea354330ca4d7964c169e9f382a0', '66.249.79.36', 1745917076, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353931373037363b),
('d6a90885760dfa4377c8b473ece8b92f0654ebfc', '54.36.148.225', 1745951507, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353935313530373b),
('d6bc8ae3cb45c25321a9eb6462a66f71fc5b42ee', '66.249.79.36', 1745947048, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934373034383b),
('d6efb47b3266d8934c35310fce682316ec220b0e', '192.175.111.254', 1745983321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938333332313b),
('d71e87eddc3286bd47315e8134fa8cfe34b88dd9', '40.77.167.78', 1745876014, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353837363031343b),
('d72f634abbc17e0fbd8e2fcf9ad798681ed01cda', '66.249.79.32', 1745909647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930393634373b),
('d77df287a853b53c875bf705aa09540d30ee2bfc', '54.36.148.129', 1745923469, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353932333436393b);
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('d78145002fa46ab27b9e7e0257384d243bf9f92c', '2402:3a80:1cd7:1440:b20:51f0:bf7a:3d73', 1745946511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934363531313b),
('d88a04d7eb9a521bb52d3da7198c3550499f61fc', '66.249.79.32', 1745947528, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353934373532383b),
('d8c780375d77a6aed7b16e0c4231544c2276393f', '66.249.79.37', 1745997685, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353939373638353b),
('d91038aa26c0458604615c3ddb0342f50facc1f1', '66.249.79.36', 1745968377, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353936383337373b),
('d9675cd8f97cfbef9bb36cf805f7d0a0871f72bf', '2409:40e0:101f:bb29:543a:34ff:fea7:52f1', 1745861208, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836313230383b),
('db5939d1ffaf928696c55abbb28f5828bc049972', '66.249.79.32', 1746001389, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734363030313338393b),
('dc751d92e1159c130c87f57b4ff65aa6abd04bc5', '54.36.149.17', 1745852845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835323834353b),
('dde93ddcb9c38495ef678fae2cef50e99c6be88a', '54.36.148.54', 1745897538, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353839373533383b),
('de0f1ef3a9ad6171795d12bc3aaaed5757153eec', '103.119.241.170', 1745900206, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930303230363b),
('de3e2ba82d94601b99dc67509534a3e7432e8049', '52.167.144.171', 1745835971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353833353937313b),
('dea5ff469219e1f2c67c0678dc81399b2ac0c85f', '52.167.144.157', 1745900584, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930303538343b),
('deab9ab6c108f2c0588e64e4c3c5ac58d3a9134a', '40.77.167.23', 1745922939, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353932323933393b),
('df78f6638d3d37972cf3f3f443a82b8d0b048053', '66.249.79.32', 1745956893, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353935363839333b),
('e02b7799711f189dbe709c66e4e52d54815012fa', '66.249.79.36', 1745879554, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353837393535343b),
('e02e100dba4f97295f73067c46f5be00553a280e', '66.249.79.37', 1745971752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353937313735323b),
('e221902faa71235744fb3b7169a183015df533e4', '66.249.79.32', 1745866448, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836363434383b),
('e322d62362d87600dca14612c22bab172f955ac1', '40.77.167.254', 1745887033, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353838373033333b),
('e362484190b2b043b3423808ea73f0e4812018f1', '54.36.149.92', 1745850106, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835303130363b),
('e4c520533328a8bf0eb64a2960ad556b5447a516', '66.249.79.32', 1745866647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836363634373b),
('e53cadd7ffec1055d049f0efc8e496644730f2fe', '66.249.79.36', 1745956523, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353935363532333b),
('e5a7f3cd87b5ecf359e658d393e8f8aed3637164', '66.249.79.37', 1745908884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930383838343b),
('e5a838fc7ecdb65915cff0c8dde25cc17c1546ee', '54.36.148.10', 1745834292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353833343239323b),
('e5d4d33ba9834bf12d4895fbac55158e18a3ab08', '54.36.149.82', 1745930153, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933303135333b),
('e69352092af7c4779d48cf13692fe3dfb2bcbab1', '2409:40e0:10b:c64a:3b:5400:42a6:44ed', 1745861460, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836313436303b),
('e76401ada15e7430e31b21b27c503530cb32b06d', '64.233.173.233', 1745987853, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938373835333b),
('e7afa9515a9644a2c007070f555c5d31181b78c3', '207.46.13.153', 1745876858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353837363835383b),
('e7f126aa0d0bbf33acce6316f94a3d2f54864f6f', '17.241.75.181', 1745954995, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353935343939353b),
('e896dcb31d9f24c45a8c271d489eb2c99571d428', '66.249.79.36', 1745866455, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836363435353b),
('e8a31781e6c67e3c8a0a8b13474ed5acbe9156e8', '54.36.149.78', 1745847148, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834373134383b),
('e8b1309807a2ace6fa8c896568eb36f6f3aa2af3', '2409:40e0:10b:c64a:3b:5400:42a6:44ed', 1745861156, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836313135363b6d73677c613a323a7b733a313a2274223b733a373a227761726e696e67223b733a343a226d657373223b733a31393a22496e636f72726563742050617373776f72642e223b7d5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('e8f4afe1dba6e770ac5da2409c54d163efc8eadd', '54.36.149.86', 1745864245, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836343234353b),
('e90aefe02571a1def631284b9012d8c32cdfc280', '52.167.144.209', 1745857504, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835373530343b),
('e91b5a6a1165bacbbd2eb9acdee21749880aba3f', '66.249.79.32', 1745936754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933363735343b),
('e93562e7bdd35a94a552a91db7d0a8020217d00a', '34.13.145.130', 1745973343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353937333334333b),
('ec4b3ff48c88482fb38179b3954a201a8cc17ca9', '54.36.148.171', 1745854947, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835343934373b),
('ed2666e5cbe262999ed5e79799beb658d6cfb3d9', '194.145.227.125', 1745899218, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353839393231383b),
('ed55b0d70fd0758d0da467558da1f231b542dd99', '66.249.88.226', 1745907757, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930373735373b),
('ed5ac4fdc52037b1a07d69c1f4ef0cfe149148b8', '40.77.167.55', 1745916419, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353931363431393b),
('efae38ea263833f0570fccddd12f5e3842b48d56', '66.249.79.32', 1745924039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353932343033393b),
('f04ce742422990cb4296cca89ae577fa717584a3', '66.249.79.37', 1745983928, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938333932383b),
('f09c2bd513533f87616f8077cfa102cc5a98c21a', '17.241.227.156', 1745891037, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353839313033373b),
('f243e9671a27156d28103e6afa976b45329e553c', '3.15.147.225', 1745906563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930363536333b),
('f267ed67bc323103a782fc49632be6626da07fc5', '54.36.149.71', 1745891302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353839313330323b),
('f2ca8316948d8697ac69158731fd52985077d496', '54.36.148.149', 1746007361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734363030373336313b),
('f2e0fe3d01ff55b7347c27cd9705461a6a32b372', '47.79.197.48', 1745982422, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353938323432323b),
('f34474bf5a133116dae31bace63cbd499e3949c1', '40.77.167.37', 1745934795, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353933343739353b),
('f4145f13a2511ffcba171106ccd0833e4a0a4f0a', '54.36.149.94', 1745978991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353937383939313b),
('f54b25cb5c3b6c0c257c4c117c28be091fe90830', '2a02:4780:11:c0de::21', 1745898721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353839383732313b),
('f5b381efaffc7caf26cf4c05e19df3f361ec4943', '66.249.79.37', 1745855653, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353835353635333b),
('f83962ef89281d134a3872971cb066782631f286', '66.249.79.36', 1745841739, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353834313733393b),
('f89c97ebcd728c2c655071ef1385a0cf321db9bd', '18.189.195.48', 1745909507, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353930393530373b),
('f917b5f1d9043f084ef070afa332358e809bcb58', '66.249.79.36', 1745917057, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353931373035373b),
('fb7853ce4bec0f918ba9056a6967a4243705f6d6', '47.128.22.152', 1745887617, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353838373631373b),
('fc0070192a5a3fc51fea46fd065b0edd8d1655f3', '66.249.79.37', 1745862853, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836323835333b),
('fc09cbbe8b6accd2cc40776393dcd0e544134bf0', '66.249.79.36', 1745866562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836363536323b),
('fd1ea7d20c34138a5183cc29eda9c334678d1055', '47.79.212.202', 1746011923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734363031313932333b),
('fed22139f69c493638ca6584f0d7bd019c8780fe', '66.249.79.36', 1745835992, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353833353939323b),
('ffd0ab62ceae9d39115af31e99dd1b0bc4ce2bae', '52.167.144.186', 1745860730, 0x5f5f63695f6c6173745f726567656e65726174657c693a313734353836303733303b);

-- --------------------------------------------------------

--
-- Table structure for table `company_details`
--

CREATE TABLE `company_details` (
  `cd_id` int(11) NOT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `abbr_name` varchar(30) DEFAULT NULL,
  `address1` text DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `contact_num` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `payment_details` text DEFAULT NULL,
  `ac_holder` varchar(100) DEFAULT NULL,
  `ac_number` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `mail_header` longtext DEFAULT NULL,
  `mail_footer` mediumtext DEFAULT NULL,
  `mail_hostname` varchar(50) DEFAULT NULL,
  `mail_password` varchar(100) DEFAULT NULL,
  `mail_username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `company_details`
--

INSERT INTO `company_details` (`cd_id`, `company_name`, `abbr_name`, `address1`, `address2`, `contact_num`, `email`, `state`, `payment_details`, `ac_holder`, `ac_number`, `bank_name`, `ifsc_code`, `mail_header`, `mail_footer`, `mail_hostname`, `mail_password`, `mail_username`) VALUES
(1, 'WBJRS Academic Foundation', 'WBJRS', 'Puspa Apartment 2, Chakraborty Para, Nona Chandanpukur, ', 'Barrackpore, Kolkata - 122', '+033 79609224\n/+91 90076 07002', 'support@wbjrsfoundation.org', 19, NULL, NULL, NULL, NULL, NULL, '<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n          <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n          <meta name=\"viewport\" content=\"width=320, initial-scale=1\" />\r\n          <title>WBJRS</title>\r\n          <style type=\"text/css\" media=\"screen\">\r\n\r\n/* ----- Client Fixes ----- */\r\n\r\n            /* Force Outlook to provide a \"view in browser\" message */\r\n            #outlook a {\r\n              padding: 0;\r\n            }\r\n\r\n            /* Force Hotmail to display emails at full width */\r\n            .ReadMsgBody {\r\n              width: 100%;\r\n            }\r\n\r\n            .ExternalClass {\r\n              width: 100%;\r\n            }\r\n\r\n            /* Force Hotmail to display normal line spacing */\r\n            .ExternalClass,\r\n            .ExternalClass p,\r\n            .ExternalClass span,\r\n            .ExternalClass font,\r\n            .ExternalClass td,\r\n            .ExternalClass div {\r\n              line-height: 100%;\r\n            }\r\n\r\n\r\n             /* Prevent WebKit and Windows mobile changing default text sizes */\r\n            body, table, td, p, a, li, blockquote {\r\n              -webkit-text-size-adjust: 100%;\r\n              -ms-text-size-adjust: 100%;\r\n            }\r\n\r\n            /* Remove spacing between tables in Outlook 2007 and up */\r\n            table, td {\r\n              mso-table-lspace: 0pt;\r\n              mso-table-rspace: 0pt;\r\n            }\r\n\r\n            /* Allow smoother rendering of resized image in Internet Explorer */\r\n            img {\r\n              -ms-interpolation-mode: bicubic;\r\n            }\r\n\r\n             /* ----- Reset ----- */\r\n\r\n            html,\r\n            body,\r\n            .body-wrap,\r\n            .body-wrap-cell {\r\n              margin: 0;\r\n              padding: 0;\r\n              background: #ffffff;\r\n              font-family: Arial, Helvetica, sans-serif;\r\n              font-size: 16px;\r\n              color: #89898D;\r\n              text-align: left;\r\n            }\r\n\r\n            img {\r\n              border: 0;\r\n              line-height: 100%;\r\n              outline: none;\r\n              text-decoration: none;\r\n            }\r\n            h1, h2 {\r\n              line-height: 1.1;\r\n              text-align: right;\r\n            }\r\n\r\n            h1 {\r\n              margin-top: 0;\r\n              margin-bottom: 10px;\r\n              font-size: 24px;\r\n            }\r\n\r\n            h2 {\r\n              margin-top: 0;\r\n              margin-bottom: 60px;\r\n              font-weight: normal;\r\n              font-size: 17px;\r\n            }\r\n\r\n\r\n            .col-1 {\r\n              border-right: 1px solid #D9DADA;\r\n              width: 180px;\r\n            }\r\n            img.hide-for-desktop-image {\r\n              font-size: 0 !important;\r\n              line-height: 0 !important;\r\n              width: 0 !important;\r\n              height: 0 !important;\r\n              display: none !important;\r\n            }\r\n\r\n            .body-cell {\r\n              background-color: #ffffff;\r\n              padding-top: 20px;\r\n              vertical-align: top;\r\n            }\r\n\r\n            .body-cell-left-pad {\r\n\r\n            }\r\n            </style>\r\n\r\n          <style type=\"text/css\" media=\"only screen and (max-width: 650px)\">\r\n            @media only screen and (max-width: 650px) {\r\n                .wrapper{ width:90% !important;}\r\n            }\r\n\r\n\r\n          </style>\r\n        </head>\r\n        <body class=\"body\" style=\"padding:0; margin:0; display:block; background:#fff; -webkit-text-size-adjust:none\" bgcolor=\"#ffffff\">\r\n        <div class=\"wrapper\" style=\"width:650px; margin:0 auto\">', '<br><br>\r\nThank you <br>\r\n<b>WBJRS Academic Foundation</b><br>\r\n<b>Address : </b> Puspa Apartment 2, Chakraborty Para, Nona Chandanpukur, \r\nBarrackpore, Kolkata - 122 <br>\r\n<b>Contact Number : </b>+033 79609224\r\n/+91 90076 07002<br>\r\n<b>Email Id :</b>support@wbjrsfoundation.org<br>\r\n<b>Website : </b>www.wbjrsfoundation.org', 'mail.wbjrsfoundation.org', 'wbjrs@007', 'support@wbjrsfoundation.org');

-- --------------------------------------------------------

--
-- Table structure for table `conversion_system`
--

CREATE TABLE `conversion_system` (
  `cs_id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` enum('Employee','Customer') NOT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `ref_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `c_id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `subcat_id` int(11) DEFAULT NULL,
  `course_name` varchar(100) DEFAULT NULL,
  `search_name` varchar(150) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `fees` double DEFAULT NULL,
  `eligibility` varchar(100) DEFAULT NULL,
  `overview` text DEFAULT NULL,
  `curriculam` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `rating` int(11) NOT NULL DEFAULT 1,
  `lessons` varchar(50) DEFAULT NULL,
  `topics` varchar(50) DEFAULT NULL,
  `skill_level` varchar(50) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`c_id`, `cat_id`, `subcat_id`, `course_name`, `search_name`, `duration`, `fees`, `eligibility`, `overview`, `curriculam`, `image`, `status`, `rating`, `lessons`, `topics`, `skill_level`, `language`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 1, 6, 'Certificate in Digital Marketing Basics : Learn Website, SEO, Social Media & Digital Strategy', 'certificateindigitalmarketingbasicslearnwebsiteseosocialmediadigitalstrategy', '04 Months', 25000, 'Higher Secondary', '<p>The Certificate in Digital Marketing Basics is a 4-month career-focused training program designed for students, entrepreneurs, and professionals looking to gain expertise in SEO, social media marketing, and digital growth strategies.</p>\r\n\r\n<p>This course provides hands-on learning in the latest digital marketing techniques, helping you run successful campaigns, grow online presence, and increase brand visibility.</p>\r\n\r\n<h2><strong>Key Highlights :</strong></h2>\r\n\r\n<p>✔️ Covers SEO, social media marketing, and digital strategy<br />\r\n✔️ Practical training with real-world projects<br />\r\n✔️ Taught in English, Hindi, and Bengali<br />\r\n✔️ Suitable for students, business owners &amp; job seekers</p>\r\n\r\n<h2><strong>Why to Join this Digital Marketing Course :</strong></h2>\r\n\r\n<p>✅ Industry-relevant curriculum taught by experts<br />\r\n✅ Practical training with real projects &amp; case studies<br />\r\n✅ Flexible learning options &ndash; Online &amp; Offline classes<br />\r\n✅ Certification on completion to boost career opportunities<br />\r\n✅ Global internships with Straxcel Business Solutions</p>\r\n', '<p><strong>Introduction to Digital Marketing</strong></p>\r\n\r\n<p>● Overview of Digital Marketing</p>\r\n\r\n<p>● Characteristics of a Digital Marketing Specialist</p>\r\n\r\n<p>● Key Concepts and Terminologies</p>\r\n\r\n<p>● Validating Business Ideas</p>\r\n\r\n<p>● Understanding Your Audience (Buyer Personas, Customer Journey)</p>\r\n\r\n<p>● Competitor Analysis</p>\r\n\r\n<p>● Digital Marketing Career Opportunities</p>\r\n\r\n<p><strong>Website Planning and Development</strong></p>\r\n\r\n<p>● Why Website Must in Digital Marketing</p>\r\n\r\n<p>● Introduction to Content Management Systems (CMS)</p>\r\n\r\n<p>● Power of WordPress</p>\r\n\r\n<p>● Difference Between WordPress.com &amp; WordPress.org</p>\r\n\r\n<p>● Important Terminologies</p>\r\n\r\n<p>● Connecting &amp; Setting Domain-Hosting</p>\r\n\r\n<p>● Integrating SSL Certificate</p>\r\n\r\n<p>● Installing WordPress on Your Hosting Server</p>\r\n\r\n<p>● Website Security Optimization</p>\r\n\r\n<p>● Landing Page Designing Strategies</p>\r\n\r\n<p>● Header &amp; Footer, PopUp, ChatBot Integration</p>\r\n\r\n<p>● Website Speed Optimization</p>\r\n\r\n<p>● Ecommerce Website Designing Overview</p>\r\n\r\n<p><strong>Content Marketing + Graphic Designing</strong></p>\r\n\r\n<p>● Graphic Designing Fundamentals</p>\r\n\r\n<p>● How to Create Corporate Creatives</p>\r\n\r\n<p>● Content Research Strategies</p>\r\n\r\n<p>● Creating Content Calendar</p>\r\n\r\n<p>● Graphic Designing Demo (Post, Videos, Infographics etc)</p>\r\n\r\n<p><strong>Search Engine Optimization (SEO)</strong></p>\r\n\r\n<p>● How Search Engines (Google, Bing) Work</p>\r\n\r\n<p>● SEO Fundamentals &amp; Ranking Factors</p>\r\n\r\n<p>● Different Types of SEO</p>\r\n\r\n<p>● On-Page, Off-Page, Technical SEO Strategies</p>\r\n\r\n<p>● Google Analytics &amp; Google Search Console Overview</p>\r\n\r\n<p>● Keyword Research and Optimization Strategy</p>\r\n\r\n<p>● Backlink Building Strategies</p>\r\n\r\n<p>● Local SEO Optimization</p>\r\n\r\n<p>● Guest Posting</p>\r\n\r\n<p>● How to Get a Backlink from Wikipedia</p>\r\n\r\n<p>● Google Algorithm Updates</p>\r\n\r\n<p>● GA &amp; GSC Certification</p>\r\n\r\n<p><strong>Search Engine Marketing / PPC</strong></p>\r\n\r\n<p>● Introduction to Search Engine Marketing</p>\r\n\r\n<p>● Difference Between SEM &amp; SEO</p>\r\n\r\n<p>● Google Ads - Different Types, Strategies</p>\r\n\r\n<p>● Keyword Match Types - Research &amp; Development</p>\r\n\r\n<p>● Ad Campaign Strategy and Management</p>\r\n\r\n<p><strong>Social Media Marketing / SMM</strong></p>\r\n\r\n<p>● Social Media Platforms Overview</p>\r\n\r\n<p>● Organic Marketing vs. Paid Marketing</p>\r\n\r\n<p>● Social Media Optimization</p>\r\n\r\n<p>● Meta Advertising - What, Why &amp; How</p>\r\n\r\n<p>● Pixel &amp; Conversion API Setup</p>\r\n\r\n<p>● Meta Business Manager Optimization</p>\r\n\r\n<p>● Domain Verification, Events Setup</p>\r\n\r\n<p>● Meta Remarketing, Lookalike Targeting</p>\r\n\r\n<p>● Lead Generation Strategies</p>\r\n\r\n<p>● Content Posting - Hashtags, Captions, Tags etc.</p>\r\n\r\n<p>● LinkedIn Marketing - Organic &amp; Paid</p>\r\n\r\n<p>● Pinterest Marketing - Organic &amp; Paid</p>\r\n\r\n<p><strong>Email Marketing</strong></p>\r\n\r\n<p>● Building an Email List</p>\r\n\r\n<p>● Email Marketing Tools and Platforms</p>\r\n\r\n<p>● GMass Tutorial</p>\r\n\r\n<p>● Email ID Validations</p>\r\n\r\n<p>● Analyzing Email Marketing Metrics</p>\r\n\r\n<p><strong>Conversion Rate Optimization</strong></p>\r\n\r\n<p>● Understanding CRO</p>\r\n\r\n<p>● User Behavior Analysis</p>\r\n\r\n<p>● Landing Page Optimization</p>\r\n\r\n<p>● Importance of Branding - Tools &amp; Resources</p>\r\n\r\n<p><strong>Blogging &amp; Affiliate Marketing</strong></p>\r\n\r\n<p>● WordPress Blogging - Tools &amp; Tips</p>\r\n\r\n<p>● Blog Marketing Strategies</p>\r\n\r\n<p>● Google Adsense Integration</p>\r\n\r\n<p>● Introduction to Affiliate Marketing</p>\r\n\r\n<p>● Setting Up an Affiliate Program</p>\r\n\r\n<p>● Best Affiliate Marketing Programs</p>\r\n\r\n<p><strong>Freelancing</strong></p>\r\n\r\n<p>● Freelancing Career - Tools &amp; Resources</p>\r\n\r\n<p>● Client Acquisition Strategies</p>\r\n\r\n<p>● Drafting Business Proposals</p>\r\n\r\n<p><strong>Capstone Project</strong></p>\r\n\r\n<p>● Developing a Digital Marketing Strategy</p>\r\n\r\n<p>● Real-World Case Studies</p>\r\n\r\n<p>● Group Presentations and Feedback</p>\r\n\r\n<p>● Final Exam and Certification by WBJRS</p>\r\n', 'C1720509622.png', 'Active', 1, 'Basics of Digital Marketing', 'Introduction, Social Media Marketing, SEO,', 'English Proficiency', 'English, Hindi, Bengali', 'Certificate in Digital Marketing Basics : 4-Months Digital Marketing Course in Kolkata', 'Digital Marketing Course in Kolkata', 'Enroll in the Certificate in Digital Marketing Basics at WBJRS. A 4-month practical training program covering SEO, social media marketing, and digital strategies. Learn in English, Hindi & Bengali. Perfect for beginners & professionals!'),
(2, 1, 6, 'Diploma in Digital Marketing Advanced Level : Master SEO, PPC & Digital Growth Strategies', 'diplomaindigitalmarketingadvancedlevelmasterseoppcdigitalgrowthstrategies', '06 Months', 40000, 'Higher Secondary', '<p>The Diploma in Digital Marketing Advanced Level is a 6-month expert-led training program designed for students, professionals, and entrepreneurs looking to master digital marketing strategies, advanced SEO, and paid advertising techniques. This course provides hands-on training to help you run successful campaigns, optimize online presence, and drive business growth.</p>\r\n\r\n<p>✔️ Covers SEO, PPC, content marketing, and lead generation<br />\r\n✔️ Practical training with real-world projects<br />\r\n✔️ Global internships with Straxcel Business Solutions<br />\r\n✔️ Suitable for students, business owners &amp; working professionals</p>\r\n', '<p>✅<strong> Introduction to Digital Marketing</strong></p>\r\n\r\n<p>● Overview of Digital Marketing</p>\r\n\r\n<p>● Characteristics of MarketPreneur</p>\r\n\r\n<p>● Important Terminologies</p>\r\n\r\n<p>● Validating Business Ideas</p>\r\n\r\n<p>● Understanding Audience Analysis (Buyer Personas, Customer Journey)</p>\r\n\r\n<p>● Competitor Analysis</p>\r\n\r\n<p>● Digital Marketing Career Opportunities</p>\r\n\r\n<p>✅<strong> Website Planning and Development</strong></p>\r\n\r\n<p>● Why Website Must in Digital Marketing</p>\r\n\r\n<p>● Introduction to Content Management Systems (CMS)</p>\r\n\r\n<p>● Power of WordPress</p>\r\n\r\n<p>● Difference Between WordPress.com &amp; WordPress.org</p>\r\n\r\n<p>● Important Terminologies</p>\r\n\r\n<p>● Connecting &amp; Setting Domain-Hosting</p>\r\n\r\n<p>● Integrating SSL Certificate</p>\r\n\r\n<p>● Installing WordPress on Your Hosting Server</p>\r\n\r\n<p>● Website Security Optimization</p>\r\n\r\n<p>● Landing Page Designing Strategies</p>\r\n\r\n<p>● Header &amp; Footer, PopUp, ChatBot Integration</p>\r\n\r\n<p>● Website Speed Optimization</p>\r\n\r\n<p>✅ <strong>Ecommerce Website Development</strong></p>\r\n\r\n<p>● Introduction to Ecommerce</p>\r\n\r\n<p>● WooCommerce Integration</p>\r\n\r\n<p>● Creating Simple Products, Variable Products, Bookable Products</p>\r\n\r\n<p>● Product Filters, Categories</p>\r\n\r\n<p>● Integrating Payment Gateway</p>\r\n\r\n<p>● Product SEO Optimization</p>\r\n\r\n<p>● DropShipping Business Model</p>\r\n\r\n<p>✅<strong> Content Marketing + Graphic Designing</strong></p>\r\n\r\n<p>● Graphic Designing Fundamentals</p>\r\n\r\n<p>● How to Create Corporate Creatives</p>\r\n\r\n<p>● Content Research Strategies</p>\r\n\r\n<p>● Creating Content Calendar</p>\r\n\r\n<p>● Graphic Designing Demo (Post, Videos, Infographics etc)</p>\r\n\r\n<p>✅<strong> Search Engine Optimization (SEO)</strong></p>\r\n\r\n<p>● How Search Engines (Google, Bing) Work</p>\r\n\r\n<p>● SEO Fundamentals &amp; Ranking Factors</p>\r\n\r\n<p>● Different Types of SEO</p>\r\n\r\n<p>● On-Page, Off-Page, Technical SEO Strategies</p>\r\n\r\n<p>● Google Analytics &amp; Google Search Console Overview</p>\r\n\r\n<p>● Keyword Research and Optimization Strategy</p>\r\n\r\n<p>● Backlink Building Strategies</p>\r\n\r\n<p>● Local SEO Optimization</p>\r\n\r\n<p>● Guest Posting</p>\r\n\r\n<p>● How to Get a Backlink from Wikipedia</p>\r\n\r\n<p>● Google Algorithm Updates</p>\r\n\r\n<p>● GA &amp; GSC Certification</p>\r\n\r\n<p>✅<strong> Search Engine Marketing / PPC</strong></p>\r\n\r\n<p>● Introduction to Search Engine Marketing</p>\r\n\r\n<p>● Difference Between SEM &amp; SEO</p>\r\n\r\n<p>● Google Ads - Different Types, Strategies</p>\r\n\r\n<p>● Keyword Match Types - Research &amp; Development</p>\r\n\r\n<p>● Ad Campaign Strategy and Management</p>\r\n\r\n<p>✅<strong> Social Media Marketing / SMM</strong></p>\r\n\r\n<p>● Social Media Platforms Overview</p>\r\n\r\n<p>● Organic Marketing vs. Paid Marketing</p>\r\n\r\n<p>● Social Media Optimization</p>\r\n\r\n<p>● Meta Advertising - What, Why &amp; How</p>\r\n\r\n<p>● Pixel &amp; Conversion API Setup</p>\r\n\r\n<p>● Meta Business Manager Optimization</p>\r\n\r\n<p>● Domain Verification, Events Setup</p>\r\n\r\n<p>● Meta Remarketing, Lookalike Targeting</p>\r\n\r\n<p>● Lead Generation Strategies</p>\r\n\r\n<p>● Content Posting - Hashtags, Captions, Tags etc.</p>\r\n\r\n<p>● LinkedIn Marketing - Organic &amp; Paid</p>\r\n\r\n<p>● Pinterest Marketing - Organic &amp; Paid</p>\r\n\r\n<p>✅<strong> Email Marketing</strong></p>\r\n\r\n<p>● Building an Email List</p>\r\n\r\n<p>● Email Marketing Tools and Platforms</p>\r\n\r\n<p>● GMass Tutorial</p>\r\n\r\n<p>● Email ID Validations</p>\r\n\r\n<p>● Analyzing Email Marketing Metrics</p>\r\n\r\n<p>✅<strong> Conversion Rate Optimization</strong></p>\r\n\r\n<p>● Understanding CRO</p>\r\n\r\n<p>● User Behavior Analysis</p>\r\n\r\n<p>● Landing Page Optimization</p>\r\n\r\n<p>● Importance of Branding - Tools &amp; Resources</p>\r\n\r\n<p>✅ <strong>Blogging &amp; Affiliate Marketing</strong></p>\r\n\r\n<p>● WordPress Blogging - Tools &amp; Tips</p>\r\n\r\n<p>● Blog Marketing Strategies</p>\r\n\r\n<p>● Google Adsense Integration</p>\r\n\r\n<p>● Introduction to Affiliate Marketing</p>\r\n\r\n<p>● Setting Up an Affiliate Program</p>\r\n\r\n<p>● Best Affiliate Marketing Programs</p>\r\n\r\n<p>✅<strong> Digital Marketing Trends</strong></p>\r\n\r\n<p>● AI in Digital Marketing</p>\r\n\r\n<p>● Voice Search Optimization</p>\r\n\r\n<p>● Mobile Marketing</p>\r\n\r\n<p>✅<strong> Freelancing</strong></p>\r\n\r\n<p>● Freelancing Career - Tools &amp; Resources</p>\r\n\r\n<p>● Client Acquisition Strategies</p>\r\n\r\n<p>● Drafting Business Proposals</p>\r\n\r\n<p>✅<strong> Capstone Project</strong></p>\r\n\r\n<p>● Developing a Digital Marketing Strategy</p>\r\n\r\n<p>● Real-World Case Studies</p>\r\n\r\n<p>● Group Presentations and Feedback</p>\r\n\r\n<p>● Final Exam and Certification by WBJR</p>\r\n', 'C1720337036.png', 'Active', 1, 'Advanced Level of Digital Marketing', 'Introduction, Social Media Marketing, SEO, Web Sit', 'Excellent', 'English, Hindi, Bengali', 'Diploma in Digital Marketing Advanced Level : 8 Months Professional Training', 'Diploma in Digital Marketing Advanced Level', 'Enroll in the Diploma in Digital Marketing Advanced Level at WBJRS. A 8-months professional course covering SEO, PPC, content marketing, and advanced digital strategies. Includes global internships with Straxcel Business Solutions.'),
(3, 2, 16, 'Certificate in Telephone Operator and Receptionist : Learn Professional Communication & Front Desk S', 'certificateintelephoneoperatorandreceptionistlearnprofessionalcommunicationfrontdesks', '03 Months', 7500, 'Higher Secondary', '<p>The Certificate in Telephone Operator and Receptionist Training is a 3-month career-focused program designed for students, job seekers, and professionals who want to develop call handling, front desk management, and customer service skills.</p>\r\n\r\n<p>This course provides hands-on training in professional communication, office etiquette, and workplace management, ensuring you are job-ready for receptionist and telephone operator roles in corporate offices, hospitals, hotels, and service industries.</p>\r\n\r\n<p>✔️ Covers call handling, front desk operations, and customer service<br />\r\n✔️ Practical training with real-world scenarios<br />\r\n✔️ Industry-focused curriculum designed for job readiness<br />\r\n✔️ Suitable for students, freshers &amp; working professionals</p>\r\n\r\n<h3><strong>Why Choose WBJRS?</strong></h3>\r\n\r\n<p>✔️ <strong>Industry-relevant curriculum</strong> taught by communication experts<br />\r\n✔️ <strong>Practical training</strong> with real-world scenarios &amp; case studies<br />\r\n✔️ <strong>Flexible learning options</strong> &ndash; Study at your own pace<br />\r\n✔️ <strong>Certification on completion</strong> to boost career opportunities<br />\r\n✔️ <strong>Job-ready training</strong> for careers in offices, hospitals, hotels &amp; service industries</p>\r\n', '<p><strong>Telephone Operator:</strong></p>\r\n\r\n<p>A telephone operator is primarily responsible for handling incoming and outgoing phone calls within an organization. Their duties may include:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Answering Calls:</strong> Operators are tasked with promptly and professionally answering incoming calls, often using a standardized greeting. They may also handle internal calls between different departments or individuals within the organization.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Routing Calls:</strong> Operators direct calls to the appropriate person or department within the organization. This may involve transferring calls, taking messages, or providing information to callers.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Assisting Callers:</strong> Operators may provide basic information to callers, such as business hours, directions, or general inquiries about the organization&#39;s products or services.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Managing Phone Systems:</strong> In larger organizations or call centers, operators may be responsible for managing complex phone systems, including setting up conference calls, monitoring call volumes, and troubleshooting technical issues.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Maintaining Call Logs:</strong> Operators often keep records of incoming and outgoing calls, including details such as caller information, call duration, and the purpose of the call.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>Receptionist:</strong></p>\r\n\r\n<p>A receptionist serves as the frontline representative of an organization, often stationed at the reception desk or lobby area. Their duties typically include:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Greeting Visitors:</strong> Receptionists welcome visitors, clients, and employees as they arrive at the organization. They may also issue visitor badges and notify appropriate personnel of guest arrivals.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Answering Inquiries:</strong> Receptionists handle inquiries from visitors and callers, providing information about the organization, its services, and its personnel. They may also assist with general inquiries via phone, email, or in-person.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Scheduling Appointments:</strong> Receptionists schedule appointments and meetings for employees, clients, or visitors. This may involve coordinating calendars, booking conference rooms, and sending meeting reminders.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Administrative Support:</strong> In addition to their reception duties, receptionists often provide administrative support to other departments. This may include sorting mail, managing office supplies, and assisting with basic clerical tasks.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Maintaining the Reception Area:</strong> Receptionists ensure that the reception area is clean, organized, and welcoming to visitors. They may also be responsible for managing incoming and outgoing deliveries and packages.</p>\r\n	</li>\r\n</ol>\r\n', 'C1730115162.png', 'Active', 1, 'Telephone Operator & Receptionist', 'Introduction,  Basics of Operator & Receptionist', 'Excellent', 'English, Hindi, Bengali', 'Certificate in Telephone Operator and Receptionist Training : 3-Month Professional Course', 'Certificate in telephone operator and receptionist training, Job-oriented course for front desk management, Receptionist course with customer service training', 'Enroll in the Certificate in Telephone Operator and Receptionist Training at WBJRS. A 3-month job-oriented course covering professional communication, call handling, front desk management, and customer service skills. Learn in English, Hindi & Bengali.'),
(4, 2, 16, 'Certificate in Advanced Back-Office Management : MS Office with AI & ChatGPT Automation', 'certificateinadvancedback-officemanagementmsofficewithaichatgptautomation', '06 Months', 12000, 'Graduate', '<p>The Certificate in Advanced Back-Office Management with MS Office, AI &amp; ChatGPT is a career-oriented training program designed to equip students, professionals, and business owners with essential office management, automation, and AI-driven productivity skills. This course offers hands-on training in MS Office (Excel, Word, PowerPoint, Outlook), data entry, process automation, and AI-powered business communication using ChatGPT.</p>\r\n\r\n<p>✔️ Learn MS Office, AI automation &amp; ChatGPT applications<br />\r\n✔️ Real-world case studies for office management &amp; business efficiency<br />\r\n✔️ Industry-aligned training with practical assignments<br />\r\n✔️ AI-powered tools for data management &amp; business productivity<br />\r\n✔️ Suitable for students, freshers, entrepreneurs &amp; working professionals</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><strong>Module 1: Advanced Back-Office Management</strong></p>\r\n\r\n<ul>\r\n	<li>Understanding Back-Office Operations: Explore the functions and processes of back-office management, including data entry, record-keeping, inventory management, and workflow optimization.</li>\r\n	<li>Efficiency Enhancement Techniques: Learn strategies to streamline back-office tasks, improve productivity, and minimize errors through automation and process improvement.</li>\r\n</ul>\r\n\r\n<p><strong>Module 2: MS Office Mastery</strong></p>\r\n\r\n<ul>\r\n	<li>Microsoft Word Advanced Features: Dive into advanced formatting, document automation, collaboration tools, and integration with other MS Office applications.</li>\r\n	<li>Excel for Data Analysis: Harness the power of Excel for data manipulation, analysis, and visualization using advanced functions, pivot tables, and macros.</li>\r\n	<li>Advanced PowerPoint Techniques: Master advanced presentation design, animation, and collaboration features to create compelling visual presentations.</li>\r\n</ul>\r\n\r\n<p><strong>Module 3: Introduction to Artificial Intelligence (AI)</strong></p>\r\n\r\n<ul>\r\n	<li>Understanding AI and Its Applications: Explore the fundamentals of AI, machine learning, and natural language processing (NLP), and their practical applications in various industries.</li>\r\n	<li>AI Ethics and Governance: Discuss ethical considerations, privacy concerns, and regulatory frameworks surrounding AI technologies and their implementation in business contexts.</li>\r\n</ul>\r\n\r\n<p><strong>Module 4: Chat GPT Integration and Implementation</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to Chat GPT: Learn about OpenAI&#39;s Chat GPT model and its capabilities in natural language understanding and generation.</li>\r\n	<li>Integration with Microsoft Office: Explore how Chat GPT can be integrated into MS Office applications for various purposes, including customer support, automated responses, and data analysis.</li>\r\n	<li>Practical Implementation: Gain hands-on experience in building and deploying Chat GPT-powered solutions within the MS Office environment, including chatbots, automated email responses, and document summarization tools.</li>\r\n</ul>\r\n\r\n<p><strong>Module 5: Project Work and Case Studies</strong></p>\r\n\r\n<ul>\r\n	<li>Capstone Project: Apply the knowledge and skills acquired throughout the course to develop a comprehensive back-office management solution using MS Office and AI technologies.</li>\r\n	<li>Case Studies: Analyze real-world case studies and best practices in back-office management and AI integration to gain insights into industry trends and challenges.</li>\r\n</ul>\r\n', 'C1730115782.png', 'Active', 1, 'Back Office Management, MS Office with Chat GPT', 'Introduction,  Basics of Back Office Management.', 'Excellent', 'English, Hindi, Bengali', 'Certificate in Advanced Back-Office Management : MS Office with AI & ChatGPT Training', NULL, 'Master back-office management with MS Office, AI, and ChatGPT in this career-focused certification course at WBJRS. Learn data management, automation, Excel analytics, and AI-powered business operations with hands-on training.'),
(5, 2, 17, 'Certificate in Basic Sales and Marketing : Practical Training for Career Growth', 'certificateinbasicsalesandmarketingpracticaltrainingforcareergrowth', '03 Months', 6000, 'Secondary', '<p>The Certificate in Basic Sales and Marketing is a beginner-friendly, career-focused training program designed to equip students, freshers, and aspiring professionals with essential sales, customer engagement, and marketing strategies. This course provides hands-on training in sales techniques, marketing principles, negotiation skills, and digital marketing essentials to help learners boost their sales performance and business success.</p>\r\n\r\n<p>✔️ Learn sales fundamentals, lead generation &amp; customer handling<br />\r\n✔️ Digital marketing basics for online &amp; offline business growth<br />\r\n✔️ Practical case studies for sales strategy &amp; business conversion<br />\r\n✔️ Industry-focused training with real-world applications<br />\r\n✔️ Suitable for students, freshers, entrepreneurs &amp; sales executives</p>\r\n', '<p><strong>Sales:</strong> Sales refer to the process of converting leads or prospects into paying customers through direct interaction, persuasion, and negotiation. The primary goal of the sales function is to generate revenue by selling products or services to individuals or businesses. Key aspects of sales include:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Prospecting:</strong> Identifying potential customers or leads who may have a need for the products or services offered by the business. This may involve cold calling, networking, or leveraging existing customer databases.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Qualification:</strong> Assessing the needs, interests, and purchasing potential of prospects to determine their suitability as potential customers. This involves gathering information, asking qualifying questions, and understanding the prospect&#39;s pain points.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Presentation and Demonstration:</strong> Communicating the value proposition of the product or service to prospects through presentations, product demonstrations, or sales pitches. Sales representatives highlight the features, benefits, and advantages of the offering to address the prospect&#39;s needs and objections.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Negotiation:</strong> Engaging in negotiations with prospects to address pricing, terms, and other factors to close the sale. Sales professionals aim to overcome objections, address concerns, and reach mutually beneficial agreements with prospects.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Closing:</strong> Finalizing the sale by obtaining the prospect&#39;s commitment to purchase the product or service. This may involve signing contracts, processing payments, and ensuring a smooth transition to the post-sales phase.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Relationship Management:</strong> Building and maintaining long-term relationships with customers to foster loyalty, repeat business, and referrals. Sales professionals often follow up with customers after the sale to ensure satisfaction, address any issues, and identify opportunities for upselling or cross-selling.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>Marketing:</strong> Marketing encompasses a broader set of activities aimed at promoting products or services, building brand awareness, and attracting, engaging, and retaining customers. The primary goal of marketing is to create value for customers and drive demand for the business&#39;s offerings. Key aspects of marketing include:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Market Research:</strong> Conducting research to understand market trends, consumer behavior, competitive landscape, and customer needs. Market research informs marketing strategies and helps businesses identify target audiences and market opportunities.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Segmentation and Targeting:</strong> Segmenting the market into distinct groups based on demographics, psychographics, or behavior and targeting specific segments with tailored marketing messages and offers. This ensures that marketing efforts are directed towards the most relevant audience.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Product Development and Positioning:</strong> Developing products or services that meet the needs and preferences of target customers and positioning them effectively in the market to differentiate them from competitors. Marketing helps create and communicate the unique value proposition of the offering to target audiences.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Promotion:</strong> Implementing various promotional tactics to reach and engage target audiences, including advertising, public relations, sales promotions, direct marketing, and digital marketing channels such as social media, email, and content marketing.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Brand Management:</strong> Building and managing the brand identity, reputation, and perception of the business in the market. This involves establishing brand values, messaging, and visual identity elements that resonate with target customers and differentiate the brand from competitors.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Lead Generation:</strong> Generating leads or inquiries from potential customers through marketing initiatives such as lead magnets, content marketing, search engine optimization (SEO), and advertising campaigns. Marketing efforts aim to attract qualified leads and move them through the sales funnel towards conversion.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Marketing Analytics:</strong> Measuring and analyzing the performance of marketing campaigns and activities to assess their effectiveness, ROI, and impact on business objectives. Marketing analytics provide insights into customer behavior, campaign attribution, and areas for optimization and improvement</p>\r\n	</li>\r\n</ol>\r\n', 'C1730189920.PNG', 'Active', 1, 'Basics of Sales & Marketing', 'Introduction, Basic Marketing with Ms Office.', 'Excellent', 'English, Hindi, Bengali', 'Certificate in Basic Sales and Marketing : Job-Oriented Sales Training Course', NULL, 'Master sales techniques and marketing fundamentals with this Certificate in Basic Sales and Marketing at WBJRS. Learn lead generation, customer engagement, digital marketing basics, and sales closing strategies to kickstart your career in sales & marketing.'),
(6, 2, 15, 'Certificate in Professional Banker : Advanced Banking Training Program', 'certificateinprofessionalbankeradvancedbankingtrainingprogram', '06 Months', 20000, 'Graduate', '<p>The Certificate in Professional Banker course is designed for aspiring bankers, finance professionals, and job seekers who want to build a strong foundation in banking operations, customer service, financial analysis, and digital banking solutions. This industry-relevant course covers modern banking techniques, risk management, and regulatory compliance to help learners secure job opportunities in leading banks and financial institutions.</p>\r\n\r\n<p>✔️ Comprehensive banking training covering traditional &amp; digital banking<br />\r\n✔️ Real-world case studies to develop practical banking skills<br />\r\n✔️ Expert-led sessions with hands-on learning experience<br />\r\n✔️ Ideal for students, fresh graduates &amp; working professionals</p>\r\n', '<p><strong>Module 1: Introduction to Banking</strong></p>\r\n\r\n<ul>\r\n	<li>Understanding the banking industry: History, evolution, and key players</li>\r\n	<li>Overview of banking products and services: Deposits, loans, investments, and payment systems</li>\r\n	<li>Regulatory environment: Introduction to banking regulations, compliance, and governance</li>\r\n</ul>\r\n\r\n<p><strong>Module 2: Banking Operations and Services</strong></p>\r\n\r\n<ul>\r\n	<li>Core banking operations: Account opening, transaction processing, and cash management</li>\r\n	<li>Retail banking services: Consumer lending, mortgages, credit cards, and wealth management</li>\r\n	<li>Corporate banking services: Commercial lending, trade finance, treasury services, and capital markets</li>\r\n</ul>\r\n\r\n<p><strong>Module 3: Financial Analysis and Risk Management</strong></p>\r\n\r\n<ul>\r\n	<li>Financial statement analysis: Understanding balance sheets, income statements, and cash flow statements</li>\r\n	<li>Credit risk management: Assessing creditworthiness, loan underwriting, and credit risk mitigation strategies</li>\r\n	<li>Market risk management: Understanding interest rate risk, foreign exchange risk, and market volatility</li>\r\n</ul>\r\n\r\n<p><strong>Module 4: Banking Technology and Innovation</strong></p>\r\n\r\n<ul>\r\n	<li>Digital banking trends: Overview of online banking, mobile banking, and fintech innovations</li>\r\n	<li>Banking technology infrastructure: Core banking systems, payment platforms, and cybersecurity measures</li>\r\n	<li>Implementing digital transformation: Strategies for integrating technology into banking operations and enhancing customer experience</li>\r\n</ul>\r\n\r\n<p><strong>Module 5: Customer Relationship Management</strong></p>\r\n\r\n<ul>\r\n	<li>Building client relationships: Effective communication, relationship-building strategies, and customer retention tactics</li>\r\n	<li>Needs assessment and financial planning: Understanding customer needs, financial goals, and risk tolerance</li>\r\n	<li>Complaint handling and customer service excellence: Resolving customer issues, managing complaints, and delivering exceptional service</li>\r\n</ul>\r\n\r\n<p><strong>Module 6: Professional Ethics and Compliance</strong></p>\r\n\r\n<ul>\r\n	<li>Ethical standards in banking: Principles of integrity, transparency, confidentiality, and fair dealing</li>\r\n	<li>Regulatory compliance: Understanding anti-money laundering (AML), know your customer (KYC), and customer due diligence (CDD) regulations</li>\r\n	<li>Code of conduct and professional standards: Upholding ethical principles, maintaining trust, and adhering to industry best practices</li>\r\n</ul>\r\n', 'C1730113412.PNG', 'Active', 1, 'Professional Banking.', 'Introduction, Banking, Sales', 'Excellent', 'English, Hindi, Bengali', 'Certificate in Professional Banker : Banking Training Course for Career Growth', 'Best certificate course for banking professionals, Professional banker certification with practical training, Job-oriented banking course for freshers and professionals', 'Boost your banking career with the Certificate in Professional Banker course at WBJRS. Learn core banking operations, financial management, loan processing, customer service, and digital banking trends to enhance job opportunities in the banking sector.'),
(7, 2, 17, 'Certificate in Banking Sales & Finance : Career-Focused Training Program', 'certificateinbankingsalesfinancecareer-focusedtrainingprogram', '06 Months', 18000, 'Higher Secondary', '<p>The Certificate in Banking Sales &amp; Finance is designed for aspiring bankers, financial advisors, and sales professionals who want to master banking products, financial services, sales strategies, and customer relationship management. This course equips learners with practical knowledge of banking operations, loan processing, digital banking, and wealth management to help them secure high-paying jobs in leading banks and financial institutions.</p>\r\n\r\n<p>✔️ Comprehensive banking sales &amp; finance training<br />\r\n✔️ Practical case studies on loan products &amp; financial services<br />\r\n✔️ Expert-led sessions with real-world banking insights<br />\r\n✔️ Ideal for students, fresh graduates &amp; working professionals</p>\r\n', '<p><strong>Sales:</strong> Sales refer to the process of converting leads or prospects into paying customers through direct interaction, persuasion, and negotiation. The primary goal of the sales function is to generate revenue by selling products or services to individuals or businesses. Key aspects of sales include:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Prospecting:</strong> Identifying potential customers or leads who may have a need for the products or services offered by the business. This may involve cold calling, networking, or leveraging existing customer databases.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Qualification:</strong> Assessing the needs, interests, and purchasing potential of prospects to determine their suitability as potential customers. This involves gathering information, asking qualifying questions, and understanding the prospect&#39;s pain points.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Presentation and Demonstration:</strong> Communicating the value proposition of the product or service to prospects through presentations, product demonstrations, or sales pitches. Sales representatives highlight the features, benefits, and advantages of the offering to address the prospect&#39;s needs and objections.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Negotiation:</strong> Engaging in negotiations with prospects to address pricing, terms, and other factors to close the sale. Sales professionals aim to overcome objections, address concerns, and reach mutually beneficial agreements with prospects.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Closing:</strong> Finalizing the sale by obtaining the prospect&#39;s commitment to purchase the product or service. This may involve signing contracts, processing payments, and ensuring a smooth transition to the post-sales phase.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Relationship Management:</strong> Building and maintaining long-term relationships with customers to foster loyalty, repeat business, and referrals. Sales professionals often follow up with customers after the sale to ensure satisfaction, address any issues, and identify opportunities for upselling or cross-selling.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>Marketing:</strong> Marketing encompasses a broader set of activities aimed at promoting products or services, building brand awareness, and attracting, engaging, and retaining customers. The primary goal of marketing is to create value for customers and drive demand for the business&#39;s offerings. Key aspects of marketing include:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Market Research:</strong> Conducting research to understand market trends, consumer behavior, competitive landscape, and customer needs. Market research informs marketing strategies and helps businesses identify target audiences and market opportunities.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Segmentation and Targeting:</strong> Segmenting the market into distinct groups based on demographics, psychographics, or behavior and targeting specific segments with tailored marketing messages and offers. This ensures that marketing efforts are directed towards the most relevant audience.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Product Development and Positioning:</strong> Developing products or services that meet the needs and preferences of target customers and positioning them effectively in the market to differentiate them from competitors. Marketing helps create and communicate the unique value proposition of the offering to target audiences.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Promotion:</strong> Implementing various promotional tactics to reach and engage target audiences, including advertising, public relations, sales promotions, direct marketing, and digital marketing channels such as social media, email, and content marketing.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Brand Management:</strong> Building and managing the brand identity, reputation, and perception of the business in the market. This involves establishing brand values, messaging, and visual identity elements that resonate with target customers and differentiate the brand from competitors.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Lead Generation:</strong> Generating leads or inquiries from potential customers through marketing initiatives such as lead magnets, content marketing, search engine optimization (SEO), and advertising campaigns. Marketing efforts aim to attract qualified leads and move them through the sales funnel towards conversion.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Marketing Analytics:</strong> Measuring and analyzing the performance of marketing campaigns and activities to assess their effectiveness, ROI, and impact on business objectives. Marketing analytics provide insights into customer behavior, campaign attribution, and areas for optimization and improvement</p>\r\n	</li>\r\n</ol>\r\n', 'C1730113387.PNG', 'Active', 1, 'Advance Sales & Marketing', 'Introduction, Sales & Marketing with Ms Office.', 'Excellent', 'English, Hindi, Bengali', 'Certificate in Banking Sales & Finance : Job-Oriented Course for Banking Careers', 'Best certificate course in banking sales & finance', 'Advance your banking career with the Certificate in Banking Sales & Finance. Learn financial services, loan sales, customer relationship management, and digital banking to excel in the banking and finance sector.'),
(8, 2, 18, 'Certificate in Basic Spoken English : Improve Your English Communication Skills', 'certificateinbasicspokenenglishimproveyourenglishcommunicationskills', '03 Months', 4000, 'Secondary', '<p>The Certificate in Basic Spoken English is designed for students, job seekers, homemakers, and professionals who want to speak English fluently and confidently.</p>\r\n\r\n<p>This course helps students improve pronunciation, grammar, sentence structure, and vocabulary, making everyday conversations clear and natural.</p>\r\n\r\n<p>✔️ Interactive sessions for real-life English communication<br />\r\n✔️ Practical exercises for fluency and confidence building<br />\r\n✔️ Ideal for beginners &amp; non-native English speakers<br />\r\n✔️ Flexible learning &ndash; Study online or in-class</p>\r\n\r\n<h3><strong>Why Choose This Spoken English Course?</strong></h3>\r\n\r\n<p>✔️ Step-by-step English learning for beginners<br />\r\n✔️ Practical conversation-based training<br />\r\n✔️ Focus on real-world speaking situations<br />\r\n✔️ Flexible learning &ndash; Online &amp; Offline Classes<br />\r\n✔️ Certification on completion for career growth</p>\r\n', '<p><strong>Module 1: Introduction to Spoken English</strong></p>\r\n\r\n<ul>\r\n	<li>Understanding the importance of spoken English in everyday life and professional environments</li>\r\n	<li>Basic English pronunciation: Introducing sounds, phonetics, and pronunciation rules</li>\r\n	<li>Building vocabulary: Learning common words and phrases used in daily conversations</li>\r\n</ul>\r\n\r\n<p><strong>Module 2: Grammar Essentials</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to English grammar: Basic sentence structure, subject-verb agreement, and word order</li>\r\n	<li>Parts of speech: Nouns, verbs, adjectives, adverbs, pronouns, prepositions, conjunctions, and articles</li>\r\n	<li>Verb tenses: Present simple, present continuous, past simple, and future tense</li>\r\n</ul>\r\n\r\n<p><strong>Module 3: Everyday Conversations</strong></p>\r\n\r\n<ul>\r\n	<li>Greetings and introductions: Practicing polite greetings, introducing oneself, and initiating conversations</li>\r\n	<li>Asking and answering questions: Formulating questions, seeking clarification, and providing responses</li>\r\n	<li>Expressing opinions and preferences: Sharing likes, dislikes, opinions, and preferences in conversations</li>\r\n</ul>\r\n\r\n<p><strong>Module 4: Practical Communication Skills</strong></p>\r\n\r\n<ul>\r\n	<li>Telephone etiquette: Making and receiving phone calls, taking messages, and handling basic inquiries</li>\r\n	<li>Socializing and networking: Engaging in small talk, participating in social gatherings, and networking with others</li>\r\n	<li>Giving directions and instructions: Providing clear directions, instructions, and guidance in various situations</li>\r\n</ul>\r\n\r\n<p><strong>Module 5: Role-plays and Simulations</strong></p>\r\n\r\n<ul>\r\n	<li>Role-playing common scenarios: Practicing real-life situations such as ordering food, shopping, making appointments, and seeking assistance</li>\r\n	<li>Interactive activities: Engaging in group discussions, debates, and collaborative tasks to enhance speaking skills</li>\r\n	<li>Peer feedback and self-assessment: Providing constructive feedback and self-evaluating speaking performance</li>\r\n</ul>\r\n\r\n<p><strong>Module 6: Cultural Awareness and Language Variation</strong></p>\r\n\r\n<ul>\r\n	<li>Understanding cultural nuances in communication: Recognizing cultural differences in language use, gestures, and non-verbal communication</li>\r\n	<li>Varieties of English: Exploring regional accents, dialects, and language variations in English-speaking countries</li>\r\n	<li>Cultural sensitivity and respect: Valuing diversity, avoiding stereotypes, and demonstrating respect for cultural differences</li>\r\n</ul>\r\n', 'C1720509733.png', 'Active', 1, 'Basics of Spoken English', 'Introduction,  Grammar, Ascent Speaking', 'Excellent', 'English', 'Certificate in Basic Spoken English : Improve Your English Communication Skills', 'Best spoken English course for beginners, English communication skills training with certification, Learn spoken English with pronunciation practice', 'Boost your confidence with the Certificate in Basic Spoken English course. Learn pronunciation, vocabulary, sentence formation, and fluency to communicate effectively in daily life, workplace, and social settings.'),
(9, 2, 18, 'Certificate in Advanced Spoken English, Soft Skills & Personality Development', 'certificateinadvancedspokenenglishsoftskillspersonalitydevelopment', '06 Months', 7499, 'Secondary', '<p>The Certificate in Advanced Spoken English, Soft Skills &amp; Personality Development is designed for students, professionals, and job seekers who want to improve communication skills, build confidence, and develop a strong personality. This course enhances fluency, body language, leadership skills, and workplace etiquette to help you excel in professional and social environments.</p>\r\n\r\n<p>✔️ Fluency training for clear and confident communication<br />\r\n✔️ Soft skills development for career success<br />\r\n✔️ Interview preparation &amp; corporate etiquette training<br />\r\n✔️ Personality development for Leadership &amp; Personal Growth<br />\r\n✔️ Flexible learning &ndash; Online &amp; Offline Classes Available</p>\r\n', '<p>&nbsp;</p>\r\n\r\n<p><strong>Module 1: Advanced Spoken English</strong></p>\r\n\r\n<ul>\r\n	<li>Advanced vocabulary expansion: Learning idiomatic expressions, phrasal verbs, and advanced vocabulary for diverse contexts</li>\r\n	<li>Pronunciation refinement: Fine-tuning pronunciation, intonation, stress patterns, and fluency for clear communication</li>\r\n	<li>Advanced grammar structures: Exploring complex sentence structures, verb forms, conditionals, and reported speech</li>\r\n</ul>\r\n\r\n<p><strong>Module 2: Communication Skills Enhancement</strong></p>\r\n\r\n<ul>\r\n	<li>Effective communication strategies: Developing active listening skills, asking probing questions, and engaging in meaningful conversations</li>\r\n	<li>Public speaking mastery: Overcoming stage fright, structuring compelling speeches, and delivering impactful presentations with confidence</li>\r\n	<li>Assertiveness and persuasion: Developing assertive communication skills, negotiation techniques, and persuasive language patterns</li>\r\n</ul>\r\n\r\n<p><strong>Module 3: Interpersonal Skills Development</strong></p>\r\n\r\n<ul>\r\n	<li>Emotional intelligence: Understanding emotions, empathetic communication, and managing interpersonal relationships effectively</li>\r\n	<li>Conflict resolution and diplomacy: Developing conflict resolution skills, mediation techniques, and maintaining harmony in interpersonal dynamics</li>\r\n	<li>Building rapport and networking: Establishing rapport with others, networking strategies, and fostering mutually beneficial relationships</li>\r\n</ul>\r\n\r\n<p><strong>Module 4: Personality Enhancement</strong></p>\r\n\r\n<ul>\r\n	<li>Self-awareness and self-confidence: Assessing strengths, weaknesses, and values, and building self-confidence for personal and professional success</li>\r\n	<li>Body language and non-verbal communication: Understanding the impact of body language, facial expressions, gestures, and posture on communication</li>\r\n	<li>Personal branding and image management: Crafting a positive personal brand, enhancing professional image, and projecting a confident and authentic persona</li>\r\n</ul>\r\n\r\n<p><strong>Module 5: Leadership and Teamwork</strong></p>\r\n\r\n<ul>\r\n	<li>Leadership qualities and attributes: Developing leadership skills, vision, strategic thinking, and inspiring others to achieve common goals</li>\r\n	<li>Team collaboration and synergy: Building effective teams, fostering teamwork, resolving conflicts, and promoting a collaborative work environment</li>\r\n	<li>Motivation and empowerment: Motivating others, providing constructive feedback, and empowering team members to achieve excellence</li>\r\n</ul>\r\n\r\n<p><strong>Module 6: Career Development and Success Strategies</strong></p>\r\n\r\n<ul>\r\n	<li>Goal setting and action planning: Setting SMART goals, creating action plans, and implementing strategies for personal and professional growth</li>\r\n	<li>Interview skills and job readiness: Mastering interview techniques, CV writing, and job search strategies to secure employment opportunities</li>\r\n	<li>Lifelong learning and continuous improvement: Cultivating a growth mindset, embracing lifelong learning, and adapting to change for ongoing success</li>\r\n</ul>\r\n', 'C1720509783.png', 'Active', 1, 'Spoken English, Soft Skill & Personality Developme', 'Introduction, Soft Skill & Personality Development', 'Excellent', 'English', 'Certificate in Advanced Spoken English, Soft Skills & Personality Development', NULL, 'Master spoken English, soft skills, and personality development with this advanced certification course. Improve your fluency, confidence, professional communication, and leadership skills to succeed in interviews, workplaces, and social settings.\r\n');
INSERT INTO `course` (`c_id`, `cat_id`, `subcat_id`, `course_name`, `search_name`, `duration`, `fees`, `eligibility`, `overview`, `curriculam`, `image`, `status`, `rating`, `lessons`, `topics`, `skill_level`, `language`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(10, 2, 19, 'Certificate in Personality Development, Resume Writing & Interview Skills', 'certificateinpersonalitydevelopmentresumewritinginterviewskills', '01 Month', 2500, 'Higher Secondary', '<p>The Certificate in Personality Development, Resume Writing &amp; Interview Skills is designed for students, professionals, and job seekers aiming to enhance their personality, craft compelling resumes, and ace job interviews. This course equips you with professional communication skills, body language mastery, confidence-building techniques, and career-boosting strategies.</p>\r\n\r\n<p>✔️ Build a powerful resume that stands out<br />\r\n✔️ Learn interview techniques &amp; common questions<br />\r\n✔️ Improve confidence, communication &amp; leadership skills<br />\r\n✔️ Develop a strong professional image &amp; body language<br />\r\n✔️ Flexible learning &ndash; Online &amp; Offline classes available</p>\r\n\r\n<h3><strong>Why Choose This Course?</strong></h3>\r\n\r\n<p>✔️ Industry-relevant training with expert mentors<br />\r\n✔️ Practical resume-building &amp; interview coaching<br />\r\n✔️ Real-world simulations &amp; confidence-boosting techniques<br />\r\n✔️ Flexible study options &ndash; Online &amp; Offline classes<br />\r\n✔️ Certification on completion for career advancement</p>\r\n', '<p><strong>Module 1: Advanced Spoken English</strong></p>\r\n\r\n<ul>\r\n	<li>Advanced vocabulary expansion: Learning idiomatic expressions, phrasal verbs, and advanced vocabulary for diverse contexts</li>\r\n	<li>Pronunciation refinement: Fine-tuning pronunciation, intonation, stress patterns, and fluency for clear communication</li>\r\n	<li>Advanced grammar structures: Exploring complex sentence structures, verb forms, conditionals, and reported speech</li>\r\n</ul>\r\n\r\n<p><strong>Module 2: Communication Skills Enhancement</strong></p>\r\n\r\n<ul>\r\n	<li>Effective communication strategies: Developing active listening skills, asking probing questions, and engaging in meaningful conversations</li>\r\n	<li>Public speaking mastery: Overcoming stage fright, structuring compelling speeches, and delivering impactful presentations with confidence</li>\r\n	<li>Assertiveness and persuasion: Developing assertive communication skills, negotiation techniques, and persuasive language patterns</li>\r\n</ul>\r\n\r\n<p><strong>Module 3: Interpersonal Skills Development</strong></p>\r\n\r\n<ul>\r\n	<li>Emotional intelligence: Understanding emotions, empathetic communication, and managing interpersonal relationships effectively</li>\r\n	<li>Conflict resolution and diplomacy: Developing conflict resolution skills, mediation techniques, and maintaining harmony in interpersonal dynamics</li>\r\n	<li>Building rapport and networking: Establishing rapport with others, networking strategies, and fostering mutually beneficial relationships</li>\r\n</ul>\r\n\r\n<p><strong>Module 4: Personality Enhancement</strong></p>\r\n\r\n<ul>\r\n	<li>Self-awareness and self-confidence: Assessing strengths, weaknesses, and values, and building self-confidence for personal and professional success</li>\r\n	<li>Body language and non-verbal communication: Understanding the impact of body language, facial expressions, gestures, and posture on communication</li>\r\n	<li>Personal branding and image management: Crafting a positive personal brand, enhancing professional image, and projecting a confident and authentic persona</li>\r\n</ul>\r\n\r\n<p><strong>Module 5: Leadership and Teamwork</strong></p>\r\n\r\n<ul>\r\n	<li>Leadership qualities and attributes: Developing leadership skills, vision, strategic thinking, and inspiring others to achieve common goals</li>\r\n	<li>Team collaboration and synergy: Building effective teams, fostering teamwork, resolving conflicts, and promoting a collaborative work environment</li>\r\n	<li>Motivation and empowerment: Motivating others, providing constructive feedback, and empowering team members to achieve excellence</li>\r\n</ul>\r\n\r\n<p><strong>Module 6: Career Development and Success Strategies</strong></p>\r\n\r\n<ul>\r\n	<li>Goal setting and action planning: Setting SMART goals, creating action plans, and implementing strategies for personal and professional growth</li>\r\n	<li>Interview skills and job readiness: Mastering interview techniques, CV writing, and job search strategies to secure employment opportunities</li>\r\n	<li>Lifelong learning and continuous improvement: Cultivating a growth mindset, embracing lifelong learning, and adapting to change for ongoing success</li>\r\n</ul>\r\n', NULL, 'Active', 1, 'Spoken English, Soft Skill & Personality Developme', NULL, 'Excellent', 'English', 'Certificate in Personality Development, Resume Writing & Interview Skills', 'Best personality development & interview skills course, Resume writing & job interview preparation training, Soft skills & career development program with certification', 'Boost your confidence, communication skills, and professional presence with our Personality Development, Resume Writing & Interview Skills Certification. Master resume building, interview techniques, and workplace communication to land your dream job.'),
(11, 1, 5, 'Certificate in Basic Computer Applications and Programming', 'certificateinbasiccomputerapplicationsandprogramming', '06 Months', 6500, 'Class VIII onward', '<p>The Certificate in Basic Computer Applications and Programming is designed for students, professionals, and beginners who want to build a strong foundation in computer operations, office applications, and programming fundamentals.</p>\r\n\r\n<p>This course covers essential IT skills, MS Office, and basic coding to help you excel in the digital world.</p>\r\n\r\n<p>✔️ Learn essential computer skills for career success<br />\r\n✔️ Master MS Office (Word, Excel, PowerPoint, Outlook)<br />\r\n✔️ Introduction to programming (Python, C, or Java basics)<br />\r\n✔️ Practical training with real-world applications<br />\r\n✔️ Flexible learning &ndash; Online &amp; Offline classes available</p>\r\n', '<p><strong>Module 1: Introduction to Computers</strong></p>\r\n\r\n<ul>\r\n	<li>Understanding computer hardware and software: Components, peripherals, and operating systems</li>\r\n	<li>Introduction to computer networks: Basics of local area networks (LANs) and the internet</li>\r\n	<li>Computer security and data privacy: Overview of cybersecurity threats, best practices, and data protection measures</li>\r\n</ul>\r\n\r\n<p><strong>Module 2: Microsoft Office Suite</strong></p>\r\n\r\n<ul>\r\n	<li>Microsoft Word: Basics of word processing, formatting text, creating documents, and using templates</li>\r\n	<li>Microsoft Excel: Introduction to spreadsheets, data entry, basic formulas, and formatting for data analysis</li>\r\n	<li>Microsoft PowerPoint: Creating and delivering effective presentations with slides, graphics, and animations</li>\r\n</ul>\r\n\r\n<p><strong>Module 3: Internet and Email Basics</strong></p>\r\n\r\n<ul>\r\n	<li>Web browsing fundamentals: Navigating websites, searching for information, and evaluating online resources</li>\r\n	<li>Email communication: Setting up and managing email accounts, composing messages, and sending attachments</li>\r\n	<li>Online safety and digital citizenship: Understanding internet safety practices, privacy concerns, and responsible online behavior</li>\r\n</ul>\r\n\r\n<p><strong>Module 4: Introduction to Programming Concepts</strong></p>\r\n\r\n<ul>\r\n	<li>Basics of computer programming: Understanding algorithms, variables, data types, and control structures</li>\r\n	<li>Introduction to programming languages: Overview of popular programming languages such as Python, Java, and JavaScript</li>\r\n	<li>Problem-solving and logic: Developing logical thinking skills and problem-solving strategies for programming tasks</li>\r\n</ul>\r\n\r\n<p><strong>Module 5: Introduction to Coding</strong></p>\r\n\r\n<ul>\r\n	<li>Coding fundamentals: Learning basic syntax, commands, and programming constructs in a chosen programming language</li>\r\n	<li>Hands-on coding exercises: Writing simple programs to solve problems, manipulate data, and automate tasks</li>\r\n	<li>Debugging and troubleshooting: Identifying and fixing errors in code, using debugging tools, and testing program functionality</li>\r\n</ul>\r\n\r\n<p><strong>Module 6: Application Development Basics</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to software development: Overview of the software development lifecycle (SDLC) and key development methodologies</li>\r\n	<li>User interface (UI) design principles: Basics of designing intuitive and user-friendly interfaces for software applications</li>\r\n	<li>Mobile app development: Understanding mobile app platforms, frameworks, and tools for building basic mobile applications</li>\r\n</ul>\r\n', 'C1730114402.PNG', 'Active', 1, 'Computer Application and Programming', 'Introduction, Computer Application & Programming', 'Excellent', 'English, Hindi, Bengali', 'Certificate in Basic Computer Applications and Programming', NULL, 'Master fundamental computer applications and programming with our Basic Computer Applications and Programming Certificate Course. Learn MS Office, coding basics, and essential software skills for career growth.'),
(12, 1, 5, 'Certificate in Advanced Computer Applications and Programming', 'certificateinadvancedcomputerapplicationsandprogramming', '08 Months', 12000, 'Higher Secondary', '<p>The Certificate in Advanced Computer Applications and Programming is designed for students, professionals, and tech enthusiasts who want to enhance their computer proficiency, office automation, and programming skills. This course covers advanced MS Office, data management, automation, and coding in Python, Java, or AI tools, preparing you for high-demand IT roles.</p>\r\n\r\n<p>✔️ Master advanced MS Office tools for efficiency<br />\r\n✔️ Learn programming languages like Python, Java &amp; AI basics<br />\r\n✔️ Get hands-on training with automation &amp; data analysis<br />\r\n✔️ Develop software applications &amp; real-world projects<br />\r\n✔️ Flexible learning &ndash; Online &amp; Offline classes available</p>\r\n', '<p><strong>Module 1: Advanced Software Tools and Technologies</strong></p>\r\n\r\n<ul>\r\n	<li>Advanced Microsoft Office Suite: Mastery of advanced features in Word, Excel, and PowerPoint for data analysis, document automation, and presentation design</li>\r\n	<li>Database management systems: Introduction to database concepts, SQL querying, and database administration using platforms such as MySQL or Microsoft SQL Server</li>\r\n	<li>Web development tools: Proficiency in web development frameworks, content management systems (CMS), and front-end development tools such as HTML, CSS, and JavaScript libraries</li>\r\n</ul>\r\n\r\n<p><strong>Module 2: Object-Oriented Programming (OOP)</strong></p>\r\n\r\n<ul>\r\n	<li>Principles of object-oriented programming: Understanding classes, objects, inheritance, encapsulation, and polymorphism</li>\r\n	<li>Advanced programming languages: Deep dive into object-oriented languages such as Java, C#, or Python for application development</li>\r\n	<li>Design patterns and best practices: Applying design patterns, coding standards, and software engineering principles in OOP projects</li>\r\n</ul>\r\n\r\n<p><strong>Module 3: Data Structures and Algorithms</strong></p>\r\n\r\n<ul>\r\n	<li>Data structures: Understanding advanced data structures such as arrays, linked lists, stacks, queues, trees, and graphs</li>\r\n	<li>Algorithm design and analysis: Exploring algorithmic techniques, complexity analysis, sorting algorithms, searching algorithms, and dynamic programming</li>\r\n	<li>Problem-solving strategies: Practicing algorithmic problem-solving techniques through coding challenges, competitions, and real-world scenarios</li>\r\n</ul>\r\n\r\n<p><strong>Module 4: Advanced Web Development and Technologies</strong></p>\r\n\r\n<ul>\r\n	<li>Full-stack web development: Proficiency in back-end development frameworks (e.g., Node.js, Django, Ruby on Rails) and front-end frameworks (e.g., React, Angular, Vue.js)</li>\r\n	<li>Cloud computing and deployment: Understanding cloud platforms (e.g., AWS, Google Cloud, Microsoft Azure) and deploying web applications using cloud services</li>\r\n	<li>Web security and performance optimization: Implementing security measures, HTTPS, SSL/TLS, and performance optimization techniques for web applications</li>\r\n</ul>\r\n\r\n<p><strong>Module 5: Mobile App Development and Emerging Technologies</strong></p>\r\n\r\n<ul>\r\n	<li>Mobile app development frameworks: Introduction to cross-platform development frameworks (e.g., Flutter, React Native) and native development for iOS and Android platforms</li>\r\n	<li>Emerging technologies: Exploring trends such as artificial intelligence (AI), machine learning, Internet of Things (IoT), and blockchain, and their applications in software development</li>\r\n	<li>Ethical considerations and future trends: Understanding ethical implications of technology, privacy concerns, and staying updated on emerging trends in software development</li>\r\n</ul>\r\n\r\n<p><strong>Module 6: Software Project Management and Agile Methodologies</strong></p>\r\n\r\n<ul>\r\n	<li>Software project lifecycle: Overview of software project management methodologies (e.g., waterfall, agile, scrum) and project planning techniques</li>\r\n	<li>Agile software development: Implementing agile methodologies, sprint planning, backlog grooming, and iterative development practices in software projects</li>\r\n	<li>Collaboration tools and teamwork: Using project management tools (e.g., Jira, Trello) and version control systems (e.g., Git, GitHub) for collaboration, code sharing, and project tracking</li>\r\n</ul>\r\n', 'C1720337858.png', 'Active', 1, 'Computer Application & Programming', 'Introduction, Computer Application & Programming', 'Excellent', 'English, Hindi, Bengali', 'Certificate in Advanced Computer Applications and Programming', 'Best advanced computer course with certification, Best advanced computer course with certification', 'Master advanced computer applications and programming with our Certificate in Advanced Computer Applications and Programming course. Learn MS Office, data analysis, automation, and coding (Python, Java, AI tools) for career growth.'),
(13, 1, 7, 'Certificate in Data Science : Learn Data Analytics, Python & Machine Learning', 'certificateindatasciencelearndataanalyticspythonmachinelearning', '6 Months', 24000, 'Higher Secondary (Com Sc/Maths/Eco/Statistics/IT)', '<p>The Certificate in Data Science program is designed for students, working professionals, and tech enthusiasts looking to develop data analytics, machine learning, and AI skills. Learn Python, SQL, data visualization, and predictive analytics with hands-on projects.</p>\r\n\r\n<p>✔️ Master data science concepts with real-world applications<br />\r\n✔️ Learn Python, SQL, machine learning &amp; AI tools<br />\r\n✔️ Analyze big data and build predictive models<br />\r\n✔️ Develop industry-ready data visualization dashboards<br />\r\n✔️ Get hands-on experience with real-time datasets</p>\r\n\r\n<h3><strong>Why Choose WBJRS?</strong></h3>\r\n\r\n<p>✔️ Comprehensive curriculum designed by industry experts<br />\r\n✔️ Hands-on training with real-world datasets &amp; projects<br />\r\n✔️ Expert mentorship &amp; career-focused learning<br />\r\n✔️ Flexible learning &ndash; Online &amp; Offline options<br />\r\n✔️ Certification on completion for career advancement</p>\r\n', '<p><strong>FOUNDATION IN DATA SCIENCE</strong></p>\r\n\r\n<p><strong>Introduction To Data Science</strong></p>\r\n\r\n<ul>\r\n	<li>Overview of Data Science, its importance, and applications</li>\r\n	<li>Basics of Python programming for Data Science (variables, data types, control structures)</li>\r\n</ul>\r\n\r\n<p><strong>Data Manipulation and Visualization</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to Pandas for data manipulation</li>\r\n	<li>Data visualization using Matplotlib and Seaborn</li>\r\n</ul>\r\n\r\n<p><strong>Data Cleaning and Preprocessing</strong></p>\r\n\r\n<ul>\r\n	<li>Handling missing data and outliers</li>\r\n	<li>Feature scaling, encoding categorical variables, and data normalization</li>\r\n</ul>\r\n\r\n<p><strong>ADVANCED DATA ANALYSIS</strong></p>\r\n\r\n<p><strong>Exploratory Data Analysis (EDA)</strong></p>\r\n\r\n<ul>\r\n	<li>Understanding distributions, correlations, and summary statistics</li>\r\n	<li>Advanced EDA techniques, including heatmap, pair plots, and dimensionality reduction</li>\r\n</ul>\r\n\r\n<p><strong>Stastical analysis</strong></p>\r\n\r\n<ul>\r\n	<li>Hypothesis testing and statistical significance</li>\r\n	<li>Regression analysis and correlation testing</li>\r\n</ul>\r\n\r\n<p><strong>Introduction To Machine Learning</strong></p>\r\n\r\n<ul>\r\n	<li>Overview of supervised and unsupervised learning</li>\r\n	<li>Introduction to scikit-learn and its modules for machine learning</li>\r\n</ul>\r\n\r\n<p><strong>SUPERVISED LEARNING</strong></p>\r\n\r\n<p><strong>Regression Models</strong></p>\r\n\r\n<ul>\r\n	<li>Linear regression</li>\r\n	<li>Polynomial regression and regularization techniques</li>\r\n</ul>\r\n\r\n<p><strong>Classification Models</strong></p>\r\n\r\n<ul>\r\n	<li>Logistic regression</li>\r\n	<li>Decision trees and ensemble methods (Random Forests)</li>\r\n</ul>\r\n\r\n<p><strong>Evaluation Metrics and Model Optimization</strong></p>\r\n\r\n<ul>\r\n	<li>Performance metrics for classification and regression</li>\r\n	<li>Hyperparameter tuning and model selection techniques</li>\r\n</ul>\r\n\r\n<p><strong>UNSUPERVISED LEARNING</strong></p>\r\n\r\n<p><strong>Clustering</strong></p>\r\n\r\n<ul>\r\n	<li>K-means clustering</li>\r\n	<li>Hierarchical clustering and DBSCAN</li>\r\n</ul>\r\n\r\n<p><strong>Dimensionality Reduction</strong></p>\r\n\r\n<ul>\r\n	<li>Principal Component Analysis (PCA)</li>\r\n	<li>t-Distributed Stochastic Neighbor Embedding (t-SNE) and its applications</li>\r\n</ul>\r\n\r\n<p><strong>ADVANCED TOPICS IN DATA SCIENCE</strong></p>\r\n\r\n<p><strong>Natural Language Processing (NLP)</strong></p>\r\n\r\n<ul>\r\n	<li>Basics of text processing and tokenization</li>\r\n	<li>Sentiment analysis and text classification using NLP techniques</li>\r\n</ul>\r\n\r\n<p><strong>Time Series Analysis</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to time series data and its characteristics</li>\r\n	<li>ARIMA modeling and forecasting techniques</li>\r\n</ul>\r\n\r\n<p><strong>CAPSTONE PROJECT AND SPECIALIZATION</strong></p>\r\n\r\n<ul>\r\n	<li>Capstone Project</li>\r\n	<li>Students work on a real-world data science project under the guidance of mentors</li>\r\n	<li>Presentation of capstone projects and peer review</li>\r\n	<li>Specialization (Optional)</li>\r\n	<li>Deep learning fundamentals using TensorFlow</li>\r\n	<li>Advanced topics based on student interest (e.g., reinforcement learning, computer vision)</li>\r\n</ul>\r\n', 'C1720509869.png', 'Active', 1, NULL, NULL, 'Excellent', 'English, Hindi, Bengali', 'Certificate in Data Science : Learn Data Analytics, Python & Machine Learning', 'Best data science course with certification, Python for data science training with real projects, Data analytics course for beginners & professionals', 'Enroll in our Certificate in Data Science course to master Python, machine learning, data analytics, and AI tools. Get hands-on training with real-world projects and boost your career in data science.'),
(14, 1, 7, 'Diploma in Data Science : AI, Machine Learning & Big Data Certification', 'diplomaindatascienceaimachinelearningbigdatacertification', '9 Months', 60000, 'Higher Secondary ( Com Sc/Maths/Eco/Statistics/IT)', '<p>✅ <strong>Become a Data Science Expert</strong> with hands-on training in <strong>AI, Machine Learning, and Big Data</strong>. This diploma program equips you with <strong>technical expertise and analytical skills</strong> to excel in data-driven industries.</p>\r\n\r\n<p>✅ Learn from <strong>industry-leading professionals</strong> through an in-depth curriculum designed for both beginners and professionals. Develop skills in <strong>Python, R, SQL, Cloud Computing, and Business Intelligence</strong> while working on <strong>real-world projects</strong>.</p>\r\n\r\n<p>✅ With the rapid growth of data-driven decision-making, <strong>Data Science professionals are in high demand</strong> across industries like finance, healthcare, e-commerce, and technology. Our program prepares you for <strong>high-paying careers</strong> in this booming field.</p>\r\n\r\n<p>✅ Gain <strong>industry-recognized certification</strong> and <strong>job assistance</strong> to accelerate your career in Data Science.</p>\r\n\r\n<h3><strong>???? KEY HIGHLIGHTS</strong></h3>\r\n\r\n<p>✅ 100% Online - Learn at Your Own Pace<br />\r\n✅ Expert-Led Live Sessions &amp; Mentorship<br />\r\n✅ Hands-On Projects &amp; Real-World Case Studies<br />\r\n✅ Internship &amp; Job Placement Support<br />\r\n✅ Globally Recognized Certification</p>\r\n', '<p><strong>INTRODUCTION TO DATA SCIENCE AND PYTHON PROGRAMMING</strong></p>\r\n\r\n<p><strong>Introduction to Data Science</strong></p>\r\n\r\n<ul>\r\n	<li>Understanding the role of data in decision-making, overview of Data Science process</li>\r\n	<li>Applications of Data Science in various industries, ethics in data collection and analysis</li>\r\n</ul>\r\n\r\n<p><strong>Python Fundamentals for Data Science</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to Python programming language, variables, data types, and basic operations</li>\r\n	<li>Control structures (if, else, loops), functions, and libraries for Data Science (NumPy, Pandas)</li>\r\n</ul>\r\n\r\n<p><strong>DATA MANIPULATION AND VISUALIZATION</strong></p>\r\n\r\n<p><strong>Data Manipulation with Pandas</strong></p>\r\n\r\n<ul>\r\n	<li>Data ingestion, cleaning, and manipulation with Pandas Data Frames</li>\r\n	<li>Data aggregation, merging, and reshaping for analysis</li>\r\n</ul>\r\n\r\n<p><strong>Data Visualization with Matplotlib and Seaborn</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to data visualization principles, plotting with Matplotlib</li>\r\n	<li>Advanced plotting techniques, customization, and visualization best practices using Seaborn</li>\r\n</ul>\r\n\r\n<p><strong>STATISTICAL ANALYSIS AND EXPLORATORY DATA ANALYSIS (EDA)</strong></p>\r\n\r\n<p><strong>STATISTICAL ANALYSIS</strong></p>\r\n\r\n<ul>\r\n	<li>Descriptive statistics, probability distributions, and hypothesis testing</li>\r\n	<li>Inferential statistics, correlation, and regression analysis</li>\r\n</ul>\r\n\r\n<p><strong>Exploratory Data Analysis (EDA)</strong></p>\r\n\r\n<ul>\r\n	<li>Data summarization, visualization, and interpretation</li>\r\n	<li>Advanced EDA techniques: feature engineering, dimensionality reduction, and outlier detection</li>\r\n</ul>\r\n\r\n<p><strong>MACHINE LEARNING BASICS</strong></p>\r\n\r\n<p><strong>Introduction to Machine Learning</strong></p>\r\n\r\n<ul>\r\n	<li>Understanding supervised and unsupervised learning, model evaluation metrics</li>\r\n	<li>Overview of scikit-learn library, building and evaluating machine learning models</li>\r\n</ul>\r\n\r\n<p><strong>Regression Models</strong></p>\r\n\r\n<ul>\r\n	<li>Linear regression, polynomial regression, and regularization techniques</li>\r\n	<li>Evaluation of regression models, model selection, and hyperparameter tuning</li>\r\n</ul>\r\n\r\n<p><strong>CLASSIFICATION MODELS</strong></p>\r\n\r\n<p><strong>CLASSIFICATION ALGORITHMS</strong></p>\r\n\r\n<ul>\r\n	<li>Logistic regression, k-Nearest Neighbors (k-NN), and decision tree classifiers</li>\r\n	<li>Ensemble methods: Random Forests, Gradient Boosting, and model evaluation for classification</li>\r\n</ul>\r\n\r\n<p><strong>SUPPORT VECTOR MACHINES (SVM) AND NAIVE BAYES</strong></p>\r\n\r\n<ul>\r\n	<li>Understanding SVM, kernel methods, and model optimization</li>\r\n	<li>Naive Bayes classifiers, text classification, and real-world applications</li>\r\n</ul>\r\n\r\n<p><strong>UNSUPERVISED LEARNING AND MODEL EVALUATION</strong></p>\r\n\r\n<p><strong>CLUSTERING ALGORITHMS</strong></p>\r\n\r\n<ul>\r\n	<li>K-means clustering, hierarchical clustering, and evaluation metrics</li>\r\n	<li>Density-based clustering (DBSCAN), clustering applications, and practical examples</li>\r\n</ul>\r\n\r\n<p><strong>DIMENSIONALITY REDUCTION TECHNIQUES</strong></p>\r\n\r\n<ul>\r\n	<li>Principal Component Analysis (PCA), Singular Value Decomposition (SVD)</li>\r\n	<li>t-Distributed Stochastic Neighbor Embedding (t-SNE), manifold learning, and visualization techniques</li>\r\n</ul>\r\n\r\n<p><strong>ADVANCED TOPICS IN DATA SCIENCE</strong></p>\r\n\r\n<p><strong>LANGUAGE PROCESSING (NLP)</strong></p>\r\n\r\n<ul>\r\n	<li>Text preprocessing, feature extraction, and sentiment analysis</li>\r\n	<li>Topic modeling, word embeddings, and advanced NLP techniques</li>\r\n</ul>\r\n\r\n<p><strong>TIME SERIES ANALYSIS</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to time series data, visualization, and trend analysis</li>\r\n	<li>ARIMA modeling, seasonality, forecasting, and model evaluation</li>\r\n</ul>\r\n\r\n<p><strong>DEEP LEARNING FUNDAMENTALS</strong></p>\r\n\r\n<p><strong>INTRODUCTION TO NEURAL NETWORKS</strong></p>\r\n\r\n<ul>\r\n	<li>Basics of artificial neural networks (ANN), activation functions, and forward propagation</li>\r\n	<li>Training neural networks, backpropagation algorithm, and optimization techniques</li>\r\n</ul>\r\n\r\n<p><strong>DEEP LEARNING WITH TENSORFLOW</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to deep learning frameworks, building neural networks with TensorFlow</li>\r\n	<li>Convolutional Neural Networks (CNNs), recurrent neural networks (RNNs), and advanced architectures</li>\r\n</ul>\r\n\r\n<p><strong>CAPSTONE PROJECT AND SPECIALIZATION</strong></p>\r\n\r\n<ul>\r\n	<li>Capstone Project</li>\r\n	<li>Students work on a substantial data science project from problem formulation to implementation, under the guidance of mentors</li>\r\n	<li>Presentation of capstone projects, peer review, and feedback sessions</li>\r\n	<li>Specialization (Optional)</li>\r\n	<li>Advanced topics based on student interest (e.g., reinforcement learning, computer vision)</li>\r\n	<li>Final review, exam preparation, and career guidance sessions</li>\r\n</ul>\r\n', 'C1720509899.png', 'Active', 1, NULL, NULL, 'Advance', 'English, Hindi & Bengali', 'Diploma in Data Science : Learn AI, ML & Analytics', 'Diploma in Data Science online, Data Science course with certification, Learn Machine Learning & AI', 'Enroll in the Diploma in Data Science and master AI, Machine Learning, Big Data & Python. Get hands-on training & industry certification.'),
(15, 1, 8, 'Certificate in AI & Machine Learning : Learn AI, ML & Deep Learning', 'certificateinaimachinelearninglearnaimldeeplearning', '06 Months', 24000, 'Higher Secondary', '<p>✅ <strong>Become an AI &amp; Machine Learning Expert</strong> with this comprehensive certification course. Learn how to build <strong>AI models, implement Machine Learning algorithms, and work with Deep Learning frameworks</strong> to solve real-world problems.</p>\r\n\r\n<p>✅ This course is designed for <strong>beginners and professionals</strong> looking to gain expertise in <strong>AI-driven automation, predictive analytics, and data modeling</strong>.</p>\r\n\r\n<p>✅ The demand for <strong>AI &amp; ML professionals</strong> is skyrocketing in industries like <strong>healthcare, finance, e-commerce, robotics, and automation</strong>. Gain hands-on experience with <strong>Python, TensorFlow, Keras, and cloud-based AI solutions</strong> to advance your career.</p>\r\n\r\n<p>✅ Learn through <strong>real-world case studies, hands-on projects, and mentorship from AI industry experts</strong>. Earn a <strong>globally recognized AI &amp; ML certification</strong> and get job placement support.</p>\r\n\r\n<h3><strong>???? KEY HIGHLIGHTS</strong></h3>\r\n\r\n<p>✅ Live Classes &amp; Expert Mentorship<br />\r\n✅ Real-World AI Projects &amp; Case Studies<br />\r\n✅ Internship &amp; Job Placement Support<br />\r\n✅ Globally Recognized AI &amp; ML Certification</p>\r\n', '<p><strong>INTRODUCTION TO AI AND PYTHON BASICS</strong></p>\r\n\r\n<p><strong>Introduction To Artificial Intelligence</strong></p>\r\n\r\n<ul>\r\n	<li>Overview of Artificial Intelligence, history, and applications</li>\r\n	<li>Types of AI, basic concepts (agents, environments, problem-solving)</li>\r\n</ul>\r\n\r\n<p><strong>Python Fundamentals For AI</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to Python programming language, syntax, and data structures</li>\r\n	<li>Control structures (loops, conditionals), functions, and file handling in Python</li>\r\n</ul>\r\n\r\n<p><strong>DATA HANDLING AND VISUALIZATION FOR AI</strong></p>\r\n\r\n<p><strong>Data Handling With Numpy and Pandas</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to NumPy for numerical computing and arrays</li>\r\n	<li>Data manipulation and analysis with Pandas DataFrames</li>\r\n</ul>\r\n\r\n<p><strong>Data Visualization with Matplotlib and Seaborn</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to data visualization with Matplotlib</li>\r\n	<li>Advanced visualization techniques using Seaborn for exploratory data analysis</li>\r\n</ul>\r\n\r\n<p><strong>MACHINE LEARNING BASICS</strong></p>\r\n\r\n<p><strong>Introduction To Machine Learning</strong></p>\r\n\r\n<ul>\r\n	<li>Week 9: Overview of supervised and unsupervised learning</li>\r\n	<li>Week 10: Basics of regression and classification algorithms</li>\r\n</ul>\r\n\r\n<p><strong>Model Evaluation and Validation</strong></p>\r\n\r\n<ul>\r\n	<li>Evaluation metrics for regression and classification models</li>\r\n	<li>Techniques for model validation, cross-validation, and overfitting</li>\r\n</ul>\r\n\r\n<p><strong>ADVANCED MACHINE LEARNING TECHNIQUES</strong></p>\r\n\r\n<p><strong>Supervised Learning Algorithms</strong></p>\r\n\r\n<ul>\r\n	<li>Decision trees and ensemble methods (Random Forest, Gradient Boosting)</li>\r\n	<li>Support Vector Machines (SVM) and kernel methods</li>\r\n</ul>\r\n\r\n<p><strong>Unsupervised Learning Algorithms</strong></p>\r\n\r\n<ul>\r\n	<li>Clustering algorithms (K-means, hierarchical clustering)</li>\r\n	<li>Dimensionality reduction techniques (PCA, t-SNE)</li>\r\n</ul>\r\n\r\n<p><strong>DEEP LEARNING FUNDAMENTALS</strong></p>\r\n\r\n<p><strong>Introduction To Neural Networks</strong></p>\r\n\r\n<ul>\r\n	<li>Basics of artificial neural networks (ANN)</li>\r\n	<li>Training neural networks, backpropagation algorithm</li>\r\n</ul>\r\n\r\n<p><strong>Deep Learning With Tensorflow </strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to deep learning frameworks (TensorFlow)</li>\r\n	<li>Building and training deep neural networks for image classification</li>\r\n</ul>\r\n\r\n<p><strong>ADVANCED TOPICS IN AI AND CAPSTONE PROJECT</strong></p>\r\n\r\n<p><strong>Natural Language Processing (NLP)</strong></p>\r\n\r\n<ul>\r\n	<li>Week 21: Introduction to NLP, text preprocessing techniques</li>\r\n	<li>Week 22: Sentiment analysis, text classification, and named entity recognition</li>\r\n</ul>\r\n\r\n<p><strong>Weeks 23-24: Reinforcement Learning</strong></p>\r\n\r\n<ul>\r\n	<li>Week 23: Introduction to reinforcement learning concepts and terminology</li>\r\n	<li>Week 24: Q-learning algorithm, Markov decision processes (MDPs)</li>\r\n</ul>\r\n\r\n<p><strong>Weeks 25-26: Capstone Project</strong></p>\r\n\r\n<ul>\r\n	<li>Weeks 25: Students work on a real-world AI or ML project applying the concepts learned throughout the course</li>\r\n	<li>Week 26: Presentation of capstone projects, peer review, and feedback session.</li>\r\n</ul>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', 'C1720509958.png', 'Active', 1, NULL, NULL, 'Excellent', 'English, Hindi, Bengali', 'Certificate in AI & Machine Learning : WBJRS Academic Foundation', 'AI & Machine Learning certification online, Best AI & ML course with certification, Learn Artificial Intelligence & Deep Learning', 'Master Artificial Intelligence & Machine Learning with our AI & ML Certificate Course. Hands-on projects, expert mentorship & certification.'),
(16, 1, 10, 'Professional Certificate in Data Analytics', 'professionalcertificateindataanalytics', '05 Months', 15000, 'Higher Secondary', '<p>The <strong>Professional Certificate in Data Analytics</strong> is a career-focused technical course tailored for students and professionals looking to build strong analytical skills and thrive in today&rsquo;s data-driven world. With a structured curriculum and practical approach, this program covers essential tools and concepts including:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Excel for Data Management</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>SQL for Data Querying</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Python for Data Analysis</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Power BI for Data Visualization</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Delivered in <strong>English, Hindi, and Bengali</strong>, this multilingual program makes data analytics accessible to a wider audience. Whether you&#39;re just starting out or looking to upskill, our step-by-step guidance and real-world projects will help you build confidence and competency in handling, analyzing, and visualizing data effectively.</p>\r\n\r\n<h3>???? What You&rsquo;ll Gain:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>A solid foundation in data analytics</p>\r\n	</li>\r\n	<li>\r\n	<p>Hands-on project experience</p>\r\n	</li>\r\n	<li>\r\n	<p>A recognized certification to boost your resume</p>\r\n	</li>\r\n	<li>\r\n	<p>Industry-ready skills for jobs in analytics, business intelligence, and data science</p>\r\n	</li>\r\n</ul>\r\n\r\n<blockquote>\r\n<p><strong>Start your journey to becoming a data expert. Enroll now and unlock the power of data!</strong></p>\r\n</blockquote>\r\n', '<p><strong>Introduction to Data Analytics</strong></p>\r\n\r\n<ul>\r\n	<li>Overview of Data Analytics, importance, and applications in various industries</li>\r\n	<li>Understanding different types of data (structured, unstructured), data sources, and data formats</li>\r\n</ul>\r\n\r\n<p><strong>Introduction To Python</strong></p>\r\n\r\n<ul>\r\n	<li>Overview of Python, its importance, and applications</li>\r\n	<li>Basics of Python programming for Data Science (variables, data types, control structures)</li>\r\n</ul>\r\n\r\n<p><strong>Data Manipulation and Visualization(Python)</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to Pandas for data manipulation</li>\r\n	<li>Data visualization using Matplotlib and Seaborn</li>\r\n</ul>\r\n\r\n<p><strong>Data Cleaning and Preprocessing(Python)</strong></p>\r\n\r\n<ul>\r\n	<li>Handling missing data and outliers</li>\r\n	<li>Feature scaling, encoding categorical variables, and data normalization</li>\r\n</ul>\r\n\r\n<p><strong>Advanced Excel for Data ANALYSIS</strong></p>\r\n\r\n<ul>\r\n	<li>Excel Fundamentals for Data Analysis</li>\r\n	<li>Introduction to Microsoft Excel, navigation, basic functions (SUM, AVERAGE, etc.)</li>\r\n	<li>Data entry and formatting, sorting and filtering data, basic formulas and functions</li>\r\n	<li>Data Manipulation and Analysis in Excel</li>\r\n	<li>Advanced functions (VLOOKUP, IF, INDEX/MATCH), data validation, and conditional formatting</li>\r\n	<li>PivotTables and Pivot Charts for data summarization and visualization, data analysis with What-If analysis tools</li>\r\n	<li>Statistical Analysis in Excel</li>\r\n	<li>Descriptive statistics (mean, median, mode), frequency distributions, and histograms</li>\r\n	<li>Correlation analysis, regression analysis, and hypothesis testing using Excel</li>\r\n</ul>\r\n\r\n<p><strong>Data Visualization with Tableau</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to Tableau</li>\r\n	<li>Overview of Tableau, its interface, and different products (Tableau Desktop, Tableau Server)</li>\r\n	<li>Connecting to data sources, importing data into Tableau, and understanding Tableau data types</li>\r\n	<li>Creating Visualizations in Tableau</li>\r\n	<li>Building basic charts (bar charts, line charts, pie charts) and maps in Tableau</li>\r\n	<li>Advanced visualization techniques (dual-axis charts, treemaps, heat maps) and dashboard creation</li>\r\n</ul>\r\n\r\n<p><strong>Advanced Data Analysis with Power BI</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to Power BI</li>\r\n	<li>Overview of Power BI, its components (Power BI Desktop, Power BI Service), and data sources</li>\r\n	<li>Data preparation and transformation in Power BI using Power Query Editor</li>\r\n	<li>Building Reports and Dashboards in Power BI</li>\r\n	<li>Creating visualizations (bar charts, line charts, matrices) and formatting in Power BI</li>\r\n	<li>Interactive dashboards, slicers, and drill-down capabilities in Power BI</li>\r\n</ul>\r\n\r\n<p><strong>Advanced Techniques in Tableau and Power BI</strong></p>\r\n\r\n<ul>\r\n	<li>Advanced Calculations in Tableau</li>\r\n	<li>Calculated fields, table calculations, and LOD expressions in Tableau</li>\r\n	<li>Using parameters and advanced mapping techniques in Tableau</li>\r\n	<li>Advanced Data Modeling in Power BI</li>\r\n	<li>Introduction to DAX (Data Analysis Expressions) for creating calculated columns and measures</li>\r\n	<li>Advanced data modeling techniques, relationships, and hierarchies in Power BI</li>\r\n</ul>\r\n\r\n<p><strong>Capstone Project and Integration</strong></p>\r\n\r\n<ul>\r\n	<li>Capstone Project</li>\r\n	<li>Students work on a real-world data analytics project using Excel, Tableau, or Power BI</li>\r\n	<li>Presentation of capstone projects, peer review, and feedback sessions</li>\r\n	<li>Integration and Best Practices</li>\r\n	<li>Integrating Excel, Tableau, and Power BI for comprehensive data analysis workflows</li>\r\n	<li>Best practices in data analytics, data visualization, and storytelling with data</li>\r\n</ul>\r\n\r\n<p><strong>Bonus</strong></p>\r\n\r\n<ul>\r\n	<li>Learn How to use ChatGPT in Data Analytics</li>\r\n	<li>Interview preparation &amp; Personality development</li>\r\n</ul>\r\n', 'C1720510011.png', 'Active', 1, NULL, NULL, 'Excellent', 'English, Hindi, Bengali', 'Professional Certificate in Data Analytics – 5-Month Job-Ready Course', 'Professional Certificate in Data Analytics, Data Analytics Course for Beginners, Data Analytics Certification India', 'Master data analytics in 5 months with this certified course. Learn Python, SQL, Excel & Power BI in English, Hindi & Bengali. Enroll now!'),
(17, 1, 12, 'Professional Certificate in Full Stack Web Development', 'professionalcertificateinfullstackwebdevelopment', '6 Months', 24000, 'Higher Secondary', '<p>The <strong>Professional Certificate in Full Stack Web Development</strong> is a hands-on technical course designed to help you master both front-end and back-end development in just 5 months. Whether you&#39;re a student, a career switcher, or someone looking to enhance your web development skills, this course offers a comprehensive path to becoming a professional web developer.</p>\r\n\r\n<p>Learn to build fully functional, responsive, and dynamic web applications using the latest technologies and frameworks.</p>\r\n\r\n<h3>???? Technologies &amp; Tools Covered:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Frontend:</strong> HTML5, CSS3, JavaScript, Bootstrap, React.js</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Backend:</strong> Node.js, Express.js, REST APIs</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Database:</strong> MongoDB</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Version Control &amp; Deployment:</strong> Git, GitHub, Netlify, Heroku</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>???? What You&rsquo;ll Learn:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Build interactive websites and dynamic user interfaces</p>\r\n	</li>\r\n	<li>\r\n	<p>Create robust backend services and RESTful APIs</p>\r\n	</li>\r\n	<li>\r\n	<p>Integrate front-end and back-end systems</p>\r\n	</li>\r\n	<li>\r\n	<p>Work with real-time databases and deploy full-scale applications</p>\r\n	</li>\r\n	<li>\r\n	<p>Use Git for version control and collaboration</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>???? Why This Course?</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Real-world capstone projects &amp; portfolio building</p>\r\n	</li>\r\n	<li>\r\n	<p>Learn in your preferred language: English, Hindi, or Bengali</p>\r\n	</li>\r\n	<li>\r\n	<p>Job-oriented skills aligned with industry demand</p>\r\n	</li>\r\n	<li>\r\n	<p>Certification upon completion to boost your career</p>\r\n	</li>\r\n</ul>\r\n', '<p><strong>INTRODUCTION TO WEB DEVELOPMENT</strong></p>\r\n\r\n<p><strong>Overview Of Web Development Technologies</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to HTML, CSS, and JavaScript</li>\r\n	<li>Setting up development environment</li>\r\n</ul>\r\n\r\n<p><strong>Frontend Development Basics</strong></p>\r\n\r\n<ul>\r\n	<li>Deep dive into HTML and CSS</li>\r\n	<li>Responsive design principles</li>\r\n	<li>Introduction to CSS frameworks like Bootstrap</li>\r\n</ul>\r\n\r\n<p><strong>Intermediate Frontend Development</strong></p>\r\n\r\n<ul>\r\n	<li>Advanced CSS techniques (flexbox, grid)</li>\r\n	<li>Introduction to JavaScript frameworks/libraries (e.g., React.js or Vue.js)</li>\r\n	<li>Working with APIs</li>\r\n</ul>\r\n\r\n<p><strong>Backend Development Fundamentals</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to backend development concepts</li>\r\n	<li>Basics of server-side scripting languages (e.g., Node.js, Python with Flask/Django)</li>\r\n	<li>Working with databases (SQL/NoSQL)</li>\r\n</ul>\r\n\r\n<p><strong>Database Management</strong></p>\r\n\r\n<ul>\r\n	<li>Database design principles</li>\r\n	<li>SQL fundamentals</li>\r\n	<li>Introduction to NoSQL databases</li>\r\n</ul>\r\n\r\n<p><strong>Building Full Stack Applications (Part 1)</strong></p>\r\n\r\n<ul>\r\n	<li>Integrating frontend with backend</li>\r\n	<li>CRUD operations</li>\r\n	<li>Authentication and authorization</li>\r\n</ul>\r\n\r\n<p><strong>Advanced Frontend Development</strong></p>\r\n\r\n<ul>\r\n	<li>Advanced JavaScript concepts (ES6+)</li>\r\n	<li>State management in frontend frameworks</li>\r\n	<li>Optimizing frontend performance</li>\r\n</ul>\r\n\r\n<p><strong>Advanced Backend Development</strong></p>\r\n\r\n<ul>\r\n	<li>RESTful API design</li>\r\n	<li>Middleware and error handling</li>\r\n	<li>Security best practices</li>\r\n</ul>\r\n\r\n<p><strong>Testing and Debugging</strong></p>\r\n\r\n<ul>\r\n	<li>Writing unit tests</li>\r\n	<li>Debugging techniques</li>\r\n	<li>Test-driven development (TDD)</li>\r\n</ul>\r\n\r\n<p><strong>Deployment and DevOps</strong></p>\r\n\r\n<ul>\r\n	<li>Continuous Integration/Continuous Deployment (CI/CD)</li>\r\n	<li>Containerization (Docker)</li>\r\n	<li>Cloud services (AWS, Azure, etc.)</li>\r\n</ul>\r\n\r\n<p><strong>Version Control Systems</strong></p>\r\n\r\n<ul>\r\n	<li>Git basics and workflows</li>\r\n	<li>Collaboration using Git/Git Hub</li>\r\n	<li>Branching and merging strategies</li>\r\n</ul>\r\n\r\n<p><strong>Final Project</strong></p>\r\n\r\n<ul>\r\n	<li>Students work on a full-scale web development project</li>\r\n	<li>Implement all concepts learned throughout the course</li>\r\n	<li>Presentation and peer review of projects</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'C1720510047.png', 'Active', 1, NULL, NULL, 'Advance', 'English, Hindi & Bengali', 'Full Stack Web Development – 5-Month Certification Course', 'Full Stack Web Development Course, Learn Full Stack Development', 'Learn full stack web development in 5 months. Master HTML, CSS, JavaScript, React, Node.js & more. Build real-world projects. Enroll now!'),
(18, 1, 9, 'Advanced Certificate in Big Data & Analytics', 'advancedcertificateinbigdataanalytics', '3 Months', 16000, 'Higher Secondary', '<p>This course is designed for individuals looking to dive deep into large-scale data processing, analytics frameworks, and cutting-edge tools used by data engineers and analysts worldwide.</p>\r\n\r\n<p>In an era where every click, swipe, and stream generates data, this course helps you master how to store, process, and derive insights from that flood of information.</p>\r\n\r\n<h3><strong>???? What You&rsquo;ll Explore :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Big Data Ecosystem &ndash; Understand how big data works at scale</p>\r\n	</li>\r\n	<li>\r\n	<p>Hadoop Architecture &ndash; HDFS, MapReduce, Hive, Pig</p>\r\n	</li>\r\n	<li>\r\n	<p>Apache Spark &ndash; Real-time data streaming &amp; analytics</p>\r\n	</li>\r\n	<li>\r\n	<p>Data Wrangling &amp; Cleaning</p>\r\n	</li>\r\n	<li>\r\n	<p>Analytics with Python &amp; R (Basics)</p>\r\n	</li>\r\n	<li>\r\n	<p>Data Visualization Techniques</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>???? Who Should Enroll :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Aspiring Data Analysts</p>\r\n	</li>\r\n	<li>\r\n	<p>Data Engineers</p>\r\n	</li>\r\n	<li>\r\n	<p>IT Professionals looking to upskill</p>\r\n	</li>\r\n	<li>\r\n	<p>Graduates aiming for data-focused careers</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>???? What You Get :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Hands-on training with real datasets</p>\r\n	</li>\r\n	<li>\r\n	<p>Industry-relevant tools and frameworks</p>\r\n	</li>\r\n	<li>\r\n	<p>Certification to validate your expertise</p>\r\n	</li>\r\n	<li>\r\n	<p>Career guidance for roles like Big Data Analyst, Data Engineer, Hadoop Developer</p>\r\n	</li>\r\n</ul>\r\n', '<p><strong>INTRODUCTION TO BIG DATA AND ANALYTICS</strong></p>\r\n\r\n<ul>\r\n	<li>Overview of big data concepts and challenges</li>\r\n	<li>Introduction to analytics and its importance</li>\r\n	<li>Understanding different types of data (structured, semi-structured, unstructured)</li>\r\n</ul>\r\n\r\n<p><strong>BIG DATA TECHNOLOGIES</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to Hadoop ecosystem (HDFS, Map Reduce, YARN)</li>\r\n	<li>Overview of Apache Spark and its ecosystem</li>\r\n	<li>Understanding distributed computing principles</li>\r\n</ul>\r\n\r\n<p><strong>DATA PROCESSING AND MANAGEMENT</strong></p>\r\n\r\n<ul>\r\n	<li>Working with Hadoop Distributed File System (HDFS)</li>\r\n	<li>Processing data with MapReduce and Spark</li>\r\n	<li>Introduction to data ingestion and storage (Hive, Base)</li>\r\n</ul>\r\n\r\n<p><strong>DATA ANALYSIS AND VISUALIZATION</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to data analysis techniques (descriptive, diagnostic, predictive, prescriptive)</li>\r\n	<li>Data visualization principles and tools (e.g., Tableau, Power BI)</li>\r\n	<li>Exploratory data analysis (EDA)</li>\r\n</ul>\r\n\r\n<p><strong>MACHINE LEARNING FOR BIG DATA</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to machine learning algorithms</li>\r\n	<li>Implementing machine learning models with Spark MLib</li>\r\n	<li>Model evaluation and tuning in big data environments</li>\r\n</ul>\r\n\r\n<p><strong>ADVANCED TOPICS IN BIG DATA ANALYTICS</strong></p>\r\n\r\n<ul>\r\n	<li>Stream processing with technologies like Apache Kafka</li>\r\n	<li>Real-time analytics and monitoring</li>\r\n	<li>Introduction to cloud-based big data solutions (AWS, Azure)</li>\r\n</ul>\r\n\r\n<p><strong>CAPSTONE PROJECT</strong></p>\r\n\r\n<ul>\r\n	<li>Students work on a real-world big data analytics project</li>\r\n	<li>Applying all concepts learned throughout the course</li>\r\n	<li>Presentation and demonstration of the project</li>\r\n</ul>\r\n', 'C1720592880.png', 'Active', 1, NULL, NULL, 'Advance', 'English, Hindi & Bengali', 'Big Data & Analytics Course – 5-Month Advanced Certificate', 'Big Data & Analytics Course, Learn Hadoop and Spark, Big Data Certification in India', 'Learn Big Data, Hadoop, Spark, and data analytics tools in this 5-month expert-led course. Master high-demand skills. Enroll now!');
INSERT INTO `course` (`c_id`, `cat_id`, `subcat_id`, `course_name`, `search_name`, `duration`, `fees`, `eligibility`, `overview`, `curriculam`, `image`, `status`, `rating`, `lessons`, `topics`, `skill_level`, `language`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(19, 1, 14, 'Foundations of Robotics & Artificial Intelligence', 'foundationsofroboticsartificialintelligence', '6 Month + 1 Month Practical', 75000, 'Higher Secondary (Com Sc/Maths/Statistics/IT)', '<p>The <strong>Foundations of Robotics &amp; Artificial Intelligence</strong> course is your gateway into two of the most transformative technologies of our time. Designed for curious minds, tech beginners, and aspiring innovators, this 5-month course simplifies the complex world of automation, machine intelligence, and robotic systems.</p>\r\n\r\n<p>Explore how robots think, move, and interact with the world &mdash; and how artificial intelligence makes it all smarter.</p>\r\n\r\n<h3><strong>???? What You&#39;ll Learn :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Basics of Robotics &ndash; Sensors, actuators, control systems</p>\r\n	</li>\r\n	<li>\r\n	<p>Introduction to AI &ndash; What it is, how it works, and why it matters</p>\r\n	</li>\r\n	<li>\r\n	<p>Machine Learning Fundamentals &ndash; Supervised vs unsupervised learning</p>\r\n	</li>\r\n	<li>\r\n	<p>Robot Programming Basics</p>\r\n	</li>\r\n	<li>\r\n	<p>Ethics &amp; Future of AI</p>\r\n	</li>\r\n	<li>\r\n	<p>Hands-On Simulations and Mini Projects</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>???? Who Should Join :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Students interested in tech innovation</p>\r\n	</li>\r\n	<li>\r\n	<p>Beginners in STEM fields</p>\r\n	</li>\r\n	<li>\r\n	<p>Anyone fascinated by AI, robots, and automation</p>\r\n	</li>\r\n	<li>\r\n	<p>Creatives looking to explore tech-based applications</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>???? What You&rsquo;ll Walk Away With :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>A solid understanding of how robots and AI systems work</p>\r\n	</li>\r\n	<li>\r\n	<p>Mini projects that demonstrate core concepts</p>\r\n	</li>\r\n	<li>\r\n	<p>A foundation for future studies in robotics, AI, or data science</p>\r\n	</li>\r\n	<li>\r\n	<p>A certificate that proves you&rsquo;re ready for tomorrow</p>\r\n	</li>\r\n</ul>\r\n', '<p><strong>INTRODUCTION TO ROBOTICS</strong></p>\r\n\r\n<p><strong>OVERVIEW OF ROBOTICS</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to Robotics</li>\r\n	<li>History and Evolution of Robotics</li>\r\n	<li>Applications of Robotics</li>\r\n</ul>\r\n\r\n<p><strong>BASIC ELECTRONICS AND MECHANICS</strong></p>\r\n\r\n<ul>\r\n	<li>Fundamentals of Electronics</li>\r\n	<li>Introduction to Mechanics</li>\r\n	<li>Basic Components used in Robotics</li>\r\n</ul>\r\n\r\n<p><strong>SENSORS AND ACTUATORS</strong></p>\r\n\r\n<ul>\r\n	<li>Types of Sensors</li>\r\n	<li>Actuators and Motors</li>\r\n	<li>Interfacing Sensors and Actuators with Microcontrollers</li>\r\n</ul>\r\n\r\n<p><strong>INTRODUCTION TO MICROCONTROLLERS AND PROGRAMMING</strong></p>\r\n\r\n<ul>\r\n	<li>Basics of Microcontrollers</li>\r\n	<li>Programming Languages for Robotics (C/C++, Python)</li>\r\n	<li>Hands-on Programming Exercises</li>\r\n	<li>Month 2: Robotics Programming</li>\r\n</ul>\r\n\r\n<p><strong>ROBOT KINEMATICS</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to Kinematics</li>\r\n	<li>Forward and Inverse Kinematics</li>\r\n	<li>Kinematic Chains and Degrees of Freedom</li>\r\n</ul>\r\n\r\n<p><strong>ROBOT CONTROL</strong></p>\r\n\r\n<ul>\r\n	<li>Control Systems</li>\r\n	<li>PID Controllers</li>\r\n	<li>Feedback Control</li>\r\n</ul>\r\n\r\n<p><strong>ROBOT VISION</strong></p>\r\n\r\n<p><strong>BASICS OF COMPUTER VISION</strong></p>\r\n\r\n<ul>\r\n	<li>Image Processing Techniques</li>\r\n	<li>Introduction to OpenCV</li>\r\n</ul>\r\n\r\n<p><strong>ROBOT LOCALIZATION AND MAPPING</strong></p>\r\n\r\n<ul>\r\n	<li>Localization Techniques (GPS, SLAM)</li>\r\n	<li>Simultaneous Localization and Mapping (SLAM)</li>\r\n	<li>Hands-on SLAM Projects</li>\r\n</ul>\r\n\r\n<p><strong>ARTIFICIAL INTELLIGENCE FUNDAMENTALS</strong></p>\r\n\r\n<p><strong>Introduction to Artificial Intelligence</strong></p>\r\n\r\n<ul>\r\n	<li>Overview of AI</li>\r\n	<li>History and Evolution of AI</li>\r\n	<li>AI Applications in Robotics</li>\r\n</ul>\r\n\r\n<p><strong>MACHINE LEARNING BASICS</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to Machine Learning</li>\r\n	<li>Supervised, Unsupervised, and Reinforcement Learning</li>\r\n	<li>Hands-on ML Projects using Python libraries (scikit-learn, TensorFlow)</li>\r\n</ul>\r\n\r\n<p><strong>DEEP LEARNING FUNDAMENTALS</strong></p>\r\n\r\n<ul>\r\n	<li>Neural Networks Basics</li>\r\n	<li>Deep Learning Architectures (CNNs, RNNs)</li>\r\n	<li>Hands-on Deep Learning Projects</li>\r\n</ul>\r\n\r\n<p><strong>REINFORCEMENT LEARNING FOR ROBOTICS</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to Reinforcement Learning</li>\r\n	<li>Q-Learning, Policy Gradient Methods</li>\r\n	<li>Applications in Robotics</li>\r\n</ul>\r\n\r\n<p><strong>ADVANCED ROBOTICS AND AI</strong></p>\r\n\r\n<p><strong>Swarm Robotics</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to Swarm Intelligence</li>\r\n	<li>Swarm Robotics Algorithms</li>\r\n	<li>Applications and Challenges</li>\r\n</ul>\r\n\r\n<p><strong>Human-Robot Interaction</strong></p>\r\n\r\n<ul>\r\n	<li>Principles of Human-Robot Interaction</li>\r\n	<li>Designing Robot Interfaces</li>\r\n	<li>Ethical Considerations</li>\r\n</ul>\r\n\r\n<p><strong>Autonomous Systems</strong></p>\r\n\r\n<ul>\r\n	<li>Autonomous Navigation</li>\r\n	<li>Decision Making in Autonomous Systems</li>\r\n	<li>Case Studies on Autonomous Vehicles</li>\r\n</ul>\r\n\r\n<p><strong>Robotics in Industry</strong></p>\r\n\r\n<ul>\r\n	<li>Industrial Robotics</li>\r\n	<li>Automation in Manufacturing</li>\r\n	<li>Industry 4.0 and Robotics</li>\r\n</ul>\r\n\r\n<p><strong>ROBOTICS AND AI APPLICATIONS</strong></p>\r\n\r\n<p><strong>Healthcare Robotics</strong></p>\r\n\r\n<ul>\r\n	<li>Robotics in Surgery</li>\r\n	<li>Rehabilitation Robotics</li>\r\n	<li>Telemedicine Applications</li>\r\n</ul>\r\n\r\n<p><strong>Agricultural Robotics</strong></p>\r\n\r\n<ul>\r\n	<li>Precision Agriculture</li>\r\n	<li>Agricultural Drones</li>\r\n	<li>Robotics in Crop Monitoring and Management</li>\r\n</ul>\r\n\r\n<p><strong>Robotics in Space Exploration</strong></p>\r\n\r\n<ul>\r\n	<li>Space Robotics Challenges</li>\r\n	<li>Robotic Exploration Missions</li>\r\n	<li>Future Prospects</li>\r\n</ul>\r\n\r\n<p><strong>Robotics and AI Ethics</strong></p>\r\n\r\n<ul>\r\n	<li>Ethical Considerations in Robotics</li>\r\n	<li>Bias and Fairness in AI</li>\r\n	<li>Responsible AI Development</li>\r\n</ul>\r\n\r\n<p><strong>CAPSTONE PROJECTS AND CAREER GUIDANCE</strong></p>\r\n\r\n<p><strong>Capstone Project</strong></p>\r\n\r\n<p>Students work on a robotics or AI project of their choice, applying the knowledge and skills acquired throughout the course.</p>\r\n\r\n<p><strong>Career Guidance and Final Presentations</strong></p>\r\n\r\n<ul>\r\n	<li>Guidance on career paths in Robotics and AI</li>\r\n	<li>Presentation of Capstone Projects</li>\r\n	<li>Resume Building and Job Interview Tips</li>\r\n</ul>\r\n', 'C1720510094.png', 'Active', 1, NULL, NULL, 'Advance', 'English, Hindi & Bengali', 'Intro to Robotics & AI – 5-Month Certificate Course', 'Introduction to Robotics and AI, Robotics & Artificial Intelligence Course, Learn AI and Robotics', 'Step into the future! Learn the basics of robotics, AI, machine learning & automation in this 5-month beginner-friendly course.'),
(20, 1, 13, 'Professional Certificate in Cyber Information & Security', 'professionalcertificateincyberinformationsecurity', '6 Month + 6 Month Practical', 150000, 'Graduate', '<p>The <strong>Professional Certificate in Cyber Information &amp; Security</strong> is a 5-month technical course designed to equip you with the tools and tactics used to defend digital systems from cyber threats. From ethical hacking to network security and data protection, this course provides a comprehensive foundation in the fast-growing field of cyber security.</p>\r\n\r\n<p>Cybercrime is rising - this is your chance to learn how to stop it.</p>\r\n\r\n<h3><strong>???? What You&#39;ll Learn :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Fundamentals of Cyber Security</p>\r\n	</li>\r\n	<li>\r\n	<p>Network Security &amp; Firewalls</p>\r\n	</li>\r\n	<li>\r\n	<p>Ethical Hacking Basics</p>\r\n	</li>\r\n	<li>\r\n	<p>Malware, Phishing &amp; Ransomware Defense</p>\r\n	</li>\r\n	<li>\r\n	<p>Data Encryption &amp; Cryptography</p>\r\n	</li>\r\n	<li>\r\n	<p>Cyber Laws &amp; Digital Ethics</p>\r\n	</li>\r\n	<li>\r\n	<p>Incident Detection &amp; Response</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>???? Ideal For :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Students interested in IT and cyber careers</p>\r\n	</li>\r\n	<li>\r\n	<p>Aspiring ethical hackers</p>\r\n	</li>\r\n	<li>\r\n	<p>Tech professionals upgrading security skills</p>\r\n	</li>\r\n	<li>\r\n	<p>Anyone serious about digital privacy &amp; data protection</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>???? What You&rsquo;ll Gain :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Hands-on experience with security tools</p>\r\n	</li>\r\n	<li>\r\n	<p>In-demand skills to protect systems and data</p>\r\n	</li>\r\n	<li>\r\n	<p>A certificate recognized in the tech industry</p>\r\n	</li>\r\n	<li>\r\n	<p>A stepping stone into cyber analyst, SOC analyst, or ethical hacker roles</p>\r\n	</li>\r\n</ul>\r\n', '<p><strong>INTRODUCTION TO CYBERSECURITY</strong></p>\r\n\r\n<p><strong>Overview of Cybersecurity</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to Cyber Threats and Attacks</li>\r\n	<li>Importance of Cybersecurity in Modern Organizations</li>\r\n</ul>\r\n\r\n<p><strong>Basics of Information Security</strong></p>\r\n\r\n<ul>\r\n	<li>Confidentiality, Integrity, and Availability (CIA Triad)</li>\r\n	<li>Security Policies and Procedures</li>\r\n	<li>Risk Management Fundamentals</li>\r\n</ul>\r\n\r\n<p><strong>Cryptography Fundamentals</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to Cryptography</li>\r\n	<li>Symmetric and Asymmetric Cryptography</li>\r\n	<li>Hash Functions and Digital Signatures</li>\r\n</ul>\r\n\r\n<p><strong>Network Security Basics</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to Network Security</li>\r\n	<li>Common Network Attacks and Defenses</li>\r\n	<li>Secure Network Design Principles</li>\r\n</ul>\r\n\r\n<p><strong>Secure Systems and Infrastructure</strong></p>\r\n\r\n<ul>\r\n	<li>Operating System Security</li>\r\n	<li>Securing Operating Systems (Windows, Linux)</li>\r\n	<li>User Authentication and Access Control</li>\r\n	<li>Patch Management and Vulnerability Assessment</li>\r\n</ul>\r\n\r\n<p><strong>Secure Software Development</strong></p>\r\n\r\n<ul>\r\n	<li>Secure Coding Practices</li>\r\n	<li>Threat Modeling</li>\r\n	<li>Code Review and Testing Techniques</li>\r\n</ul>\r\n\r\n<p><strong>Database Security</strong></p>\r\n\r\n<ul>\r\n	<li>Database Security Fundamentals</li>\r\n	<li>Access Control and Encryption</li>\r\n	<li>Database Auditing and Monitoring</li>\r\n</ul>\r\n\r\n<p><strong>Cloud Security</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to Cloud Computing Security</li>\r\n	<li>Securing Cloud Infrastructure and Services</li>\r\n	<li>Identity and Access Management in the Cloud</li>\r\n</ul>\r\n\r\n<p><strong>Threat Detection and Incident Response</strong></p>\r\n\r\n<ul>\r\n	<li>Intrusion Detection and Prevention Systems (IDPS)</li>\r\n	<li>Introduction to IDPS</li>\r\n	<li>Types of IDPS and Deployment Strategies</li>\r\n	<li>IDPS Evasion Techniques</li>\r\n</ul>\r\n\r\n<p><strong>Security Information and Event Management (SIEM)</strong></p>\r\n\r\n<ul>\r\n	<li>SIEM Fundamentals</li>\r\n	<li>Log Management and Analysis</li>\r\n	<li>Correlation and Alerting</li>\r\n</ul>\r\n\r\n<p><strong>Incident Response and Handling</strong></p>\r\n\r\n<ul>\r\n	<li>Incident Response Process</li>\r\n	<li>Incident Triage and Investigation</li>\r\n	<li>Containment, Eradication, and Recovery</li>\r\n</ul>\r\n\r\n<p><strong>Digital Forensics</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to Digital Forensics</li>\r\n	<li>Forensic Tools and Techniques</li>\r\n	<li>Chain of Custody and Legal Considerations</li>\r\n</ul>\r\n\r\n<p><strong>ADVANCED CYBER SECURITY TOPICS</strong></p>\r\n\r\n<p><strong>Threat Intelligence</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to Threat Intelligence</li>\r\n	<li>Threat Intelligence Sources and Analysis</li>\r\n	<li>Threat Hunting Techniques</li>\r\n</ul>\r\n\r\n<p><strong>Penetration Testing and Ethical Hacking</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to Penetration Testing</li>\r\n	<li>Penetration Testing Methodologies</li>\r\n	<li>Hands-on Penetration Testing Exercises</li>\r\n</ul>\r\n\r\n<p><strong>Web Application Security</strong></p>\r\n\r\n<ul>\r\n	<li>Common Web Application Attacks (SQL Injection, XSS)</li>\r\n	<li>Web Application Firewalls (WAF)</li>\r\n	<li>Secure Software Development Lifecycle (SDLC)</li>\r\n</ul>\r\n\r\n<p><strong>Mobile Security</strong></p>\r\n\r\n<ul>\r\n	<li>Mobile Threat Landscape</li>\r\n	<li>Securing Mobile Devices and Applications</li>\r\n	<li>Mobile Device Management (MDM)</li>\r\n</ul>\r\n\r\n<p><strong>SECURITY GOVERNANCE AND COMPLIANCE</strong></p>\r\n\r\n<p><strong>Security Governance Frameworks</strong></p>\r\n\r\n<ul>\r\n	<li>Introduction to Security Governance</li>\r\n	<li>Frameworks (ISO 27001, NIST, COBIT)</li>\r\n	<li>Regulatory Compliance Requirements</li>\r\n</ul>\r\n\r\n<p><strong>Privacy and Data Protection</strong></p>\r\n\r\n<ul>\r\n	<li>Data Privacy Regulations (GDPR, CCPA)</li>\r\n	<li>Data Classification and Handling</li>\r\n	<li>Privacy by Design Principles</li>\r\n</ul>\r\n\r\n<p><strong>Security Awareness and Training</strong></p>\r\n\r\n<ul>\r\n	<li>Importance of Security Awareness</li>\r\n	<li>Developing Security Awareness Programs</li>\r\n	<li>Training Methods and Best Practices</li>\r\n</ul>\r\n\r\n<p><strong>Business Continuity and Disaster Recovery</strong></p>\r\n\r\n<ul>\r\n	<li>Business Continuity Planning (BCP)</li>\r\n	<li>Disaster Recovery Planning (DRP)</li>\r\n	<li>Testing and Maintenance of BCP/DRP Plans</li>\r\n</ul>\r\n\r\n<p><strong>CAPSTONE PROJECTS AND CAREER PREPARATION</strong></p>\r\n\r\n<p><strong>Capstone Project</strong></p>\r\n\r\n<ul>\r\n	<li>Students work on a cybersecurity project applying knowledge and skills acquired throughout the course.</li>\r\n</ul>\r\n\r\n<p><strong>Career Preparation and Final Presentations</strong></p>\r\n\r\n<ul>\r\n	<li>Resume Building and Interview Skills Workshop</li>\r\n	<li>Presentation of Capstone Projects</li>\r\n	<li>Guidance on Career Paths in Cybersecurity</li>\r\n</ul>\r\n', 'C1720592714.png', 'Active', 1, NULL, NULL, 'Advance', 'English, Hindi & Bengali', 'Cyber Security Course – 5 Months Professional Certificate', 'Cyber Security Certification Course, Cyber Information and Security, Learn Ethical Hacking', 'Learn cyber security, ethical hacking, network protection & data privacy. Get certified in 5 months. Build your future in cyber defense!'),
(21, 2, 27, 'Tally Prime', 'tallyprime', '03 Months', 4500, 'Higher Secondary', '<p><strong>Tally Prime with GST</strong> is a short-term, practical training program designed to help you master modern accounting and business management using India&rsquo;s most popular software &mdash; Tally Prime.</p>\r\n\r\n<p>Whether you&#39;re a student, fresher, or small business operator, this course equips you with the essential skills to manage accounts, inventory, payroll, and GST compliance with ease.</p>\r\n\r\n<h3><strong>???? What You&rsquo;ll Learn :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Basics of Accounting &amp; Tally Interface</p>\r\n	</li>\r\n	<li>\r\n	<p>Company Creation &amp; Ledger Management</p>\r\n	</li>\r\n	<li>\r\n	<p>Voucher Entries (Sales, Purchase, Payments, etc.)</p>\r\n	</li>\r\n	<li>\r\n	<p>Inventory Management in Tally</p>\r\n	</li>\r\n	<li>\r\n	<p>GST Setup &amp; Transactions</p>\r\n	</li>\r\n	<li>\r\n	<p>Bank Reconciliation &amp; Payroll</p>\r\n	</li>\r\n	<li>\r\n	<p>Generating Financial Reports (P&amp;L, Balance Sheet, etc.)</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>???? Ideal For :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Commerce &amp; finance students</p>\r\n	</li>\r\n	<li>\r\n	<p>Small business owners</p>\r\n	</li>\r\n	<li>\r\n	<p>Aspiring accountants</p>\r\n	</li>\r\n	<li>\r\n	<p>Job seekers in finance &amp; admin roles</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>???? Outcomes :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Certification in Tally Prime with GST</p>\r\n	</li>\r\n	<li>\r\n	<p>Practical skills for accounting jobs</p>\r\n	</li>\r\n	<li>\r\n	<p>Confidence to handle real business transactions</p>\r\n	</li>\r\n	<li>\r\n	<p>Valuable resume boost for finance roles</p>\r\n	</li>\r\n</ul>\r\n', '<p><strong>Week 1-2: Introduction to Tally Prime and Basic Accounting Principles</strong></p>\r\n\r\n<ul>\r\n	<li>Overview of Tally Prime: Understanding its features and interface</li>\r\n	<li>Setting up a company in Tally Prime</li>\r\n	<li>Chart of Accounts: Creating and managing ledgers, groups, and sub-groups</li>\r\n	<li>Introduction to Accounting Principles: Understanding debit, credit, assets, liabilities, equity, and their impact on financial transactions</li>\r\n	<li>Recording Transactions: Entry of sales, purchases, payments, and receipts in Tally Prime Practice exercises and quizzes to reinforce learning</li>\r\n</ul>\r\n\r\n<p><strong>Week 3-4: Advanced Accounting and Inventory Management</strong></p>\r\n\r\n<ul>\r\n	<li>Advanced Voucher Entries: Handling contra, payment, receipt, and journal vouchers</li>\r\n	<li>Inventory Management: Creating stock items, stock groups, units of measure, and managing stock transactions</li>\r\n	<li>Understanding GST (Goods and Services Tax) in India: Configuring GST in Tally Prime, filing GST returns, and GST reconciliation</li>\r\n	<li>Practical exercises on advanced voucher entries and inventory management</li>\r\n</ul>\r\n\r\n<p><strong>Week 5-6: Financial Reporting and Analysis</strong></p>\r\n\r\n<ul>\r\n	<li>Financial Statements: Generating and customizing balance sheets, profit and loss statements, cash flow statements, and trial balances in Tally Prime</li>\r\n	<li>Ratio Analysis: Understanding key financial ratios for assessing the financial health of a company</li>\r\n	<li>Budgeting and Forecasting: Setting up budgets, variance analysis, and forecasting future financial performance</li>\r\n	<li>Case studies and real-world examples for financial analysis and reporting</li>\r\n</ul>\r\n\r\n<p><strong>Week 7-8: Payroll Management and Compliance</strong></p>\r\n\r\n<ul>\r\n	<li>Payroll Processing: Configuring payroll in Tally Prime, managing employee profiles, attendance, and salary processing</li>\r\n	<li>Statutory Compliance: Understanding PF (Provident Fund), ESI (Employee State Insurance), TDS (Tax Deducted at Source), and other statutory requirements in India</li>\r\n	<li>Generating payroll reports and statutory reports in Tally Prime</li>\r\n	<li>Practical sessions on payroll processing and compliance management</li>\r\n</ul>\r\n\r\n<p><strong>Week 9-10: Advanced Features and Customizations</strong></p>\r\n\r\n<ul>\r\n	<li>Tally Prime Customization: Creating custom vouchers, fields, and reports to suit specific business needs</li>\r\n	<li>Security and Access Control: Managing user roles, permissions, and data security in Tally Prime</li>\r\n	<li>Multi-Currency Transactions: Configuring and managing transactions in multiple currencies</li>\r\n	<li>Integration with other software and tools for seamless data exchange</li>\r\n	<li>Hands-on exercises on customization and integration</li>\r\n</ul>\r\n\r\n<p><strong>Week 11-12: Project Work and Assessment</strong></p>\r\n\r\n<ul>\r\n	<li>Final Project: Applying Tally Prime skills to solve real-world accounting and financial management challenges</li>\r\n	<li>Presentation of Projects: Students present their projects showcasing their understanding and proficiency in Tally Prime</li>\r\n	<li>Assessment: Written exam and practical assessment to evaluate comprehension and application of Tally Prime concepts</li>\r\n	<li>Certification: Successful participants receive a certificate of completion in Tally Prime Essentials</li>\r\n</ul>\r\n', 'C1730107243.png', 'Active', 1, NULL, NULL, 'Excellent', 'English, Hindi, Bengali', 'Tally Prime with GST – 3 Months Accounting Certification', 'Tally Prime Course, Learn Tally with GST, Tally Accounting Training, Tally Prime Certification', 'Learn Tally Prime, GST, and accounting basics in 3 months. Perfect for beginners & job seekers in finance. Get certified. Enroll now!'),
(22, 2, 27, 'Certificate in Tally with GST & E-Filing', 'certificateintallywithgste-filing', '06 Months', 10000, 'Higher Secondary', '<p>The <strong>Certificate in Tally with GST &amp; E-Filing</strong> is a practical and industry-relevant program designed to give you hands-on skills in computerized accounting, tax compliance, and online return filing. It&rsquo;s perfect for anyone looking to work in accounts, taxation, or back-office roles.</p>\r\n\r\n<p>Learn how to manage accounts in <strong>Tally Prime</strong>, handle <strong>GST transactions</strong>, and file returns online through <strong>government portals</strong> &mdash; all in just 3 months.</p>\r\n\r\n<h3><strong>???? What You&rsquo;ll Learn :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Tally Prime Fundamentals &amp; Interface</p>\r\n	</li>\r\n	<li>\r\n	<p>Ledger &amp; Voucher Entry (Sales, Purchases, etc.)</p>\r\n	</li>\r\n	<li>\r\n	<p>GST Setup &amp; Transactions in Tally</p>\r\n	</li>\r\n	<li>\r\n	<p>Generating GST Reports (GSTR-1, GSTR-3B, etc.)</p>\r\n	</li>\r\n	<li>\r\n	<p>Income Tax Basics &amp; Computation</p>\r\n	</li>\r\n	<li>\r\n	<p>Online GST &amp; ITR Filing (via portal walkthroughs)</p>\r\n	</li>\r\n	<li>\r\n	<p>MIS Reports, Payroll, Bank Reconciliation</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>???? Ideal For :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Commerce &amp; B.Com students</p>\r\n	</li>\r\n	<li>\r\n	<p>Account assistants &amp; admin roles</p>\r\n	</li>\r\n	<li>\r\n	<p>Entrepreneurs managing their books</p>\r\n	</li>\r\n	<li>\r\n	<p>Anyone needing GST &amp; E-filing knowledge</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>???? Course Outcomes :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Professional certification in Tally with GST &amp; E-Filing</p>\r\n	</li>\r\n	<li>\r\n	<p>Ability to handle real-world accounting tasks</p>\r\n	</li>\r\n	<li>\r\n	<p>Practical experience in taxation &amp; return filing</p>\r\n	</li>\r\n	<li>\r\n	<p>Job readiness for accounts &amp; finance roles</p>\r\n	</li>\r\n</ul>\r\n', '<p><strong>Week 1-2: Introduction to Tally Prime and Basic Accounting Principles</strong></p>\r\n\r\n<ul>\r\n	<li>Overview of Tally Prime: Features, interface, and navigation</li>\r\n	<li>Setting up a company in Tally Prime</li>\r\n	<li>Chart of Accounts: Creating ledgers, groups, and sub-groups</li>\r\n	<li>Basic Accounting Principles: Understanding debit, credit, assets, liabilities, equity, and their impact on financial transactions</li>\r\n	<li>Recording Transactions: Entry of sales, purchases, payments, and receipts in Tally Prime</li>\r\n	<li>Practice exercises and quizzes</li>\r\n</ul>\r\n\r\n<p><strong>Week 3-4: Advanced Accounting and Inventory Management</strong></p>\r\n\r\n<ul>\r\n	<li>Advanced Voucher Entries: Contra, payment, receipt, and journal vouchers</li>\r\n	<li>Inventory Management: Stock items, stock groups, units of measure, and stock transactions</li>\r\n	<li>GST Configuration: Understanding GST in India, configuring GST in Tally Prime, and GST invoicing</li>\r\n	<li>GST Returns Filing: Filing GST returns using Tally Prime and understanding GST reconciliation</li>\r\n	<li>Practical exercises on advanced accounting and inventory management with GST</li>\r\n</ul>\r\n\r\n<p><strong>Week 5-6: Financial Reporting and Analysis</strong></p>\r\n\r\n<ul>\r\n	<li>Financial Statements: Generating balance sheets, profit and loss statements, cash flow statements, and trial balances in Tally Prime</li>\r\n	<li>Ratio Analysis: Understanding key financial ratios for financial analysis</li>\r\n	<li>Budgeting and Forecasting: Setting up budgets and forecasting future financial performance</li>\r\n	<li>Case studies and real-world examples for financial reporting and analysis</li>\r\n</ul>\r\n\r\n<p><strong>Week 7-8: Income Tax Fundamentals</strong></p>\r\n\r\n<ul>\r\n	<li>Basics of Income Tax: Understanding income tax laws and regulations in India</li>\r\n	<li>Income Tax Computation: Calculating income tax for individuals and businesses</li>\r\n	<li>Deductions and Exemptions: Understanding deductions and exemptions under the Income Tax Act</li>\r\n	<li>TDS (Tax Deducted at Source): TDS provisions and compliance requirements</li>\r\n	<li>Practical exercises on income tax computation and TDS in Tally Prime</li>\r\n</ul>\r\n\r\n<p><strong>Week 9-10: Advanced Income Tax and E-Filing</strong></p>\r\n\r\n<ul>\r\n	<li>Advanced Income Tax Concepts: Capital gains, income from other sources, deductions under various sections</li>\r\n	<li>E-Filing: Introduction to income tax e-filing in India, filing income tax returns electronically using Tally Prime</li>\r\n	<li>Handling Notices and Assessments: Understanding income tax notices and responding to them effectively</li>\r\n	<li>Practical sessions on advanced income tax calculations, e-filing, and handling notices</li>\r\n</ul>\r\n\r\n<p><strong>Week 11-12: GST Audit and Compliance</strong></p>\r\n\r\n<ul>\r\n	<li>GST Audit: Understanding GST audit requirements and procedures</li>\r\n	<li>GST Compliance: Ensuring compliance with GST laws and regulations</li>\r\n	<li>Generating GST audit reports and filing GST annual returns using Tally Prime</li>\r\n	<li>Practical exercises on GST audit and compliance management</li>\r\n</ul>\r\n\r\n<p><strong>Week 13-14: Customization and Integration</strong></p>\r\n\r\n<ul>\r\n	<li>Tally Prime Customization: Creating custom vouchers, fields, and reports</li>\r\n	<li>Security and Access Control: Managing user roles, permissions, and data security</li>\r\n	<li>Integration with other software and tools for seamless data exchange</li>\r\n	<li>Hands-on exercises on customization and integration</li>\r\n</ul>\r\n\r\n<p><strong>Week 15-24: Project Work and Assessment</strong></p>\r\n\r\n<ul>\r\n	<li>Final Project: Applying Tally Prime skills to solve real-world accounting, GST, and income tax challenges</li>\r\n	<li>Project Presentation: Presenting projects showcasing understanding and proficiency in Tally Prime with GST and income tax</li>\r\n	<li>Assessment: Written exam and practical assessment to evaluate comprehension and application of concepts</li>\r\n	<li>Certification: Successful participants receive a certificate of completion in Tally Prime with GST, Income Tax, and E-Filing</li>\r\n</ul>\r\n', 'C1730107566.png', 'Active', 1, NULL, NULL, 'Excellent', 'English, Hindi, Bengali', 'Tally with GST & E-Filing – Practical Accounting Course', 'Tally with GST Course, Tally and E-Filing Training, Learn GST Return Filing', 'Learn Tally, GST, and E-Filing in this hands-on accounting course. Master real-world finance tools in 3 months. Get certified & job-ready!'),
(23, 2, 27, 'Diploma in Financial Accounting with Tally, GST & Advanced Excel', 'diplomainfinancialaccountingwithtallygstadvancedexcel', '09 Months', 17500, 'Higher Secondary', '<p>The <strong>Diploma in Financial Accounting with Tally, GST &amp; Advanced Excel</strong> is a comprehensive course tailored for aspiring accountants, finance professionals, and job seekers. This all-in-one diploma covers everything from manual accounting principles to digital bookkeeping using Tally Prime, GST compliance, and Excel-based financial analysis.</p>\r\n\r\n<p>It bridges the gap between academic learning and real-world financial management.</p>\r\n\r\n<h3><strong>???? What You&rsquo;ll Learn :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Accounting Principles &amp; Fundamentals</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tally Prime &ndash; Complete Practical Training</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>GST Setup, Transactions &amp; Reports (GSTR-1, GSTR-3B, etc.)</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Income Tax &amp; TDS Basics</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>E-Filing Procedures for GST &amp; ITR</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Advanced Excel for Accounting &amp; MIS</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Formulas, Pivot Tables, VLOOKUP, Data Validation</p>\r\n		</li>\r\n		<li>\r\n		<p>Financial Dashboards &amp; Reporting</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>???? Best Suited For :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Commerce students &amp; graduates</p>\r\n	</li>\r\n	<li>\r\n	<p>Accounting professionals upgrading skills</p>\r\n	</li>\r\n	<li>\r\n	<p>Admin &amp; back-office executives</p>\r\n	</li>\r\n	<li>\r\n	<p>Small business owners</p>\r\n	</li>\r\n	<li>\r\n	<p>Anyone seeking jobs in accounting, finance, or data roles</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>???? Course Benefits :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Diploma certification for enhanced employability</p>\r\n	</li>\r\n	<li>\r\n	<p>Hands-on training with accounting tools</p>\r\n	</li>\r\n	<li>\r\n	<p>Resume-boosting Excel &amp; GST skills</p>\r\n	</li>\r\n	<li>\r\n	<p>Practical exposure to business and tax compliance</p>\r\n	</li>\r\n	<li>\r\n	<p>Job readiness for roles like Accountant, MIS Executive, or Tax Assistant</p>\r\n	</li>\r\n</ul>\r\n', '<p><strong>Week 1-2: Introduction to Tally Prime and Basic Accounting Principles</strong></p>\r\n\r\n<ul>\r\n	<li>Overview of Tally Prime: Features, interface, and navigation</li>\r\n	<li>Setting up a company in Tally Prime</li>\r\n	<li>Chart of Accounts: Creating ledgers, groups, and sub-groups</li>\r\n	<li>Basic Accounting Principles: Understanding debit, credit, assets, liabilities, equity, and their impact on financial transactions</li>\r\n	<li>Recording Transactions: Entry of sales, purchases, payments, and receipts in Tally Prime</li>\r\n	<li>Practice exercises and quizzes</li>\r\n</ul>\r\n\r\n<p><strong>Week 3-4: Advanced Accounting and Inventory Management</strong></p>\r\n\r\n<ul>\r\n	<li>Advanced Voucher Entries: Contra, payment, receipt, and journal vouchers</li>\r\n	<li>Inventory Management: Stock items, stock groups, units of measure, and stock transactions</li>\r\n	<li>GST Configuration: Understanding GST in India, configuring GST in Tally Prime, and GST invoicing</li>\r\n	<li>GST Returns Filing: Filing GST returns using Tally Prime and understanding GST reconciliation</li>\r\n	<li>Practical exercises on advanced accounting and inventory management with GST</li>\r\n</ul>\r\n\r\n<p><strong>Week 5-6: Financial Reporting and Analysis with Advanced Exce</strong>l</p>\r\n\r\n<ul>\r\n	<li>Financial Statements: Generating balance sheets, profit and loss statements, cash flow statements, and trial balances in Tally Prime</li>\r\n	<li>Ratio Analysis: Understanding key financial ratios for financial analysis</li>\r\n	<li>Budgeting and Forecasting: Setting up budgets and forecasting future financial performance</li>\r\n	<li>Introduction to Advanced Excel: Basic formulas, functions, data analysis tools, and pivot tables</li>\r\n	<li>Case studies and real-world examples for financial reporting and analysis using Excel</li>\r\n</ul>\r\n\r\n<p><strong>Week 7-8: Income Tax Fundamentals and Excel Data Manipulation</strong></p>\r\n\r\n<ul>\r\n	<li>Basics of Income Tax: Understanding income tax laws and regulations in India</li>\r\n	<li>Income Tax Computation: Calculating income tax for individuals and businesses</li>\r\n	<li>Deductions and Exemptions: Understanding deductions and exemptions under the Income Tax Act</li>\r\n	<li>TDS (Tax Deducted at Source): TDS provisions and compliance requirements</li>\r\n	<li>Data Manipulation in Excel: Advanced data manipulation techniques, including VLOOKUP, INDEX-MATCH, and conditional formatting</li>\r\n	<li>Practical exercises on income tax computation, TDS, and data manipulation in Excel</li>\r\n</ul>\r\n\r\n<p><strong>Week 9-10: Advanced Income Tax, E-Filing, and Excel Data Analysis</strong></p>\r\n\r\n<ul>\r\n	<li>Advanced Income Tax Concepts: Capital gains, income from other sources, deductions under various sections</li>\r\n	<li>E-Filing: Introduction to income tax e-filing in India, filing income tax returns electronically using Tally Prime</li>\r\n	<li>Handling Notices and Assessments: Understanding income tax notices and responding to them effectively</li>\r\n	<li>Advanced Excel Data Analysis: Advanced pivot table techniques, data validation, and what-if analysis</li>\r\n	<li>Practical sessions on advanced income tax calculations, e-filing, and data analysis in Excel</li>\r\n</ul>\r\n\r\n<p><strong>Week 11-12: GST Audit and Compliance with Excel Macros</strong></p>\r\n\r\n<ul>\r\n	<li>GST Audit: Understanding GST audit requirements and procedures</li>\r\n	<li>GST Compliance: Ensuring compliance with GST laws and regulations</li>\r\n	<li>Generating GST audit reports and filing GST annual returns using Tally Prime</li>\r\n	<li>Introduction to Excel Macros: Automating repetitive tasks in Excel using macros</li>\r\n	<li>Hands-on exercises on GST audit and compliance management and Excel macro programming</li>\r\n</ul>\r\n\r\n<p><strong>Week 13-22: Advanced Excel for Financial Analysis and Reporting (Continued)</strong></p>\r\n\r\n<ul>\r\n	<li>Advanced Excel Functions: Array formulas, logical functions, and text functions</li>\r\n	<li>Financial Modeling: Building financial models in Excel for forecasting and scenario analysis</li>\r\n	<li>Dashboard Creation: Designing interactive dashboards to visualize financial data</li>\r\n	<li>Excel VBA (Visual Basic for Applications): Introduction to VBA programming for Excel automation</li>\r\n	<li>Project Work: Applying advanced Excel skills to solve complex financial analysis and reporting tasks</li>\r\n</ul>\r\n\r\n<p><strong>Week 23-32: Customization and Integration</strong></p>\r\n\r\n<ul>\r\n	<li>Tally Prime Customization: Creating custom vouchers, fields, and reports</li>\r\n	<li>Security and Access Control: Managing user roles, permissions, and data security</li>\r\n	<li>Integration with other software and tools for seamless data exchange</li>\r\n	<li>Hands-on exercises on customization, integration, and troubleshooting</li>\r\n</ul>\r\n\r\n<p><strong>Week 33-36: Project Work and Assessment </strong></p>\r\n\r\n<ul>\r\n	<li>Final Project: Applying Tally Prime, GST, Income Tax, E-Filing, and Advanced Excel skills to solve real-world financial management challenges</li>\r\n	<li>Project Presentation: Presenting projects showcasing understanding and proficiency in the course topics</li>\r\n	<li>Assessment: Written exam and practical assessment to evaluate comprehension and application of concepts</li>\r\n	<li>Certification: Successful participants receive a certificate of completion in Comprehensive Financial Management with Tally Prime, GST, Income Tax, E-Filing, and Advanced Excel</li>\r\n</ul>\r\n', 'C1730115979.png', 'Active', 1, NULL, NULL, 'Excellent', 'English, Hindi, Bengali', 'Diploma in Financial Accounting – Tally, GST & Excel Training', 'Financial Accounting Diploma Course, Tally GST and Excel Training, Accounting with Advanced Excel, Accounting Diploma India', 'Master accounting with Tally, GST, and Excel. A complete finance diploma for job seekers & professionals. Learn, practice, and get certified.'),
(24, 3, 28, 'Certificate in Spoken English & Personality Development', 'certificateinspokenenglishpersonalitydevelopment', '12 months', 6000, 'Secondary', '<p>The <strong>Certificate in Spoken English &amp; Personality Development</strong> is a powerful 3-month course designed to enhance the way you communicate, present yourself, and connect with others &mdash; both personally and professionally.</p>\r\n\r\n<p>Whether you&#39;re a student, job seeker, or working professional, this course helps you build the <strong>confidence and clarity</strong> to succeed in today&rsquo;s fast-paced world.</p>\r\n\r\n<h3><strong>????️ What You&#39;ll Learn :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Fluent English Speaking &ndash; Everyday conversations, vocabulary, pronunciation</p>\r\n	</li>\r\n	<li>\r\n	<p>Grammar Made Easy &ndash; Practical tenses, sentence formation, common errors</p>\r\n	</li>\r\n	<li>\r\n	<p>Public Speaking &amp; Presentation Skills</p>\r\n	</li>\r\n	<li>\r\n	<p>Interview Preparation &amp; GD Practice</p>\r\n	</li>\r\n	<li>\r\n	<p>Body Language, Grooming &amp; Etiquette</p>\r\n	</li>\r\n	<li>\r\n	<p>Confidence Building Exercises</p>\r\n	</li>\r\n	<li>\r\n	<p>Voice Modulation &amp; Pronunciation Drills</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>???? Perfect For :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Students preparing for college or jobs</p>\r\n	</li>\r\n	<li>\r\n	<p>Freshers entering corporate life</p>\r\n	</li>\r\n	<li>\r\n	<p>Anyone struggling with spoken English</p>\r\n	</li>\r\n	<li>\r\n	<p>People who want to overcome stage fear</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>???? What You&#39;ll Gain :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Strong spoken English skills</p>\r\n	</li>\r\n	<li>\r\n	<p>Confidence to speak in public &amp; interviews</p>\r\n	</li>\r\n	<li>\r\n	<p>Polished personality &amp; presentation</p>\r\n	</li>\r\n	<li>\r\n	<p>Certificate to showcase your soft skills</p>\r\n	</li>\r\n</ul>\r\n', '<h3>???? <strong>Module 1: Foundation in Spoken English</strong></h3>\r\n\r\n<p><strong>Week 1&ndash;2</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Introduction to Communication Skills</p>\r\n	</li>\r\n	<li>\r\n	<p>Basic Sentence Structures &amp; Grammar</p>\r\n	</li>\r\n	<li>\r\n	<p>Vocabulary for Daily Conversations</p>\r\n	</li>\r\n	<li>\r\n	<p>Use of Tenses in Speaking</p>\r\n	</li>\r\n	<li>\r\n	<p>Self-Introduction Practice</p>\r\n	</li>\r\n	<li>\r\n	<p>Activities: Role plays, pair speaking drills</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>???? <strong>Module 2: Grammar &amp; Functional English</strong></h3>\r\n\r\n<p><strong>Week 3&ndash;4</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nouns, Pronouns, Verbs, Adjectives</p>\r\n	</li>\r\n	<li>\r\n	<p>Prepositions, Articles, Conjunctions</p>\r\n	</li>\r\n	<li>\r\n	<p>Asking &amp; Answering Questions</p>\r\n	</li>\r\n	<li>\r\n	<p>Making Requests, Suggestions, and Offers</p>\r\n	</li>\r\n	<li>\r\n	<p>Speaking in Different Scenarios (Shopping, Travel, Phone Calls)</p>\r\n	</li>\r\n	<li>\r\n	<p>Activities: Grammar games, vocabulary quizzes</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>???? <strong>Module 3: Fluency &amp; Accent Practice</strong></h3>\r\n\r\n<p><strong>Week 5&ndash;6</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Voice Modulation, Tone &amp; Pitch</p>\r\n	</li>\r\n	<li>\r\n	<p>Pronunciation of Commonly Misused Words</p>\r\n	</li>\r\n	<li>\r\n	<p>Removing MTI (Mother Tongue Influence)</p>\r\n	</li>\r\n	<li>\r\n	<p>Storytelling &amp; Narration Techniques</p>\r\n	</li>\r\n	<li>\r\n	<p>Listening Comprehension &amp; Repetition</p>\r\n	</li>\r\n	<li>\r\n	<p>Activities: Tongue twisters, listen &amp; repeat sessions</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>???? <strong>Module 4: Personality Enhancement Skills</strong></h3>\r\n\r\n<p><strong>Week 7&ndash;8</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Confidence-Building Techniques</p>\r\n	</li>\r\n	<li>\r\n	<p>Body Language &amp; Facial Expressions</p>\r\n	</li>\r\n	<li>\r\n	<p>Dressing Sense &amp; Grooming Essentials</p>\r\n	</li>\r\n	<li>\r\n	<p>Positive Attitude &amp; Motivation</p>\r\n	</li>\r\n	<li>\r\n	<p>Time Management &amp; Personal Discipline</p>\r\n	</li>\r\n	<li>\r\n	<p>Activities: Mirror practice, posture drills, grooming day</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>???? <strong>Module 5: Public Speaking &amp; Group Discussions</strong></h3>\r\n\r\n<p><strong>Week 9&ndash;10</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Overcoming Stage Fear</p>\r\n	</li>\r\n	<li>\r\n	<p>Speech Writing &amp; Delivery</p>\r\n	</li>\r\n	<li>\r\n	<p>Group Discussion Techniques</p>\r\n	</li>\r\n	<li>\r\n	<p>Voice Clarity &amp; Speech Control</p>\r\n	</li>\r\n	<li>\r\n	<p>Handling Q&amp;A Confidently</p>\r\n	</li>\r\n	<li>\r\n	<p>Activities: Extempore, JAM (Just a Minute), team debates</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>???? <strong>Module 6: Interview &amp; Workplace Communication</strong></h3>\r\n\r\n<p><strong>Week 11&ndash;12</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Resume Speaking &ndash; Tell Me About Yourself</p>\r\n	</li>\r\n	<li>\r\n	<p>HR Interview FAQs &amp; How to Answer Them</p>\r\n	</li>\r\n	<li>\r\n	<p>Corporate Etiquette &amp; Workplace Behavior</p>\r\n	</li>\r\n	<li>\r\n	<p>Email Writing &amp; Telephonic Etiquette</p>\r\n	</li>\r\n	<li>\r\n	<p>Final Speech/Presentation Evaluation</p>\r\n	</li>\r\n	<li>\r\n	<p>Mock Interviews &amp; Feedback Sessions</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2>???? <strong>Final Assessment &amp; Certification</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Spoken English Test</p>\r\n	</li>\r\n	<li>\r\n	<p>Personality Evaluation</p>\r\n	</li>\r\n	<li>\r\n	<p>One-on-One Feedback</p>\r\n	</li>\r\n	<li>\r\n	<p>Certificate of Completion Awarded</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>???? BONUS (Optional Workshops):</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Social Media Etiquette</p>\r\n	</li>\r\n	<li>\r\n	<p>Conflict Resolution &amp; Emotional Intelligence</p>\r\n	</li>\r\n	<li>\r\n	<p>Confidence in Networking Events</p>\r\n	</li>\r\n</ul>\r\n', 'C1730115853.png', 'Active', 1, NULL, NULL, 'Excellent', 'English, Hindi, Bengali', 'Spoken English & Personality Development Course – 3 Months', 'Spoken English Course, Personality Development Training, English Speaking Classes', 'Boost your English fluency, confidence & soft skills in 3 months. Learn to speak clearly, present smartly & grow professionally. Join now!'),
(25, 31, NULL, 'Certificate in Computer Applications & Internet Basics', 'certificateincomputerapplicationsinternetbasics', '4 months', 3999, 'Class 4 to 8', '<p>The <strong>Certificate in Computer Applications with Internet</strong> is a beginner-friendly, practical course designed to make you digitally capable in today&rsquo;s connected world. Whether you&#39;re a student, homemaker, job seeker, or professional, this course helps you gain real working knowledge of everyday computer usage.</p>\r\n\r\n<p>Learn to create documents in <strong>MS Word</strong>, manage data with <strong>Excel</strong>, make presentations in <strong>PowerPoint</strong>, and browse the <strong>internet safely and efficiently</strong>. You&rsquo;ll also master email usage, online forms, file sharing, and basic digital security.</p>\r\n\r\n<p>It&rsquo;s not just about learning software &mdash; it&rsquo;s about building <strong>digital confidence</strong> for work, study, or daily life. No prior experience needed.</p>\r\n\r\n<h3><strong>???? Course Highlights :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Hands-on training in MS Office (Word, Excel, PowerPoint)</p>\r\n	</li>\r\n	<li>\r\n	<p>Internet browsing, email creation &amp; file attachments</p>\r\n	</li>\r\n	<li>\r\n	<p>Safe usage of online services &amp; digital tools</p>\r\n	</li>\r\n	<li>\r\n	<p>Beginner-friendly language &amp; practical pace</p>\r\n	</li>\r\n	<li>\r\n	<p>Certificate for jobs, college, or personal upskilling</p>\r\n	</li>\r\n</ul>\r\n', '<p>&bull; Computer Fundamentals</p>\r\n\r\n<p>&bull; Computer Software and Hardware</p>\r\n\r\n<p>&bull; Microsoft Office</p>\r\n\r\n<p>&bull; Outlook and Publishers</p>\r\n\r\n<p>&bull; Programming Fundamentals</p>\r\n\r\n<p>&bull; WWW and Arpanet</p>\r\n\r\n<p>&bull; Basics of Web Programming</p>\r\n\r\n<p>&bull; Developing Web pages</p>\r\n', 'C1730116550.PNG', 'Active', 1, NULL, NULL, 'Beginners', 'English, Hindi & Bengali', 'Computer Application & Internet Course – 3-Month Certificate', 'Computer Application Course, MS Office and Internet Training, Digital Skills Course for Beginners', 'Learn computer basics, MS Office, and internet skills in 3 months. Perfect for beginners & students. Get certified in digital literacy.\r\n'),
(26, 31, NULL, 'AI & Machine Learning for Kids', 'aimachinelearningforkids', '4 months', 3499, 'Class 5 to 12', '<p>The <strong>AI &amp; Machine Learning for Kids</strong> course is designed to spark curiosity, creativity, and problem-solving through the exciting world of Artificial Intelligence and Machine Learning &mdash; simplified for young minds.</p>\r\n\r\n<p>Through <strong>games, puzzles, interactive tools, and visual learning</strong>, kids will explore how machines think, learn, and make decisions. They&rsquo;ll get hands-on with AI models, voice &amp; image recognition, and even build mini projects using drag-and-drop tools &mdash; all without needing prior coding experience.</p>\r\n\r\n<p>This course is the perfect first step into the future of technology, delivered in a fun, friendly, and engaging environment.</p>\r\n\r\n<h3><strong>???? Ideal for Ages :</strong></h3>\r\n\r\n<p><strong>10 to 16 Years</strong><br />\r\n(No prior tech experience required)</p>\r\n\r\n<h3>????<strong> What Kids Will Discover :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>What is AI and how it&rsquo;s used in daily life</p>\r\n	</li>\r\n	<li>\r\n	<p>How machines recognize faces, voices &amp; patterns</p>\r\n	</li>\r\n	<li>\r\n	<p>Creating smart games with logic-based decisions</p>\r\n	</li>\r\n	<li>\r\n	<p>Intro to machine learning using simple tools</p>\r\n	</li>\r\n	<li>\r\n	<p>Safe and responsible use of AI</p>\r\n	</li>\r\n	<li>\r\n	<p>Building creative mini AI projects</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>???? Why Parents Love It :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Builds logical thinking and future-ready skills</p>\r\n	</li>\r\n	<li>\r\n	<p>Boosts confidence in technology from an early age</p>\r\n	</li>\r\n	<li>\r\n	<p>Enhances school STEM learning with real-world examples</p>\r\n	</li>\r\n	<li>\r\n	<p>Safe, supervised, and screen-time with purpose</p>\r\n	</li>\r\n	<li>\r\n	<p>Certificate of Completion + Project Showcase</p>\r\n	</li>\r\n</ul>\r\n', '<p>&bull; Computer System Basics</p>\r\n\r\n<p>&bull; Input Output</p>\r\n\r\n<p>&bull; Data Base fundamentals</p>\r\n\r\n<p>&bull; Interaction</p>\r\n\r\n<p>&bull; Python Basics</p>\r\n\r\n<p>&bull; Computational approaches</p>\r\n\r\n<p>&bull; Data Frames</p>\r\n\r\n<p>&bull; Ai and ML<em>&nbsp;</em>Fundamentals</p>\r\n\r\n<p>&bull; Tools and Applications</p>\r\n', 'C1730192978.png', 'Active', 1, NULL, NULL, 'Beginners to Intermediate', 'English, Hindi & Bengali', 'AI & Machine Learning Course for Kids – Fun Tech Learning', 'AI for Kids Course, Machine Learning for Beginners', 'Introduce your child to AI & ML through fun, hands-on learning. A creative tech course for kids aged 10–16. No coding experience needed!');
INSERT INTO `course` (`c_id`, `cat_id`, `subcat_id`, `course_name`, `search_name`, `duration`, `fees`, `eligibility`, `overview`, `curriculam`, `image`, `status`, `rating`, `lessons`, `topics`, `skill_level`, `language`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(27, 31, NULL, 'Python Programming for Kids', 'pythonprogrammingforkids', '3.5 Months', 3999, 'Class 5 to 12', '<p>The <strong>Python Programming for Kids</strong> course is a beginner-friendly program that introduces children to the exciting world of coding using one of the simplest yet most powerful programming languages &mdash; Python.</p>\r\n\r\n<p>Specially designed for ages <strong>10 to 16</strong>, the course uses <strong>interactive exercises, storytelling, game-based logic, and hands-on projects</strong> to make learning Python fun and accessible. Kids learn how to write code, build small games, solve logic puzzles, and even automate simple tasks &mdash; all while thinking creatively and building confidence with technology.</p>\r\n\r\n<p>This course builds a solid foundation in coding and nurtures a love for problem-solving &mdash; a critical skill for the future.</p>\r\n\r\n<h3><strong>???????? Perfect For Ages :</strong></h3>\r\n\r\n<p><strong>10 &ndash; 16 years</strong> (No prior coding knowledge required)</p>\r\n\r\n<h3><strong>???? What Kids Will Learn :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Python Basics: Variables, Loops, Conditions</p>\r\n	</li>\r\n	<li>\r\n	<p>Drawing with Code (Turtle Graphics)</p>\r\n	</li>\r\n	<li>\r\n	<p>Mini Games &amp; Animation with Python</p>\r\n	</li>\r\n	<li>\r\n	<p>Using Logic to Solve Real Problems</p>\r\n	</li>\r\n	<li>\r\n	<p>Simple Projects like Calculator, Quiz, Chatbot</p>\r\n	</li>\r\n	<li>\r\n	<p>Clean Code Practices &amp; Debugging Skills</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>???? Why It&rsquo;s Awesome for Kids :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Visual and interactive learning, not boring theory</p>\r\n	</li>\r\n	<li>\r\n	<p>Builds computational thinking and creativity</p>\r\n	</li>\r\n	<li>\r\n	<p>Encourages curiosity and experimentation</p>\r\n	</li>\r\n	<li>\r\n	<p>Supports school STEM curriculum</p>\r\n	</li>\r\n	<li>\r\n	<p>Certificate + Final Python Mini Project</p>\r\n	</li>\r\n</ul>\r\n', '<p>&bull; Computer Basics</p>\r\n\r\n<p>&bull; MS office</p>\r\n\r\n<p>&bull; PDF and Others</p>\r\n\r\n<p>&bull; Python Fundamentals</p>\r\n\r\n<p>&bull; Building Blocks of Python</p>\r\n\r\n<p>&bull; Computation with Python</p>\r\n\r\n<p>&bull; Listing with python</p>\r\n\r\n<p>&bull; Tuples, Sets and Dictionaries</p>\r\n\r\n<p>&bull; Decision Making</p>\r\n\r\n<p>&bull; Functions</p>\r\n\r\n<p>&bull; Different uses of Python Programming Language</p>\r\n\r\n<p>&bull; Platforms and IDES</p>\r\n\r\n<p>&bull; Framing Python Codes as a beginner</p>\r\n\r\n<p>&bull; Classes and Packages and It&#39;s Uses</p>\r\n\r\n<p>&bull; Web Development</p>\r\n\r\n<p>&bull; Data Science</p>\r\n\r\n<p>&bull; AI-ML</p>\r\n\r\n<p>&bull; Automation</p>\r\n\r\n<p>&bull; Visualization</p>\r\n', 'C1730190688.png', 'Active', 1, NULL, NULL, 'Beginners to Advance', 'English, Hindi & Bengali', 'Python Programming Course for Kids – Fun Coding Basics', 'Python for Kids, Kids Coding Course Python, Learn Python Programming for Beginners', 'Teach kids to code with Python! A beginner-friendly, creative programming course for children aged 10–16. No experience needed.'),
(28, 31, NULL, 'Future Coders – Coding Essentials for Kids', 'futurecoderscodingessentialsforkids', '4.5 Months', 4500, 'Class 8 to 12', '<p>The Future Coders course is a dynamic, hands-on introduction to the world of programming &mdash; designed especially for young minds aged 8 to 16. It blends creativity, logic, and digital skills into a fun learning journey where kids not only play with technology &mdash; they learn to create it.</p>\r\n\r\n<p>From drag-and-drop coding with Scratch to a gentle introduction to Python, kids will build games, animations, quizzes, and interactive stories &mdash; while learning real computational thinking and logic in a kid-friendly environment.</p>\r\n\r\n<p>It&rsquo;s not just about learning code. It&rsquo;s about preparing future creators, innovators, and problem-solvers.</p>\r\n\r\n<h3><strong>???????? Perfect For :</strong></h3>\r\n\r\n<p>Kids aged 8&ndash;16 with curiosity for computers and creativity to explore</p>\r\n\r\n<h3><strong>???? Why Parents Love Future Coders :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>No prior coding knowledge needed</p>\r\n	</li>\r\n	<li>\r\n	<p>Fun and visual approach to logic &amp; programming</p>\r\n	</li>\r\n	<li>\r\n	<p>Combines education with creative expression</p>\r\n	</li>\r\n	<li>\r\n	<p>Builds focus, patience, and problem-solving</p>\r\n	</li>\r\n	<li>\r\n	<p>Includes project showcase + Certificate of Completion</p>\r\n	</li>\r\n</ul>\r\n', '<p>&bull; Computer System Basics</p>\r\n\r\n<p>&bull; Internet and Email</p>\r\n\r\n<p>&bull; Social Media and Mobile Apps</p>\r\n\r\n<p>&bull; Programming Fundamentals</p>\r\n\r\n<p>&bull; Building Blocks</p>\r\n\r\n<p>&bull; My First Code</p>\r\n\r\n<p>&bull; Requirement Gathering Concepts</p>\r\n\r\n<p>&bull; Forms and Query Handling Mechanism</p>\r\n\r\n<p>&bull; Client -Server Architecture</p>\r\n\r\n<p>&bull; Web Server</p>\r\n\r\n<p>&bull; Data Base Server</p>\r\n\r\n<p>&bull; Application Server</p>\r\n\r\n<p>&bull; React- Node- Express</p>\r\n\r\n<p>&bull; Mongo DB</p>\r\n', 'C1730192215.png', 'Active', 1, NULL, NULL, 'Beginners to Advance', 'English, Hindi & Bengali', 'Future Coders : Learn Programming for Kids (Ages 8–16)', 'Kids Coding Course, Programming for Beginners (Kids)', 'Kickstart your child’s coding journey with Future Coders! A creative course teaching kids logic, coding & problem-solving through fun projects.'),
(29, 31, NULL, 'Web Development for Kids', 'webdevelopmentforkids', '4.5 Months', 3999, 'Class 8 to 12', '<p>The Web Development for Kids course is a fun and beginner-friendly introduction to building real websites from scratch &mdash; using HTML, CSS, and creative design thinking. Designed for kids aged 10 to 16, this course gives young learners the tools to bring their imagination online.</p>\r\n\r\n<p>Kids will learn how websites are made, write their first lines of real code, and create personal pages, mini-projects, and web-based stories &mdash; all with guidance, interactive tools, and zero pressure. From layout to styling and structure, they&rsquo;ll get a full creative experience of how the web works.</p>\r\n\r\n<p>This course builds tech confidence, sparks design thinking, and introduces coding in a visual, rewarding way.</p>\r\n\r\n<h3><strong>???????? Best Suited For :</strong></h3>\r\n\r\n<p>Kids aged 10&ndash;16 with basic computer knowledge and creative curiosity</p>\r\n\r\n<h3><strong>???? Why Kids &amp; Parents Love It :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Real website creation using HTML &amp; CSS</p>\r\n	</li>\r\n	<li>\r\n	<p>Builds creativity and tech literacy</p>\r\n	</li>\r\n	<li>\r\n	<p>Encourages logical thinking and design awareness</p>\r\n	</li>\r\n	<li>\r\n	<p>Helps kids express themselves through technology</p>\r\n	</li>\r\n	<li>\r\n	<p>Final project + Certificate of Completion</p>\r\n	</li>\r\n</ul>\r\n', '<p>&bull; Computer Fundamentals</p>\r\n\r\n<p>&bull; Browsers</p>\r\n\r\n<p>&bull; Client Server Architecture</p>\r\n\r\n<p>&bull; Protocols</p>\r\n\r\n<p>&bull; Email and Instant Messaging</p>\r\n\r\n<p>&bull; Web Editors</p>\r\n\r\n<p>&bull; IDEs&nbsp;</p>\r\n\r\n<p>&bull; Creating and managing Web Pages</p>\r\n\r\n<p>&bull; Images, Tables, Forms, Framesets,</p>\r\n\r\n<p>&bull; CSS and Java Scripting</p>\r\n\r\n<p>&bull; Web servers</p>\r\n\r\n<p>&bull; WWW</p>\r\n', 'C1730111340.png', 'Active', 1, NULL, NULL, 'Beginners to Intermediate', 'English, Hindi & Bengali', 'Web Development Course for Kids – Learn HTML, CSS & More', 'Web Development for Kids, HTML CSS for Beginners (Children), Website Building Course for Kids', 'Teach kids to build websites! A creative web development course using HTML, CSS & design basics for young coders aged 10–16.'),
(30, 31, NULL, 'Graphic Designing for Kids', 'graphicdesigningforkids', '3 months', 2999, 'Class 4 to 12', '<p>The <strong>Graphic Designing for Kids</strong> course is a creative playground where young minds explore the world of visual storytelling and digital art. Designed for children aged <strong>10 to 16</strong>, this course introduces the core concepts of graphic design in a fun, colorful, and interactive way.</p>\r\n\r\n<p>Using tools like <strong>Canva</strong> and beginner-friendly apps, kids learn about colors, fonts, shapes, layouts, and design principles. They&rsquo;ll create posters, social media graphics, greeting cards, logos, and more &mdash; learning how to turn their ideas into polished digital creations.</p>\r\n\r\n<p>It&rsquo;s the perfect blend of creativity and digital literacy &mdash; helping kids express themselves visually while gaining future-ready design skills.</p>\r\n\r\n<h3><strong>???? Perfect For :</strong></h3>\r\n\r\n<p>Creative kids aged 10&ndash;16 with an interest in drawing, visuals, or digital art</p>\r\n\r\n<h3><strong>???? Why Parents Love It :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Encourages creativity and visual communication</p>\r\n	</li>\r\n	<li>\r\n	<p>Builds tech confidence with real tools like Canva</p>\r\n	</li>\r\n	<li>\r\n	<p>Supports school projects and personal expression</p>\r\n	</li>\r\n	<li>\r\n	<p>Teaches design basics in a fun, non-technical way</p>\r\n	</li>\r\n	<li>\r\n	<p>Kids get a <strong>portfolio of their own designs</strong> + Certificate</p>\r\n	</li>\r\n</ul>\r\n', '<p>&bull; Designing Principles</p>\r\n\r\n<p>&bull; Ratio and Proportions</p>\r\n\r\n<p>&bull; Impact of Colour</p>\r\n\r\n<p>&bull; Difference between Sketch and Design</p>\r\n\r\n<p>&bull; Basic Graphic Designing Approaches</p>\r\n\r\n<p>&bull; Tools</p>\r\n\r\n<p>&bull; Online Tools</p>\r\n\r\n<p>&bull; Making Promotional Approaches</p>\r\n\r\n<p>&bull; Making my First Graphic Design</p>\r\n\r\n<p>&bull; Audience Retentions</p>\r\n\r\n<p>&bull; Generating Graphics and Distribution</p>\r\n\r\n<p>&bull; Editing</p>\r\n\r\n<p>&bull; Branding &amp; Re-Branding</p>\r\n\r\n<p>&bull; Proposals and Brochures</p>\r\n\r\n<p>&bull; Distribution and Monitoring Strategies</p>\r\n\r\n<p>&bull; Digital Marketing and Web Designing</p>\r\n\r\n<p>&bull; Social Media Marketing</p>\r\n', 'C1730111272.png', 'Active', 1, NULL, NULL, 'Beginners to Intermediate', 'English, Hindi & Bengali', 'Graphic Design Course for Kids – Learn Digital Creativity', 'Graphic Design for Kids', 'A fun graphic design course for kids aged 10–16. Learn Canva, colors, and visual design basics. Turn creativity into real digital skills!\r\n\r\n'),
(31, 30, NULL, 'Advanced Diploma in Journalism & Media Studies', 'advanceddiplomainjournalismmediastudies', '12 Months', 120000, '10+2', '<p>The Advanced Diploma in Journalism &amp; Media Studies is a comprehensive, skill-based program designed for aspiring journalists, content creators, and media professionals. This course equips students with deep knowledge of traditional and digital journalism, including news writing, reporting, editing, anchoring, and media law.</p>\r\n\r\n<p>Through hands-on projects, mock interviews, newsroom simulations, and digital tools, learners will gain real-world exposure to the fast-paced world of media. From writing breaking stories to shooting video segments and creating impactful social content, students learn how to deliver news with accuracy, ethics, and creativity.</p>\r\n\r\n<p>Whether your dream is to be a news anchor, media strategist, editor, or digital journalist &mdash; this diploma sets the foundation for success in modern media careers.</p>\r\n\r\n<h3><strong>???? Who Should Enroll :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Aspiring journalists and news reporters</p>\r\n	</li>\r\n	<li>\r\n	<p>YouTubers, bloggers, and content creators</p>\r\n	</li>\r\n	<li>\r\n	<p>Students passionate about communication and public speaking</p>\r\n	</li>\r\n	<li>\r\n	<p>Anyone interested in mass media, TV, and digital storytelling</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>???? What You&#39;ll Master :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Investigative journalism &amp; ethical reporting</p>\r\n	</li>\r\n	<li>\r\n	<p>Media law, fact-checking &amp; editorial responsibility</p>\r\n	</li>\r\n	<li>\r\n	<p>Anchoring &amp; presentation skills</p>\r\n	</li>\r\n	<li>\r\n	<p>Scriptwriting, content strategy &amp; visual storytelling</p>\r\n	</li>\r\n	<li>\r\n	<p>Audio/video editing, podcasting, and social media journalism</p>\r\n	</li>\r\n</ul>\r\n', '<p><strong>1. What is Journalism? What is the role of a journalist?</strong></p>\r\n\r\n<p><strong>2. Different kind of media (Print/Electronic/Digital)</strong></p>\r\n\r\n<p><strong>3. Media Ethics and Press Law</strong></p>\r\n\r\n<p><strong>4. Spot Reporting and Idea of bit journalism</strong></p>\r\n\r\n<p><strong>5. Scoop &amp; Exclusive News</strong></p>\r\n\r\n<p><strong>6. Function of Press Council of India and Press Information Bureau</strong></p>\r\n\r\n<p><strong>7. Photo Journalism</strong></p>\r\n\r\n<p><strong>8. Digital Media Ethics, Copy right and Digital Property value</strong></p>\r\n\r\n<p><strong>9. Media Management</strong></p>\r\n', 'C1720593032.png', 'Active', 1, NULL, NULL, 'Advance', 'English, Hindi & Bengali', 'Advanced Diploma in Journalism & Media : 1 Year Pro Course', 'Journalism and Media Course, Advanced Diploma in Journalism', 'Master journalism, media ethics, and digital storytelling. A career-ready course in reporting, editing, anchoring & media production.'),
(32, 30, NULL, 'Advanced Diploma in Public Relations & Advertising Outreach', 'advanceddiplomainpublicrelationsadvertisingoutreach', '12 Months', 120000, '10+2', '<p>Advanced Diploma in Public Relations &amp; Advertising Outreach is a future-forward, skill-enriched program designed for students who want to master the art of communication, media strategy, and brand storytelling.</p>\r\n\r\n<p>This course offers in-depth training in public relations techniques, advertising concepts, campaign planning, media relations, crisis management, and outreach strategy. Learners will explore real-world PR tools, creative advertising formats, and integrated communication tactics used by agencies and corporate brands worldwide.</p>\r\n\r\n<p>With a strong focus on brand image, audience psychology, and digital outreach, this course prepares students for roles in PR agencies, advertising firms, corporate communication teams, NGOs, and media planning departments.</p>\r\n\r\n<h3><strong>???? Who Should Enroll :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Aspiring PR professionals and brand strategists</p>\r\n	</li>\r\n	<li>\r\n	<p>Media, marketing, or communications students</p>\r\n	</li>\r\n	<li>\r\n	<p>Influencers, social media managers, and campaign planners</p>\r\n	</li>\r\n	<li>\r\n	<p>Anyone interested in media dynamics and audience outreach</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>???? What You&rsquo;ll Learn :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Public relations strategy and reputation management</p>\r\n	</li>\r\n	<li>\r\n	<p>Ad copywriting, campaign planning &amp; creative ideation</p>\r\n	</li>\r\n	<li>\r\n	<p>Brand storytelling &amp; audience engagement</p>\r\n	</li>\r\n	<li>\r\n	<p>Digital media, influencer outreach &amp; event promotion</p>\r\n	</li>\r\n	<li>\r\n	<p>PR ethics, press release writing &amp; media pitching</p>\r\n	</li>\r\n</ul>\r\n', '<p><strong>1. Basic Concept of Public Relation</strong></p>\r\n\r\n<p><strong>2. Basic Concept of Mew Media &amp; Visualization</strong></p>\r\n\r\n<p><strong>3. Basic Concept of Advertising</strong></p>\r\n\r\n<p><strong>4. Public Relation Managements &amp; Duties</strong></p>\r\n\r\n<p><strong>5. Different Medium of Advertising</strong></p>\r\n\r\n<p><strong>6. Advertising Concept &amp; Market Research</strong></p>\r\n\r\n<p><strong>7. Image Building &amp; Public Relation</strong></p>\r\n\r\n<p><strong>8. Advertising Campaign</strong></p>\r\n\r\n<p><strong>9. Public Relation Management</strong></p>\r\n', 'C1720593061.png', 'Active', 1, NULL, NULL, 'Advance', 'English, Hindi & Bengali', 'Advanced PR & Advertising Diploma – Strategic Media Course', 'Public Relations Course, Advertising and Outreach Diploma, Advanced PR and Branding Program', 'Learn PR strategy, advertising, branding & campaign outreach. Build real-world communication skills with this advanced professional diploma.'),
(33, 0, NULL, 'Download Information Brochure', 'Download_Information_Brochure', '000000', -1, 'All Stream', '<p><a href=\"/public_html/application/views/front/info_bro\">Download WBJRS Information Brochure</a></p>\r\n', '<p>Stated</p>\r\n', 'C1730192337.png', 'Inactive', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 0, NULL, 'Download Information Brochure', 'Download_Information_Brochure', '0000', NULL, 'All Stream', '<p><a href=\"&lt;?php echo base_url()?&gt;assets/front/images/resources/Brochure_WBJRS.pdf\"><img src=\"&lt;?php echo base_url(\'assets/front/images/resources/download_b.png\')?&gt;\" style=\"height:50px\" /></a></p>\r\n', '<p><a href=\"/public_html/application/views/front\">/public_html/application/views/front</a></p>\r\n', NULL, 'Inactive', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 31, NULL, 'Spoken English – Speak Fluently & Confidently', 'spokenenglishspeakfluentlyconfidently', '12 Months', 11998, 'Class 1 to 8', '<p>Spoken English Course is designed to provide young learners with a strong foundation in spoken English, fostering their ability to communicate effectively in various everyday situations. Through a blend of vocabulary building, grammar practice, listening comprehension, speaking exercises, and cultural exploration, children develo</p>\r\n\r\n<p>The Spoken English course is a practical, results-driven program designed to help learners develop fluency, pronunciation, vocabulary, and real-world communication skills in English. Whether you&#39;re a student, job seeker, or working professional, this course helps you speak with clarity, confidence, and purpose.</p>\r\n\r\n<p>Through interactive sessions, roleplays, conversation practice, and vocabulary-building exercises, learners will master the art of communicating in everyday and professional situations &mdash; from introductions to interviews to public speaking.</p>\r\n\r\n<p>This course goes beyond textbooks, focusing on real expression, body language, and tone to ensure learners don&rsquo;t just know English &mdash; they own it.</p>\r\n\r\n<h3><strong>???? Perfect For :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Students &amp; professionals</p>\r\n	</li>\r\n	<li>\r\n	<p>Beginners to intermediate English learners</p>\r\n	</li>\r\n	<li>\r\n	<p>Job seekers preparing for interviews</p>\r\n	</li>\r\n	<li>\r\n	<p>Anyone looking to boost spoken confidence</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>???? What You&rsquo;ll Learn :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Daily conversation &amp; small talk</p>\r\n	</li>\r\n	<li>\r\n	<p>Grammar made simple for speaking</p>\r\n	</li>\r\n	<li>\r\n	<p>Correct pronunciation &amp; accent training</p>\r\n	</li>\r\n	<li>\r\n	<p>Public speaking &amp; presentation skills</p>\r\n	</li>\r\n	<li>\r\n	<p>Interview &amp; workplace communication</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>p the confidence and skills necessary for successful communication in English.</p>\r\n', NULL, 'C1730113562.png', 'Active', 1, NULL, NULL, 'Beginners to Intermediate', 'English', 'Spoken English Course – Improve Fluency & Communication', 'Spoken English Classes, English Speaking Course', 'Boost your English speaking skills, confidence & pronunciation. A complete course to master fluent English in real-life situations.'),
(36, 31, NULL, 'Kids Champ Tuition – Academic Boost for Young Learners', 'kidschamptuitionacademicboostforyounglearners', 'All Year', 14400, 'Pre- School to Class IV', '<p>The Kids Champ Tuition program is a friendly and focused academic support course for young learners aged 6 to 13. This course is designed to help children strengthen their foundation in key school subjects like Math, Science, English, and General Knowledge &mdash; while also improving confidence, concentration, and study habits.</p>\r\n\r\n<p>Delivered in an engaging and supportive environment, Kids Champ blends concept clarity, interactive worksheets, regular assessments, and creative learning tools to make education stress-free and enjoyable.</p>\r\n\r\n<p>Whether it&rsquo;s homework help, concept revision, or prepping for school exams &mdash; Kids Champ gives children the tools to succeed and shine.</p>\r\n\r\n<h3><strong>???? Ideal For :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Students from Grades 1 to 7</p>\r\n	</li>\r\n	<li>\r\n	<p>Kids who need extra help or want to stay ahead in class</p>\r\n	</li>\r\n	<li>\r\n	<p>Parents looking for a structured, caring tuition option</p>\r\n	</li>\r\n	<li>\r\n	<p>Children preparing for exams or competitive school programs</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>???? What Kids Get :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Personalized attention in core subjects</p>\r\n	</li>\r\n	<li>\r\n	<p>Interactive, activity-based learning</p>\r\n	</li>\r\n	<li>\r\n	<p>Regular tests and feedback</p>\r\n	</li>\r\n	<li>\r\n	<p>Time management and study tips</p>\r\n	</li>\r\n	<li>\r\n	<p>Confidence-boosting environment + Completion Certificate</p>\r\n	</li>\r\n</ul>\r\n', '<p><strong>Comprehensive Tuition Classes for Preschool to Class IV (CBSE, ICSE, SBBSE)</strong></p>\r\n\r\n<p>Looking for a strong academic foundation for your child? Our <strong>tuition classes</strong> offer a <strong>nurturing and engaging learning environment</strong> for students from <strong>Preschool to Class IV</strong>, covering all subjects as per the <strong>CBSE, ICSE, and SBBSE curricula</strong>.</p>\r\n\r\n<h3><strong>Why Choose Us?</strong></h3>\r\n\r\n<p>✅ <strong>Expert Guidance</strong> &ndash; Experienced and qualified teachers for early childhood and primary education.<br />\r\n✅ <strong>Personalized Attention</strong> &ndash; Small batch sizes to ensure every child gets individual support.<br />\r\n✅ <strong>Comprehensive Subject Coverage</strong> &ndash; English, Mathematics, Science, Social Studies, Hindi, and more.<br />\r\n✅ <strong>Activity-Based Learning</strong> &ndash; Interactive teaching methods, worksheets, and hands-on activities to enhance understanding.<br />\r\n✅ <strong>Strong Foundation</strong> &ndash; Focus on conceptual clarity and skill-building to prepare for higher classes.<br />\r\n✅ <strong>Regular Assessments</strong> &ndash; Periodic tests, homework support, and progress tracking for continuous improvement.<br />\r\n✅ <strong>Flexible Timings</strong> &ndash; Convenient schedules to suit students and parents.</p>\r\n\r\n<p>Help your child <strong>build confidence, excel in academics, and develop a love for learning!</strong> Enroll now and give them the <strong>best start in their educational journey!</strong></p>\r\n\r\n<p>???? Contact us today for details on admissions and class schedules. ????</p>\r\n', NULL, 'Active', 1, 'CBSE, ICSE, WBBSE', 'All Subjects', 'High', 'English, Hindi, Bengali', 'Kids Champ Tuition Classes – Boost Learning & Confidence', 'Tuition for Kids in Barrackpore, Academic Coaching for Children, Kids Learning Classes', 'Fun, supportive tuition for kids to improve in math, science, English & more. Build strong learning skills with Kids Champ!\r\n\r\n'),
(37, 1, 5, 'Computer Application & Programming', 'computerapplicationprogramming', 'All Year', 8999, 'Class VIII Onward', '<p>The Computer Application &amp; Programming course is a dual-skill program designed to build both digital fluency and programming foundations in students. Whether you&#39;re new to computers or aiming to level up your tech skills, this course provides a structured path into the world of applications, internet use, and coding.</p>\r\n\r\n<p>Students will gain hands-on knowledge of essential computer tools like MS Word, Excel, PowerPoint, and safe internet usage &mdash; along with an introduction to programming logic and simple languages like Python or C. It&rsquo;s a well-rounded course built to prepare learners for academic, personal, and professional use of technology.</p>\r\n\r\n<p>Ideal for students, job-seekers, and tech-curious beginners, this course delivers the real-world skills needed in today&rsquo;s digital world.</p>\r\n\r\n<h3><strong>???? Who Should Enroll :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Students seeking foundational computer &amp; programming knowledge</p>\r\n	</li>\r\n	<li>\r\n	<p>Beginners looking to become digitally confident</p>\r\n	</li>\r\n	<li>\r\n	<p>Job aspirants preparing for tech-enabled roles</p>\r\n	</li>\r\n	<li>\r\n	<p>Anyone interested in both application tools and coding basics</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>???? What You&rsquo;ll Learn :</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Operating systems, file management, and MS Office tools</p>\r\n	</li>\r\n	<li>\r\n	<p>Internet browsing, email, data storage &amp; online safety</p>\r\n	</li>\r\n	<li>\r\n	<p>Basics of programming logic, syntax, and structure</p>\r\n	</li>\r\n	<li>\r\n	<p>Hands-on exercises using beginner-friendly coding platforms</p>\r\n	</li>\r\n	<li>\r\n	<p>Creating basic applications, forms, or mini projects</p>\r\n	</li>\r\n</ul>\r\n', '<h3><strong>1️⃣ ICSE Board (Indian Certificate of Secondary Education)</strong></h3>\r\n\r\n<p>The <strong>ICSE syllabus</strong> emphasizes both theoretical concepts and practical programming skills. Key topics include:</p>\r\n\r\n<p>???? <strong>Fundamentals of Computers</strong> &ndash; Hardware, software, types of computers, number systems<br />\r\n???? <strong>Operating Systems &amp; GUI</strong> &ndash; Windows, Linux basics, file management<br />\r\n???? <strong>Programming Concepts</strong> &ndash; Algorithm, flowchart, pseudocode<br />\r\n???? <strong>Object-Oriented Programming (OOP)</strong> &ndash; Introduction to Java, concepts of classes, objects, methods<br />\r\n???? <strong>Java Programming</strong> &ndash; Data types, loops, conditional statements, functions, arrays, string handling<br />\r\n???? <strong>Database Management</strong> &ndash; Basics of SQL, database concepts<br />\r\n???? <strong>Internet &amp; Cybersecurity</strong> &ndash; Networking, cloud computing, online safety</p>\r\n\r\n<hr />\r\n<h3><strong>2️⃣ CBSE Board (Central Board of Secondary Education)</strong></h3>\r\n\r\n<p>The <strong>CBSE syllabus</strong> focuses on problem-solving skills, logic development, and real-world applications of programming. Topics include:</p>\r\n\r\n<p>???? <strong>Computer System Overview</strong> &ndash; Hardware, software, networking, and memory concepts<br />\r\n???? <strong>Programming with Python</strong> &ndash; Syntax, variables, data types, loops, functions, file handling<br />\r\n???? <strong>Database &amp; SQL</strong> &ndash; Queries, data manipulation, database management concepts<br />\r\n???? <strong>Cybersecurity &amp; Digital Ethics</strong> &ndash; Ethical hacking, digital footprints, online privacy<br />\r\n???? <strong>Artificial Intelligence &amp; Emerging Technologies</strong> (Higher Secondary) &ndash; AI, machine learning basics, cloud computing<br />\r\n???? <strong>Web Development</strong> (Optional) &ndash; HTML, CSS, JavaScript</p>\r\n\r\n<hr />\r\n<h3><strong>3️⃣ WBBSE Board (West Bengal Board of Secondary Education)</strong></h3>\r\n\r\n<p>The <strong>WBBSE syllabus</strong> balances theoretical knowledge and basic programming skills with a focus on foundational computing concepts. Topics include:</p>\r\n\r\n<p>???? <strong>Introduction to Computers</strong> &ndash; Generations of computers, components, peripherals<br />\r\n???? <strong>Basic Programming (C, Python or Java)</strong> &ndash; Introduction to coding, syntax, simple programs<br />\r\n???? <strong>Boolean Algebra &amp; Number Systems</strong> &ndash; Binary, octal, hexadecimal conversions<br />\r\n???? <strong>Computer Networks</strong> &ndash; LAN, WAN, internet basics<br />\r\n???? <strong>Office Productivity Tools</strong> &ndash; MS Word, Excel, PowerPoint, database management<br />\r\n???? <strong>IT &amp; Its Applications</strong> &ndash; Digital communication, e-governance, security</p>\r\n', NULL, 'Active', 1, 'CBSE, ICSE, WBBSE', 'As Per syllabus of Board', 'High', 'English, Hindi, Bengali', 'Computer Application & Programming Course – Tech Skills for Students', 'Computer Application Course, Programming for Beginners, MS Office & Coding Training', 'Master digital tools & coding fundamentals. A complete course covering MS Office, internet, and programming basics in one powerful program.');

-- --------------------------------------------------------

--
-- Table structure for table `course_category`
--

CREATE TABLE `course_category` (
  `cc_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `cat_name` varchar(100) DEFAULT NULL,
  `search_name` varchar(150) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `meta_title` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_category`
--

INSERT INTO `course_category` (`cc_id`, `parent_id`, `cat_name`, `search_name`, `image`, `icon`, `status`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, NULL, 'Technical Courses', 'Technical_Courses', NULL, 'fas fa-laptop-code', 'Active', NULL, NULL, NULL),
(2, NULL, 'Non-Technical Courses', 'Non_Technical_Courses', NULL, 'fas fa-landmark', 'Active', NULL, NULL, NULL),
(3, NULL, 'Courses for School & College', 'Courses_for_School___College', NULL, 'fas fa-school', 'Active', NULL, NULL, NULL),
(5, 1, 'Computer Application & Programming', 'Computer_Application_Programming', NULL, NULL, 'Active', NULL, NULL, NULL),
(6, 1, 'Digital Media & Marketing', 'Digital_Media___Marketing', NULL, NULL, 'Active', NULL, NULL, NULL),
(7, 1, 'Data Science & Machine Learning', 'Data_Science___Machine_Learning', 'F1720426411.png', NULL, 'Active', NULL, NULL, NULL),
(8, 1, 'Artificial Intelligence & Machine Learning', 'Artificial_Intelligence_Machine_Learning', NULL, NULL, 'Active', NULL, NULL, NULL),
(9, 1, 'Big Data & Analytics', 'Big_Data___Analytics', NULL, NULL, 'Active', NULL, NULL, NULL),
(10, 1, 'Data Analytics', 'Data_Analytics', NULL, NULL, 'Active', NULL, NULL, NULL),
(11, 1, 'MS Office with AI & Chat GPT', 'MS_Office_with_AI___Chat_GPT', NULL, NULL, 'Inactive', NULL, NULL, NULL),
(12, 1, 'Full Stack Web Development', 'Full_Stack_Web_Development', NULL, NULL, 'Active', NULL, NULL, NULL),
(13, 1, 'Cyber Information Security and Management', 'Cyber_Information_Security_and_Management', NULL, NULL, 'Active', NULL, NULL, NULL),
(14, 1, 'Robotic Edge Computing with AI', 'Robotic_Edge_Computing_with_AI', NULL, NULL, 'Active', NULL, NULL, NULL),
(15, 2, 'Banking & Finance', 'Banking_Finance', NULL, NULL, 'Active', NULL, NULL, NULL),
(16, 2, 'Office Management', 'Office_Management', 'F1730107115.png', NULL, 'Active', NULL, NULL, NULL),
(17, 2, 'Sales & Marketing', 'Sales_Marketing', NULL, NULL, 'Active', NULL, NULL, NULL),
(18, 2, 'Spoken English & Soft Skills', 'Spoken_English___Soft_Skills', NULL, NULL, 'Active', NULL, NULL, NULL),
(19, 2, 'Personality Development', 'Personality_Development', NULL, NULL, 'Active', NULL, NULL, NULL),
(20, 3, 'Robotics', 'Robotics', NULL, NULL, 'Active', NULL, NULL, NULL),
(21, 3, 'Coding', 'Coding', NULL, NULL, 'Active', NULL, NULL, NULL),
(22, 3, 'AI & ML', 'AI_ML', NULL, NULL, 'Active', NULL, NULL, NULL),
(23, 3, 'Python', 'Python', NULL, NULL, 'Active', NULL, NULL, NULL),
(24, 3, 'Core & Advanced Java', 'Core_Advanced_Java', NULL, NULL, 'Active', NULL, NULL, NULL),
(25, 3, 'Digital Marketing', 'Digital_Marketing', NULL, NULL, 'Active', NULL, NULL, NULL),
(26, 3, 'Financial Accounting with Tally, GST & E-Filing', 'Financial_Accounting_with_Tally_GST_E_Filing', NULL, NULL, 'Active', NULL, NULL, NULL),
(27, 2, 'Financial Accounting with GST E- Filing', 'Financial_Accounting_with_GST_E__Filing', 'F1730107086.png', 'Icon', 'Active', NULL, NULL, NULL),
(28, 3, 'Spoken English & Personality Development', 'Spoken_English___Personality_Development', NULL, NULL, 'Active', NULL, NULL, NULL),
(29, 29, 'Computer Application with Internet', 'Computer_Application_with_Internet', NULL, NULL, 'Active', NULL, NULL, NULL),
(30, NULL, 'Journalism Courses', 'Journalism_Courses', NULL, NULL, 'Active', NULL, NULL, NULL),
(31, NULL, 'Kids Courses', 'Kids_Courses', NULL, NULL, 'Active', NULL, NULL, NULL),
(32, 32, 'Discover More...', 'Discover_More...', NULL, NULL, 'Active', NULL, NULL, NULL),
(33, 33, 'Download Information Brochure', 'Download_Information_Brochure', NULL, NULL, 'Active', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_enquiry`
--

CREATE TABLE `course_enquiry` (
  `id` int(11) NOT NULL,
  `dt1` date DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `course` text DEFAULT NULL,
  `dt2` date DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `status` enum('Pending','Success') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_enquiry`
--

INSERT INTO `course_enquiry` (`id`, `dt1`, `name`, `mobile`, `email`, `course`, `dt2`, `remarks`, `status`) VALUES
(3, '2025-03-13', 'Diptika Dey', '9330492985', 'diptikadey@gmail.com', '19~', '2025-04-01', NULL, 'Success'),
(4, '2025-03-13', 'DIPTIKA DEY', '9330492985', 'diptikadey@gmail.com', '14~', '2025-04-01', NULL, 'Success'),
(10, '2025-03-25', 'Joydeep Samui', '9330539688', NULL, '1~', '2025-03-30', NULL, 'Success'),
(12, '2025-04-15', '', '', NULL, NULL, NULL, NULL, 'Pending'),
(13, '2025-04-18', '', '', NULL, NULL, NULL, NULL, 'Pending'),
(14, '2025-04-23', 'akash biswas', '7278746528', 'akashbiswas09091996@gmail.com', '2~18~', NULL, NULL, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `course_instructor`
--

CREATE TABLE `course_instructor` (
  `ci_id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_review`
--

CREATE TABLE `course_review` (
  `cr_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `admin_status` enum('Pending','Approved','Rejected') NOT NULL DEFAULT 'Pending',
  `status` enum('Active','Inactive') DEFAULT NULL,
  `dt2` date DEFAULT NULL,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_review`
--

INSERT INTO `course_review` (`cr_id`, `course_id`, `date`, `rating`, `name`, `designation`, `email`, `review`, `image`, `admin_status`, `status`, `dt2`, `remarks`) VALUES
(1, 0, '2024-05-21', 5, 'SAYAN BISWAS', 'DIGITAL MARKETING STUDENT WBJRS', NULL, 'I am a student in Advance Digital Marketing Course from WBJRS Academic Foundation. I feel very glad and proud. The Classes are smart with Industrial Expert.', 'F1716283602.jpg', 'Approved', 'Active', NULL, NULL),
(2, 0, '2024-05-22', 5, 'RAJU NATH', 'LLB, SIKKIM SKILL UNIVERSITY', NULL, 'I got hassle free admission in LLB from WBJRS academic Foundation in Sikkim Skill University. I feel very happy with the servicss and Facilities from WBJRS.', 'F1716320011.jpg', 'Approved', 'Active', NULL, NULL),
(3, 0, '2024-05-22', 5, 'RIZA BISWAS', 'SPOKEN ENGLISH & DM STUDENT, WBJRS', NULL, 'I am student of Digital Marketing Course. Teachers are good and I feel good in WBJRS Academic Foundation.', 'F1716320050.jpg', 'Approved', 'Active', NULL, NULL),
(4, 0, '2024-05-22', 5, 'ASISH KUMAR PAUL', 'SALES EXECUTIVE, RAIPUR ELECTRONICS.', NULL, 'I got Sales and Marketing Course from WBJRS Academic Foundation. And, got my job after completation of the course. Its the best institution in bkp.', 'F1716319910.jpg', 'Approved', 'Active', NULL, NULL),
(5, 0, '2024-07-04', 4, 'SANJANA ROY', 'OFFICE MANNAGEMENT STUDENT WBJRS', NULL, 'WBJRS is one of the best Institutions in such areas. I hv visited for some enquiries. And I am very satisfied with them. Nowadays, Career development and opportunities are very essential. So, this academy is the best.', 'F1720095993.png', 'Approved', 'Active', NULL, NULL),
(6, 0, '2025-03-26', 5, 'Creative Fly', 'Google Review', NULL, 'They are providing excellent career guidance and job oriented courses with placement assistance. Great work', 'F1742987597.jpg', 'Approved', 'Active', NULL, NULL),
(7, 0, '2025-03-26', 5, 'Mithun Nath', 'Google Review', NULL, 'Youngsters getting very good guidance and career support', 'F1742987767.jpg', 'Approved', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `e_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `doj` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expert`
--

CREATE TABLE `expert` (
  `e_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `type` varchar(50) DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expert`
--

INSERT INTO `expert` (`e_id`, `name`, `designation`, `gender`, `image`, `status`, `type`, `order_no`) VALUES
(1, 'Swarup Dutta', 'Sales Consultant', 'Male', 'F1716188873.jpg', 'Active', 'Team~', 9),
(2, 'Tarun Kumar Ghosh', 'Director Academics &  Career Counselling Expert', 'Male', 'F1718788370.jpeg', 'Active', 'Expert~Team~rnd~Advisory~', 3),
(3, 'Timir Chakraborty', 'Client Relationship Executive', 'Male', 'F1716188958.jpg', 'Inactive', 'Team~', 6),
(4, 'Samirandra Bhattacharya', 'EX- Client Relationship Manager', 'Male', 'F1716188998.jpg', 'Active', 'Expert~', 11),
(5, 'Rajdeep Shaw', 'Director Operations & Branding Expert', 'Male', 'F1716313700.jpg', 'Inactive', 'Team~GovBody~Advisory~', 2),
(6, 'Deepika Bhakta', 'Senior Counsellor & Children Training Expert', 'Female', 'F1739524648.jpg', 'Active', 'Expert~Team~', 4),
(7, 'Aman Tiwari', 'EX - Data Science & AI Expert', 'Male', 'F1718180465.jpeg', 'Active', 'Expert~', 12),
(8, 'Rumi Paul', 'Managing Director & Management Expert', 'Female', 'F1716202359.jpg', 'Active', 'Expert~Team~GovBody~Advisory~', 1),
(9, 'Amlan Nath', 'Ex - Digital Marketing Specialist', 'Male', 'F1716312423.jpg', 'Active', 'Expert~', 10),
(10, 'Anand Chowdhury', 'Chief Technical Officer & A I & M L Expert', 'Male', 'F1716313055.jpg', 'Inactive', 'Expert~rnd~Advisory~', 3),
(11, 'Utpal Sinha', 'Digital Marketing Officer & Digital MArketing Expert', 'Male', 'F1718180099.jpeg', 'Active', 'Expert~Team~rnd~', 6),
(12, 'Tanushree Das', 'Spoken English & Soft Skills Expert', 'Female', 'F1718263841.jpeg', 'Active', 'Expert~', 8),
(13, 'Mayuri Mishra', 'Ex -Public Relation Executive', 'Female', 'F1719824017.jpg', 'Active', 'Expert~', 8),
(14, 'MANISHA DAS', 'OFFICE ASSISTANT & TELE-CALLER', 'Female', 'F1719821210.jpg', 'Active', 'Expert~', 10),
(15, 'Sukumar Saha', 'Master Trainer - Tally Prime', 'Male', 'F1728980182.jpg', 'Active', 'Expert~', 6),
(16, 'RANADHIR MAJUMDER', 'Head - Marketing & Digital Strategy Expert', 'Male', 'F1730914409.png', 'Active', 'Expert~Team~rnd~Advisory~', 9),
(17, 'ABHIJIT GHOSH', 'Director Operations & Marketing Expert', 'Male', 'F1738751009.jpeg', 'Active', 'Expert~Team~rnd~GovBody~Advisory~', 1),
(18, 'Nilabha Das', 'Computer Application Trainer & IT Expert', 'Male', 'F1739038882.jpeg', 'Active', 'Expert~', 5),
(19, 'Adv. AMITAVA GHOSH', 'Legal Advisor & Legal Head', 'Male', 'F1740046599.jpeg', 'Active', 'rnd~Advisory~', 7),
(20, 'Skill Up', 'Our Online Platform', 'Male', 'F1743506128.jpg', 'Active', 'Global~', 12);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `g_id` int(11) NOT NULL,
  `album` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `front_img` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`g_id`, `album`, `title`, `image`, `status`, `front_img`) VALUES
(9, 1, 'Seminar at MAHADEVANANDA MAHAVIDYALAYA', 'F1732621193.jpg', 'Active', 'Yes'),
(14, 2, 'Free Career Counselling on Poila Baisakh', 'F1715695448.jpeg', 'Active', 'Yes'),
(21, 3, 'Greetings to Students.', 'F1715695967.jpeg', 'Active', 'Yes'),
(27, 4, 'Guest in Cultural Programme.', 'F1715696159.png', 'Active', 'Yes'),
(38, 6, NULL, 'F1719837176.jpg', 'Active', 'Yes'),
(54, 10, NULL, 'F1719838117.jpg', 'Active', 'Yes'),
(56, 5, NULL, 'F1719838196.jpg', 'Active', 'Yes'),
(57, 7, NULL, 'F1720179223.jpg', 'Active', 'Yes'),
(70, 8, NULL, 'F1720181088.jpg', 'Active', 'No'),
(79, 17, NULL, 'F1720181295.jpg', 'Active', 'Yes'),
(80, 8, NULL, 'F1720181305.jpg', 'Active', 'No'),
(81, 8, NULL, 'F1720181318.jpg', 'Active', 'No'),
(82, 2, NULL, 'F1720181826.jpg', 'Active', 'No'),
(84, 2, NULL, 'F1720181881.jpg', 'Active', 'No'),
(87, 2, NULL, 'F1720182822.jpeg', 'Active', 'No'),
(88, 2, NULL, 'F1720182897.jpeg', 'Active', 'No'),
(89, 2, NULL, 'F1720182914.jpg', 'Active', 'No'),
(90, 2, NULL, 'F1720182930.jpeg', 'Active', 'No'),
(91, 2, NULL, 'F1720182978.jpg', 'Active', 'No'),
(92, 2, NULL, 'F1720183022.jpg', 'Active', 'No'),
(93, 2, NULL, 'F1720183044.jpg', 'Active', 'No'),
(94, 2, NULL, 'F1720183069.jpg', 'Active', 'No'),
(95, 9, NULL, 'F1723032394.jpeg', 'Active', 'No'),
(97, 9, NULL, 'F1723032751.jpeg', 'Active', 'Yes'),
(98, 9, NULL, 'F1723032605.jpeg', 'Active', 'No'),
(99, 9, NULL, 'F1723032644.jpeg', 'Active', 'No'),
(100, 9, NULL, 'F1723032673.jpeg', 'Active', 'No'),
(101, 10, NULL, 'F1723033013.jpeg', 'Active', 'No'),
(103, 10, NULL, 'F1723033063.jpeg', 'Active', 'No'),
(104, 10, NULL, 'F1723033168.jpeg', 'Active', 'No'),
(105, 10, NULL, 'F1723033086.jpeg', 'Active', 'No'),
(107, 11, NULL, 'F1723033645.jpeg', 'Active', 'No'),
(108, 11, NULL, 'F1723034181.jpeg', 'Active', 'Yes'),
(109, 11, NULL, 'F1723033893.jpeg', 'Active', 'No'),
(110, 11, NULL, 'F1723033904.jpeg', 'Active', 'No'),
(111, 11, NULL, 'F1723033916.jpeg', 'Active', 'No'),
(112, 11, NULL, 'F1723033926.jpeg', 'Active', 'No'),
(113, 11, NULL, 'F1723033937.jpeg', 'Active', 'No'),
(114, 11, NULL, 'F1723034102.jpeg', 'Active', 'No'),
(115, 12, NULL, 'F1726649262.jpg', 'Active', 'No'),
(117, 12, NULL, 'F1726649344.jpg', 'Active', 'No'),
(118, 12, NULL, 'F1726649370.jpg', 'Active', 'No'),
(120, 12, NULL, 'F1726649489.jpg', 'Active', 'No'),
(121, 12, NULL, 'F1726649765.jpg', 'Active', 'No'),
(122, 12, NULL, 'F1726651625.jpg', 'Active', 'No'),
(123, 12, NULL, 'F1726651725.jpg', 'Active', 'No'),
(124, 12, NULL, 'F1726651786.jpg', 'Active', 'No'),
(125, 13, NULL, 'F1726652462.jpg', 'Active', 'No'),
(126, 13, NULL, 'F1726652484.jpg', 'Active', 'No'),
(127, 13, NULL, 'F1726652494.jpg', 'Active', 'No'),
(128, 13, NULL, 'F1726652520.jpg', 'Active', 'No'),
(129, 13, NULL, 'F1726656368.jpg', 'Active', 'No'),
(130, 13, NULL, 'F1726656396.jpg', 'Active', 'No'),
(132, 12, NULL, 'F1726912034.jpg', 'Active', 'No'),
(134, 12, NULL, 'F1726912981.jpg', 'Active', 'No'),
(135, 12, NULL, 'F1726913011.jpg', 'Active', 'No'),
(136, 12, NULL, 'F1726914361.jpg', 'Active', 'No'),
(138, 15, NULL, 'F1728300774.jpg', 'Active', 'Yes'),
(139, 15, NULL, 'F1728300896.jpg', 'Active', 'No'),
(140, 15, NULL, 'F1728300922.jpg', 'Active', 'No'),
(142, 15, NULL, 'F1728302313.jpg', 'Active', 'No'),
(143, 15, NULL, 'F1728302376.jpg', 'Active', 'No'),
(144, 15, NULL, 'F1728302397.jpg', 'Active', 'No'),
(145, 15, NULL, 'F1728302436.jpg', 'Active', 'No'),
(146, 15, NULL, 'F1728302459.jpg', 'Active', 'No'),
(147, 15, NULL, 'F1728302481.jpg', 'Active', 'No'),
(148, 15, NULL, 'F1728302533.jpg', 'Active', 'No'),
(149, 15, NULL, 'F1728303891.jpg', 'Active', 'No'),
(150, 15, NULL, 'F1728303930.jpg', 'Active', 'No'),
(153, 16, NULL, 'F1728304163.jpg', 'Active', 'No'),
(156, 16, NULL, 'F1728304213.jpg', 'Active', 'No'),
(157, 16, NULL, 'F1728304227.jpg', 'Active', 'Yes'),
(160, 14, NULL, 'F1728305405.jpg', 'Active', 'No'),
(161, 14, NULL, 'F1728305444.jpg', 'Active', 'No'),
(162, 14, NULL, 'F1728305459.jpg', 'Active', 'No'),
(163, 14, NULL, 'F1728305476.jpg', 'Active', 'No'),
(164, 14, NULL, 'F1728305502.jpg', 'Active', 'No'),
(165, 14, NULL, 'F1728305523.jpg', 'Active', 'No'),
(166, 14, NULL, 'F1728305539.jpg', 'Active', 'No'),
(167, 14, NULL, 'F1728305557.jpg', 'Active', 'No'),
(168, 14, NULL, 'F1728305572.jpg', 'Active', 'No'),
(169, 14, NULL, 'F1728305590.jpg', 'Active', 'No'),
(170, 14, NULL, 'F1728305616.jpg', 'Active', 'No'),
(173, 14, NULL, 'F1728305830.jpg', 'Active', 'No'),
(174, 14, NULL, 'F1728305848.jpg', 'Active', 'No'),
(175, 14, NULL, 'F1728305864.jpg', 'Active', 'Yes'),
(176, 8, NULL, 'F1732614516.jpg', 'Active', 'Yes'),
(177, 8, NULL, 'F1732614575.jpg', 'Active', 'No'),
(178, 8, NULL, 'F1732614794.jpg', 'Active', 'No'),
(179, 1, NULL, 'F1732622373.jpg', 'Active', 'No'),
(182, 1, NULL, 'F1732622533.jpg', 'Active', 'No'),
(183, 1, NULL, 'F1732622550.jpg', 'Active', 'No'),
(184, 3, NULL, 'F1732622624.jpeg', 'Active', 'No'),
(185, 5, NULL, 'F1732622733.jpg', 'Active', 'No'),
(186, 5, NULL, 'F1732622791.jpg', 'Active', 'No'),
(188, 5, NULL, 'F1732622939.jpg', 'Active', 'No'),
(189, 17, NULL, 'F1738752008.jpeg', 'Active', 'No'),
(190, 17, NULL, 'F1738752022.jpeg', 'Active', 'No'),
(191, 17, NULL, 'F1738752033.jpeg', 'Active', 'No'),
(192, 17, NULL, 'F1738752044.jpeg', 'Active', 'No'),
(193, 17, NULL, 'F1738752055.jpeg', 'Active', 'No'),
(194, 17, NULL, 'F1738752082.jpeg', 'Active', 'No'),
(195, 17, NULL, 'F1738752093.jpeg', 'Active', 'No'),
(196, 17, NULL, 'F1738752113.jpeg', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_album`
--

CREATE TABLE `gallery_album` (
  `ga_id` int(11) NOT NULL,
  `album_name` varchar(100) DEFAULT NULL,
  `search_name` text DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `meta_title` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery_album`
--

INSERT INTO `gallery_album` (`ga_id`, `album_name`, `search_name`, `status`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Job Fair and Seminar at Mahadevananda Mahavidyalaya, Barrackpore', 'job_fair_and_seminar_at_mahadevananda_mahavidyalaya__barrackpore', 'Active', 'WBJRS | Job Fair and Seminar at Mahadevananda Mahavidyalaya, Barrackpore', 'Job Fair and Seminar at Mahadevananda Mahavidyalaya, Barrackpore', 'Job Fair and Seminar at Mahadevananda Mahavidyalaya, Barrackpore Gallery'),
(2, 'Free Career Counselling at WBJRS on Poila Baisakh 2024', 'free_career_counselling_at_wbjrs_on_poila_baisakh_2024', 'Active', NULL, NULL, NULL),
(3, 'Greetings to Students at WBJRS on Admission.', 'greetings_to_students_at_wbjrs_on_admission_', 'Active', NULL, NULL, NULL),
(4, 'Guest and Sponsor in Cultural Programme at Barrackpore.', 'guest_and_sponsor_in_cultural_programme_at_barrackpore_', 'Active', NULL, NULL, NULL),
(5, 'Seminar at Swami Vivekananda University, Kolkata, North 24 Pgs.', 'seminar_at_swami_vivekananda_university__kolkata__north_24_pgs_', 'Active', NULL, NULL, NULL),
(6, 'Workshop on Digital Marketing at Regent College Barrackpore, North 24 Pgs', 'workshop_on_digital_marketing_at_regent_college_barrackpore__north_24_pgs', 'Active', NULL, NULL, NULL),
(7, 'Seminar at Champdani Arya Vidyapith (H.S). Baidyabati, Hooghly.', 'seminar_at_champdani_arya_vidyapith_(h_s)__baidyabati__hooghly_', 'Active', NULL, NULL, NULL),
(8, 'Seminar at Gondalpara Shastri Hindi High school, Bhadreswar, Hooghly', 'seminar_at_gondalpara_shastri_hindi_high_school__bhadreswar__hooghly', 'Active', NULL, NULL, NULL),
(9, 'Seminar at AB Model High School, Talpukur', 'seminar_at_ab_model_high_school__talpukur', 'Active', NULL, NULL, NULL),
(10, 'Seminar at Swami Vivekananda University, Barasat', 'seminar_at_swami_vivekananda_university__barasat', 'Active', NULL, NULL, NULL),
(11, 'Seminar on Data Sci., Digital Mrkt. & Soft skill at Elitte Institute of Engineering & Management', 'seminar_on_data_sci___digital_mrkt____soft_skill_at_elitte_institute_of_engineering___management', 'Active', NULL, NULL, NULL),
(12, 'Seminar on Impact & Effectiveness of AI-ML with Generative AI and Data Science in the current Indust', 'seminar_on_impact___effectiveness_of_ai_ml_with_generative_ai_and_data_science_in_the_current_indust', 'Active', NULL, NULL, NULL),
(13, 'Seminar on Cyber Security and Modern Computing at Guru Nanak Institute of Technology(GNIT), Sodepur.', 'seminar_on_cyber_security_and_modern_computing_at_guru_nanak_institute_of_technology(gnit)__sodepur_', 'Active', NULL, NULL, NULL),
(14, 'Participation Certificate Distribution At Gondalpara Sastri Hindi High School', 'participation_certificate_distribution_at_gondalpara_sastri_hindi_high_school', 'Active', NULL, NULL, NULL),
(15, 'Nirmiti - The Start Up Meet at Regent Education and Research Foundation, Barasat.', 'nirmiti___the_start_up_meet_at_regent_education_and_research_foundation__barasat_', 'Active', NULL, NULL, NULL),
(16, 'As a Special Guest - Launching event of TVG, Lonavala Mumbai.', 'as_a_special_guest___launching_event_of_tvg__lonavala_mumbai_', 'Active', NULL, NULL, NULL),
(17, 'AB MODEL HIGH SCHOOL  Certification Programme at WBJRS Campus on 01st Feb 2025.', 'ab_model_high_school__certification_programme_at_wbjrs_campus_on_01st_feb_2025_', 'Active', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_slider`
--

CREATE TABLE `home_slider` (
  `hs_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_slider`
--

INSERT INTO `home_slider` (`hs_id`, `title`, `image`, `status`) VALUES
(45, NULL, 'S1739521147.jpg', 'Active'),
(47, NULL, 'S1739521179.jpeg', 'Active'),
(49, NULL, 'S1739521480.jpg', 'Active'),
(52, NULL, 'S1739521722.jpeg', 'Active'),
(53, NULL, 'S1742901397.jpg', 'Active'),
(54, NULL, 'S1742901405.jpg', 'Active'),
(55, NULL, 'S1742901410.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `loc_district`
--

CREATE TABLE `loc_district` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district` varchar(255) DEFAULT NULL,
  `state_id` varchar(255) DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loc_district`
--

INSERT INTO `loc_district` (`id`, `district`, `state_id`, `order_no`, `status`) VALUES
(1, 'ANANTNAG', '1', NULL, 'Active'),
(2, 'Budgam', '1', NULL, 'Active'),
(3, 'BARAMULLA', '1', NULL, 'Active'),
(4, 'DODA', '1', NULL, 'Active'),
(5, 'JAMMU', '1', NULL, 'Active'),
(6, 'KARGIL', '37', NULL, 'Active'),
(7, 'KATHUA', '1', NULL, 'Active'),
(8, 'KUPWARA', '1', NULL, 'Active'),
(9, 'LEH LADAKH', '37', NULL, 'Active'),
(10, 'POONCH', '1', NULL, 'Active'),
(11, 'PULWAMA', '1', NULL, 'Active'),
(12, 'RAJOURI', '1', NULL, 'Active'),
(13, 'SRINAGAR', '1', NULL, 'Active'),
(14, 'UDHAMPUR', '1', NULL, 'Active'),
(16, 'CHAMBA', '2', NULL, 'Active'),
(17, 'HAMIRPUR', '2', NULL, 'Active'),
(18, 'KANGRA', '2', NULL, 'Active'),
(19, 'KINNAUR', '2', NULL, 'Active'),
(20, 'KULLU', '2', NULL, 'Active'),
(21, 'LAHUL AND SPITI', '2', NULL, 'Active'),
(22, 'MANDI', '2', NULL, 'Active'),
(23, 'SHIMLA', '2', NULL, 'Active'),
(24, 'SIRMAUR', '2', NULL, 'Active'),
(25, 'SOLAN', '2', NULL, 'Active'),
(26, 'UNA', '2', NULL, 'Active'),
(27, 'AMRITSAR', '3', NULL, 'Active'),
(28, 'BATHINDA', '3', NULL, 'Active'),
(29, 'FARIDKOT', '3', NULL, 'Active'),
(30, 'FATEHGARH SAHIB', '3', NULL, 'Active'),
(31, 'FIROZEPUR', '3', NULL, 'Active'),
(32, 'GURDASPUR', '3', NULL, 'Active'),
(33, 'HOSHIARPUR', '3', NULL, 'Active'),
(34, 'JALANDHAR', '3', NULL, 'Active'),
(35, 'KAPURTHALA', '3', NULL, 'Active'),
(36, 'LUDHIANA', '3', NULL, 'Active'),
(37, 'MANSA', '3', NULL, 'Active'),
(38, 'MOGA', '3', NULL, 'Active'),
(39, 'SRI MUKTSAR SAHIB', '3', NULL, 'Active'),
(40, 'Shahid Bhagat Singh Nagar', '3', NULL, 'Active'),
(41, 'PATIALA', '3', NULL, 'Active'),
(42, 'RUPNAGAR', '3', NULL, 'Active'),
(43, 'SANGRUR', '3', NULL, 'Active'),
(44, 'CHANDIGARH', '4', NULL, 'Active'),
(45, 'ALMORA', '5', NULL, 'Active'),
(46, 'BAGESHWAR', '5', NULL, 'Active'),
(47, 'CHAMOLI', '5', NULL, 'Active'),
(48, 'CHAMPAWAT', '5', NULL, 'Active'),
(49, 'DEHRADUN', '5', NULL, 'Active'),
(50, 'HARIDWAR', '5', NULL, 'Active'),
(51, 'NAINITAL', '5', NULL, 'Active'),
(52, 'PAURI GARHWAL', '5', NULL, 'Active'),
(53, 'PITHORAGARH', '5', NULL, 'Active'),
(54, 'RUDRA PRAYAG', '5', NULL, 'Active'),
(55, 'TEHRI GARHWAL', '5', NULL, 'Active'),
(56, 'UDAM SINGH NAGAR', '5', NULL, 'Active'),
(57, 'UTTAR KASHI', '5', NULL, 'Active'),
(58, 'AMBALA', '6', NULL, 'Active'),
(59, 'BHIWANI', '6', NULL, 'Active'),
(60, 'FARIDABAD', '6', NULL, 'Active'),
(61, 'FATEHABAD', '6', NULL, 'Active'),
(62, 'GURUGRAM', '6', NULL, 'Active'),
(63, 'HISAR', '6', NULL, 'Active'),
(64, 'JHAJJAR', '6', NULL, 'Active'),
(65, 'JIND', '6', NULL, 'Active'),
(66, 'KAITHAL', '6', NULL, 'Active'),
(67, 'KARNAL', '6', NULL, 'Active'),
(68, 'KURUKSHETRA', '6', NULL, 'Active'),
(69, 'MAHENDRAGARH', '6', NULL, 'Active'),
(70, 'PANCHKULA', '6', NULL, 'Active'),
(71, 'PANIPAT', '6', NULL, 'Active'),
(72, 'REWARI', '6', NULL, 'Active'),
(73, 'ROHTAK', '6', NULL, 'Active'),
(74, 'SIRSA', '6', NULL, 'Active'),
(75, 'SONIPAT', '6', NULL, 'Active'),
(76, 'YAMUNANAGAR', '6', NULL, 'Active'),
(86, 'AJMER', '8', NULL, 'Active'),
(87, 'ALWAR', '8', NULL, 'Active'),
(88, 'BANSWARA', '8', NULL, 'Active'),
(89, 'BARAN', '8', NULL, 'Active'),
(90, 'BARMER', '8', NULL, 'Active'),
(91, 'BHARATPUR', '8', NULL, 'Active'),
(92, 'BHILWARA', '8', NULL, 'Active'),
(93, 'BIKANER', '8', NULL, 'Active'),
(94, 'BUNDI', '8', NULL, 'Active'),
(95, 'CHITTORGARH', '8', NULL, 'Active'),
(96, 'CHURU', '8', NULL, 'Active'),
(97, 'DAUSA', '8', NULL, 'Active'),
(98, 'DHOLPUR', '8', NULL, 'Active'),
(99, 'DUNGARPUR', '8', NULL, 'Active'),
(100, 'GANGANAGAR', '8', NULL, 'Active'),
(101, 'HANUMANGARH', '8', NULL, 'Active'),
(102, 'JAIPUR', '8', NULL, 'Active'),
(103, 'JAISALMER', '8', NULL, 'Active'),
(104, 'JALORE', '8', NULL, 'Active'),
(105, 'JHALAWAR', '8', NULL, 'Active'),
(106, 'JHUNJHUNU', '8', NULL, 'Active'),
(107, 'JODHPUR', '8', NULL, 'Active'),
(108, 'KARAULI', '8', NULL, 'Active'),
(109, 'KOTA', '8', NULL, 'Active'),
(110, 'NAGAUR', '8', NULL, 'Active'),
(111, 'PALI', '8', NULL, 'Active'),
(112, 'RAJSAMAND', '8', NULL, 'Active'),
(113, 'SAWAI MADHOPUR', '8', NULL, 'Active'),
(114, 'SIKAR', '8', NULL, 'Active'),
(115, 'SIROHI', '8', NULL, 'Active'),
(116, 'TONK', '8', NULL, 'Active'),
(117, 'UDAIPUR', '8', NULL, 'Active'),
(118, 'AGRA', '9', NULL, 'Active'),
(119, 'ALIGARH', '9', NULL, 'Active'),
(120, 'PRAYAGRAJ', '9', NULL, 'Active'),
(121, 'AMBEDKAR NAGAR', '9', NULL, 'Active'),
(122, 'AURAIYA', '9', NULL, 'Active'),
(123, 'AZAMGARH', '9', NULL, 'Active'),
(124, 'BAGHPAT', '9', NULL, 'Active'),
(125, 'BAHRAICH', '9', NULL, 'Active'),
(126, 'BALLIA', '9', NULL, 'Active'),
(128, 'BANDA', '9', NULL, 'Active'),
(129, 'BARABANKI', '9', NULL, 'Active'),
(130, 'BAREILLY', '9', NULL, 'Active'),
(131, 'BASTI', '9', NULL, 'Active'),
(132, 'BIJNOR', '9', NULL, 'Active'),
(133, 'BUDAUN', '9', NULL, 'Active'),
(134, 'BULANDSHAHR', '9', NULL, 'Active'),
(135, 'CHANDAULI', '9', NULL, 'Active'),
(136, 'CHITRAKOOT', '9', NULL, 'Active'),
(137, 'DEORIA', '9', NULL, 'Active'),
(138, 'ETAH', '9', NULL, 'Active'),
(139, 'ETAWAH', '9', NULL, 'Active'),
(140, 'AYODHYA', '9', NULL, 'Active'),
(141, 'FARRUKHABAD', '9', NULL, 'Active'),
(142, 'FATEHPUR', '9', NULL, 'Active'),
(143, 'FIROZABAD', '9', NULL, 'Active'),
(144, 'GAUTAM BUDDHA NAGAR', '9', NULL, 'Active'),
(145, 'GHAZIABAD', '9', NULL, 'Active'),
(146, 'GHAZIPUR', '9', NULL, 'Active'),
(147, 'GONDA', '9', NULL, 'Active'),
(148, 'GORAKHPUR', '9', NULL, 'Active'),
(150, 'HARDOI', '9', NULL, 'Active'),
(151, 'JALAUN', '9', NULL, 'Active'),
(152, 'JAUNPUR', '9', NULL, 'Active'),
(153, 'JHANSI', '9', NULL, 'Active'),
(154, 'AMROHA', '9', NULL, 'Active'),
(155, 'KANNAUJ', '9', NULL, 'Active'),
(156, 'KANPUR DEHAT', '9', NULL, 'Active'),
(157, 'KANPUR NAGAR', '9', NULL, 'Active'),
(158, 'KAUSHAMBI', '9', NULL, 'Active'),
(159, 'KHERI', '9', NULL, 'Active'),
(160, 'KUSHI NAGAR', '9', NULL, 'Active'),
(161, 'LALITPUR', '9', NULL, 'Active'),
(162, 'LUCKNOW', '9', NULL, 'Active'),
(163, 'HATHRAS', '9', NULL, 'Active'),
(164, 'MAHARAJGANJ', '9', NULL, 'Active'),
(165, 'MAHOBA', '9', NULL, 'Active'),
(166, 'MAINPURI', '9', NULL, 'Active'),
(167, 'MATHURA', '9', NULL, 'Active'),
(168, 'MAU', '9', NULL, 'Active'),
(169, 'MEERUT', '9', NULL, 'Active'),
(170, 'MIRZAPUR', '9', NULL, 'Active'),
(171, 'MORADABAD', '9', NULL, 'Active'),
(172, 'MUZAFFARNAGAR', '9', NULL, 'Active'),
(173, 'PILIBHIT', '9', NULL, 'Active'),
(175, 'RAE BARELI', '9', NULL, 'Active'),
(176, 'RAMPUR', '9', NULL, 'Active'),
(177, 'SAHARANPUR', '9', NULL, 'Active'),
(178, 'SANT KABEER NAGAR', '9', NULL, 'Active'),
(179, 'BHADOHI', '9', NULL, 'Active'),
(180, 'SHAHJAHANPUR', '9', NULL, 'Active'),
(181, 'SHRAVASTI', '9', NULL, 'Active'),
(182, 'SIDDHARTH NAGAR', '9', NULL, 'Active'),
(183, 'SITAPUR', '9', NULL, 'Active'),
(184, 'SONBHADRA', '9', NULL, 'Active'),
(185, 'SULTANPUR', '9', NULL, 'Active'),
(186, 'UNNAO', '9', NULL, 'Active'),
(187, 'VARANASI', '9', NULL, 'Active'),
(188, 'ARARIA', '10', NULL, 'Active'),
(189, 'AURANGABAD', '10', NULL, 'Active'),
(190, 'BANKA', '10', NULL, 'Active'),
(191, 'BEGUSARAI', '10', NULL, 'Active'),
(192, 'BHAGALPUR', '10', NULL, 'Active'),
(193, 'BHOJPUR', '10', NULL, 'Active'),
(194, 'BUXAR', '10', NULL, 'Active'),
(195, 'DARBHANGA', '10', NULL, 'Active'),
(196, 'GAYA', '10', NULL, 'Active'),
(197, 'GOPALGANJ', '10', NULL, 'Active'),
(198, 'JAMUI', '10', NULL, 'Active'),
(199, 'JEHANABAD', '10', NULL, 'Active'),
(200, 'KAIMUR (BHABUA)', '10', NULL, 'Active'),
(201, 'KATIHAR', '10', NULL, 'Active'),
(202, 'KHAGARIA', '10', NULL, 'Active'),
(203, 'KISHANGANJ', '10', NULL, 'Active'),
(204, 'LAKHISARAI', '10', NULL, 'Active'),
(205, 'MADHEPURA', '10', NULL, 'Active'),
(206, 'MADHUBANI', '10', NULL, 'Active'),
(207, 'MUNGER', '10', NULL, 'Active'),
(208, 'MUZAFFARPUR', '10', NULL, 'Active'),
(209, 'NALANDA', '10', NULL, 'Active'),
(210, 'NAWADA', '10', NULL, 'Active'),
(211, 'PASHCHIM CHAMPARAN', '10', NULL, 'Active'),
(212, 'PATNA', '10', NULL, 'Active'),
(213, 'PURBI CHAMPARAN', '10', NULL, 'Active'),
(214, 'PURNIA', '10', NULL, 'Active'),
(215, 'ROHTAS', '10', NULL, 'Active'),
(216, 'SAHARSA', '10', NULL, 'Active'),
(217, 'SAMASTIPUR', '10', NULL, 'Active'),
(218, 'SARAN', '10', NULL, 'Active'),
(219, 'SHEIKHPURA', '10', NULL, 'Active'),
(220, 'SHEOHAR', '10', NULL, 'Active'),
(221, 'SITAMARHI', '10', NULL, 'Active'),
(222, 'SIWAN', '10', NULL, 'Active'),
(223, 'SUPAUL', '10', NULL, 'Active'),
(224, 'VAISHALI', '10', NULL, 'Active'),
(225, 'EAST DISTRICT', '11', NULL, 'Active'),
(226, 'NORTH DISTRICT', '11', NULL, 'Active'),
(227, 'SOUTH DISTRICT', '11', NULL, 'Active'),
(228, 'WEST DISTRICT', '11', NULL, 'Active'),
(229, 'CHANGLANG', '12', NULL, 'Active'),
(230, 'DIBANG VALLEY', '12', NULL, 'Active'),
(231, 'EAST KAMENG', '12', NULL, 'Active'),
(232, 'EAST SIANG', '12', NULL, 'Active'),
(233, 'KURUNG KUMEY', '12', NULL, 'Active'),
(234, 'LOHIT', '12', NULL, 'Active'),
(235, 'LOWER DIBANG VALLEY', '12', NULL, 'Active'),
(236, 'LOWER SUBANSIRI', '12', NULL, 'Active'),
(237, 'PAPUM PARE', '12', NULL, 'Active'),
(238, 'TAWANG', '12', NULL, 'Active'),
(239, 'TIRAP', '12', NULL, 'Active'),
(240, 'UPPER SIANG', '12', NULL, 'Active'),
(241, 'UPPER SUBANSIRI', '12', NULL, 'Active'),
(242, 'WEST KAMENG', '12', NULL, 'Active'),
(243, 'WEST SIANG', '12', NULL, 'Active'),
(244, 'DIMAPUR', '13', NULL, 'Active'),
(245, 'KOHIMA', '13', NULL, 'Active'),
(246, 'MOKOKCHUNG', '13', NULL, 'Active'),
(247, 'MON', '13', NULL, 'Active'),
(248, 'PHEK', '13', NULL, 'Active'),
(249, 'TUENSANG', '13', NULL, 'Active'),
(250, 'WOKHA', '13', NULL, 'Active'),
(251, 'ZUNHEBOTO', '13', NULL, 'Active'),
(252, 'BISHNUPUR', '14', NULL, 'Active'),
(253, 'CHANDEL', '14', NULL, 'Active'),
(254, 'CHURACHANDPUR', '14', NULL, 'Active'),
(255, 'IMPHAL EAST', '14', NULL, 'Active'),
(256, 'IMPHAL WEST', '14', NULL, 'Active'),
(257, 'SENAPATI', '14', NULL, 'Active'),
(258, 'TAMENGLONG', '14', NULL, 'Active'),
(259, 'THOUBAL', '14', NULL, 'Active'),
(260, 'UKHRUL', '14', NULL, 'Active'),
(261, 'AIZAWL', '15', NULL, 'Active'),
(262, 'CHAMPHAI', '15', NULL, 'Active'),
(263, 'KOLASIB', '15', NULL, 'Active'),
(264, 'LAWNGTLAI', '15', NULL, 'Active'),
(265, 'LUNGLEI', '15', NULL, 'Active'),
(266, 'MAMIT', '15', NULL, 'Active'),
(267, 'SAIHA', '15', NULL, 'Active'),
(268, 'SERCHHIP', '15', NULL, 'Active'),
(269, 'Dhalai', '16', NULL, 'Active'),
(270, 'North Tripura', '16', NULL, 'Active'),
(271, 'South Tripura', '16', NULL, 'Active'),
(272, 'West Tripura', '16', NULL, 'Active'),
(273, 'EAST GARO HILLS', '17', NULL, 'Active'),
(274, 'EAST KHASI HILLS', '17', NULL, 'Active'),
(275, 'WEST JAINTIA HILLS', '17', NULL, 'Active'),
(276, 'RI BHOI', '17', NULL, 'Active'),
(277, 'SOUTH GARO HILLS', '17', NULL, 'Active'),
(278, 'WEST GARO HILLS', '17', NULL, 'Active'),
(279, 'WEST KHASI HILLS', '17', NULL, 'Active'),
(280, 'BARPETA', '18', NULL, 'Active'),
(281, 'BONGAIGAON', '18', NULL, 'Active'),
(282, 'CACHAR', '18', NULL, 'Active'),
(283, 'DARRANG', '18', NULL, 'Active'),
(284, 'DHEMAJI', '18', NULL, 'Active'),
(285, 'DHUBRI', '18', NULL, 'Active'),
(286, 'DIBRUGARH', '18', NULL, 'Active'),
(287, 'GOALPARA', '18', NULL, 'Active'),
(288, 'GOLAGHAT', '18', NULL, 'Active'),
(289, 'HAILAKANDI', '18', NULL, 'Active'),
(290, 'JORHAT', '18', NULL, 'Active'),
(291, 'KAMRUP', '18', NULL, 'Active'),
(292, 'KARBI ANGLONG', '18', NULL, 'Active'),
(293, 'KARIMGANJ', '18', NULL, 'Active'),
(294, 'KOKRAJHAR', '18', NULL, 'Active'),
(295, 'LAKHIMPUR', '18', NULL, 'Active'),
(296, 'MARIGAON', '18', NULL, 'Active'),
(297, 'NAGAON', '18', NULL, 'Active'),
(298, 'NALBARI', '18', NULL, 'Active'),
(299, 'DIMA HASAO', '18', NULL, 'Active'),
(300, 'SIVASAGAR', '18', NULL, 'Active'),
(301, 'SONITPUR', '18', NULL, 'Active'),
(302, 'TINSUKIA', '18', NULL, 'Active'),
(303, '24 PARAGANAS NORTH', '19', NULL, 'Active'),
(304, '24 PARAGANAS SOUTH', '19', NULL, 'Active'),
(305, 'BANKURA', '19', NULL, 'Active'),
(306, 'PURBA BARDHAMAN', '19', NULL, 'Active'),
(307, 'BIRBHUM', '19', NULL, 'Active'),
(308, 'COOCHBEHAR', '19', NULL, 'Active'),
(309, 'DARJEELING', '19', NULL, 'Active'),
(310, 'DINAJPUR DAKSHIN', '19', NULL, 'Active'),
(311, 'DINAJPUR UTTAR', '19', NULL, 'Active'),
(312, 'HOOGHLY', '19', NULL, 'Active'),
(313, 'HOWRAH', '19', NULL, 'Active'),
(314, 'JALPAIGURI', '19', NULL, 'Active'),
(316, 'MALDAH', '19', NULL, 'Active'),
(317, 'MEDINIPUR EAST', '19', NULL, 'Active'),
(318, 'MEDINIPUR WEST', '19', NULL, 'Active'),
(319, 'MURSHIDABAD', '19', NULL, 'Active'),
(320, 'NADIA', '19', NULL, 'Active'),
(321, 'PURULIA', '19', NULL, 'Active'),
(322, 'BOKARO', '20', NULL, 'Active'),
(323, 'CHATRA', '20', NULL, 'Active'),
(324, 'DEOGHAR', '20', NULL, 'Active'),
(325, 'DHANBAD', '20', NULL, 'Active'),
(326, 'DUMKA', '20', NULL, 'Active'),
(327, 'EAST SINGHBUM', '20', NULL, 'Active'),
(328, 'GARHWA', '20', NULL, 'Active'),
(329, 'GIRIDIH', '20', NULL, 'Active'),
(330, 'GODDA', '20', NULL, 'Active'),
(331, 'GUMLA', '20', NULL, 'Active'),
(332, 'HAZARIBAGH', '20', NULL, 'Active'),
(333, 'JAMTARA', '20', NULL, 'Active'),
(334, 'KODERMA', '20', NULL, 'Active'),
(335, 'LATEHAR', '20', NULL, 'Active'),
(336, 'LOHARDAGA', '20', NULL, 'Active'),
(337, 'PAKUR', '20', NULL, 'Active'),
(338, 'PALAMU', '20', NULL, 'Active'),
(339, 'RANCHI', '20', NULL, 'Active'),
(340, 'SAHEBGANJ', '20', NULL, 'Active'),
(341, 'SARAIKELA KHARSAWAN', '20', NULL, 'Active'),
(342, 'SIMDEGA', '20', NULL, 'Active'),
(343, 'WEST SINGHBHUM', '20', NULL, 'Active'),
(344, 'ANUGUL', '21', NULL, 'Active'),
(345, 'BALANGIR', '21', NULL, 'Active'),
(346, 'BALESHWAR', '21', NULL, 'Active'),
(347, 'BARGARH', '21', NULL, 'Active'),
(348, 'BHADRAK', '21', NULL, 'Active'),
(349, 'BOUDH', '21', NULL, 'Active'),
(350, 'CUTTACK', '21', NULL, 'Active'),
(351, 'DEOGARH', '21', NULL, 'Active'),
(352, 'DHENKANAL', '21', NULL, 'Active'),
(353, 'GAJAPATI', '21', NULL, 'Active'),
(354, 'GANJAM', '21', NULL, 'Active'),
(355, 'JAGATSINGHAPUR', '21', NULL, 'Active'),
(356, 'JAJAPUR', '21', NULL, 'Active'),
(357, 'JHARSUGUDA', '21', NULL, 'Active'),
(358, 'KALAHANDI', '21', NULL, 'Active'),
(359, 'KANDHAMAL', '21', NULL, 'Active'),
(360, 'KENDRAPARA', '21', NULL, 'Active'),
(361, 'KENDUJHAR', '21', NULL, 'Active'),
(362, 'KHORDHA', '21', NULL, 'Active'),
(363, 'KORAPUT', '21', NULL, 'Active'),
(364, 'MALKANGIRI', '21', NULL, 'Active'),
(365, 'MAYURBHANJ', '21', NULL, 'Active'),
(366, 'NABARANGPUR', '21', NULL, 'Active'),
(367, 'NAYAGARH', '21', NULL, 'Active'),
(368, 'NUAPADA', '21', NULL, 'Active'),
(369, 'PURI', '21', NULL, 'Active'),
(370, 'RAYAGADA', '21', NULL, 'Active'),
(371, 'SAMBALPUR', '21', NULL, 'Active'),
(372, 'SONEPUR', '21', NULL, 'Active'),
(373, 'SUNDARGARH', '21', NULL, 'Active'),
(374, 'BASTAR', '22', NULL, 'Active'),
(375, 'BILASPUR', '22', NULL, 'Active'),
(376, 'DANTEWADA', '22', NULL, 'Active'),
(377, 'DHAMTARI', '22', NULL, 'Active'),
(378, 'DURG', '22', NULL, 'Active'),
(379, 'JANJGIR-CHAMPA', '22', NULL, 'Active'),
(380, 'JASHPUR', '22', NULL, 'Active'),
(381, 'KANKER', '22', NULL, 'Active'),
(382, 'KABIRDHAM', '22', NULL, 'Active'),
(383, 'KORBA', '22', NULL, 'Active'),
(384, 'KOREA', '22', NULL, 'Active'),
(385, 'MAHASAMUND', '22', NULL, 'Active'),
(386, 'RAIGARH', '22', NULL, 'Active'),
(387, 'RAIPUR', '22', NULL, 'Active'),
(388, 'RAJNANDGAON', '22', NULL, 'Active'),
(389, 'SURGUJA', '22', NULL, 'Active'),
(390, 'ANUPPUR', '23', NULL, 'Active'),
(391, 'ASHOKNAGAR', '23', NULL, 'Active'),
(392, 'BALAGHAT', '23', NULL, 'Active'),
(393, 'BARWANI', '23', NULL, 'Active'),
(394, 'BETUL', '23', NULL, 'Active'),
(395, 'BHIND', '23', NULL, 'Active'),
(396, 'BHOPAL', '23', NULL, 'Active'),
(397, 'BURHANPUR', '23', NULL, 'Active'),
(398, 'CHHATARPUR', '23', NULL, 'Active'),
(399, 'CHHINDWARA', '23', NULL, 'Active'),
(400, 'DAMOH', '23', NULL, 'Active'),
(401, 'DATIA', '23', NULL, 'Active'),
(402, 'DEWAS', '23', NULL, 'Active'),
(403, 'DHAR', '23', NULL, 'Active'),
(404, 'DINDORI', '23', NULL, 'Active'),
(405, 'EAST NIMAR', '23', NULL, 'Active'),
(406, 'GUNA', '23', NULL, 'Active'),
(407, 'GWALIOR', '23', NULL, 'Active'),
(408, 'HARDA', '23', NULL, 'Active'),
(409, 'HOSHANGABAD', '23', NULL, 'Active'),
(410, 'INDORE', '23', NULL, 'Active'),
(411, 'JABALPUR', '23', NULL, 'Active'),
(412, 'JHABUA', '23', NULL, 'Active'),
(413, 'KATNI', '23', NULL, 'Active'),
(414, 'KHARGONE', '23', NULL, 'Active'),
(415, 'MANDLA', '23', NULL, 'Active'),
(416, 'MANDSAUR', '23', NULL, 'Active'),
(417, 'MORENA', '23', NULL, 'Active'),
(418, 'NARSINGHPUR', '23', NULL, 'Active'),
(419, 'NEEMUCH', '23', NULL, 'Active'),
(420, 'PANNA', '23', NULL, 'Active'),
(421, 'RAISEN', '23', NULL, 'Active'),
(422, 'RAJGARH', '23', NULL, 'Active'),
(423, 'RATLAM', '23', NULL, 'Active'),
(424, 'REWA', '23', NULL, 'Active'),
(425, 'SAGAR', '23', NULL, 'Active'),
(426, 'SATNA', '23', NULL, 'Active'),
(427, 'SEHORE', '23', NULL, 'Active'),
(428, 'SEONI', '23', NULL, 'Active'),
(429, 'SHAHDOL', '23', NULL, 'Active'),
(430, 'SHAJAPUR', '23', NULL, 'Active'),
(431, 'SHEOPUR', '23', NULL, 'Active'),
(432, 'SHIVPURI', '23', NULL, 'Active'),
(433, 'SIDHI', '23', NULL, 'Active'),
(434, 'TIKAMGARH', '23', NULL, 'Active'),
(435, 'UJJAIN', '23', NULL, 'Active'),
(436, 'UMARIA', '23', NULL, 'Active'),
(437, 'VIDISHA', '23', NULL, 'Active'),
(438, 'AHMADABAD', '24', NULL, 'Active'),
(439, 'AMRELI', '24', NULL, 'Active'),
(440, 'ANAND', '24', NULL, 'Active'),
(441, 'BANAS KANTHA', '24', NULL, 'Active'),
(442, 'BHARUCH', '24', NULL, 'Active'),
(443, 'BHAVNAGAR', '24', NULL, 'Active'),
(444, 'DANG', '24', NULL, 'Active'),
(445, 'DOHAD', '24', NULL, 'Active'),
(446, 'GANDHINAGAR', '24', NULL, 'Active'),
(447, 'JAMNAGAR', '24', NULL, 'Active'),
(448, 'JUNAGADH', '24', NULL, 'Active'),
(449, 'KACHCHH', '24', NULL, 'Active'),
(450, 'KHEDA', '24', NULL, 'Active'),
(451, 'MAHESANA', '24', NULL, 'Active'),
(452, 'NARMADA', '24', NULL, 'Active'),
(453, 'NAVSARI', '24', NULL, 'Active'),
(454, 'PANCH MAHALS', '24', NULL, 'Active'),
(455, 'PATAN', '24', NULL, 'Active'),
(456, 'PORBANDAR', '24', NULL, 'Active'),
(457, 'RAJKOT', '24', NULL, 'Active'),
(458, 'SABAR KANTHA', '24', NULL, 'Active'),
(459, 'SURAT', '24', NULL, 'Active'),
(460, 'SURENDRANAGAR', '24', NULL, 'Active'),
(461, 'VADODARA', '24', NULL, 'Active'),
(462, 'VALSAD', '24', NULL, 'Active'),
(463, 'DAMAN', '38', NULL, 'Active'),
(464, 'DIU', '38', NULL, 'Active'),
(465, 'DADRA AND NAGAR HAVELI', '38', NULL, 'Active'),
(466, 'AHMEDNAGAR', '27', NULL, 'Active'),
(467, 'AKOLA', '27', NULL, 'Active'),
(468, 'AMRAVATI', '27', NULL, 'Active'),
(470, 'BEED', '27', NULL, 'Active'),
(471, 'BHANDARA', '27', NULL, 'Active'),
(472, 'BULDHANA', '27', NULL, 'Active'),
(473, 'CHANDRAPUR', '27', NULL, 'Active'),
(474, 'DHULE', '27', NULL, 'Active'),
(475, 'GADCHIROLI', '27', NULL, 'Active'),
(476, 'GONDIA', '27', NULL, 'Active'),
(477, 'HINGOLI', '27', NULL, 'Active'),
(478, 'JALGAON', '27', NULL, 'Active'),
(479, 'JALNA', '27', NULL, 'Active'),
(480, 'KOLHAPUR', '27', NULL, 'Active'),
(481, 'LATUR', '27', NULL, 'Active'),
(484, 'NAGPUR', '27', NULL, 'Active'),
(485, 'NANDED', '27', NULL, 'Active'),
(486, 'NANDURBAR', '27', NULL, 'Active'),
(487, 'NASHIK', '27', NULL, 'Active'),
(488, 'OSMANABAD', '27', NULL, 'Active'),
(489, 'PARBHANI', '27', NULL, 'Active'),
(490, 'PUNE', '27', NULL, 'Active'),
(491, 'RAIGAD', '27', NULL, 'Active'),
(492, 'RATNAGIRI', '27', NULL, 'Active'),
(493, 'SANGLI', '27', NULL, 'Active'),
(494, 'SATARA', '27', NULL, 'Active'),
(495, 'SINDHUDURG', '27', NULL, 'Active'),
(496, 'SOLAPUR', '27', NULL, 'Active'),
(497, 'THANE', '27', NULL, 'Active'),
(498, 'WARDHA', '27', NULL, 'Active'),
(499, 'WASHIM', '27', NULL, 'Active'),
(500, 'YAVATMAL', '27', NULL, 'Active'),
(501, 'ADILABAD', '36', NULL, 'Active'),
(502, 'ANANTAPUR', '28', NULL, 'Active'),
(503, 'CHITTOOR', '28', NULL, 'Active'),
(504, 'Y.S.R.', '28', NULL, 'Active'),
(505, 'EAST GODAVARI', '28', NULL, 'Active'),
(506, 'GUNTUR', '28', NULL, 'Active'),
(507, 'HYDERABAD', '36', NULL, 'Active'),
(508, 'KARIMNAGAR', '36', NULL, 'Active'),
(509, 'KHAMMAM', '36', NULL, 'Active'),
(510, 'KRISHNA', '28', NULL, 'Active'),
(511, 'KURNOOL', '28', NULL, 'Active'),
(512, 'MAHABUBNAGAR', '36', NULL, 'Active'),
(513, 'MEDAK', '36', NULL, 'Active'),
(514, 'NALGONDA', '36', NULL, 'Active'),
(515, 'SPSR NELLORE', '28', NULL, 'Active'),
(516, 'NIZAMABAD', '36', NULL, 'Active'),
(517, 'PRAKASAM', '28', NULL, 'Active'),
(518, 'RANGA REDDY', '36', NULL, 'Active'),
(519, 'SRIKAKULAM', '28', NULL, 'Active'),
(520, 'VISAKHAPATANAM', '28', NULL, 'Active'),
(521, 'VIZIANAGARAM', '28', NULL, 'Active'),
(522, 'WARANGAL RURAL', '36', NULL, 'Active'),
(523, 'WEST GODAVARI', '28', NULL, 'Active'),
(524, 'BAGALKOTE', '29', NULL, 'Active'),
(525, 'BENGALURU URBAN', '29', NULL, 'Active'),
(526, 'BENGALURU RURAL', '29', NULL, 'Active'),
(527, 'BELAGAVI', '29', NULL, 'Active'),
(528, 'BALLARI', '29', NULL, 'Active'),
(529, 'BIDAR', '29', NULL, 'Active'),
(530, 'VIJAYAPURA', '29', NULL, 'Active'),
(531, 'CHAMARAJANAGARA', '29', NULL, 'Active'),
(532, 'CHIKKAMAGALURU', '29', NULL, 'Active'),
(533, 'CHITRADURGA', '29', NULL, 'Active'),
(534, 'DAKSHINA KANNADA', '29', NULL, 'Active'),
(535, 'DAVANGERE', '29', NULL, 'Active'),
(536, 'DHARWAD', '29', NULL, 'Active'),
(537, 'GADAG', '29', NULL, 'Active'),
(538, 'KALABURAGI', '29', NULL, 'Active'),
(539, 'HASSAN', '29', NULL, 'Active'),
(540, 'HAVERI', '29', NULL, 'Active'),
(541, 'KODAGU', '29', NULL, 'Active'),
(542, 'KOLAR', '29', NULL, 'Active'),
(543, 'KOPPAL', '29', NULL, 'Active'),
(544, 'MANDYA', '29', NULL, 'Active'),
(545, 'MYSURU', '29', NULL, 'Active'),
(546, 'RAICHUR', '29', NULL, 'Active'),
(547, 'SHIVAMOGGA', '29', NULL, 'Active'),
(548, 'TUMAKURU', '29', NULL, 'Active'),
(549, 'UDUPI', '29', NULL, 'Active'),
(550, 'UTTARA KANNADA', '29', NULL, 'Active'),
(551, 'NORTH GOA', '30', NULL, 'Active'),
(552, 'SOUTH GOA', '30', NULL, 'Active'),
(553, 'LAKSHADWEEP DISTRICT', '31', NULL, 'Active'),
(554, 'ALAPPUZHA', '32', NULL, 'Active'),
(555, 'ERNAKULAM', '32', NULL, 'Active'),
(556, 'IDUKKI', '32', NULL, 'Active'),
(557, 'KANNUR', '32', NULL, 'Active'),
(558, 'KASARAGOD', '32', NULL, 'Active'),
(559, 'KOLLAM', '32', NULL, 'Active'),
(560, 'KOTTAYAM', '32', NULL, 'Active'),
(561, 'KOZHIKODE', '32', NULL, 'Active'),
(562, 'MALAPPURAM', '32', NULL, 'Active'),
(563, 'PALAKKAD', '32', NULL, 'Active'),
(564, 'PATHANAMTHITTA', '32', NULL, 'Active'),
(565, 'THIRUVANANTHAPURAM', '32', NULL, 'Active'),
(566, 'THRISSUR', '32', NULL, 'Active'),
(567, 'WAYANAD', '32', NULL, 'Active'),
(569, 'COIMBATORE', '33', NULL, 'Active'),
(570, 'CUDDALORE', '33', NULL, 'Active'),
(571, 'DHARMAPURI', '33', NULL, 'Active'),
(572, 'DINDIGUL', '33', NULL, 'Active'),
(573, 'ERODE', '33', NULL, 'Active'),
(574, 'KANCHIPURAM', '33', NULL, 'Active'),
(575, 'KANNIYAKUMARI', '33', NULL, 'Active'),
(576, 'KARUR', '33', NULL, 'Active'),
(577, 'KRISHNAGIRI', '33', NULL, 'Active'),
(578, 'MADURAI', '33', NULL, 'Active'),
(579, 'NAGAPATTINAM', '33', NULL, 'Active'),
(580, 'NAMAKKAL', '33', NULL, 'Active'),
(581, 'PERAMBALUR', '33', NULL, 'Active'),
(582, 'PUDUKKOTTAI', '33', NULL, 'Active'),
(583, 'RAMANATHAPURAM', '33', NULL, 'Active'),
(584, 'SALEM', '33', NULL, 'Active'),
(585, 'SIVAGANGA', '33', NULL, 'Active'),
(586, 'THANJAVUR', '33', NULL, 'Active'),
(587, 'THE NILGIRIS', '33', NULL, 'Active'),
(588, 'THENI', '33', NULL, 'Active'),
(589, 'THIRUVALLUR', '33', NULL, 'Active'),
(590, 'THIRUVARUR', '33', NULL, 'Active'),
(591, 'TIRUCHIRAPPALLI', '33', NULL, 'Active'),
(592, 'TIRUNELVELI', '33', NULL, 'Active'),
(593, 'TIRUVANNAMALAI', '33', NULL, 'Active'),
(594, 'TUTICORIN', '33', NULL, 'Active'),
(595, 'VELLORE', '33', NULL, 'Active'),
(596, 'VILLUPURAM', '33', NULL, 'Active'),
(597, 'VIRUDHUNAGAR', '33', NULL, 'Active'),
(598, 'KARAIKAL', '34', NULL, 'Active'),
(599, 'MAHE', '34', NULL, 'Active'),
(600, 'PONDICHERRY', '34', NULL, 'Active'),
(601, 'YANAM', '34', NULL, 'Active'),
(602, 'SOUTH ANDAMANS', '35', NULL, 'Active'),
(603, 'NICOBARS', '35', NULL, 'Active'),
(604, 'NUH', '6', NULL, 'Active'),
(605, 'BARNALA', '3', NULL, 'Active'),
(606, 'KHUNTI', '20', NULL, 'Active'),
(607, 'RAMGARH', '20', NULL, 'Active'),
(608, 'S.A.S Nagar', '3', NULL, 'Active'),
(609, 'Tarn Taran', '3', NULL, 'Active'),
(610, 'Ariyalur', '33', NULL, 'Active'),
(611, 'ARWAL', '10', NULL, 'Active'),
(612, 'CHIRANG', '18', NULL, 'Active'),
(613, 'PEREN', '13', NULL, 'Active'),
(614, 'KIPHIRE', '13', NULL, 'Active'),
(615, 'LONGLENG', '13', NULL, 'Active'),
(616, 'BAKSA', '18', NULL, 'Active'),
(617, 'UDALGURI', '18', NULL, 'Active'),
(618, 'KAMRUP METRO', '18', NULL, 'Active'),
(619, 'PALWAL', '6', NULL, 'Active'),
(620, 'KISHTWAR', '1', NULL, 'Active'),
(621, 'RAMBAN', '1', NULL, 'Active'),
(622, 'KULGAM', '1', NULL, 'Active'),
(623, 'BANDIPORA', '1', NULL, 'Active'),
(624, 'SAMBA', '1', NULL, 'Active'),
(625, 'SHOPIAN', '1', NULL, 'Active'),
(626, 'GANDERBAL', '1', NULL, 'Active'),
(627, 'REASI', '1', NULL, 'Active'),
(628, 'ANJAW', '12', NULL, 'Active'),
(629, 'PRATAPGARH', '8', NULL, 'Active'),
(630, 'CHIKKABALLAPURA', '29', NULL, 'Active'),
(631, 'RAMANAGARA', '29', NULL, 'Active'),
(632, 'NORTH AND MIDDLE ANDAMAN', '35', NULL, 'Active'),
(633, 'Kasganj', '9', NULL, 'Active'),
(634, 'TIRUPPUR', '33', NULL, 'Active'),
(635, 'YADGIR', '29', NULL, 'Active'),
(636, 'BIJAPUR', '22', NULL, 'Active'),
(637, 'NARAYANPUR', '22', NULL, 'Active'),
(638, 'SINGRAULI', '23', NULL, 'Active'),
(639, 'ALIRAJPUR', '23', NULL, 'Active'),
(640, 'Amethi', '9', NULL, 'Active'),
(641, 'TAPI', '24', NULL, 'Active'),
(642, 'SUKMA', '22', NULL, 'Active'),
(643, 'KONDAGAON', '22', NULL, 'Active'),
(644, 'BALODA BAZAR', '22', NULL, 'Active'),
(645, 'GARIYABAND', '22', NULL, 'Active'),
(646, 'BALOD', '22', NULL, 'Active'),
(647, 'MUNGELI', '22', NULL, 'Active'),
(648, 'SURAJPUR', '22', NULL, 'Active'),
(649, 'BALRAMPUR', '22', NULL, 'Active'),
(650, 'BEMETARA', '22', NULL, 'Active'),
(651, 'FAZILKA', '3', NULL, 'Active'),
(652, 'Khowai', '16', NULL, 'Active'),
(653, 'Sepahijala', '16', NULL, 'Active'),
(654, 'Gomati', '16', NULL, 'Active'),
(655, 'Unakoti', '16', NULL, 'Active'),
(656, 'NORTH GARO HILLS', '17', NULL, 'Active'),
(657, 'EAST JAINTIA HILLS', '17', NULL, 'Active'),
(658, 'SOUTH WEST KHASI HILLS', '17', NULL, 'Active'),
(659, 'SAMBHAL', '9', NULL, 'Active'),
(660, 'SHAMLI', '9', NULL, 'Active'),
(661, 'HAPUR', '9', NULL, 'Active'),
(662, 'PATHANKOT', '3', NULL, 'Active'),
(663, 'SOUTH WEST GARO HILLS', '17', NULL, 'Active'),
(664, 'Alipurduar', '19', NULL, 'Active'),
(665, 'PALGHAR', '27', NULL, 'Active'),
(666, 'LONGDING', '12', NULL, 'Active'),
(667, 'AGAR MALWA', '23', NULL, 'Active'),
(668, 'CHHOTAUDEPUR', '24', NULL, 'Active'),
(669, 'Mahisagar', '24', NULL, 'Active'),
(672, 'ARVALLI', '24', NULL, 'Active'),
(673, 'MORBI', '24', NULL, 'Active'),
(674, 'DEVBHUMI DWARKA', '24', NULL, 'Active'),
(675, 'GIR SOMNATH', '24', NULL, 'Active'),
(676, 'BOTAD', '24', NULL, 'Active'),
(677, 'KRA DAADI', '12', NULL, 'Active'),
(678, 'NAMSAI', '12', NULL, 'Active'),
(679, 'SIANG', '12', NULL, 'Active'),
(680, 'Nirmal', '36', NULL, 'Active'),
(681, 'Jagitial', '36', NULL, 'Active'),
(682, 'PEDDAPALLI', '36', NULL, 'Active'),
(683, 'RAJANNA SIRCILLA', '36', NULL, 'Active'),
(684, 'MANCHERIAL', '36', NULL, 'Active'),
(685, 'KAMAREDDY', '36', NULL, 'Active'),
(686, 'WARANGAL URBAN', '36', NULL, 'Active'),
(687, 'JAYASHANKAR BHUPALAPALLY', '36', NULL, 'Active'),
(688, 'MAHABUBABAD', '36', NULL, 'Active'),
(689, 'JANGOAN', '36', NULL, 'Active'),
(690, 'BHADRADRI KOTHAGUDEM', '36', NULL, 'Active'),
(691, 'SANGAREDDY', '36', NULL, 'Active'),
(692, 'SIDDIPET', '36', NULL, 'Active'),
(693, 'WANAPARTHY', '36', NULL, 'Active'),
(694, 'NAGARKURNOOL', '36', NULL, 'Active'),
(695, 'JOGULAMBA GADWAL', '36', NULL, 'Active'),
(696, 'SURYAPET', '36', NULL, 'Active'),
(697, 'YADADRI BHUVANAGIRI', '36', NULL, 'Active'),
(698, 'VIKARABAD', '36', NULL, 'Active'),
(699, 'KUMURAM BHEEM ASIFABAD', '36', NULL, 'Active'),
(700, 'MEDCHAL MALKAJGIRI', '36', NULL, 'Active'),
(701, 'CHARKI DADRI', '6', NULL, 'Active'),
(702, 'KALIMPONG', '19', NULL, 'Active'),
(703, 'Jhargram', '19', NULL, 'Active'),
(704, 'PASCHIM BARDHAMAN', '19', NULL, 'Active'),
(705, 'Biswanath', '18', NULL, 'Active'),
(706, 'MAJULI', '18', NULL, 'Active'),
(707, 'SOUTH SALMARA MANCACHAR', '18', NULL, 'Active'),
(708, 'CHARAIDEO', '18', NULL, 'Active'),
(709, 'HOJAI', '18', NULL, 'Active'),
(710, 'WEST KARBI ANGLONG', '18', NULL, 'Active'),
(711, 'KAKCHING', '14', NULL, 'Active'),
(712, 'KANGPOKPI', '14', NULL, 'Active'),
(713, 'JIRIBAM', '14', NULL, 'Active'),
(714, 'NONEY', '14', NULL, 'Active'),
(715, 'PHERZAWL', '14', NULL, 'Active'),
(716, 'TENGNOUPAL', '14', NULL, 'Active'),
(717, 'KAMJONG', '14', NULL, 'Active'),
(718, 'KAMLE', '12', NULL, 'Active'),
(719, 'LOWER SIANG', '12', NULL, 'Active'),
(720, 'Mulugu', '36', NULL, 'Active'),
(721, 'Narayanpet', '36', NULL, 'Active'),
(722, 'Niwari', '23', NULL, 'Active'),
(723, 'PAKKE KESSANG', '12', NULL, 'Active'),
(724, 'LEPARADA', '12', NULL, 'Active'),
(725, 'SHI YOMI', '12', NULL, 'Active'),
(726, 'Hnahthial', '15', NULL, 'Active'),
(727, 'SAITUAL', '15', NULL, 'Active'),
(728, 'KHAWZAWL', '15', NULL, 'Active'),
(729, 'KALLAKURICHI', '33', NULL, 'Active'),
(730, 'CHENGALPATTU', '33', NULL, 'Active'),
(731, 'Ranipet', '33', NULL, 'Active'),
(732, 'Tirupathur', '33', NULL, 'Active'),
(733, 'TENKASI', '33', NULL, 'Active'),
(734, 'Gaurella Pendra Marwahi', '22', NULL, 'Active'),
(735, 'KOLKATA', '19', 1, 'Active'),
(736, 'Annamayya', '28', NULL, 'Active'),
(737, 'Sri Sathya Sai', '28', NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `loc_state`
--

CREATE TABLE `loc_state` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state` varchar(255) NOT NULL,
  `order_no` int(11) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `loc_state`
--

INSERT INTO `loc_state` (`id`, `state`, `order_no`, `status`) VALUES
(1, 'JAMMU AND KASHMIR', NULL, 'Active'),
(2, 'HIMACHAL PRADESH', NULL, 'Active'),
(3, 'PUNJAB', NULL, 'Active'),
(4, 'CHANDIGARH', NULL, 'Active'),
(5, 'UTTARAKHAND', NULL, 'Active'),
(6, 'HARYANA', NULL, 'Active'),
(8, 'RAJASTHAN', NULL, 'Active'),
(9, 'UTTAR PRADESH', NULL, 'Active'),
(10, 'BIHAR', NULL, 'Active'),
(11, 'SIKKIM', NULL, 'Active'),
(12, 'ARUNACHAL PRADESH', NULL, 'Active'),
(13, 'NAGALAND', NULL, 'Active'),
(14, 'MANIPUR', NULL, 'Active'),
(15, 'MIZORAM', NULL, 'Active'),
(16, 'TRIPURA', NULL, 'Active'),
(17, 'MEGHALAYA', NULL, 'Active'),
(18, 'ASSAM', NULL, 'Active'),
(19, 'WEST BENGAL', 1, 'Active'),
(20, 'JHARKHAND', NULL, 'Active'),
(21, 'ODISHA', NULL, 'Active'),
(22, 'CHHATTISGARH', NULL, 'Active'),
(23, 'MADHYA PRADESH', NULL, 'Active'),
(24, 'GUJARAT', NULL, 'Active'),
(27, 'MAHARASHTRA', NULL, 'Active'),
(28, 'ANDHRA PRADESH', NULL, 'Active'),
(29, 'KARNATAKA', NULL, 'Active'),
(30, 'GOA', NULL, 'Active'),
(31, 'LAKSHADWEEP', NULL, 'Active'),
(32, 'KERALA', NULL, 'Active'),
(33, 'TAMIL NADU', NULL, 'Active'),
(34, 'PUDUCHERRY', NULL, 'Active'),
(35, 'ANDAMAN AND NICOBAR ISLANDS', NULL, 'Active'),
(36, 'TELANGANA', NULL, 'Active'),
(37, 'LADAKH', NULL, 'Active'),
(38, 'THE DADRA AND NAGAR HAVELI AND DAMAN AND DIU', NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

CREATE TABLE `notice_board` (
  `nb_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_nopad_ci DEFAULT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notice_board`
--

INSERT INTO `notice_board` (`nb_id`, `title`, `image`, `status`) VALUES
(8, 'Pratik hm', 'S1729679312.PNG', 'Inactive'),
(13, NULL, 'S1739524914.jpeg', 'Active'),
(14, NULL, 'S1739524922.jpeg', 'Active'),
(15, NULL, 'S1739524930.jpeg', 'Active'),
(16, NULL, 'S1739524936.jpeg', 'Active'),
(17, NULL, 'S1739524943.jpeg', 'Active'),
(18, NULL, 'S1739524950.jpeg', 'Active'),
(19, NULL, 'S1739524956.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `pg_manage`
--

CREATE TABLE `pg_manage` (
  `id` int(11) NOT NULL,
  `cms` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title1` text DEFAULT NULL,
  `content1` text DEFAULT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `title2` text DEFAULT NULL,
  `content2` text DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `title3` text DEFAULT NULL,
  `content3` text DEFAULT NULL,
  `image3` varchar(100) DEFAULT NULL,
  `type` enum('TC1','TC2','TC3','TCI1','TCI2','TCI3','TI1') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pg_manage`
--

INSERT INTO `pg_manage` (`id`, `cms`, `url`, `name`, `title1`, `content1`, `image1`, `title2`, `content2`, `image2`, `title3`, `content3`, `image3`, `type`) VALUES
(1, 'home', NULL, 'Home', 'An Academy Dedicated to Job Oriented Courses & Development of Essential Skills.', '<p>Welcome to WBJRS Academic Foundation, where education meets excellence. Our institute is dedicated to providing high-quality training and development programs to empower individuals and organizations. With a commitment to excellence and a passion for learning, We aim to be a catalyst for personal and professional growth by <strong>Making Education Afforadable</strong>. We belive no students should be deprived from Learning New Era of Education. for the growth of the Nation.</p>\r\n', '11739795641.png', 'Flexible Classes as per Industry', '<p>This allows students to engage with the material in a way that suits their learning preferences.</p>\r\n', '21739795836.png', 'Live Class From anywhere in World Wide', '<p>Participants in live classes from anywhere may come from diverse backgrounds and locations, creating a rich and diverse learning environment.</p>\r\n', '31739795836.png', 'TCI3'),
(2, 'about', 'about', 'About', 'Establishing a Community that Encourages Lifelong Learning', '<p>Welcome to WBJRS Academic Foundation, where education meets excellence. Our institute is dedicated to providing high-quality training and development programs to empower individuals and organizations. With a commitment to excellence and a passion for learning, we aim to be a catalyst for personal and professional growth.</p>\r\n', '11739796742.jpg', 'Our Mission', '<p>At WBJRS Academic Foundation, our mission is to deliver comprehensive and innovative training solutions that equip individuals with the skills and knowledge needed to excel in their chosen fields. We strive to foster a learning environment that encourages critical thinking, creativity, and continuous improvement.</p>\r\n', '21739797602.png', 'Our Vision', '<p>At WBJRS Academic Foundation Institute, our vission is to empower individuals with the skills and knowledge needed to thrive in the dynamic job market within a short duration. We are committed to providing high-quality, practical, and job-oriented courses that not only accelerate learning but also guarantee enhanced employability.</p>\r\n', '31739796743.png', 'TCI3'),
(3, 'mission_vision', 'mission_vision', 'Mission & Vision', 'Our Mission', '<p>At WBJRS Academic Foundation, our mission is to deliver comprehensive and innovative training solutions that equip individuals with the skills and knowledge needed to excel in their chosen fields. We strive to foster a learning environment that encourages critical thinking, creativity, and continuous improvement.</p>\r\n', '11739798075.png', 'Our Vision', '<p>&quot;At WBJRS Academic Foundation Institute, our vission is to empower individuals with the skills and knowledge needed to thrive in the dynamic job market within a short duration. We are committed to providing high-quality, practical, and job-oriented courses that not only accelerate learning but also guarantee enhanced employability. Our focus is on delivering concise yet comprehensive programs, ensuring our students are well-equipped with the right tools to succeed in their chosen careers. We strive to bridge the gap between education and industry needs, fostering a culture of continuous learning and professional growth. WBJRS Academic Foundation Institute is dedicated to shaping futures through accessible, efficient, and results-driven education.&quot;</p>\r\n', '21739798075.png', NULL, NULL, NULL, 'TCI2'),
(4, 'aim', 'aim', 'Aim', 'Message From Our Managing Director & CEO', '<p><em><strong>WBJRS Academic Foundation,</strong> an ISO 9001-2015 certified organization, was established in 2024 in response to the educational challenges faced during the pandemic in India. Recognized under the Company Act 2013, Section 8 by the Ministry of Corporate Affairs, Government of India, and registered under Section 12A and 80G by NITI Aayog, Government of India, we are committed to ensuring the right to education for the needy with minimal course fees. Our certification by the Central Registry of Securitisation Asset Reconstruction and Security Interest, Income Tax Department, Government of India, further underscores our dedication to transparency and quality.<br />\r\n<br />\r\nOur aim is to empower individuals by providing accessible, high-quality education that fosters personal and professional growth. Through our initiatives, we strive to build a foundation of knowledge that enables our students to become leaders of tomorrow, equipped with the skills and confidence to drive positive change in their communities and beyond. As our slogan says <strong>&quot;Making Education Affordable&quot;</strong>.</em></p>\r\n', '11739798486.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'TCI1'),
(5, 'banking_partner', 'banking_partner', 'Banking Partner', 'Banking Partner', '<p>A banking partner typically refers to a financial institution that collaborates with another entity to provide various banking services or products. This collaboration can take different forms, such as:<br />\r\n<br />\r\n<strong>1.Business Partnerships:</strong> Banks may partner with other businesses, such as retailers or technology companies, to offer co-branded credit cards, savings accounts, or other financial products.<br />\r\n<strong>2.Cross-Border Partnerships:</strong> Banks may form partnerships with institutions in other countries to facilitate cross-border transactions, international banking services, or foreign currency exchange.<br />\r\n<strong>3.Affiliate Programs:</strong> Some banks have affiliate programs where they partner with individuals or businesses to promote their banking products or services in exchange for a commission or referral fee.<br />\r\n<strong>4.Technology Partnerships:</strong> Banks often collaborate with technology companies to improve their digital banking platforms, develop new financial products, or enhance cybersecurity measures.<br />\r\n<br />\r\nOverall, a banking partner plays a crucial role in expanding a bank&#39;s reach, enhancing its product offerings, and providing additional value to its customers.Our Banking Partner is Axis Bank.</p>\r\n', '11739798638.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'TCI1'),
(6, 'media_partner', 'media_partner', 'Media Partner', 'Times Bangla is Our Media Partner', '<p>A media partner is an entity, such as a company, organization, or individual, with whom another entity collaborates to achieve mutual goals related to media coverage, advertising, promotion, or content creation.&nbsp;</p>\r\n', '11739798803.png', NULL, NULL, NULL, NULL, NULL, NULL, 'TCI1'),
(7, 'privacy_policy', 'privacy_policy', 'Privacy Policy', 'Privacy Policy', '<p>\r\nThis Privacy Policy describes our policies and procedures on the collection, use and disclosure of your information when you use the service and tells you about your privacy rights and how the law protects You.<br><br>\r\n\r\nWe use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy.<br><br><br> \r\n\r\n<h3 align=left>Interpretation and Definitions</h3><br><br>\r\n<h5 align=left>Interpretation</h5><br>\r\nThe words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether<br>\r\nthey appear in singular or in plural.<br><br>\r\n\r\n<h5>Definitions</h5>\r\nFor the purposes of this Privacy Policy:<br><br>\r\n<ul>\r\n<li>• Account means a unique account created for You to access our Service or parts of our Service.</li>\r\n\r\n<li>• Affiliate means an entity that controls, is controlled by or is under common control with a party, where \"control\" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.</li>\r\n\r\n<li>• Company (referred to as either \"the Company\", \"We\", \"Us\" or \"Our\" in this Agreement) refers to WBJRS Academic Foundation, Puspa Apartment 2, Chakraborty Para, Nona Chandanpukur, Barrackpore, Kolkata - 700122.</li>\r\n\r\n<li>• Cookies are small files that are placed on Your computer, mobile device or any other device by a website, containing the details of Your browsing history on that website among its many uses.</li>\r\n\r\n<li>• Country refers to: West Bengal, India</li>\r\n\r\n<li>• Device means any device that can access the Service such as a computer, a cellphone or a digital tablet.</li>\r\n\r\n<li>• Personal Data is any information that relates to an identified or identifiable individual.</li>\r\n\r\n<li>• Service refers to the Website.</li>\r\n\r\n<li>• Service Provider means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.</li>\r\n\r\n<li>• Usage Data refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).</li>\r\n\r\n<li>• Website refers to WBJRS Academic Foundation, accessible from https://wbjrsfoundation.org/</li>\r\n\r\n<li>• You means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</li>\r\n\r\n<br>Collecting and Using Your Personal Data<br>\r\n<br>Types of Data Collected<br>\r\n<br>Personal Data<br>\r\n<br>While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:<br>\r\n\r\n<li>• Email address</li>\r\n\r\n<li>• First name and last name</li>\r\n\r\n<li>• Phone number</li>\r\n\r\n<li>• Address, State, Province, ZIP/Postal code, City</li>\r\n\r\n<li>• Usage Data</li>\r\n\r\n<br>Usage Data is collected automatically when using the Service.<br>\r\n<br>Usage Data may include information such as Your Device\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.<br>\r\n<br>When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.<br>\r\n\r\n<br>We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.<br>\r\n\r\n<br>Tracking Technologies and Cookies<br>\r\n<br>We use Cookies and similar tracking technologies to track the activity on Our Service and store certain information. Tracking technologies used are beacons, tags, and scripts to collect and track information and to improve and analyze Our Service. The technologies We use may include:<br>\r\n\r\n<li>• Cookies or Browser Cookies. A cookie is a small file placed on Your Device. You can instruct Your browser to refuse all Cookies or to indicate when a Cookie is being sent. However, if You do not accept Cookies, You may not be able to use some parts of our Service. Unless you have adjusted Your browser setting so that it will refuse Cookies, our Service may use Cookies.\r\n<li>• Web Beacons. Certain sections of our Service and our emails may contain small electronic files known as web beacons (also referred to as clear gifs, pixel tags, and single-pixel gifs) that permit the Company, for example, to count users who have visited those pages or opened an email and for other related website statistics (for example, recording the popularity of a certain section and verifying system and server integrity).\r\nCookies can be \"Persistent\" or \"Session\" Cookies. Persistent Cookies remain on Your personal computer or mobile device when You go offline, while Session Cookies are deleted as soon as You close Your web browser. You can learn more about cookies on TermsFeed website article.\r\nWe use both Session and Persistent Cookies for the purposes set out below:\r\n-\r\n<li>• Necessary / Essential Cookies\r\nType: Session Cookies\r\nAdministered by: Us<br>\r\nPurpose: These Cookies are essential to provide You with services available through the Website and to enable You to use some of its features. They help to authenticate users and prevent fraudulent use of user accounts. Without these Cookies, the services that You have asked for cannot be provided, and We only use these Cookies to provide You with those services.<br>\r\n\r\n<li>• Cookies Policy / Notice Acceptance Cookies<br>\r\nType: Persistent Cookies<br>\r\nAdministered by: Us<br>\r\nPurpose: These Cookies identify if users have accepted the use of cookies on the Website.<br>\r\n\r\n<li>• Functionality Cookies</li>\r\n<br>Type: Persistent Cookies<br>\r\n<br>Administered by: Us<br>\r\n<br>Purpose: These Cookies allow us to remember choices You make when You use the Website, such as remembering your login details or language preference. The purpose of these Cookies is to provide You with a more personal experience and to avoid You having to re-enter your preferences every time You use the Website.\r\n\r\nFor more information about the cookies we use and your choices regarding cookies, please visit our Cookies Policy or the Cookies section of our Privacy Policy.\r\nUse of Your Personal Data\r\n\r\n\r\n<br>The Company may use Personal Data for the following purposes:<br>\r\n\r\n<li>• To provide and maintain our Service, including to monitor the usage of our Service.</li>\r\n\r\n<li>• To manage Your Account: to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.</li>\r\n\r\n<li>• For the performance of a contract: the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.</li>\r\n\r\n<li>• To contact You: To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application\'s push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.</li>\r\n\r\n<li>• To provide You with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.</li>\r\n\r\n<li>• To manage Your requests: To attend and manage Your requests to Us.</li>\r\n\r\n<li>• For business transfers: We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.</li>\r\n\r\n<li>• For other purposes: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.</li>\r\n\r\n<br>We may share Your personal information in the following situations:<br>\r\n\r\n<li>• With Service Providers: We may share Your personal information with Service Providers to monitor and analyze the use of our Service, to contact You.</li>\r\n\r\n<li>• For business transfers: We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of Our business to another company.</li>\r\n\r\n<li>• With Affiliates: We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us.</li>\r\n\r\n<li>• With business partners: We may share Your information with Our business partners to offer You certain products, services or promotions.</li>\r\n\r\n<li>• With other users: when You share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside.</li>\r\n\r\n<li>• With Your consent: We may disclose Your personal information for any other purpose with Your consent.</li>\r\n\r\n</ul>\r\n\r\n\r\n\r\n\r\n<h5>Retention of Your Personal Data</h5>\r\nThe Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.\r\n\r\nThe Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.\r\n\r\n<h5>Transfer of Your Personal Data</h5>\r\nYour information, including Personal Data, is processed at the Company\'s operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to — and maintained on — computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.\r\nYour consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.\r\n\r\nThe Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.\r\n\r\n<h5>Delete Your Personal Data</h5>\r\nYou have the right to delete or request that We assist in deleting the Personal Data that We have collected about You.\r\n\r\nOur Service may give You the ability to delete certain information about You from within the Service.\r\n\r\nYou may update, amend, or delete Your information at any time by signing in to Your Account, if you have one, and visiting the account settings section that allows you to manage Your personal information. You may also contact Us to request access to, correct, or delete any personal information that You have provided to Us.\r\n\r\nPlease note, however, that We may need to retain certain information when we have a legal obligation or lawful basis to do so.\r\n\r\n<h5>Disclosure of Your Personal Data</h5>\r\nBusiness Transactions\r\nIf the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.\r\nLaw enforcement\r\nUnder certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).\r\nOther legal requirements\r\nThe Company may disclose Your Personal Data in the good faith belief that such action is necessary to:\r\n<ul>\r\n<li>• Comply with a legal obligation</li>\r\n<li>• Protect and defend the rights or property of the Company</li>\r\n<li>• Prevent or investigate possible wrongdoing in connection with the Service</li>\r\n<li>• Protect the personal safety of Users of the Service or the public</li>\r\n<li>• Protect against legal liability</li>\r\n\r\n</ul>\r\n<h5>Security of Your Personal Data</h5>\r\nThe security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.\r\nChildren\'s Privacy\r\nOur Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.\r\nIf We need to rely on consent as a legal basis for processing Your information and Your country requires consent from a parent, We may require Your parent\'s consent before We collect and use that information.\r\nLinks to Other Websites\r\nOur Service may contain links to other websites that are not operated by Us. If You click on a third party link, You will be directed to that third party\'s site. We strongly advise You to review the Privacy Policy of every site You visit.\r\nWe have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.\r\nChanges to this Privacy Policy\r\nWe may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.\r\nWe will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the \"Last updated\" date at the top of this Privacy Policy.\r\nYou are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.\r\n\r\n<h3>Contact Us</h3>\r\n<h6>If you have any questions about this Privacy Policy, You can contact us:</h6>\r\n\r\n<ul>\r\n<li>• By email: info@wbjrsfoundation.org</li>\r\n\r\n<li>• By phone number: +91 9007607002</li>\r\n\r\n<li>• By mail: Puspa Apartment 2, Chakraborty Para, Nona Chandanpukur, Barrackpore, Kolkata - 700122</li></ul>\r\n</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TC1'),
(8, 'terms_conditions', 'terms_conditions', 'Terms & Conditions', 'Terms & Conditions', '<p>&nbsp;</p>\r\n\r\n<p>The website <strong>wbjrsfoundation.org</strong>, along with all its subdomains (collectively referred to as the &ldquo;site&rdquo; or &ldquo;website&rdquo;), is managed by <strong>WBJRS ACADEMIC FOUNDATION</strong>. Throughout the site,<br />\r\nthe terms &ldquo;we,&rdquo; &ldquo;us,&rdquo; and &ldquo;our&rdquo; refer to <strong>WBJRS ACADEMIC FOUNDATION</strong>. WBJRS ACADEMIC FOUNDATION provides this website, including all information, tools, and services available on it,<br />\r\nto you, the user, contingent upon your acceptance of all terms, conditions, policies, and notices stated here. By visiting our site and/or making a purchase, you participate in our &ldquo;Service&rdquo; and agree to adhere to the following terms and conditions (&ldquo;Terms of Service&rdquo; or &ldquo;Terms&rdquo;), including any<br />\r\nadditional terms, conditions, and policies referenced here or accessible via hyperlink. These Terms of Service apply to all users of the site, including but not limited to browsers, vendors, customers, and content contributors. Please review these Terms of Service carefully before accessing or using our website. By accessing or using any part of the site, you agree to be bound by these Terms of Service.<br />\r\nIf you do not agree to all the terms and conditions of this agreement, you may not access the website or use any services. If these Terms of Service are considered an offer,<br />\r\nacceptance is expressly limited to these Terms of Service. Any new features or tools added to the current website will also be subject to the Terms of Service.<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Website and Online Course Usage Terms</p>\r\n\r\n<p><br />\r\nBy accepting these Terms of Service, you confirm that you are either of legal age in your state or province of residence, or you are of legal age and have given us permission to allow your minor dependents to use this site. You<br />\r\nare prohibited from using our products for any illegal or unauthorized purposes, and you must not violate any laws in your jurisdiction while using the Service (including but not limited to copyright laws).You must not transmit any worms, viruses, or any harmful code.Any breach or violation of these Terms will result in the immediate termination of your Services.<br />\r\n&nbsp;</p>\r\n\r\n<p>General Conditions:</p>\r\n\r\n<p>We retain the right to refuse service to anyone, for any reason, at any time. You acknowledge that your content (excluding credit card information) may be transferred unencrypted and may involve (a) transmissions over various networks, and (b) modifications to conform and adapt to the technical requirements of connecting networks or devices. Credit card information is always encrypted during network transfers. You agree not to reproduce, duplicate, copy, sell, resell, or exploit any part of the Service, use of the Service, or access to the Service, or any contact on the website through which the service is provided, without our express written permission.The headings in this agreement are included for convenience only and will not limit or otherwise affect these Terms.</p>\r\n\r\n<p>Accuracy, Completeness, and Timeliness of Information:</p>\r\n\r\n<p>We are not responsible if the information on this site is not accurate, complete, or current. The material on this site is provided for general information purposes only and should not be relied upon or used as the sole basis for making decisions without consulting primary, more accurate, more complete, or more timely sources of information. Any reliance on the material on this site is at your own risk. This site may contain historical information, which is not necessarily current and is provided for your reference only. We reserve the right to modify the contents of this site at any time, but we have no obligation to update any information on our site. You agree that it is your responsibility to monitor changes to our site.</p>\r\n\r\n<p>Modifications to the Service and Prices</p>\r\n\r\n<p>Prices for our classroom courses, study materials, online courses, and other products and services are subject to change without notice. We reserve the right to modify or discontinue the Service (or any part or content thereof) at any time without notice. We shall not be liable to you or any third party for any modification, price change, suspension, or discontinuance of the Service.</p>\r\n\r\n<p>Products or Services</p>\r\n\r\n<p>Certain products or services, including our online courses and eBooks, may be available exclusively online through the website or our partner websites. These products or services may have limited quantities and are subject to return or exchange only according to our Return Policy. We reserve the right, but are not obligated, to limit the sales of our products or Services to any person, geographic region, or jurisdiction. We may exercise this right on a case-by-case basis. We reserve the right to limit the quantities of any products or services that we offer. All descriptions of products or product pricing are subject to change at any time without notice, at our sole discretion. We reserve the right to discontinue any product at any time. Any offer for any product or service made on this site is void where prohibited. We do not guarantee that the quality of any products, services, information, or other material purchased or obtained by you will meet your expectations, or that any errors in the Service will be corrected.<br />\r\n6.</p>\r\n\r\n<p>Accuracy of Billing and Account Information:</p>\r\n\r\n<p>We reserve the right to refuse any order you place with us. At our discretion, we may limit or cancel quantities purchased per person, per household, or per order. These restrictions can apply to orders placed under the same customer account, using the same credit card, and/or orders that use the same billing or shipping address. If we make changes to or cancel an order, we may attempt to notify you via the email and/or billing address/phone number provided at the time of the order. We also reserve the right to limit or prohibit orders that, in our judgment, may harm our business interests. You agree to provide current, complete, and accurate purchase and account information for all purchases made at our site. You also agree to promptly update your account and other information, including your email address and credit card numbers and expiration dates, so we can complete your transactions and contact you as needed. 7.</p>\r\n\r\n<p>Optional</p>\r\n\r\n<p>We may provide you with access to third-party tools over which we neither monitor nor have any control or input. You acknowledge and agree that we provide access to such tools &ldquo;as is&rdquo; and &ldquo;as available&rdquo; without any warranties, representations, or conditions of any kind and without any endorsement. We shall have no liability arising from or relating to your use of optional third-party tools. Any use by you of optional tools offered through the site is entirely at your own risk and discretion, and you should ensure that you are familiar with and approve of the terms on which tools are provided by the relevant third-party provider(s). In the future, we may also offer new services and/or features through the website (including the release of new tools and resources). Such new features and/or services will also be subject to these Terms of Service.<br />\r\n8.</p>\r\n\r\n<p>Third-Party Links</p>\r\n\r\n<p>Our Service may include content, products, and services from third parties. Links to third-party websites on our site are not affiliated with us. We do not examine or evaluate the content or accuracy of these third-party materials and are not responsible for them. We disclaim any liability for any third-party materials, websites, products, or services. We are not liable for any harm or damages related to the purchase or use of goods, services, resources, content, or any other transactions made through third-party websites. Please review the third-party&rsquo;s policies and practices carefully before engaging in any transaction. Direct any complaints, claims, concerns, or questions regarding third-party products to the third party.<br />\r\n9.</p>\r\n\r\n<p>User Comments, Feedback, and Other Submissions:</p>\r\n\r\n<p>If you send us specific submissions (e.g., contest entries) at our request, or unsolicited creative ideas, suggestions, proposals, plans, or other materials (collectively, &lsquo;comments&rsquo;), you agree that we may use these comments in any medium without restriction. We are not obligated to: Maintain any comments in confidence; Pay compensation for any comments; Respond to any comments. We may, but are not obligated to, monitor, edit, or remove content that we determine, in our sole discretion, to be unlawful, offensive, threatening, libelous, defamatory, pornographic, obscene, or otherwise objectionable, or that violates any party&rsquo;s intellectual property or these Terms of Service.<br />\r\n10.</p>\r\n\r\n<p>Personal Information:</p>\r\n\r\n<p>The submission of your personal information through the store is governed by our Privacy Policy.<br />\r\n11. Errors, Inaccuracies, and Omissions: Occasionally, our site or Service may contain typographical errors, inaccuracies, or omissions related to product descriptions, pricing, promotions, offers, shipping charges, transit times, and availability. We reserve the right to correct these errors, inaccuracies, or omissions, and to change or update information or cancel orders if any information in the Service or on any related website is inaccurate at any time without prior notice (including after you have submitted your order). We are not obligated to update, amend, or clarify information in the Service or on any related website, including pricing information, except as required by law. No specified update or refresh date applied in the Service or on any related website should be taken to indicate that all information in the Service or on any related website has been modified or updated.<br />\r\n12.</p>\r\n\r\n<p>Prohibited Uses</p>\r\n\r\n<p>In addition to the restrictions outlined in the Terms of Service, you are not allowed to use the site or its content for the following purposes: (a) Any illegal activities; (b) Encouraging others to engage in illegal activities; &copy; Violating any international, federal, provincial, or state regulations, rules, laws, or local ordinances; (d) Infringing on our intellectual property rights or those of others; (e) Harassing, abusing, insulting, harming, defaming, slandering, disparaging, intimidating, or discriminating against individuals based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability; (f) Submitting false or misleading information; (g) Uploading or transmitting viruses or any other malicious code that could affect the functionality or operation of the Service, related websites, other websites, or the Internet; (h) Collecting or tracking the personal information of others; (i) Spamming, phishing, pharming, pretexting, spidering, crawling, or scraping; (j) Any obscene or immoral purposes; (k) Interfering with or bypassing the security features of the Service, related websites, other websites, or the Internet. We reserve the right to terminate your use of the Service or any related website if you violate any of these prohibited uses.<br />\r\n13.</p>\r\n\r\n<p>Disclaimer of Warranties; Limitation of Liability:</p>\r\n\r\n<p>We do not guarantee, represent, or warrant that your use of our service will be uninterrupted, timely, secure, or error-free. We do not warrant that the results obtained from using the service will be accurate or reliable. You agree that we may remove the service for indefinite periods or cancel it at any time without notice. You expressly agree that your use of, or inability to use, the service is at your sole risk. The service and all products and services delivered through it are provided &lsquo;as is&rsquo; and &lsquo;as available&rsquo; for your use, without any representations, warranties, or conditions of any kind, either express or implied, including all implied warranties or conditions of merchantability, merchantable quality, fitness for a particular purpose, durability, title, and non-infringement. Under no circumstances shall WBJRS ACADEMIC FOUNDATION, including its proprietor, directors, officers, employees, affiliates, agents, contractors, interns, suppliers, service providers, or licensors, be held liable for any injury, loss, claim, or any direct, indirect, incidental, punitive, special, or consequential damages of any kind. This includes, but is not limited to, lost profits, lost revenue, lost savings, loss of data, replacement costs, or any similar damages, whether based on contract, tort (including negligence), strict liability, or otherwise, arising from your use of any service or products obtained through the service. This also covers any other claims related to your use of the service or any product, including errors or omissions in any content, or any loss or damage incurred as a result of using the service or any content (or product) posted, transmitted, or otherwise made available via the service, even if advised of their possibility. Since some states or jurisdictions do not allow the exclusion or limitation of liability for consequential or incidental damages, our liability in such states or jurisdictions will be limited to the maximum extent permitted by law.<br />\r\n14.</p>\r\n\r\n<p>Indemnification:</p>\r\n\r\n<p>You agree to indemnify, defend, and hold harmless WBJRS ACADEMIC FOUNDATION, along with our parent company, subsidiaries, affiliates, partners, officers, directors, agents, contractors, licensors, service providers, subcontractors, suppliers, interns, and employees, from any claim or demand, including reasonable attorneys&rsquo; fees, made by any third party due to or arising from your breach of these Terms of Service or the documents they incorporate by reference, or your violation of any law or the rights of a third party.<br />\r\n15.</p>\r\n\r\n<p>Severability:</p>\r\n\r\n<p>If any provision of these Terms of Service is found to be unlawful, void, or unenforceable, that provision shall still be enforceable to the fullest extent permitted by applicable law, and the unenforceable portion shall be deemed severed from these Terms of Service. This determination shall not affect the validity and enforceability of any other remaining provisions.<br />\r\n16.</p>\r\n\r\n<p>Termination:</p>\r\n\r\n<p>The obligations and liabilities of the parties incurred prior to the termination date shall survive the termination of this agreement for all purposes. These Terms of Service are effective unless and until terminated by either you or us. You may terminate these Terms of Service at any time by notifying us that you no longer wish to use our services, or when you cease using our site. If, in our sole judgment, you fail, or we suspect that you have failed, to comply with any term or provision of these Terms of Service, we may terminate this agreement at any time without notice, and you will remain liable for all amounts due up to and including the date of termination. We may also deny you access to our services (or any part thereof).<br />\r\n17.</p>\r\n\r\n<p>Entire Agreement:</p>\r\n\r\n<p>Our failure to exercise or enforce any right or provision of these Terms of Service does not constitute a waiver of such right or provision. These Terms of Service, along with any policies or operating rules posted by us on this site or related to The Service, represent the entire agreement and understanding between you and us. They govern your use of the Service, superseding any prior or contemporaneous agreements, communications, and proposals, whether oral or written, between you and us (including any prior versions of the Terms of Service). Any ambiguities in the interpretation of these Terms of Service shall not be construed against the drafting party.<br />\r\n18.</p>\r\n\r\n<p>Governing Law:</p>\r\n\r\n<p>These Terms of Service and any separate agreements through which we provide you Services shall be governed by and construed in accordance with the laws of India, with jurisdiction in West Bengal.<br />\r\n19.</p>\r\n\r\n<p>Changes to Terms of Service:</p>\r\n\r\n<p>You can review the most current version of the Terms of Service at any time on this page. We reserve the right, at our sole discretion, to update, change, or replace any part of these Terms of Service by posting updates and changes to our website. It is your responsibility to check our website periodically for changes. Your continued use of or access to our website or the Service following the posting of any changes to these Terms of Service constitutes acceptance of those changes.<br />\r\n20.</p>\r\n\r\n<p>Contact Information:</p>\r\n\r\n<p>If you have any questions about the Terms of Service, please contact us at support@wbjrsfoundation.org. Price Range:- At wbjrsfoundation.org, an initiative of WBJRS ACADEMIC FOUNDATION, we offer customized pricing based on the different courses and study materials we provide. The details are shared with you in advance, reflecting the effort, efficiency, and output of the service. Typically, transactions on our website range from INR 1,000 to INR 45,000. Schedule of Payment:- The duration of our live online classes and the validity of our online courses are fixed. These details are clearly mentioned in the course descriptions. The duration of our courses varies from 1 month to 1 year. Renewal of Online Courses:- Our online courses available on our website or mobile app do not renew automatically. You will receive an email before the expiry, offering you the option to renew the course. Renewal must be done manually each time.</p>\r\n\r\n<p>Repeating Live Online Classes:</p>\r\n\r\n<p>You are entitled to attend classes only with the batch you enrolled in at the time of signing up for the course. If you are unable to complete the course with your batch or wish to repeat part or all of the course, you will need to pay a readmission fee according to the current readmission terms.</p>\r\n\r\n<p>Refund Policy:</p>\r\n\r\n<p>Live Online Classes:-</p>\r\n\r\n<p>Before the first class: If you decide to discontinue before the first class of your batch, you will receive a 50% refund. After the first class: No refunds will be issued once the first class has commenced, regardless of the number of classes attended. Refunds for discontinuation before the batch starts will be processed within 3 working days of your email notification. Funds will be transferred within 2 working days after receiving your bank details. If WBJRS ACADEMIC FOUNDATION cancels a batch, you will receive a prorated refund for the classes not conducted. This refund will be processed within 3 working days of notification, and funds will be transferred within 2 working days after receiving your bank details.</p>\r\n\r\n<p>Pre-recorded Self-paced Online Courses:-</p>\r\n\r\n<p>No Refund Policy: We do not offer refunds for pre-recorded courses. To help you decide, you can try about 10% of the course before enrolling. Study Material / Correspondence Course Cancellation: To cancel an order, call us at<em><strong> +90076 07002, (033) 79609224 </strong></em>and follow up with an email stating your order number before the material is dispatched at wbjrsgroup@gmail.com. No Refund: Once the study material has been dispatched, cancellations and refunds are not possible.<br />\r\n<br />\r\n<br />\r\n--------</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TC1'),
(9, 'callback', NULL, 'Callback', 'Unlock Your Free Career Counseling Now!', '<p>Enroll Now!! Get exiting discount upto 50% on All Courses for the Session 2025.</p>\r\n', '11740733138.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'TCI1');

-- --------------------------------------------------------

--
-- Table structure for table `pg_repeat`
--

CREATE TABLE `pg_repeat` (
  `id` int(11) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `type` enum('Key_Facilities','Why_choose','Accreditation','Appreciation','Olympiad','Bulletins','Govt_pledge','Authorization') DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pg_repeat`
--

INSERT INTO `pg_repeat` (`id`, `url`, `name`, `title`, `content`, `image`, `attachment`, `date`, `type`, `status`) VALUES
(1, NULL, NULL, 'Scholarship Available', NULL, '11739863114.png', NULL, NULL, 'Key_Facilities', 'Active'),
(2, NULL, NULL, 'Industry Led Experts', NULL, '11739863172.png', NULL, NULL, 'Key_Facilities', 'Active'),
(3, NULL, NULL, 'Industry based Curriculum', NULL, '11739863220.png', NULL, NULL, 'Key_Facilities', 'Active'),
(4, NULL, NULL, 'Smart EMI Facilities', NULL, '11743881499.png', NULL, NULL, 'Key_Facilities', 'Active'),
(5, NULL, NULL, 'Free Internships Worldwide', NULL, '11739863338.png', NULL, NULL, 'Key_Facilities', 'Active'),
(6, NULL, NULL, 'Interactive Classroom', NULL, '11739863369.png', NULL, NULL, 'Key_Facilities', 'Active'),
(7, NULL, NULL, 'High-Speed Wifi Campus', NULL, '11739863411.png', NULL, NULL, 'Key_Facilities', 'Active'),
(8, NULL, NULL, 'CCTV Protection', NULL, '11739863438.png', NULL, NULL, 'Key_Facilities', 'Active'),
(9, NULL, NULL, ' Get Trained by Experienced Instructors of Industry', '<p>Learn from industry experts and experienced professionals who bring real-world insights to the classroom.</p>\r\n', '11739863548.png', NULL, NULL, 'Why_choose', 'Active'),
(10, NULL, NULL, 'State-of-the-Art Facilities and Friendly Environment', '<p>Our institute is equipped with modern facilities, providing an optimal environment for learning and collaboration.</p>\r\n', '11739863582.png', NULL, NULL, 'Why_choose', 'Active'),
(11, NULL, NULL, 'Best Career Support and Guidance by Mentors', '<p>Benefit from our career services, including resume building, interview preparation, and job placement assistance for 01 year.</p>\r\n', '11739863616.png', NULL, NULL, 'Why_choose', 'Active'),
(12, NULL, NULL, 'Interactive with Wi-Fi Enabled Classes with CCV Protection', '<p>Access cutting-edge education technology with our free digital classes and Wi-Fi-enabled classrooms.</p>\r\n', '11739863653.png', NULL, NULL, 'Why_choose', 'Active'),
(13, NULL, NULL, 'One-to-One Focused Sessions and Extra Classes', '<p>Tailored support for individual needs, including extra classes for students seeking additional assistance.</p>\r\n', '11739863708.png', NULL, NULL, 'Why_choose', 'Active'),
(14, NULL, NULL, 'Worldwide Certification Guaranteed', '<p>Receive a globally recognized certificate upon successful completion of your chosen course.</p>\r\n', '11739863734.png', NULL, NULL, 'Why_choose', 'Active'),
(15, NULL, NULL, 'Hands On Training  and Internship for All Students ', '<p>Explore freelance opportunities through our dedicated internships and training initiatives.</p>\r\n', '11739863760.png', NULL, NULL, 'Why_choose', 'Active'),
(16, NULL, NULL, 'Smart Classes by Industry Led and Retired Professionals', '<p>Learn from experienced professionals in interactive and engaging smart classes.</p>\r\n', '11739863786.png', NULL, NULL, 'Why_choose', 'Active'),
(17, 'hippo_english_olympiad', 'Hippo English Olympiad', 'Hippo English Olympiad', '<p class=\"about-three__content__text\">\r\n<h3>Overview</h3>\r\nGLOBAL HIPPO ASSOCIATION is organising 11th International English Language Olympiad. The Hippo International English Language Olympiad is available to students in grades 2 to 12. Students can register for this exam either as an individual or through their school.</p>\r\n<p class=\"about-three__content__text\">\r\n<h3>Objectives</h3>\r\nThe Hippo English Olympiad is an international competition that motivates teachers to cooperate, promotes the English language, and challenges students all around the world to demonstrate their proficiency in the language. The Olympiad promotes the growth of a common sense of identity and integration and acts as a role model for young people living in together as one community. The main goal is to create goodwill, global awareness, and a healthy sense of rivalry among young people from around the world who are interested in learning the English language. In addition, by competing in such an Olympiad, students get the opportunity to compare their English proficiency to international practices and become familiar with the concept of examinations.\r\n</p>', '11739867590.png', '21739867590.pdf', NULL, 'Olympiad', 'Active'),
(18, 'mathematical_kangaroo_competition', 'Mathematical Kangaroo Competition', 'Mathematical Kangaroo Competition', '<p class=\"about-three__content__text\">\r\n<h3>Overview</h3>\r\nMathematical Kangaroo (also known as International Mathematical Kangaroo or Kangourou sans frontieres in French) is an international mathematical competition that takes place in 92 countries. There are twelve levels of participation, ranging from 1to 12 grades. The key competence tested by Mathematical Kangaroo is not just pure knowledge of formulas, but the logical combination of concepts.\r\n<br>\r\nKangourou sans Frontieres is an organisation made up by mathematicians from all over the world. They aim to spread the love of mathematics, encourage mathematical education in schools, and create a favourable perception of mathematics in society, motivated by the importance of mathematics in the current world. The annual Kangaroo Mathematics Competition is the main activity of Kangourou sans Frontieres. Mathematical questions in the multiple-choice format are available to students at all levels of school. The questions aren\'t the typical textbook problems, and they cover a wide range of topics. They demand imagination, basic computational abilities, logical reasoning, and other problem-solving strategies in addition to inspiring ideas, perseverance, and creativity. Small anecdotes, surprising questions and results frequently appear, prompting conversations with friends and family. The organisation of the competition in the individual countries is up to the members of Kangourou sans Frontieres.\r\n</p>', '11739867680.png', '21739867680.pdf', NULL, 'Olympiad', 'Active'),
(19, 'iso_international_science_olympiad', 'ISO (International Science Olympiad)', 'ISO (International Science Olympiad)', '<p class=\"about-three__content__text\">\r\n<h3>Overview</h3>\r\nHumanity has been working diligently since the beginning of science to solve every mystery that has enveloped this universe. With technological advancements advancing at a breakneck speed, we must take a step back and ask ourselves, \"What is our contribution to this?\" Are we providing the tools necessary for the next generation to become the next great explorer or scientist?\r\n<br>\r\nThe International Science Olympiad is specifically designed to accomplish this. The International Science Olympiad strives to identify raw talent among students in their earliest years. It\'s provides students with the opportunity to compete against the best on a global scale.</p>                      \r\n<h3>Objective</h3>\r\nThe exam is designed to assess students\' knowledge of the subject not just theoretically but also practically. The main aim of the exam is to test the scientific temperament of each student as they tackle problems of increasing difficulty that challenge their knowledge at every step and force them to think beyond their textbook knowledge. Each question is intended to assess each student\'s inherent knowledge.  \r\n</p>', '11739867819.png', '21739867819.pdf', NULL, 'Olympiad', 'Active'),
(20, NULL, NULL, 'Certificate 1', NULL, '11739865013.jpg', NULL, NULL, 'Accreditation', 'Active'),
(21, NULL, NULL, 'Certificate 2', NULL, '11739865160.jpg', NULL, NULL, 'Accreditation', 'Active'),
(22, NULL, NULL, 'Certificate 3', NULL, '11739865192.jpg', NULL, NULL, 'Accreditation', 'Active'),
(23, NULL, NULL, 'Certificate 4', NULL, '11739865212.jpg', NULL, NULL, 'Accreditation', 'Active'),
(24, NULL, NULL, 'Certificate 5', NULL, '11739865239.jpg', NULL, NULL, 'Accreditation', 'Active'),
(25, NULL, NULL, 'Certificate 6', NULL, '11739865270.jpg', NULL, NULL, 'Accreditation', 'Active'),
(26, NULL, NULL, 'Certificate 7', NULL, '11739865290.jpg', NULL, NULL, 'Accreditation', 'Active'),
(27, NULL, NULL, 'Certificate 8', NULL, '11739865313.jpg', NULL, NULL, 'Accreditation', 'Active'),
(28, NULL, NULL, 'Certificate 9', NULL, '11739865450.png', NULL, NULL, 'Accreditation', 'Active'),
(29, NULL, NULL, 'Certificate 1', NULL, '11739865717.jpeg', NULL, NULL, 'Govt_pledge', 'Active'),
(30, NULL, NULL, 'Certificate 2', NULL, '11739865745.jpg', NULL, NULL, 'Govt_pledge', 'Active'),
(31, NULL, NULL, 'Certificate 3', NULL, '11739865796.jpg', NULL, NULL, 'Govt_pledge', 'Active'),
(32, NULL, NULL, 'Certificate 4', NULL, '11739865827.jpg', NULL, NULL, 'Govt_pledge', 'Active'),
(33, NULL, NULL, 'Certificate 5', NULL, '11739865859.jpg', NULL, NULL, 'Govt_pledge', 'Active'),
(34, NULL, NULL, 'Certificate 6', NULL, '11739865890.jpg', NULL, NULL, 'Govt_pledge', 'Active'),
(35, NULL, NULL, 'Certificate 7', NULL, '11739865916.jpeg', NULL, NULL, 'Govt_pledge', 'Active'),
(36, NULL, NULL, 'Certificate 8', NULL, '11739865937.jpeg', NULL, NULL, 'Govt_pledge', 'Active'),
(37, NULL, NULL, 'Certificate 9', NULL, '11739865971.jpeg', NULL, NULL, 'Govt_pledge', 'Active'),
(38, NULL, NULL, 'Certificate 10', NULL, '11739865994.jpeg', NULL, NULL, 'Govt_pledge', 'Active'),
(39, NULL, NULL, 'Certificate 11', NULL, '11739866015.jpeg', NULL, NULL, 'Govt_pledge', 'Active'),
(40, NULL, NULL, 'Certificate 12', NULL, '11739866041.jpeg', NULL, NULL, 'Govt_pledge', 'Active'),
(41, NULL, NULL, 'Certificate 13', NULL, '11739866070.jpeg', NULL, NULL, 'Govt_pledge', 'Active'),
(42, NULL, NULL, 'Certificate 14', NULL, '11739866099.jpg', NULL, NULL, 'Govt_pledge', 'Active'),
(43, NULL, NULL, 'Certificate 15', NULL, '11739866121.jpeg', NULL, NULL, 'Govt_pledge', 'Active'),
(44, NULL, NULL, 'Certificate 16', NULL, '11739866144.jpeg', NULL, NULL, 'Govt_pledge', 'Active'),
(45, NULL, NULL, 'Certificate 1', NULL, '11739867155.jpg', NULL, NULL, 'Authorization', 'Active'),
(46, NULL, NULL, 'Certificate 2', NULL, '11739867182.jpg', NULL, NULL, 'Authorization', 'Active'),
(47, NULL, NULL, 'Certificate 3', NULL, '11739867204.jpg', NULL, NULL, 'Authorization', 'Active'),
(48, NULL, NULL, NULL, NULL, '11739868628.png', NULL, '2024-06-26', 'Bulletins', 'Active'),
(49, NULL, NULL, NULL, NULL, '11739868665.png', NULL, '2024-06-26', 'Bulletins', 'Active'),
(50, NULL, NULL, NULL, NULL, '11739868678.png', NULL, '2024-06-26', 'Bulletins', 'Active'),
(51, NULL, NULL, NULL, NULL, '11739868689.png', NULL, '2024-06-26', 'Bulletins', 'Active'),
(52, NULL, NULL, NULL, NULL, '11739868711.png', NULL, '2024-06-27', 'Bulletins', 'Active'),
(53, NULL, NULL, NULL, NULL, '11739868722.png', NULL, '2024-06-27', 'Bulletins', 'Active'),
(54, NULL, NULL, NULL, NULL, '11739868733.png', NULL, '2024-06-27', 'Bulletins', 'Active'),
(55, NULL, NULL, NULL, NULL, '11739868744.png', NULL, '2024-06-27', 'Bulletins', 'Active'),
(56, NULL, NULL, NULL, NULL, '11739868774.png', NULL, '2024-06-28', 'Bulletins', 'Active'),
(57, NULL, NULL, NULL, NULL, '11739868784.png', NULL, '2024-06-28', 'Bulletins', 'Active'),
(58, NULL, NULL, NULL, NULL, '11739868795.png', NULL, '2024-06-28', 'Bulletins', 'Active'),
(59, NULL, NULL, NULL, NULL, '11739868805.png', NULL, '2024-06-28', 'Bulletins', 'Active'),
(60, NULL, NULL, NULL, NULL, '11739868828.png', NULL, '2024-07-04', 'Bulletins', 'Active'),
(61, NULL, NULL, NULL, NULL, '11739868847.png', NULL, '2024-07-04', 'Bulletins', 'Active'),
(62, NULL, NULL, NULL, NULL, '11739868860.png', NULL, '2024-07-04', 'Bulletins', 'Active'),
(63, NULL, NULL, NULL, NULL, '11739868874.png', NULL, '2024-07-04', 'Bulletins', 'Active'),
(64, NULL, NULL, NULL, NULL, '11739868909.png', NULL, '2024-07-05', 'Bulletins', 'Active'),
(65, NULL, NULL, NULL, NULL, '11739868922.png', NULL, '2024-07-05', 'Bulletins', 'Active'),
(66, NULL, NULL, NULL, NULL, '11739868935.png', NULL, '2024-07-05', 'Bulletins', 'Active'),
(67, NULL, NULL, NULL, NULL, '11739868947.png', NULL, '2024-07-05', 'Bulletins', 'Active'),
(68, NULL, NULL, NULL, NULL, '11739868973.jpg', NULL, '2024-07-08', 'Bulletins', 'Active'),
(69, NULL, NULL, NULL, NULL, '11739868984.jpg', NULL, '2024-07-08', 'Bulletins', 'Active'),
(70, NULL, NULL, NULL, NULL, '11739869210.jpg', NULL, '2024-07-08', 'Bulletins', 'Active'),
(71, NULL, NULL, NULL, NULL, '11739869220.jpg', NULL, '2024-07-08', 'Bulletins', 'Active'),
(72, NULL, NULL, NULL, NULL, '11739869238.jpg', NULL, '2024-07-09', 'Bulletins', 'Active'),
(73, NULL, NULL, NULL, NULL, '11739869252.jpg', NULL, '2024-07-09', 'Bulletins', 'Active'),
(74, NULL, NULL, NULL, NULL, '11739869262.jpg', NULL, '2024-07-09', 'Bulletins', 'Active'),
(75, NULL, NULL, NULL, NULL, '11739869275.jpg', NULL, '2024-07-09', 'Bulletins', 'Active'),
(76, NULL, NULL, NULL, NULL, '11739869296.jpg', NULL, '2024-07-10', 'Bulletins', 'Active'),
(77, NULL, NULL, NULL, NULL, '11739869306.jpg', NULL, '2024-07-10', 'Bulletins', 'Active'),
(78, NULL, NULL, NULL, NULL, '11739869316.jpg', NULL, '2024-07-10', 'Bulletins', 'Active'),
(79, NULL, NULL, NULL, NULL, '11739869325.jpg', NULL, '2024-07-10', 'Bulletins', 'Active'),
(80, NULL, NULL, NULL, NULL, '11739869347.jpg', NULL, '2024-07-24', 'Bulletins', 'Active'),
(81, NULL, NULL, NULL, NULL, '11739869357.jpg', NULL, '2024-07-24', 'Bulletins', 'Active'),
(82, NULL, NULL, NULL, NULL, '11739869368.jpg', NULL, '2024-07-24', 'Bulletins', 'Active'),
(83, NULL, NULL, NULL, NULL, '11739869379.jpg', NULL, '2024-07-24', 'Bulletins', 'Active'),
(84, NULL, NULL, NULL, NULL, '11739869401.jpg', NULL, '2024-07-26', 'Bulletins', 'Active'),
(86, NULL, NULL, NULL, NULL, '11739869511.jpg', NULL, '2024-07-26', 'Bulletins', 'Active'),
(87, NULL, NULL, NULL, NULL, '11739869522.jpg', NULL, '2024-07-26', 'Bulletins', 'Active'),
(89, NULL, NULL, NULL, NULL, '11739869543.jpg', NULL, '2024-07-26', 'Bulletins', 'Active'),
(90, NULL, NULL, 'MSME CERTIFICATE', NULL, '11743509089.png', NULL, NULL, 'Accreditation', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `request_callback`
--

CREATE TABLE `request_callback` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `status` enum('Pending','Success') NOT NULL DEFAULT 'Pending',
  `dt1` date DEFAULT NULL,
  `dt2` date DEFAULT NULL,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_callback`
--

INSERT INTO `request_callback` (`id`, `name`, `mobile`, `email`, `status`, `dt1`, `dt2`, `remarks`) VALUES
(1, '', '', NULL, 'Success', '2025-03-01', '2025-03-29', NULL),
(2, 'xALiHoMZQn', '5349523108', 'hollrileyf53@gmail.com', 'Success', '2025-03-03', '2025-03-29', NULL),
(3, '', '', NULL, 'Success', '2025-03-06', '2025-03-29', NULL),
(4, 'Hello', 'John', 'jxuzgltc@do-not-respond.me', 'Success', '2025-03-08', '2025-03-29', NULL),
(5, 'jkFhGXYeXIuo', '7292973826', 'kerifigu40@gmail.com', 'Success', '2025-03-12', '2025-03-29', NULL),
(6, '', '', NULL, 'Success', '2025-03-12', '2025-03-29', NULL),
(7, 'Hello', 'TestUser', 'zklbbepa@do-not-respond.me', 'Success', '2025-03-14', '2025-03-29', NULL),
(8, 'John', 'Hello', 'wcpdicfs@do-not-respond.me', 'Success', '2025-03-21', '2025-03-29', NULL),
(9, 'nFJdwROkQZSBDf', '9900214934', 'leingal82@gmail.com', 'Success', '2025-03-25', '2025-03-29', NULL),
(10, '', '', NULL, 'Success', '2025-03-25', '2025-03-29', NULL),
(11, 'oLhUUjGQRFVEeYD', '4816406711', 'imoodyhg15@gmail.com', 'Success', '2025-03-26', '2025-03-29', NULL),
(19, '', '', NULL, 'Pending', '2025-04-17', NULL, NULL),
(20, 'eNvJmUxbgYSRI', '2599154990', 'combottkrakhurd1979@yahoo.com', 'Pending', '2025-04-24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `request_career`
--

CREATE TABLE `request_career` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `query` text DEFAULT NULL,
  `dt1` date DEFAULT NULL,
  `dt2` date DEFAULT NULL,
  `status` enum('Pending','Success','Rejected') NOT NULL DEFAULT 'Pending',
  `remarks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_career`
--

INSERT INTO `request_career` (`id`, `name`, `mobile`, `email`, `details`, `query`, `dt1`, `dt2`, `status`, `remarks`) VALUES
(17, '', '', NULL, NULL, NULL, '2025-04-07', '2025-04-09', 'Success', NULL),
(18, '', '', NULL, NULL, NULL, '2025-04-15', NULL, 'Pending', NULL),
(19, '', '', NULL, NULL, NULL, '2025-04-25', NULL, 'Pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `request_teacher`
--

CREATE TABLE `request_teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `skill` text DEFAULT NULL,
  `dt1` date DEFAULT NULL,
  `dt2` date DEFAULT NULL,
  `status` enum('Pending','Success','Rejected') NOT NULL DEFAULT 'Pending',
  `remarks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_teacher`
--

INSERT INTO `request_teacher` (`id`, `name`, `mobile`, `email`, `subject`, `skill`, `dt1`, `dt2`, `status`, `remarks`) VALUES
(1, '', '', NULL, NULL, NULL, '2025-03-01', '2025-03-29', 'Success', NULL),
(2, 'Mike Maqnus Willems', '84247754124', 'info@digital-x-press.com', 'Patience Pays Off – Get Started Today', 'Hi there, \r\n \r\nI know that many find it challenging understanding that organic ranking growth is a long-term game and a well-planned monthly approach. \r\n \r\nUnfortunately, very few businesses have the determination to wait for the gradual yet business-changing trends that can transform their business. \r\n \r\nWith frequent SEO changes, a steady, long-term strategy is necessary for getting a high return on investment. \r\n \r\nIf you see this as the best approach, give us a try! \r\n \r\nExplore Our Custom SEO Plans \r\nhttps://www.digital-x-press.com/unbeatable-seo/ \r\n \r\nContact Us on Instant Messaging \r\nhttps://www.digital-x-press.com/whatsapp-us/ \r\n \r\nWe provide exceptional value for your SEO spend, and you will be glad choosing us as your digital agency. \r\n \r\nThank you, \r\nDigital X SEO Experts \r\nPhone/WhatsApp: +1 (844) 754-1148', '2025-03-02', '2025-03-29', 'Success', NULL),
(3, 'Robertzew', '84354296699', 'aferinohis056@gmail.com', 'Aloha,   wrote about your   prices', 'Hæ, ég vildi vita verð þitt.', '2025-03-04', '2025-03-29', 'Success', NULL),
(4, '', '', NULL, NULL, NULL, '2025-03-07', '2025-03-29', 'Success', NULL),
(5, 'stenlixnuh', '83978414416', 'stenlynuh@gmail.com', 'Databases for website promotion for Xrumer 23 and GSA Search Engine Ranker', 'Professional databases for SEO Xrumer and GSA Search Engine Ranker\r\n \r\nWe offer the best website databases for working with Xrumer 23 ai Strong and GSA Search Engine Ranker. The databases are suitable for a professional SEO company and creating hundreds of thousands of backlinks. Our databases are used by many SEO professionals from different countries of the world. The price for the databases is low, having bought them you receive updates for 12 months. You can read more and order a subscription to the databases here: https://dseo24.monster/vip-base-for-xrumer-and-gsa-ser/ On the site page you can choose any language of the pages.', '2025-03-07', '2025-03-29', 'Success', NULL),
(6, 'Kevin Barber', '240827505', 'carmelo.crace@googlemail.com', 'Day 1: Why Most Marketing Fails (And How to Make Yours Succeed)', 'Hi Wbjrsfoundation,\r\n\r\nMost business owners pour money into marketing that doesn’t work. They run ads, post on social media, and hope for the best—only to be disappointed by the results. \r\n\r\nThe problem? They’re relying on vague branding tactics instead of proven strategies.\r\n\r\nDan Kennedy calls this the “ADHD approach to marketing”—jumping from one shiny tactic to another without a clear, measurable plan.\r\n\r\nBut there’s a better way: Direct-Response Marketing.\r\n\r\nThis approach focuses on generating real, measurable results, like leads, sales, and conversions. Here’s how you can start applying it today:\r\n\r\nStep 1: Speak Directly to Your Audience\r\n\r\nOne of Dan’s key teachings is this: “If you’re speaking to everyone, you’re speaking to no one.” Direct-response marketing works because it’s personal.\r\n\r\nFor example:\r\n\r\nA company selling weight loss supplements doesn’t just target “everyone who wants to lose weight.” Instead, they target busy moms who want to shed pounds quickly after having kids.\r\n\r\nA financial advisor doesn’t market to “everyone interested in saving money.” They craft campaigns for high-income professionals nearing retirement.\r\n\r\nYour Action Step: Write down your audience’s specific demographics, challenges, and goals.\r\n\r\nStep 2: Use an Irresistible Call-to-Action\r\n\r\nEvery piece of marketing must tell the audience what to do next. Whether it’s “Download this guide,” “Sign up for a webinar,” or “Call now,” your call-to-action (CTA) should be clear and compelling.\r\n\r\nExample 1:\r\nA dental clinic offered a free teeth-whitening session for new patients. The clear CTA—“Call to schedule your free session today!”—resulted in a 200% increase in appointments.\r\n\r\nExample 2:\r\nA SaaS company ran ads with the CTA: “Get a 30-day free trial today.” The campaign boosted signups by 35%.\r\n\r\nStep 3: Track and Test Everything\r\n\r\nOne of Dan’s most famous quotes is: “You can’t improve what you don’t measure.” Direct-response marketing relies on tracking every aspect of your campaign.\r\n\r\nWhat’s your click-through rate?\r\nHow many leads did you generate?\r\nWhat’s your cost per acquisition?\r\n\r\nExample:\r\nA real estate agent ran Facebook ads targeting first-time homebuyers. By testing different headlines and images, they reduced their cost per lead by 50%.\r\n\r\nTomorrow, we’ll dive into the art of crafting offers your customers can’t refuse.\r\n\r\nTo your success,\r\nKevin\r\n\r\nWho is Dan Kennedy?\r\nhttps://books.forbes.com/authors/dan-kennedy/\r\n\r\n\r\n\r\n\r\nUnsubscribe: \r\nhttps://marketersmentor.com/unsubscribe.php?d=wbjrsfoundation.org', '2025-03-08', '2025-03-29', 'Success', NULL),
(7, '', '', NULL, NULL, NULL, '2025-03-08', '2025-03-29', 'Success', NULL),
(8, 'Hello', 'Alice', 'jtdjpufp@do-not-respond.me', 'MyName', 'ggWfuY ZDS jXiG Nrus PXG SkWJTkkR', '2025-03-08', '2025-03-29', 'Success', NULL),
(9, 'Mike Espen Jones', '88613647357', 'info@strictlydigital.net', 'Semrush links for wbjrsfoundation.org', 'Greetings, \r\n \r\nGetting some bunch of links linking to wbjrsfoundation.org might bring zero worth or harmful results for your business. \r\n \r\nIt really makes no difference the total external links you have, what matters is the total of ranking terms those domains rank for. \r\n \r\nThat is the key thing. \r\nNot the meaningless Moz DA or Domain Rating. \r\nThese can be faked easily. \r\nBUT the volume of ranking keywords the domains that point to your site have. \r\nThat’s what really matters. \r\n \r\nHave such links link to your domain and your site will see real growth! \r\n \r\nWe are introducing this powerful offer here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nIn doubt, or need more information, chat with us here: \r\nhttps://www.strictlydigital.net/whatsapp-us/ \r\n \r\nKind regards, \r\nMike Espen Jones\r\n \r\nstrictlydigital.net \r\nPhone/WhatsApp: +1 (877) 566-3738', '2025-03-09', '2025-03-29', 'Success', NULL),
(10, 'Martincup', '87786882824', 'juliafkrl@gmail.com', 'VERY SEXY WOMEN WANT SEX ONLY ON THIS DATING SITE', 'SEXY GIRLS WANT SEX WITH YOU ONLY ON THIS DATING SITE http://txaruba.com/analytics/hit.php?nocache=1527194336.7004&r=gg.gg&a=12&i=2272639&r2=https%3A%2F%2Ftelegra.ph%2Fbhw-03-02%3F2559?0z7qm0b8 \r\n \r\n \r\n \r\n \r\nw3xo1o7o2b6c2p1r \r\ni0rr8v5c8w0e1g8t \r\nz4rt1k5y6u2n1y3w \r\nl0ls1g0p2r3e1v3t', '2025-03-11', '2025-03-29', 'Success', NULL),
(11, 'QxYwnWFBk', '7754311472', 'kerifigu40@gmail.com', 'cCLnYjglNm', NULL, '2025-03-12', '2025-03-29', 'Success', NULL),
(12, '', '', NULL, NULL, NULL, '2025-03-12', '2025-03-29', 'Success', NULL),
(13, '', '', NULL, NULL, NULL, '2025-03-12', '2025-03-29', 'Success', NULL),
(14, '', '', NULL, NULL, NULL, '2025-03-12', '2025-03-29', 'Success', NULL),
(15, 'TestUser', 'MyName', 'dgzdmocw@do-not-respond.me', 'Alice', 'ueJR vJOIDKZ CFKSiZ', '2025-03-14', '2025-03-29', 'Success', NULL),
(16, '', '', NULL, NULL, NULL, '2025-03-14', '2025-03-29', 'Success', NULL),
(17, 'Mike Gerard Lambert', '85241585278', 'info@speed-seo.net', 'Unlock Your wbjrsfoundation.org Potential with a Free SEO Score Check', 'Hi, \r\n \r\nInterested in how your site is ranking? \r\nLearn its pros and cons with our Complimentary SEO Audit! \r\n \r\nIn just 2 minutes, you’ll get a in-depth analysis of your site’s optimization and recommendations to help improve your visibility. \r\n \r\nTake the first step towards stronger SEO and business success. \r\n \r\nRun Your Free SEO Check Now \r\nhttps://www.speed-seo.net/check-site-seo-score/ \r\n \r\nDon’t let overlooked optimization problems damage your rankings. \r\nImprove your website today and become more visible in Google! \r\n \r\nNeed more info? Whatsapp with a SEO expert: https://www.speed-seo.net/whatsapp-with-us/ \r\n \r\nLooking forward, \r\n \r\n \r\nMike Gerard Lambert\r\n \r\nSpeed SEO \r\nPhone/WhatsApp: +1 (833) 454-8622', '2025-03-15', '2025-03-29', 'Success', NULL),
(18, '', '', NULL, NULL, NULL, '2025-03-16', '2025-03-29', 'Success', NULL),
(19, 'Mike Mathias Smith', '88367456456', 'info@professionalseocleanup.com', 'Improve your website`s ranks totally free', 'Hi there, \r\n \r\nWhile checking your wbjrsfoundation.org for its ranks, I have noticed that \r\nthere are some toxic links pointing towards it. \r\n \r\nGrab your free clean up and improve ranks in no time \r\nhttps://www.professionalseocleanup.com/ \r\n \r\nAsk us how we do it: \r\nhttps://www.professionalseocleanup.com/whatsapp/ \r\n \r\nRegards \r\nMike Mathias Smith\r\n \r\nPhone: +1 (855) 221-7591', '2025-03-18', '2025-03-29', 'Success', NULL),
(20, 'TestUser', 'John', 'xpkgksap@testing-your-form.info', 'Alice', 'beiXdv RTLsOJV MSieYbw gEbS vTgoeVDG', '2025-03-19', '2025-03-29', 'Success', NULL),
(21, 'Hello', 'TestUser', 'avcppqwl@testing-your-form.info', 'Alice', 'KbEzzvGB mtD UHPcwOlm gRnbGF uhCkZiG', '2025-03-19', '2025-03-29', 'Success', NULL),
(22, '', '', NULL, NULL, NULL, '2025-03-19', '2025-03-29', 'Success', NULL),
(23, '', '', NULL, NULL, NULL, '2025-03-20', '2025-03-29', 'Success', NULL),
(24, '', '', NULL, NULL, NULL, '2025-03-20', '2025-03-29', 'Success', NULL),
(25, 'John', 'Alice', 'nyqfikgi@do-not-respond.me', 'John', 'rYCITQ APheFyh CUGUz njZrJhmR', '2025-03-21', '2025-03-29', 'Success', NULL),
(26, 'Mike Guilherme Muller', '89318522255', 'mike@monkeydigital.co', 'Collaboration Request', 'Hi, \r\n \r\nThis is Mike from Monkey Digital, \r\nI am getting in touch regarding a great collaboration. \r\n \r\nHow would you like to feature our promotions on your website and redirect via your custom tracking link towards high-demand services from our business? \r\n \r\nThis way, you make a 35% profit share, continuously from any purchases that generate from your website. \r\n \r\nThink about it, everyone benefit from SEO, so this is a big opportunity. \r\n \r\nWe already have over 12,000 affiliates and our payments are sent on time. \r\nLast month, we reached a significant amount in payouts to our promoters. \r\n \r\nIf this sounds good, kindly contact us here: \r\nhttps://monkeydigital.co/affiliates-whatsapp/ \r\n \r\nOr join us today: \r\nhttps://www.monkeydigital.co/join-our-affiliate-program/ \r\n \r\nCheers, \r\nMike Guilherme Muller\r\n \r\nPhone/whatsapp: +1 (775) 314-7914', '2025-03-23', '2025-03-29', 'Success', NULL),
(27, 'suprastine_bbel', '88943458631', 'pro1@tahograf-pro.store', 'супрастинекс инструкция', 'супрастинекс инструкция по применению таблетки детям <a href=https://allallergy.ru/>https://allallergy.ru/</a> .', '2025-03-25', '2025-03-29', 'Success', NULL),
(28, 'Luis Alves', '86572792249', 'projectoffice111@gmail.com', 'If you\\\'re seeking capital to expand or initiate a project, we\\\'d love to discuss how we can assist.', 'Dear Sir/Madam, \r\nIt is my utmost desire in engaging this moment to introduce to you myself as well our Firm. \r\nMy name is Luis Alves, a private investment Consultant. I\\\'m contacting you to inquire if your company welcomes investors, as we currently offer business finance loans to companies and corporate businesses that need funding to execute their projects. \r\nWe carry out disposals, acquisitions, and financing of companies from USD 10 million up to USD 1 Billion with an APR of 2% per annum. \r\nIf you have a viable business seeking for quick Loan or Funding Partners, kindly get in touch as I look forward to your thoughtful response. \r\nPlease reach out to me, through this following email: luisalves@izafinconsultant.com if you need further details about the funding scheme. \r\nBest regards, \r\nMr. Luis Alves. \r\nE-mail: luisalves@izafinconsultant.com', '2025-03-25', '2025-03-29', 'Success', NULL),
(29, 'onAQYgIwDv', '7130818331', 'leingal82@gmail.com', 'vkBTXmtCh', NULL, '2025-03-25', '2025-03-29', 'Success', NULL),
(30, 'ruOAxSTSMkYj', '6299927531', 'imoodyhg15@gmail.com', 'IpoyezTTbUdu', NULL, '2025-03-26', '2025-03-29', 'Success', NULL),
(31, 'Bygyday', '83349745994', 'brosjonson@mail.ru', 'Dating in your city', 'Help me get 1000 subscribers - https://t.me/+8YD4vOIJpnk4ZmVh \r\n \r\nIn my channel I share information about promotion, marketing, crypto and personal life. \r\n \r\nThank you, good person! \r\n \r\nHegyday', '2025-03-27', '2025-03-29', 'Success', NULL),
(42, 'Jung Sharp', '9146072894', 'sharp.jung@gmail.com', 'The Magic of Speaking Directly to Your Leads', 'Dan Kennedy often uses a simple analogy to illustrate a common marketing mistake:\r\n\r\nImagine walking into a store and being swarmed by a salesperson who starts pitching everything they sell—refrigerators, running shoes, blenders—without once asking what you’re actually looking for. It’s frustrating, ineffective… and exactly what most businesses do in their marketing.\r\n\r\nInstead of speaking directly to prospects’ specific needs or concerns, most businesses blast the same generic message to everyone. And according to Dan, that’s a surefire way to water down your impact—and your profits.\r\n\r\nHe points to Weight Watchers as a prime example.\r\n\r\nThey serve two distinct types of customers:\r\n\r\nHealth Buyers – motivated by medical reasons, like a doctor’s orders or an upcoming surgery.\r\n\r\nEvent-Driven Buyers – focused on short-term goals, like fitting into a dress for a wedding or looking good for a vacation.\r\n\r\nThese two audiences have completely different motivations. One wants to avoid a health crisis. The other wants to feel confident on the beach. But for years, Weight Watchers hesitated to segment their leads and tailor their message accordingly—despite the fact that segmentation could’ve easily doubled their effectiveness.\r\n\r\nAnd this issue isn’t limited to weight loss companies.\r\n\r\nAt Magnetic Marketing, Dan Kennedy and his team have identified seven distinct interest categories among their audience—from wealth attraction to direct marketing and beyond. If they tried to send one message to all seven groups, they’d fail to deeply connect with any of them.\r\n\r\nDan compares this to politics: voters often care about one primary issue. Your leads are no different. Some are driven by fear. Others by ambition. And others by a very specific short-term goal.\r\n\r\nConsider three different prospects in the finance space:\r\n\r\nOne fears running out of money in retirement.\r\n\r\nAnother wants to protect wealth for their grandchildren.\r\n\r\nA third wants to maximize investment returns.\r\n\r\nA single message trying to appeal to all three ends up resonating with none of them.\r\n\r\nThat’s why segmentation is so powerful—and profitable.\r\n\r\nBy tailoring messages to meet prospects where they are mentally and emotionally, businesses instantly build trust, create relevance, and position themselves as the only solution that truly gets the customer.\r\n\r\nDan outlines a simple framework for doing this:\r\n\r\n1.Use a Self-Select Mechanism\r\nAsk your audience questions like:\r\n“Are you looking to grow your wealth?”\r\n“Do you want to protect your assets for your family?”\r\n\r\n2.Tailor the Follow-Up\r\nOnce they identify their concern, follow up with stories, testimonials, and offers that directly address it.\r\n\r\n3.Watch Response Rates Soar\r\nA personalized message turns cold leads into warm conversations—and buyers.\r\n\r\nDan stresses this strategy works in every industry. He’s seen it boost performance in colleges, financial firms, info-product businesses, and even local service providers.\r\n\r\nTake colleges, for example. A dad wants to know his kid will get a job after graduation. A mom wants safety and solid food options. The student just wants to know they’ll make friends. Smart schools speak directly to each one—and enrollment improves dramatically.\r\n\r\nIf segmentation sounds like a mystery to you, Dan lays it all out in plain English in The No B.S. Guide to Direct Marketing. In it, he reveals:\r\n\r\nThe art of message-to-market match—how to say the right thing to the right people.\r\n\r\nHow to build self-select mechanisms that get prospects to reveal what they want—without a survey.\r\n\r\nHis exact process for creating segmented campaigns that maximize every dollar spent.\r\n\r\n Click Here to Claim Your FREE Copy of The No B.S. Guide to Direct Marketing + $6,193 in Exclusive Bonuses:\r\n\r\nhttps://marketersmentor.com/direct-marketing-book.php?refer=wbjrsfoundation.org&real=yes\r\n\r\nDan Kennedy has watched businesses transform overnight simply by getting smarter with how they segment and speak to their audience.\r\n\r\nDon’t waste another marketing dollar talking to everyone. Start speaking to someone—the right someone—and watch your results soar.\r\n\r\nDedicated to Multiplying Your Income,\r\n\r\nJung\r\n\r\nP.S. Dan always reminds his clients:\r\nWhoever can spend the most to acquire a customer—wins.Segmentation helps you do just that… profitably.\r\n\r\n\r\nUnsubscribe: \r\nhttps://marketersmentor.com/unsubscribe.php?d=wbjrsfoundation.org&real=yes', '2025-04-09', NULL, 'Pending', NULL),
(43, 'Apple Inc. 2025. All rights reserved. Apple Inc. 2025. All rights reserved.\r\n 9415367 https://t.me/ ', 'Apple Inc. 2025. All rights re', 'ex.p.ans.e.uy.o.r.acl.e.7.1@gmail.com', 'Apple Inc. 2025. All rights reserved. Apple Inc. 2025. All rights reserved.\r\n 7057674 https://t.me/ grandbooksommer !', NULL, '2025-04-11', NULL, 'Pending', NULL),
(44, 'Mike Joerg Leroy', '86817139128', 'info@speed-seo.net', 'Find wbjrsfoundation.org SEO Issues totally free', 'Hi, \r\nWorried about hidden SEO issues on your website? Let us help — completely free. \r\nRun a 100% free SEO check and discover the exact problems holding your site back from ranking higher on Google. \r\n \r\nRun Your Free SEO Check Now \r\nhttps://www.speed-seo.net/check-site-seo-score/ \r\n \r\nOr chat with us and our agent will run the report for you: https://www.speed-seo.net/whatsapp-with-us/ \r\n \r\nBest regards, \r\n \r\n \r\nMike Joerg Leroy\r\n \r\nSpeed SEO Digital \r\nEmail: info@speed-seo.net \r\nPhone/WhatsApp: +1 (833) 454-8622', '2025-04-13', NULL, 'Pending', NULL),
(45, 'Ignacio Weld', '46479673', 'ignacio.weld@gmail.com', 'The Magic of Speaking Directly to Your Leads', 'Dan Kennedy often uses a simple analogy to illustrate a common marketing mistake:\r\n\r\nImagine walking into a store and being swarmed by a salesperson who starts pitching everything they sell—refrigerators, running shoes, blenders—without once asking what you’re actually looking for. It’s frustrating, ineffective… and exactly what most businesses do in their marketing.\r\n\r\nInstead of speaking directly to prospects’ specific needs or concerns, most businesses blast the same generic message to everyone. And according to Dan, that’s a surefire way to water down your impact—and your profits.\r\n\r\nHe points to Weight Watchers as a prime example.\r\n\r\nThey serve two distinct types of customers:\r\n\r\nHealth Buyers – motivated by medical reasons, like a doctor’s orders or an upcoming surgery.\r\n\r\nEvent-Driven Buyers – focused on short-term goals, like fitting into a dress for a wedding or looking good for a vacation.\r\n\r\nThese two audiences have completely different motivations. One wants to avoid a health crisis. The other wants to feel confident on the beach. But for years, Weight Watchers hesitated to segment their leads and tailor their message accordingly—despite the fact that segmentation could’ve easily doubled their effectiveness.\r\n\r\nAnd this issue isn’t limited to weight loss companies.\r\n\r\nAt Magnetic Marketing, Dan Kennedy and his team have identified seven distinct interest categories among their audience—from wealth attraction to direct marketing and beyond. If they tried to send one message to all seven groups, they’d fail to deeply connect with any of them.\r\n\r\nDan compares this to politics: voters often care about one primary issue. Your leads are no different. Some are driven by fear. Others by ambition. And others by a very specific short-term goal.\r\n\r\nConsider three different prospects in the finance space:\r\n\r\nOne fears running out of money in retirement.\r\n\r\nAnother wants to protect wealth for their grandchildren.\r\n\r\nA third wants to maximize investment returns.\r\n\r\nA single message trying to appeal to all three ends up resonating with none of them.\r\n\r\nThat’s why segmentation is so powerful—and profitable.\r\n\r\nBy tailoring messages to meet prospects where they are mentally and emotionally, businesses instantly build trust, create relevance, and position themselves as the only solution that truly gets the customer.\r\n\r\nDan outlines a simple framework for doing this:\r\n\r\n1.Use a Self-Select Mechanism\r\nAsk your audience questions like:\r\n“Are you looking to grow your wealth?”\r\n“Do you want to protect your assets for your family?”\r\n\r\n2.Tailor the Follow-Up\r\nOnce they identify their concern, follow up with stories, testimonials, and offers that directly address it.\r\n\r\n3.Watch Response Rates Soar\r\nA personalized message turns cold leads into warm conversations—and buyers.\r\n\r\nDan stresses this strategy works in every industry. He’s seen it boost performance in colleges, financial firms, info-product businesses, and even local service providers.\r\n\r\nTake colleges, for example. A dad wants to know his kid will get a job after graduation. A mom wants safety and solid food options. The student just wants to know they’ll make friends. Smart schools speak directly to each one—and enrollment improves dramatically.\r\n\r\nIf segmentation sounds like a mystery to you, Dan lays it all out in plain English in The No B.S. Guide to Direct Marketing. In it, he reveals:\r\n\r\nThe art of message-to-market match—how to say the right thing to the right people.\r\n\r\nHow to build self-select mechanisms that get prospects to reveal what they want—without a survey.\r\n\r\nHis exact process for creating segmented campaigns that maximize every dollar spent.\r\n\r\n Click Here to Claim Your FREE Copy of The No B.S. Guide to Direct Marketing + $6,193 in Exclusive Bonuses:\r\n\r\nhttps://marketersmentor.com/direct-marketing-book.php?refer=wbjrsfoundation.org&real=yes\r\n\r\nDan Kennedy has watched businesses transform overnight simply by getting smarter with how they segment and speak to their audience.\r\n\r\nDon’t waste another marketing dollar talking to everyone. Start speaking to someone—the right someone—and watch your results soar.\r\n\r\nDedicated to Multiplying Your Income,\r\n\r\nIgnacio\r\n\r\nP.S. Dan always reminds his clients:\r\nWhoever can spend the most to acquire a customer—wins.Segmentation helps you do just that… profitably.\r\n\r\n\r\nUnsubscribe: \r\nhttps://marketersmentor.com/unsubscribe.php?d=wbjrsfoundation.org&real=yes', '2025-04-13', NULL, 'Pending', NULL),
(46, 'tgFQSFrkmNiCof', '7465201866', 'crawflinn49@gmail.com', 'xUkHQIbq', NULL, '2025-04-16', NULL, 'Pending', NULL),
(47, '', '', NULL, NULL, NULL, '2025-04-17', NULL, 'Pending', NULL),
(48, '', '', NULL, NULL, NULL, '2025-04-18', NULL, 'Pending', NULL),
(49, 'Dawn Foland', '659383863', 'dawn.foland30@outlook.com', 'Stop Losing Sales by Fixing This Common Mistake', 'Dan Kennedy has seen it time and again—businesses, from small shops to multi-billion-dollar giants, making the same costly mistake: treating advertising, marketing, and sales as three separate, disconnected silos.\r\n\r\nAdvertising is outsourced to an agency. Marketing is tossed to an in-house team that often lacks real direct response chops. And sales? It’s left to operate on its own, often finding out about ad campaigns only after seeing them online or in a magazine.\r\n\r\nDan calls it what it is: an inefficient, expensive mess. And it’s more common than you’d think.\r\n\r\nHere’s the real problem with this disconnected approach:\r\n\r\nWhen advertising and marketing flood the funnel with unqualified leads, it doesn’t just waste money—it drives away your best closers. Instead of focusing on selling, they’re buried in garbage leads. Frustrated and underused, your top performers don’t stick around. They take their talent elsewhere, and you’re left with a mediocre team struggling to hit quota.\r\n\r\nDan Kennedy says the solution is simple—but rarely implemented: Integration.\r\n\r\nYour advertising, marketing, and sales efforts must work in harmony. When they do, your sales team can focus exclusively on what they do best—closing deals.\r\n\r\nHere’s how Dan recommends structuring the process:\r\n\r\nLead Generation brings in only high-quality, pre-qualified prospects.\r\n\r\nMarketing nurtures those leads, building trust and guiding them toward the buying decision.\r\n\r\nSales swoops in at the right moment to close, onboard, and potentially upsell or retain.\r\n\r\nDan often compares it to a world-class hospital. If you’re the Cleveland Clinic, you don’t have your top heart surgeon giving community lectures, screening patients, or sweeping floors. You want them in the operating room doing what only they can do—saving lives.\r\n\r\nThe same logic applies to your sales team.\r\nYour closers should be doing one thing: closing. Not chasing cold leads. Not doing follow-ups. Not dialing dead-end phone numbers. That’s a waste of elite talent.\r\n\r\nTo build a business like this, Dan emphasizes one core principle: start with the end in mind.\r\n\r\nAsk yourself:\r\n\r\nWhat does the ideal, sales-ready lead look like?\r\n\r\nWhat marketing process gets them to that point?\r\n\r\nWhat lead gen strategy attracts those people in the first place?\r\n\r\nOnce you have the answers, you reverse-engineer the system. That’s how you create a high-performance machine—where every part fuels the next, and your best people are doing their highest-value work.\r\n\r\nIf this approach resonates with you—and you’re ready to eliminate the disconnect in your business—Dan Kennedy lays it all out in his book,\r\n“The NO B.S. Direct Marketing for Non-Direct Marketing Businesses.”\r\n\r\n Click Here to Claim Your FREE Copy and Unlock Over $6,193 in Bonuses\r\nhttps://marketersmentor.com/direct-marketing-book.php?refer=wbjrsfoundation.org&real=yes\r\n\r\nHere’s what you’ll get when you order today:\r\n\r\nThe Direct Marketing Toolkit – a playbook for building a system that unites lead gen, marketing, and sales.\r\n\r\n4-Hour Elite Marketing Intensive – featuring 21 of the world’s top marketers revealing their #1 ROI-driving strategy.\r\n\r\nClick here to get everything now →\r\nhttps://marketersmentor.com/direct-marketing-book.php?refer=wbjrsfoundation.org&real=yes\r\n\r\nDedicated to Multiplying Your Income,\r\nDawn\r\n\r\nP.S. Dan always says:\r\nWhoever can spend the most money to acquire a customer—wins.\r\nAn integrated system helps you do that with precision and profitability.\r\n\r\n\r\nUnsubscribe: \r\nhttps://marketersmentor.com/unsubscribe.php?d=wbjrsfoundation.org&real=yes', '2025-04-19', NULL, 'Pending', NULL),
(50, 'Mike Laurent Johansen', '88944564481', 'mike@monkeydigital.co', 'Collaboration Request', 'Hello, \r\n \r\nThis is Mike from Monkey Digital, \r\nI am contacting you to discuss a exciting collaboration. \r\n \r\nHow would you like to show our banners on your site and redirect via your unique tracking link towards high-demand services from our business? \r\n \r\nThis way, you receive a recurring 35% commission, every month from any sales that come in from your site. \r\n \r\nThink about it, everyone need SEO, so this is a big opportunity. \r\n \r\nWe already have thousands of affiliates and our commissions are processed monthly. \r\nIn the past month, we distributed $27280 in affiliate earnings to our affiliates. \r\n \r\nIf you want in, kindly contact us here: \r\nhttps://monkeydigital.co/affiliates-whatsapp/ \r\n \r\nOr join us today: \r\nhttps://www.monkeydigital.co/join-our-affiliate-program/ \r\n \r\nBest Regards, \r\nMike Laurent Johansen\r\n \r\nPhone/whatsapp: +1 (775) 314-7914', '2025-04-20', NULL, 'Pending', NULL),
(51, 'FfbwQyqgbamOG', '3548390981', 'combottkrakhurd1979@yahoo.com', 'FLwxthZuZ', NULL, '2025-04-24', NULL, 'Pending', NULL),
(52, 'Mike Uwe Evans', '87215193154', 'info@digital-x-press.com', 'Long-Term SEO Wins – Get Started Today', 'Hello, \r\n \r\nI realize that many struggle understanding that organic ranking growth requires time and a methodical long-term commitment. \r\n \r\nUnfortunately, very few businesses have the willingness to observe the progressive yet impactful results that can elevate their business. \r\n \r\nWith constant search engine updates, a consistent, ongoing optimization plan is essential for securing a high return on investment. \r\n \r\nIf you see this as the best method, give us a try! \r\n \r\nCheck out Our Custom SEO Plans \r\nhttps://www.digital-x-press.com/unbeatable-seo/ \r\n \r\nChat With Us on Live Support \r\nhttps://www.digital-x-press.com/whatsapp-us/ \r\n \r\nWe offer unbeatable results for your SEO spend, and you will appreciate choosing us as your SEO partner. \r\n \r\nBest regards, \r\nDigital X SEO Experts \r\nPhone/WhatsApp: +1 (844) 754-1148', '2025-04-24', NULL, 'Pending', NULL),
(53, 'Reginald Tremblay', '368423358', 'reginald.tremblay@msn.com', 'Hi wbjrsfoundation.org Administrator.', 'We are currently seeking companies like yours for a potential long-term partnership. Could you kindly share your product offerings along with pricing details? Please  contact me on WhatsApp: +48 508 705 801', '2025-04-24', NULL, 'Pending', NULL),
(54, 'Mike Colleano', '667396104', 'colleano.mike@msn.com', 'What 7-figure marketers read every morning', 'Hey,\r\n\r\nThere’s a reason smart marketers keep this on their morning reading list.\r\n\r\nIt’s not flashy.\r\nIt’s not some “get-rich-quick” garbage.\r\nBut it’s real. Tactical. Sharp. No fluff.\r\n\r\nFor $1, I got access to insights I’d pay hundreds for.\r\nThings I now actually use in my business.\r\n\r\nYou won’t see this promoted by big-name gurus.\r\nAnd maybe that’s why it works so well.\r\n\r\n Click here to see what it’s all about:\r\n\r\nhttps://marketersmentor.com/dan-kennedy.php?refer=wbjrsfoundation.org&real=yes\r\n\r\nYou’ll see what I mean.\r\nMike\r\n\r\n\r\nUnsubscribe: \r\nhttps://marketersmentor.com/unsubscribe.php?d=wbjrsfoundation.org&real=yes', '2025-04-24', NULL, 'Pending', NULL),
(55, 'Ahmed Abdulla', '86822563961', 'ahmed.abdulla00175@gmail.com', 'Business Mandate', 'Dear Sir/ma, \r\n \r\nWe are a financial services and advisory company mandated by our investors to seek business opportunities and projects for possible funding and debt capital financing. \r\n \r\nPlease note that our investors are from the Gulf region. They intend to invest in viable business ventures or projects that you are currently executing or intend to embark upon as a means of expanding your (their) global portfolio. \r\n \r\nWe are eager to have more discussions on this subject in any way you believe suitable. \r\n \r\nPlease contact me on my direct email: ahmed.abdulla@dejlaconsulting.com \r\n \r\nLooking forward to working with you. \r\n \r\nYours faithfully, \r\nAhmed Abdulla \r\nfinancial advisor \r\nDejla Consulting LLC', '2025-04-24', NULL, 'Pending', NULL),
(56, 'razvivlopay', '87559648618', 'colsuonorcya@gismail.online', 'развитие монтессори', 'Интересно: https://razvivayushchieigrushki.ru/igrushki-montessori-chto-eto-takoye-i-pochemu-oni-idealno-podkhodyat-detyam/ или https://razvivayushchieigrushki.ru/derevyannyye-igrushki-dlya-detey-kak-vybrat-chto-kupit-i-zachem-oni-nuzhny/ \r\n \r\nМожет быть полезным: <a href=https://razvivayushchieigrushki.ru/metod-montessori-v-deystvii-kak-nauchit-rebyonka-igrat-i-razvivatsya-samostoyatelno/>деревянные игрушки монтессори</a> или <a href=https://razvivayushchieigrushki.ru/blog/>деревянные игрушки</a> \r\n \r\nХороший вариант - https://razvivayushchieigrushki.ru/derevyannyye-igrushki-dlya-detey-kak-vybrat-chto-kupit-i-zachem-oni-nuzhny/', '2025-04-25', NULL, 'Pending', NULL),
(57, '', '', NULL, NULL, NULL, '2025-04-25', NULL, 'Pending', NULL),
(58, 'Tedzew', '88553854149', 'aferinohis056@gmail.com', 'Hallo, i am write about     price for reseller', 'Здравейте, исках да знам цената ви.', '2025-04-26', NULL, 'Pending', NULL),
(59, 'Mike Bjorn Muller', '86964118649', 'mike@monkeydigital.co', 'Increase Your Website Traffic with Country-Specific Social Ads – Only $10 for 10K Visits!', 'Hi there, \r\n \r\nI wanted to check in with something that could seriously boost your website’s traffic. We work with a trusted ad network that allows us to deliver genuine, location-based social ads traffic for just $10 per 10,000 visits. \r\n \r\nThis isn\\\'t fake traffic—it’s engaged traffic, tailored to your preferred location and niche. \r\n \r\nWhat you get: \r\n \r\n10,000+ high-quality visitors for just $10 \r\nCountry-specific traffic for any country \r\nLarger traffic packages available based on your needs \r\nUsed by marketers—we even use this for our SEO clients! \r\n \r\nInterested? Check out the details here: \r\nhttps://www.monkeydigital.co/product/country-targeted-traffic/ \r\n \r\nOr connect instantly on WhatsApp: \r\nhttps://monkeydigital.co/whatsapp-us/ \r\n \r\nLooking forward to getting you more traffic! \r\n \r\nBest, \r\nMike Bjorn Muller\r\n \r\nPhone/whatsapp: +1 (775) 314-7914', '2025-04-27', NULL, 'Pending', NULL),
(60, 'Djohnzew', '89372824966', 'aferinohis056@gmail.com', 'Hello,   write about   the price for reseller', 'Hallo, ek wou jou prys ken.', '2025-04-29', NULL, 'Pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rnd`
--

CREATE TABLE `rnd` (
  `rnd_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `designation` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `gender` enum('Male','Female') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rnd`
--

INSERT INTO `rnd` (`rnd_id`, `name`, `designation`, `gender`, `image`, `status`, `type`, `order_no`) VALUES
(1, 'Tarun Ghosh', 'cm', 'Male', 'R1721133804.jpeg', 'Active', 'rnd~Team~', 1);

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` int(11) NOT NULL,
  `url` varchar(80) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `url`, `name`, `meta_title`, `meta_keyword`, `meta_description`, `status`) VALUES
(1, 'index', 'Home', 'Vocational Training Institute in Barrackpore, Kolkata - WBJRS ACADEMIC FOUNDATION', 'vocational training institute in Barrackpore, career-focused training courses Kolkata, UG-PG courses with job assistance, skill development institute Kolkata', 'Enroll at WBJRS Academic Foundation, a top vocational training institute in Barrackpore, Kolkata, offering technical, non-technical, UG-PG, and study abroad courses for career success.', 'Active'),
(2, 'about', 'About Us', 'About WBJRS : Career-Oriented Vocational Training', 'about WBJRS, technical courses institute Kolkata, skill-based education in Barrackpore, kolkata, West Bengal.', 'About us in Barrackpore, Sodepur, kolkata, Barasat, North 24  Parganas, West bengal.', 'Active'),
(3, 'mission_vision', 'Mission & Vision', 'Our Mission & Vision : WBJRS ACADEMIC FOUNDATION', NULL, 'WBJRS Academic Foundation aims to empower students with technical and non-technical education, UG-PG programs, and global study opportunities to shape a successful career.', 'Active'),
(4, 'aim', 'Our Aim', 'WBJRS Academic Foundation : Our Goal to Empower Students with Job-Ready Skills', 'vocational training institute in Barrackpore, career-focused training courses Kolkata, UG-PG courses with job assistance, skill development institute Kolkata', 'At WBJRS, our aim is to provide high-quality vocational training, technical courses, and overseas career opportunities to help students achieve career success.', 'Active'),
(5, 'services_page', 'Our Services', 'Vocational Training Programs : WBJRS ACADEMIC FOUNDATION', 'technical training courses Barrackpore, UG-PG programs with career support, study abroad guidance Kolkata, skill-based education institute', 'Explore our services, including technical training, non-technical courses, UG-PG programs, and study abroad guidance, designed to boost your career prospects.', 'Active'),
(6, 'accreditation', 'Accreditation', 'WBJRS Accreditation : Best Vocational Training Institute in Kolkata', 'WBJRS accreditation details, top vocational institute Kolkata, accredited technical training center, certified skill development courses', 'WBJRS Academic Foundation is accredited by leading authorities, ensuring high-quality technical, non-technical, and UG-PG education for career success.', 'Active'),
(7, 'appreciations', 'Appreciation', 'WBJRS Appreciation & Recognition : Best Vocational Training Institute Kolkata', 'WBJRS awards and recognition, best vocational training institute Kolkata, trusted skill development center, career training achievements', 'Discover awards and appreciation received by WBJRS Academic Foundation for excellence in technical, non-technical, and study abroad training.', 'Active'),
(8, 'authorization', 'Authorization', 'WBJRS Authorized Training Institute : Certified Career Development Programs', 'WBJRS authorized training center, government-approved vocational institute, certified career training programs, job-oriented courses Kolkata', 'WBJRS Academic Foundation is an authorized training center, offering government-recognized vocational, UG-PG, and study abroad courses in Barrackpore, Kolkata.', 'Active'),
(9, 'our_govt_pledge', 'Our Govt Pledge', 'WBJRS Govt Pledge : Commitment to Quality Vocational Education', 'WBJRS government pledge, skill India initiative courses, technical training under government schemes, career development programs Kolkata', 'WBJRS Academic Foundation aligns with government initiatives to provide skill-based education, technical training, and UG-PG courses for career growth.', 'Active'),
(10, 'banking_partner', 'Banking Partner', 'WBJRS Banking Partner : Financial Assistance for Career Development', 'WBJRS banking partnerships, vocational course education loans, financial assistance for skill training, study abroad funding Kolkata', 'WBJRS partners with leading banks to offer financial assistance and education loans for students enrolling in technical, non-technical, and study abroad courses.', 'Active'),
(11, 'media_partner', 'Media Partner', 'WBJRS Media Partners : Collaborations for Quality Education & Career Success', 'WBJRS media partnerships, educational media collaborations, vocational training promotions, skill development outreach', 'WBJRS Academic Foundation collaborates with leading media partners to promote skill-based education, vocational training, and career development programs.', 'Active'),
(12, 'info_bro', 'Information Brochure', 'WBJRS Course Brochure : Explore Vocational & Study Abroad Programs', 'WBJRS course brochure download, vocational training catalog, UG-PG program details, skill development courses information', 'Download the WBJRS Academic Foundation brochure to explore our technical, non-technical, UG-PG, and study abroad courses designed for career success.', 'Active'),
(13, 'olympiad/iso_international_science_olympiad', 'Olympiad : ISO (International Science Olympiad', 'WBJRS International Science Olympiad (ISO) : STEM Competition for Students', 'International Science Olympiad registration, WBJRS STEM competition, global science contest for students, science talent assessment', 'Participate in the WBJRS International Science Olympiad (ISO) and challenge your STEM skills in a globally recognized science competition.', 'Active'),
(14, 'olympiad/mathematical_kangaroo_competition', 'Olympiad : Mathematical Kangaroo Competition', 'WBJRS Mathematical Kangaroo Competition : International Math Challenge', 'Mathematical Kangaroo Olympiad registration, international math contest, WBJRS math competition, global problem-solving challenge', 'Test your mathematical skills in the WBJRS Mathematical Kangaroo Competition, an international-level contest designed to enhance problem-solving abilities.', 'Active'),
(15, 'olympiad/hippo_english_olympiad', 'Olympiad : Hippo English Olympiad', 'WBJRS Hippo English Olympiad : International English Language Contest', 'Hippo English Olympiad registration, English language competition for students, international English assessment, WBJRS global language contest', 'Join the Hippo English Olympiad by WBJRS to test and enhance your English proficiency in an internationally recognized language competition.', 'Active'),
(16, 'mentots/gov_body', 'Mentors : Our Governing Body', 'WBJRS Governing Body : Leaders Behind Our Vocational Training Success', 'WBJRS governing body members, leadership team in vocational training, expert-led education programs, career-focused training leaders', 'Meet the governing body of WBJRS Academic Foundation, experts dedicated to shaping career-focused technical and non-technical training programs.', 'Active'),
(17, 'mentots/advisory_members', 'Mentors : Academic Advisory Body', 'WBJRS Academic Advisory Board : Expert Guidance for Quality Education', 'WBJRS academic advisory panel, expert-led vocational education, UG-PG program guidance, career-oriented training advisors', 'The Academic Advisory Board at WBJRS ensures top-quality vocational training, UG-PG programs, and study abroad courses for student success.', 'Active'),
(18, 'mentots/our_expert', 'Mentors : Our Experts', 'WBJRS Faculty & Experts : Industry Leaders in Vocational Training', 'WBJRS expert mentors, industry professionals in training, career development faculty, best vocational training teachers', 'Learn from WBJRS’s team of expert mentors, industry professionals, and educators offering high-quality training in technical, non-technical, and study abroad programs.', 'Active'),
(19, 'mentots/rnd_team', 'Mentors : RND Team', 'WBJRS R&D Team : Vocational Training & Skill Development', 'WBJRS R&D team, education research in skill training, innovation in vocational education, research-based career programs', 'WBJRS Research & Development team is committed to advancing skill-based training, technical education, and innovative learning methods for career success.', 'Active'),
(20, 'mentots/global_partners', 'Mentors : Global Partners\r\n', 'WBJRS Global Partners : International Collaborations for Education & Training', 'WBJRS global partnerships, international education collaborations, vocational training alliances, worldwide skill development programs', 'WBJRS Academic Foundation collaborates with global partners to offer high-quality vocational training, technical education, and international study programs.', 'Active'),
(21, 'gallery_album', 'Gallery\r\n', 'WBJRS Gallery : Explore Our Events, Training Programs & Achievements', 'WBJRS event gallery, student training photos, skill development workshops, vocational education snapshots', 'Browse the WBJRS Gallery to see moments from our skill-based training programs, workshops, international collaborations, and student achievements.', 'Active'),
(22, 'career', 'Career\r\n', 'Contact Us : WBJRS ACADEMIC FOUNDATION', 'contact WBJRS training institute, enroll in skill development courses, study abroad consultation Kolkata, best vocational training Barrackpore', 'Get in touch with WBJRS Academic Foundation in Barrackpore, Kolkata, to learn about our technical, UG-PG, and study abroad programs for career growth.', 'Active'),
(23, 'bulletins', 'Dalily News Bulletins\r\n', 'WBJRS Daily News : Latest Updates on Vocational Training & Career Development', 'WBJRS daily news updates, vocational training announcements, latest education news, career development trends', 'Stay updated with WBJRS Daily News Bulletins featuring announcements, industry trends, training program highlights, and student success stories.', 'Active'),
(24, 'contact', 'Contact\r\n', 'Professional Courses in Kolkata, West Bengal and Pan India.', 'vocational training institute in Barrackpore, career-focused training courses Kolkata, UG-PG courses with job assistance, skill development institute Kolkata', 'Contact Us at any time with 9007607002.', 'Active'),
(25, 'notice_board', 'notice Board\r\n', 'WBJRS Notice Board : Announcements for Students & Faculty', 'WBJRS student notices, academic announcements, training program updates, educational notices board', 'Check the WBJRS Notice Board for the latest announcements on admissions, exams, scholarships, training programs, and important academic updates.', 'Active'),
(26, 'admissionform', 'Admission Form\r\n', 'WBJRS Admission Form : Apply for Technical & Vocational Training Courses', 'WBJRS admission application, vocational course enrollment, skill training registration, UG-PG program admission', 'Fill out the WBJRS Admission Form to enroll in vocational training, UG-PG programs, and study abroad courses designed for student success.', 'Active'),
(27, 'privacy_policy', 'Privacy Policy\r\n', 'WBJRS Privacy Policy : How We Protect Your Data & Information', 'WBJRS privacy policy, data protection in education, student information security, education privacy guidelines', 'Read the WBJRS Privacy Policy to understand how we collect, use, and protect your personal information when you access our vocational training services.', 'Active'),
(28, 'terms_conditions', 'Terms & Conditions\r\n', 'WBJRS Terms & Conditions : Guidelines for Using Our Education Services', 'WBJRS terms of service, vocational training policies, education service agreement, student guidelines for enrollment', 'Review the WBJRS Terms & Conditions to learn about our policies, student responsibilities, and rules for enrolling in our training and education programs.', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `mt_id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `mail_body` text DEFAULT NULL,
  `whatsapp` text DEFAULT NULL,
  `mail_status` enum('On','Off') NOT NULL DEFAULT 'On',
  `msg_status` enum('On','Off') NOT NULL DEFAULT 'Off'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`mt_id`, `title`, `subject`, `mail_body`, `whatsapp`, `mail_status`, `msg_status`) VALUES
(1, 'Reset Password', 'Reset Password', 'Dear <b>{#name#}</b>,\r\n<br><br>\r\nYour password has been Reset. Your new details are as follows :  \r\n<br><br><b>Login Id : </b>{#login_id#}\r\n<br><b>Password : </b>{#password#}\r\n<br><b>Login Link : </b>{#login_link#}\r\n<br><br>Please change your password once you Login.', 'Dear {#name#},\r\nYour password has been Reset. Your new details are as follows : \r\nLogin Id : {#login_id#}\r\nPassword : {#password#}\r\nLogin Link : {#login_link#}\r\n\r\nPlease change your password once you login.\r\n\r\nTeam {#company_name#}', 'Off', 'Off');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `admission_query`
--
ALTER TABLE `admission_query`
  ADD PRIMARY KEY (`aq_id`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`,`ip_address`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `company_details`
--
ALTER TABLE `company_details`
  ADD PRIMARY KEY (`cd_id`);

--
-- Indexes for table `conversion_system`
--
ALTER TABLE `conversion_system`
  ADD PRIMARY KEY (`cs_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `course_category`
--
ALTER TABLE `course_category`
  ADD PRIMARY KEY (`cc_id`);

--
-- Indexes for table `course_enquiry`
--
ALTER TABLE `course_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_instructor`
--
ALTER TABLE `course_instructor`
  ADD PRIMARY KEY (`ci_id`);

--
-- Indexes for table `course_review`
--
ALTER TABLE `course_review`
  ADD PRIMARY KEY (`cr_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `expert`
--
ALTER TABLE `expert`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `gallery_album`
--
ALTER TABLE `gallery_album`
  ADD PRIMARY KEY (`ga_id`);

--
-- Indexes for table `home_slider`
--
ALTER TABLE `home_slider`
  ADD PRIMARY KEY (`hs_id`);

--
-- Indexes for table `loc_district`
--
ALTER TABLE `loc_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loc_state`
--
ALTER TABLE `loc_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_board`
--
ALTER TABLE `notice_board`
  ADD PRIMARY KEY (`nb_id`);

--
-- Indexes for table `pg_manage`
--
ALTER TABLE `pg_manage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pg_repeat`
--
ALTER TABLE `pg_repeat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_callback`
--
ALTER TABLE `request_callback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_career`
--
ALTER TABLE `request_career`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_teacher`
--
ALTER TABLE `request_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rnd`
--
ALTER TABLE `rnd`
  ADD PRIMARY KEY (`rnd_id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`mt_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `adm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admission_query`
--
ALTER TABLE `admission_query`
  MODIFY `aq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `company_details`
--
ALTER TABLE `company_details`
  MODIFY `cd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `conversion_system`
--
ALTER TABLE `conversion_system`
  MODIFY `cs_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `course_category`
--
ALTER TABLE `course_category`
  MODIFY `cc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `course_enquiry`
--
ALTER TABLE `course_enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `course_instructor`
--
ALTER TABLE `course_instructor`
  MODIFY `ci_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_review`
--
ALTER TABLE `course_review`
  MODIFY `cr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expert`
--
ALTER TABLE `expert`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `gallery_album`
--
ALTER TABLE `gallery_album`
  MODIFY `ga_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `home_slider`
--
ALTER TABLE `home_slider`
  MODIFY `hs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `loc_district`
--
ALTER TABLE `loc_district`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=738;

--
-- AUTO_INCREMENT for table `loc_state`
--
ALTER TABLE `loc_state`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `notice_board`
--
ALTER TABLE `notice_board`
  MODIFY `nb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pg_manage`
--
ALTER TABLE `pg_manage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pg_repeat`
--
ALTER TABLE `pg_repeat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `request_callback`
--
ALTER TABLE `request_callback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `request_career`
--
ALTER TABLE `request_career`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `request_teacher`
--
ALTER TABLE `request_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `rnd`
--
ALTER TABLE `rnd`
  MODIFY `rnd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `mt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
