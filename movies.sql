-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2023 at 07:02 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `serverside`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `Id` int(11) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Genre` int(11) NOT NULL,
  `Description` varchar(10000) NOT NULL,
  `Release_Date` date NOT NULL,
  `Date_Created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`Id`, `Name`, `Genre`, `Description`, `Release_Date`, `Date_Created`, `User_ID`) VALUES
(1, 'Avengers:Endgame', 3, 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos\' actions and restore balance to the universe.', '2019-04-26', '2023-03-27 20:20:29', 4),
(2, 'We Have A Ghost', 4, 'The discovery that their house is haunted by a ghost named Ernest makes Kevin\'s family a social media sensation. But when Kevin and Ernest get to the bottom of the mystery of Ernest\'s past, they become targets of the CIA.', '2023-02-24', '2023-03-27 20:20:38', 4),
(6, 'Uncharted', 2, 'Treasure hunter Victor &quot;Sully&quot; Sullivan recruits street-smart Nathan Drake to help him recover a 500-year-old lost fortune amassed by explorer Ferdinand Magellan. What starts out as a heist soon becomes a globe-trotting, white-knuckle race to reach the prize before the ruthless Santiago Moncada can get his hands on it. If Sully and Nate can decipher the clues and solve one of the world&#039;s oldest mysteries, they stand to find $5 billion in treasure -- but only if they can learn to work together.', '2022-02-18', '2023-04-01 03:15:52', 4),
(7, 'Black Adam', 2, 'In ancient Kahndaq, Teth Adam was bestowed the almighty powers of the gods. After using these powers for vengeance, he was imprisoned, becoming Black Adam. Nearly 5,000 years have passed, and Black Adam has gone from man to myth to legend. Now free, his unique form of justice, born out of rage, is challenged by modern-day heroes who form the Justice Society: Hawkman, Dr. Fate, Atom Smasher and Cyclone.', '2022-10-21', '2023-04-01 03:16:26', 10),
(8, 'Black Panther:Wakanda Forever', 11, 'Queen Ramonda, Shuri, M&#039;Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T&#039;Challa&#039;s death. As the Wakandans strive to embrace their next chapter, the heroes must band together with Nakia and Everett Ross to forge a new path for their beloved kingdom.', '2022-11-11', '2023-04-01 03:17:08', 10),
(20, 'Enola Holmes 2', 8, 'Enola Holmes takes on her first case as a detective, but to unravel the mystery of a missing girl, she&#039;ll need some help from friends -- and brother Sherlock.', '2022-09-27', '2023-04-01 03:17:18', 10),
(22, 'Thor: Love and Thunder', 3, 'Thor embarks on a journey unlike anything he&#039;s ever faced -- a quest for inner peace. However, his retirement gets interrupted by Gorr the God Butcher, a galactic killer who seeks the extinction of the gods. To combat the threat, Thor enlists the help of King Valkyrie, Korg and ex-girlfriend Jane Foster, who -- to his surprise -- inexplicably wields his magical hammer. Together, they set out on a harrowing cosmic adventure to uncover the mystery of the God Butcher&#039;s vengeance.', '2022-07-06', '2023-03-27 20:23:28', 4),
(24, 'Glass Onion: A Knives Out Mystery', 8, 'Tech billionaire Miles Bron invites his friends for a getaway on his private Greek island. When someone turns up dead, Detective Benoit Blanc is put on the case.', '2022-09-10', '2023-03-27 20:23:19', 4),
(26, 'Shotgun Wedding', 9, 'Darcy and Tom gather their families for a destination wedding, but the ceremony gets put on hold when gunmen take everyone hostage. Now, they must do everything they can to save their loved ones -- if they don&#039;t wind up killing each other first.', '2022-12-28', '2023-03-27 20:23:10', 4),
(28, 'Shazam!Fury of the Gods', 11, 'Bestowed with the powers of the gods, Billy Batson and his fellow foster kids are still learning how to juggle teenage life with their adult superhero alter egos. When a vengeful trio of ancient gods arrives on Earth in search of the magic stolen from them long ago, Shazam and his allies get thrust into a battle for their superpowers, their lives, and the fate of the world.', '2023-03-17', '2023-04-01 03:17:31', 10),
(30, 'John Wick: Chapter 4', 2, 'With the price on his head ever increasing, legendary hit man John Wick takes his fight against the High Table global as he seeks out the most powerful players in the underworld, from New York to Paris to Japan to Berlin.', '2023-03-24', '2023-03-27 20:22:52', 9),
(32, 'Ant-man and the Wasp: Quantumania', 11, 'Ant-Man and the Wasp find themselves exploring the Quantum Realm, interacting with strange new creatures and embarking on an adventure that pushes them beyond the limits of what they thought was possible.', '2023-02-17', '2023-04-01 02:20:47', 9),
(53, 'Murder Mystery 2', 5, 'Now private detectives launching their own agency, Nick and Audrey Spitz land at the centre of an international investigation when a friend is abducted.', '2023-03-24', '2023-03-27 20:22:32', 9),
(54, 'Avatar: The way of the water', 3, 'Jake Sully and Ney&#039;tiri have formed a family and are doing everything to stay together. However, they must leave their home and explore the regions of Pandora. When an ancient threat resurfaces, Jake must fight a difficult war against the humans.', '2022-12-16', '2023-03-27 20:22:24', 9),
(60, 'Shang-chi and the Legend of the Ten Rings', 7, 'Martial-arts master Shang-Chi confronts the past he thought he left behind when he&#039;s drawn into the web of the mysterious Ten Rings organization. Shang-Chi is forced to confront his past when his father Wenwu (Leung), the leader of the Ten Rings organization, draws Shang-Chi and his sister Xialing (Zhang) into a search for a mythical village.', '2021-09-03', '2023-04-06 05:14:29', 9),
(61, 'Soul', 7, 'Joe is a middle-school band teacher whose life hasn&#039;t quite gone the way he expected. His true passion is jazz -- and he&#039;s good. But when he travels to another realm to help someone find their passion, he soon discovers what it means to have soul.', '2020-10-11', '2023-04-06 05:22:38', 9),
(62, 'Puss In Boots: The Last Wish', 7, 'Puss in Boots discovers that his passion for adventure has taken its toll when he learns that he has burnt through eight of his nine lives. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.', '2022-12-21', '2023-04-06 05:25:46', 9),
(63, 'Doctor Strange in the Multiverse of Madness', 7, 'Doctor Strange teams up with a mysterious teenage girl from his dreams who can travel across multiverses, to battle multiple threats, including other-universe versions of himself, which threaten to wipe out millions across the multiverse.', '2022-05-06', '2023-04-06 05:28:28', 9),
(64, 'Creed III', 6, 'Still dominating the boxing world, Adonis Creed is thriving in his career and family life. When Damian, a childhood friend and former boxing prodigy resurfaces after serving time in prison, he&#039;s eager to prove that he deserves his shot in the ring. The face-off between former friends is more than just a fight. To settle the score, Adonis must put his future on the line to battle Damian -- a fighter who has nothing to lose.', '2023-03-03', '2023-04-06 05:33:19', 9),
(65, 'Dark October', 6, 'After being accused of theft, four university students in Nigeria are killed in a mob attack that sparks nationwide outrage. Based on a true story.', '2023-02-03', '2023-04-06 05:38:55', 9),
(66, 'The Great Gatsby', 6, 'Midwest native Nick Carraway (Tobey Maguire) arrives in 1922 New York in search of the American dream. Nick, a would-be writer, moves in next-door to millionaire Jay Gatsby (Leonardo DiCaprio) and across the bay from his cousin Daisy (Carey Mulligan) and her philandering husband, Tom (Joel Edgerton). Thus, Nick becomes drawn into the captivating world of the wealthy and -- as he bears witness to their illusions and deceits -- pens a tale of impossible love, dreams, and tragedy.', '2013-05-12', '2023-04-06 05:43:45', 9),
(67, 'Faraway', 9, 'After inheriting a house on a Croatian island, a woman embarks on a spur-of-the-moment trip that reignites her joy in life and opens a door to new love.', '2023-03-14', '2023-04-06 05:48:06', 9),
(68, 'The Lost City', 9, 'Reclusive author Loretta Sage writes about exotic places in her popular adventure novels that feature a handsome cover model named Alan. While on tour promoting her new book with Alan, Loretta gets kidnapped by an eccentric billionaire who hopes she can lead him to an ancient city&#039;s lost treasure from her latest story. Determined to prove he can be a hero in real life and not just on the pages of her books, Alan sets off to rescue her.', '2022-03-25', '2023-04-06 05:50:13', 9),
(69, 'Conjuring', 4, 'In 1970, paranormal investigators and demonologists Lorraine (Vera Farmiga) and Ed (Patrick Wilson) Warren are summoned to the home of Carolyn (Lili Taylor) and Roger (Ron Livingston) Perron. The Perrons and their five daughters have recently moved into a secluded farmhouse, where a supernatural presence has made itself known. Though the manifestations are relatively benign at first, events soon escalate in horrifying fashion, especially after the Warrens discover the house&#039;s macabre history.', '2013-07-19', '2023-04-06 05:53:53', 9),
(70, 'Smile', 4, 'After witnessing a bizarre, traumatic incident involving a patient, Dr. Rose Cotter starts experiencing frightening occurrences that she can&#039;t explain. As an overwhelming terror begins taking over her life, Rose must confront her troubling past in order to survive and escape her horrifying new reality.', '2022-09-20', '2023-04-06 05:55:14', 9),
(71, 'Death on the Nile', 8, 'Belgian sleuth Hercule Poirot&#039;s Egyptian vacation aboard a glamorous river steamer turns into a terrifying search for a murderer when a picture-perfect couple&#039;s idyllic honeymoon is tragically cut short.', '2022-02-11', '2023-04-06 05:57:49', 9),
(72, 'Thunder Force', 5, 'Two childhood best friends reunite as an unlikely crime-fighting superhero duo when one invents a formula that gives ordinary people superpowers.', '2021-04-09', '2023-04-06 05:59:58', 9),
(73, 'Jumanji: The Next Level', 5, 'When Spencer goes back into the fantastical world of Jumanji, pals Martha, Fridge and Bethany re-enter the game to bring him home. But the game is now broken -- and fighting back. Everything the friends know about Jumanji is about to change, as they soon discover there&#039;s more obstacles and more danger to overcome.', '2013-12-13', '2023-04-06 06:01:44', 9),
(74, 'Vacation', 5, 'Remembering fond, childhood memories of his trip to Walley World, Rusty Griswold (Ed Helms) surprises his wife (Christina Applegate) and two sons with a cross-country excursion to America&#039;s favorite fun park. Following in his father&#039;s (Chevy Chase) footsteps, Rusty and the gang pack up the car and hit the road for some much-needed family bonding. Soon, the promise of fun turns into one misadventure after another for the next generation of Griswolds and anyone who encounters them.', '2015-07-29', '2023-04-06 06:03:40', 9),
(75, 'Isn&#039;t It Romantic', 5, 'Natalie is a New York architect who works hard to get noticed at her job, but is more likely to deliver coffee and bagels than design the city&#039;s next skyscraper. Things go from bad to weird when she gets knocked unconscious during a subway mugging and magically wakes up to find herself in an alternate universe. Always cynical about love, Natalie&#039;s worst nightmare soon comes true when she suddenly discovers that she&#039;s playing the leading lady in a real-life romantic comedy.', '2019-02-13', '2023-04-06 06:05:03', 9),
(76, 'Champions', 5, 'A former minor-league basketball coach receives a court order to manage a team of players with intellectual disabilities. Despite his doubts, he soon realizes that together they can go further than they ever imagined.', '2023-03-10', '2023-04-06 06:06:17', 9),
(77, 'Black Widow', 2, 'Natasha Romanoff, aka Black Widow, confronts the darker parts of her ledger when a dangerous conspiracy with ties to her past arises. Pursued by a force that will stop at nothing to bring her down, Natasha must deal with her history as a spy, and the broken relationships left in her wake long before she became an Avenger.', '2021-07-09', '2023-04-10 16:03:35', 4),
(78, 'The Man from Toronto', 2, 'A case of mistaken identity forces a bumbling entrepreneur to team up with a notorious assassin in hopes of staying alive.', '2022-06-24', '2023-04-10 16:06:00', 4),
(79, 'Deadpool 2', 2, 'Wisecracking mercenary Deadpool meets Russell, an angry teenage mutant who lives at an orphanage. When Russell becomes the target of Cable -- a genetically enhanced soldier from the future -- Deadpool realizes that he&#039;ll need some help saving the boy from such a superior enemy. He soon joins forces with Bedlam, Shatterstar, Domino and other powerful mutants to protect young Russell from Cable and his advanced weaponry.', '2018-05-18', '2023-04-10 16:08:32', 4),
(80, 'Jurassic World Dominion', 3, 'Four years after the destruction of Isla Nublar, dinosaurs now live and hunt alongside humans all over the world. This fragile balance will reshape the future and determine, once and for all, whether human beings are to remain the apex predators on a planet they now share with history&#039;s most fearsome creatures.', '2022-06-10', '2023-04-10 16:12:16', 4),
(81, 'Eternals', 2, 'The Eternals, a race of immortal beings with superhuman powers who have secretly lived on Earth for thousands of years, reunite to battle the evil Deviants.', '2021-11-05', '2023-04-10 16:14:15', 4),
(82, 'Free Guy', 2, 'When a bank teller discovers he&#039;s actually a background player in an open-world video game, he decides to become the hero of his own story -- one that he can rewrite himself. In a world where there&#039;s no limits, he&#039;s determined to save the day his way before it&#039;s too late, and maybe find a little romance with the coder who conceived him.', '2021-08-13', '2023-04-10 16:15:57', 4),
(84, 'Kingsman: The Secret Service', 2, 'Gary &quot;Eggsy&quot; Unwin (Taron Egerton), whose late father secretly worked for a spy organization, lives in a South London housing estate and seems headed for a life behind bars. However, dapper agent Harry Hart (Colin Firth) recognizes potential in the youth and recruits him to be a trainee in the secret service. Meanwhile, villainous Richmond Valentine (Samuel L. Jackson) launches a diabolical plan to solve the problem of climate change via a worldwide killing spree.', '2015-01-24', '2023-04-10 16:21:35', 4),
(85, 'Hitman&#039;s Wife&#039;s Bodyguard', 5, 'The world&#039;s most lethal odd couple -- bodyguard Michael Bryce and hit man Darius Kincaid -- are back for another life-threatening mission. Still unlicensed and under scrutiny, Bryce is forced into action by Darius&#039;s even more volatile wife. Soon, all three are in over their heads when a madman&#039;s sinister plot threatens to leave Europe in total chaos.', '2021-06-14', '2023-04-10 16:24:11', 4),
(86, 'Cruella', 5, 'Estella is a young and clever grifter who&#039;s determined to make a name for herself in the fashion world. She soon meets a pair of thieves who appreciate her appetite for mischief, and together they build a life for themselves on the streets of London. However, when Estella befriends fashion legend Baroness von Hellman, she embraces her wicked side to become the raucous and revenge-bent Cruella.', '2021-05-18', '2023-04-10 16:25:52', 4),
(87, 'Guardians of the Galaxy', 3, 'Brash space adventurer Peter Quill (Chris Pratt) finds himself the quarry of relentless bounty hunters after he steals an orb coveted by Ronan, a powerful villain. To evade Ronan, Quill is forced into an uneasy truce with four disparate misfits: gun-toting Rocket Raccoon, treelike-humanoid Groot, enigmatic Gamora, and vengeance-driven Drax the Destroyer. But when he discovers the orb&#039;s true power and the cosmic threat it poses, Quill must rally his ragtag group to save the universe.', '2014-08-01', '2023-04-10 16:29:02', 4),
(88, 'X-Men Apocalypse', 3, 'Worshiped as a god since the dawn of civilization, the immortal Apocalypse (Oscar Isaac) becomes the first and most powerful mutant. Awakening after thousands of years, he recruits the disheartened Magneto (Michael Fassbender) and other mutants to create a new world order. As the fate of the Earth hangs in the balance, Professor X (James McAvoy) and Raven (Jennifer Lawrence) lead a team of young X-Men to stop their seemingly invincible nemesis from destroying mankind.', '2016-05-27', '2023-04-10 16:30:59', 4),
(89, 'Ready Player One', 3, 'In 2045 the planet is on the brink of chaos and collapse, but people find salvation in the OASIS: an expansive virtual reality universe created by eccentric James Halliday. When Halliday dies, he promises his immense fortune to the first person to discover a digital Easter egg that&#039;s hidden somewhere in the OASIS. When young Wade Watts joins the contest, he finds himself becoming an unlikely hero in a reality-bending treasure hunt through a fantastical world of mystery, discovery and danger.', '2018-03-13', '2023-04-10 16:32:57', 4),
(90, 'The Maze Runner', 3, 'Thomas (Dylan O&#039;Brien), a teenager, arrives in a glade at the center of a giant labyrinth. Like the other youths dumped there before him, he has no memory of his previous life. Thomas quickly becomes part of the group and soon after demonstrates a unique perspective that scores him a promotion to Runner status -- those who patrol the always-changing maze to find an escape route. Together with Teresa (Kaya Scodelario), the only female, Thomas tries to convince his cohorts that he knows a way out.', '2014-09-19', '2023-04-10 16:35:10', 4),
(91, 'Bumblebee', 3, 'On the run in the year 1987, Bumblebee the Autobot seeks refuge in a junkyard in a small California beach town. Charlie, on the brink of turning 18 years old and trying to find her place in the world, soon discovers the battle-scarred and broken Bumblebee. When Charlie revives him, she quickly learns that this is no ordinary yellow Volkswagen.', '2018-12-21', '2023-04-10 16:37:14', 4),
(92, 'Finding Ohana', 11, 'A summer in rural Oahu takes an exciting turn for two Brooklyn-raised siblings when a journal pointing to long-lost treasure sets them on an epic adventure with new friends, and leads them to reconnect with their Hawaiian heritage.', '2021-01-29', '2023-04-10 16:41:47', 4),
(93, 'Insurgent', 11, 'Now on the run from Jeanine (Kate Winslet) and the rest of the power-hungry Erudites, Tris (Shailene Woodley) and Four (Theo James) search for allies and answers in the ruins of Chicago. They must find out what Tris&#039; family sacrificed their lives to protect and why the Erudites will do anything to stop them. Side by side, Tris and Four face one seemingly insurmountable challenge after another, as they unravel the secrets of the past and -- ultimately -- the future of their world.', '2015-03-20', '2023-04-10 16:46:49', 4),
(94, 'The Sorcerer&#039;s Apprentice', 11, 'Dave Stutler (Jay Baruchel) is just an average guy, but the wizard Balthazar Blake (Nicolas Cage) sees in him a hidden talent for sorcery. He becomes Balthazar&#039;s reluctant protege, getting a crash course in the art of magic. As Dave prepares to help his mentor defend Manhattan from a powerful adversary (Alfred Molina), he wonders if he can survive the training, save the city and find his true love.', '2010-07-14', '2023-04-10 16:49:14', 4),
(95, 'Fantastic Beasts: The secrets of Dumbledore', 11, 'Professor Albus Dumbledore knows the powerful, dark wizard Gellert Grindelwald is moving to seize control of the wizarding world. Unable to stop him alone, he entrusts magizoologist Newt Scamander to lead an intrepid team of wizards and witches. They soon encounter an array of old and new beasts as they clash with Grindelwald&#039;s growing legion of followers.', '2022-04-08', '2023-04-10 16:51:15', 4),
(96, 'The Hobbit: An Unexpected Journey', 11, 'Bilbo Baggins (Martin Freeman) lives a simple life with his fellow hobbits in the shire, until the wizard Gandalf (Ian McKellen) arrives and convinces him to join a group of dwarves on a quest to reclaim the kingdom of Erebor. The journey takes Bilbo on a path through treacherous lands swarming with orcs, goblins and other dangers, not the least of which is an encounter with Gollum (Andy Serkis) and a simple gold ring that is tied to the fate of Middle Earth in ways Bilbo cannot even fathom.', '2012-12-03', '2023-04-10 16:54:52', 4),
(97, 'Rampage', 11, 'Primatologist Davis Okoye shares an unshakable bond with George, an extraordinarily intelligent, silverback gorilla that&#039;s been in his care since birth. When a rogue genetic experiment goes wrong, it causes George, a wolf and a reptile to grow to a monstrous size. As the mutated beasts embark on a path of destruction, Okoye teams up with a discredited genetic engineer and the military to secure an antidote and prevent a global catastrophe.', '2018-04-13', '2023-04-10 16:57:40', 4),
(98, 'Marry Me', 9, 'Pop superstar Kat Valdez is about to get married before an audience of her loyal fans. However, seconds before the ceremony, she learns about her fiance&#039;s cheating ways and has a meltdown on stage. In a moment of inspired insanity, Kat locks eyes with a total stranger in the crowd and marries him on the spot. As forces conspire to separate the unlikely newlyweds, they must soon decide if two people from such different worlds can find true love together.', '2022-02-11', '2023-04-10 16:59:31', 4),
(99, 'The In Between', 9, 'Tessa doesn&#039;t believe she deserves her own love story until she meets Skylar, a true romantic. When a car accident kills Skylar, Tessa searches for answers and thinks that Skylar is trying to connect with her from the afterworld. Tessa tries to contact Skylar one last time so their love story can have the ending it deserves.', '2022-02-11', '2023-04-10 17:06:37', 4),
(100, 'The Royal Treatment', 9, 'New York hairdresser Izzy seizes the chance to work at the wedding of a charming prince. When sparks start to fly between the two of them, love and duty are put to the test as the time of the wedding draws closer.', '2022-01-20', '2023-04-10 17:13:33', 4),
(101, 'Fallen', 7, 'A young girl discovers a secret map to the dreamworld of Slumberland, and with the help of an eccentric outlaw, she traverses dreams and flees nightmares, with the hope that she will be able to see her late father again.', '2022-11-09', '2023-04-10 17:21:35', 4),
(103, 'Missing', 8, 'When her mother disappears while on vacation in Colombia with her new boyfriend, June&#039;s search for answers is hindered by international red tape. Stuck thousands of miles away in Los Angeles, June creatively uses all the latest technology at her fingertips to try and find her before it&#039;s too late. However, as she digs ever deeper, her digital sleuthing soon raises more questions than answers.', '2023-01-20', '2023-04-10 17:25:49', 4),
(104, 'Knives Out', 8, 'The circumstances surrounding the death of crime novelist Harlan Thrombey are mysterious, but there&#039;s one thing that renowned Detective Benoit Blanc knows for sure -- everyone in the wildly dysfunctional Thrombey family is a suspect. Now, Blanc must sift through a web of lies and red herrings to uncover the truth.', '2019-11-13', '2023-04-10 17:27:38', 4),
(105, 'Tomorrowland', 8, 'Whenever Casey Newton (Britt Robertson) touches a lapel pin with the letter T on it, she finds herself transported to Tomorrowland, a city filled with huge robots and sleek buildings. The gifted young woman recruits the help of scientist Frank Walker (George Clooney), a previous visitor to Tomorrowland, who years ago made a startling discovery about the future. Together, the two adventurers travel to the metropolis to uncover its mysterious secrets.', '2015-05-22', '2023-04-10 17:30:26', 4),
(106, 'Day Shift', 4, 'A hardworking dad out to provide for his daughter uses a boring pool-cleaning job as a front for his real gig: hunting and killing vampires.', '2022-08-12', '2023-04-10 17:32:34', 4),
(107, 'Nightbooks', 4, 'Scary story fan Alex must tell a spine-tingling tale every night, or stay trapped with his new friend in a wicked witch&#039;s magical apartment forever.', '2021-09-15', '2023-04-10 17:34:09', 4),
(108, 'Army of The Dead', 4, 'After a zombie outbreak in Las Vegas, a group of mercenaries take the ultimate gamble and venture into the quarantine zone in hopes of pulling off an impossible heist.', '2021-05-21', '2023-04-10 17:35:26', 4),
(109, 'The Son', 6, 'Peter&#039;s hectic life gets further upended when his ex-wife tells him their teenage son, Nicholas, is deeply troubled. He soon tries to take care of Nicholas the same way he would have wanted his own father to have taken care of him.', '2023-01-20', '2023-04-10 17:37:07', 4),
(110, 'Me Before You', 6, 'Young and quirky Louisa &quot;Lou&quot; Clark (Emilia Clarke) moves from one job to the next to help her family make ends meet. Her cheerful attitude is put to the test when she becomes a caregiver for Will Traynor (Sam Claflin), a wealthy young banker left paralyzed from an accident two years earlier. Will&#039;s cynical outlook starts to change when Louisa shows him that life is worth living. As their bond deepens, their lives and hearts change in ways neither one could have imagined.', '2016-06-12', '2023-04-10 17:39:03', 4),
(111, 'Gifted', 6, 'Frank Adler (Chris Evans) is a single man raising a child prodigy - his spirited young niece Mary (Mckenna Grace) - in a coastal town in Florida. Frank&#039;s plans for a normal school life for Mary are foiled when the 7-year-old&#039;s mathematical abilities come to the attention of Frank&#039;s formidable mother, Evelyn (Lindsay Duncan), whose plans for her granddaughter threaten to separate Frank and Mary.', '2017-04-07', '2023-04-10 17:40:31', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
