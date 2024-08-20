-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2024 at 08:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricketapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Ahmed Irfan', 'Irfantester@dev.com', '123456'),
(2, 'Syed Shiraz Haider', 'Shiraztester@dev.com', '123456'),
(3, 'Anosh Rehan', 'Anoshtester@dev.com', '123456'),
(4, 'Huzaifa Arshad', 'Sirhuzaifatester@dev.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `cricketgoats`
--

CREATE TABLE `cricketgoats` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `country` enum('australia','afghanistan','bangladesh','india','new zealand','pakistan','south africa','sri lanka','west indies') NOT NULL,
  `type` enum('Batsmen','Bowler','All-Rounder') NOT NULL,
  `handed` enum('left-handed','right-handed') NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `biography` varchar(5000) NOT NULL,
  `for_more_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cricketgoats`
--

INSERT INTO `cricketgoats` (`id`, `name`, `image`, `country`, `type`, `handed`, `date_of_birth`, `biography`, `for_more_link`) VALUES
(1, 'Wasim Akram', 'https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_320,q_50/lsci/db/PICTURES/CMS/320400/320475.png', 'pakistan', 'Bowler', 'left-handed', '03-06-1966', 'Wasim Akram was born into a modest family in Lahore, Pakistan. He showed a keen interest in cricket from a young age and honed his skills playing in the streets of Lahore. His talent was evident early on, and he was soon spotted by selectors.\n\nDomestic Career\nAkram began his domestic cricket career with the Lahore City team. His exceptional performances, particularly with his fast bowling and ability to swing the ball both ways, quickly garnered attention. He made his mark in the domestic circuit, showcasing his potential as a future star.\n\nInternational Career\nTest Debut: June 3, 1984, against New Zealand\nODI Debut: November 31, 1984, against Sri Lanka\nLast Test: January 3, 2002, against India\nLast ODI: March 21, 2003, against England\n\nWasim Akram made his international debut in 1984, and it wasn\'t long before he established himself as one of the premier fast bowlers in the world. His ability to reverse swing the ball and bowl at high speeds made him a formidable opponent.\n\nAchievements and Records\nODI Wickets: 916 wickets in 356 matches (most in ODI history)\nTest Wickets: 916 wickets in 104 matches\nHat-Trick: First Pakistani to take a hat-trick in an ODI match\nWorld Cup: Played a crucial role in Pakistan\'s World Cup victory in 1992, including a memorable 33-ball 57 in the final against England.\nAkram was known for his exceptional control and variation in pace, which allowed him to adapt his bowling to different conditions and opposition. His skills in reverse swing and his ability to bowl in the death overs made him a match-winner in both ODIs and Tests.\n\nPost-Retirement\nAfter retiring from international cricket in 2003, Wasim Akram transitioned into coaching and commentary. He has worked with various cricket teams as a bowling coach and has been a respected commentator, providing insights into the game from his vast experience.\n\nPersonal Life\nWasim Akram has been involved in various charitable activities and has used his fame to support causes related to education and healthcare. He is also a published author and has written about his experiences and insights into the game.\n\nLegacy\nWasim Akram\'s contributions to cricket have been widely recognized and celebrated. He is often cited as one of the greatest fast bowlers in the history of the sport. His influence on the game, particularly in the art of fast bowling and reverse swing, has left a lasting legacy.', 'https://www.espncricinfo.com/cricketers/wasim-akram-43547'),
(2, 'Steve Smith', 'https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_320,q_50/lsci/db/PICTURES/CMS/316600/316609.png', 'australia', 'Batsmen', 'right-handed', '02-06-1989', 'Steve Smith was born on June 2, 1989, in Sydney, Australia. From a young age, Smith displayed an exceptional talent for cricket, which led him to pursue the sport professionally. His early cricketing years were marked by dedication and a rapidly developing skill set that would eventually make him one of the most formidable batsmen in the world.\r\n\r\nDomestic Career\r\nSteve Smith began his domestic career playing for New South Wales. His initial role in the team was that of a leg-spinner who could also bat in the lower order. However, it didn\'t take long for his batting prowess to overshadow his bowling skills. Smith\'s consistent performances in domestic cricket paved the way for his entry into the national team.\r\n\r\nInternational Career\r\nTest Cricket\r\nSteve Smith made his Test debut for Australia against Pakistan in July 2010. Initially selected for his leg-spin, his batting soon took center stage. After a few years of fluctuating performances, Smith cemented his place in the team as a top-order batsman. He rose to prominence during the 2013-14 Ashes series, where he played crucial innings and established himself as a reliable batsman.\r\n\r\nHis unorthodox technique and remarkable hand-eye coordination have made him one of the toughest batsmen to bowl to. Smith\'s ability to play long, patient innings has seen him score numerous centuries and double centuries, making him a vital asset for the Australian Test team.\r\n\r\nOne Day Internationals (ODIs) and T20 Internationals\r\nSmith\'s ODI debut came in February 2010 against the West Indies. Over the years, he has evolved into a versatile and strategic player in the limited-overs format. Known for his quick adaptation and innovative shot selection, Smith has been a crucial part of Australia\'s middle order.\r\n\r\nIn T20 Internationals, Smith\'s role has been more varied. While he may not be as dominant as in the longer formats, his experience and cricketing acumen make him an invaluable player in the shorter game.\r\n\r\nCaptaincy\r\nSteve Smith was appointed captain of the Australian Test team in 2015, following Michael Clarke\'s retirement. Under his leadership, Australia saw several memorable victories. His tenure, however, was not without controversy. In 2018, Smith was involved in a ball-tampering scandal during a Test match against South Africa, which led to a one-year ban from international cricket and a two-year ban from leadership roles.\r\n\r\nComeback and Current Status\r\nAfter serving his ban, Smith made a triumphant return to international cricket in 2019. His performance in the 2019 Ashes series in England was nothing short of spectacular, reaffirming his status as one of the best batsmen in the world. Smith continues to be a cornerstone of the Australian cricket team, contributing significantly with his experience and skill.\r\n\r\nPersonal Life\r\nOff the field, Steve Smith is known for his disciplined lifestyle and meticulous approach to the game. He married Dani Willis in 2018, and the couple is often seen sharing moments of their life on social media.\r\n\r\nLegacy\r\nSteve Smith\'s journey from a leg-spinner to one of the world\'s leading batsmen is a testament to his hard work, adaptability, and passion for cricket. His unorthodox batting style, remarkable consistency, and leadership qualities have earned him a place among the greats of the game. Despite the setbacks, Smith\'s resilience and dedication continue to inspire aspiring cricketers around the globe.\r\n\r\nStatistics (As of 2024)\r\nTest Matches: 96 matches, 8,628 runs, average 59.55, 27 centuries\r\nODI Matches: 139 matches, 4,378 runs, average 43.34, 11 centuries\r\nT20I Matches: 47 matches, 906 runs, average 27.45, 4 half-centuries\r\nSteve Smith remains a pivotal figure in international cricket, admired for his technical brilliance and tenacity on the field.', 'https://www.espncricinfo.com/cricketers/steven-smith-267192'),
(3, 'Rashid khan', 'https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_320,q_50/lsci/db/PICTURES/CMS/383200/383228.png', 'afghanistan', 'All-Rounder', 'right-handed', '20-09-1998', 'Rashid Khan was born on September 20, 1998, in Nangarhar, Afghanistan. Growing up in a country affected by conflict, Rashid\'s rise in cricket is an inspiring story of talent, resilience, and determination. From a young age, he showed a natural flair for cricket, particularly in bowling leg-spin, which would later become his trademark.\r\n\r\nDomestic Career\r\nRashid Khan\'s domestic career began with his performances in the Afghan domestic cricket circuit, where he quickly made a name for himself with his unique bowling style and ability to take crucial wickets. His domestic success caught the attention of selectors, leading to his inclusion in the national team at a very young age.\r\n\r\nInternational Career\r\nOne Day Internationals (ODIs)\r\nRashid Khan made his ODI debut for Afghanistan on October 18, 2015, against Zimbabwe. He made an immediate impact with his accurate and deceptive leg-spin bowling. Rashid\'s variations, including his googly, proved difficult for batsmen to read, earning him numerous wickets and establishing him as a key player for Afghanistan.\r\n\r\nHis breakthrough performance came in 2017, when he took 7 wickets for 18 runs against the West Indies, which was one of the best bowling performances in ODI history. This performance cemented his place as one of the premier bowlers in international cricket.\r\n\r\nTwenty20 Internationals (T20Is)\r\nRashid Khan\'s T20I debut came on October 26, 2015, against Zimbabwe. His skills in the shorter format were quickly recognized, and he became a sought-after player in various T20 leagues around the world. Rashid\'s ability to bowl economically while taking wickets made him a valuable asset in the T20 format. He has consistently been among the top wicket-takers in the ICC T20I rankings.\r\n\r\nTest Cricket\r\nRashid Khan made his Test debut for Afghanistan in June 2018 against India, in Afghanistan\'s first-ever Test match. Although the team faced a heavy defeat, Rashid\'s participation was historic for Afghan cricket. Over time, he has developed into a reliable Test bowler, adapting his skills to succeed in the longer format of the game.\r\n\r\nFranchise Cricket\r\nRashid Khan\'s talent has made him a highly sought-after player in various T20 leagues around the world, including:\r\n\r\nIndian Premier League (IPL): Rashid has been a standout performer for the Sunrisers Hyderabad since his debut in 2017. His consistent performances have made him one of the most valuable players in the league.\r\nBig Bash League (BBL): Playing for the Adelaide Strikers, Rashid has been a fan favorite and a key player for the team.\r\nCaribbean Premier League (CPL): Rashid has also showcased his skills in the CPL, further enhancing his reputation as a world-class T20 bowler.\r\nOther Leagues: He has also participated in the Pakistan Super League (PSL), Afghanistan Premier League (APL), and other T20 competitions, consistently delivering match-winning performances.\r\nLeadership\r\nIn July 2021, Rashid Khan was appointed as the T20I captain of the Afghanistan national team, a testament to his leadership qualities and cricketing acumen. However, he stepped down from the role later that year, expressing his desire to focus on his game and contribute as a player.\r\n\r\nPersonal Life\r\nRashid Khan is known for his humble and grounded personality. Despite his global success, he remains deeply connected to his roots and is an inspiration to many young cricketers in Afghanistan and around the world. Rashid is also known for his philanthropy, often involved in initiatives to support his community.\r\n\r\nLegacy\r\nRashid Khan\'s meteoric rise in international cricket has been nothing short of extraordinary. His unique bowling style, combined with his competitive spirit and ability to perform under pressure, has made him one of the most feared bowlers in the world. Rashid\'s contributions to Afghan cricket have been immense, helping to put Afghanistan on the global cricketing map.\r\n\r\nStatistics (As of 2024)\r\nODI Matches: 92 matches, 163 wickets, average 18.54, economy rate 4.16\r\nT20I Matches: 75 matches, 125 wickets, average 12.63, economy rate 6.18\r\nTest Matches: 7 matches, 34 wickets, average 23.29, economy rate 3.77\r\nRashid Khan continues to be a cornerstone of the Afghan cricket team, admired for his skill, dedication, and contributions to the sport. His journey from a young cricketer in Afghanistan to a global cricketing superstar is a testament to his hard work and passion for the game.', 'https://www.espncricinfo.com/cricketers/rashid-khan-793463'),
(4, 'Sakib Al Hasan', 'https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_320,q_50/lsci/db/PICTURES/CMS/316500/316581.png', 'bangladesh', 'All-Rounder', 'left-handed', '24-03-1987', 'bangladesh is my heart', 'https://www.espncricinfo.com/cricketers/shakib-al-hasan-56143'),
(5, 'Sachin Tendulkar', 'https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_320,q_50/lsci/db/PICTURES/CMS/316400/316486.png', 'india', 'Batsmen', 'right-handed', '24-04-1973', 'India is my heart', 'https://www.espncricinfo.com/cricketers/sachin-tendulkar-35320'),
(6, 'Brendon McCullum', 'https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_320,q_50/lsci/db/PICTURES/CMS/316500/316509.png', 'new zealand', 'All-Rounder', 'right-handed', '27-09-1981', 'new zeland is my heart.', 'https://www.espncricinfo.com/cricketers/brendon-mccullum-37737'),
(7, 'Ab de villiers', 'https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_320,q_50/lsci/db/PICTURES/CMS/316500/316555.png', 'south africa', 'Batsmen', 'right-handed', '17-02-1984', 'south africa is my heart', 'https://www.espncricinfo.com/cricketers/ab-de-villiers-44936'),
(8, 'K. Sangakkara\n\n', 'https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_320,q_50/lsci/db/PICTURES/CMS/316500/316500.png', 'sri lanka', 'All-Rounder', 'left-handed', '27-10-1977\r\n\r\n', 'sri lanka is my heart.', 'https://www.espncricinfo.com/cricketers/kumar-sangakkara-50710'),
(9, 'Brian lara', 'https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_320,q_50/lsci/db/PICTURES/CMS/321900/321985.png', 'west indies', 'Batsmen', 'left-handed', '02-06-1969', 'west indies is my heart.', 'https://www.espncricinfo.com/cricketers/brian-lara-52337');

-- --------------------------------------------------------

--
-- Table structure for table `crickettutorialcategories`
--

CREATE TABLE `crickettutorialcategories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `cat_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crickettutorialcategories`
--

INSERT INTO `crickettutorialcategories` (`cat_id`, `cat_name`, `cat_image`) VALUES
(1, 'Batting', 'https://png.pngtree.com/png-vector/20240123/ourlarge/pngtree-a-cricketer-batting-with-bet-cricket-player-png-image_11535579.png'),
(2, 'Bowling', 'https://png.pngtree.com/png-vector/20231102/ourmid/pngtree-cricket-bowler-bowling-ball-isolated-png-image_10393453.png'),
(4, 'Wicket Keeping', 'https://www.shutterstock.com/image-vector/cricket-wicketkeeper-catching-ball-including-260nw-2375868421.jpg'),
(5, 'Fielding', 'https://www.shutterstock.com/image-vector/cricket-fielding-action-illustration-eps-260nw-1268174236.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `crickettutorials`
--

CREATE TABLE `crickettutorials` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crickettutorials`
--

INSERT INTO `crickettutorials` (`id`, `cat_id`, `title`, `image`, `video`) VALUES
(1, 1, '5-minute tutorial to the Art of Big Hitting | feat. Andre Russell', 'http://cricketx.iceiy.com/Thumbnails/batting1.jpg', 'https://www.youtube.com/watch?v=NkFLF_O0e-g'),
(2, 1, 'Kevin Pietersen\'s Batting Masterclass 🏏 Best batting tips, techniques and tutorials', 'http://cricketx.iceiy.com/Thumbnails/kpbat.jpg', 'https://www.youtube.com/watch?v=5INjpGd5LMw'),
(3, 1, 'HOW TO JUDGE BALL’S LINE AND LENGTH IN BATTING | TECHNIQUE DRILLS AND TIPS | HINDI CRICKET COACHING', 'http://cricketx.iceiy.com/Thumbnails/howtojudgelinelength.jpg', 'https://www.youtube.com/watch?v=c29lO_6dins'),
(4, 1, 'Batting Masterclass with Imam-ul-Haq: The Art of Playing Long Innings 🏏💫 | PCB | MA2L', 'http://cricketx.iceiy.com/Thumbnails/battingmasterclassimamhulhaq.jpg', 'https://www.youtube.com/watch?v=JUcSNqD2l_0'),
(5, 2, 'HOW TO BOWL A YORKER I BRETT LEE TV I MASTERCLASS', 'http://cricketx.iceiy.com/Thumbnails/howtobowlyorkerbrettlee.jpg', 'https://www.youtube.com/watch?v=_HEo4JljXN4'),
(6, 2, 'Art of Fast Bowling Aao Fast Bowling Seekhen Fast Bowling Technique', 'http://cricketx.iceiy.com/Thumbnails/artoffastbowling.jpg', 'https://www.youtube.com/watch?v=7AcZ4wI9Gvs'),
(7, 2, 'James Anderson shares his swing bowling top tips | Bowling MASTERCLASS 🤩', 'http://cricketx.iceiy.com/Thumbnails/swingmasterclassjamesandreson.jpg', 'https://www.youtube.com/watch?v=QRkdRIiRgyg'),
(8, 2, 'ALL TYPES OF CRICKET BOWLING: Total 12 | [ Grip+Release ] Fast, Spin, Cutter !! RCS India', 'http://cricketx.iceiy.com/Thumbnails/alltypesofcricketbowling.jpg', 'https://www.youtube.com/watch?v=jdZrnY04ZIE&t=3s'),
(9, 4, 'WICKET KEEPING BASICS AND TECHNIQUES | MS DHONI WICKET KEEPING TIPS', 'http://cricketx.iceiy.com/Thumbnails/wicketkeepingcricketcardio.jpg', 'https://www.youtube.com/watch?v=xEiQ_-gJmek'),
(10, 4, 'Wicket-keeping masterclass by Kiran More | Mumbai Indians', 'http://cricketx.iceiy.com/Thumbnails/wicketkeepingkiranmore.jpg', 'https://www.youtube.com/watch?v=hDR_VEJiTbM'),
(11, 4, 'Sam Harper\'s Wicket Keeping Masterclass | Kookaburra Cricket', 'http://cricketx.iceiy.com/Thumbnails/wicketkeepingsamharper.jpg', 'https://www.youtube.com/watch?v=AYyddea1RSI'),
(12, 5, 'ULTIMATE Cricket Fielding GUIDE - PERFECT CRICKET FIELDING BASICS & TECHNIQUE', 'http://cricketx.iceiy.com/Thumbnails/ultimatewicketkeeping.jpg', 'https://www.youtube.com/watch?v=zKo2vy4cjdo'),
(13, 5, 'Improve your Fielding at Home || Best Fielding Drills || Long Barrier & underarm flick', 'http://cricketx.iceiy.com/Thumbnails/fieldingcricketcardio.jpg', 'https://www.youtube.com/watch?v=EV-QPTAb5wA'),
(14, 5, 'How To Field Like A Pro | Fielding Masterclass With Carl Hopkinson', 'http://cricketx.iceiy.com/Thumbnails/feildingtutorialcarlhopkinson.jpg', 'https://www.youtube.com/watch?v=JSJ6oFjnVF0');

-- --------------------------------------------------------

--
-- Table structure for table `livechannels`
--

CREATE TABLE `livechannels` (
  `id` int(11) NOT NULL,
  `channel_name` varchar(255) NOT NULL,
  `channel_image` varchar(255) NOT NULL,
  `channel_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `livechannels`
--

INSERT INTO `livechannels` (`id`, `channel_name`, `channel_image`, `channel_link`) VALUES
(1, 'Geo News', 'https://upload.wikimedia.org/wikipedia/commons/f/f7/GEO_News_logo_in_Urdu.png', 'https://live.geo.tv/'),
(2, 'PTV Sports', 'https://upload.wikimedia.org/wikipedia/en/e/e4/PTV_Sports.png', 'https://www.ptvsportstv.com.pk/live/'),
(3, 'Ten Sports', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS26nqiIYus2CDK6cRnFRzcR_7_oaXkf6J2mQ&s', 'https://www.tensportstv.com/live-ten-sports-tv/'),
(4, 'Geo Super', 'https://lh3.googleusercontent.com/proxy/gYVB6WyRUFG1hbuPOqmSlSzR6lDPdvI3VsNGL_ziXX8bn02aTXxpPIsqaftLnHR93vlMlv0HoY3EGcHFKo3-zlWsmauNgQxPnZJDcznTRaNwPbVMUAmbyYE', 'https://www.geosuper.tv/live'),
(5, 'Samaa News', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjiXwBvEv4fkfLuu3ESolIpkBtaz38aC9Wvw&s', 'https://live.samaa.tv/'),
(6, '92 News', 'https://upload.wikimedia.org/wikipedia/en/e/e1/92_News_HD_Plus_logo.png', 'https://92newshd.tv/live-tv'),
(7, 'ARY News', 'https://seeklogo.com/images/A/ary-news-logo-F2E62D53D8-seeklogo.com.png', 'https://live.arynews.tv/pk/'),
(8, 'Hum Tv', 'https://e7.pngegg.com/pngimages/75/199/png-clipart-pakistan-hum-tv-television-channel-drama-hum-television-text.png', 'https://hum.tv/live/');

-- --------------------------------------------------------

--
-- Table structure for table `newsandblogs`
--

CREATE TABLE `newsandblogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `cover_image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` enum('news','blog','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsandblogs`
--

INSERT INTO `newsandblogs` (`id`, `title`, `image`, `cover_image`, `description`, `type`) VALUES
(1, 'India finally won the world cup after 17 years', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSvdCcbhz9LFEtTcvk0_M0mTAwg0NoVcVy5A&s', 'https://img1.hscicdn.com/image/upload/f_auto,t_ds_wide_w_960,q_50/lsci/db/PICTURES/CMS/384000/384057.6.jpg', 'After 17 long years, India has once again risen to the pinnacle of cricketing glory, reclaiming the World Cup in a thrilling display of skill, courage, and determination. This victory is more than just a win; it’s the culmination of years of hard work, dedication, and the dreams of millions of fans who never stopped believing. The journey to this moment has been filled with challenges, but the unwavering spirit of our team has turned those challenges into stepping stones to greatness.\r\n\r\nAs the final ball was bowled and the winning runs were scored, a wave of euphoria swept across the nation. From the streets of small towns to the bustling cities, the roar of celebration echoed far and wide. The tricolor fluttered proudly in the breeze, a symbol of the unity and passion that this sport brings to our diverse country. Each player, every fan, and all those who stood by the team in moments of triumph and trial, can now bask in the glory of this well-deserved victory.\r\n\r\nThis World Cup triumph is a reminder of the power of perseverance and belief. It’s a story of a team that carried the hopes of a nation on their shoulders and delivered when it mattered the most. For 17 years, the dream remained alive, and today, that dream has been realized in the most spectacular fashion. India, once again, is the champion of the cricketing world, and this victory will be cherished in our hearts forever.', 'news'),
(2, 'Finn Allen set for two-year Perth Scorchers deal', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZTeuRcY0x5sgNgEMjxlesyzLtVxjora8avw&s', 'https://img1.hscicdn.com/image/upload/f_auto,t_ds_wide_w_1280,q_70/lsci/db/PICTURES/CMS/374100/374130.6.jpg', 'New Zealand opener Finn Allen will join Perth Scorchers on a two-year deal after turning down a national central contract.\r\n\r\nIt was announced earlier this week that Allen had become the latest New Zealand player to opt out of a contract to open up franchise opportunities, and ESPNcricinfo understands the Scorchers move will be confirmed in the coming days.\r\n\r\n\r\nScorchers were one of only three BBL clubs - alongside Adelaide Strikers and Sydney Sixers - who had yet to announce a pre-draft signing under the new mechanism that allows multi-year deals, even as West Indies left-arm spinner Akeal Hosein has been linked to Sixers.\r\n\r\n\r\nAllen had originally been included in the NZC contract list announced last month, and it\'s understood the Scorchers interest only came recently. It means he won\'t be available for the white-ball series against Sri Lanka which starts in late December.\r\n\r\n\r\nAllen\'s T20 strike rate of 168.60 is the second highest for any batter with at least 3000 runs in the format, behind only Andre Russell. At the international level, Allen has scored two T20I centuries, while he also made a significant impact against Australia at the 2022 T20 World Cup, when he flayed 42 off 16 balls against Mitchell Starc, Josh Hazlewood and Pat Cummins to set the tone for New Zealand\'s huge victory. But Allen had a lean T20 World Cup in the West Indies and USA earlier this year, with just 35 runs in four innings.\r\n\r\nHe will be the third New Zealand player confirmed for the BBL, after Colin Munro (Brisbane Heat) and Tim Seifert (Melbourne Renegades). Seifert turned down a domestic contract with Northern Districts, while Munro officially retired from international cricket earlier this year after missing the T20 World Cup squad.\r\n\r\nScorchers struggled to fill the opening role vacated by Cameron Bancroft\'s move to Sydney Thunder last season. England\'s Zak Crawley made two half-centuries in six innings, but there were slim pickings for the others used, including an unsuccessful move of promoting Cooper Connolly.\r\n\r\nSigning Allen ahead of the draft means it is uncertain if Scorchers will bring Laurie Evans back after he was outstanding last season, with 292 runs at 58.40 and a strike rate of 189.61, before leaving for the ILT20. It\'s understood Scorchers did explore the possibility of Evans being the pre-draft signing, but availability was an issue with him having an ongoing deal in the UAE with Abu Dhabi Knight Riders.\r\n\r\nScorchers could still take Evans in the draft - and would have retention rights for him - but he is expected to be limited to around seven matches. The ILT20 has advanced next year due to the Champions Trophy taking place in February. It means a much greater overlap with the BBL, while the SA20 is also taking place at the same time.\r\n\r\nThe BBL draft will be held on September 1, and Scorchers have picks 7, 15, 18 and 31.', 'news'),
(3, 'Zimbabwe express interest in hosting Women\'s T20 World Cup 2024', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGxhOTOd7dhAhUwklHZb5cAD6hOW_zu1EoRg&s', 'https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1280,q_70/lsci/db/PICTURES/CMS/362600/362676.jpg', 'Tournament was due to be held in Bangladesh in October but anti-government protests have meant the venue is likely to be changed\r\n\r\nZimbabwe have emerged as one of two options being considered to host the Women\'s T20 World Cup this year. The tournament, which is due to start on October 3 and was scheduled for Bangladesh, is likely to be moved after anti-government agitations prompted security concerns. The UAE is the other place being considered, after India ruled themselves out on Thursday. It is understood that a decision is expected to be made by the ICC board on Tuesday, August 20.\r\n\r\nZimbabwe\'s interest, confirmed to ESPNcricinfo, comes on the back of intentions to promote themselves as a destination for big cricket after successfully hosting the last two ODI World Cup Qualifiers (in 2018 and 2023). The country last hosted a World Cup in 2003, along with South Africa and Kenya.\r\n\r\n\r\nSince then, Zimbabwe spent several years isolated from major events, which included the Robert Mugabe regime cutting itself off from much of the world, hyperinflation, a self-imposed Test hiatus between 2005 and 2011, and the men\'s team failing to qualify for two successive ODI World Cups and two of the last three T20 World Cups. The women\'s team has never competed at a World Cup (neither have the UAE\'s) and will not feature at this year\'s event either, but Zimbabwe are eager to be neutral hosts of the tournament.\r\n\r\nZimbabwe will co-host the men\'s Under-19 World Cup with Namibia in 2026 and the ODI World Cup with South Africa and Namibia in 2027. By then, the country will have two more international grounds with Zimbabwe Cricket and local government authorities working together to build multi-purpose facilities in Victoria Falls and Mutare.\r\n\r\nFor now, Zimbabwe can offer Harare Sports Club (which also has newly installed floodlights) and Queens Sports Club in Bulawayo as venues for the 2024 Women\'s T20 World Cup. These grounds also hosted all the televised matches in the 2023 World Cup Qualifiers, with streaming games held at Takashinga Sports Club and Bulawayo Athletic Club.\r\n\r\nThe weather in Zimbabwe is expected to be a major selling point, with the country entering summer in October and minimal rain expected. India rejected the offer to host because the country will be experiencing the last of the monsoon. Sri Lanka is also understood to have fallen out of contention for weather-related reasons.\r\n\r\nCrucially, Zimbabwe will be able to generate fairly good crowds, including school children at venues, where the maximum capacity is 10,000. A concern with the UAE as a venue is the lack of spectators in stadiums that can seat over 20,000 people. Zimbabwe are also hopeful that the relatively lower cost of hosting a tournament in their country compared to the UAE will give them an advantage when the final decision is made.', 'news'),
(4, 'Pakistan to play Karachi Test against Bangladesh without spectators', 'https://img1.hscicdn.com/image/upload/f_auto,t_ds_wide_w_1280,q_70/lsci/db/PICTURES/CMS/373100/373148.6.jpg', 'https://img1.hscicdn.com/image/upload/f_auto,t_ds_wide_w_1280,q_70/lsci/db/PICTURES/CMS/386100/386113.6.jpg', '14-Aug-2024\r\n\r\nThe decision was taken by the PCB because on ongoing construction work at the National Stadium\r\n\r\nThe second Test between Pakistan and Bangladesh in Karachi from August 30 to September 3 will be played without the presence of spectators because of ongoing construction work at the National Stadium\r\n\r\nThe development is part of an upgrade as the PCB renovates its venues ahead of the 2025 Champions Trophy in February-March. The Gaddafi Stadium in Lahore is also undergoing an upgrade ahead of Pakistan\'s first ICC tournament since 1996, when they co-hosted the 1996 World Cup with India and Sri Lanka, which rules it out as a venue until February 2025.\r\n\r\n\r\nESPNcricinfo understands a decision was taken to keep the Test in Karachi because the PCB was keen on spreading their seven home Tests, ODIs and domestic cricket across three venues in Karachi, Multan and Rawalpindi. Multan, which was the only other option, is slated to host Pakistan\'s first Test against England from October 7. And with various payments having already been made, for hotels, flights and security arrangements, moving to another venue at late notice would\'ve incurred losses on a series that is already not expected to be a lucrative one.\r\n\r\nThere is no change in plans for the England Test scheduled in Karachi from October 15, with spectators expected to be in attendance.\r\n\r\nCalling it a \"difficult decision\", the PCB has suspended ticket sales for the first Test between Pakistan and Bangladesh in Karachi with immediate effect. The board had advertised sales for tickets to the Karachi Test as recently as two days ago.\r\n\r\n\"The health and safety of our fans is our utmost priority,\" the board said in a statement. \"After careful consideration of all available options, we have decided that the safest course of action is to hold the second Test in front of an empty stadium.\r\n\r\n\"While we deeply regret any inconvenience this may cause, we want to assure our valued fans that the ongoing stadium upgrades are aimed at enhancing their experience.\"\r\n\r\nThe Bangladesh squad landed in Lahore four days earlier than planned to begin training after the players\' preparation had been disrupted due to the ongoing political unrest in Bangladesh. The team will train for three days at Gaddafi Stadium before travelling to Rawalpindi for the first Test that begins on August 21.\r\n\r\nThe departure ahead of schedule was possible after an invitation from the PCB to the BCB to ensure the Bangladesh players had \"adequate and fair training opportunities\" ahead of the Tests.\r\n\r\nBangladesh previous bilateral tour of Pakistan was in 2020, but that trip was cut short because of the Covid-19 pandemic.', 'news'),
(5, 'SA20 2025: What the squads look like ahead of the auction', 'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202408/sunrisers-eastern-cape-team-072703477-1x1.jpg?VersionId=fR9SUdSphInHW594R3912GOtn8LFlCvo', 'https://img1.hscicdn.com/image/upload/f_auto,t_ds_wide_w_1280,q_70/lsci/db/PICTURES/CMS/375700/375776.6.jpg', '16-Aug-2024\r\n\r\nThe squads will be completed at the auction in Cape Town on October 1\r\nThe six SA20 teams have completed their pre-signings and retentions ahead of the third season of the tournament, to be played from January 9 to February 8 next year. With more big-ticket names joining the teams, Graeme Smith, the league commissioner, feels \"the hard work that the league and franchises have put in to create a world-class experience has paid off\".\r\n\r\nAmong the stars to have signed up for what Smith called \"one of the Tier 1 franchise leagues on the global circuit\" are Joe Root, Dinesh Karthik, Ben Stokes, Kane Williamson, Trent Boult, Rashid Khan, Devon Conway, Azmatullah Omarzai, Jonny Bairstow and Rahmanullah Gurbaz.\r\n\r\n\r\n\"To have the calibre of international players joining local heroes like Aiden [Markram], KG [Kagiso Rabada] and Heinrich [Klaasen] sets up an explosive season,\" Smith said in a press statement. \"We are also incredibly proud of all the domestic players who have been retained by the teams, including the majority of the rookies who have been incorporated as fully-contracted players for Season 3.\"\r\n\r\nAs things stand, the teams have between 14 and 17 players on their rosters, and the squads will be completed at the auction in Cape Town on October 1. Each team can have a maximum of 19 players, including one wildcard and one rookie player; of the other 17, a minimum of ten have to be South African, and a maximum of seven can be from overseas.\r\n\r\nA CSA statement added, \"Each franchise will also need to select their Season 3 Rookie, while three of the franchises still have a wildcard to announce before December 30.\" The schedule of matches will be announced on a later date.\r\n\r\nSA20 2025 squads\r\n\r\nDurban\'s Super Giants: Brandon King, Quinton De Kock, Naveen ul Haq, Kane Williamson, Chris Woakes, Prenelan Subrayen, Dwaine Pretorius, Keshav Maharaj, Noor Ahmed, Heinrich Klaasen, Jon-Jon Smuts, Wiaan Mulder, Junior Dala, Bryce Parsons, Matthew Breetzke, Jason Smith, Marcus Stoinis\r\n\r\nJoburg Super Kings: Faf Du Plessis, Moeen Ali, Jonny Bairstow, Maheesh Theekshana, Devon Conway, Gerald Coetzee, David Wiese, Leus Du Plooy, Lizaad Williams, Nandre Burger, Donavon Ferreira, Imran Tahir, Sibonelo Makhanya, Tabraiz Shamsi\r\n\r\nMI Cape Town: Rashid Khan, Ben Stokes, Kagiso Rabada, Trent Boult, Azmatullah Omarzai, Dewald Brevis, Ryan Rickelton, George Linde, Nuwan Thushara, Connor Esterhuizen, Delano Potgieter, Rassie Van Der Dussen, Thomas Kaber, Chris Benjamin\r\n\r\nPretoria Capitals: Anrich Nortje, Jimmy Neesham, Will Jacks, Rahmanullah Gurbaz, Will Smeed, Migael Pretorius, Rilee Rossouw, Eathan Bosch, Wayne Parnell, Senuran Muthusamy, Kyle Verreynne, Daryn Dupavillon, Steve Stolk, Tiaan van Vuuren\r\n\r\nPaarl Royals: David Miller, Mujeeb Ur-Rahman, Sam Hain, Joe Root, Dinesh Karthik, Kwena Maphaka, Lhuan-dre Pretorius, Bjorn Fortuin, Lungi Ngidi, Mitchell Van Buuren, Keith Dudgeon, Nqaba Peter, Andile Phehlukwayo, Codi Yusuf, John Turner, Dayyaan Galiem, Jacob Bethell\r\n\r\nSunrisers Eastern Cape: Aiden Markram, Zak Crawley, Roelof van der Merwe, Liam Dawson, Ottneil Baartman, Marco Jansen, Beyers Swanepoel, Caleb Seleka, Tristan Stubbs, Jordan Hermann, Patrick Kruger, Craig Overton, Tom Abell, Simon Harmer, Andile Simelane, David Bedingham', 'news'),
(6, 'BCCI rejects ICC\'s offer to host Women\'s T20 World Cup', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm9jlBSpqrvtfeZiTV5_BUm_62wkzLOyKaB2GatAP3mNXR-I2EJv0tyRCFH4p8eKWqekg&usqp=CAU', 'https://img1.hscicdn.com/image/upload/f_auto,t_ds_wide_w_1280,q_70/lsci/db/PICTURES/CMS/355800/355845.6.jpg', '15-Aug-2024\r\n\r\nSecretary Jay Shah cites monsoon and their hosting of next year\'s World Cup as the reasons\r\nThe BCCI has \"categorically said no\" to the ICC\'s offer to host the upcoming Women\'s T20 World Cup in October, their secretary Jay Shah has said. It is understood the ICC is likely to take the final call on August 20. India ruling themselves out as hosts leaves Sri Lanka and UAE as the possible alternatives for the tournament slated to be held from October 3-20.\r\n\r\n\"They [ICC] have asked us if we would conduct the World Cup. I have categorically said no,\" Shah told Times of India. \"We\'re in the monsoon and on top of that we will host the Women\'s ODI World Cup next year. I don\'t want to give any kind of signals that I want to hold consecutive World Cups.\"\r\n\r\n\r\nRelated\r\nStory Image\r\nZimbabwe express interest in hosting Women\'s T20 World Cup 2024\r\n\r\nStory Image\r\nBangladesh turmoil: ICC mulls back-up options to host women\'s T20 World Cup\r\n\r\nThe ICC is mulling a shift ever since Bangladesh has been rocked by violence and security challenges in the aftermath of anti-government agitations leading to several deaths and the dethroning of the Sheikh Hasina government.\r\n\r\nAn ICC official said earlier this week that the situation in Bangladesh was being monitored and all options had been kept open. \"The ICC is closely monitoring developments in co-ordination with the Bangladesh Cricket Board [BCB], their security agencies and our own independent security consultants,\" an ICC statement said. \"Our priority is the safety and well-being of all participants.\"\r\n\r\nWhile the new interim government in Bangladesh is making a last-ditch attempt to salvage the tournament, strong travel advisories issued by the governments of a number of participating teams, including England, Australia and India, are one of the biggest barriers to the Bangladesh Cricket Board (BCB).\r\n\r\nSecurity challenges aside, the BCB is also amid a crisis, with their president and the former sports minister Nazmul Hassan effectively out of office since the fall of the Awami League government on August 5. Several board directors, who have direct or indirect political connections, have also been incommunicado.\r\n\r\nThe Bangladesh men\'s Test team is currently on tour in Pakistan for a two-match series. They arrived in the country early after training was hampered in Bangladesh due to the protests. They\'re also slated to tour India next month for two Tests and three T20Is.\r\n\r\n\"We\'ve not spoken to them (the Bangladesh authorities),\" Shah said. \"A new government has taken charge there. They might reach out to us or else I will reach out to them. The Bangladesh series is very important to us.\"', 'news'),
(7, 'We weren’t brave enough: Rohit Sharma', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCzuBOf6KGqLa-WNAaK1l75ZQqUZgjfyWTNg&s', 'https://revsportz.in/wp-content/uploads/2024/08/images-15.jpeg', '7-Augus-2024\r\n\r\nSri Lanka scripted history as they beat India in a bilateral series after 27 years. \r\n\r\nShamik Chakrabarty in Colombo\r\n\r\nAt the stadium entrance, a local fan spoke about his love for Virat Kohli. Sporting a No. 18 shirt, he made a bold prediction about his hero scoring a hundred in the third ODI. If that would mean a defeat for Sri Lanka, he wouldn’t mind. The fan must have left the ground heartbroken.\r\n\r\nThe second ball that Kohli faced, from medium-pacer Asitha Fernando, flew off a thick outside edge and just wide of backward point to the boundary. He looked a tad uncertain but gradually settled down. The way Kohli opened the face of the bat at the last minute against another Fernando delivery for a four to the fine third boundary was wonderful. A lofted drive to the mid-wicket fence followed.\r\n\r\nAs long as Kohli and Rohit Sharma were at the crease, India looked comfortable. Once again, as the skipper got out, trying to slog-sweep Dunith Wellalage and getting a bottom edge to the ‘keeper, the tourists became jittery. Rishabh Pant was making a comeback to the ODI side after a gap of almost two years. Although he started with a four against Wellalage, the southpaw paid the price for committing himself a little too early against Maheesh Theekshana and getting out stumped in the process. At 63/3, India were suddenly under pressure, chasing 249 for victory. The onus fell on Kohli.\r\n\r\nBut Kohli perished to Wellalage, playing down the wrong line to an arm ball. He reviewed, but it was a stonewall LBW. He finished the three-match series with 58 runs at an average of 19.33. Just three games are a small sample size, but somehow the great batter has become inconsistent of late.\r\n\r\nIn the second ODI also, Kohli got out playing down the wrong line, as a Jeffrey Vandersay leg-break sneak past the bat. He was out leg-before in the first game as well.\r\n\r\nIt would be improper to say that the 35-year-old is in decline. Only about a month ago, he scored 76 off 59 balls in the T20 World Cup final against South Africa to win the Player of the Match award. Then again, that was an innings in isolation. Until the final, he wasn’t hitting his straps.\r\n\r\nAfter winning 10 ODI rubbers on the spin against Sri Lanka, India lost one to the islanders and it would be wrong to single out Kohli for the failure. Apart from Rohit, India failed here as a batting unit. To be fair, the Sri Lankan spinners exposed India’s batting vulnerability on turning tracks. The tourists lost 27 wickets to spin in the series.\r\n\r\n“Batting-wise, we weren’t smart enough, we weren’t brave enough,” Rohit said at the post-match press conference. “It’s all about individual plans in such conditions. We have to be a little careful in terms of choosing the personnel.”\r\n\r\nComing back to the game, some of the dismissals were poor. Axar Patel misjudged the length to be castled by Wellalage. Shreyas Iyer departed in the same over, misreading the turn. Debutant Riyan Parag shouldered arm to a Vandersay delivery that was angling into the stumps. All said and done, however, Kohli is seen as a match-winner. India banked on him in tough conditions, in a must-win game.\r\n\r\nHe was India’s highest run-getter — 765 runs in 11 matches — in last year’s World Cup. That was his last 50-over outing before this series. He can’t be suddenly losing his mojo. Maybe, Kohli and the Indian team suffered from a withdrawal syndrome after the high of the T20 World Cup. It can happen in a relatively low-key series, coming from a high-octane affair. Gautam Gambhir and his support staff will have to ensure that this is just a one-off.', 'blog');

-- --------------------------------------------------------

--
-- Table structure for table `thumbnails`
--

CREATE TABLE `thumbnails` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thumbnails`
--

INSERT INTO `thumbnails` (`id`, `title`, `thumbnail`) VALUES
(1, 'Splash', 'Thumbnails/splashscreenlogo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cricketgoats`
--
ALTER TABLE `cricketgoats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crickettutorialcategories`
--
ALTER TABLE `crickettutorialcategories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `crickettutorials`
--
ALTER TABLE `crickettutorials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `livechannels`
--
ALTER TABLE `livechannels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsandblogs`
--
ALTER TABLE `newsandblogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thumbnails`
--
ALTER TABLE `thumbnails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cricketgoats`
--
ALTER TABLE `cricketgoats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `crickettutorialcategories`
--
ALTER TABLE `crickettutorialcategories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crickettutorials`
--
ALTER TABLE `crickettutorials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `livechannels`
--
ALTER TABLE `livechannels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `newsandblogs`
--
ALTER TABLE `newsandblogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `thumbnails`
--
ALTER TABLE `thumbnails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `crickettutorials`
--
ALTER TABLE `crickettutorials`
  ADD CONSTRAINT `cat_id` FOREIGN KEY (`cat_id`) REFERENCES `crickettutorialcategories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
