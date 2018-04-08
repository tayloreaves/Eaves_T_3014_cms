-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 08, 2018 at 08:01 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL,
  `genre_name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`) VALUES
(1, 'dunkirk.jpeg', 'Dunkirk', '2017', '107 minutes', 'Acclaimed auteur Christopher Nolan directs this World War II thriller about the evacuation of Allied troops from the French city of Dunkirk before Nazi forces can take hold. Tom Hardy, Kenneth Branagh and Mark Rylance co-star, with longtime Nolan collaborator Hans Zimmer providing the score.'),
(2, 'junglebook.jpeg', 'The Jungle Book', '2016', '111 minutes', 'Mowgli, a man-cub raised in the jungle by a family of wolves, embarks on a captivating journey of self-discovery when he\'s forced to abandon the only home he\'s ever known.'),
(3, 'lovesimon.jpeg', 'Love, Simon', '2018', '109 minutes', 'Everyone deserves a great love story. But for seventeen-year old Simon Spier it\'s a little more complicated. He\'s yet to tell his family or friends he\'s gay and he doesn\'t actually know the identity of the anonymous classmate he\'s fallen for online. Resolving both issues proves hilarious, terrifying and life changing. Directed by Greg Berlanti , written by Isaac Aptaker & Elizabeth Berger, and based on Becky Albertallis acclaimed novel, LOVE, SIMON is a funny and heartfelt coming of age story about the thrilling ride of finding yourself and falling in love.'),
(4, 'blackpanther.jpeg', 'Black Panther', '2018', '135 minutes', 'Black Panther follows TChalla who, after the events of Captain America: Civil War, returns home to the isolated, technologically advanced African nation of Wakanda to take his place as King. However, when an old enemy reappears on the radar, TChallas mettle as King and Black Panther is tested when he is drawn into a conflict that puts the entire fate of Wakanda and the world at risk.'),
(8, 'quietplace.jpeg', 'A Quiet Place', '2018', '90 minutes', 'In the modern horror thriller A QUIET PLACE, a family of four must navigate their lives in silence after mysterious creatures that hunt by sound threaten their survival. If they hear you, they hunt you.'),
(9, 'fatherfigures.jpeg', 'Father Figures', '2017', '113 minutes', 'Two brothers (Owen Wilson and Ed Helms) hit the road to find their long-lost dad after they learn that their mom has been lying to them about his death. This comedy was directed by Lawrence Sher.'),
(10, 'balloons.jpeg', '6 Balloons', '2018', '75 minutes', 'Over the course of one night, a woman drives across LA with her heroin addict brother in search of a detox center, with his two year old daughter in tow.'),
(11, 'marleyme.jpeg', 'Marley and Me', '2008', '115 minutes', 'As the snow falls on their wedding night, newlyweds John and Jenny Grogan decide to leave behind the harsh winters of Michigan and head south to begin their new lives in West Palm Beach, Fla. They obtain jobs as journalists at competing local newspapers, buy their first home, and begin to make their way through the challenges of a new marriage, new careers and, possibly, the life changing decision to start a family. Unsure of his preparedness for raising children, John confesses his fears to his friend and fellow journalist Sebastian, who comes up with the perfect solution... John should get Jenny a puppy. The Grogans adopt the cute, 12 pound yellow Labrador, who in no time at all, grows into a 100 pound steamroller of unbridled energy that turns the Grogan home into a disaster area. He flunks obedience school, chews off drywall, takes a bite out of the sofa, overturns garbage cans, steals a Thanksgiving turkey, consumes pillows and flowers, drinks toilet water, and chases the UPS guy. Even a newly purchased, expensive necklace is not safe from Marley\'s voracious antics. Amidst the mayhem he generates through the years, Marley sees the Grogans through the ups and downs of family life, through job and home changes, and most of all, through the myriad challenges of a growing family. As John and Jenny come to realize, Marley, the worlds worst dog somehow brings out the best in them.'),
(12, 'millers.jpeg', 'We are the Millers', '2013', '110 minutes', 'David Burke is a smalltime pot dealer whose clientele includes chefs and soccer moms, but no kids after all, he has his scruples. So what could go wrong... Plenty. Preferring to keep a low profile for obvious reasons, he learns the hard way that no good deed goes unpunished when he tries to help out some local teens and winds up getting jumped by a trio of gutter punks. Stealing his stash and his cash, they leave him in major debt to his supplier, Brad. In order to wipe the slate clean and maintain a clean bill of health David must now become a big time drug smuggler by bringing Brads latest shipment in from Mexico. Twisting the arms of his neighbors, cynical stripper Rose and wannabe customer Kenny, and the tatted and pierced streetwise teen Casey, he devises a foolproof plan. One fake wife, two pretend kids and a huge, shiny RV later, the Millers are headed south of the border for a Fourth of July weekend that is sure to end with a bang.'),
(13, 'bucketlist.jpeg', 'The Bucket List', '2007', '97 minutes', 'Jack Nicholson and Morgan Freeman star as two terminally ill cancer patients who decide to break out of the hospital and live their last days to the fullest. Edward Cole is a corporate billionaire who is currently sharing a hospital room with bluecollar mechanic Carter Chambers. Though initially the pair seems to have nothing in common, conversation gradually reveals that both men have a long list of goals they wish to accomplish before they kick the bucket, and an unrealized desire to discover what kind of men they really are. But one cannot accomplish such lofty objectives from the confines of a hospital bed, so now, in order to live their lives to the absolute fullest, Edward and Carter will have to make a break for it. '),
(14, 'privateryan.jpeg', 'Saving Private Ryan', '1998', '169 minutes', 'The story opens with a prologue in which a veteran brings his family to the American cemetery at Normandy, and a flashback then joins Capt. John Miller and GIs in a landing craft making the June 6, 1944, approach to Omaha Beach to face devastating German artillery fire. This mass slaughter of American soldiers is depicted in a compelling, unforgettable 24 minute sequence. Millers men slowly move forward to finally take a concrete pillbox. On the beach littered with bodies is one with the name Ryan stenciled on his backpack. Army Chief of Staff Gen. George C. Marshall, learning that three Ryan brothers from the same family have all been killed in a single week, requests that the surviving brother, Pvt. James Ryan, be located and brought back to the United States. Capt. Miller gets the assignment, and he chooses a translator, Cpl. Upham, skilled in language but not in combat, to join his squad of righthand man Sgt. Horvath, plus privates Mellish, Medic Wade, cynical Reiben from Brooklyn, Italian American Caparzo, and religious Southerner Jackson, an ace sharpshooter who calls on the Lord while taking aim. Having previously experienced action in Italy and North Africa, the close knit squad sets out through areas still thick with Nazis. After they lose one man in a skirmish at a bombed village, some in the group begin to question the logic of losing more lives to save a single soldier. The films historical consultant is Stephen E. Ambrose, and the incident is based on a true occurance in Ambroses 1994 bestseller DDay.'),
(15, 'forestgump.jpeg', 'Forest Gump', '1994', '142 minutes', 'Stupid is as stupid does, says Forrest Gump as he discusses his relative level of intelligence with a stranger while waiting for a bus. Despite his subnormal IQ, Gump leads a truly charmed life, with a ringside seat for many of the most memorable events of the second half of the 20th century. Entirely without trying, Forrest teaches Elvis Presley to dance, becomes a football star, meets John F. Kennedy, serves with honor in Vietnam, meets Lyndon Johnson, speaks at an anti war rally at the Washington Monument, hangs out with the Yippies, defeats the Chinese national team in table tennis, meets Richard Nixon, discovers the break in at the Watergate, opens a profitable shrimping business, becomes an original investor in Apple Computers, and decides to run back and forth across the country for several years. Meanwhile, as the remarkable parade of his life goes by, Forrest never forgets Jenny, the girl he loved as a boy, who makes her own journey through the turbulence of the 1960s and 1970s that is far more troubled than the path Forrest happens upon.'),
(16, 'blindside.jpeg', 'The Blind Side', '2009', '129 minutes', 'Taken in by a well to do family and offered a second chance at life, a homeless teen grows to become the star athlete projected to be the first pick at the NFL draft in this sports themed comedy drama inspired by author Michael Lewis bestseller The Blind Side, Evolution of a Game. Michael Oher was living on the streets when he was welcomed into the home of a conservative suburban family, but over time he matured into a talented athlete. As the NFL draft approaches, fans and sports radio personalities alike speculate that Oher will be the hottest pick of the year. '),
(17, 'crash.jpeg', 'Crash', '2004', '113 minutes', 'Issues of race and gender cause a group of strangers in Los Angeles to physically and emotionally collide in this drama. Graham is a police detective whose brother is a street criminal, and it hurts him to know his mother cares more about his brother than him. Grahams partner is Ria, who is also his girlfriend, though she has begun to bristle at his emotional distance, as well as his occasional insensitivity over the fact he is African American and she\'s Hispanic. Rick is an L.A. district attorney whose wife, Jean, makes little secret of her fear and hatred of people unlike herself. Jeans worst imaginings about people of color are confirmed when her SUV is carjacked by two African American men, who dislikes white people as much as Jean hates blacks, and Peter, who is more open minded. Cameron is a well to do African American television producer with a beautiful wife, Christine. While coming home from a party, Cameron and Christine are pulled over by Officer Ryan, who subjects them to a humiliating interrogation while his new partner, Officer Hansen, looks on. Daniel is a hard working locksmith and dedicated father who discovers that his looks do not lead many of his customers to trust him. And Farhad is a Middle Eastern shopkeeper who is so constantly threatened in the wake of the 911 attacks that he decided he needs a gun to defend his family.'),
(18, 'definitelymaybe.jpeg', 'Definitely, Maybe', '2008', '112 minutes', 'A political consultant in the midst of a bitter divorce attempts to delicately divulge the truth about his past relationships to his curious young daughter, who simply will not stop asking questions until she is satisfied with all the answers. Maya is heartbroken to see her parents splitting up, but she is determined to find out precisely how it was that mom and dad came together in the first place. When Maya starts questioning her father Will about his life before marriage, dads memories soon drift back to the time when, as a naive Wisconsin native and aspiring politician hoping to work on the presidential election, he first arrived in New York City. As Will gradually became savvy to the ways of the big city, he gradually developed romantic relationships with three very different women. Emily was the girl next door that he could always depend on, apolitical April was the best friend and confidante who was always there to listen, and free spirited journalist Summer was both beautiful and ambitious. In order to prevent his perceptive little girl from predicting the outcome before his story is told, Will carefully changes the names of his three romantic interests, creating a hopelessly romantic puzzle that highlights both the joys and hardships of true love.'),
(19, 'foodinc.jpeg', 'Food Inc.', '2009', '94 minutes', 'In Food, Inc. filmmaker Robert Kenner lifts the veil on our nations food industry, exposing the highly mechanized underbelly that has been hidden from the American consumer with the consent of our governments regulatory agencies, USDA and FDA. Our nations food supply is now controlled by a handful of corporations that often put profit ahead of consumer health, the livelihood of the American farmer, the safety of workers and our own environment. We have bigger breasted chickens, the perfect pork chop, insecticide resistant soybean seeds, even tomatoes that will not go bad, but we also have new strains of e coli, the harmful bacteria that cause illness for an estimated 73,000 Americans annually. We are riddled with widespread obesity, particularly among children, and an epidemic level of diabetes among adults Featuring interviews with such experts as Eric Schlosser, Michael Pollan along with forward thinking social entrepreneurs like Gary Hirschberg and Joe Salatin, Food, Inc. reveals surprising, and often shocking truths about what we eat, how it is produced, who we have become as a nation and where we are going from here.'),
(20, 'thelmalouise.jpeg', 'Thelma and Louise', '1991', '130 minutes', 'Geena Davis and Susan Sarandon play Thelma and Louise, two working class friends who together have planned a weekend getaway from the men in their lives. Thelmas husband, Darryl, is an overbearing oaf, and Louises boyfriend, Jimmy, simply will not commit. Though the road trip starts out as a good time, the pair eventually wind up at a bar. A tipsy Thelma ends up in the parking lot of the bar with a wouldbe rapist. Louise shoots the man dead. The two decide that they have no choice but to go on the run. They eventually meet up with a young criminal named J.D., whose cowboy spirit rubs off on the timid Thelma. The pair is pursued by a police officer, sympathetic toward their plight. He chases them to the Grand Canyon, where the women make a fateful decision about their lives. '),
(21, 'bridesmaids.jpeg', 'Bridesmaids', '2011', '125 minutes', 'This spring, Universal Pictures and producer Judd Apatow invite you to experience Bridesmaids. Kristen Wiig leads the cast as Annie, a maid of honor whose life unravels as she leads her best friend, Lillian, and a group of colorful bridesmaids on a wild ride down the road to matrimony. Annies life is a mess. But when she finds out her lifetime best friend is engaged, she simply must serve as Lillians maid of honor. Though lovelorn and broke, Annie bluffs her way through the expensive and bizarre rituals. With one chance to get it perfect, she will show Lillian and her bridesmaids just how far you will go for someone you love.'),
(22, 'titanic.jpeg', 'Titanic', '1997', '194 minutes', 'Inspired by the 1985 discovery of the Titanic in the North Atlantic, the contemporary storyline involves American treasure-seeker Brock Lovett retrieving artifacts from the submerged ship. Lovett looks for diamonds but finds a drawing of a young woman, nude except for a necklace. When 102 year old Rose reveals she is the person in the portrait, she is summoned to the wreckage site to tell her story of the 56carat diamond necklace and her experiences of 84 years earlier. The scene then shifts to 1912 Southampton where passengers boarding the Titanic include penniless Jack Dawson and society girl Rose DeWitt Bukater, returning to Philadelphia with her wealthy fiance Cal Hockley. After the April 10th launch, Rose develops a passionate interest in Jack, and Cals reaction is vengeful. At midpoint in the film, the Titanic slides against the iceberg and water rushes into the front compartments. Even engulfed, Cal continues to pursue Jack and Rose as the massive liner begins its descent. Cameron launched the project after seeing Robert Ballards 1987 National Geographic documentary on the wreckage. '),
(23, 'avengers.jpeg', 'Avengers', '2018', '156 minutes', 'An unprecedented cinematic journey ten years in the making and spanning the entire Marvel Cinematic Universe, Marvel Studios Avengers Infinity War brings to the screen the ultimate, deadliest showdown of all time. The Avengers and their Super Hero allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.'),
(24, 'narnia.jpeg', 'The Chronicles of Narnia', '2005', '139 minutes', 'C.S. Lewis timeless adventure \"The Chronicles of Narnia follows the exploits of the four Pevensie siblings, Lucy, Edmund, Susan and Peter in World War II England who enter the world of Narnia through a magical wardrobe while playing a game of hide and seek in the rural country home of an elderly professor. Once there, the children discover a charming, peaceful land inhabited by talking beasts, dwarfs, fauns, centaurs and giants that has become a world cursed to eternal winter by the evil White Witch, Jadis. Under the guidance of a noble and mystical ruler, the lion Aslan, the children fight to overcome the White Witchs powerful hold over Narnia in a spectacular, climactic battle that will free Narnia from Jadis icy spell forever.'),
(25, 'proposal.jpeg', 'The Proposal', '2009', '107 minutes', 'When high powered book editor Margaret faces deportation to her native Canada, the quick thinking exec declares that she is actually engaged to her unsuspecting put upon assistant Andrew, who she is tormented for years. He agrees to participate in the charade, but with a few conditions of his own. The unlikely couple heads to Alaska to meet his quirky family, and the always in control city girl finds herself in one comedic fish out of water situation after another. With an impromptu wedding in the works and an immigration official on their tails, Margaret and Andrew reluctantly vow to stick to the plan despite the precarious consequences.'),
(26, 'lawless.jpeg', 'Lawless', '2012', '115 minutes', 'Lawless is the true story of the infamous Bondurant Brothers... bootlegging siblings who made a run for the American Dream in Prohibition era Virginia. In this epic gangster tale, inspired by truelife tales of author Matt Bondurants family in his novel, The Wettest County in the World, the loyalty of three brothers is put to the test against the backdrop of the nations most notorious crime wave.'),
(27, 'guardians.jpeg', 'Guardians of the Galaxy', '2014', '121 minutes', 'From Marvel, the studio that brought you the global blockbuster franchises of Iron Man, Thor, Captain America and The Avengers, comes a new team, the Guardians of the Galaxy. An action packed, epic space adventure, Marvels Guardians of the Galaxy expands the Marvel Cinematic Universe into the cosmos, where brash adventurer Peter Quill finds himself the object of an unrelenting bounty hunt after stealing a mysterious orb coveted by Ronan, a powerful villain with ambitions that threaten the entire universe. To evade the ever persistent Ronan, Quill is forced into an uneasy truce with a quartet of disparate misfits. Rocket, a gun-toting raccoon, Groot, a tree-like humanoid, the deadly and enigmatic Gamora and the revenge driven Drax the Destroyer. But when Quill discovers the true power of the orb and the menace it poses to the cosmos, he must do his best to rally his ragtag rivals for a last, desperate stand with the galaxy\'s fate in the balance.'),
(28, 'frozen.jpeg', 'Frozen', '2013', '102 minutes', 'Featuring the voices of Kristen Bell and Idina Menzel, Frozen is the coolest comedy adventure ever to hit the big screen. When a prophecy traps a kingdom in eternal winter, Anna, a fearless optimist, teams up with extreme mountain man Kristoff and his sidekick reindeer Sven on an epic journey to find Annas sister Elsa, the Snow Queen, and put an end to her icy spell. Encountering mystical trolls, a funny snowman named Olaf, Everest like extremes and magic at every turn, Anna and Kristoff battle the elements in a race to save the kingdom from destruction.'),
(29, 'pere.jpeg', 'De Pere en Flic', '2009', '107 minutes', 'A combative father and son have to take a long look at their relationship, whether they like it or not, in this comedy from French-Canadian filmmaker Emile Gaudreault. Jacques is a burly police detective who works alongside his son Marc. Marc seems skinny and geeky compared to his dad, and Jacques enjoys making cruel jokes at his sons expense, especially since Marcs girlfriend dumped him for someone more manly. Jacques and Marc have been assigned to track down the leaders of a biker gang called The Blood Machine, whose criminal activities have recently expanded into kidnapping. Jacques thinks a good way to get to the gangs kingpins is to follow their lawyer Charles, and when Charles signs up for a men\'s retreat in the Northern forests with his troubled son Tim, Jacques and Marc arrange to attend as well. As Charles and his son dig deep into mens movement philosophizing as they get in touch with their inner child, Jacques has to do the same with Marc, though neither seems interested in better understanding one another while waiting for Charles to drop some useful information. De Pere en Flic was a major commercial success in its native Canada, becoming the top grossing French language Canadian film on its home turf.'),
(30, 'shrek.jpeg', 'Shrek', '2001', '93 minutes', 'Once upon a time, in a far away swamp, there lived an ornery ogre named Shrek whose precious solitude is suddenly shattered by an invasion of annoying fairy tale characters. There are blind mice in his food, a big, bad wolf in his bed, three little homeless pigs and more, all banished from their kingdom by the evil Lord Farquaad. Determined to save their home, not to mention his own, Shrek cuts a deal with Farquaad and sets out to rescue the beautiful Princess Fiona to be Farquaads bride. Accompanying him on his mission is wisecracking Donkey, who will do anything for Shrek... except shut up. Rescuing the Princess from a fire breathing dragon may prove the least of their problems when the deep, dark secret she has been keeping is revealed.'),
(31, 'pursuithappyness.jpeg', 'The Pursuit of Happyness', '2006', '117 minutes', 'Chris Gardner is a bright and talented, but marginally employed salesman. Struggling to make ends meet, Gardner finds himself and his five-year-old son evicted from their San Francisco apartment with nowhere to go. When Gardner lands an internship at a prestigious stock brokerage firm, he and his son endure many hardships, including living in shelters, in pursuit of his dream of a better life for the two of them.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 9),
(4, 2, 1),
(5, 2, 5),
(6, 2, 6),
(7, 2, 10),
(8, 3, 1),
(9, 3, 5),
(10, 3, 9),
(11, 4, 1),
(12, 4, 2),
(13, 4, 5),
(14, 4, 9),
(15, 5, 8),
(16, 5, 13),
(17, 5, 14),
(18, 6, 5),
(19, 6, 6),
(20, 6, 10),
(21, 7, 1),
(22, 7, 2),
(23, 7, 3),
(24, 7, 15),
(25, 8, 5),
(26, 8, 9),
(27, 9, 3),
(28, 9, 5),
(29, 9, 16),
(30, 10, 14),
(31, 10, 2),
(32, 10, 3),
(33, 10, 8),
(34, 10, 13),
(35, 11, 2),
(36, 11, 5),
(37, 5, 3),
(38, 5, 3),
(39, 6, 3),
(40, 7, 2),
(41, 8, 7),
(42, 9, 3),
(43, 10, 5),
(44, 11, 3),
(45, 12, 3),
(46, 13, 5),
(47, 14, 1),
(48, 15, 5),
(49, 16, 3),
(50, 17, 5),
(51, 18, 15),
(52, 19, 9),
(53, 20, 3),
(54, 21, 3),
(55, 22, 5),
(56, 23, 14),
(57, 24, 14),
(58, 25, 3),
(59, 26, 5),
(60, 27, 9),
(61, 28, 12),
(62, 29, 3),
(63, 30, 13),
(64, 31, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_lvllist` tinyint(3) UNSIGNED NOT NULL,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_lvllist`, `user_ip`) VALUES
(2, 'Taylor', 'taylor', 'dakota123', 'teaves2@cool.ca', '2018-03-08 00:59:38', 1, '::1'),
(4, 'Robin Banks', 'robin', 'banks', 'rb@good.ca', '2018-04-07 20:44:44', 2, 'no'),
(5, 'Andy Social', 'andy', 'social', 'as@cool.ca', '2018-04-07 20:51:13', 1, 'no'),
(6, 'Watty Said', 'watty', 'said', 'ws@cool.ca', '2018-04-07 20:51:13', 1, 'no'),
(7, 'Costa Schitlode', 'costa', 'schitlode', 'cs@cool.ca', '2018-04-07 20:51:13', 2, 'no'),
(8, 'Yukan Fucov', 'yukan', 'fucov', 'yf@cool.ca', '2018-04-07 20:51:13', 2, 'no'),
(9, 'Chris P. Bakon', 'chris', 'bakon', 'cb@good.ca', '2018-04-07 20:51:13', 1, 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
