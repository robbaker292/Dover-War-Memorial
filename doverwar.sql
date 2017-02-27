-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2017 at 09:41 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doverwar`
--
CREATE DATABASE IF NOT EXISTS `doverwar` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `doverwar`;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `posted_date` date NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `article`
--

TRUNCATE TABLE `article`;
--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `posted_date`, `category_id`) VALUES
(1, 'Zebrugge', 'At noon on St George''s Day, Sunday, April 23, Dovorians are welcome to attend a short, moving tribute. The mayor, in long-established tradition, will ring the Zeebrugge Bell from the Town Hall balcony. That weekend our Belgian friends in Zeebrugge will be showing their respects. Dover''s act of remembrance for the heroes of the Zeebrugge Raid is followed by wreath-laying for the fallen, buried in St James'' Cemetery.\r\n\r\nDuring the First World War the Dover Patrol performed many tasks, including mine-sweeping, escorting ships, and anti-submarine warfare. The Patrol won 13 Victoria Crosses and suffered grievous casualties, losing 2,000 men. A number of these are named on the war memorial outside the council offices.\r\n\r\nDover''s vital strategic role produced further staggering and heartbreaking statistics. More than four million troops were transported from our coast. Of those who survived the pitiless attrition of the trenches almost one and a quarter million returned wounded through Dover alone. The problems of logistics were massive. For example more than a million horses were shipped. To feed them required daily exports of 500 tons of fodder, more than the daily weight of ammunition.\r\n\r\nThe Zeebrugge Raid provides a microcosm of the slaughter and heroism. Belgium was German-occupied and enemy submarines from Ostende and Zeebrugge prowled the Channel. Our war cabinet knew that unless the submarine threat were reduced the war would be lost in 12 months through loss of shipping.\r\n\r\nHuge losses had been taken in attempts to take Passchendaele Ridge to command the enemy''s submarine bases with long-range gunfire. Bombing the inland docks at Bruge had failed due to the impregnability of the concrete submarine bunkers. From there these silent killers travelled the canal to Zeebrugge and out into the Channel. The harbour possessed one of the world''s longest breakwaters, heavily fortified with gun batteries.\r\n\r\nHence the need for the Zeebrugge Raid. This was commanded by Vice Admiral of the Fleet Roger Keyes from his flagship HMS Warwick. HMS Vindictive was the main raiding cruiser. The Iris and Daffodil carried boarding parties. Incredibly these two vessels were Mersey ferries, commandeered for their low draught and double hulls which made them difficult to sink. Added to the flotilla were two submarines, 34 motor launches, three concrete-filled blockships named Thetis, Intrepid, and Iphigenia, 15 coastal motorboats, and another 10 assorted vessels. Volunteers comprising 82 officers, 1,000 men, and 700 marines took part.\r\n\r\nThis strange armada sailed on April 22, 1918, to Keyes''s message "St George for England". Off Zeebrugge the expedition disembarked surplus blockship crews and cast off the submarines and other towed boats. Burning chemicals created smokescreens as the raid began.  Zeebrugge graves at St James, by Simon Chambers\r\n\r\nVindictive''s commander Captain Carpenter later said, "They literally poured projectiles into us." Under torrential close-range fire, prevailing currents prevented Vindictive abutting the breakwater, so Daffodil nudged her in. The submarines discharged men who blew up viaducts. The three blockships were scuttled and Zeebrugge was sealed, achieving the key objective. Eight VCs were awarded for the bravery of that night. The human cost was horrendous: in an hour 214 men were killed and 383 wounded.\r\n\r\nAs to the success or otherwise of the Zeebrugge Raid historians disagree. Beyond question however is that the canal was impassable for large vessels for three weeks. Is this how success is measured?\r\n\r\nThe valour of that night remains a shining example of courage, devotion, and dedication. It is difficult to comprehend such slaughter and hellishness, so perhaps information form our War Memorial Project helps personalise matters.\r\n\r\nAble Seaman Frederick William Bowlt of the Vindictive was one who died. His reward was grave reference PW12A in St James'' Cemetery. He was 19. He never returned to his grieving parents, William and Olive, of 17 Union Road, or to his local, The Greyhound. Neither did his brother Bartholomew, a Merchant Navy fireman, killed in 1915. Both are named on our war memorial.\r\n\r\nWhen passing our Town Hall read the inscription under the Zeebrugge Bell and spare a glance at the grappling hook, damaged by enemy fire, near our war memorial.\r\n\r\nEvery single Dover family suffered, on our behalf, at that time. This is why the bell will be rung. It is also, why, as Binyon said:\r\n\r\n"They shall grow not old, as we that are left grow old;\r\nAge shall not weary them, nor the years condemn.\r\nAt the going down of the sun and in the morning\r\nWe will remember them."\r\n\r\n \r\n\r\nThis article first appeared in the Dover Express, p10, 6th April 2006\r\nreproduced with permission\r\n\r\nillustration:\r\nZeebrugge graves at St James cemetery, Dover', '2006-04-06', 5),
(2, 'title2', 'some text', '2017-02-09', 1),
(3, 'title3', 'some text', '2017-02-01', 1),
(4, 'aaatitle', 'some text edited', '2017-02-03', 1),
(7, 'adding test', 'adding', '2017-02-26', NULL),
(8, 'adding test 2', 'spme test', '2017-02-26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `article_category`
--

CREATE TABLE `article_category` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `article_category`
--

TRUNCATE TABLE `article_category`;
--
-- Dumping data for table `article_category`
--

INSERT INTO `article_category` (`id`, `name`) VALUES
(1, 'Do You Know?'),
(2, 'Educational Resources'),
(3, 'Now and Then'),
(4, 'Day By Day'),
(5, 'Contributed Articles'),
(6, 'War Time in Dover'),
(7, 'Jottings'),
(8, 'The Project');

-- --------------------------------------------------------

--
-- Table structure for table `casualty`
--

CREATE TABLE `casualty` (
  `id` int(11) NOT NULL,
  `given_name` text NOT NULL,
  `middle_names` text,
  `family_name` text NOT NULL,
  `narrative` text NOT NULL,
  `war` int(11) DEFAULT NULL,
  `civilian` tinyint(1) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `final_resting_place` int(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_death` date DEFAULT NULL,
  `commemoration_photo` text,
  `rank_at_death` int(11) DEFAULT NULL,
  `service_country` varchar(2) DEFAULT NULL,
  `place_of_birth` int(11) DEFAULT NULL,
  `last_known_address` int(11) DEFAULT NULL,
  `last_known_address_year` int(11) DEFAULT NULL,
  `recently_uploaded` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `casualty`
--

TRUNCATE TABLE `casualty`;
--
-- Dumping data for table `casualty`
--

INSERT INTO `casualty` (`id`, `given_name`, `middle_names`, `family_name`, `narrative`, `war`, `civilian`, `gender`, `final_resting_place`, `date_of_birth`, `date_of_death`, `commemoration_photo`, `rank_at_death`, `service_country`, `place_of_birth`, `last_known_address`, `last_known_address_year`, `recently_uploaded`) VALUES
(1, 'Frank', '', 'Aaamith', 'He did all sorts of things and _other **interesting**_ narrative.\r\n\r\nHis name is also unusual in that it always appears first, as if someone wants to find him easily.\r\n', 2, 0, 'M', NULL, '1900-04-07', '1944-01-18', NULL, 1, 'GB', 1, NULL, 0, 1),
(2, 'Barry', 'John', 'Jones', 'He fought in the Great War.\r\n\r\nHe has a really long narrative. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce in aliquet erat. Donec vel tristique ante. In lorem ante, facilisis quis sem nec, finibus eleifend nunc. Curabitur ut dapibus ex. Cras bibendum purus vel pretium feugiat. Ut faucibus consectetur dui nec tincidunt. Nullam ac mauris sed ex euismod euismod vitae sit amet arcu. Curabitur at tellus tincidunt metus consequat volutpat. Phasellus id sapien turpis. Donec tempor purus congue consequat dictum. Proin id eleifend urna. Curabitur dictum facilisis mauris vitae facilisis. Vestibulum ipsum enim, vestibulum ut posuere ut, feugiat ut orci. Phasellus massa nisl, finibus sed posuere eget, finibus non sapien. Donec vulputate nec sapien vitae tincidunt.\r\n\r\n<x-left>Some text</x-left>\r\n\r\nHe has a really long narrative. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce in aliquet erat. Donec vel tristique ante. In lorem ante, facilisis quis sem nec, finibus eleifend nunc. Curabitur ut dapibus ex. Cras bibendum purus vel pretium feugiat. Ut faucibus consectetur dui nec tincidunt. Nullam ac mauris sed ex euismod euismod vitae sit amet arcu. Curabitur at tellus tincidunt metus consequat volutpat. Phasellus id sapien turpis. Donec tempor purus congue consequat dictum. Proin id eleifend urna. Curabitur dictum facilisis mauris vitae facilisis. Vestibulum ipsum enim, vestibulum ut posuere ut, feugiat ut orci. Phasellus massa nisl, finibus sed posuere eget, finibus non sapien. Donec vulputate nec sapien vitae tincidunt.', 1, 0, 'M', NULL, '1895-03-28', '1915-12-24', NULL, 2, 'GB', 1, NULL, NULL, 1),
(3, 'Dave', 'Henry', 'Bloom', 'Bloomed like a _flower_', 2, 0, 'M', NULL, '1920-07-23', '1940-02-06', NULL, 1, 'GB', 1, 2, 1911, 1),
(134, 'G', 'A.', 'O''Dell', 'George Alexander O''Dell, 3445. He was a Corporal in the 2nd/7th battalion of the Royal Warwickshire Regiment. He died of wounds on 1st June 1918, at the age of 36, and is buried at Aire Communal cemetery, France.\n\nHe was the son of Mrs. E. Chittenden, of Dover, born in Kasauli, India, and enlisted in Dover.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(135, 'C', 'F.', 'Oliver', 'Charles Frederick Oliver, 30147. He was a Private in the 2nd/5th battalion, East Lancashire Regiment (formerly 33580 East Surreys). He was killed in action on 9 October 1917, and is commemorated on the Tyne Cot Memorial\n\nHe was the husband of Mrs. E. S. Oliver, of 32, Minerva Avenue, Dover, and was born and enlisted in Dover. .\n\nThe tombstone is at St Andrews, Buckland, and reads: "In Loving Memory of Winnifred May Oliver, Who died 14th January 1927, Aged 20 years. Short was her life, sweet is her rest, God calls for those he loves best. Also to the memory of Charles Frederick Oliver, Father of the above, Who was killed in action 7th October 1917. His memory is as dear today, As in the hour he passed away. Also of Emma Susannah, Wife of the above, who passed away 18th April 1950. Aged 74 years."\n\nTyne Cot photo Jean Marsh tombstone photo and transcription Joyce Banks\n\n\n![](%asset_url%pictures/SurnamesO/OliverCFTyneCot.gif){.left .img-responsive}\n\n![by Joyce Banks](%asset_url%pictures/SurnamesO/OliverC.gif "by Joyce Banks"){.right .img-responsive}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(136, 'R', '', 'O''Lone', 'Born in Belfast, Robert James O''Lone was the son of John and Mary O''Lone (née Spence). In 1911 he was serving as a Sergeant and Clerk in the 2nd Battalion the Irish Rifles, and stationed in Dover. The following year in Dover he married Gladys Louise Edwards. She was from an army family, and had been born on 26 April 1894 at Jullunder, India. The couple may have had a son, Robert James, born in 1913 in Wiltshire.\n\nMentioned in despatches, Robert was a 2nd Lieutenant, temporary Captain, aged 31, when he was killed in action on 11 November 1915. He is buried at Tancrez Farm Cemetery, Belgium. \n\nMrs O''Lone later lived at 11, Grove Avenue, Twickenham, Middlesex. She died in 1971 in Dover.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(137, 'G', 'A. C.', 'Osborn', 'George Ashby Chadwick Osborn. Born at Hartlepool in 1888, he was a temporary Captain in the Duke of Edinburgh''s Wiltshire Regiment, 7th battalion. He was killed in action on 24th April 1917, and is commemorated on the Doiran Memorial, Greece.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(138, 'G', 'C.', 'Osborn', 'Gordon Chadwick Osborn. Born at Romney Marsh in 1894, he was a Second Lieutenant in the Royal Engineers, and was 21 when he was killed in action on 18th April, 1915. He was the son of Colonel George Osborn (Royal Artillery), of Lavington Vernon, British Columbia, and is buried at Bedford House Cemetery, near Ypres in Belgium.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(139, 'A', 'E.', 'Osborne', 'Archibald Edward Osborne was a Captain in the Buffs. He was in the 5th (Weald of Kent) battalion (territorial), attached to the 10th battalion, Worcestershire Regiment (another report says he was in the Loyal North Lancs Regiment, attached to the Worcestershires). He had received the award of the Croix de Guerre with Palm (France), and gazetted from the Honourable Artillery Company. He was 27 when he was killed in action on (20th) 21st March 1918, and is commemorated on the Arras memorial in France.\n\nHis parents were William Edward and Katherine Osborne, of 13 Hope Park, Bromley, Kent, late of Dover.  He may be the A E Osborne commemorated on the South Eastern and Chatham Railway Memorial.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(140, 'A', 'G.', 'Osborne', 'Albert George Osborne, 42076. He was born in Malta, and enlisted in Dover to become a Private in 7th battalion of the Norfolk Regiment. He died of wounds on 2nd October 1918, at Abbeville, France, and is buried there, when he was 18.\n\nHe was the eldest of six children, four boys and two girls, the family of  Walter John and Ada Ozanne Osborne, of 2 Denison Villa, Underdown Road, Dover. They also lived at 108 Heathfield Avenue, Dover, and Mrs Osborne lived at 2 Noah''s Ark Road, and possibly also in the cottages at the summit of the Whitfield hill.  (We Remember 06)\n\nfootnotes: 2 Denison Villa was later the home of Maggie S-K''s great aunt, Margaret Samuelson, née Easton Albert came from Guernsey, and is also on Channel Islands Great War Study Group website\n\n\n![AG Osbourne, house, by Simon Chambers](%asset_url%pictures/SurnamesO/OsborneAGhouse.gif "AG Osbourne, house, by Simon Chambers"){.left .img-responsive}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(141, 'H', '', 'Ovenden', 'Herbert Stephen Ovenden was a Lieutenant (Quartermaster) in the Army Service Corps. He died on 3rd  September 1916, at the age of 44. He was the son of William and Charlotte E. Ovenden, of Dover; husband of Esther Mabel Ovenden, of 13, Queen Bertha Road, Ramsgate. He was buried on 7th September at Charlton cemetery in Dover, United Kingdom. QJ 24.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(424, 'B', 'C.', 'Packer', 'Bertram Charles Packer, 44474, enlisted in Canterbury, and was a Rifleman in the King''s Royal Rifle Corps, posted to the 2nd.15th battalion with the London Regiment (Prince of Wales''s Own Civil Service Rifles) (formerly TR/10/31799 32nd TR battalion TR/13.58703 20th TR battalion).\n\nHe died of wounds on 5 November 1918, and is buried at the Cement House cemetery in Belgium.\n\nHe was born at Ospringe, near Faversham, the son of Edward Maurice Packer and his wife Kate Ann, née Peal. The family were in 1911 living at 6 Stanhope Road, with Mr Packer working as a miller. Bertie was then 11. Another son, Edward, then 23, was a grocer''s porter, while his brother Ernest, 15, (below) was a grocer''s apprentice. Also apprenticed was another brother, Frank, then 16, to a printer. They had a sister, Louise Elizabeth, then 21.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(425, 'E', 'W.', 'Packer', 'Ernest Walter Packer, 68906, was a Bombardier in the Royal Field Artillery, D battery, 62nd Brigade. He was 20 when he died on 29 July 1916. He was buried at the Flatiron Copse Cemetery, Mametz, France, X E 3.\n\nCWGC details state that he was the son of Edward Maurice Packer, and the late Ann Packer, from 39 Eton Road, Newport Monmouthshire. He was the brother of Bertie Packer, above.\n\nNotes: The Dover Express named him as Ernest William Packer, when the memorial was unveiled. The National Archives records him as Ernest I Packer on the medal lists. Soldiers Died notes him as Ernest Walter Packer, Bombardier, enlisted and lived in Maidstone. The 1901 census has Ernest W. Packer, aged 5, and Bertie C. Packer, aged 1, as the sons of Edward M Packer and Kate Ann Packer, his wife. Ernest was born at Ospringe, Kent, Bertie at South Preston, Kent. Then they were living at 4 Mall Place, the parish of St Catherine, Preston, civil parish Preston Within, district of Faversham. Mr Packer was a time-keeper at a mining machinery factory.  In 1891 Mr and Mrs Packer, with Edward and Louise, were living at Mill House, Water Lane, Ospringe, with Mr Packer working as a miller.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(426, 'A', 'T.', 'Pain', 'Alfred Thomas Pain, G/13570, was in the 6th battalion of The Buffs, serving as a Serjeant. He was 25 when he died in action on 3rd May 1917, and is buried in the Vis-en-Artois British Cemetery in France.\n\nHis parents were Stephen and Susan E Pain, from 149 London Road, Dover. He enlisted and lived in Dover, but was born in Teynham, Kent. His brother G V Pain wrote to request he should be on the Memorial.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(427, 'G', 'T.', 'Palmer', 'Palmer, G. T. George Thomas Palmer, G/5181. He was a Private in the Buffs (East Kent Regiment), the 8th battalion. He died of wounds on 19th August 1916, and is commemorated on the Thiepval memorial in France.\n\nBorn in Alkham, Dover, he enlisted and lived in Dover. He was the brother of Stephen Palmer, below, and cousin of Walter Tull.\n\nThe picture above is believed to be that of George Palmer. It is one of three contained in the hollow uniform button, above right, from which his mother created a brooch. The other two pictures from the button are below, in his brother Stephen''s entry\n\nLower right is George''s dog tag, returned after his death.\n\nAugust 1922 - In ever affectionate memory of my two beloved sons, George Thomas Palmer, killed in action August 19th 1916 and Stephen John Alexander Palmer, killed in action July 16th 1917. Six years have passed, Yet still I miss them. A silent thought, a secret tear, Keeps their memory very dear. From their ever loving mother. RIP\n\nwith thanks to Stephen Coombe\n\n(article)\n\n\n\n \n\n \n\nRight, however, is a picture described as being that of G T Palmer, from 204 Union Road.\n\n \n\n \n\n\n\n \n\n \n\nRight is his younger brother, William John Palmer, RGA, who was awarded the DCM\n\n \n\n \n\nIn memoriam 30 August 1917\n\n\n![believed to be G Palmer](%asset_url%pictures/SurnamesP/PalmerGTposs.gif "believed to be G Palmer"){.left}\n\n![](%asset_url%pictures/SurnamesP/Palmer-button.gif){.right}\n\n![dog tag](%asset_url%pictures/SurnamesP/Palmer-tag.gif "dog tag"){.left}\n\n![](%asset_url%pictures/SurnamesP/PalmerGT.gif){.right}\n\n![](%asset_url%pictures/SurnamesP/Palmerannounce.gif){.left}\n\n![](%asset_url%pictures/SurnamesP/PalmerWJ.gif){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(428, 'S', 'J. A.', 'Palmer', 'Stephen John Alexander Palmer, S/7023, was a Lance Serjeant in the 7th battalion of the Queen''s (Royal West Surrey Regiment) (formerly 10174 The Buffs). He was 20 when he died in action on 16th July 1917. He is commemorated at Menin Gate in Belgium. Born in River, and enlisting and living in Dover, he was the son of Mrs Harriett Palmer, of 204 Union Road, Buckland, Dover.\n\nThe picture illustrates a story from the Dover Express in 1915. It reads:\n\nPrivate S J A Palmer\n\nOf the 1st battalion, The Buffs, writing to his brother at 227 London Road, Dover, from "the same mansion",  describes a lucky escape he had, a box of Oxo his brother sent him in his last parcel having been the means of saving his life. He says: "A bullet hit my breast pocket, went through my tobacco box into the Oxo tin. It tore my coat in twenty places, and I am only bruised."\n\nHis company lost his platoon officer and ten men with one shell. Private S J A Palmer has three other brothers serving - Private E G Palmer, "somewhere in France", 1st Buffs; Private W. Palmer, just returned from Gibraltar after three years'' service with the RGA (expecting to go to the Front); and Private G Palmer, who is in training at Shoreham, with the 8th Buffs. George Palmer, above, also died.\n\nNote: Stephen''s nephew remembers the tin being on display for many years at home\n\nThese are the other two pictures con-tained in the uniform button brooch, men-tioned above. They are believed to be those of Stephen Palmer. (article)\n\nwith thanks to Stephen Coombe\n\n\n![SJA Palmer, Menin Gate, by Andy and Michelle Cooper](%asset_url%pictures/SurnamesP/PalmerSJAMenin.gif "SJA Palmer, Menin Gate, by Andy and Michelle Cooper"){.left}\n\n![Stephen Palmer and box, courtesy Dover Express](%asset_url%pictures/SurnamesP/PalmerSJAand-box.gif "Stephen Palmer and box, courtesy Dover Express"){.right}\n\n![](%asset_url%pictures/SurnamesP/PalmerSJposs.gif){.left}\n\n![](%asset_url%pictures/SurnamesP/PalmerSJ.gif){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(429, 'T', 'W.', 'Palmer', 'Thomas William Palmer. S/7967, was born in Dover and lived there, but enlisted in London. He became a Rifleman in the 8th battalion of the Rifle Brigade (Prince Consort''s Own). He was killed in action on 15th September 1916 and is buried at Guards'' Cemetery, Lesboeufs in France.\n\nHe was the son of William Thomas Palmer and his wife Sarah Elizabeth, née Ward, from 26 Lansdown Road, Canterbury. The couple had married at St Mary''s, Dover, on 24 January 1895; Mr Palmer was then a railway guard, the son of Thomas Palmer of the Metropolitan Police. Sarah''s father, William Emerson Ward, then deceased, had been a signalman on the railway.\n\nIn 1911 the family had been living for at least ten years at 3 Caroline Place, Dover, with Mr Palmer working as a railway porter for the SECR. In 1911 Thomas, 15, was then working as a messenger boy, and at home too were his sisters, Elsie Hellena, 12, and Hilda May, 6. Another brother, Wilfred Emerson, had been born on 29 January 1900, but sadly died in 1901.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(430, 'A', 'G.', 'Parker', 'Alfred George Parker, 2975, had attended St Mary''s school when he was a boy. He had served in the Garrison Artillery in England between 1899 and 1907 (another document suggests he served only two years six months), and was discharged after serving his time. He then went to Australia and, after a time as a labourer, joined the Australian forces on 16 May 1915, aged 23 years and 1 month. He became a bugler, and at that time was five feet five inches tall. He had a dark complexion, brown eyes, and black hair. On his left fore arm was a tattoo of a flower cross and crossed shields, and on his right fore arm was a tattoo of a ballet girl with clasped hands.\n\nHis service was chequered. On 5 August 1915 he was fined £1 for breaking camp and being absent without leave for nearly three days. At this time his conduct was considered as normally good. On 7 October he was again absent without leave. This time his conduct was considered indifferent, and the question of discharge arose. On 29 October 1915 he was discharged from the Depot Company, with the note that he was unlikely to become an efficient soldier. On 18 January 1916 he was charged with conduct likely to prejudice the good order of his camp. He had clearly been enjoying himself as his offence was "being in company with girls who were in a state of intoxication within the camp, and also being abroad with them". On 24 February 1916 he was charged with disobedience of orders after being warned, and with being absent without leave from 21 to 23 February. He was recommended for discharge from C Company, of the Depot Battalion, on 24 February 1916, and  discharged on 25 February. His Major said, "This man has been before me on three different occasions charged with offences of more or less serious nature; his character is undoubtedly bad. I have apart from these offences given him several opportunities to amend his line of conduct, with no good result. He is certainly a menace to the good order and discipline of the battalion."\n\nAlfred re-enlisted on 12 June 1916, and on 8 November 1916 sailed on the SS Port Nicholson from Sydney, arriving at Devonport on 10 January 1917. On 14 January he went to Codford, and was again absent without leave between 24 to 26 February, losing 12 days pay. On 5 March 1917 he sailed for France, from Folkestone. Perhaps then he took the opportunity to visit his brother Charles, who in June 1917 is recorded as the licensee of the Swan Inn, 176 Dover Road, Folkestone.\n\nHe had a short spell in hospital at the end of June, but by 24 July he was marching out to Havre, and on 7 October 1917 he joined his unit and served in the field. He lost a day''s pay for being absent for two and a half hours from billeting, until apprehended, on 27 February 1918. On 5 April 1918 he was killed in action. His effects were received by his father, Mr Alfred James Parker, of the Dolphin Inn, Dover, on 2 June 1918.\n\nAlfred is commemorated on the Villers-Bretonneux memorial in France. He was awarded the 1914/15 star, the British War medal, and the Victory medal. His plaque and scroll were sent to his father and to his mother, Rose.\n\n\n![AG Parker, courtesy Dover Express ](%asset_url%pictures/SurnamesP/ParkerAG.gif "AG Parker, courtesy Dover Express "){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(431, 'D', '', 'Parker', 'A D. Parker is commemorated on the memorial window of the County School, now Boys'' Grammar, in Dover. The school magazine, Pharos, number 23 for December 1916, notes that David Parker, who was at the school between 1906 and 1907, was missing. He was serving in the 8th Battalion of the Winnipeg Rifles.\n\n"David" may have been the name by which Henry Edward Parker was known. Henry Parker attested for the Canadian Infantry at Winnipeg on 22 July 1915. He was born on 25 October 1891, and his next-of-kin was his mother, Emily Parker, of Connaught Cottage, Frith Road, Dover. He was a book-keeper, described at 5 feet 4 inches tall, with a dark complexion, brown eyes, and dark hair, and was recorded as a Baptist. He became a Private, 475172, in the 8th battalion of the Canadian Infantry, and was killed on 26 September 1916. He is commemorated on the Vimy Memorial, France, and was recorded as the son of the late Henry David Parker and Emily Parker.\n\nIn 1911 a David was living with his mother, Emily, a boarding-house keeper, at 2 Saxon Stteet, Dover. He had been born at Highgate and his mother at Pimlico. In 1918 there was a newspaper report that Emily Jane Parker of Connaught Cottage, Frith Road, who had been a nurse for "a great many years in Dover" had died suddenly on 11 August 1918. She was buried at Charlton, and amongst the mourners were her sisters Nellie and Winnie Parker. Nellie would obtain the probate of Emily''s will.\n\nEmily had been baptised on 17 December 1865 and was from the parish of St Peter, Eaton Square, Pimlico. Born on 29 September 1865, she was the daughter of Richard Parker and his wife Marion, née Griffiths, who had married in London in 1864. Her father was a dairyman, which business his wife continued after his death assisted by their daughter Marion Winifred. There were two other daughters in the family; Ellen Maud and Lydia Mabel L. Lydia married in 1895; the other sisters remained single.\n\nwith thanks to Joyce Banks for discovering the David/Henry Edward link\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(432, 'G', 'W. G.', 'Parker', 'George William Gardner Parker, G9297, served as a Private in the 6th battalion of the Buffs. He was born in Dover and enlisted there on 28 November 1915, aged 36. He was employed in the Works Department of the Depot RM at Walmer.\n\nHe went overseas on 8 June. Less than a month later, on 3 July 1916, he was reported missing. He is commemorated on the Thiepval memorial in France.\n\nHe was the third son of Frederick and Rebecca (née Gardner) Parker, who both predeceased him. The couple were probably married in 1862 at St Andrew''s, Deal. In 1881 the family were living at 6 Church Court, where Mr Parker was a licensed driver. There were then five children; Jane Eliza West, 13, Ernest Richard, 9, Rebecca Ellen, 8, Henry, 5, and George, 3.\n\nStill at 6 Church Court in 1891, Mr Parker was a fly driver groom, and the family had another son, Frederick, 9. By 1901 they had moved to 15 Spring Gardens with just Henry and George still at home, both working as brewers'' labourers. Mr Parker continued as a licensed driver and groom. With George the only child still at home, they remained at that address in 1911 with the same occupations. There had been in total nine children in the family, of whom three had died young.\n\nGeorge was the uncle of Frederick McLoughlin.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(433, 'R', 'S.', 'Parsons', 'Raymond Steriker Parsons was a Lieutenant Commander in the Royal Navy, serving in the Hood battalion of the RN Division. He died on 4th June 1915, and is commemorated on the Helles Memorial, Turkey. Miss Parsons, of 14 Upper Grosvenor Road, Tunbridge Wells, requested that his name should be placed on the Dover Memorial. His sister, Helen, was married to Herbert Robinson\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(434, 'S', 'J.', 'Parsons', 'Stanley James Parsons. 8213, was the son of William and Harriett Parsons, from 10 Bartholomew Street, Dover, and brother to William, below. He was born in Dover, but enlisted in London and lived in Sevenoaks.\n\nHe served as a Serjeant in the 9th battalion of the East Surrey Regiment. He was 19 when he died on Christmas Eve, 1916. He is buried at the Philosophe British Cemetery, Mazingarbe in France.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(435, 'W', 'C.', 'Parsons', 'William Charles Parsons, L8432, enlisted in Dover as Private in the 1st battalion of the Buffs. He was reported missing, and later as having died on 20th October 1914. He was 27. He is commemorated on the Ploegsteert Memorial in Belgium.\n\nBorn in Dover, He was the son of Mr William and Mrs Harriett Parsons, of 10 Bartholomew Street, Dover, and brother of Stanley above. He lived at Buckland.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(436, 'E', 'S. .', 'Pattison', 'Edward S. Pattison, 177356, was a Leading Seaman in the Royal Navy, with HMS Pembroke. He was awarded the Africa General Service Medal (with the Somaliland Clasp), and he served in the Dardanelles with the HMS Implacable.\n\nHe was the son of Frederick and Ellen Pattison, from Dover, and the husband of Marion Pattison, who lived at 96 Norwich Road, Ipswich.\n\nHe was 39 according to the CWGC when he died from injuries aboard ship on 14th March 1918, and he is buried at St James cemetery, Dover in the United Kingdom. His tombstone associates him with the HMS Melpomine. At the foot of his tombstone are the words "Peace, Perfect Peace".\n\nFor his family tree, see Faded Genes, by Dave Dixon\n\n\n![E S Pattison, headstone, by Simon Chambers](%asset_url%pictures/SurnamesP/PattisonESheadstone.gif "E S Pattison, headstone, by Simon Chambers"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(437, 'A', 'E.', 'Peirce', 'Arthur Edmund Peirce - see below under "Pierce"\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(438, 'G', 'T.', 'Pearce', 'George Thomas Pearce, S/172, was a Lance Serjeant in The Buffs, 3rd battalion. Born in Dover, he was the son of George Pearce, a Carman, and his wife, Catherine. In 1891 this family were living at 16 St James Street, and George Thomas was working as a painter.\n\nGeorge was the  "dearly loved" husband of Ellen Jane Pearce née Horton of 5 and later 9 Union Row, Military Hill, Dover. The couple had married in 1900. In 1901 they were living at 3 Alexander Cottages, Dover, with a son, Arthur. George was working as a blacksmith. The couple had four daughters Evelyn, born 1902, Dorothy, born 1906, Winifred, born 1909, and Lilian, born 1911. They had had a fifth daughter, Ivy, born in 1915, who sadly had died as a newborn. The couple also had  a further son, Percival, born in 1906. All the children were born in Dover\n\nStill employed as a blacksmith, George  enlisted on 28 August 1914 at Canterbury. He had previously been a volunteer in The Buffs. Unfortunately, on 9 November 1915, while on a course of field pioneering, he  developed a cough and shortness of breath. He was admitted to the Western Heights Military Hospital with pleurisy. He was discharged from service 2 June 1916 as no longer physically fit, having not recovered from his illness the year previously. His bronchitis and pleurisy were caused by exposure during his military service.\n\nHe died on 4 October 1918 at the aged of 46, after "many months of suffering patiently borne" . He was buried with military honours at St Mary''s, E J 17. His son Arthur may have been unable to attend his father''s funeral owing to being on service in Italy at the time of his death.\n\nThe words at the bottom of his headstone read:\n\nHis grief now o''er His pain for ever done A life of endless joy We hope he''s now begun\n\n\n![](%asset_url%pictures/SurnamesP/PearceGT.gif){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(439, 'H', 'G. C.', 'Perry-Ayscough', 'Henry George Charles Perry-Ayscough had served in the South African Campaign and the West African Frontier Force, and authored a book, "With the Russians in Mongolia", published in 1914. He died on 25 September 1915, when he was a Captain in the Connaught Rangers, having served in the 4th battalion and been attached to the Royal Irish Rifles (Soldiers Died states Royal Munster Fusiliers). He is commemorated on the Menin Gate memorial in Belgium.\n\n \n\nHe was the son of the late Rev George B Perry-Ayscough (died 31 August 1885), a vicar of Brabourne in Kent, and the Hon Emma Sophia Perry-Ayscough, née Parnell (died 26 November 1910), whom he married on 17 May 1866. She was the daughter of Sir Henry William Parnell, 3rd Baron Congleton, and Sophia Bligh. He had at least two sisters, the younger of whom was named Ethel Sophia (died 1914), and who married the Rev Herbert Meade Ramus.\n\n\n![gathering for the Last Post ceremony at the Menin Gate, by Michael Webb ](%asset_url%pictures/SurnamesP/PerryAyscoughMenincrowd.gif "gathering for the Last Post ceremony at the Menin Gate, by Michael Webb "){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(440, 'W', 'H.', 'Pettet', 'William Henry Pettet was born in Dover in about 1894. He was the son of Frederick Richard Pettet and his wife Rosina, née Bailey, who had married at St Andrews Church, Buckland, on Christmas Day 1886. Mr Pettet was then a cooper, like his father Charles. By 1901 he was working as a fruiterer and greengrocer and living at 1 Herbert Street. There too was Mrs Pettet, who had been born in Plymouth, and their children Frederick, Lily Rosina, Charles James, William, Daisy Florence, and Ethel Louise.\n\nBy 1911 the family were living at 2 Claremont Cottages, Chapel Hill, Dover. William had found employment as a tram conductor, while Charles was working as a clerk for the cross channel service. Another brother, Robert, had joined the family, aged just 4. The family had lost two children in infancy. Mrs Pettit died on 10 May 1915 at her home, aged 48.\n\nWilliam Henry Pettet, TF 260080, enlisted in Canterbury as a Private in the Royal Sussex Regiment, serving in the 2nd battalion (part of the BEF). He died of wounds on 25 October 1918, and is buried in the Vaden Court British Cemetery, Maissemy in France.\n\n"Never forgotten by his loving Father, Brothers, and Sisters" - 1919\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(441, 'A', '', 'Petticrew', 'Petticrew, A. Alexander Petticrew, 10193, was a Private in the Royal Inniskilling Fusiliers, serving in the 2nd battalion. He was born in Shankhill, Co Antrim, and enlisted in Belfast.\n\nHe was 19 when he died on 11 July 1916, and he is commemorated on the Thiepval Memorial in France.\n\nHe was the brother? of May McCarthy (fomerly Petticrew), from 2 Chapel Court, Snargate Street, Dover, Kent.\n\n\n![A Petticrew, on the Thiepval memorial, by Andy and Michelle CooperS](%asset_url%pictures/SurnamesP/PetticrewAThiepval.gif "A Petticrew, on the Thiepval memorial, by Andy and Michelle CooperS"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(442, 'O', '', 'Phillips', 'Owen Phillips, 217032, was born in Loughborough on 5 November 1884. He served as an Able Seaman in the Royal Navy, with the HMS Bulwark. He died when he was 30 on 26 November 1914, when the Bulwark blew up at 07.35. Very few men (14?) were saved from a crew of over 700. He is commemorated on the Portsmouth Naval Memorial in the United Kingdom.\n\nHe was the son of John Phillips and Mary, née Woolley, married in Loughborough in 1875.  By 1901 Mrs Philips, aged 50 and a widow, was living at 11 Court C. Wards End, Loughborough. She was working in a hospital. Her son James, 22, was a brickmaker, while Owen, then 19, was a foundry labourer. Their younger brother Edward, 17, was a brickfield labourer. At home also were five more children, Sarah, 15, Mary, 12, John, 10, Joseph, 8, and Florry, 6.\n\nOwen was the husband of Alice Louisa Gregory, formerly Phillips, from 33 Wyndham Road, Dover, formerly 31 Wyndham Road. Mrs Gregory was born in Dover. He left also a baby daughter.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(443, 'C', '', 'Phipps', 'Charles Phipps, G/5493, was in the 8th battalion of the Buffs. He was a Private, and he died when he was 23 on 13th March, 1916. He is buried at the Sanctuary Wood Cemetery, Belgium.\n\nPrivate Phipps was the son of Mr David Phipps, of  9 Wyndham Road, Dover. He enlisted and lived in Dover, and was born at Charlton in the United Kingdom.\n\ngrave by Jean Marsh\n\n \n\n\n\nNo easy hopes of lies Shall bring us to our goal, But iron sacrifice Of body, will, and soul. There''s but one task for all, For each one life to give; Who stands if freedom falls? Who dies if England lives?\n\n\n![](%asset_url%pictures/SurnamesP/PhippsC-grave.gif){.left}\n\n![Who stands if freedom falls, who dies if England lives? notice from father, courtesy Dover Express ](%asset_url%pictures/SurnamesP/PhippsCnotice.gif "Who stands if freedom falls, who dies if England lives? notice from father, courtesy Dover Express "){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(445, 'C', '', 'Phipps', 'Charles Phipps, G/536(6)0, enlisted in Sittingbourne, and was a Private in the 7th battalion of the Buffs (East Kent Regiment). He was 30 when he died on 1 July 1916. He is commemorated at Thiepval memorial in France.\n\nBorn in Dover, he was in 1911 a butcher''s assistant, and one of five sons of James William, a labourer, and Ellen Phipps, of 49, Military Road, Dover, and brother to Edward, James, and Frederick, who also died. He lived in Milton Regis.\n\n\n![C Phipps on Thiepval memorial, by Michelle and Andy Cooper](%asset_url%pictures/SurnamesP/PhippsCThiepval.gif "C Phipps on Thiepval memorial, by Michelle and Andy Cooper"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(446, 'E', '', 'Phipps', 'Edward Arthur Phipps, 32107, was a Private in "A" company of the 7th battalion of the Prince of Wales'' Volunteers (South Lancashire Regiment). He was 29 (26?) when he died on 3 August 1917, and is commemorated on the Menin Gate memorial in Belgium.\n\nBorn and enlisting in Dover, and in 1911 a butcher''s assistant, he was the son of James William and Ellen Phipps, of 49, Military Rd., Dover, formerly 66 Snargate Street, and in 1891 of 10 Seven Star Street, and brother to Frederick, James, and Charles who also died. His enlistment number is sequential with James'', suggesting they went together to enlist. Either James or a fifth son Mr and Mrs Phipps had serving had been wounded on 8 July 1917. Of their five sons, only Percy, the youngest, survived.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(447, 'E', 'W.', 'Phipps', 'Edwin Wilfred Phipps, G/21458, was 19 when he died of wounds on 25 September 1917. He enlisted in Dover and was a Private in the 1st battalion of the Buffs, and was buried at Bethune Town Cemetery, France.\n\nHe was the son of Mr. and Mrs. Edwin Phipps, of 3, Eastholm Mansions, Highbury Road, Weston-super-Mare, and lived at Maidstone (Soldiers Died says Bexhill-on-Sea). He was born at Maidstone \n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(448, 'F', 'E.', 'Phipps', 'Frederick Edward Phipps, L/8713, was 31 when he died from wounds on 5 April 1915 at No 12 General Hospital, Rouen. He enlisted in Canterbury and was a Lance Corporal in the 2nd battalion of The Buffs. Born at St Mary''s and living in Dover and in the Royal Army" in 1911, he was the son of James William and Ellen Phipps of 66 Snargate Street, Dover. His brothers Edward, Charles, and James also fell.\n\nHe now lies at St Sever Cemetery, Rouen in France. His grave is at the bottom, near left, of this view:\n\n\n\n \n\n \n\n \n\n \n\nThe words at the bottom of his headstone poignantly read:\n\nGone but not forgotten from your loving Father, Mother, and Brother\n\nOf the five brothers only Percival survived. \n\n\n![FE Phipps gravestone, by Andy and Michelle Cooper](%asset_url%pictures/SurnamesP/PhippsFEgrave.gif "FE Phipps gravestone, by Andy and Michelle Cooper"){.left}\n\n![FE Phipps, view of St Sever, by Michelle and Andy Cooper](%asset_url%pictures/SurnamesP/PhippsFEStSever.gif "FE Phipps, view of St Sever, by Michelle and Andy Cooper"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(449, 'J', 'W.', 'Phipps', 'James William Phipps, 32108, was a Private in the 2nd battalion of the Prince of Wales'' Volunteers (South Lancashire Regiment). He is commemorated on the Tyne Cot memorial in Belgium, having died on 21 August 1918, when he was 35.\n\nHe was born and enlisted in Dover and in 1911 was a butcher''s assistant. He was a brother of Frederick, Charles, and Edward, who also died, and they were sons of James William and Ellen Phipps, of 49, Military Rd., Dover.\n\n\n![](%asset_url%pictures/SurnamesP/PhippsJW.gif){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(450, 'W', 'R.', 'Phipps', 'William Roach Phipps, T4/059124, enlisted in Dover and was a Driver in the 276th Horse Transport Company of the Army Service Corps. He was buried at sea after dying of enteric on 27 March 1915. He is commemorated on the Chatby Memorial, Egypt\n\nHe was 30 and was born and lived in Dover. He was the son of Mrs Sarah Phipps, of  31, Tower Hamlets Rd., Dover.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(451, 'W', 'T.', 'Piddington', 'William Thomas Piddington, CH/812, was a Serjeant at the Royal Marines Depot at Deal, in the Light Infantry. He died on 5 February 1915, when he was 54. He is buried at St James cemetery in Dover, United Kingdom.\n\nHis parents were William and Susannah Piddington, and his father was a teacher of music, born at Woolwich, as was William himself. In 1881 he was living at the Royal Marine Barracks at Chatham, aged 20, in a unit led by Private Richard Drew. There were 25 to the unit, ranging from a lad of 14 who was a drummer, to a 37-year-old sergeant. By 1901 he was living in Deal, had married Mary, also from Woolwich, and had a daughter, Marjorie, who was born at Deal and was then 8 years old. He served for 30 years and six months in the Royal Marines, as a bandmaster, and was in the Militia staff at Dover, and had gained a distinguished conduct medal. He had also been an instructor of music to the Gordon Boys'' orphanage.*\n\nWilliam was a Freemason, and from Lord Warden Lodge no 1096 he joined Military Jubilee Lodge 2195 on 28 September 1899. He was secretary there between 1899 - 1900, and 1902 -1905,and became senior warden in 1901. He left that Lodge on 22nd August 1906.\n\nHe had been out of the service for 12 years, but was called up as a Naval Pensioner when the Great War began. By then living at 26 Marine Parade in Dover, he underwent an operation at the end of January 1915, at St Bartholomew''s Hospital in London. This was deemed a success, and there was every hope of his early recovery. However, he relapsed, and passed away at 2.15am on 5 of February.\n\nThere were many expressions of sympathy and regret when he died. His coffin,  inscribed with the words "William Thomas Piddington, died 5th February 1915, aged 54 years",  and draped with the Union Flag, was carried to the cemetery by four of his colleagues. There, with the Reverend T. B. Watkins officiating, as he had at St James'' church beforehand, the coffin was lowered into a grave lined with yew sprigs.\n\nIn ever loving memory of William Thomas Piddington who passed peacefully away on Feb 5th 1915 aged 54 years To live in the hearts of those we love is not to die Also of Marion Piddington widow of the above who died October 4th 1936 aged 70 years Peace, Perfect Peace\n\nMany people attended, including Mr R J Wells and Mr T Francis from the Military Jubilee Lodge, and there were numerous floral tributes. Those from his immediate family read:\n\n"To my dear one, with everlasting love until we meet, from his loving Wife" "With our very best love to our darling dad, from Hilda and Frank and little Frankie" "With fondest love to our darling dad, from his sorrowing daughter Marjorie and Bob" "With fond love to one of the best of fathers, from his sorrowing daughter and son-in-law, Ethel, Cecil, and baby Eileen" "With loving sympathy from his sister" (Mrs Cooper)\n\nThere were many others, including one from the Golden Cross Self-Help club at St James Street, from the Band of the Royal Marines at Deal, from friends at Deal and Walmer, and from the Sergeants'' Mess at Deal. The Lodge made grants to the family after William''s death, while Mary''s address became Richmond House, Marine parade.\n\nThe next year, 1916, "In Memoriam" notices were posted:\n\n\n\nLater that year, in May, Marjorie married Bob (Robert Baxter) at St Mary''s church. Rev Watkins again officiated. By 1924 Mrs Piddington was living at 8 Cambridge Terrace'' she confirmed her husband satisfed one of the conditions for inclusion on the Memorial as he had been in receipt of a war pension\n\n* All inmates of the Gordon Boys'' Orphanage in St James Street were dispersed in the early part of WWII, and the orphanage itself was destroyed by enemy action during that war. The Gordon Boys never returned.\n\nNote: On census night 1901 Marjorie was in a children''s ward at the fever hospital, Edred Road. Frank Foster was there at the same time.\n\n\n![](%asset_url%pictures/SurnamesP/Piddingtongrave.gif){.left}\n\n![In memoriam notice, from Mrs Piddington, courtesy Dover Express](%asset_url%pictures/SurnamesP/PiddingtonWTnot1.gif "In memoriam notice, from Mrs Piddington, courtesy Dover Express"){.right}\n\n![In Memoriam from r Piddington''s daughters, courtesy Dover Express](%asset_url%pictures/SurnamesP/PiddingtonWTnot2.gif "In Memoriam from r Piddington''s daughters, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(454, 'A', 'C. H.', 'Pierce', 'Alfred C. H. Pierce, 9284, served as a Private in AA company of the 1st battalion of the Loyal North Lancashire Regiment. He was 28 when he died on 5th October 1917. He is buried at Buckland cemetery, Dover in the United Kingdom. at the foot of his headstone are the words, "Thy Will be Done".\n\nBorn in Dover, he was the son of the late Eliza Betsey Pierce and of Alfred James Pierce, from 1 Edgar Crescent, Dover, brother to Samuel, below, and brother-in-law to James Belcher. Hilda, sister to Samuel and Alfred, and also at 1 Edgar Crescent, asked for all three named to be commemorated on the Town Memorial.\n\n \n\n\n![ACH Pierce, headstone, by Simon Chambers](%asset_url%pictures/SurnamesP/PierceACHheadstone.gif "ACH Pierce, headstone, by Simon Chambers"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(455, 'A', 'E.', 'Peirce', 'Arthur Edmund Peirce, T/3190, joined in Dover the 4th Buffs as a Private, and was attached to the 2.4th Royal West Kent Regiment. He was sent to the Dardanelles, and he died from bronchial pneumonia at the General Hospital, Alexandria, on 19th December 1915, when he was 29. He is buried at the Alexandria (Chatby) Military and War Memorial Cemetery, Egypt.\n\nHis parents were William and Annie Peirce, from Brook Villa, River, Dover. He lived in River.\n\n(on the memorial Private Peirce''s name is listed under Pierces)\n\n\n![A E Pierce, courtesy Dover Express](%asset_url%pictures/SurnamesP/PierceAE.gif "A E Pierce, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(456, 'S', '', 'Pierce', 'Samuel Pierce, 9810, enlisted in Canterbury and was a Private in the 2nd battalion of the Loyal North Lancashire Regiment. He died on 26th August 1915, when he was 24, in Mesopotamia. He is buried in the Amara War Cemetery in Iraq.\n\nBorn in Dover, he was the son of the late Alfred James Pierce, from 1 Edgar Crescent, Dover, brother to Alfred, above, and brother-in-law to James Belcher.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(458, 'H', ' ', 'Piggott', '\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(459, 'H', 'W. ', 'Piggott', 'Henry William Piggott, G5853, was a Lance Corporal in D company of the 1st battalion of the Buffs. He was killed in action on 19th April 1916, when he was 23, and is buried at La Brique Military Cemetery in France.\n\nBorn in Winchelsea, Sussex, he enlisted and lived in Dover. He was the eldest son of the late Mr Joseph Piggott and Mrs S Piggott, 13 Wyndham Road, Dover, and later of 11 Ladywell Place, Dover.\n\n\n\nCross to Harry Piggott -he is given the rank of LCpl Fragment of  mourning card; he is described as the "eldest and dearly beloved son". The first verse is "through shot and through shell", but the second couplet is uncertain.\n\n\n\nApril 1917 April 1917\n\nHis brothers were Joe, George, and Reg, and his sisters, Alice and Nell. George, pictured right,  was custodian at Dover Castle for many years while his wife Mabel ran the shop. They lived in Peverell''s Tower.\n\nwith thanks to Nicky McCann\n\n(We Remember 06)\n\n\n![H Piggott](%asset_url%pictures/SurnamesPigg/PiggottH.gif "H Piggott"){.left}\n\n![cross on Harry''s grave](%asset_url%pictures/SurnamesPigg/PiggottHcross.gif "cross on Harry''s grave"){.right}\n\n![mourning card](%asset_url%pictures/SurnamesPigg/PiggottHmourning.gif "mourning card"){.left}\n\n![in memoriam verse from family, courtesy Dover Express](%asset_url%pictures/SurnamesPigg/PiggottHannounce17.gif "in memoriam verse from family, courtesy Dover Express"){.right}\n\n![ionn memoriam verse from sweetheart Edith, courtesy Dvoer Express](%asset_url%pictures/SurnamesPigg/PiggottHannounce172.gif "ionn memoriam verse from sweetheart Edith, courtesy Dvoer Express"){.left}\n\n![George Piggott](%asset_url%pictures/SurnamesPigg/PiggottH-g.gif "George Piggott"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(460, 'C', ' ', 'Pilcher', 'Charles Pilcher. There was a Charles Pilcher, aged 12, in the 1901 census, living at 4 Catherine Place. He was born at River and was the son of John and Elizabeth Pilcher. His sister, Emily, was married in 1912 to Albert Dearlove\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(461, 'G', 'H. ', 'Pilcher', 'George Henry Pilcher, G/861, was born around 1892, the son of Jesse Pilcher and his wife Emily Alice, formerly Jay. The couple had married in 1884. In 1901 the family were living at River Street, River, with Mr Pilcher working as a papermaker. There were then six children living at home; Elizabeth, Herbert, George, Nellie, Ernest and Flora. The family were born locally; Mr and Mrs Pilcher and Elizabeth at Ewell, and the other children at River.\n\nBy 1911 the family had moved to 5 Dublin Cottages, River, and George was working at the nearby papermill, while Mr Pilcher had taken a job as a water worker. They had been joined by another daughter, Beaty, though four of their twelve children had died. Later Mr Pilcher lived at 77 Snargate Street.\n\nGeorge enlisted in Dover to become a Private in the 1st battalion of The Buffs. He died in action on 8 May 1917, and is buried at the Philosophe British Cemetery, Mazingarbe in France.\n\nThe headstone on the left is at SS Peter and Paul, River. It reads: In Loving Memory of Our Beloved One, Herbert John Pilcher, who passed away February 26th 1909 After a long and painful Illness Aged 19 years. Also in Loving Memory of George Henry Pilcher, Brother of the above who was Killed in Action May 8th 1917 Aged 25 years. Also in Loving Memory of Albert Edward Curtis Killed in Action June 17th 1917 whilst serving on HMS Tartar Aged 23 years. Also Alice Emily beloved Wife of Jesse Pilcher and Mother of the above Who died January (illeg) Aged 64 Years. (The date of her death was January 31st 1929; Mrs Pilcher passed away "after much suffering, patiently borne".)\n\ngravestone and transcription Joyce Banks\n\n\n![](%asset_url%pictures/SurnamesPigg/PilcherGgrave.gif){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(462, 'D', 'S. ', 'Pink', 'Donald Stuart Pink, G7000, was an acting Corporal (Company Range Taker) in the 10th battalion of the Queen''s Own (Royal West Kent Regiment). He had been educated at St Martin''s School, and had for some years before enlisting worked as a clerk at Mowll and Mowll, solicitors. He had been in the regiment for a year, but had been abroad for only a few weeks when he died from wounds on 6th (2nd?) June 1916. A nursing sister at the casualty clearing station wrote to his father, "he was admitted suffering from bullet wounds in the mouth and some injury to the spine. He was deeply unconscious and remained so, passing away at 11pm the same day."\n\nHe was 20, and is buried at the Bailleul Communal Cemetery Extension, Nord in France.\n\nHe had been born in Ayr in Scotland, but enlisted and lived in Dover. His parents were Ernest and Edith Morrison Pink, from 26 Fisher Street, Maidstone, formerly of Westgate, and previously of St Martin''s Place, Dover. They had previously lost another son, a clerk in the Land Valuation Office at Dover, who had been accidentally drowned while bathing off Shakespeare Beach in 1914. \n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(463, 'T', 'W. H. ', 'Piper', 'Thomas William Harvey Piper, 01-384 (91-0384), was a Gunner in the Territorial Royal Field Artillery, serving in the 222nd Brigade. He was 24 when he died on 5th September 1917, and is commemorated on the Basra Memorial in Iraq.\n\nHe was the son of William and Mary Ann Piper, from 63 North Road, Hythe, Kent. He was born and enlisted in Dover.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `casualty` (`id`, `given_name`, `middle_names`, `family_name`, `narrative`, `war`, `civilian`, `gender`, `final_resting_place`, `date_of_birth`, `date_of_death`, `commemoration_photo`, `rank_at_death`, `service_country`, `place_of_birth`, `last_known_address`, `last_known_address_year`, `recently_uploaded`) VALUES
(464, 'G', 'S. ', 'Podevin', 'George Sibbit Podevin was a temporary Captain (from 8th August 1914), attached to a Nigeria Regiment, according to one source, and according to another source, he had served in the South African Constabulary at the beginning of the 20th century. As a retired Captain (he relinquished his commission on 22 September 1915), he was a Political Officer in Bamenda, Cameroons. He was formerly Special List.\n\nHe died on 2nd December 1918 from pneumonia, following influenza.  Baptised at St James on 16th February 1878, he was the "beloved and only surviving son" of the late Joseph George Podevin and Mrs Catherine Podevin (nee Irons), of 16 (alternatively, 8) Pembridge Square, London, formerly of Dover.\n\nJoseph Podevin was given as "gent" in the baptismal entry, and on the date of his marriage at St James, 24th March 1877, was the Secretary of the Yacht Club, son of Joseph Jackson Podevin, a hotel keeper. His wife was the daughter of Richard Irons, Harbour Master\n\nIn Loving Memory of Joseph George Podevin Born 13th August 1851. Died 7th May 1909 Also of his son Richard Irons Podevin who died Johannesburg, South Africa 15th day of November 1909 aged 30 years "When the summons came, the spirit returns to God who gave it" Also of George Sibbit Podevin Beloved son of the late J G Podevin Assistant District Commissioner and Political Officer at Bamenda, Cameroons who died there on 2nd December 1918\n\nwith thanks to Joyce Banks with thanks to Dave Dixon (for more information on the family tree, see faded genes) with thanks to Neil Clark\n\n\n![headstone, by Joyce Banks](%asset_url%pictures/SurnamesPigg/PodevinGSheadstone1.gif "headstone, by Joyce Banks"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(465, 'A', 'G. ', 'Port', 'Albert Goddard Port died as a Merchant Naval man, working for the SECR, when the SS Achille Adam was lost on 24th March 1917. He was 29, and is commemorated on the Tower Hill Memorial in London, United Kingdom\n\nHe was born at Dover and was the son of the late William and Sarah Port.\n\n \n\n\n\nThe scroll reads: this scroll is written to honour that great company of our men who though trained only to the peaceful traffic of the sea, yet in the your of national danger their themselves with the ancient skill and endurance of their breed to face new perils and new cruelties of war and in a right cause served fearlessly to the end and this is written further to ensure that among the rest shall be ever freshly remembered the name and service of Albert Goddard Port.\n\nscroll and plaque by very kind courtesy of Roy and Sue Harwood\n\n\n![names on the Tower Hill Memorial, by Simon Chambers](%asset_url%pictures/SurnamesPigg/PortAGAchille.gif "names on the Tower Hill Memorial, by Simon Chambers"){.left}\n\n![](%asset_url%pictures/SurnamesPigg/PortAG-penny.gif){.right}\n\n![](%asset_url%pictures/SurnamesPigg/Port-scroll.gif){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(466, 'C', 'W. ', 'Port', 'Charles William Port, L 7851, had eight years military service, and was called up on 4th August 1914 from his occupation as an SECR Marine Porter. He served in the 1st battalion of the Buffs, where he was promoted to the rank of serjeant for gallantry on the field and gained the Military Medal.\n\nHe was 34 when he died of wounds on 8th July (June?) 1916, and is buried at Bethune Town Cemetery in France.\n\nHe was born and enlisted in Dover, and lived at Tower Hamlets, there. His wife was A S Port, from 63 Penfold Road, Folkestone. His father and brothers are pictured below. \n\n \n\nFather Albert Port, employed by the SECR. Albert Port, Seaman Gunner. He had ten years service, and had been active in the Sulva Bay landing and in Dardanelles operations. P Port, Able Seaman, serving on HM patrol vessel   E Port, Private in the  Machine Gun Corps, and formerly in the Buffs. He went out with the first expeditionary force, and had only ten days leave in nearly three years,\n\n\n![CW Port, courtesy Dover Express](%asset_url%pictures/SurnamesPigg/PortCW.gif "CW Port, courtesy Dover Express"){.left}\n\n![Albert Port, father, courtesy Dover Express](%asset_url%pictures/SurnamesPigg/PortAsnr.gif "Albert Port, father, courtesy Dover Express"){.right}\n\n![Albert Port, son, courtesy Dover Express](%asset_url%pictures/SurnamesPigg/PortA.gif "Albert Port, son, courtesy Dover Express"){.left}\n\n![P Port, courtesy Dover Express](%asset_url%pictures/SurnamesPigg/PortP.gif "P Port, courtesy Dover Express"){.right}\n\n![E Port, courtesy Dover Express](%asset_url%pictures/SurnamesPigg/PortE.gif "E Port, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(467, 'D', 'R. B. ', 'Pott', 'Daniel Richard Barwick Pott, 910798 (910978) , on the right of the picture, was a Shoeing Smith in the Territorial Royal Field Artillery, 102nd battery. He had been employed by the Post Office before enlisting, and had served in the Royal Navy. He died on 19th October 1918, when he was 23, is buried at the Quetta Government Cemetery, and is commemorated on the Delhi Memorial (India Gate) in India.\n\nHe enlisted and lived in Dover, and was said to have been one of a large family, which included his sister, Emily, and his brother Robert, on the left in the picture. Robert serving in the 2/3rd Kent RFA, had previously worked at Tilmanstone Colliery.\n\nTheir parents were Daniel and Emma Pott, née Barwick, of 80 Glenfield Road, Dover. Daniel senior, seated in the picture above, had moved to Dover with one of his brothers from the Isle of Sheppey, where he was born. He had served in the South African War, and was serving during the Great War as a Private aboard the hospital ship Dieppe. He also had worked at the Post Office.\n\n"Ever in our thoughts" - from Mum, Dad, Brothers and Sisters - 1943\n\nwith thanks to Christine Hodgson\n\nNote: Mrs Emma Pott died on 2 November 1948\n\n\n![R Pott, D Pott, and father, courtesy Dover Express](%asset_url%pictures/SurnamesPigg/PottDRB.gif "R Pott, D Pott, and father, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(468, 'E', 'E. ', 'Potter', 'Edward Ernest Potter. One such is noted in civil records as having been born in Dover in 1887.\n\nCWGC and SD refer to Ernest Edward Potter, 9170, who was a Serjeant in the 8th battalion of the Seaforth Highlanders (Ross-shire Buffs, the Duke of Albany''s). He died in action on 8th April 1917, and is buried at the Faubourg D''Amiens cemetery in France. He was born in Hougham  and enlisted at Aldershot.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(469, 'M', 'W. ', 'Potter', 'Maurice William Potter, K33152 (K387S2), was a first class Stoker aboard the HMS Bacchante, land-based with the HMS Pembroke. He died while home on leave from bronchitis and pneumonia following influenza on 8 March 1919. He was 28.\n\nHis parents were  John Henry Potter and Fanny Lavinia née Mills, of 8 Marine Parade, later 4 Marine Place, Dover. Fanny was the sister of Robert George Mills and the aunt of David Thomas William Reynolds. In 1911 the family were living at 7 Bowling Green Terrace, with Mr Mills working as a labourer in the Government Dockyard and Maurice, then 20, working as a labourer for a haulage contractor. William, the younger son, was then aged 4. In 1901, when the family was living at 13 Hartley Street, a daughter Annie, aged 11, was with them.\n\nIn 1913 Maurice married Annie Bryant. The couple had a daughter, Doris, in 1915.\n\nMaurice was buried at St James on Thursday 13 March, attended by many members of his family, and by four representatives of the RAOB, of which he was a member.\n\nThe CWGC gravestone in the picture, at the front of the grave, is dedicated to Maurice. The inscription on the large stone at the back reads:\n\nIn Loving Memory of Maurice William Potter died 8th March 1919 aged 28 years also William Alfred Potter brother of the above died 31st October 1936 aged 30(?) years also John Henry Potter Father of the Above died 7th September 1947 aged 78 years also his wife Fanny L. Potter died 5th May 1948 aged 72 years also Thomas Graham died 16th June 1927 aged 37 years also Ruby Graham died 18th July 1931 aged 13 years also Walter Graham died 27th September 1933, aged 18 Years RIP also Maurice Gilbert Graham son of the above who passed away 27th April 1939 aged 26 years 1925 - In ever loving memory of our dear son and brother Maurice W Potter (Bingo) who died March 8th 1919. The flowers we lay upon his grave May wither and decay. But our love for him who sleeps beneath Will never fade away. From Mum, Dad, Bill, his only sister, and Tom. Also Annie E Potter, wife of the above, who died June 2nd 1920. "At Rest". They miss her most who loved her best. From her little daughter Doris (Chatham). 1937 - In loving memory of our dear son, Maurice W. Potter ("Bingo"), 1st Class Stoker, HMS Bacchante, who died 8th March 1919. You are sleeping with your brother Bill, The Lord has called him home, The call will come for me and Dad, Now we are left alone.\n\n\n![MW Potter, courtesy Dover Express](%asset_url%pictures/SurnamesPigg/PotterMW.gif "MW Potter, courtesy Dover Express"){.left}\n\n![MW Potter, grave at St James, by Simon Chambers](%asset_url%pictures/SurnamesPigg/PotterMWgrave.gif "MW Potter, grave at St James, by Simon Chambers"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(470, 'S', 'T. ', 'Potter', 'Stephen Thomas Potter was a Stoker in the Royal Navy, serving with HMS(T) Embra. He was invalided on 17 October 1917 from a Naval hospital. He died on 10 June 1920, aged 39, at his home at 7 Albany Place, Dover, "after a long and painful illness, patiently borne". .\n\nHe was the son of Morris W and Mary A Potter, and the husband of Hester Priscilla S, née Crump, whom he had married in 1904. His wife stated he had been in the Dover Patrol, and had a Mercantile Marine medal, as well as the British War and Victory Medals. He also had a silver medal and certificate, 11327.\n\nwith thanks to Diane Potter\n\n"Until the day breaks"\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(471, 'R', 'G.  ', 'Powell', 'Robert George Powell, 93463, was a Bombardier in the Royal Garrison Artillery, serving in the 195th Heavy Battery.\n\nHe was born and enlisted in Dover. He died of wounds on 19th August 1918, and is buried in the Jerusalem War Cemetery, Israel (left).\n\nMrs B V Powell of requested that his name should be placed on the Memorial\n\n \n\nphotos: with thanks to Edward Sperinck\n\n\n![R G Powell, headstone, by Edward Sperinck](%asset_url%pictures/SurnamesPigg/Powell-RG-stone.gif "R G Powell, headstone, by Edward Sperinck"){.left}\n\n![Jerusalem War Cemetery by Edward Sperinck](%asset_url%pictures/SurnamesPigg/Powell-RG-Jerusalem.gif "Jerusalem War Cemetery by Edward Sperinck"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(472, 'R', ' ', 'Prescott', '\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(473, 'R', 'H. ', 'Prescott', 'Richard H. Prescott, L67920 (L/16720), in civilian life a french polisher, was an acting Corporal in the 9th battalion of the Royal Fusiliers (City of London Regiment). He was formerly 11024 of the 3rd (KO) Hussars. Born at Charlton, Dover, and living and enlisting in that town, he was 25 when he died on 7th July 1916. He is commemorated on the Thiepval memorial in France.\n\nHis parents were the late Police Constable Richard John and Mary Ann Prescott, who died in 1912, from 1 Tower Hill, Dover. His brother John served in the Royal Navy, and had several narrow escapes from torpedoing. His sister, Lucy Prescott, was living at 24 Westfield Road, West Ealing, where she was working with her sister, Winifred, in a munitions factory. Miss Prescott married later in 1916, becoming Lucy Isabel Watson, living at 66 Gibson Square, London.\n\nThe picture above shows Winifred Prescott marrying Thomas Harman, around October 1916.. Her sister Lucy is at the bottom left, and her future husband, who served in the Royal Artillery, is probably the man in military uniform in the middle row. . .\n\nwith thanks to Chris Harman Note: Richard is cousin to Joseph Brann, died 1945. Joseph''s mother, Nellie, was cousin to Richard''s father.. In the wedding picture Nellie is in the back row, first from the right. Richard was also first cousin to John Henry Hayward; his mother, Margaret, and John''s mother, Mary, were sisters, daughters of Henry Bartlett\n\n\n![RH Prescott, on Thiepval, by Andy and Michelle Cooper](%asset_url%pictures/SurnamesPigg/PrescottRH.gif "RH Prescott, on Thiepval, by Andy and Michelle Cooper"){.left}\n\n![](%asset_url%pictures/SurnamesPigg/Prescott-wedding.gif){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(474, 'A', '', 'Priest', 'Alfred Priest, 9452, was Rifleman in the 1st battalion of the Rifle Brigade (Prince Consort''s Own).\n\nHe was born in London and enlisted and lived in Dover. He had been a Goods Foreman on the railway before being called up on the Reserve, and lived with his wife Susannah Ethel Priest, at 7, The Grove, Barton Road, Dover. He left for France on 4th August 1914. On 14th May 1915 he was having a rest break, and a shell hit the trench where he had been. Many of his comrades were hurt, so he went to help save them. He was then hit by a further shell, and killed outright. His body was never recovered, and he is commemorated on the Menin Gate memorial in Belgium.\n\nHe never saw his new baby daughter, who was born after he was posted overseas. Mrs Priest, his widow, who worked as a machinist at the Dover Marquee Company, eventually moved to 60 Stanhope Road, living next door to her son, Alfred, at number 62.\n\nThe gravestone, right, is at St Mary''s. The inscription reads:\n\nIn Affectionate Remembrance of Our Dear Father and Mother Alfred Priest Who died August 8th 1905 Aged 52 years. Also of Ellen Ann Priest Who died January 20th 1909 Aged 55 years “Peace Perfect Peace” Also of my dear Husband Alfred Priest Eldest Son of the above Who was Killed in Action at Ypres May 14th 1915 Aged 29 years "He Gave His Life For His Country''s Sake"\n\ninformation with thanks to John Priest grave by Jean Marsh, transcription by Joyce Banks\n\n\n![A Priest, courtesy Dover Express](%asset_url%pictures/SurnamesPigg/PriestA.gif "A Priest, courtesy Dover Express"){.left}\n\n![A priest, on Menin Gate, by Andy and Michelle Cooper](%asset_url%pictures/SurnamesPigg/PriestAmenin.gif "A priest, on Menin Gate, by Andy and Michelle Cooper"){.right}\n\n![](%asset_url%pictures/SurnamesPigg/PriestAlfredgrave.gif){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(475, 'E', ' ', 'Pullen', 'Born in Dover, his father was John Pullen, from 12 Sturry Road, Canterbury. He was married to Ellen Pullen, from 162 Amelia Street, Walworth Road, London. He lived in Walworth when he enlisted in London.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(476, 'F', 'C. ', 'Purser', 'Frederick Charles Purser, T/200(0)30, was a Corporal in the 6th battalion of the Buffs, having enlisted in Dover and possibly then living at 58 Folkestone Road. He was killed in action (Soldiers Died states died of wounds) at Albert on 5th April 1918, when he was 27. He is buried at the Gezaincourt Communal Cemetery Extension in France, II J 15\n\nThe son of Joseph Purser, from Bedfordshire, and Sarah, his wife, from Hertfordshire, Frederick was christened at St Andrew''s, Buckland, on 14 September 1889, having been born on 11 August. The family were then living at 13 Union Road and Mr Purser was working as a gasman. In 1891 the family were at 6 Moneta Cottages, Union Road, and at home were sons William then 15, and working as a farm labourer, and Frederick, and daughters Elizabeth, 11, Maud, 6, and Emily, 4. In 1901 the family had been joined by another daughter, Winifred, then 6. Mrs Purser died early in 1907, and Mr Purser in 1910.\n\nIn 1911 he was living with his sister Emily and her husband Reuben Marchington at 24 Pretoria Terrace, Dover, working as a coal porter at the Gas Works. Emily and Reuben had married on Christmas Day 1907 at St Bartholomew''s, Charlton, and by 1911 they had one little daughter Winifred, then nine months.\n\nIn 1912 Frederick married Florence Hedgecock, and in 1914 they had a son, Frederick\n\n(see Gas Works)\n\n\n![](%asset_url%pictures/SurnamesPigg/Purser1919.gif){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(477, 'G', '  ', 'Rawlings', 'George Rawlings, G/3929, was born in Bow, but lived and enlisted in Dover. In 1911 he was working as a beer bar manager and living at 1 Westbury Road, Dover, with his wife, Ellen, his mother-in-law Sarah Bond, and his sons Charles, George, and Alfred, and his daughters Alice and May.\n\nHe became a Corporal in The Queen''s (Royal West Surrey Regiment). He served in the 1st battalion, and died on 25th September 1915. He is commemorated on the Loos Memorial in France, panel 13-15.\n\nNote: George Rawlings'' medal card states that his death was presumed on 29/5/15 \n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(478, 'E', 'A.  ', 'Raysbrook', 'Ernest Albert Raysbrook, 305485, was born in Dover on 22 August 1884. He was the son of Frederick Raysbrook, a basket maker born in Ashford, and his wife Agnes, née Pattison, born in Smeeth, Kent. In 1891 the family were living at 131 London Road, Dover, with two sons and a daughter having been born at Peckham, and Ernest and his younger brother Sidney having been born at Hougham. In 1901, the family were living at 10 Eric Street, Buckland, Dover, and Ernest, then aged 16, was working as a builder''s labourer.\n\nErnest lost his life on 28 April 1916, and is buried at the Malta Capuccini Naval Cemetery, 316. He was a 1st class Stoker in the Royal Navy, last serving on HMS "Russell". At the time of his death, his wife, Rebecca, was living at 24 Clarendon Street, Dover.\n\nNote: Ernest''s nephew, Sidney Ernest F. Raysbrook, died in World War II, with the HMS Repute. In 1988 Sidney''s sisters, Ivy, Rose, and Daisy, laid a simple wreath of flowers at the War Memorial during the Remembrance service.\n\nResearch note: Ernest Raybrook (sic) according to the National Archives was born in Dover on 22 Aug 1884. No middle name is noted. He is known as "Raybrook" on both the national archives and the CWGC; the CWGC records him just by the initial "E", no forename. The 1901 census has for Ernest Raysbrook an aged of 16, which suggests a date of birth before 31 March 1885. FreeBMD has an Ernest Albert Raysbrook registered in Dover in the December quarter 1885. FreeBMD does not have a "Raybrook" born in Dover.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(479, 'Frank', '  ', 'Reader', 'This was Frank Reader, and could be Frank Reader, the son of Henry and Mary Reader. In 1891 they were living at 58 East Cliff, Dover. Henry was then a Bath Chair Man, but previously had been living at The Barracks, Kingsthorpe Road, Northamptonshire and was a militia man. Frank was born around 1881 in Northampton; he is recorded as Harry in that census, but as Frank in the 1891 cenus. One of Frank''s brothers, Henry in the 1881 census and Harry in the 1891 cenus, four years older than Frank, had been born at the Shorncliffe Army Camp. By 1901 Henry was a widower, living at Douro Cottage, St James.\r\n\r\nFrank''s name may have been Henry Frank Reader; if so then he is probably the man who was born on 6 April 1880 in Northampton, and who lost his life on 15 October 1914, serving with HMS Hawke. He is commemorated on the Chatham Naval Memorial, England, panel 3. He was married to Mary Jane Reader, from 143 Cowick Road, Upper Tooting, SW17\r\n\r\n', 1, 0, 'M', NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 0, 1),
(480, 'P', 'S.  ', 'Reader', 'Percival Stanley Reader, 16, enlisted in Dover, and was a Private in the 7th Dragoon Guards (Princess Royal''s) of the Household Cavalry and Cavalry of the Line (including Yeomanry and Imperial Camel Corps).. He was reported wounded and missing on 21st December 1914, and later was notified as killed in action. He was 27, and is commemorated on Le Touret memorial in France. On Wednesday, 29th September 1915, a memorial service was held at Buckland church for him and a number of other parishioners who had become casualties. Two of his brothers sang in the choir. \n\nHe was born at Tunbridge Wells, and enlisted in Dover. He was the son of William Nicholas Reader, who was a goods agent at the Dover Town Station for the SECR, and his wife Clara Jane. They lived at 62 Buckland Avenue, Barton Road, Dover, and later at 13 Buckland Avenue. They lost a second son, Reginald, below. They also had two other sons on active service.\n\n\n![PS Reader, courtesy Dover Express](%asset_url%pictures/SurnamesR/ReaderPS.gif "PS Reader, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(481, 'R', 'E.  ', 'Reader', 'Reginald Edward Reader, S/27441, enlisted in Brighton and had lived in Dover, and was a Rifleman in the 1st battalion of the Rifle Brigade (Prince Consort''s Own) (formerly R/30199 of the KRRC), and attached to the Royal Flying Corps. He was 31 when he died of wounds on 17th May 1917. He is buried at Etaples Military cemetery in France.\n\nReginald was brother to Percival, above, and also born at Tunbridge Wells. His wife was Phoebe Clara Reader, who lived at 11 Western Road, Tunbridge Wells, Kent. She had previously been living in Burgess Hill, Sussex, and her parents, Mr and Mrs Sharp, lived at 1 Alfred Road, Dover.   \n\n\n![RE Reader, courtesy Dover Express](%asset_url%pictures/SurnamesR/ReaderRE.gif "RE Reader, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(482, 'G', 'W. ', 'Redgate', 'George Williams Redgate.  He was 42, and an Artificer Engineer, when he died on 9th January 1918. He served with the HMS "Racoon", which was wrecked off the Irish coast.   He is buried at Saint Peter and St Paul''s, River, Dover in the United Kingdom.\n\nHe was the son of John and Mary Ann Redgate, husband of Helena Redgate, of 1 Ellas Road, Crouch Hill, London.\n\nTo be confirmed is whether George was the person who wrote of the sinking of the "Bluecher" when he was aboard the "Princess Royal"  That George''s parents were Mr and Mrs Redgate, of 1 Glebe Land Cottages, River, and Mr Redgate worked for 30 years at the Packet Yard in Dover. George also worked there and was considered well-known in Dover. He wrote thus:\n\n"It is evident the Germans did not expect us, as some of the "Bluecher''s" officers had their pyjamas on under their uniform as though they had turned out hurriedly. One who was saved had not been touched by anything, but the blast from a busting shell had driven his pyjamas right into his flesh so that as long as he lives he will always be ready for bed. It was a sight to see the "Bluecher" gradually settling and then disappear, and the Zeppelins hovering overhead dropping bombs on their own unfortunate countrymen. They carefully lept out of range of our 13.5''s however and we could not afford to stop as the submarines were getting busy. We fired our first round at 9.7 and finished up just before "opening time". The "Molkte" will remember the "Princess Royal" and I am very doubtful as to her reaching harbour. She was badly on fire when we saw her last."\n\n\n![G W Redgate, grave, by Simon Chambers](%asset_url%pictures/SurnamesR/RedgateGWgrave.gif "G W Redgate, grave, by Simon Chambers"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(483, 'R', '  ', 'Reeder', 'Robert Reeder was a Captain and Flight Commander with the Royal Flying Corps, and from the Manchester Regiment, with the 10th, formerly 6th, battalion. He was killed in action in France on 6 January 1918  when he was 24, and is buried at the Doullens Communal Cemetery Extension No 1 in France.\n\nHe had been a scholar and pupil teacher at St Martin''s and from St Martin''s had won a scholarship to the County (now Grammar) School in 1907. He had also been an Assistant Master at the Barton Road School. He enlisted in the Artists'' Rifles while a student at St John''s College, Battersea, from which he graduated in 1916. He is named on the memorial there. He was eventually commissioned in the Manchester Regiment TF.\n\nHe was the son of Captain R J Reeder (Royal Engineers) and Lilian Maud Reeder, from 19a Emmanuel Road, Balham, London, formerly 9 Staff Colony, Tidworth, Hampshire. In 1911 he and his brother Charles were living with their mother at 19 Malmains Road, Dover, where Robert, aged 14, was a student teacher. His nephew, Robert Reeder, son of his brother Charles, lost his life in WWII. His brother-in-law, Leslie Nowers,  was lost in the Atlantic Ocean on 27 June 1918.\n\nResources (.pdf)\n\nRobert Reeder was a trainee teacher, and knew casualty A T Eaves. He is one of the casualties for whom resources were found for the "Unknown Warrior 90th Anniversary" project, supported by the Heritage Lottery Fund\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(484, 'W', 'D''A. ', 'Reeve', 'Wentworth D''Arcy Reeve (Charles D''Arcy Edmund Wentworth Reeve) was a Captain in the Royal Flying Corps and Suffolk Regiment. He died on 18th July 1916 at Hounslow Heath, and is buried in Great Livermere (St Peter) Churchyard, Suffolk.\n\nHe was the son of Mr Charles Sydney Wentworth Reeve and Annie Beatrice Reeve, née Holden, from Thorpe Satchville, Melton Mowbray and Livermere Park, Bury St. Edmunds, where they kept a number of servants. The couple were married on 9 May 1889 at St Mary the Virgin, Dover. Then Mr Reeve was living at Beach Street and was a Lieutenant in the 19th Prince of Wales Own Hussars. Miss Holden was the daughter of John Rose Holden, a barrister, and living at Victoria Park.\n\nCharles was the youngest of four children;  he had two sisters,  Helen Laura Wentworth Reeve and Margery Beatrice Wentworth Reeve, and a brother John. Talbot Wentworth Reeve. These three were all christened at St Mary the Virgin, Dover, between 1890 and 1892; the Reeves were then liviing at Victoria Park (no 13 in 1892, the home of the Holden family). Born in Owsden, Suffolk, on 5 August 1894, Charles was a 2nd Lieutenant in the Suffolk Regiment, while training to fly at the Military School, Farnborough, on a Maurice Farman Biplane.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(485, 'E', '  ', 'Reeves', 'Edward Reeves, 156975, enlisted in Dover and was a Gunner in the 174th Siege Battery of the RGA. He died on 17th/18th September 1918 from shell wounds that he had received in action at St Quentin. He is buried at Heath Cemetery, Harbonnieres, France.\n\nHis parents were Mr G R and Mrs S Reeves, from 4 Durham Place, Dover, in which town he was born. He was their fourth son. His wife was Mrs H E S Reeves, who lived at 39 Limekiln Street, and later at 22 (CWGC says 2) Victoria Dwellings, Dover.\n\nIn September 1940, his sister Lizzie and brother-in-law Charlie, and his nieces, from Hull, inserted an in memoriam notice "In loving memory of our dear brother (Ted)... dearly loved and sadly missed".\n\n"To the cherished memory of Gnr. Edward (Ted) Reeves ..."Sleep lightly Ted, thou art for King''s guard in the morning" - Stewart." - 1950\n\n\n![E Reeves, courtesy Dover Express](%asset_url%pictures/SurnamesR/ReevesE.gif "E Reeves, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(486, 'M', 'B. ', 'Reeves', 'Michael Bridgland Reeves, 15114, was a Private in the South African Infantry, in the 2nd regiment. He died on 15th December 1917, when he was 43. He is buried in the Fins New British Cemetery, Sorel-Le-Grand in France.\n\nBorn in Middlesex, his mother was Mrs Mary Thornton Reeves, from London. His wife was Minnie Reeves, of 25 Leathern Road, Durban, South Africa. She was born in Tonbridge in Kent. In 1901 they were living at 13 Barton Gardens, Dover, with their then two-year-old son, Basil, who had been born in Clapham. \n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(487, 'A', 'V.  ', 'Reid', 'Albert Victor Reid, 149957, was a Gunner in the 265th Siege battery of the Royal Garrison Artillery (formerly 358677, Kent RGA (T)). He died of wounds on 27 March 1918, when he was 19, and now lies in the St Sever Cemetery Extension, Rouen in France.\n\nHe was the son of Mr Harry Reid, a stoker at the paper mill, and Mrs Mary Reid, of 181 London Road, Buckland, Dover, and was born and enlisted in that town. In 1911 he was living at 153 London Road with his parents, his brothers Henry and Albert, and his sisters Florence and Lucy.\n\nThe words at the bottom of the headstone say:\n\nHis duty was well done Gone but not forgotten\n\nIt is probable that Alfred George Reid, a civilian casualty in 1940, was his brother\n\n\n![AV Reid gravestone, by Andy and Michelle Cooper](%asset_url%pictures/SurnamesR/ReidAVgrave.gif "AV Reid gravestone, by Andy and Michelle Cooper"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(488, 'F', '  ', 'Rich', 'Frederick Rich, G/25996, was a Private in the 11th battalion of the Royal West Surrey Regiment (The Queen''s) (formerly 30601, Oxford and Bucks Light Infantry). He died of wounds on 2nd October 1918 at the 105 Field Ambulance in France, and is buried at the Belgian Battery Corner Cemetery in Belgium.\n\nHe was born in Shorncliffe, and enlisted and lived in Dover. In 1911 he was living at 49 Winchelsea Street, Dover, with his parents, Edmond, an Army Pensioner who was a labourer at the Admiralty Works, and who was born in Taranaki, New Zealand, and Emily Rich, and his sister Florence and brothers William and Francis. Mrs E M Rich, of 49 Winchelsea Street, Dover, probably his mother, Emily, requested that he should be named on the Town Memorial.  .\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(489, 'E', 'J.  ', 'Richards', 'Edwin James Richards, 141973, was a Private in the Machine Gun Corps, 6th battalion Infantry (formerly 8424, The Buffs). He died on 23rd April 1918.  He is buried in Boulogne Eastern Cemetery in France.\n\nHe was was born in 1891 at Temple Ewell, and enlisted in Dover. He was the brother of Mr. Frederick Charles Richards, of 4 Cecil Cottages, Westbere, Sturry, Canterbury. In 1911 he was living with his parents, Edwin Richards, a labourer and his wife Eliza, and his brother Frederick at 9 Dublin Cottages. Also in the home was Horace Holmans, an adopted son, born at Alkham and then aged 15.\n\n*\n\nHorace Benjamin Holmans was born in 1895 at Alkham, the son of John Graves Holmans and Sarah Elizabeth, formerly Standing, née Chadwick. Horace''s middle name comes from his paternal grandfather, Benjamin Holmans, born in 1822 at Great Mongeham, who married Margaret Mary Banks in 1849.\n\nHorace''s parents married in 1891 and Mrs Holmans died in 1895. In 1901 Horace was living with his father and his sister Olive at "The Hermitage", Church Alkham, near Dover. By 1911 he had moved to 9 Dublin Cottages, River, where he was living in the home of his adopted father, Edwin John Richards. He was working as a baker.\n\nOn 20 September 1913, he joined the 3rd Home Counties (Cinque Ports) Brigade of the RAF, becoming 910246. On his attestation his father is noted as living at 9 Dublin Cottages and later at 10 Valley Road, River. He served in India and Mesopotamia, and was discharged as physically unfit on 4 April 1917. He died at the age of 25 in Dover in 1920. His funeral was semi-military, with a band of the Royal Irish Fusiliers attending and bearing and a chaplain to the forces officiating at the graveside. He left a widow, Elizabeth, née Smith, whom he had married in 1918.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(490, 'C', 'W.  ', 'Richardson', 'Charles William Richardson, 71637, was a Gunner in the 287th Siege Battery of the RGA. He died of wounds at Cambrai on 29th November 1918. He is buried in the Menin Road South Military Cemetery, Belgium, III I 13\n\nHe was born and enlisted in Dover, and C F Richardson from 42 Mayfield Avenue, Dover, asked that his name should be placed on the Town Memorial.\n\nNote: CWGC and Soldiers Died have his date of death as 1917, the memorial card states "1918"\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(491, 'E', '  ', 'Richardson', 'Edward Richardson, 49196, was a Lance Corporal in the 4th battalion of the Bedfordshire Regiment. He was 19 when he was killed in action on 14th April 1918. He is commemorated on the Pozières memorial in France.\n\nHe was the son of Annie Pendleton Richardson, of 8 West Mount Terrace, Priory Hill, Dover, and the late Francis Fox Richardson, who died on 11 January 1918, aged 61, after a month''s illness. Mr Richardson had been a carpenter on the Admiralty Works; his brother, Harry Richardson, built the Royal Hippodrome at Dover.\n\nEdward was born, enlisted, and lived in Dover, and in 1911 was living at home with his parents, his sister Dorothy, and his brothers Francis, Douglas, Stephen, and Cecil. There had been four more children in the family, who had died in infancy.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(492, 'R', 'J.  ', 'Richardson', 'Richard John Richardson, T/2167, was a Private in the  in the (1st)2nd/4th of The Buffs. He died at the Citadel Hospital, Cairo, on 21st Sept 1915, and is buried in the Cairo War Memorial Cemetery in Egypt, D17.\n\nHe was born in Guston and enlisted and lived at Dover.\n\n \n\nPictures: Michelle and Andy Cooper; Private Richardson''s grave is at this end of the cemetery, on the right. \n\n\n![headstone, Michelle and Andy Cooper](%asset_url%pictures/SurnamesR/RichardsonRJ-stone.gif "headstone, Michelle and Andy Cooper"){.left}\n\n![Cairo cemetery, Andy and Michelle Cooper](%asset_url%pictures/SurnamesR/Richardson-Cairo.gif "Cairo cemetery, Andy and Michelle Cooper"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(493, 'W', 'A.  ', 'Richardson', 'Walter Allan Richardson, 8799, was a Corporal from the 2nd battalion of the Royal Scots Fusiliers. He died of wounds at Ypres on 31st October 1914, and is commemorated on the Menin Gate. He was the eldest son of Pipe-Major and Mrs Richardson, of 16 Selbourne Terrace, Folkestone Road, Dover. He was born and enlisted in that town, but lived at Waterside, Londonderry. \n\nA letter dated 26th March 1915 from his Commanding Officer in the Field,  JHW Pollard, stated: "I should like to add that Corporal Richardson was a most promising non-commissioned officer and did well during the present campaign. Prior to the War he had been one of our best pipers, and had been employed as orderly to the Commanding Officer for two years during training and manoeuvres. I am very sorry to have lost him."\n\nHis father gave this epitaph, "A soldier born, as a soldier he died, facing the murderous Hun". \n\n\n![W A Richardson, courtesy Dover Express](%asset_url%pictures/SurnamesR/RichardsonWA.gif "W A Richardson, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(494, 'W', 'V.  ', 'Riches', 'William Victor Riches, 9737, was a Private in the East Yorkshire Regiment, 1st battalion. He was killed in action 16th September 1916, when he was 25. He is buried in the AIF Burial Ground, Flers in France, 3 A 29.\n\nHe was born and enlisted in Dover, and lived at Crabble Hill, Dover, the son of James Riches, of 57 Crabble Hill. (CWGC entry under J V Riches)\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(495, 'G', '', 'Rigden', 'George Rigden, L/10001, was a Lance Corporal in the 2nd battalion of The Buffs. He was wounded at Mons on 6th November 1914 in the right (another report says left) shoulder, and returned home for convalescence. He returned to the trenches in March 1915, and just six weeks later, on 12th (another report says 18th) May, he was wounded by shrapnel in both thighs and in his spine. He was taken to the General Hospital in France, and was then brought home to England (one report says on 30th May, another says two months after being wounded) and taken to the King George Hospital in London. There he died on  2nd December 1915, at the age of 20. .\n\nHis funeral took place with full military honours on Tuesday 7th December at Buckland cemetery, Dover in the United Kingdom. The Rev H Hopkinson officiated, and there were a hundred NCOs and men, with CSM C H Grist, and led by Lieutenant E G Port, present as a mark of their respect for George.\n\nMany floral tributes were laid, including one from The Buffs. Those from his family included the cards :"in loving memory, from his broken-hearted mother and father" "from his sister, Annie" "from his sisters, Daisy and Esther" "from sister Hilda" "from Mr and Mrs Richardson, sister and brother-in-law" "from his brother in the trenches" "from his little brothers and sisters" At the bottom of his gravestone are the words:  "God took him from his home but never from our thoughts"\n\nBorn at Buckland in Dover, and enlisting and residing in that town, George was the son of Mr and Mrs M Rigden, later of 28 Limekiln Street, Dover. They had two other sons, a son-in-law, and a nephew also serving at the Front.\n\nIn ever loving memory of my dear son, Lance-Corporal George Rigden, who died of wounds in King George''s Hospital, London, December 2nd 1915, aged 20 years. Never forgotten by his loving mother, Mrs Gear. peace, perfect peace. Until we meet. December 1939\n\n\n![George Rigden. courtesy Dover Express](%asset_url%pictures/SurnamesR/RigdenG.gif "George Rigden. courtesy Dover Express"){.left}\n\n![George Rigden in hospital, courtesy Dover Express](%asset_url%pictures/SurnamesR/RigdenGinhospital.gif "George Rigden in hospital, courtesy Dover Express"){.right}\n\n![set 2186](%asset_url%pictures/SurnamesR/RigdenGgravestone.gif "set 2186"){.left}\n\n![G Rigden, announcement, courtesy Dover Express](%asset_url%pictures/SurnamesR/RigdenGannoucne1939.gif "G Rigden, announcement, courtesy Dover Express"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(496, 'A', 'H.  ', '*Roberts', 'Arthur Harold Roberts. Arthur Bertram Howard Roberts, L/8935, was in the 1st battalion of The Buffs. he was awarded the Military Medal. He was 24 when he died on 2nd December 1917, and is commemorated on the Cambrai Memorial, Louverval in France.\n\nHe was one of three brothers who served, and was the son of Arthur John Howard Roberts (Q.M.S of the 1st Battalion of  The Buffs) and the late Edith Roberts. He was born in Athlone, County Rocommon, and lived and enlisted in Dover.\n\nThis could also be Arthur Harold Roberts, M2/166964, bellringer at St Mary''s, who was a Private in the Army Service Corps, No 1 Reserve M T Depot. He died on 5th May 1916 at the fourth London General Hospital, and is buried at St Mary''s, F L 5. He was  the "dearly loved" husband of Ethel Roberts, from 21 Lorne Road. \n\nBellringing information from research by Hazel Basford, Librarian, Kent County Association of Change Ringers\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(497, 'I', '  ', 'Roberts', 'Isaac Roberts, 111903, was a Pioneer in the Royal Engineers. He was 54 when he died on 9th May 1916, and is buried at St Mary''s cemetery, Dover in the United Kingdom, in which town he died. Mrs E Roberts, of Portland Place, requested that his name should go on the Town Memorial. The CWGC records that his wife was Mrs E. Roberts, of 4 Albany Flats, Dover.  \n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(498, 'C', 'E. B. ', 'Robinson', 'Charles Eugene Barnes Robinson was a freemason in the Orion in the West Lodge, London. The brother of  Herbert, below, he was born in 1872 and was serving as a Major in the 117th Mahrattas when lost his life on 27 September 1915 at the aged of 43. He is commemorated on the Basra Memorial, Mesopotamia - present-day Iraq.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(499, 'H', 'P. ', 'Robinson', 'Herbert Pollexfen Robinson, 2020295, was a Private in the Canadian Infantry, 7th Battalion. He was the son of Colonel Barnes Slyfield Robinson, born in Dublin and Mrs Marion Stone Robinson, née Pollexfen, born in Cheshire, who had married in the Birkenhead area in 1867. He was born on 7 October 1876 at Thactunjo, British Burma, India.\n\nHis father died on 25 October 1887, having then been living at 2 Leyburne Terrace, Dover, and is said to be buried at Dover Castle. In the 1891 census Herbert was living with his widowed mother at 1 Harold Terrace, Dover. There too were his brother Charles, above, aged 18, born in Cheshire, and his sister Pearl, then 15, and possibly born in Burma. All three were scholars.  There were other children: Eva Marion Pollexfen, born in 1868, Lillie, born in 1869,  Maud June, born in 1871, and Arthur Pollexfen, born in 1873.\n\nOn enlistment in Canada, Herbert was described as having grey eyes and light brown hair, and being 5ft 7½ ins tall. He had seen previous service as a Lieutenant, and had served with the Manchester Regiment, 2nd Irish Fusiliers, and 1st West India Regiment, but was working as a rancher. He had spent around fifteen years in Fresno county, on a ranch near Wahtoke, which he bought.\n\nFour years before his death, he and his family had moved to 1240 Collins Avenue, Fresno, California, USA, where he was connected with the Metropolitan Life Insurance company. He was married to Ida Rose Lena Robinson, who later lived at 538 North Manhattan Place, Los Angeles, California, and the couple had a son, Nelson, 13 at the time of his father''s death.\n\nHerbert was shot in the head by a sniper at about 5.30am on 2 September 1918, during an attack on the Drocout-Queant Line south west of Dury, and is buried at Upton Wood Cemetery, Hendecourt-Les-Cagnicourt, France, in grave A 30. He was  41 years old. A memorial service was held for him at St James'' Pro-Cathedral, Fresno.\n\nArthur Pollexfen Robinson was born in 1873, and in 1899 married Helen Janet Parsons in Dover. She was the sister of Raymond Steriker Parsons. Arthur too was on service; the couple''s first child, Lancelot, was born in 1901 in Cooner, India. They later had a daughter, Helen Mary F Robinson, born in Dover in 1909. Sadly, her mother died on 12 March 1909 at the age of 37. The couple had lived at 1 Marine Court, Dover.\n\nwith thanks to Joyce Banks  \n\n\n![](%asset_url%pictures/SurnamesR/RobinsonHP.gif){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(500, 'G', ' ', 'Rogers', 'George Rogers, S/418, was an Army Pensioner, working as a porter at the Grand Hotel. He lived at 2 Stembrook, Dover, and had friends living at 116 Clarendon Place, Dover. He was born in Paris, and re-enlisted in Canterbury as a Private in The Buffs, 2nd battalion.\n\nHe was reported missing on 24th May 1915, and a year later as having died.  He is commemorated on the Menin Gate memorial in Belgium.\n\n\n![G Rogers, courtesy Dover Express](%asset_url%pictures/SurnamesR/RogersG.gif "G Rogers, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(501, 'A', 'C.  ', 'Rouse', 'Albert Charles Rouse, was a Lieutenant from the Worcestershire Regiment, attached to the 32nd Signal Company, Royal Engineers. Born in Maidstone, he was a career soldier, being in 1911 a corporal, stationed at the Shaft Barracks at the Western Heights in Dover.\n\nHe was promoted and awarded the DCM for bravery, and he was mentioned in Sir Douglas Haig''s dispatches. He was 26 when he died from wounds on 20th March 1916, and is buried at Millancourt Communal cemetery, France.  \n\nHe was the son of Charles and Caroline Rouse, of Maidstone, and the husband of Annie Rouse. Annie (née Small) was living in Maidstone in March 1915, and later went to 30, York Street, Dover.\n\n\n![](%asset_url%pictures/SurnamesR/RouseAC.gif){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(502, 'H', '  ', 'Russell', 'Harry Russell, 52556, was the eldest son of Mr William John and Mrs Ellen Annie   Russell, of 80 Oswald Road, Dover, and lived in that town. Before he enlisted in Canterbury he was employed by the River and District Co-operative Society (Biggin Street Branch).\n\nHe served as a Lance Corporal in D company of the 4th battalion of the Duke of Cambridge''s Own Middlesex Regiment. He was killed in action on 29th June 1918, at the age of 20, and is buried at Couin New British cemetery, France. \n\n \n\n\n![H Russell, courtesy Dover Epxress](%asset_url%pictures/SurnamesR/RussellH.gif "H Russell, courtesy Dover Epxress"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(503, 'F', '', 'Sabey', 'Frank Sabey, 3940, was a Private in the 1st/14th battalion of the London Regiment (London Scottish). Before enlisting voluntarily in November 1914 at their Regimental Headquarters in Buckingham Palace Road, Westminster (paying £1 annual subscription fee), he had lived in Dover and worked for many years as a valued employee of E G Bockham of Worthington Street, where he had been in charge of the grinding department. He was the son of Mrs Ellen Sabey and her husband Branch, a labourer, of 8 Devonshire Road, Dover. In 1911 he was living there with his parents and his sisters Margaret and Susie, and his brother Walter. He was then working as an errand boy in the skating rink.\n\nHe was assigned to the 2nd Battalion for training. In 1915 he was transferred to France with a reinforcement draft, joining the 1st Battalion. He was killed in action at the Battle of Loos on 25 (or 23) September 1915, and is commemorated on the Loos memorial in France.\n\nwith thanks to Ajax Bardrick\n\n\n![F Sabey, courtesy Dover Express](%asset_url%pictures/SurnamesS/SabeyF.gif "F Sabey, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `casualty` (`id`, `given_name`, `middle_names`, `family_name`, `narrative`, `war`, `civilian`, `gender`, `final_resting_place`, `date_of_birth`, `date_of_death`, `commemoration_photo`, `rank_at_death`, `service_country`, `place_of_birth`, `last_known_address`, `last_known_address_year`, `recently_uploaded`) VALUES
(504, 'A', 'G. R.', 'Sait', 'Albert Gordon Reid Sait, 9218, was a Lance Corporal in the 2nd battalion of the Loyal North Lancashire Regiment. He was 27 when he was killed in action on 28th August 1918. He is buried at Reningholst New Military Cemetery, Belgium.\n\nHe was born in Kingston upon Thames and enlisted in Canterbury, but lived in Dover. In 1911 he was serving with 2nd Battalion of the Loyal North Lancashire Regiment, in Ceylon and India. He was the son of Mr Thomas and Mrs Susannah Sait, of 90 Clarendon Place, Dover, and they had four sons serving.\n\n  Mr Thomas Sait. He was the father of the four soldiers below. He had himself served for 21 years in the East Surrey Regiment   Charles Sait. He was wounded three times. In August 1918 he was awaiting his discharge in France, having undergone an operation to amputate his left leg.   Albert Sait. It is uncertain whether this is the A G R Sait who lost his life, as in early August 1918 the man in the picture was recorded as a Private serving in Palestine (having previously served in South Africa). Frank Sait in August 1918 was serving in France. Thomas Sait was wounded three times in France, and in August 1918 was sent home for 10 days leave\n\nIn 1891 Thomas and Susannah Sait and their son Frederick, born 1887, were living at the Barracks for 31 regiment in Kingston-upon-Thams. Thomas was then a Private in the East Surreys. Mrs Sait and Frederick were born in Dover, Mr Sait at Kingston in Surrey. By 1901 Mr Sait had left the army and was working as a general labourer. They were living at 135 Clarendon Place, Dover, and had seven more children: Albert, born at Kingston in 1892, Ethel Maud born in 1894 at Ditton,  and, all born in Dover, Charles (registered as George?) Henry and Thomas David, born 1896 and possibly twins, Annie Violet, born 1897, Frank William, born 1899, and Ellen, born 1901.\n\nBy 1904, according the Frederick''s attestation, the family had moved to 126 Clarendon Place, Dover, with Thomas being an army pensioner and dock labourer. Two more daughters were born; Daisy Jane, in 1903, and Lillian Frances, in 1906. Frederick was serving as a Private, 8048, in the 1st Royal Sussex, having enlisted on 4 October 1904 at Canterbury. Very unfortunately Frederick died on 2 November 1912  at the age of 25, after being run over by a SECR train at the Priory Station on 28 October 1912.\n\nOn 24 August 1914, Thomas Sait enlisted in the Buffs as Private 10328. He also served in the Labour Corps as 662702. He had been working as a packer, and is recorded as having a mole on his left cheek. At this time the family were living at 90 Clarendon Place. He was discharged on 14 March 1919 and had suffered a number of gunshot wounds to his left elbow and hand and right leg on 24 October 1917. He was entitled to wear three "wound stripes".\n\nresearch with thanks to Joyce Banks\n\nNote: Near the Old Lord Warden House by the end of the Admiralty Pier was a railway crossing. Forty years later Maggie S-K''s uncle recalls that it was known to him and his fellow railway workers as "Peggy Sait''s Crossing", after the man who ran it.  "Peggy" was nicknamed thus as he had only one leg. Further information from Jacky Hartley is that he lived in Clarendon behind the Engineer pub. He always had a bag of sweets that he would offer to Maggie''s cousin. Could Peggy have been C. Sait (above), who was wounded in the Great War?\n\n\n![T Sait, courtesy Dover Express](%asset_url%pictures/SurnamesS/SaitT.gif "T Sait, courtesy Dover Express"){.left}\n\n![C Sait, courtesy Dover Express](%asset_url%pictures/SurnamesS/SaitC.gif "C Sait, courtesy Dover Express"){.right}\n\n![A Sait, courtesy Dover Express](%asset_url%pictures/SurnamesS/SaitA.gif "A Sait, courtesy Dover Express"){.left}\n\n![F Sait, courtesy Dover Express](%asset_url%pictures/SurnamesS/SaitF.gif "F Sait, courtesy Dover Express"){.right}\n\n![T Sait, courtesy Dover Express](%asset_url%pictures/SurnamesS/SaitT2.gif "T Sait, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(505, 'C', 'D. J.', 'Sambrook', 'Cecil David John Sambrook, C/4519, was a Private in the King''s Royal Rifles. He was born in 1884 in Dover, the son of Elizabeth Sambrook, née Drake, and her husband John, who had died in 1907.\n\nCecil had a dark complexion, brown hair, and hazel eyes. He was five feet seven inches tall, and had a scar on his right back and a mole on his right nose and cheek. In 1901 he was working as an assistant store keeper, and later as a fireman at the docks. In 1911 he was working as a seaman on an Admiralty dredger, and living at home with his mother, his brother Charles, and his sister Mary.\n\nHis character during his military service was given as very good: sober, honest, and steady.  He was invalided out on 22nd September 1916 as permanently disabled; he was totally incapacitated at the time. He received an army pension of 20/- from that time for an initial period of six months. On 27th May 1917 at the Pier Cottage, Strond Street, Dover, he was said to have died from the effects of gas poisoning at the Battle of Ypres, 19th May 1916, aged 32 years. He had developed nephritis in May 1916, owing to exposure and infection, and returned to England in June. He was discharged as permanently unfit for war service in September 1916; his death certificate states that he died from septicaemia.\n\nHe was buried at St Mary''s, grave NH6, on 31May 1917.\n\nfurther information with thanks to Neil Clark. January 2009 - we have heard that Cecil Sambrook is now to be recorded by the CWGC. Well done, Kent Fallen!\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(506, 'A', 'H.', 'Samways', 'Albert Henry Samways, K/15010, was 26 when he died on 31st May 1916. He was a first class Stoker in the Royal Navy, and had served from the beginning of the war. He had seen action in the Battle of the Falklands.  He lost his life on the HMS Invincible, during the first general and only major naval engagement to take place in the North Sea during the War, the Battle of Jutland. The British Fleet had encountered the enemy fleet off the west coast of Denmark. The Invincible was the flag ship of Rear Admiral Hood, who, during the earlier part of the war, had commanded the Dover Patrol. Only six from a crew of over a thousand survived when the Invincible was hit by the Lützow and exploded. Albert is commemorated on the Portsmouth Naval Memorial in the United Kingdom.\r\n\r\nBorn on 18 March 1890, he was the son of Mr and Mrs Samways of Wareham, Dorset. In 1901 he was living at 74 Church Street, Wareham, Dorset, with his mother Harriett, who remarried in 1897 to become Mrs Long, his sister Maud, 9, and his half-sister Catherine Long, 8 months.\r\n\r\nHe was the husband of Alice Sarah Stockley, formerly Samways, and née Gatehouse. They had been married just a year. She lived with her parents at 13 Albany Place, Dover, and later at 67 Bulwark Street, Dover, and was aunt to John Bones. Mrs Samways remarried in 1917 to Frederick Stockley.\r\n\r\n\r\n![AH Samways, courtesy Dover Express](%asset_url%pictures/SurnamesS/SamwaysAH.gif "AH Samways, courtesy Dover Express"){.left}\r\n', 1, 0, 'M', NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 0, 1),
(507, 'L', 'H.', 'Sandham', 'Leister Henry Sandham, L10950, was a Lance Corporal in C Company of the 2nd battalion of the Worcestershire Regiment. He was killed in action at Givenchy on 25 September 1915, when he was 31. He was buried at the Guards'' Cemetery, Windy Corner, Cuinchy, France.\n\nHe originally came from Portsmouth, where he enlisted, having been born in Portsea, Hampshire. He married Miss Ellen Marsh from Templar Street in Dover in 1909, left the army, and gained a job in the Dover Postal Service.  He had been there just three months when he was called up on the outbreak of war.\n\nHe and his wife had lived at 18 Pioneer Road, Dover, and Leister had left a child as well as a widow, Ellen. She later moved to 21 Kitchener Road. \n\n\n![LH Sandham, courtesy Dover Express](%asset_url%pictures/SurnamesS/SandhamLH.gif "LH Sandham, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(508, 'J', 'A. G.', 'Sarsons', 'James Alexander George Sarsons, 39763, was a Private in the 124th company, Machine Gun Corps (Infantry) (formerly 5474 of the Dragoon Guards), as which he is recorded in the 1901 census at the age of 16. He died when he was 34, on 25th September 1917, and was buried at  Westouter Churchyard, Belgium\n\nHe was born in London (St Andrews, Middlesex,), the son of Mrs Helen Sarsons, and enlisted in Aldershot. He lived in Dover.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(509, 'G', '', 'Saunders', 'George Saunders, F/10461, was a first class Air Mechanic, with the HMS City of Oxford. He was 22 when he died on 12 April 1916, from pneumonia following an operation at the Marine Infirmary, Deal.\n\nBorn on 19 December 1893 in Dover, he was the third son of Mr John Baker Saunders, a dealer in the boot trade, and Mrs Alice Saunders (née Danson) of 284 London Road, Dover (pictured), and a bellringer. In 1901 the family were living at 4 Cowgate Hill, Dover, where Mr Saunders was working as a bootmaker. George''s eldest brother, Alfred, 19, was a newspaper reporter, while his next brother, Herbert, was 14 and working as a clerk. They had a younger sister, Clara Alice, 6. In 1911 the family had moved to 284 London Road, where George was working as a clerk for an Auctioneers and Estate Agents. Herbert was clerking for a continental parcels agency.\n\nIn a service with full military and naval honours conducted by Rev S. Richards, George Saunders was laid to rest at St Mary''s Cemetery, Dover. Six of his comrades carried his coffin, and very many of his old Corps attended, along with many of his family. His father was unfortunately ill himself, and unable to attend.  The grave was heaped with flowers, including a large one of the emblem of the Royal Naval Air Service in crimson, white and blue flowers, and one "from his sorrowing parents".\n\n\n\nApril 1917\n\n \n\n \n\nThe words on the gravestone read:\n\n \n\nIn Loving Memory of (Our Dear Son) George Saunders A.M.I. 15 Squadron R.H.A.S. H.M.S. City of Oxford Died April 12th 1916 Aged 22 years "At Duty''s Call" Also of Alice Saunders Mother of the Above Died 16th September 1924 Aged 67 years "At Rest" Also of John Baker Saunders Husband and Father of the Above Died 12th December 1937 Aged 79 years "Re-united"\n\nThanks to George more were introduced to the exercise of change ringing. He lived only three doors from George Godfrey, who moved to London Road when he was about 16. They became great friends and used to visit each other rather perilously by means of a wide parapet/rainwater gulley connecting the houses. George Saunders introduced George Godfrey and his brother to bellringing, and now George''s son Mike is a keen bellringer. On 12 April 2016 Mike conducted a quarter peal on half-muffled bells of Grandsire Triples, 1260 changes, at St Mary''s marking the centenary of George Saunders'' death.\n\nHerbert, George Saunders'' brother, was also a ringer and continued ringing until about 1960. Taking bell 6, he was one of the band who rang a peal of Grandsire Triples (5040 changes) on 14 May 1919 for the arrival of the body of Edith Cavell in Dover.\n\n\n\n*\n\nThis casualty might also be George Saunders, 562, was a Private in the 2nd battalion of the Royal Warwickshire Regiment. He was born in Dover and lived in Dover, but enlisted in Deal. He died in action on 19 December 1914 and is commemorated on the Ploegsteert Memorial.\n\n*\n\nBellringing link from research by Hazel Basford, Kent County Association of Change Ringers Biographical notes by courtesy of Peter Dale Gravestone image by Jean Marsh\n\nNote: 4 Cowgate Hill was also the home in 1916 of civilian casualty Gertrude Boorman and of Albert Willson in 1911\n\n\n![G Saunders house, by Simon Chambers](%asset_url%pictures/SurnamesS/SaundersGhouse.gif "G Saunders house, by Simon Chambers"){.left}\n\n![](%asset_url%pictures/SurnamesS/SaundersG.gif){.right}\n\n![in memoriam announcement for brother from Alfred and Molly, courtesy Dover Express](%asset_url%pictures/SurnamesS/SaundersGannounce17.gif "in memoriam announcement for brother from Alfred and Molly, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(510, 'J', 'B.', 'Saunders', 'John Baker Saunders, 3/4657, was a Private in the 1st battalion of the York and Lancaster Regiment.   He was reported missing at La Bassée on 8 May 1915, and later as having died. He is commemorated on the Menin Gate memorial in Belgium, panel 36 and 55.\n\nHis parents were Mr and Mrs James Hudson Saunders, who had married on 19 September 1886 at St Mary''s, Dover. In 1891 Mr Saunders was a leather merchant''s assistant, and he and his wife Fanny, a dressmaker, were living at 7 Albany Place with John, born on 27 June 1887 and christened on 18 September at St Mary''s, and their daughter Emma Naomi, born on 4 January 1889 and christened on 24 February at St Mary''s. Also there was Sarah Middleton Field, Fanny''s mother, aged 60 and working as a dressmaker. All the family were born in Dover; John had been named after his grandfather, also John Baker Saunders. Sadly, a second son, Samuel James, born on 12 February 1890 and christened on 23 March, had died when he was eight months old.\n\nA third son was born on 24 October 1892, Thomas Frith. He was christened on 27 November. On 9 June 1893 Mr Saunders died at 2 Albany Place at the age of 35. In October 1895, aged 64, Mrs Field died. Mrs Saunders continued dressmaking, and by 1901 was living at St George''s Cottages, 27 Caroline Place, Dover. On 12 July that year John enlisted into the York and Lancaster Regiment, aged just 14 and just 4'' 9?" tall. He had hazel eyes and brown hair, with the mark of a mole in his left armpit. On 28 October 1902 he went to India where he remained until the end of his engagement.\n\nOn 17 September 1901 and 2 March 1904 John received 2nd class certificates in education. He became a bandsman on several occasions, and a drummer, but each time at his own request, he reverted either to a Boy or a Private, which rank he attained when he was 18, or Lance Corporal. He had become an unpaid Lance Corporal on 20 April 1909 and a paid one on 23 February 1911. In 1911 census, however, he recorded as a Private in Karachi. Meanwhile his mother had moved to 4 Church Court, Dover, and only Emma, then a general servant, was at home with her. Thomas was working as an hotel kitchen porter at the Royal Norfolk Hotel, High Street, Sandgate. In 1912 Emma married William Bishop in Dover.\n\nOn 11 October 1913 John was recorded as a "useful 1st clarinet player with years of military band experience as such". On 13 November 1913 John was discharged after 12 years of service; his mother, then living at 15 Peter Street, Dover, had written on 17 June that year enquiring about his whereabouts.\n\nJohn rejoined the colours on 30 October 1914. He had grown to 5''9", and is recorded as having several bad teeth. He went to France on 18 March 1915, losing his life under two months later. His brother Thomas served in Mesopotamia.\n\nJohn''s effects were sent back to his mother. By 1916 the family had moved to Cheriton, 217 High Street. Mrs Saunders died there on 7 July 1923. She was buried at Cowgate cemetery, Dover, with her husband. Emma and her husband continued to live at no 217 until it was bombed in the Second World War; they then moved to the nearby Richmond Street. Emma''s daughter moved back to Dover after her marriage, living at Oswald Road.\n\nIn the picture are, top, John and his brother Tom, and in front of Tom their sister Emma. seated next to their mother, Fanny.\n\nJohn has the distinction of being twice named on the Town Memorial - see also John Baker\n\nwith thanks to Daphne Ashby\n\n\n![courtesy Daphne Ashby](%asset_url%pictures/SurnamesS/SaundersJB1.gif "courtesy Daphne Ashby"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(511, 'L', 'T. ', 'Saunders', 'Leonard Theodore Saunders, 495345, was in the 4th Mobile Dental Unit of the Royal Army Medical Corps. He died from influenza on 12th December 1918 when he was 22. He is buried at Kortrijk (St Jan) Cemetery, Belgium.\n\nHe was the son of Alfred, a boiler maker''s assistant, and Ann S Saunders of 34 Primrose Road, Buckland, Dover. In 1911 he was living at 9 Jubilee Cottages, Primrose Road, with his parents, and was a dental apprentice. \n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(512, 'W', '  ', 'Saunders', 'William Charles Richard Saunders, G/5180, was employed by Messrs Lukey and Son, at Bench Street, Dover, before becoming a Private in the 8th battalion of The Buffs (East Kent Regiment). He was 23 when he was reported wounded and missing on 26th September 1915, and later was reported as killed. He is commemorated on the Loos Memorial in France.\n\nHe was born, enlisted, and lived in Dover, and was the eldest son of Mr William Saunders, who later died, and his wife Eliza. William the younger had been married only five months to Miss Rose Clark, who was a twin daughter of Mr and the late Mrs J Clark of Dover. She later remarried and moved to 17 Woodstock Road, Bedford Park, Chiswick, London. \n\n\n![W Saunders, courtesy Dover Express](%asset_url%pictures/SurnamesS/SaundersW.gif "W Saunders, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(513, 'F', 'W.', 'Savage', 'Frederick William Savage, G/75552, was a Private in the 6th battalion of the Buffs. He was reported missing on 18 March 1916, and his date of death is given as 19 March. He is commemorated on the Loos memorial in France.\n\nFrederick was born at Temple Ewell, enlisted in Dover, and lived at River. He worked at Crabble Mills before the outbreak of the war, and had three other brothers also serving: Private S G Savage, also with the Buffs, but in India, Gunner A A H Savage, who was in the Royal Garrison Artillery in Mesopotamia, and Private C W Savage, who had joined the Dragoon Guards. They were all sons of Mrs A/Ellen Savage and her husband, Albert Robert Savage, a gardener, who lived at 4 Dublin Cottages, River, Dover. In 1911 Frederick was living there with his parents and his brothers Sidney, Percy, and Frank, and his sisters, Winnie and A/Ellen \n\n\n![F Savage, courtesy Dover Express](%asset_url%pictures/SurnamesS/SavageF.gif "F Savage, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(514, 'J', 'B.', 'Sayers', 'James Benjamin Sayers (could be London Regiment, killed in action 8 December 1917)\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(515, 'E', '', 'Scarlett', 'Edward Scarlett, 271096, Engine Room Artificer 1st Class, Royal Navy. He was born in Dover, the eldest son of the late Edward and Maria Scarlett. His father had been a coachbuilder, and the family were considered well-known and respected. Edward himself was said to have a large circle of friends, and his mother spoke of her "much loved son". He had attended St Mary''s school, and after serving an apprenticeship with Messrs A and L Thomas at the Dour Iron Foundry, had entered the Royal Navy. He was also member of the United Service Lodge.      \n\nEdward died in March 1916, aged 33. His submarine, "E24", was completed in January 1916 and was the first Naval minelayer. Two months later, on 21 March 1916 the "E24" left Harwich to lay mines at Heligoland Bight. The vessel did not return. In 1973 examination of the hull of the submarine, accidentally salvaged, suggested that she herself had struck a mine. The submarine was raised in July 1974 and with it the remains of 25 unidentified sailors. They are now buried in Hamburg cemetery in Germany.\n\nEdward is commemorated on the Chatham Naval Memorial, panel 17. He had lived at 14 Cecil Square, Margate, and  and it was his sister Maud, who lived at 42 Liverpool Street, Dover, who requested that he should be named on the Town Memorial at Dover. (We Remember 06)\n\nA relative of Edward may have been William Edward Scarlett (right). He was the eldest son of the late William Edward Scarlett, a carriage and van builder in Market Street, Dover. His mother lived at 58 Elms Vale Road, Dover. He enlisted in November 1914 and became Mechanical Staff Sergeant in May 1915, appointed to the 599th ASC Motor Transport company. Before enlisting he was for several years the landlord of the "Five Bells" in Ringwould. \n\nHis younger brother was Herbert George Scarlett (left) also a Mechanical Staff Sergeant. He was in charge of travelling workshops in France, attached to a company of the Motor Transport, Army Service Corps. He had been a carriage builder and motor engineer at 5 Market Street, Dover, where his wife and children lived, and had enlisted in November 1915. He became MSS on 17th March 1916.\n\nMiss Maude Scarlett asked for five tickets, for the sister and brothers of Edward, at the unveiling of the Dover Memorial.\n\n\n\n(Right) The "Five Bells" public house, Ringwould\n\n\n![WE Scarlett, courtesy Dover Express](%asset_url%pictures/SurnamesS/ScarlettWE.gif "WE Scarlett, courtesy Dover Express"){.left}\n\n![HG Scarlett, courtesy Dover Express](%asset_url%pictures/SurnamesS/ScarlettHG.gif "HG Scarlett, courtesy Dover Express"){.right}\n\n![Five Bells pub](%asset_url%pictures/SurnamesS/Scarlett-five-bells.gif "Five Bells pub"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(516, 'A', '', '*Scott', 'Probably Archibald Scott, 280108, a Chief Stoker in the Royal Navy, serving with HMS Simoom. Born on 21 July 1872 at Cleator Moor, Cumberland, he died on 23 January 1917 and is commemorated on the Plymouth Naval Memorial, panel 22. He was married to Florence, who lived at 15 Albany Place, Dover\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(517, 'D', '', '*Scott', 'Donald Scott. This may be George Ernest Donald Scott, who died, aged 25, on 15 February 1919 at the Royal Naval Hospital, Invergordon, from pneumonia after influenza. He was a Petty Officer in the Royal Navy, and the "dearly loved" husband of Louie Scott (née Shovelier), from 3 Upper Cowgate Hill, Dover. \n\nThey had married only 15 months before, on 6 October 1917, at St Mary''s. Miss Shovelier was given away by her father. She wore a crepe-de-chine dress, trimmed with Russian braid, and a veil with orange blossoms, and carried a shower bouquet. Her sister Winifred, as bridesmaid, wore a cream voile dress, with a pink hat, and carried a bouquet of white and pink flowers. The groom had given her a gold pendant, which she also wore. To his new wife he had given a set of furs, while she had given her husband a wrist watch.\n\nThe funeral left from his widow''s home,  with the coffin covered by the Union Flag and borne on a gun carriage.  Bluejackets were bearers, and there were a large number present at the funeral. The last post was sounded at the conclusion of the service.   PO Scott is buried at St Mary''s cemetery, H E 5, in Dover, United Kingdom, and his floral tributes included those "from his broken-hearted wife, Lou" and from Mr Scott, who lived in 1914 at 2 Yew Tree Cottages, Military Hill, "his sorrowing dad and sister Dolly", and from Mr and Mrs Shovelier, "his sorrowing Mum and Dad"., and two from the officers and the ship''s company of HMS Velox.  \n\nIn Memoriam announcements from 1920 read:\n\n"In proud and loving memory of my dearest husband Donald Scott (Don), Petty Officer HMS Velox, who died in the Naval Hospital, Invergordon, on February 15th 1919, aged 25 years. "Even as he trod that day to God, so walked he from his birth. A kindly darling fellow, All honour and clean mirth. Dearly loved and deeply mourned by his loving wife, Lou"\n\n"In fond and ever loving memory of our dear son-in-law Donald Scott (Don), who died in the Naval Hospital, Invergordon, on February 15th 1919, aged 25 years. Interred in St Mary''s, Dover (HE 5). "Until the day breaks". From his loving Mum, Dad, and Brothers and Sister.\n\nwith thanks to Joyce Banks\n\nMr Crispin Edward Shovelier was slightly injured on 16 February 1918 when a shell killed his young neighbour  Gertrude Boorman. Mr Shovelier''s daughter Lou had not remarried by the time her father died on 7 December 1949. Mr Shovelier was buried at Cowgate, close to his home, 6 Cowgate Hill, where he had died.\n\n\n![GED Scott, gravestone, by Joyce Banks](%asset_url%pictures/SurnamesS/ScottGEDstone.gif "GED Scott, gravestone, by Joyce Banks"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(518, 'S', 'F.', 'Scutt', 'Sydney Frank Scutt, G/68586 (7), was a Lance Corporal in the 8th battalion of the Queen''s (Royal West Surrey). Born in 1899, he died on 11th October 1918, and is commemorated on the Vis-En-Artois Memorial, France.\n\nHe was born, enlisted, and lived in Dover, and was the son of Charles Savage Scutt, a police inspector, and Ellen Scutt, (née Cook), married in 1887, from 2 Stanhope Road, Dover. In 1911 the family were living at 148 Buckland Avenue, Dover. There were eight brothers; William, Albert, Ernest, Walter, Percy, Sidney, Reginald, and Bernard, all born in Dover.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(519, 'E', 'C. ', 'Sedgewick', 'Ernest Charles Sedgwick, L/9885, was a Private in The Buffs, 2nd battalion. He died on 28th September 1915, and is commemorated on the Loos Memorial in France, panel 15-19.\n\nFrom a family of ten, he was born in Buckland Dover, and remained a resident in that town, also enlisting there. He and Charles, below (but see notes under Frederick Sedgwick (2) below), were the grandsons of Mrs E G Lewry, of 3 Kings Gardens, Dover, who requested their 1914 Stars and Clasps, and the sons of Joseph Thomas Sedgwick and his wife Georgina Beatrice, née Lewry, who married at Dover register office on 25 November 1893.\n\nAt that time Mr Sedgwick was 25, a bricklayer''s labourer living at 19 Albion Place, Dover, son of Thomas Young Sedgwick, a journeyman shipwright, while Mrs Sedgwick was 17, from 6 Colebran Street, the daughter of Charles Lewry, a general labourer and army pensioner.\n\nMrs Sedgewick was born in Scotland, and in 1891 was at Dover Castle, where her father Charles was stationed with the RA. E J Lewry was their uncle, a younger brother to their mother.\n\npicture: Georgina Sedgwick, 1890s with thanks to Brian Sedgwick\n\n\n![Georgina Sedgwick, courtesy Brian Sedgwick](%asset_url%pictures/SurnamesS/sedgwickG.gif "Georgina Sedgwick, courtesy Brian Sedgwick"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(520, 'C', ' ', 'Sedgewick', 'Charles Frederick Sedgwick, L/9970, was a Private in the 1st battalion of The Buffs. He died in action on 15th September 1916, and is commemorated on the Thiepval Memorial in France.\n\nHe was born at St Mary''s, Dover, and lived in the town, but enlisted in Canterbury. We believe he was brother to Ernest, above. On the 1901 census return there are Charles and Frederick, both born in Dover,  noted as the sons of Joseph Thomas and Georgina, living at 2 Chapel Court.\n\nsee further notes for Frederick Sedgwick (2) below\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(521, 'E', '  ', 'Sedgwick', 'E(dward). Sedgwick, 358040, was a Corporal in the 47th Siege battery of the Royal Garrison Artillery. He died on 23rd April 1919 at Weston Favell Hospital, Northampton. From 21 Albany Place, Dover, the son of Walter and Sarah Sedgwick. Probably born in Dover, he was buried on 1st May  in Charlton Cemetery, Dover I H 24.\n\nThe gravestone has two names on it. The lower is E Sedgwick, and the upper is W Sedgwick, who is not named on the Town Memorial (but see below under F Sedgwick (2)) .  This is Walter, his brother, Petty Officer Stoker, 294390, who died on 13 December 1918, aged 38.\n\nEdward and Walter were uncles of William John Hambrook as their sister Esther Jane was William''s mother.\n\n\n![E Sedgwick and W Sedgwick gravestone, by Simon Chambers](%asset_url%pictures/SurnamesS/SedgwickEgravestone.gif "E Sedgwick and W Sedgwick gravestone, by Simon Chambers"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(522, 'F', '   ', 'Sedgwick', 'Frederick Sedgwick, 289224, was a 1st Class Petty Officer Stoker in the Royal Navy, serving with the HMS Tirade. Born on 6 November 1897, he was 39 when he died at sea from pneumonia on 10th November 1918. He is buried at Gillingham Woodlands Cemetery, Kent, England.  His grave is in the centre of the picture\n\nHis wife was S(arah) Sedgwick, living at 8 Percival Terrace, Folkestone Road, Dover, and he was the son of John and Rosetta Sedgwick, living, in 1881 at 1 Edred Road.\n\n\n![](%asset_url%pictures/SurnamesS/SedgwickF-stone.gif){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(523, 'F', '(2)   ', 'Sedgwick', 'Frederick Sedgwick. There may be some confusion here with Walter Sedgwick as both were petty Officer Stokers in the Royal Navy who died in 1918. It may be, therefore, that this commemoration was intended for Walter.\n\nHowever, there is a further anomaly, in that Charles Frederick Sedgwick, above, is recorded with the service number of L/9970, but there is also a medal rolls entry for a Frederick Sedgwick, also with the service number 9970. Both are noted as having served in The Buffs. When Mrs Lewry requested the 1914 Stars and Clasps as above (under E C Sedgwick), she cited 9970 F A Sedgwick of the 1st battalion and E C Sedgwick of the 2nd.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(524, 'F', 'W. B.  ', 'Sergeant', 'Frederick William Barten/r Sergeant, 2145, was a Trooper in the Household Battalion of the Household Cavalry and Cavalry of the Line (including Yeomanry and Imperial Camel Corps). He died when he was 31, on 11th October 1917, and is commemorated on the Tyne Cot Memorial, Belgium. \n\nHe enlisted in London but was born and lived in Dover. He was the husband of Bertha Agnes Sergeant, who lived at 5 Salisbury Road, Dover, and brother to Harry, below.\n\nFor family details, see Faded Genes, by Dave Dixon photo Jean Marsh\n\n\n![](%asset_url%pictures/SurnamesS/SergeantFWBTyneCot.gif){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(525, 'H', 'V.   ', 'Sergeant', 'Harry Venner Sergeant, 1443, served in D Company of the 1st/15th battalion of the London Regiment (the Prince of Wales'' Own Civil Service Rifles) as a Sergeant. He was killed in action on 13th October 1915 at the age of 27. He is buried at Dud Corner Cemetery, Loos in France.\n\nHe was the son of Frederick John and Mary Ann Barten Sergeant of 20 Park Street, Dover, born in Charlton, Dover, and brother to Frederick, above. He enlisted in Somerset House, and lived in Fulham.\n\nSee Faded Genes, above\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(526, 'H', '   ', 'Sharman', 'Harry Sharman, 12856, was a Serjeant in the 39th Siege Battery of the Royal Garrison Artillery. He was 38 when he was killed in action (Soldiers Died says of wounds) on 21st July 1916. He is buried at Heilley Station Cemetery, Mericourt-L''Abbe, France.\n\nHis wife was Emma Annie Sharman, from 57 Oswald Road, Buckland, Dover. He was born and lived in Colchester, and enlisted in Warley, Essex. He was a career soldier, and in 1911 was serving in Guernsey in no 17 Company of the Royal Garrison Artillery.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(527, 'E', 'A.   ', 'Sharp', 'Ernest Alfred Sharp, 38201, served in the 2nd battalion of the Lancashire Fusiliers as a Private (formerly 18876 Royal West Surrey Regiment).  He died on 22nd April 1918 at the age of 20, and is commemorated on the Loos memorial. \n\nHe was born and enlisted in Dover, and was the son of Mr T W and Mrs C Sharp, of 1 Alfred Road, Dover\n\n(for family tree see faded genes by Dave Dixon. Ernest Sharp was first cousin to Edward Sharp, below)\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(528, 'E', 'S. H.', 'Sharp', 'Edward Sidney Henry Sharp, 5965, first cousin to Ernest Sharp above, was just 19 when he died of wounds on 27th June 1917. He is buried in the Mendinghem Military Cemetery, Belgium. He had served as a Rifleman in the 12th battalion of the Rifle Brigade (Prince Consort''s Own), and before enlisting was employed by Messrs Faith and Co, of Snargate Street, Dover.   \n\nHe was born, enlisted, and lived in Dover, and his mother was Alice Annie Sharp, living at 5 Sidney Terrace, Malvern Road, Dover. She had three other sons serving. The eldest was A G Sharp (Albert); he was serving with a medical transport, and before joining up he had worked for Messrs Dickeson and Co. He was married with two children, and the family lived at 19 Dickson Road, Dover.\n\nW. T. Sharp (William Sharp) was serving in Salonika with the Rifle Brigade, and he had previously worked for Mr Mills the baker, in Snargate Street. The fourth brother, F. Sharp (Frederick), had joined the Queens Regiment.\n\nA. G. Sharp F. Sharp W. T. Sharp The family of Albert Edward Sharp, and his wife Alice Annie, nee Gillman, were Albert G., born about 1888, Alice R., born about 1889, Emma, born about 1891, William Thomas (far left), born 1893  died at Bondues on 27th August 1943, Georgina (Ena) Mary (right), born 19th December 1895, died 16th April 1984 at Canterbury, Edward Sidney Henry, born about 1898, died 27th June 1917, Frederick Sharp, born 1900, and Stephen.   Right is Albert Edward Sharp with his son Frederick, and a man believed to be William Reeves, who married Georgina Sharp   with thanks to Daniel Collard\n\n\n![E S H Sharp, courtesy Dover Express](%asset_url%pictures/SurnamesS/SharpESH.gif "E S H Sharp, courtesy Dover Express"){.left}\n\n![](%asset_url%pictures/SurnamesS/SharpESH2.gif){.right}\n\n![](%asset_url%pictures/SurnamesS/SharpAG.gif){.left}\n\n![](%asset_url%pictures/SurnamesS/SharpF.gif){.right}\n\n![](%asset_url%pictures/SurnamesS/SharpWT.gif){.left}\n\n![the family, courtesy Daniel Collard](%asset_url%pictures/SurnamesS/Sharpfamily.gif "the family, courtesy Daniel Collard"){.right}\n\n![](%asset_url%pictures/SurnamesS/Sharpthree.gif){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(529, 'S', 'E. C.    ', 'Sharp', 'Stanley Ernest Cecil Sharp was a 2nd Lieutenant in Prince Albert''s Somerset Light Infantry who died on 20 October 1918 at "Kachi, Persia", at the age of 28.  He is commemorated on the Tehran Memorial, Iran.\n\nHe died from pneumonia following influenza while on a motor transport expedition in the desert of East Persia, whence he had gone from north west India. 2nd Lt Sharp had been hoping to return home; he was the only son of Mr and Mrs A E Sharp, from the High Street, who were informed of his death in a private cable from the War Office on 8 November 1918. Mr Sharp was a draper in the High Street, Dover, and a member of Corinthian Lodge No 1208.\n\nHe had enlisted early in the war, joining the 4th Buffs, and was then transferred to the 2nd Somerset light Infantry when he obtained his commission. He was said to have many friends, especially from football and rowing clubs.\n\nAn in memoriam notice in 1921 has the lines, "His lonely far-off grave in the Persian desert is but a wayside resting place for the brief night. Soon the glad morning will dawn, when all the sleeping warrior pilgrims will awake to follow their Great Captain into the Holy City."\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(530, 'F', 'A. S.     ', 'Sheppard', 'Frederick Albert Stanley Sheppard was a Painter, 1st class, in the Royal Navy, serving aboard the HMS Invincible. He took part in the battles of Heligoland Bight and the Falkland Islands, but was killed in action, aged 29, in the Battle of Jutland, 31st May 1916. He is commemorated on the Portsmouth Naval Memorial in the United Kingdom.\n\nHe left a widow, Ellen Louisa Sheppard, who lived at 7 Liebeck Street, Clapham Junction, London. His father was Mr A Sheppard, of Jessamine Cottage, Churchill Road, Maxton, Dover.\n\n\n![FAS Sheppard, courtesy Dover Express](%asset_url%pictures/SurnamesS/SheppardFAS.gif "FAS Sheppard, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(531, 'A', 'O.', 'Sherren', 'Arthur Oswald Sherren was a Captain in the 4th battalion of the Buffs (East Kent Regiment). He was appointed adjutant to the battalion in 1915. He died on 3 August 1917, at the age of 38, and is commemorated on the Menin Gate memorial, Ypres, Belgium.\n\nA member of Corinthian Lodge no 1208, initiated on 19 March 1906, he was born in Lambeth, Surrey and was the son of the late Frederick George, a former Excise Officer, and Ellie Sherren (Emma Kempton Bishop). In 1881 the family were living at 132 Lowden Road "Milkwood Villa", and at that time Arthur was one year old and had two elder sisters, Mary and Alice. Arthur was also the brother of Hugh (below), who was born in Dover the following year.\n\nArthur was married on 20 December 1902 at St Michael''s Church, Woods Green, Middlesex, to Bessie Jane Paine) of 118, Folkestone Road, Dover. Then Arthur was a civil engineer and was living at 9 Saxon Street, Dover.\n\nThere was an extensive report in the Dover Express:\n\nIt is with deep regret that we have to record the death of Captain A O Sherren, of the Buffs, who was killed by a shell on August 3rd. Captain A O Sherren, when the war broke out, was in command of the Dover Company of the 4th Buffs. He was 37 years of age, and was educated at Dover College, and afterwards became a pupil of Mr H E Stilgoe, the Borough Engineer and Surveyor, and afterwards he was Assistant Engineer and Surveyor of Dover till 1906, when he was appointed Surveyor to the Cheriton District Council.\n\nHe was one of the earliest members of the Dover Rifle Club, and subsequently joined the Territorials, and rose to the rank of Corporal. Offered a commission in his Battalion, he accepted it, and before very long he attained the rank of Captain, and was placed in command of the Dover Company. After the war broke out he was engaged in coast defence work, and was a Director of Coast Defences, ranking as a major, and was at Lowestoft during the bombardment. He went to France in April last.\n\nAn officer has written to Mrs Sherren as follows:- "It was while in command of my Company that your husband''s portion of the line was subjected to the heaviest shelling from the enemy. He went out to see exactly what the situation was, when he was suddenly struck by a piece of shell.  His death was instantaneous and in consequence there was no pain. We buried him as best we could where he fell. Your husband was one of the most popular and dearest officers in the Battalion. No one had anything but the very best opinion of him."\n\nThe greatest sympathy will be extended to Mrs Sherren and her three children who are left. Mrs Sherren was a daughter of the late Captain Payn, formerly Commandant of the South Eastern and Chatham Railway Marine Service.\n\nPrevious to the war Captain Sherren, by being frequently attached to Regular Battalions at Shorncliffe, had made himself a very efficient soldier, and he was also a fine rifle shot, and a very good revolver shot, and on more than one occasion won the Battalion championship.\n\nAt the Cheriton Urban District Council meeting last week, the Chairman alluded to the deeply regretted news of the death in action, on August 3td, of Captain A O Sherren, the Surveyor and Sanitary Inspector to the Council. He remarked that Captain Sherren had held that office under the Council since 1906, and during the whole period of his employment up to the outbreak of war, had filled his position with an efficiency which left nothing to be desired; and the work which he performed, no matter how arduous, was always carried out willingly and conscientiously, and to the entire satisfaction, not only of the Council, but of the general public. The speaker added that, personally, he entertained for Captain Sherren feelings of admiration and personal regard, and on hearing the news, he felt that he had lost a personal friend, as well as the Council being deprived of the services of a valuable official. He moved that a letter be sent expressing the heartfelt sympathy of the members of the Council with Mrs Sherren, and members of the deceased officer''s family. Mr Foster, Mr Quested, and Mr G J Taylor, also, in paying warm tributes to Captain Sherren, voiced the esteem and regard in which he was universally held; and the motion, which was seconded by Councillor Kindness, was carried unanimously in silence.     \n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(532, 'H', 'G.', 'Sherren', 'Hugh Godwin Sherren died of typhus on 28 February 1920, when he was 37. He was a Major, mentioned in dispatches, in the Royal Army Medical Corps. He is buried at Haidar Pasha Cemetery, Turkey.\n\nHe was born in Dover but his mother later moved to 31 Grange Road, Ramsgate, and his address at death was 14 St Mildreds Road, Ramsgate. He was brother to Arthur, above. In 1901 he was a medical student and was with Isaac and Henrietta Jones at 76 London Road, Dover. Henrietta, née Bishop, was his mother''s sister.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(533, 'W', 'H.', 'Shillito', 'William Harry Shillito, G/9735, is commemorated on the Arras memorial in France. He was a Lance Corporal in the 6th battalion of The Buffs (East Kent Regiment) and he was 20 years and 9 months when he died in action on 11 July 1917.\n\nBorn, enlisting, and living in Dover, he was the son of Mr David Henry, a carpenter and joiner, and Mrs Ada Shillito of 26 Balfour Road, Dover, formerly 55 Astley Avenue, Dover, and in 1911 of Dodds House, Dodds Lane, Dover. At that time William''s sister Florence Agness had also been at home, and William had been an apprentice to French polishing at the Connaught Coach Building works.\n\n  Released from strife, from sin, and pain, And free from every care, By angels'' hands to heaven conveyed, To rest for ever there. We had to part; but oh! the pain It caused us to endure; But God thought best that he should rest In heaven for evermore. From his sorrowing Father, Mother, and Sister\n\n\n![W H Shillito, courtesy Dover Express](%asset_url%pictures/SurnamesShe/ShillitoWHphoto.gif "W H Shillito, courtesy Dover Express"){.left}\n\n![WH Shillito name on Arras, by Andy and Michelle Cooper](%asset_url%pictures/SurnamesShe/ShillitoWHArras.gif "WH Shillito name on Arras, by Andy and Michelle Cooper"){.right}\n\n![Shillito announcement, courtesy Dover Express](%asset_url%pictures/SurnamesShe/ShillitoWH.gif "Shillito announcement, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(534, 'A', 'R. ', 'Shingleton', 'Arthur Robert Shingleton,\n\n1925 - In ever loving memory of my dear son - from his loving Mother, Sisters, and Brothers. RIP\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(535, 'H', 'H.  ', 'Shott', 'Henry Hammond Shott was born on 13 October 1877 at Dover. He was a Captain in the Princess Charlotte of Wales'' Royal Berkshire Regiment, 1st battalion, and received a DSO. He gained his Royal Aero Club Aviator Certificate, no 530 with a Bristol Biplane on 30th June 1913 at the Bristol School, Brooklands.\n\nHe was 38 when he was killed in action on 26 August 1914. He is buried at Maroilles Communal Cemetery, France, grave ref not known\n\nHe was the son of Nils Shott, from Dover, and the husband of Hazel Morris Shott of 245 North Broadway, Yonkers, New York\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(536, 'H', 'F.', 'Sidders', 'Harry Frederick Sidders, 50194, was a Driver in the 56th battery of the Royal Field Artillery. He died on 28 July 1919 in India when he was 34, and is commemorated on the Kirkee 1914-1918 Memorial, India. \n\nBorn in Deal, he was the brother of John (below), and the son of Henry Sidders and his wife Hannah Mary (nee Hodges), who married in 1882 in the Eastry area, near Dover. They lived at 10 Edgar Road, and in 1911 at 76 Balfour Road. Harry Sidders was then working as a warehouseman in a wholesale grocer''s.\n\n\n![H F Sidders, courtesy Dover Express](%asset_url%pictures/SurnamesShe/SiddersHF.gif "H F Sidders, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(537, 'J', 'J. ', 'Sidders', 'John James Sidders, 45496, was a Private in the A section, 37th Field Ambulance of the Royal Army Medical Corps. He was a winner of the Military Medal and mentioned in dispatches for his work during heavy fighting. He was killed in action on 4 October 1916, when he was 23, and he is buried at Dartmoor Cemetery, Bercordel-Bercourt, France.\n\nHe was the brother of Harry, above, born at Hougham, but enlisting in Margate. In 1911 he was working as a shop assistant in a boot dealer. He had at least one sister, Edith, born in Dover.\n\n\n![J Sidders, courtesy Dover Express](%asset_url%pictures/SurnamesShe/SiddersJ.gif "J Sidders, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(538, 'A', 'L. ', 'Siffleet', 'Alfred Lionel Siffleet, 205169, was a Serjeant in the Royal Tank Corps, 12th battalion (formerly 1720 REK, MR). He was 26 when he died on 2 September 1918, and is buried in the Mory Abbey Military Cemetery, France. He had also served at Gallipoli.\n\nHe was the husband of Florence Alice Siffleet, who lived at 12 St George''s Road, Eastbourne, and he enlisted at Broad Oak, Sussex. He was the son of Mrs Goodwin, formerly Haslam, formerly Siffleet, and the late Alfred Lionel Siffleet, who had died at the age of 43 in 1903. Alfred Siffleet senior was born in Chatham, Kent, and he was a Lance Corporal in the infantry. The couple''s children had been born in various countries: Edward and Alfred in Malta, Charles and George in Bermuda, Mary in Barbados, and Stephen in the Isle of Wight. Mary, his wife, came from Warwick.\n\nIn 1911 Alfred was living at 3 Hawkesbury Court with his mother, Mrs Haslam, his sister Sarah and his half-sister Alice, both born in Dover. He was then working as a butcher''s assistant.\n\nAlfred is also named on the memorial at Eythorne, near Dover\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(539, 'G', 'H. ', 'Simmonds', 'George Henry Simmonds, M2/103476, was a Private in in the Army Service Corps, attached to the GHQ Signal Company of the Royal Engineers. He was 32 when he died on 31 October 1918, and is buried at Staglieno Cemetery, Italy. \n\nBorn in Loudwater, Buckinghamshire, he enlisted and lived in Dover. He was the husband of Daisy L. Simmonds, née Brockman, of 21 Buckland Avenue, Dover, whom he had married in 1912. He was brother-in-law to John J B Thompson.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(540, 'C', 'D.   ', 'Simmons', 'Charles Douglas Simmons was a Lieutenant Commander in the Royal Naval Reserve. He served aboard the HMS "Otranto" and gained a DSO. He died when he was 37 on 6 October 1918, when his vessel was lost in a collision off the Isle of Islay. He is commemorated on the Chatham Naval Memorial in the United Kingdom.  \n\nHe was the son of Charles and Mary Simmons of Dover, who in 1891 were living at 16 Maison Dieu Road, where Mr Simmons was working as a wholesale grocer provision merchant. He had a younger brother, John, like him born in Dover. By 1901 Charles was a midshipman in the Naval Reserve. He gained his 2nd Mate''s ticket on 10 January 1902, and in 1911 he is recorded as a 2nd Officer Lieutenant in the Royal Naval Reserve, aboard the Minesawa at Tilbury Docks. He was the husband of Marjorie Simmons, who lived at 17 Worbeck Road, Anerley, London.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `casualty` (`id`, `given_name`, `middle_names`, `family_name`, `narrative`, `war`, `civilian`, `gender`, `final_resting_place`, `date_of_birth`, `date_of_death`, `commemoration_photo`, `rank_at_death`, `service_country`, `place_of_birth`, `last_known_address`, `last_known_address_year`, `recently_uploaded`) VALUES
(541, 'H', '    ', 'Simmons', 'Harold Simmons was born in Dover in 1884, the son of Sylvia Ann née Vincer and George John Simmons, who married in 1873.\n\nGeorge Simmons was born in Dover, and in 1881 was a coachworker. The family were then living at Ivy Cottages, Chapel Street, Felton Chertsey, when there were four children - Frederick, aged 6, born Grantham, Louisa, aged 4, born Croydon, and two born in Southampton - Arthur, aged 2, and Ernest, aged 1.\n\nGeorge died Dover in 1889, and in 1891 Mrs Simmons was living at 7 Worthington Lane, Dover, and working as a charwoman. With her were Arthur, Ernest, and Harold, then aged 7. Mrs Simmons remarried on 27 July 1891 to Edward Henry Comper, a school instructor, and in 1901 Harold, then a clerk in the ships'' stores, was living with them at 18 Castlemount Road. Doris Crockett, aged 1 and born in Scotland, was there too; she was Harold''s niece, the daughter of Louisa, who had married George Davidson Crockett in Dover in 1898.\n\nHarold joined on a short service as no 5191 in the Army Ordnance Corps at Woolwich on 6 October 1902, having been considered fit for service on 4 October at Dover Castle.  He had previously been considered unfit owing to his chest measurement being under requirement. He was transferred to the Army Reserve on 27 December 1905 and saw service in Bermuda from 20 November 1906. He returned home on 27 January 1910, and at the 1911 census was living at 22 Royal Military Avenue, Cheriton, working as a storeman for the Army Ordnance Department. He was eventually struck off from the Reserve after failing to render a life certificate on two consecutive occasions in December 1911 and March 1912. \n\nHarold''s mother and stepfather remained in Dover, living at the Dover Institute in Biggin Street, where Mr Comper was a steward. Mrs Comper died in Dover in 1926, aged 83(?). Mr Comper in 1927 at the age of 73.\n\nwith thanks to Joyce Banks for this identification\n\nHarold''s stepfather may have been the father of Ernest Comper\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(542, 'J', 'H.    ', 'Simmons', 'John H. T. Simmons was a time-serving Bandsman from the Northumberland Fusiliers,  He was 32 (34?) when he died on 20 June 1920, from wounds caused by gas.\n\nHe was buried on 23 June at Charlton Cemetery in Dover, 3H 31, with military honours, and with the Last Post being sounded by the band of the Connaught Rangers. Amongst the mourners, with his wife and his father-in-law, Mr Hart, were members of the Dover Branch of the National Federation of Discharged and Demobilised Sailors and Soldiers\n\nHe was the son of Mrs F Kenworthy and the husband of Mrs F. Simmons of 183 Clarendon Street, Dover, where he died. She later became Mrs Bennett. She stated that her husband "never got over" being gassed during the war, though he had served all through.\n\nAt the bottom of his gravestone are the words:\n\nHe died for us\n\n\n![Mrs Simmons house, by Simon Chambers](%asset_url%pictures/SurnamesShe/SimmonsJhouse.gif "Mrs Simmons house, by Simon Chambers"){.left}\n\n![J Simmons gravestone, by Simon Chambers (under very difficult conditions)](%asset_url%pictures/SurnamesShe/SimmonsJgravestone.gif "J Simmons gravestone, by Simon Chambers (under very difficult conditions)"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(543, 'D', 'P. T.     ', 'Simpson', 'Douglas Percy Thomas Simpson, G/23516, was a Private in the 10th battalion of The Buffs. He died in action on 13 August 1918 at the age of 43. He is buried at Pont-Du-Hem Military Cemetery, La Gorgue in France.\n\nBorn, enlisted, and living in Dover, he was the husband of Emily Simpson, of 118 Clarendon Street, Dover. In 1911 he was working as a warehouseman in a grocery, and the couple had three children; George, Ethel, and Mabel, all born in Dover.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(544, 'V', 'J.      ', 'Skiggs', 'Victor John Skiggs, 64042, was 21 when he died in action on 12 July 1918. He is buried in the British Extension of the Bully-Grenay Communal Cemetery, France. He was a Private in the 1st battalion of the Royal Fusiliers (formerly 201635 The Buffs), and was born in Sandon (or Broadwater, according to 1911 census), Hertfordshire, but enlisted and lived in Dover\n\nHe was the son of Mr Edward Charles and Mrs Ruth Skiggs, of 88 Union Road, Dover. In 1911 the family were living at 108 Union Road, where Victor was a baker''s boy, and his father was working as a general labourer in the Gas Works. He had three siblings, Francis, Kathleen, and Hilda, who was born in Buckland, Dover.\n\n"In daily sacred memory of Victor John, who made the supreme sacrifice" From Mother, Brother and Sisters. Mr Skiggs died in 1938, aged 63.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(545, 'G', 'H.      ', 'Smart', 'George Henry Smart was a Captain in the 4th battalion of the West Yorkshire Regiment (Prince of Wales'' Own), attached to the Loyal North Lancashire Regiment. He was killed on 22 December 1914, and is commemorated on Le Touret Memorial, panel 9 and 10.\n\nHe was an Old Dovorian (old boy of Dover College), and in 1901 he was at the Royal Military College, Sandhurst. By 1911 he was a Captain in the Special Reserve and in receipt of retired pay after eight years service in the regular army. He had been born in Bombay.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(546, 'A', '      ', '*Smith', 'Arthur Philip Smith, 308719, lived at 87 Snargate Street, Dover, in which town he was born on 19 June 1886. He was the son of John Taylor Smith and his wife Mary.\n\nIn 1891 the family were living at 5 St John''s Place, Snargate Street, and Mr Smith was working as a corn merchants'' labourer. There were then six children, Selina, 11, John, 9, Charlotte, 7, Arthur, 5, Thomas, 3, and Ellen, six months. Ten years later there were another three children, William, then aged 8, Mary, 6, and George, 4. Selina was working as a general domestic servant and John was a corn miller labourer like his father. All the family were born in Dover.\n\nArthur had already begun his career in 1901, working as a boiler cleaner. He became a 1st class Stoker Petty Officer, and was lost with the "Aboukir" on 22 September 1914.  He is commemorated on the Chatham Naval Memorial in the United Kingdom. His father was notified of his death at 71 Snargate Street.\n\n\n![A Smith, courtesy Dover Express](%asset_url%pictures/SurnamesShe/SmithA.gif "A Smith, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(547, 'C', '      ', '*Smith', 'Charles Smith,\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(548, 'C', '      ', 'Smith', 'Charles Smith,  served in the West Riding Regiment\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(549, 'F', 'W.      ', 'Smith', 'Frederick W. Smith\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(550, 'G', 'A.', 'Smith', 'George Arthur Smith, 37105, was a Serjeant in the Royal Garrison Artillery, 346th battery. He was a winner of the Military Medal. He died of wounds on 19 April 1918, and is buried at Etaples military cemetery in France.\n\nBorn in Prospect, Bermuda, he was the son of George and Louise Smith of 295 Folkestone Road, Dover. He enlisted at Hamilton, Lanark.\n\nThe words at the bottom of his headstone read:  \n\nHe died for us May he rest in peace\n\n\n![GA Smith, grave at Etaples, by Simon Chambers](%asset_url%pictures/SurnamesShe/SmithGAgrave.gif "GA Smith, grave at Etaples, by Simon Chambers"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(551, 'J', 'W.      ', 'Smith', 'John William Smith, probably PW/6529, a Private in the Duke of Cambridge''s Own (Middlesex Regiment), from the 21st battalion. He was born in Sandhurst, the son of James, a labourer, and Harriet Smith.\n\nOn 7 November 1901, at St Bartholomew''s, Charlton, Dover, he married Mary Jane Battley. She was the daughter of mariner Robert John Battley, and living at 10 Alexandra Cottages, Tower Street. John Smith was also living in Tower Street, at number 19, and was then working as a carter.\n\nIn 1911 the couple were living at 66 Tower Hill, Tower Hamlets, and with them were three sons, John, 8, Albert, 7, and Henry, 5. They would be joined by Ernest, born 1913, and Robert, born 1915. John Smith was then working as a bricklayer''s labourer.\n\n He is said to have been working for Flashman''s in Dover before enlisting in Canterbury. He died on 8 or 9 April 1917, and is commemorated on the Thiepval Memorial in France, pier and face 12D and 13B\n\nIn 1918 Mrs Battley inserted an In Memoriam, "In ever loving memory of my dear husband, Private J. W. Smith, Middlesex Regiment, who was killed in action on April 8th 1917.\n\nA loving husband, always kind, Loved by those left behind, No friend like him earth I find. Never forgotten by his Wife and Children."\n\n\n![J Smith, courtesy Dover Express](%asset_url%pictures/SurnamesShe/SmithJ.gif "J Smith, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(552, 'T', 'J.', 'Smith', 'Thomas Joseph Smith, GS/371, was a Private in the 2nd battalion of the Royal Sussex Regiment and part of the BEF. He was 26 when he was killed in action at Richbourg, L''Avoue, on 9 May 1915.\n\nHis death was confirmed four months after he had been reported missing, and he is commemorated on Le Touret memorial, France.\n\nHe was the fourth son of Peter and Susannah Smith, from 10 Woolcomber Lane, Dover, born and enlisted in Dover. In  1891 the family was living at 8 Queen''s Court, and in 1901 at number 7 Queen''s Court, Dover. The ancestral family had originated in Ireland (Roscommon/Longford)and moved to Barnsley and Doncaster before coming to Dover.\n\nBefore Thomas enlisted he had worked on the erection of the Marine Station (now the Cruise Terminal). He was considered by those who knew him as "a fine young fellow".\n\n \n\n  No mother''s care did him attend, Nor o''er him did a father bend; No sister by to shed a tear, No brother by his words to hear. Sick, dying in a foreign land, No father by to take his hand: No mother near to close his eyes, Far from his native land he lies.\n\nOne of Thomas''s brothers was Edward Matthew Smith, and he owned a confectioner''s shop at 45 Woolcomber Lane. During the second World War, Edward (left, wearing glasses) was an observer in a bunker at East Cliff, Dover.\n\nTheir father, Peter, was an army veteran, stationed in 1871 at Cheriton, Folkestone. He later came to the Grand Shaft Barracks, Dover. He and his wife Susannah, nee Parks, are buried in St James, Dover. Their gravestone reads:\n\n \n\nIn Loving Memory of Peter Smith passed away 8th Nov 1921 aged 66 years also of his Beloved Wife Susannah Who Departed This Life 10 March 1940, Aged 88 years "At Rest"\n\n"These Men Shall Not be Forgotten"\n\nwith thanks to Lorraine Amos\n\n\n![TJ Smith, courtesy Dover Express](%asset_url%pictures/SurnamesShe/SmithTJ.gif "TJ Smith, courtesy Dover Express"){.left}\n\n!["He whom this scroll commmerates ...", courtesy Lorraine Amos](%asset_url%pictures/SurnamesShe/SmithTJcert.gif ""He whom this scroll commmerates ...", courtesy Lorraine Amos"){.right}\n\n![verse from death announcement, courtesy Dover Express](%asset_url%pictures/SurnamesShe/SmithTJannounce.gif "verse from death announcement, courtesy Dover Express"){.left}\n\n![Edward Smith, wearing glasses, courtesy Lorraine Amos](%asset_url%pictures/SurnamesShe/SmithEM.gif "Edward Smith, wearing glasses, courtesy Lorraine Amos"){.right}\n\n![Peer and Susannah Smith''s gravestone, courtesy Lorraine Amos](%asset_url%pictures/SurnamesShe/SmithTJparentsstone.gif "Peer and Susannah Smith''s gravestone, courtesy Lorraine Amos"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(553, 'W', 'T.', 'Smith', 'William Thomas Smith, L/9391, was the son of William Smith and Sarah Jane nee Keigwin. Born on 15th November 1893 at Abbey Street, Faversham, Kent, he had a twin sister, May Elizabeth Smith, and was the youngest of eleven children.  In 1901 the family were living at 34 Lower Brents, Faversham.\n\nWilliam lived in Dover, and in the Great War he enlisted in Canterbury to become a Private in the 2nd battalion of The Buffs (East Kent Regiment). He died when he was 22 on 3 May 1915, and is commemorated on the Menin Gate Memorial.\n\nHis mother, who, with her brothers and sisters, had been born at the Dover Workhouse, Union Road, had died in 1905, and his next of kin was given as his sister, Mrs Eliza Ann Page, from 39 Marine Parade, Dover.\n\n"Remembered with Gratitude and Honour. To be Never Forgotten. You did so much for our Freedom".\n\nwith thanks to Lorraine Amos\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(554, 'W', 'T.      ', 'Smith', 'William Trayton Smith, L/8019, was a Serjeant in the 6th battalion of The Buffs. He had seen ten years service with the Buffs in India before being sent to France. There he died in action on 13 October 1915 when he was 27. He is commemorated on the Loos Memorial in France.\n\nBorn and enlisted in Dover, he was the son of Aaron Smith, of 58, Odo Road., Dover, and lived at Tower Hamlets. He was the brother of J J Smith, of 20 Charlton Avenue, Dover.\n\n \n\nWilliam is in the centre of the picture. On his left is his brother Lance Corporal J Smith, who was invalided home with frozen feet. He took part in the first battle of Ypres. On the right is their brother Sapper S. Smith, who served in the Royal Engineers from the beginning of the war.\n\n\n![](%asset_url%pictures/SurnamesShe/SmithWT.gif){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(555, 'A', 'H.', 'Snelling', 'Albert Henry Snelling, 125179, was a Gunner in D battery of the 122nd Brigade of the Royal Field Artillery. He died of wounds on 29 April 1918. He is buried at Esquelbecq Military Cemetery, France. \n\nEnlisted at Woolwich and living in Dover, he was the son of Mr and Mrs A. E. Snelling, of 1 West Mount, Priory Hill, Dover.\n\n \n\n \n\n \n\nwith thanks to Mike Diston\n\n\n![Albert Snelling, courtesy Mick Diston](%asset_url%pictures/SurnamesShe/Snelling-A.gif "Albert Snelling, courtesy Mick Diston"){.left}\n\n![A Snelling, close up, courtesy Mike Diston](%asset_url%pictures/SurnamesShe/Snelling-A-cu.gif "A Snelling, close up, courtesy Mike Diston"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(556, 'E', 'W. ', 'Sole', 'Edward William Sole, 8742, enlisted in Canterbury and was a Pioneer Sergeant in the 1st battalion of the Lincolnshire Regiment. In 1911 he was in the 2nd Battalion at Victoria Barracks, Portsmouth, working as a carriage smith.\n\nHe died in action on 20 October 1914, at the age of 24. He is commemorated on Le Touret Memorial, France.\n\nBorn and living in Dover, he was the nephew of Harry Sole, below, the son of Harry''s brother Edward W. Sole. His wife was Harriet S Culley (formerly Sole) of 16 George Street, Dover, who had two children when her husband was killed. His brother, William, below, also died.\n\n\n![E W Sole, courtesy Dover Express](%asset_url%pictures/SurnamesShe/SoleEW.gif "E W Sole, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(557, 'F', 'H. (H. F.?)', '*Sole', 'Harry Sole, 9846, was born in Dover and enlisted as a Private in the East Surrey Regiment, 3rd battalion. He was well-known in Dover, being a veteran soldier later employed by W Smith and Co, and for two or three years before at Messrs Palmer.\n\nIn his army career he had served in the Matabeleland Campaign of 1896, in Mashonaland in 1897, through the South Africa war, and in the Zulu rebellion of 1906. In the Great War he was called up as a Reservist, being the first in Dover to apply for a railway ticket, and saw action at Mons, Aisne, Marne, and La Basse. He was wounded on 14th October 1914 (which was believed by the family to be the same day that his nephew Edward Sole was killed).\n\nHe was invalided out of the army on 9 July 1915, and died on 20 May 1916 from injuries following an air raid on Dover, when a bomb struck near the Grand Shaft Barracks. He was buried at St James cemetery, Dover in the United Kingdom.\n\nOh how swift has been the parting, Oh how keen has been the pain, Yet I know that some day, somewhere, He and I will meet again. No one knows how much I love him, How I''ll miss him more and more; Yet I know that he''ll be waiting For me on the other shore. from his sorrowing little Em\n\n\n\nThe funeral was conducted by the Rev A W Dawes with full military honours, with the band of the East Surreys attending and the same regiment supplying the firing party. There were many mourners, including from his family his mother, his fiancée Miss Emily Smith, his married sisters Mrs Collard and Mrs Maynard, with Mr Maynard, his nephews David and Harry Sole, his nieces Anne, Nellie, and Maisie Sole, his brother, Sergeant E. W. Sole, of the Buffs, and his cousin Mr Dunk. There were also many flowers, from his family and his comrades, including those from his cousin Ellen Fielding, his step-brothers, three tributes from the army, and his friends at the "Lord Nelson".  \n\nThe gravestone reads:\n\nIn Loving Memory of Private H. S. Sole 3rd East Surrey Regiment who died May 20th 1916 aged 34 years Also of Pnr Sergeant E W Sole 1st Lincoln Regiment who was killed at Laventie, Flanders October 20th 1914, aged 24 Also of  Private W. H. Sole 6th Buffs who was killed in France May 3rd 1917 aged 20 years Nephews of the Above His brother, Sergeant E. W. Sole, father of Edward, had been for many years a member of the Territorial Buffs, and then served in the Kent detachment of the 2/4th Buffs. He was an acting drill instructor, and lived at 29 Chapel Place.  Another brother, Corporal W. J. Sole, served in South Africa in the Pretoria Regiment, E Company, fighting through the German South Africa campaign.  A view of St James cemetery. In the centre is Private Sole''s gravestone, amidst rows of CWGC headstones. In the distance, beneath the cross,  can be seen the graves of the raid on Zeebrugge, 23 April 1918.\n\nNote: Private Sole''s name is in doubt because his gravestone gives an initial letter of "S" for his second given name, while the CWGC records him merely as "H. F. Sole", though gives the grave reference of the grave pictured, and a contemporary report suggests the name of this casualty is "Frederick H. Sole". The birth index gives "Henry Frederick Sole" born in Dover in 1882, as does the newspaper announcment.   \n\n\n![H Sole, courtesy Dover Express](%asset_url%pictures/SurnamesShe/SoleH.gif "H Sole, courtesy Dover Express"){.left}\n\n![announcement, courtesy Dover Express](%asset_url%pictures/SurnamesShe/SoleHannouncement.gif "announcement, courtesy Dover Express"){.right}\n\n![H Sole gravestone, by Simon Chambers](%asset_url%pictures/SurnamesShe/SoleHgravestone.gif "H Sole gravestone, by Simon Chambers"){.left}\n\n![](%asset_url%pictures/SurnamesShe/SoleHgraveincemetery.gif){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(558, 'W', 'H. D.', 'Sole', 'William Henry David Sole, G/13610, enlisted in Canterbury and served as a Private in the 6th battalion of The Buffs. He died in action on 3 May 1917 in the third battle of the Somme at the age of 20. He is commemorated on the Arras memorial in France.\n\nBorn and living in Dover, he was the son of Edward William and Sarah Ann Sole, of 57 Longfield Road, Dover, who had formerly lived at 29 Chapel Place. He was the brother of Edward, above, and they were both nephews of Harry Sole, above.\n\n\n\nThe picture above left we believe was taken in 1915. Left is the reverse of the frame. It notes Private Sole as being number 4264 of 2/4 battalion The Buffs, and beneath are the words "To Harry 1917" Also on the reverse are the words "killed in action May 3 1917, somewhere in France" and a further note "Cherisey, left of Arras" (Note: This is Chérisy, south east of Arras.)\n\nBelow is a cutting of an "In Memoriam" announcement frm the newspaper, in memory of both William and his Uncle Harry Sole.\n\npictures on left and death plaque by kind courtesy of Peter Silk\n\n \n\n\n![WHD Sole, courtesy Dover Express](%asset_url%pictures/SurnamesShe/SoleWHD.gif "WHD Sole, courtesy Dover Express"){.left}\n\n![](%asset_url%pictures/SurnamesShe/SoleWHD2.gif){.right}\n\n![](%asset_url%pictures/SurnamesShe/SoleWHDback.gif){.left}\n\n![](%asset_url%pictures/SurnamesShe/SoleWplaque.gif){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(559, 'E', 'W.  ', 'Solley', 'Ernest William Solley, Railway Operating Division. He was born in Dover on 20 February 1889, the son of John Solley and his wife Catherine Sarah Gasson, née Terry, who had married at St Andrew''s on 13 November 1886. Ernest was christened at the same church on 14 April 1889, when the family were living at 280 London Road.  He was the second child and had an elder sister, Ellen Elizabeth, born in 1888. Other children were Benjamin George, born in 1890, Francis John, born in 1895, and Florence May, born in 1897.\n\nMr Solley was a tailor, and in 1891 the family were living at 17 Oxford Cottages, Buckland. In 1901 and 1911 they were at 2 Magdala Road. On 22 November 1924 Mr Solley wrote from Rose Cottage, St Radigund''s Road, requesting that his son should be included on the 1934 panel on the Town War Memorial. He would not see the panel himself, as he died in 1929; Mrs Solley, who was living at 9 Salisbury Road when her husband''s will was proved, however did and saw also the outbreak of World War II, as she died in 1942.\n\nBenjamin Solley served in the Great War in the RAMC. He was demobbed on 1 July 1919, and also became a tailor. He was married in 1917 to Dorothy Walton, whose address as his next-of-kin was given as 4 Union Road.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(560, 'W', 'R.  ', 'Southen', 'William Richard Southen, M/5222, was born in Folkestone on 31 January 1892, the son of William Richard, a plasterer, and Margaret Southen. There were at least eight children in the family; William was the third and the first son. In 1901 the family were living at 7 Barton View, Dover, and in 1911 at 94 Oswald Road, Dover. Then, living at home, were Lily, Margaret or Louisa, Maudie, Elsie, Ernest, Winifred, and Florence, as well as William who by then was working in a bakery.\n\nIn 1915 William married Ada Hayward, the daughter of Mr and Mrs Hayward of Alfred Square, Deal. He continued working as a baker in Deal before joining the Royal Navy. He was serving as a Cook''s Mate in the Royal Navy, HMTB "No 11" when the vessel was mined and sunk with the loss of 24 men 7 March 1916. He is commemorated on the Chatham Naval Memorial in the United Kingdom.\n\nwith thanks to Judith Gaunt image from Roll of Honour published T F Pain, East Kent Mercury,\n\n\n![](%asset_url%pictures/SurnamesShe/SouthenWR.gif){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(561, 'A', '', 'Spain', 'Alfred Spain, 198647, had been an Able Seaman in the Royal Navy, serving aboard the HMS Mars. He became a Gun-layer in the reserve, and worked for Mr Morgan, a builder of Dover. He died on 25 August 1914, aged 30, as the result of an accident during gun practice.\n\nHis body was brought home after it was landed at Grimsby, and he was laid to rest on a Saturday afternoon at SS Peter and Paul, River, Dover.  There were many mourners at the ceremony presided over by D A Townend, which began at the church with the hymn "Rock of Ages" and continued with the dead march from "Saul", played on the organ by Rev Townend.  Four of his workmates, Messrs Parker, Todd, Wood, and Hilton carried his coffin, followed by three other comrades, Messrs Lewes, Vallentine, and Lawrence. The coffin bore the inscription "Alfred Spain, died August 1914, aged 33 years"\n\nMr and Mrs R Spain, his parents, who lived at the Royal Oak cottage, River, Mr G. Spain, his brother, with his wife, and Mrs Sayers, who lived at 45 Winchelsea Street, Dover, and Mrs Leeming, his sisters, with their husbands, were also present. The notes attached to the wreaths revealed that he was well respected and loved:\n\n"In loving remembrance of dear Alfred, from his sorrowing Mum and Dad" "To Alfred, with love from little Gwen" "In loving memory of an old chum and shipmate, from Mr and Mrs C Terry" "With the sympathy and love of his sorrowing messmates, Mess No 2" "From the ship''s company with deepest sympathy" "A token of respect and sympathy from Mr G Grounsell" "With Mr Charles Copus'' deepest sympathy and regret"    "With deepest sympathy and sincerest regret, from his comrades working at "Woodlands", and in loving remembrance of a kind-hearted and loving friend"\n\n\n![A Spain, gravestone, by Simon Chambers](%asset_url%pictures/SurnamesShe/SpainAgravestone.gif "A Spain, gravestone, by Simon Chambers"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(562, 'E', 'S. S.', 'Spain', 'Edward Sidney Stephen Spain, 235099, was a Leading Seaman in the Royal Navy, lost in the submarine attack on HMS "Pathfinder" at the Firth of Forth on 5 September 1914. He was 25. He is commemorated on the Chatham Naval Memorial in the United Kingdom.\n\nHe was the son of  Mr and Mrs Edward George Spain, of 63 Mayfield Avenue, Buckland, Dover.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(563, 'T', 'E.', 'Spain', 'Thomas Edward Spain, 151075, was a Sapper in the Inland Water Transport of the Royal Engineers. He died from accidental injuries on 31 October 1916 at the age of 30. He is buried at the Aire Communal Cemetery, in France.\n\nBorn and enlisted in Dover, he was the son of Thomas Jarvis and Hannah Jane Spain from Dover, husband of Lizzie Spain of Limekiln Street, Dover\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(564, 'W', 'G.', 'Spendiff', 'William George Spendiff, 203998, was in the 6th battalion of the Queen''s Own (Royal West Kent Regiment). He died in action on 24 August 1918, aged 37, and is buried at Meaulte Military Cemetery, France.\n\nBorn in Deal, he was the eldest son of Mr Spendiff and Emma Jane Spendiff of 87 South Road, Dover, and brother to Walter, below. His wife, Rhoda, whom he had married in 1905, and their two children, Edith, born Dover, and Rose, born Hornsey, Middlesex, lived at Salisbury Road, Wood Green. This was his residential area, and he enlisted at Haringey.\n\nIn 1911 his mother-in-law, Mrs Sophia Relf, was also living with them, at 10 Salisbury Road, Noel Park, Wood Green, Middlesex. In that year William Spendiff was a cellarman, working for a Railway Company Refreshment Department.\n\n\n![WG Spendiff, courtesy Dover Express](%asset_url%pictures/SurnamesShe/SpendiffWG.gif "WG Spendiff, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(565, 'W', 'S. G.', 'Spendiff', 'Walter Sidney Gauntlett Spendiff, 3316, was in the 43rd battalion of the Australian Infantry, serving as a Private.\n\nBorn in Dover, the brother of William, above, he was an old boy of St Bartholomew''s School. He had brown eyes and dark brown hair. Aged 24 when he arrived in Australia, and working as a labourer,  he was 5 feet 6 inches tall when he enlisted in Adelaide on 29 March 1916, at the age of 26 years and 11 months.  He stated he was a Methodist. He left for the Western Front aboard the Malakuta on 7 June 1916. His battalion arrived at Devonport on 22 August.\n\nOn 25th November he was transferred overseas, unfortunately then to spend a short while in hospital with scabies. He had also a tendency to flat feet, though this caused no problems. He rejoined his battalion on 20 December, was dispatched to 171st company on 16 February 1917, and then returned to his own battalion on 26 March. He was killed in action on Friday afternoon, 20 April, 1917. He was 29 (28).\n\nHe is buried at the Berks Cemetery Extension, Belgium. The words at the bottom of his gravestone read: "Peace Perfect Peace". He is also commemorated on the South Australian War Memorial, North Terrace, Adelaide.\n\nA third brother was also living in Australia - Mr R J (Robert John?) ("Bob") Spendiff, of Berri, River Murray, where he was a fruit-grower and building contractor, based at Winkie, outside Berri, in south Australia. He later chaired the local district council. He was executor of Walter''s will. \n\nwith thanks to Sarah with thanks for extra details to Peter Sheppard\n\n\n![WSG Spendiff, gravetson, by Simon Chambers](%asset_url%pictures/SurnamesShe/SpendiffWSGgravestone.gif "WSG Spendiff, gravetson, by Simon Chambers"){.left}\n\n![WSG Spendiff, courtesy Dover Express](%asset_url%pictures/SurnamesShe/SpendiffWSG.gif "WSG Spendiff, courtesy Dover Express"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(566, 'W', 'G.', 'Spinner', 'William George Spinner, 168545. Before the war he had been an electrician, working first at the Dover Electricity Works and then for an electrician, Mr Val Martin. He became a Battery Quartermaster Serjeant in the 179th Siege Battery of the Royal Garrison Artillery. He died from typhoid on 12 November 1918 at Clivedon Hospital, Taplow, Buckinghamshire, aged 24. He left a wife, Minnie E. Spinner, of 8 Springfield Road. His parents were Charles and Mary Spinner, from Dover.\n\nWilliam had been married only five months. On 8 June 1918, home from the Front for a month''s leave, he wed Minnie Ethel Hollaway at the Primitive Methodist church in London Road. She was the niece of Mr and Mrs Stephen Lewis, of Fernbank, 75 Barton Road. The groom''s parents lived at 9 Belgrave Road. The Rev Goldstraw officiated, while Minnie''s cousin Mr W S Lewis played the organ. Minnie wore a gown of white silk striped voile, with an embroidered veil, and her bouquet of lilies was a gift from the groom. He had also bought her a golden pendant. The bridesmaids wore white silk also, trimmed with lace, topped by mob caps with pink streamers, and they carried baskets of pink and white flowers.  A reception for thirty guests was held at the bride''s uncle''s house, and the honeymoon at Tunbridge Wells, with the bride wearing a navy blue costume and a pink hat.\n\nA fortnight later, on June 23, the newly-weds attended another ceremony at the Castle. BQMS Spinner had been awarded the Military Medal for especial bravery. This occasion was on 10 April 1917, at Vimy Ridge. He was serjeant of his company and there was a call for volunteers. Twenty men were needed to capture a couple of German guns. They did so and manned them, and within 700 yards of the German lines and under heavy fire, maintained them until both guns were knocked out of action. \n\nWilliam''s funeral was held on the afternoon of Saturday 16 November. The service began at 2.30 in the London Road Primitive Methodist Church, and the cortège then went to St James, where he is buried. He was attended by many members of his family, and his wife laid a floral tribute, "In loving memory of my darling, from his Minnie".\n\nHis headstone reads:\n\nIn Loving Memory of William George Spinner MM BQMS RGA who died on Active Service November 12th 1918 Aged 24 years And with the morn those Angel-Faces smile, Which we have loved long since, and lost awhile.\n\nWilliam Spinner was a member of the London Road Primitive Methodist Church. On the Sunday evening following his burial, the Rev W W Goldstraw, who had conducted the funeral, spoke of the life and death of BQMS Spinner. The hymns included his favourite, "Nearer my God to Thee", and "Abide with Me", which William Spinner had sung as a solo at the church the evening before he had returned to France at the end of his last leave.\n\nIt is possible that William Spinner was the uncle of Freddie Spinner. Freddie''s father was Frederick Thomas Spinner, as was a brother of William''s.\n\nphoto of headstone and transcriptions with thanks to Joyce Banks\n\nsee also The Primitive Methodist Church memorial\n\n\n![8 Springfield Road, by Simon Chambers](%asset_url%pictures/SurnamesShe/Spinnerhouse.gif "8 Springfield Road, by Simon Chambers"){.left}\n\n![headstone, by Joyce Banks](%asset_url%pictures/SurnamesShe/SpinnerWGstone.gif "headstone, by Joyce Banks"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(567, 'R', 'G.', 'Spittle', 'Reginald George Spittle, 8937, was born at Aylesbury (Soldiers Died says Marylebone), Buckinghamshire. He enlisted in Hounslow, but lived in Aylesbury, and served as a Private in the London Regiment (Royal Fusiliers), 1st battalion.\n\nHe died of wounds on 2 February 1915, at the age of 20, and is buried on Cite Bonjean Military Cemetery, Armentieres in France.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(568, 'H', ' ', 'Squibb', ', 56838, was a acting Regimental Serjeant Major in the 222nd HQ Brigade of the Royal Field Artillery. He had a long army career, having served in the South Africa campaign, and had been awarded the MSM, Long Service and Good Conduct medal.  He was 51 when he died in Mesopotamia (at Raundi?) on 22nd November 1917 from pneumonia, and is buried at the Baghdad (North Gate) War cemetery in Iraq.\n\nHe was the son of Charles and Frances Squibb, who lived in Broadmayne, Dorset, where he was born. He enlisted in Dorchester. His wife Margaret, born in Aldershot, and their daughter lived at 53 Astley Avenue, and later Mrs Squibb moved to 3 Williams Cottages, Danson Lane, Welling, Kent.  IN 1911 the family were living at 46 Dour Street, Dover.\n\nOn 30th June 1924, F G Hayward, an architect and surveyor from the Market Square informed the Town Clerk that he had found two names of casualties who had been on his staff but who had not yet been included on the list of those to be commemorated on the Town Memorial. One was Harry Squibb, the other Robert McTaggart.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(569, 'B', 'B. ', 'Squire', 'Basil Brett Squire was a Lieutenant acting as Captain in the 460th battery, 15th Brigade, of the Royal Field Artillery. He was 20 when he died on 23 April 1917. He is buried at Tilloy British Cemetery in France.\n\nHe was the son of Basil Brett and Edith Jane Squire, who lived at 56 Leyburn Road, Dover, and in 1911 at 1 Leyburn Terrace. Mr Brett was born in Wivenhoe, Essex, and was a head brewer, and Mrs Brett was born in Mersea. They had four children in 1911, all born in Dover; Basil, Edith Mary, Edward Keith, and Hugh Noel.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(570, 'J', '', '*Stageman', 'Possibly John James Stageman, who was born at St George''s, Whitechapel in London in 1885, to John, a waterside labourer, and Clara, a trouser finisher. Clara Holverston and John Stageman married in Whitechapel in 1877.\n\nJohn James Stageman married Ada Annie King, in 1908, and they had children: .Cleveland Lillian, born 1909, David J A, born 1913, and Dorothy C, born 1916. There were two further children, Ada E, born 1919, and Ellen S, born 1921. In 1911 the family were living at 258 Katherine Buildings, Cartwirght Street, Whitechapel. Later, Mrs Stageman lived at 47 Royal Albert Buildings, Whitechapel, London. She was born in Dover.\n\nHe enlisted in Stratford, and served as 15515 (or 15575) in the Royal Field Artillery, 103rd battery, 31st brigade, as a Gunner, and died when he was 30 on 5th June 1916. He is buried at the Salonika (Lembet Road) Military Cemetery, Greece, grave 143.\n\nwith thanks to Peter Simpson\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(571, 'C', '', 'Stamp', 'Charles Stamp, PW213, was working as a labourer in the Admiralty Works in Dover in 1911. He was born in Dover, as were his mother, Martha, and his brothers Alfred and William, and sister Hilda. His father had died in 1898 in Dover.\n\nCharles Stamp enlisted in Woolwich and lived in North Woolwich, and was a Lance Corporal in the 18th battalion of the Duke of Cambridge''s Own (Middlesex Regiment).\n\nHis Company Officer wrote to his mother, Mrs Martha Stamp, of 15 Odo Road, Tower Hamlets, in his birth town, Dover, "He was working in a trench when a shell hit him, and he was killed instantly. Your son was one of my NCOs and I was very sorry indeed to lose so good a man. I am sure you will feel his loss very much, and I offer you my heartfelt sympathy in your loss.".  \n\nCharles was 27 when he died on 11 May 1916. He is buried in the Cambrin Churchyard Extension cemetery, France.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(572, 'R', 'M. ', 'Stanbridge', 'Robert Mark Stanbridge, 49074, was a Private in the 2nd battalion of the Northamptonshire Regiment (formerly 158604 RASC). He was 25 when he died in action on 26th March 1918, and is commemorated on the Pozieres Memorial in France.\n\nHe was born in Dover and enlisted in Canterbury, and his parents were John William, a fruiterer, and Ada Mary Stanbridge, who lived at 10 De Burgh Street, Dover. In 1911 Robert was working as a telephone clerk, and was living with his sisters, Edith Emma, Winifred May, and Doris Catherine, all born in Dover, and their parents at 8 Wood Street.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(573, 'L', 'G.', 'Stanley', 'Leslie George Stanley, L/9808, served in the 1st battalion of The Buffs. He died in action on 23rd October 1914, when he was 20. He is commemorated on the Ploegsteert Memorial, Belgium.\n\nBorn at Christchurch, Dover, he enlisted and lived in Canterbury. He was the son of David, a shipwright, and Elizabeth Stanley, of 3 Saxon Street, Dover. In 1911 the family were living at 21 Military Road; Leslie was then working as a boot repairer. His sister, Ailsa, was 14, and his brother Sidney was 23 and serving as a gunner in the Royal Garrison Artillery. Both were born in Dover.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(574, 'H', 'K. L.', 'Statham', 'Hugh Kington Llewelyn Statham enlisted in Canada on 23 September 1914. He was the son of the Rev Samuel Percy Hammond Statham and his wife Meta, née Gill, who was the daughter of The Venerable Hugh Stowell Gill, Archdeacon of the Isle of Man, and Margaret, his wife, née Llewellyn. Hugh was born at Cheddar in Somerset on 3 November 1886, and was educated at Windlesham and Dover College before going alone in April 1903 to Canada.\n\nOn enlistment he was recorded as five feet nine inches tall, with several scars; two on his right forearm, one on the wrist of his left hand, and one on the middle finger of his left hand. He also had a mole in the centre of his back. His eyes were blue and his hair brown. He had been working as a rancher.\n\n2nd Lt Statham was serving with 3rd battalion, attached to the 1st, of the Devonshires when he died on 6 September 1917. He was buried at the Coxyde Military Cemetery, Belgium, III F 10.\n\nHe left a wife, Margaret Renee, née Heneage, who lived at Thetis Island, British Columbia, when he enlisted, and later at Victoria. The couple had two children, Hugh Henry Llewellyn and Margaret Joan. Hugh would served in the Canadian Army during World War II with Margaret''s husband, his friend Ken Ogden, who was wounded during the campaign in Italy.\n\nwith thanks to Dierdre Freethy\n\nNote: Rev S P H Statham wrote a number of historical reference books. In 1899 he published, "The History of the Castle, Town and Port of Dover (London)". S P H Statham is noted as incumbent at St Mary in Castro, Dover, in 1901. He was an army chaplain, and died on 6 April 1940.\n\n\n![HKL Statham, courtesy Dierdre Freethy](%asset_url%pictures/SurnamesSt/StathamHKL.gif "HKL Statham, courtesy Dierdre Freethy"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(575, 'P', 'S. ', 'Stephenson', 'Philip Sydney Stephenson, G/14519, was a Private in the Queen''s Own (Royal West Kent Regiment). He died on 27th August 1916 in hospital from wounds at La Neuville, Corbie in France, which is where he is buried. He was 36.\n\nHis parents were Phyllis and the later Harker George Stephenson, and Philip was born in Buckland and spent most of his life there in Dover. She lived at Edith House, Heathfield Road, having moved there from 3 Buckland Avenue. His mother said that his home was always in Dover. However he enlisted in Clapham, and lived in Tooting.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(576, 'A', 'R', 'Stevens', 'Alexander Robert Stevens, 4331, was born in Belgium. He lived in Dover and was the son of Robert and Annie Stevens, and the brother of Harry, below. Their grandmother was Mrs Sarah Ann Walter, of 12 Longfield Road. In 1911 he was living with his grandmother and his aunt, Juliet Walter, at 1 Round Tower Street, Dover. He was then working as a milkman.\n\nBefore enlisting at Somerset House, he was a driver on the trams. He enlisted to become a Private serving in the 15th (County of London) battalion (Prince of Wales'' Own Civil Service Rifles) of the London Regiment.\n\n He died of wounds on 4 June 1916 when he was 24. He is buried at Le Treport Military Cemetery, France.\n\n\n![R Stevens, courtesy Dover Express](%asset_url%pictures/SurnamesSt/StevensAR.gif "R Stevens, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(577, 'E', 'P.   ', 'Stevens', 'Edward Percy Stevens, 2165, died in the Persian Gulf on 19th July 1916, while serving with the Indian Expeditionary Force. He enlisted and lived in Dover and was the youngest son of Mr Charles Stevens, of Primrose Road, and his wife''s name was Emma J. Stevens. She lived at 69 Limekiln Street, and later at 29 Old Folkestone Road, Dover.\n\nMajor Carder, in command of Edward''s battery, wrote to Mrs Stevens, "Dear Madam, It is with very great regret that I have to inform you of the death of your husband, Gunner Stevens, while serving in the Battery under my commands. His death occurred in hospital at ...... on 23rd July and was caused by malaria. You may rest assured that he received every possible care and attention during his illness. In the short time he served under me I always knew him as a keen hard-working soldier, and he would have risen quickly if he had been spared to us. I trust that the knowledge that he died doing his duty to his King and country may be some slight consolation to you in your sad bereavement. Yours very truly, C. Carder, RFA.".\n\nEdward was serving with "A" battery, 222nd brigade, of the Royal Field Artillery when he died, and was aged 35. He is buried at Basra War Cemetery, Iraq. \n\n\n![EP Stevens, courtesy Dover Express](%asset_url%pictures/SurnamesSt/StevensEP.gif "EP Stevens, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(578, 'G', 'V.  ', 'Stevens', 'Gorham Vinton Stevens was a Lieutenant in the 1/5th battalion of the Lincolnshire Regiment. He was 30 when he died on 18th January 1918 from double pneumonia after having been gassed in the trenches,  and is buried at the Chocques Military Cemetery in France.\n\nHe was the youngest son of the Rev L G Stevens, formerly curate of St Margaret''s-at-Cliffe, and was educated at the Forst School, Snaresbrook, and at Dover College. He was said to be a good all-round scholar and a keen athlete. He was captain of the Acadia Valley football team, Alberta, and five other members of the side at least also died in the Great War. He also was said to led his men several times over the top, and to have "sterling soldierly qualifications", and to be "justly popular among his fellow officers and the rank and file".\n\nHe was the son of the Rev. Lorenzo Gorham Stevens and Susan Lynde Stevens (nee Waddell), of Acadia Valley, Alberta, Canada, and had left his farm in southern Alberta to join the army, gaining a commission, as did his solicitor brother.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(579, 'H', ' ', 'Stevens', 'Harry Stevens, 9831, was Private in the 3rd Toronto Regiment in the Canadian Infantry. He was born on 20th May 1893, in Belgium, of a Dovorian mother. He was brother to Alexander, above. He was five feet seven inches tall, with blue eyes and light brown hair, and was a Methodist. He was an active member of Beach Avenue Methodist Church, Toronto, and was secretary of the Epworth League and Brotherhood.\n\nHe had a vaccination mark on his left arm and a little dent over his right eye. When he enlisted on 20th May 1914 he gave Mrs A H Peacock of 153 (163?) Balsam Avenue, Barry Beach, Toronto, his foster mother, as his next of kin, and had already seen two years service in the QOR. He gave his occupation as a lithographer. \n\nHe had written over 50 letters home since going overseas, but nothing was heard from him after 1st May 1915. His date of death is given by the CWGC as 2 May 1915, though he was reported missing in April and his relative  F. A. Walter gives the date of his death as 20th April 1915. He is commemorated on the Menin Gate memorial at Ypres in Belgium.\n\n\n![StevensH, courtesy Dover Express](%asset_url%pictures/SurnamesSt/StevensH.gif "StevensH, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(580, 'A', 'W.  ', 'Stewart', 'Arthur Wallace Stewart, 26.637, was in the 4th battalion of the 3rd New Zealand Rifle Brigade. He died of wounds on 27th October 1918. He is buried at Vertigneuil Churchyard, Romeries, France\n\nHe was the son of Charles and Lucy Stewart of Castle Hill Road, Dover.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(581, 'H', 'W. (W H.?)', '*Stewart', 'William Henry Stewart, 310491, served as a Stoker, 1st Class, in the Royal Navy. He died when the HMS Pathfinder was destroyed by an enemy submarine off the Firth of Forth on 5 September 1914. He was 25. He is commemorated on the Chatham Naval Memorial in the United Kingdom.\n\nHe was born in Dover on 9 October 1887, and was the son of John Alexander and Catherine Stewart, of 62 Bulwark Street, Dover. In 1891 Mrs Stewart was lodging in Folkestone, at 25 East Street, with three children; Kate, 6, William, 2, and John, 2 months. They were all born in Folkestone. By 1901 the family was living at 1 Wellards Cottages, Bulwark Lane, Dover. Mr Stewart was then working as a marine porter.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(582, 'J', 'A. ', 'Stewart', 'John Alexander Stewart, K25780, brother of Henry (above) was born in Folkestone on 18th December 1893. He was an assistant electrical examiner at the Ashford Railway Works before becoming a 1st class Stoker in the Royal Navy. Aboard the submarine L10 he was killed on 4th October 1918 when he was 26. The L10 was attacking an enemy destroyer S33, which, with S34 which struck a mine and was then lost, had come to search for survivors of a enemy convoy attacked the previous night.  \n\nHe is commemorated on the Chatham Naval Memorial in the United Kingdom.\n\nwith thanks to Gina Baines for pre-war occupation\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(583, 'M', 'J. ', '*Stilwell', 'Montague James Stilwell was a Lieutenant in the Queens Own regiment. He served in the 4th battalion, and was 22 when he died in action on 30th June 1918. He is buried at the Bouzincourt Ridge Cemetery, Albert in France.\n\nHis parents were J E and Annie Stilwell, of Duncan, British Columbia, Canada.  \n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(584, 'F', ' ', 'Stitson', 'Frank Stitson, G/13724, was a Private in the 6th battalion of The Buffs. He was 36 when he was killed in action on 27 March 1918. He is commemorated on the Pozieres Memorial in France.\n\nHe was born, enlisted, and lived in Dover, and left a wife and six children, who lived at 25 Albany Place, Dover. Later his wife, Elizabeth Ann Stitson, moved to 21 Sidney Street, Folkestone. \n\n \n\n\n![F Stitson, courtesy Dover Express](%asset_url%pictures/SurnamesSt/StitsonF.gif "F Stitson, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `casualty` (`id`, `given_name`, `middle_names`, `family_name`, `narrative`, `war`, `civilian`, `gender`, `final_resting_place`, `date_of_birth`, `date_of_death`, `commemoration_photo`, `rank_at_death`, `service_country`, `place_of_birth`, `last_known_address`, `last_known_address_year`, `recently_uploaded`) VALUES
(585, 'C', '', 'Stokes', 'Charles Stokes, 9535, was the second son of Mr and Mrs Henry Stokes, of 16 North Street, Dover, and was born at Maxton. He was an old St Mary''s school boy, and had enlisted in Dover. He returned from India in December 1914. He then went to Winchester to camp and train, and, with the 2nd battalion of the East Yorkshire Regiment, was sent to France on 16th January. Fewer than three weeks later, on 3rd February 1915, he was killed in action, at the age of 23. \n\nHis machine gun officer Lieutenant A G Ottley wrote, "Your son was in my machine gun section, and one of the best of fellows and very popular with everyone. May I offer you my deepest sympathy. I was so sorry but he died like a soldier. I was next to him when he was hit. He and I were attempting to put the gun into position when he was hit. I am very thankful to say that he died without pain and at once. I was and am deeply grieved but I know you will be glad to know he died doing his duty and without any pain."  \n\nCharles is commemorated on the Menin Gate memorial in Belgium. His brother, Horace, below, also fell\n\nApril 1940 In ever loving remembrance of our dear sons, Horace, who died of wounds at Rouen on April 17th 1918;  also Charlie, killed in action at Ypres, February 3rd 1915. From their ever loving Mum and Dad\n\nTheir father was engaged on duties in Dover for the South Eastern and Chatham Railway, and had also been in the Military Foot Police in Dover. He had been for many years in charge of the billiards room at the Dover Institute. The couple had three other sons; Bob, Bill, and Arthur\n\n\n![C Stokes, courtesy Dover Express](%asset_url%pictures/SurnamesSt/StokesC.gif "C Stokes, courtesy Dover Express"){.left}\n\n![In Memoriam announcement, courtesy Dover Express](%asset_url%pictures/SurnamesSt/StokesHCannounce.gif "In Memoriam announcement, courtesy Dover Express"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(586, 'F', 'J.', 'Stokes', 'Frederick James (John?) Stokes. PW/6104, was employed by the Dover Corporation before he enlisted in Dover as G/9943 The Buffs, and later transferred to become a Private in the 17th battalion of the (Duke of Cambridge''s Own) Middlesex regiment.\n\nHe had seen fourteen months service, and just before he was expected home on leave he died of wounds at the Base Hospital France on  27th December 1917. He was 29. He is buried in the Grevilliers British cemetery, France.\n\nHe was born at River, Dover, the eldest son of Mr and Mrs F. Stokes. He lived at Kearsney and left a widow, Alice Stokes, and a child, who lived at 10 Redvers Cottages, Kearsney, Dover. \n\n\n![F J Stokes, courtesy Dover Express](%asset_url%pictures/SurnamesSt/StokesFJ2.gif "F J Stokes, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(587, 'H', '', 'Stokes', 'Horace Stokes, 35063, enlisted in Dover in October 1915. He was a Private in the 2nd/7th battalion of the Royal Warwickshire Regiment (formerly 012701 RAOC). He was 23 when he died of wounds on 17th April 1918. He is buried at the St Sever Cemetery Extension in France.\n\nBorn in Hougham, he was the son of Henry and Annie Stokes, of 16 North Street, Dover. His brother Charles, above, also fell.\n\nThe words on the bottom of his headstone read:\n\nAlso in Memory of his Brother 9535 Private C. Stokes East Yorkshire Regiment 3rd February 1918, age 25\n\n\n![H Stokes gravestone, by Andy and Michelle Cooper](%asset_url%pictures/SurnamesSt/StokesHgrave.gif "H Stokes gravestone, by Andy and Michelle Cooper"){.left}\n\n![H Stokes, courtesy Dover Express](%asset_url%pictures/SurnamesSt/StokesH.gif "H Stokes, courtesy Dover Express"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(588, 'L', 'L.', 'Stokes', 'Leonard Lindsay Stokes, G/4800, was born in Dover, the son of Mrs E. Stokes, of Liverpool Street, in Dover.\n\nHe enlisted in Canterbury but lived in Margate. He died in action on 15th September 1916, as a Private in the 1st battalion of the Buffs. He now lies at Guillemont Road Cemetery, France, IX N 4.  (brothers and mother)\n\n \n\n \n\n\n![L Stokes, courtesy Dover Express ](%asset_url%pictures/SurnamesSt/StokesL.gif "L Stokes, courtesy Dover Express "){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(589, 'H', '', 'Strand', 'Hubert F. Strand, 6389, was a Rifleman in the 1st/18th (County of London) battalion (London Irish Rifles)of the London Regiment (formerly 3500 the 4th battalion of The Buffs). He died in action on 3rd October 1916 when he was 29, and is commemorated on the Thiepval Memorial  in France. \n\nBorn and living in Dover, he was the son of Mrs Rosina Strand, and lived at 11 Redvers Cottages, Kearsney, and before enlisting in Canterbury worked at Buckland Paper Mills. \n\n\n![HF Strand, courtesy Dover Express](%asset_url%pictures/SurnamesSt/StrandHF.gif "HF Strand, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(590, 'C', 'W.', 'Streat', 'Cyril William Streat, L10486, was born in Putney and lived in Dover. He enlisted in Canterbury at the outbreak of the Great War, serving as a Private in the 7th battalion of The Buffs.\n\nHe was awarded the Military Medal on 19 January 1917. He died in action on 21 March 1918, and is buried at Ribemont Communal Cemetery Extension, Aisne in France.  \n\nCyril was the son of William Richard and Elizabeth Emily Streat, from 64 Clarendon Road, Dover. There were ten children in all, one of whom died  before 1911. Amongst the family were two brothers, below, and three sisters, Florrie, Nellie, and Edith.\n\n \n\nCyril''s father, Sergeant William Streat, served in a Labour Corps during the Great War. He was a veteran of The Buffs, having served 21 years in the regiment and subsequently four years during the Boer War. Lance-Corporal William Streat was the eldest son, and joined The Buffs as the Great War began. He had been wounded three times by 1917, and gained the DCM on 4  August 1917. The second son was Charles, Edward who had joined the Royal Navy before the Great War. He served on one of the submarines.\n\nThis grave is at St James. The headstone reads, "In Loving Memory of Pte C Streat Late Buffs Killed In Action 21st March 1918 Aged 21 years. Also Edith Rose Sister of the above Died 4th January 1919 Aged 9 years "Safe in the arms of Jesus". Also of William R Streat Father of the above Died 17th March 1940 Aged 73 years "Rest in Peace". Also of Elizabeth Emily Wife of the above Died 21st January 1954 Aged 84 years "At Rest".\n\nAround the kerbstones is written, "Also of Irene Edith Jefferies Also in loving memory of Elsie May Called to rest 10th Dec 1973 Aged 67 years.  Also of Roger P C Jefferies".\n\nnotes: Elsie May Streat was born 2 April 1906. She was one of Cyril''s sisters. Irene Edith Jefferies was the daughter of Frances Mary Streat, one of Cyril''s sisters, who married Frederick Whiting in 1926. Roger Jefferies was the son of Irene and her husband Charles Jefferies, born in about 1948.\n\n\n![](%asset_url%pictures/SurnamesSt/StreatCyril.gif){.left}\n\n![](%asset_url%pictures/SurnamesSt/StreatWsnr.gif){.right}\n\n![](%asset_url%pictures/SurnamesSt/StreatW.gif){.left}\n\n![](%asset_url%pictures/SurnamesSt/StreatC.gif){.right}\n\n![](%asset_url%pictures/SurnamesSt/Streatstone.gif){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(591, 'W', 'C.', 'Stubbs', 'William Charles Stubbs, 1087, was a Serjeant in the 4th Dragoon Guards (Royal Irish)of the Household Cavalry and Cavalry of the Line (including Yeomanry and Imperial Camel Corps).\n\nHe was killed in action near Lille on 20th October 1914. A report states: "He was advancing on a German trench in a dismounted action, and was struck by a bullet from a machine gun and died in ten minutes. His body could not be recovered, but was buried during the night by the British Infantry at the spot where he fell." He is commemorated on the Menin Gate memorial in Belgium.\n\nBorn at Tower Hamlets and enlisting in Dover, he was the son of the late Mr and Mrs A. C. Stubbs (baker). He lived in Gillingham, and left a wife and baby son, Alexander Charles Stubbs.\n\nwith thanks to David Stubbs\n\n\n![WC Stubbs, courtesy Dover Express](%asset_url%pictures/SurnamesSt/StubbsWC.gif "WC Stubbs, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(592, 'A', '', '*Sturges', 'Arthur Sturges, 57810, was a Private in the 2nd battalion of the Worcestershire Regiment. He died in action on 13th October 1918, and is commemorated on the Vis-en-Artois memorial in France. He was born in London, enlisted in Canterbury, and lived in Folkestone.\n\nAssociated with Holy Trinity, it was R Hodgson, of 8 Clarence Lawn, who requested he should be placed on the Memorial \n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(593, 'D', 'C.', 'Sumner', 'David Charles Sumner, 8827, was a Company Serjeant Major in the 2nd battalion of the Worcester Regiment.  He had been awarded the Medaille Militaire and the DCM.  \n\nThe General in command of his Division wrote, "Your Commanding Officer and Brigade Commander have informed me that you have distinguished yourself by conspicuous bravery in the field on 26th September 1915. I have read their reports, and although promotion and decorations cannot be given in every case I should like you to know that your gallant action is recognised, and how greatly it is appreciated." During an advance on enemy trenches all the officers became casualties, and CSM Sumner took command until the next morning when he was relieved.  \n\nHe died of wounds on 8 May 1916 aged 28, and was buried at Bethune Town Cemetery, France.\n\nCSM Sumner was born in Ash, Surrey, the son of William or George William, a general labourer and beer house keeper, and Caroline Sumner. In 1901 David was was working as a printer''s office boy and living at Firacre Road, Ash, with his widowed mother and siblings Esther, James, Lucy, and Carrie. His eldest sister, Minnie, was not at home.\n\nDavid enlisted in Aldershot, probably around 1907. A newspaper report of 1911 records him as a witness at an inquest into the drowning in Dover of two soldiers, stating that he had known one of the deceased "from the office" for some three years. At that time the 3rd Worcestershires, in which David was serving, had been stationed at the Shaft Barracks, Western Heights, Dover, from probably 1909, after a year''s service in South Africa in 1908.\n\nOn 4 November 1911, at Christ Church, Hougham, he married Miss Rose Emma Simmons, the daughter of labourer Alfred Charles Simmons. Miss Simmons, born in Nonington, had been working as domestic servant  in Dover for watchmaker and jeweller Samuel Highley of 2 St John''s Road. The address given by the couple on their marriage was 197 Clarendon Street; David''s occupation was "soldier".\n\nThe couple probably had two sons, David, born 1912, in Dover, and Edward, born 1914, in the Farnham area. Shortly after Edward''s birth, on 13 August 1914, the battalion went from Tidworth, where they were stationed, to Southampton, sailing the following day for France.\n\nMrs Sumner later lived at 33 Hardwicke Road, Maxton, Dover. She requested that her husband''s name should be on the Memorial, and at the unveiling a wreath was laid from his wife and sons for CSM Sumner DCM.\n\n\n![DC Sumner, courtesy Dover Express](%asset_url%pictures/SurnamesSt/SumnerDC.gif "DC Sumner, courtesy Dover Express"){.left}\n\n![DC Sumner, courtesy Dover Express](%asset_url%pictures/SurnamesSt/SumnerDC2.gif "DC Sumner, courtesy Dover Express"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(594, 'C', '', 'Swaby', 'Charles Swaby, 312044, was born at Dymchurch, Kent, on 27 February 1888. He was the son of Mr Charles and Mrs Ellen Swaby, who later lived at 6 Sydney Terrace, Folkestone Road, Dover.\n\nIn 1891 the family were living at no 2 Cottage (Lydden Spout), Hougham, Kent. Mr Swaby had come from Nottinghamshire and Mrs Swaby from Southampton, which was where their first daughter, Ellen, then 10, was born. The next three children had been born at Dymchurch - Charles, 9, Francis, 8, and Edward, 7. Maud, 6, William, 3, and Bertie, 2, were born at Sandgate, while Florence, 10 months, had been born at Hougham. By 1901 the family were at 6 Clarendon Road, Dover, and joined by Ethel, then 9, Frederick, 6, Albert, 4, Laura, 2, and John, 7 months. The last five children were born in Dover. Charles was by then working as a Port Office Boy, while Edward was a grocers'' shop boy and Maud was a general domestic servant. Mr Swaby was employed as a carpenter''s labourer.\n\n Charles became a leading stoker in the Royal Navy, and died on New Year''s Day 1915, when at 2am HMS Formidable was struck by enemy submarine torpedoes and sunk within two hours off Lyme Regis.\n\nHe is commemorated on the Chatham Naval Memorial in the United Kingdom, panel 11.\n\n\n![C Swaby, courtesy Dover Express](%asset_url%pictures/SurnamesSt/SwabyC.gif "C Swaby, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(595, 'P', 'B.', 'Symes', 'Percy B. Symes, G7004, was born at Hythe and lived in Dover. He enlisted in London to become a Private in The Queen''s (Royal West Surrey Regiment), and began at Shoreham-by-Sea. He was listed as wounded and missing on 23 April 1917, and later confirmed as dead. He is commemorated on the Arras memorial in France.\n\nHe was the stepson of Pioneer J Litchfield, who was also serving in France, and whose address in 1917 was 38 George Street. Prior to that his mother and sister were living at 9 Erith Street. Percy had also a brother in law and eleven cousins serving. \n\n\n![P B Symes, courtesy Dover Express](%asset_url%pictures/SurnamesSt/SymesPB.gif "P B Symes, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(596, 'J', '', 'Taylor', 'Jack Taylor, G/9192, had been a tram driver before he joined the 8th battalion of the Buffs. He died at the age of 22 on 18th August 1916. He is commemorated on the Thiepval memorial in France.\n\nHe was the fourth son of Mr and Mrs F. Taylor, of 66 St James Street, Dover, and was born, enlisted, and lived in Dover.  \n\n\n\n \n\n \n\nHis brother Percy, born on 19th May 1898 at 66 St James Street, also served in the Great War, fighting on the Somme. He became one of the Home Guard during World War II.\n\n\n\n\n\n \n\n \n\n \n\n.\n\n \n\n \n\nOccupied as a postman, Percy married Ivy Hollands at Tonbridge in 1920. The couple had two sons - Eric and Donald. Percy died in Hailsham, Sussex in 1960, aged 61. He is pictured in the second row from front, third from right, and in the centre of the closer image.\n\nwith thanks to Therasa Dowsett\n\n\n![J Taylor, courtesy Dover Express](%asset_url%pictures/SurnamesT/TaylorJ.gif "J Taylor, courtesy Dover Express"){.left}\n\n![Thiepval, by Andy and Michelle Cooper](%asset_url%pictures/SurnamesT/TaylorJThiepvalmon.gif "Thiepval, by Andy and Michelle Cooper"){.right}\n\n![J Taylor name at Thiepval, by Michelle and Andy Cooper](%asset_url%pictures/SurnamesT/TaylorJthiepval.gif "J Taylor name at Thiepval, by Michelle and Andy Cooper"){.left}\n\n![Percy in the Home Guard, courtesy Therasa Dowsett](%asset_url%pictures/SurnamesT/TaylorJ-percy.gif "Percy in the Home Guard, courtesy Therasa Dowsett"){.right}\n\n![cu Percy, courtesy Teheras Dowsett](%asset_url%pictures/SurnamesT/TaylorJ-percy-2.gif "cu Percy, courtesy Teheras Dowsett"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(597, 'H', '', 'Terry', 'Harry Terry, 158515, was a Sailmaker in the HMS "Cressy" of the Royal Navy. He was killed on 22nd September 1914, when the three cruisers of the live-bait squadron were attacked by an enemy submarine.\n\nIn his late thirties when he died, he had a long Royal Naval career. In 1891, aged 15, he was aboard the St Vincent, at Portsmouth, and ten years later was serving aboard "Sappo" at Delagoa Bay (now Maputo Bay) on the coast of Mozambique.   \n\nBorn at Charlton, Dover, he was the son of Henry, a coachman, and Isabel Terry, and the husband of Blanche Esther Terry (pictured left), daughter of tailor John William Brown, of 40 Marine Parade. They had married at St James on 29th April 1911, when Harry''s occupation was given as Petty Officer, and his abode as Gibraltar. When he was lost his address was given as 33 Marine Parade, given also as Blanche''s address when she married.\n\nHe is commemorated on the Chatham Naval memorial in the United Kingdom. \n\n\n\nHarry and Blanche had a son, also named Harry. He is pictured here with his Uncle George, Harry''s brother, in about 1920. George was one of many Dovorians who emigrated to Australia, and who served in an Australian force in the Great War. \n\nAlthough official records state that Harry was serving aboard the Cressy, Blanche on her mourning card (right) states that he was aboard the Aboukir, below.\n\n \n\n \n\n\n\nOn the back of the postcard Blanche has written, "Harry was reported missing from HMS Cressy but he was on HMS Aboukir. He was only lent for duty one day to the Cressy and not reported returned to his proper ship." (article)\n\nwith thanks to Craig Terry\n\n\n![Harry Terry, courtesy Craig Terry](%asset_url%pictures/SurnamesT/TerryH.gif "Harry Terry, courtesy Craig Terry"){.left}\n\n![Blanche Terry, courtesy Craig Terry](%asset_url%pictures/SurnamesT/Terry-H-Blanche.gif "Blanche Terry, courtesy Craig Terry"){.right}\n\n![George Terry with young Harry, courtesy Craig Terry](%asset_url%pictures/SurnamesT/Terry-H-family.gif "George Terry with young Harry, courtesy Craig Terry"){.left}\n\n![mourning card - "In loving memory of my dearly loved husband, Harry Terry, who lost his life by the sinking of HMS Aboukir in the North Sea on the 22nd September 1914, aged 30 years. "Thy Will be Done"", courtesy Craig Terry](%asset_url%pictures/SurnamesT/TerryHmourning.gif "mourning card - "In loving memory of my dearly loved husband, Harry Terry, who lost his life by the sinking of HMS Aboukir in the North Sea on the 22nd September 1914, aged 30 years. "Thy Will be Done"", courtesy Craig Terry"){.right}\n\n![back of postcard of Aboukir, courtesy Craig Terry](%asset_url%pictures/SurnamesT/TerryH-postcard.gif "back of postcard of Aboukir, courtesy Craig Terry"){.left}\n\n![postcard of Aboukir, courtesy Craig Terry](%asset_url%pictures/SurnamesT/TerryAboukir.gif "postcard of Aboukir, courtesy Craig Terry"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(598, 'S', 'J.   ', 'Terry', 'Samuel James Terry, L/9338, joined the 2nd battalion of the Queen''s (Royal West Surrey) and was a Corporal. He was killed in action on 7th November 1914, when he was 24. He is commemorated on the Menin Gate memorial in Belgium.\n\nHe was the son of Mrs R Terry, of 21 Minerva Avenue, Dover, born at Christchurch, Dover, and living and enlisting in Dover.\n\nPercy Terry (left) was the brother of Samuel. He was also in the Queen''s, and was wounded twice. He lost the little finger of his left hand and the use of the third on 15th November 1914, and on 25th September 1915 received a bullet in his chest and a shell that penetrated and scraped his ribs. He had returned to to Cottenham near Cambridge to recuperate and then to visit his parents, Mr and Mrs Samuel Terry, from Vale Farm, Studdale, near Dover.\n\nIn 1940 this In Memoriam announcement was placed: \n\nNovember 1940 To the ever precious memory of our darling boy, Segt Samuel Terry, killed November 7th 1914. Some may think that we forget him When at times they see us smile; They little know the silent heartache That is hidden all the while Never forgotten by his Mum, Sister, and Brother\n\n\n![S Terry, name on Menin Gate, by Michelle and Andy Cooper](%asset_url%pictures/SurnamesT/TerrySJmenin.gif "S Terry, name on Menin Gate, by Michelle and Andy Cooper"){.left}\n\n![Percy Terry, coutesy Dover Express](%asset_url%pictures/SurnamesT/TerryP.gif "Percy Terry, coutesy Dover Express"){.right}\n\n![In memoriam announcement, courtesy Dover Express](%asset_url%pictures/SurnamesT/TerrySJinmem.gif "In memoriam announcement, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(599, 'A', 'E.  ', 'Tester', 'Arthur Edward Tester 71587, was born in Dover on 13th February 1890, in which town he had also enlisted. He was the son of Mr Thomas Tester, of Priory Road, Dover, and his wife, Margaret Ann, and had a number of older siblings: Flora, Bertha, Thomas, Annie, Ethel, and George, and at least one younger, Frederick.\n\nHe married Mary Meretta Pulham, aunt of Jack Pulham, on 30th April 1911, and as Mr Tester was enlisting as no 167 of the 3rd Dover Company of the Kent RGA (T), on 9th November 1914, the family had three children. The first, seated in the picture below,. was named after his father, Arthur Edward, and was born on 31st January 1912. He was followed by his brother Ronald (centre), born in 1913, and by a sister, Irene, born in late 1914.\n\nOn 25th February 1916, Mr Tester became a Gunner in the Royal Garrison Artillery, 109th Siege Battery, enlisting on 25th February 1916. Five months later, on 24th July 1916, at the age of 26, he had lost his life near Fricourt Wood, north east of Fricourt village and east of Albert, the Somme, in France. His family, then living at 39 Clarendon Place, were told that he had been killed by a stray shell landing on the officers'' mess, where he apparently had been working at the time. The shell killed several officers and other ranks as well. The day of his death may not have been a major battle day in the area where he died; however there was an almost continuous heavy artillery bombardment at that period.\n\nGunner Tester was originally buried in a grave at a cemetery in a clearing at the top of Fricourt Wood, which grave was marked with a wooden cross and recorded as being next to the graves of five officers of the 109th Siege battery. In 1920 his body was moved to Dantzig Alley British Cemetery, Mametz, Somme, France, plot 3, row H, grave 6. His grandson has found the names of seven men from the 109th Siege Battery buried at Dantzig who died on 24th July 1916:\n\n\n\nGunner Arthur Edward Tester Gunner R.J. Mathieson 2nd Lieut Albert Henry Cox 2nd Lieut John Geoffrey.Savage 2nd Lieut Peter Walls Thomson Major H.Wadlow 2nd Lieut Albert William Webb\n\nRight: postcard of Fricourt showing the main road and pond "avant le bombardement" - before the bombardment On the back is written the location of Gunner Tester''s grave\n\nMrs Tester survived her husband Arthur by over 60 years, dying on 6th December 1976. Sadly she was also to lose their second son, Ronald, from peritonitis, on 12th March 1922. Arthur, their elder son, died on 18th March 2002, and Irene died in Australia in the mid 1990s.\n\n\n\nIn Loving Memory of Ronald Tester who fell asleep 12th March 1922 aged 9 years "Safe in the arms of Jesus" Also of Arthur Edward Tester Father of the above killed in France 24th July 1916 aged 28 years "Until the Day Break" headstone at St James\n\n\n\nIn Loving Memory of Gunner A E Tester, of a Siege Battery, RGA, who was killed in action on Monday, 24th July 1916 We are standing around where he''s buried, And we think of his home far away, In that far distant land o''er the ocean Which he left in his manhood one day. We are thinking of hearts that are broken Of his loved ones who mourn for their dead, And we dread that their hopes will be buried In the land where their hero is laid He answered the call of his country, And we mourn his as one of the best, Yet although it is hard to bid him good-bye In our heart we can''t grudge him his rest photo by Jean Marsh He now lies at peace in God''s acre, Undisturbed by the strife overhead; He has answered God''s roll-call in heaven, And we''ve taken farewell of our dead. We shall meet him again in the morning, When all war, with its sorrow, is o''er And the final "Reveille" has sounded On a brighter and happier shore. To those in his home and who miss him, who yearn for their son, now no more, Jesus Christ, in Thine infinite pity, Give them strength for the Cross that Thou bore.   Help them, Lord, to believe that up yonder, In that mansion prepared by Thy love, Their dear dead will be waiting to greet them In the home of Thy kingdom above. R (H?) McLeod At the foot of the headstone are the words, "Peace, perfect peace"\n\nMessage sent to the Batteries, enclosing a message from General Rawlings, Commander of  4th Army, thanking them and congratulating them on their fire, skill, and hard work, without which the infantry could not have achieved their task   In conveying the thanks and congratulations expressed by the 4th Army Commander on the excellent work done by the III Corps Heavy Artillery during the recent bombardment of the German lines, I wish at the same time to take this opportunity of expressing my deep sense of gratitude and appreciation to the Group Commanders, Officers, NCOs, and men of all Batteries for the magnificent manner in which the Batteries have been fought and served. No one realises more than I do the magnitude of your efforts, which in the near future must lead only to one end(?). Signed by A E J Perkings, Brig Gen HA III Corps.\n\nwith grateful thanks to John Tester for the information and for the family, postcard, and message images with thanks to Joyce Banks for headstone photograph and transcription\n\n\n![AE Tester, courtesy Dover Express](%asset_url%pictures/SurnamesT/TesterAE.gif "AE Tester, courtesy Dover Express"){.left}\n\n![A E Tester, family, by courtesy John Tester](%asset_url%pictures/SurnamesT/TesterAEfamily.gif "A E Tester, family, by courtesy John Tester"){.right}\n\n![postcard, courtesy John Tester](%asset_url%pictures/SurnamesT/Tester-Fricourt.gif "postcard, courtesy John Tester"){.left}\n\n![gravestone, by Joyce Banks](%asset_url%pictures/SurnamesT/TesterAEstone.gif "gravestone, by Joyce Banks"){.right}\n\n![](%asset_url%pictures/SurnamesT/TesterAEgrave.gif){.left}\n\n![handwritten message, courtesy John Tester](%asset_url%pictures/SurnamesT/Tester-congrats.gif "handwritten message, courtesy John Tester"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(600, 'H', ' ', 'Tester', 'Harry Tester, 48802, enlisted in Canterbury, and was a Rifleman in the Rifle Brigade (The Prince Consort''s Own), the London Post Office Rifles Regiment. He was 18 when he died between 8th and 10th August 1918. He lies at the Beacon Cemetery, Sailly-Laurette, France.\n\nHe was the son of Harry Tester, who was born in Brighton, and his wife Annie M. Tester. Harry the younger was born in Margate, as the third child of the family, having then two older sisters, Fanny and Dora. They lived in Tunbridge Wells before coming to Dover, Annie''s birthplace. They resided for a time at 8 Norman Street, Dover\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(601, 'E', 'W.', 'Thomas', 'Edward Wenham Thomas, 358088, was a Gunner in the 62nd Siege Battery of the Royal Garrison Artillery (Kent RGA TF). He was 25 when he died of wounds on 13th October 1917, and he is buried at the Dozingham Military Cemetery, Belgium.\n\nHe was the son of James and Agnes Mary Thomas, of 44 Union Road, Dover, born and enlisting in Dover.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(602, 'F', 'C. ', 'Thompson', '**Frederick Charles Thompson**, J/29148, was a Boy, 1st class in the Royal Navy, aboard the HMS "Clan McNaughton". He was drowned on 3rd February 1915 when his ship was lost in the North Atlantic. He was 16 years and four months old. He is commemorated on the Chatham Naval Memorial in the United Kingdom .\r\n\r\nBorn in Dover on 17 October 1898, he was the son of George Edward and Louisa Thompson, née Pearce, of 30, Dickson Road,  Tower Hamlets, Dover, formerly 3 Spring Gardens, Dover, and in 1915, at 5 Biggin Court, Biggin Street, Dover. The family moved often; in 1901 they were at 7 Portland Place, Dover. Then Mr Thompson was working as a dock labourer, and at home also was Frederick''s elder brother, George, then aged 4.\r\n\r\n\r\n![FC Thompson, courtesy Dover Express](%asset_url%pictures/SurnamesT/ThompsonFC.gif "FC Thompson, courtesy Dover Express"){.left}\r\n', 1, 0, 'M', NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 0, 1),
(603, 'J', 'J. B.', 'Thompson', 'Joseph John Bassett Thompson, 174879, a Chief Petty Officer in the Royal Navy, was killed by a mine explosion in the Straits of Dover on 23 March 1917. He had been aboard the HMS  "Laforey". He is commemorated on the Chatham Naval memorial in the United Kingdom.\n\nBrother-in-law to George Simmonds, he was 38 when he died, and had been awarded a long service and a good conduct medal. He was the son of William John and Mary Ann Thompson. In 1881 Mary Thompson and her sons were in the Dover Union workhouse, where Joseph was aged 3 and described as a pauper in the nursery. Mary was working as a charlady. By 1891 the family were living at 1 Albion Place, Dover.  Mary was still a charwoman, Alfred was then 15 and a boiler cleaner, and Joseph was 12.\n\nHe was the husband of Elizabeth Ann Thompson, of 11 Pioneer Road, formerly 5 Pionee Road. He left a son, and a little daughter who was born just after his death.  (Exhibition 06) (Memorial)\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(604, 'S', 'A.', 'Thompson', 'Samuel Alexander Thompson, 23884, was a sergeant in the Royal Garrison Artillery. He died of wounds on 13th July 1917 at Arras, aged 29. He is buried at St Nicolas British cemetery, France.\n\nHis wife was Clara H S Thompson, of 8 Oakleigh Terrace, Westbury Road, Dover. He was born and enlisted in Dover.\n\n \n\nCould I have raised his dying head Or heard his last farewell, The pain would not have been so hard, For one who loved him well. From his broken hearted wife thanking all friends for their sympathy in her sad bereavement Little we thought when he bade us good-bye He had left us for ever; he left us to die; When we look at his picture and think of how he died, A faithful British soldier, for all of us he died. From his sorrowing Mother, Father, Brothers, and Sisters thanking all friends for their sympathy in their sad bereavement\n\nJuly 1941 In ever loving memory of my beloved husband, Samuel Alex Thompson, who fell in action July 13th 1917 - His loving wife, Clara. Until the day breaks.\n\n\n![S A Thompson, courtesy Dover Express](%asset_url%pictures/SurnamesT/ThompsonSA.gif "S A Thompson, courtesy Dover Express"){.left}\n\n![announcement from Mrs Thompson of death, courtesy Dover Express](%asset_url%pictures/SurnamesT/ThompsonSAannouncewife.gif "announcement from Mrs Thompson of death, courtesy Dover Express"){.right}\n\n![](%asset_url%pictures/SurnamesT/ThompsonSAannouncefamily.gif){.left}\n\n![in memoriam, courtesy Dover Express](%asset_url%pictures/SurnamesT/ThompsonSAinmem41.gif "in memoriam, courtesy Dover Express"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(605, 'R', 'E. ', 'Thorner', 'Reginald Ernest Thorner (or Ernest Reginald), L/9143, was a Sergeant in the Queen''s Royal West Surrey regiment, the 1st battalion. He was killed in action on 25th September 1915. He is commemorated on the Loos memorial in France.\n\nHe was born in Chiddingfold, Surrey, and enlisted in Guildford. He lived in Dover. His nephews Frederick and Robert Booker lost their lives in WWII.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(606, 'A', 'T', 'Thorp', 'Alexander Thomas Thorp, DM2/166209, was a Driver in the 956th Mechanical Transport Company, the Royal Army Service Corps. Born on 17 March 1876 in Dover, the son of George and Catherine Thorp, he died on 5th January 1919 at CCS Alexandria. He is buried at the Ramleh War Cemetery, Israel, EE 49.\n\nHis next-of-kin was Mrs M. Thorp, from 45a George Street, probably his wife. He was father to four children, Thomas, Maud, Catherine, and Albert..\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(607, 'C', 'A.', 'Thurley', 'Charles Albert Thurley, J/42039, was a Boy, 1st class, in the Royal Navy, of the HMS "Invincible". He was 17 when he was killed in action at the Battle of Jutland on 31 May 1916. He is commemorated on the Portsmouth Naval Memorial in  the United Kingdom (left).  \n\nBorn on 15 July 1898, he was the son of Robert and Amy Florence Thurley, of 11 Edred Road, Dover. In 1901 the family were living at 44 Marshall Street, Folkestone, where Mr Thurley was working as a bricklayer. He was born in Paddington, London, while his wife and Charles were born in Dover. Their youngest child then, Arthur, 11 months, had been born in Folkestone.\n\npicture by Dean Sumner. Five names above Charles Thurley''s is Dean''s Great Uncle Horace, lost with over a thousand others when the HMS Indefatigable was sunk. Horace was also just 17.\n\n\n![Portsmouth by DeanSumner](%asset_url%pictures/SurnamesT/Thurley-Portsmouth.gif "Portsmouth by DeanSumner"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(608, 'M', 'P. ', 'Tierney', 'Maurice Paul Tierney, G/8037. In The Buffs, he was a Lance Serjeant of the 6th battalion. He died on 7th October 1916, aged 21 years and 10 months, and is commemorated at Thiepval memorial in France. He enlisted, lived, and was born in Dover. \n\nThe officer commanding his company wrote to his parents, saying that he was killed instantly by a shell whilst leading his men in the attack. All grieved to hear of his death because he was a good soldier, entirely fearless and popular with everyone. \n\n \n\n\n![M Tierney, courtesy Dover Express](%asset_url%pictures/SurnamesT/TierneyM.gif "M Tierney, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(609, 'A', 'V. ', 'Tiltman', 'Arthur Viney Tiltman, 39016, was a Private in the 1st battalion of the East Surrey Regiment. He was killed in action near Beaurain on 20th October 1918, at the age of 18. He is buried at Amerval communal cemetery extension, Solesmes, France.\n\nHe was the son of Mr and Mrs H. V. Tiltman, of 3 Churchill Street, Dover, born in Dover, but he enlisted in Canterbury.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(610, 'E', ' ', 'Todd', 'E. Todd. There was an Edward Todd, aged 10, living at 4 South Road, recorded in the 1901 census. He was born in Dover, and was the son of George W. Todd and his wife Florrie. \n\nThis may have been Edward George Walter Todd, who died at the Military Hospital in Dover on Monday, 6th December 1920, at the age of 29. He had been in the Territorial RGA in 1914, and went to France in 1916. He was demobilised in December 1918, after having been gassed, and also having suffered shell shock, septic poisoning, and trench fever. However, he resumed work as a fireman on the SECR. Around ten weeks prior to his death he was admitted to the Military Hospital, where he remained until he died.\n\nHe was buried on 11th December, with six of his former work colleagues bearing the coffin. His wife, his parents, and Mr B Jarvis "his chum who served with him during the war", were amongst the mourners. Floral tributes included one from his "broken-hearted wife".\n\nHis wife lived at 37 South Road. An Edward G W Todd had been married in 1919 to Lavinia Millen, in the Blean registration district.\n\nThe words on the headstone (now partially eroded) read:\n\nIn Loving Memory of Edward George Todd Died 6th December 1920 Aged 29 years In the midst of life we are in death Also of Lavinia Todd Wife of the above ?? August 1944  \n\n"You have passed, dear Ted, from this world of trouble. Free from all sorrow and pain." (In memoriam, 1921)\n\nwith thanks to Joyce Banks\n\n\n![headstone by Joyce Banks](%asset_url%pictures/SurnamesT/Todd-EGstone.gif "headstone by Joyce Banks"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(611, 'D', 'K. ', 'Torr', 'David Kellaway Torr, 13348, was a Rifleman in the King''s Royal Rifle Corps, 2nd battalion (formerly 5442 RAOC). He was killed in action on 23rd October 1918, and is commemorated on the Vis-en-Artois memorial in France. \n\nHe was born in Tavistock, probably in 1885, the son of Mr J S Torr. He enlisted in Woolwich, Kent, and lived in Dover. Mr J Marshall Morison of 3 Shakespeare Chambers, Bench Street, wrote on 23 November 1934 that he was his wife''s brother. Mr Torr had been a resident of Dover for over 40 years.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(612, 'H', 'B.', 'Tucker', 'Horace Benjamin Tucker, 182413, was a Petty Officer in the Royal Navy, aboard the HMS "Swiftsure". He died on 6th June 1915, at the Dardanelles and is commemorated on the Chatham Naval memorial in the United Kingdom.\n\nBorn on 28 September 1879 in Dover, he was the son of Horace and Sarah Tucker. In 1891 they were living at 11 Widred Road, and Mr tucker was working as a post office clerk. Horace was aged just 11 months, and his two elder sisters were also there; Sarah, 8, and Laura, 5. By 1891 they had moved to 1 Market Lane, Dover, and Mr Tucker was a printers'' compositor. The family had been joined by two more sons; Frank, 2, and Walter, 18 months\n\nHis mother was living at 6 Victoria Road, High Street, Dover, when she was informed of his death. A next-of-kin was Mrs A A Tucker of 7 Church Court, Dieu Stone Lane, Dover\n\n\n![H Tucker, courtesy Dover Express](%asset_url%pictures/SurnamesT/TuckerHB.gif "H Tucker, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(613, 'C', ' ', 'Tugwell', 'Charles Tugwell, 160057, was a tailor working in the High Street before he enlisted. Before joining up he had asked for an exemption so that he could finalise his business, having already passed as class A at Canterbury for the military. He was given six weeks to do so.\n\nMr Tugwell was also a keen ambulance man, a member of the St John'' Ambulance Brigade, and when he did join up went into the Royal Army Medical Corps. He was then transferred to the Royal Garrison Artillery and became a Gunner in the 1st/2nd Lancashire Heavy Battery. He was 38 when he died from wounds on 6 April 1918. He lies at Abbeville Communal Cemetery Extension in France.\n\nHe was the eldest son of Charles Tugwell and the late Mrs. Tugwell, of Dover, and the husband of Elizabeth S. Tugwell, of "The Fountain," London Road, Dover. He was born and enlisted in that town, and was a brother of Peace and Harmony Lodge no 199.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(614, 'W', 'D. J. ', 'Tull', 'Walter Daniel John Tull was a 2nd Lieutenant in the Middlesex Regiment. He was in the 17th battalion, attached to the 23rd battalion. He was the son of the late Daniel and late Alice Tull, and brother of Edward Tull-Warnock, of 419 Vincent Street, Glasgow. He was a former professional footballer with Tottenham Hotspurs and Northampton, and played over a hundred first team games for the latter.\n\nHe died on 25th March 1918, when he was 29, and is commemorated on the Arras memorial in France.  His cousins, Stephen and George Palmer, also died. \n\n(Exhibition 06) (article 1) (article 2) (Note: Soldiers Died has his his middle name as David, not Daniel)\n\n\n![WDJ Tull, on Arras memorial, by Andy and Michelle Cooper](%asset_url%pictures/SurnamesT/TullWDJArrras.gif "WDJ Tull, on Arras memorial, by Andy and Michelle Cooper"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(615, 'O', '', 'Tunnell', 'Oliver Tunnell was an assistant master at the Grammar School for Boys, Dover, before enlisting. He became a temporary 2nd Lieutenant in the Northumberland Fusiliers, the 12th/13th battalion. He was 33 when he was killed in action on 24th October, 1918. He is commemorated on the Vis-en-Artois memorial in France.\n\nHe was the son of Edmund and Isabella Tunnell, from 20 Hanley Road, Shirley, Southampton, and the husband of Sarah E. Tunnell, of 101 Wingrove Avenue, Newcastle-upon-Tyne.   "We Remember " 06\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(616, 'B', 'A.', 'Turner', 'Bingham Alexander Turner, was a Captain in the Rifle Brigade (Prince Consort''s Own), 6th battalion, and his  Distinguished Service Order was announced in the Edinburgh Gazette on 27 June 1902.\n\nHe was killed in action when he was 37, on 2nd November 1914, and is commemorated on the Menin Gate memorial in Belgium. As a former pupil of Wellington College Public School, Crowthorne, he is commemorated also on their Roll of Honour and in their Book of Remembrance.\n\nHe was the husband of Gladys Gooch, formerly Turner, née Jervis, of Hodcott House, West Ilsley, Newbury, Berkshire, and the son of the late General Bingham Turner and Mrs Bingham Turner, of Milesdown, Winchester\n\nwith thanks to Andrew Radgick\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(617, 'G', ' ', 'Turrell', 'George Turrell, 281478, was a Bombardier in the 11th Siege Battery of the Royal Garrison Artillery. He died from the effects of gas on 1st June 1918, when he was 42. He lies at Crouy British cemetery, Crouy-sur-Somme, France.\n\nHe was the son of William and Elinor Turrell, from Dover, born and enlisting in that town. \n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(618, 'H', '', '*Upton', 'Henry Upton, 910576, was a Lance Bombardier in the 1st Brigade, Ammunition Col, of the Royal Field/Horse Artillery (Territorial). He died on 11th November 1918 in Salonika, and is buried at Mikra British cemetery, Kalamaria, Greece.\n\nHe enlisted and lived in Dover, and his brother was S Upton, of the Bell Inn, Shepherdswell, nr Dover (right)\n\n \n\nThe Inn suffered a catastrophic fire in 2007; the picture is after rebuilding\n\n\n![Bell Inn at night, Shepherdswell, by Simon Chambers](%asset_url%pictures/SurnamesU/UptonSbell.gif "Bell Inn at night, Shepherdswell, by Simon Chambers"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(619, 'L', 'H.', 'Upton', 'Louis Hazel Upton, 10732. He enlisted at Shorncliffe, and lived at Cheriton, Folkestone. He was a Serjeant in the 13th battalion of the King''s (Liverpool Regiment), and was mentioned in dispatches. He was killed in action at Annezin on 21st April 1918, when he was 27. He is buried at Chocques Military Cemetery, France.\n\nHe was born in Kentish Town in London, and was the son of Mrs Cooper and stepson of Mr Cooper, who lived at 133 Buckland Avenue, Dover, and also at 89 Balfour Road. He was the husband of May Upton, Vivian House, Plasmarl, Swansea. May would later marry James, Louis'' brother.\n\nWilliam, like Louis, was a regular soldier. He was discharged in 1924 on the grounds of ill health, while serving in Egypt. He received call-up papers at the beginning of the Second World War, and was very upset as he was too ill  to join up. He died on 31st July 1940. Between the wars William was landlord at the Plough Inn, Langley, Kent. The picture shows him with his daughter at the inn door, in 1939\n\nIllustration above right: Louis Upton, standing, with his brother William with thanks to Bernice Bartlett\n\n\n![](%asset_url%pictures/SurnamesU/UptonL.gif){.left}\n\n![Louis Upton, courtesy Bernice Bartlett](%asset_url%pictures/SurnamesU/UptonLcu.gif "Louis Upton, courtesy Bernice Bartlett"){.right}\n\n![William and daughter, 1939, courtesy Bernice Bartlett](%asset_url%pictures/SurnamesU/UptonLbrotherWilliam.gif "William and daughter, 1939, courtesy Bernice Bartlett"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(620, 'H', 'C. ', 'Usherwood', 'Horace Charles Usherwood, G/9118. He was a Private in the 1st battalion of The Buffs (East Kent Regiment). He was 22 when he was killed in action on 15th September 1916.  He is buried at Guillemont Road Cemetery, Guillemont, France.\n\n \n\n \n\n \n\n \n\n \n\n \n\n \n\nHorace''s grave lies to the extreme right of the entrance to Guillemont road cemetery\n\nHe was born in Deal, the youngest son of Mr and Mrs Usherwood (possibly Albert, a baker, and Alice), of 6 Limekiln Street, The Pier, Dover, formerly of 2 Limekiln Lane, Dover. He enlisted and lived in Dover.\n\nA light is from our household gone, The form we loved is stilled, A place is vacant in our home which never can be filled. He did not wait till he was fetched, Although it''s hard we know, But while his country called him He answered, "Yes, I''ll go!" From his broken-hearted Mother, Father, Sisters, and Brother\n\n\n![HC Usherwood, by Michelle and Andy Cooper](%asset_url%pictures/SurnamesU/UsherwoodHC.gif "HC Usherwood, by Michelle and Andy Cooper"){.left}\n\n![Guillemont cemetery entrance, by Michelle and Andy Cooper](%asset_url%pictures/SurnamesU/UsherwoodHCGuillemont.gif "Guillemont cemetery entrance, by Michelle and Andy Cooper"){.right}\n\n![death annoucement, courtesy Dover Express](%asset_url%pictures/SurnamesU/UsherwoodHCannounce.gif "death annoucement, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(621, 'F', 'J. ', 'Vale', 'Frederick John Vale, 6921, was a Private in the Northumberland Fusiliers, in the 1st/5th battalion. He died of wounds on 4th January 1917, and is buried in the Dernancourt Communal cemetery extension in France.\n\nHe was born in Gordon, Kincardineshire, and enlisted in Hinkley in Leicestershire.\n\nThe grave is at Charlton cemetery, and the inscription reads:\n\nIn ever loving memory of My dear husband Thomas William Vale Who died December 7th 1915 Aged 59 years. Also in loving remembrance of Pte. F. J.Vale 1/5th Northumberland Fusiliers Who died of wounds in France 4th January 1917, aged 29 years. Not gone from memory Not gone from love But gone to our father''s home above.\n\npicture and transcription Joyce Banks\n\n\n![grave by Joyce Banks](%asset_url%pictures/SurnamesV/Vale-TW.gif "grave by Joyce Banks"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(622, 'R', 'W.', 'Vanson', 'Robert William Vanson, 199912, was an Able Seaman in the Royal Navy. He died on 22nd September, 1914, when he was 31, when the HMS "Cressy" was sunk in the North Sea. He is commemorated on the Chatham Naval Memorial in the United Kingdom\n\nHe was born on 2 October 1882 and was the eldest son of Robert Vanson, of 35 Stonehall, Lydden. In 1891 Mr Vanson was 29 and a steam roller engine driver, and living with his wife Susan and family at 8 Hultsdorph Cottage, Charlton, Dover. Robert then was aged 7 and had one older brother, James, 9, and one younger, Bertie, 4.  The children and Mrs Vanson were all born at Wingham.\n\nIn 1901 Robert was 18, and serving as an ordinary seaman on the Royal Sovereign, at the Grand Harbour, Malta. He became the "dearly loved" husband of Amelia Field in Dover in 1904. She was informed of his death at the address of 4G Quarters, HM Prison, Portland, Dorset. When she died on 27 November 1959, the probate of her will was given to Robert William Vanson, a merchant navy seaman, and Elizabeth Florence Bowling, née Vanson, born 1908, wife of Walter Bowling.\n\nIllustration - lifebelt from HMS Cressy, now at Chatham Historic Dockyard\n\n\n![](%asset_url%pictures/SurnamesV/CressyVanson.gif){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(623, 'C', 'J. ', 'Vigor', 'Charles John, 17289, was born in Burwash Sussex, on 4th July 1892. He had fair hair and blue eyes, and grew to five feet six inches in height. He had two vaccination marks on his left arm. Before enlisting on 5th September 1914, he was a clerk. He enlisted in Canada, joining the 7th battalion of the British Columbia Regiment.\n\nHe was 30 when he died on 13th January 1921, from the effects of gas poisoning received in France in 1915. He was buried at St Mary''s, Dover, on 20th January. There was a band and a party of bearers from the 2nd battalion of the Royal Irish Fusiliers.\n\nHe was the son of Frederick E and Annie Vigor of 46 Snargate Street, who were amongst the mourners. Also present were Bert, George, Harry, Jim, and Bill, Charles'' brothers, and Flo, Louie, and Nellie, his sisters. The family may previously have resided at 11 Caroline Place, Dover.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `casualty` (`id`, `given_name`, `middle_names`, `family_name`, `narrative`, `war`, `civilian`, `gender`, `final_resting_place`, `date_of_birth`, `date_of_death`, `commemoration_photo`, `rank_at_death`, `service_country`, `place_of_birth`, `last_known_address`, `last_known_address_year`, `recently_uploaded`) VALUES
(624, 'A', 'E.', 'Vidler', 'Alfred Ernest Vidler, 9262, was a Private in the 3rd battalion of the Worcestershire Regiment. He was a career solider, having been, in 1911, at Jhansi, Uttar Pradish, India, as a private in the 2nd battalion.  He was killed in action at the age of 28 on 7th November 1914, and is commemorated on the Menin Gate memorial, Ypres in Belgium.      \n\nHe was born (in 1885) and enlisted in Dover, and was the son of William and Harriet Vidler, née Wraight, of 49, Limekiln St., Dover, Kent, formerly 62 Limekiln Street. His father stated that he had gone to school in Dover, being a native of Dover, but that, although he had submitted a letter at the proper time, when he went to the opening he could not see his son''s name on the Memorial. His name was placed on the 1934 panel\n\nAlfred has been working at Staplehurst Railway Station, and was to have been married to Miss Daisy Rigden, from 28 Limekiln Street .                    \n\n      Menin Gate by Andy and Michelle Cooper\n\n\n![A Vidler, courtesy Dover Express](%asset_url%pictures/SurnamesV/VidlerA.gif "A Vidler, courtesy Dover Express"){.left}\n\n![A Vidler, courtesy Dover Express](%asset_url%pictures/SurnamesV/VidlerA2.gif "A Vidler, courtesy Dover Express"){.right}\n\n![in memoriam, courtesy Dover Express](%asset_url%pictures/SurnamesV/VidlerAmemoriam16.gif "in memoriam, courtesy Dover Express"){.left}\n\n![A Vidler on Menin Gate, by Michelle and Andy Cooper](%asset_url%pictures/SurnamesV/VidlerAmenin.gif "A Vidler on Menin Gate, by Michelle and Andy Cooper"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(625, 'W', 'G. ', 'Valentine', 'William George Valentine, G/40114, was killed in action on 3rd May 1917 when he was 25. He was a Lance Corporal in the Royal West Surrey Regiment, 6th battalion, and formerly 4126, the Buffs. He is commemorated on the Arras memorial in France.\n\nHe was born in Dover, and enlisted and lived there. He left to mourn his father, Charles Valentine, his sisters, and brothers\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(626, 'J', 'H.', 'Waight', 'Joseph (John?) Henry Waight, G/5967, was born in London and christened on 4 April 1888 at Christchurch. His parents were George William Waight, a lighterman, and his wife Elizabeth Rose,  née Greagsby, who had married in 1886.\n\nHis mother died on 1 June, just after Joseph was born, and he was brought up in Dover by  his aunt, Sarah Jane, née Waight, and her husband, Thomas George Stockbridge. In 1891 the family were living at 5 Bulwark Street, when Thomas was a mariner, and then years later they were living at 10 Percival Terrace, with Thomas working as a sawyer''s labourer. George, Joseph''s father, remarried, to Maria Jane Ridley, in 1890.\n\nJoseph lived and enlisted in Dover and became G/5967, a Private in C company of the 2nd battalion of the Buffs. He died of wounds on 5th May 1915, when he was 27, at the Rawal Pindi British General Hospital, Wimereux, and is buried at Wimereux communal cemetery in France, 1 G 1A.\n\nHis wife was  Ellen Waight, née Hulkes from 155 Clarendon Street, where in 1911 she had been living with her mother Eliza Jane, a widow.  The couple married in 1913, and in 1914  the couple possibly had a son, Joseph H T Waight. In 1918 Mrs Waight remarried, to Victor Charles Vidler, and the family lived at 1 Beaconsfield Villa, Hardwick Road, Maxton, Dover, from which address Mrs Vidler applied for her first husband''s medals. Mrs Vidler was living at 12 North Street when Mr Vidler died in 1931.\n\n\n![JH Waight, courtesy Dover Express](%asset_url%pictures/SurnamesW/WaightHR.gif "JH Waight, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(627, 'T', 'W. ', 'Wall', 'Thomas Walter Wall, 168982, was a Gunner in the 90th Brigade of the Royal Field Artillery. (Another report says he was a Signaller, from the Brigade HQ staff, and formerly of the 2.1st Kent Battery, Territorial RFA). He was 19 when he died from wounds received in action on 23rd October 1916. He is buried at Etaples military cemetery in France, VIII C 9.\n\nHe enlisted and lived in Dover, and was the son of Thomas and Mary Ann Wall, of 8 Millais Road, Dover. They referred to him as their "beloved son".\n\nThe stone at Charlton cemetery reads:\n\nIn Loving Memory of our dear mother Phoebe Ann Finch who passed away 17th Nov 1921 in her 85th year also of our dear son Gunr T. W. Wall RFA died of wounds 23rd Oct 1916 aged 18 years interred Etaples cemetery RIP\n\n\n![TW Wall gravestone at Charlton, by Simon Chambers](%asset_url%pictures/SurnamesW/WallTWgravestone.gif "TW Wall gravestone at Charlton, by Simon Chambers"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(628, 'F', 'W.', 'Waller', 'Frederick William Waller, 3/11187, was a Company Serjeant Major (Wo class 2) in the 8th battalion of the Duke of Wellington''s (West Riding Regiment). He was killed in action on 7th August 1915, at the age of 38, and is remembered on the Helles Memorial, Turkey.\n\nHe was born in Kamptee, India, but enlisted in Dover. His wife was Charlotte Waller, of 41 Maison Dieu Road, Dover, earlier of 55 Snargate Street, Dover, and she referred to him as her "dearly beloved husband", wishing him to rest in peace. \n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(629, 'P', 'J. ', 'Walsh', 'Percy John Walsh, 8639, was a Rifleman in the 2nd battalion of the Royal Irish Rifles. Born in Newry, County Down, he enlisted in Dublin.\n\nIn 1911 he was stationed at the Citadel Barracks on the Western Heights in Dover. In 1912 he married Mabel Susannah Moore in Dover. She was the daughter of Richard Moore, a railway guard, and his wife, Elizabeth, and in 1911, aged 22, she was living with them at 46 Limekiln Street and working in a laundry. Mr and Mrs Walsh had one daughter, Eileen.\n\nRifleman Walsh was killed in action on 26 October 1914, and is commemorated on the Le Touret Memorial in France.\n\nOn 8 May 1916 at Holy Trinity, Dover, Mrs Walsh, then living at 68 Limekiln Street, remarried. Her new husband was Charles William Harris. He was a Sergeant in the 1st Battalion of the East Surreys, then stationed at the Grand Shaft Barracks, Western Heights.\n\nIn 1924 Mrs Harris, living at 25 Victoria Dwellings, requested that Percy''s name should be commemorated on Dover Memorial. Mrs Harris had also previously lived at 220 Old Folkestone Road.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(630, 'E', 'J. ', 'Walter', 'Edward James Walter, G/9460, was a Private in the 2nd or 4th battalion of the Middlesex Regiment (Duke of Cambridge''s Own). .\n\n\n\nHe was born in Dover and enlisted there on 21 March 1915, going over to Mill Hill four days later. He was 35 years and nine months on enlistment, and had been employed as a Miner. His last tour of duty with the BEF began on 17 August 1915, and he was killed in action on 25th January 1916. He is buried at the Cite Bonjean Military Cemetery, Armentieres in France, IX E 48\n\nHis wife was Emily Eliza Walter, nee Bowman, whom he''d married at Charlton on 26 March 1899. They had seven children: George Alexander, born 11 August 1899, Fred Ernest(?), born 1 July 1901, William Henry, born 1 May 1902, Jessie Emma Margaret, born 27 January 1906, Emily, born 12 July 1907, Daisy Annie, born 12 December 1908, and Helen, born 10 July 1911. All the children were born in Dover.\n\nThree of his sons are pictured with him (above, left). The picture that appeared in the newspaper after his death (centre) was taken from this image.\n\nwith thanks attestation Joyce Banks\n\n\n![E J Walter and sons, with thanks](%asset_url%pictures/SurnamesW/Walter-EJ-and-sons.gif "E J Walter and sons, with thanks"){.left}\n\n![E J Walter, detail](%asset_url%pictures/SurnamesW/WalterEJ2.gif "E J Walter, detail"){.right}\n\n![EJ Walter, courtesy Dover Express](%asset_url%pictures/SurnamesW/WalterEJ.gif "EJ Walter, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(631, 'S', 'G. ', 'Ward', 'Sydney George Ward, T/203220, was a Private in D company of the 1st/4th battalion of the Buffs (East Kent Regiment). He was 23 when he died on 16th August 1918. He is buried in Ranikhet New Cemetery Plot B, Row 11, Grave 232, and remembered on the Madras 1914-1918 memorial, Chennai, India, Face 8.\n\nHe was born in Faversham in Kent, and enlisted and lived in Dover. He was the son of Arthur Allan Ward (1874-1973) and Alice Alexandria, née Fisher, who married in Faversham in 1893. He had also three sisters, all born in Dover: Minnie Gladys in 1897, who married Charles Fittall in 1917, Emily May in 1901, who married Arthur Beer in Dover in 1927, and Winifred Alice, born in 1909, who married Cyril Lambert in 1937 in Dover. A son, Sidney, was born to Mr and Mrs Fittall in 1918. Charles Fittall died in 1949.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(632, 'W', ' ', 'Waters', 'William Waters, 8593, was a Private in the King''s Own (Royal Lancaster Regiment). He was in the 1st battalion. He died on 17th September 1914 and is commemorated on La Ferte-sous-Jouarre Memorial in France.\n\nBorn and enlisting in Liverpool, he was the husband of Lottie Mabel Waters, of 3 West Street, Dover. \n\n"He''s gone, the one we loved so dear, To his eternal rest. He''s gone to heaven we have no fear, To be forever blest."  (Oct 1914)\n\n \n\n\n![W Waters, by courtesy of Dover Express ](%asset_url%pictures/SurnamesW/WatersW.gif "W Waters, by courtesy of Dover Express "){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(633, 'A', 'V. C.', 'Watson', 'A. V. C. Watson - might this be Charles Albert Victor Watson, born Cardiff?\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(634, 'F', ' ', 'Watson', 'F. Watson\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(635, 'G', ' ', 'Watson', 'George Watson, 9181, was born in Folkestone and enlisted in Dover, and was a Private in the Loyal North Lancashire Regiment, 2nd battalion, with the Labour Corps, as 671630.\n\nHe lived at Enfield, Middlesex, and died there on 1st November 1918, being buried at Edmonton Cemetery, Middlesex in the United Kingdom.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(636, 'R', 'C. ', 'Watson', 'Robert Charles Watson, G18662, was known as "Micky". He was a Private in the 7th battalion of The Buffs, and was reported missing on 3 May 1917.  He is commemorated on the Arras memorial.\n\nHe enlisted and lived in Dover, and was the youngest son of Robert Watson and his wife, Catherine, of Bench Street, Dover, who previously had lived at 24 Wyndham Road, Tower Hamlets. In 1891 the family were living at the back premises of 187 Snargate Street, with Mr Watson working as a fireman on a steamship, and two children at home, Edith Maria, 4, and Harry James, 7 months. By 1901 they were at 5 East Street, with Mr Watson working as the stoker of a stationery boiler. At home then were Edith, then a packer in a steam laundry, Harry, Lily Florence, 8, Kathleen Alice, 5, and Charles Robert, 3.  By 1911 Mrs Catherine Watson, employed as a laundry maid, was living at Round Tower Cottage, Priory Hill, with Lily, then a laundry maid, Kathleen, a domestic, and Robert. Two children had died; one was Alexander, who died as a tiny baby.\n\nMr and Mrs Watson had another son, Harry, and three sons-in-law serving. The sons-in-law were probably Thomas William Foad, a seaman, whom Lily had married on 7 February 1912 at St Bartholomew, Charlton (enlisting as Private in the Buffs on 8 November 1915), William Alfred Cornish, the husband of Edith Maria Watson; the couple married on 1 January 1905 at St Bartholomew, Charlton, and William C. Sims of Slade''s Green, whom Kathleen had married at St Augustine''s church, Slade''s Green, in May 1916\n\nThe notes below were from wreaths laid on Armistice Day 1937:\n\n"In loving memory of my dear son and our brother, Pte R C Watson, The Buffs, missing - From Mother, Sisters, and Brothers-in-law. "Ever Remembered""  \n\n\n\n"In loving memory of our dear uncle, Pte R C Watson, The Buffs, From CSM and Mrs Edwards, Shirley and Derek (Grantham)"\n\n\n![RC Watson, courtesy Dover Express, 29.6.17](%asset_url%pictures/SurnamesW/WatsonRC.gif "RC Watson, courtesy Dover Express, 29.6.17"){.left}\n\n![](%asset_url%pictures/SurnamesW/WatsonRCwreath37a.gif){.right}\n\n![](%asset_url%pictures/SurnamesW/WatsonRCwreath37b.gif){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(637, 'A', 'H.', 'Watts', 'Arthur Herbert Watts, L/10044, was a Lance-Corporal, but was made Sergeant of the Field. He served in the 1st battalion of the Buffs. He died in action on 21st July 1916, and is buried at the South Menin Road cemetery in Belgium.\n\nBorn in Deal, and enlisting and living in Dover, he was the son of Mr Walter and Mrs Edith Watts of 4 Bulwark Street, later of 38 Old Folkestone Road, Dover. He is on the right in the picture, and on the left is his brother Walter (below), who also fell.\n\n \n\n\n![Arthur and Walter Watts , courtesy Dover Express](%asset_url%pictures/SurnamesW/WattsAHandWEA.gif "Arthur and Walter Watts , courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(638, 'W', 'E. A. ', 'Watts', 'Walter Edward Alfred Watts, G/5428, pictured above with his brother, was also born in Deal and lived in Dover, but enlisted in Canterbury. He became a Private in the 6th battalion of the Buffs. He was 22 when he died on 3rd July 1916, having returned to active service after convalescing from wounds received at the Front. \n\nHe is buried at Lonsdale cemetery, Authuile, France.\n\nright - in memoriam July 1942\n\n\n![in memoriam, courtesy Dover Express](%asset_url%pictures/SurnamesW/Wattsannoun42.gif "in memoriam, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(639, 'J', 'N. ', 'Wayte', 'John Nathan Wayte, T/2181, was a Private in the 1/4th battalion of The Buffs. He was born, enlisted, and lived in Dover. Aged 20 years and 9 months, he was accidentally drowned at Kampte, India, on 19th February 1915. The Buffs had gone to India the previous October. He is commemorated on the Kirkee 1914-1918 Memorial in India.\n\nHe was "the beloved son" and youngest son of Thomas and Mary Wayte, from 170 Clarendon Street, Dover. He had served in the special reserve of The Buffs at Canterbury, and afterwards had joined the Oxford and Bucks Light Infantry, being stationed at Aldershot. He was unfortunately discharged as medically unfit. He had worked at Snowdown Colliery for a considerable period.\n\nWhere John was drowned was where his parents had been first stationed in India. Mr Wayte was a pensioner from the RGA, and had gone out to India in 1863, and was stationed in various areas for over eighteen years. One of his daughters, Mary, was born in Burma.  After returning he worked a couple of years at Dover Castle before leaving the service and then completing over twenty years in the Ordnance Department. Mr Wayte died on 2 August 1916, after suffering a stroke on 22 July, and was buried at St James, with a party from the RGA acting as bearers and followers.\n\nJohn''s brothers and brothers-in-law were all serving. George was in the 1st Mountain Battery of India, Tom in the RHA at the Front, and had previously served in the South African war, and Ernest in the 32nd Company of the RGA. Brotheers-in-law were Private Watts, a reservist formerly employed by the SECR who had rejoined in August 1914 and was serving in the Royal Lancaster Regiment, having been a reservist, and William Pearson.\n\nA sudden change to Gods command he fell, He had no chance to bid his friends farewell, Affliction came, without warning given, And bid him haste to meet God in heaven.\n\nwith thanks to Joyce Banks\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(640, 'H', 'C. ', 'Webb', 'Henry (Harry) Charles Webb, G/29723, was a Private in the 10th battalion of the Queen''s Own (Royal West Kent Regiment), who had lived at 134 Union Road, Dover. He died on 25th October 1918.\n\nHe was born in Bekesbourne, and enlisted in Canterbury. Mrs Mackenzie, from 49 Union Road, was his next friend. \n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(641, 'D', ' ', 'Welch', 'David Welch, D5236, was in the Royal Army Medical Corps, attached to the 149th RN Field Ambulance of the 63rd RN division, Royal Naval Volunteer Reserve.\n\nHe died on 27th September 1918, at the age of 26, and is buried at the Louverval Military Cemetery, Doignies, France.\n\nHe was born in Auchterderran, Fife, Scotland, and he enlisted in Perth.  He was the son-in-law of Mrs M Foster of 1 Percival Terrace, Winchelsea, Dover.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(642, 'G', 'J.  ', 'Wellard', 'George James Wellard, G/1354, had been a well-known fruit and fish seller before he enlisted in Canterbury. He joined the 2nd battalion of the Buffs as a Private when war began, and was wounded on 3 April 1915. After a few days convalescence he went back to the firing line, and was then reported wounded and missing on 24 April. By 12 August his death was confirmed. He was 34, and is commemorated on the Menin Gate memorial in Belgium.\n\nHe was born in "Uffam", Dover, the son of Lewis George Wellard and his wife Eliza. In 1891 the family were living at 1 Bowling Green Lane, a lodging house of which Mr Wellard was the manager. Children at home then were Lewis George, 16, a pony cart driver, Albert Edward, 6, Arthur C, 2, and Ernest W, four months, as well as George James, 11. Annie Louise was born in 1893. Mr Wellard died in 1895 at the age of 46, and Mrs Wellard remarried in 1898 to William Burnap, a painter and decorator.\n\nGeorge married in 1905 to Minnie Florence Smith. The couple had several children, amongst them George Smith, Percy, and Arthur. In 1911 they were living at 4 Pleasnat Row. Minnie later lived at 9 Seven Star Street.\n\nGeorge Wellard was cousin-by-marriage to casualties Eddie and Henry Crascall and brother-in-law to Walter Albert Mills\n\n\n![GJ Wellard, courtesy Dover Express](%asset_url%pictures/SurnamesW/WellardGJ.gif "GJ Wellard, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(643, 'A', 'J. ', 'Wells', 'Arthur John Wells, 35960, was in the Machine Gun Corps (Infantry). He was a Private in the 37th battalion. He was formerly 9405 in The Buffs.\n\n He was killed in action on 26th August 1918, after two and a half years service, and is buried at Gommecourt Wood new cemetery, Fonquevillers in France. \n\nBorn at St Mary''s and enlisting in Dover, he was the son of the late Mr A J Wells and Mrs Wells, who lived at 75a Biggin Street. Their other son, S. Wells (right) was also serving, with the Royal West Kents in Mesopotamia.\n\nThere is another Arthur John Wells, also from Dover, who lost his life in the Great War. He was L/9498, a Private in the 2nd battalion of The Buffs. He was born at Buckland, Dover and lived in Dover, but enlisted in Canterbury. He died in action on 25th February 1915 and is commemorated on the Menin Gate.\n\nThe gravestone, left, is at St Andrews, Buckland. It reads: "In Loving Memory of Alfred George Wells. Who died as a result of a railway accident at the Crosswall Gates on June 3rd 1916. Aged 27 years. Also Ernest Wells, Who died of wounds received in action, December 3rd 1918. Aged 19 years. Also to the memory of Arthur Wells, Killed in action in France, February 25th 1915. Aged 20 years. "In the midst of life we are in death"\n\n\n![AJ Wells, courtesy Dover Express](%asset_url%pictures/SurnamesW/WellsAJ.gif "AJ Wells, courtesy Dover Express"){.left}\n\n![S Wells, courtesy Dover Express](%asset_url%pictures/SurnamesW/WellsS.gif "S Wells, courtesy Dover Express"){.right}\n\n![gravestone, Joyce Banks](%asset_url%pictures/SurnamesW/WellsA-e.gif "gravestone, Joyce Banks"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(644, 'E', '', 'Wells', 'Ernest Wells, 46753, was born in Dover and lived at 1 Brookfield, Place, Buckland. He was a volunteer before he joined up at Canterbury to become a Rifleman in the Rifle Brigade, and was posted to the 2nd/10th battalion of the London Regiment (Prince Consort''s Own) (formerly TR/13/58251TR).\n\nHe died of wounds 3rd December 1918, when he was 19. He was buried on 7th December at Buckland cemetery in Dover, United Kingdom, D2194. The ceremony was conducted by a senior Chaplain to the Forces.\n\nHe was the son of the late Mr and Mrs Wells, of Dover.\n\n \n\n \n\n\n![E Wells grave stone, by Simon Chambers ](%asset_url%pictures/SurnamesW/WellsE.gif "E Wells grave stone, by Simon Chambers "){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(645, 'W', ' ', 'West', 'William West, 2116, was a Rifleman in the 4th battalion of the Rifle Brigade (Prince Consort''s Own). He enlisted at Chatham. He was drowned at sea from the SS Princess Alberta, on 21st February 1917, and is commemorated on the Mikra Memorial, Greece. He was 31.\n\nHe was born at Dover, and lived at Temple Ewell. He was the son of John and Frances West, of 4 Dour Terrace, Temple Ewell, Dover.    \n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(646, 'T', 'P. ', 'Whiles', 'Thomas Percy Whiles, G/29544, was a Private in the 10th battalion of the Queen''s Own (Royal West Kents). He was born in Dover and enlisted in Canterbury. He died on 25th October 1918, and is buried at the Harlebeke new British cemetery, Belgium\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(647, 'E', 'G. ', 'Whiteman', 'Evelyn Guy Whiteman, D3258, enlisted in Canterbury, and was a Sergeant in B squadron of the 4th Dragoon Guards (Royal Irish) (Household Cavalry and Cavalry of the Line including Yeomanry and Imperial Camel Corps). He was struck by a shell at Pecy on 6 September 1914 when advancing in the firing line, and died three minutes afterwards in the arms of the Squadron Sergeant Major, without regaining consciousness. He was 24\n\nHe was buried by his comrades at Pecy, who, according to their Captain, R McGillycuddy, deplored his loss and expressed their sincere sympathy to his parents, and is now recorded at the Perreuse Chateau Franco-British National Cemetery, France, 1 D 34.\n\nBorn in Sandhurst, Hawkhurst, Kent, he was the son of Nelson, a tram driver, and Eliza Hannah Whiteman, from "Woodlands", River, Dover, and lived in Dover (18 Buckland Avenue?). On 29th September 1915 a memorial service was held for him and a number of other parishioners lost in the war at Buckland church, Dover.  \n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(648, 'T', 'R. E.', 'Wickes', 'Thomas Raymond Edward Wickes, 910689, had worked for Mr Hogbin of Woolcomber Street before enlisting in Dover. He joined the Royal Field Artillery and became a driver in the 222nd Brigade.\n\nHe was killed on 4th May 1917, in Mesopotamia, when he was 19 years old. He had been riding the lead horse in a gun team, but in the rough conditions had fallen off and then been run over. He is commemorated on the Basra memorial, in modern Iraq.\n\nHe was born in Dover, one of five children, four brothers and a sister, and he was the second son of the late Thomas Wickes of Dover and Mrs Fishbourne of 13 Lowther Road, Dover. \n\n \n\nwith thanks to Mr D Morris\n\n \n\n\n![T wickes, courtesy Mr Morris](%asset_url%pictures/SurnamesW/WickesT.gif "T wickes, courtesy Mr Morris"){.left}\n\n![T Wickes, courtesy Dover Express](%asset_url%pictures/SurnamesW/WickesT2.gif "T Wickes, courtesy Dover Express"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(649, 'C', 'E.  ', 'Wickham', 'Charles Edward Wickham, 68089, was a Private in the 7th battalion of the Royal Fusiliers (City of London Regiment) (formerly 6858 2/5th Queen''s Royal West Surrey Regiment). He enlisted and lived in Paddington. He was 29 when he died on 30 December 1917, and is commemorated on the Thiepval memorial in France.\n\nBorn in Dover, he was the eldest son of Mr George Henry ("Harry") Wickham and his wife Emily Jane, née Sawyer, of 19 Clarendon Place, Dover. The couple had married in 1887. They had made their home at 10 Ladywell Place by 1891, with Mr Wickham working as an ostler;  Charles was then aged 2. By 1901 Charles had a brother, Henry, just one month old, and two sisters, Emily, 4, and Gladys, 2. They were living at 84 Clarendon Street, and Mr Wickham had become a marine porter. Ten years later, living at 19 Clarendon Place, Mr Wickham had become a house painter. Charles had left home; he was in lodgings at 1 Birley Street in Battersea and working as a chemist.\n\nTwo years later he married Grace Sparling in the Paddington area. They had two daughters, Eileen in 1914 and Joan in 1916. Mrs Wickham later moved to 17 North Road, Brightlingsea, Essex.\n\nGeorge Henry (Harry) Wickham was the brother of Frank and William (below), thus Charles was their nephew. For many years Charles'' family laid a wreath at the Town Memorial each Armistice Day, and inserted In Memoriam notices in the local newspaper.\n\n(above) In Memoriam December 1937 (left) In Memoriam January 1929\n\nwith thanks to Simon Randle\n\n\n![CE Wickham, courtesy Dover Express  ](%asset_url%pictures/SurnamesW/WickhamCE.gif "CE Wickham, courtesy Dover Express  "){.left}\n\n![](%asset_url%pictures/SurnamesW/WickhamCannounce2.gif){.right}\n\n![](%asset_url%pictures/SurnamesW/WickhamCannounce1.gif){.left}\n\n![](%asset_url%pictures/SurnamesW/WickhamCannounce3.gif){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(650, 'F', ' ', 'Wickham', 'Frank Wickham, 260279, enlisted in Dover, and was in the 1st/6th battalion (Territorial) of the Royal Warwickshire Regiment (formerly 2746 of The Buffs). A family story is that he was on his way home to England when he died of wounds in Havre hospital on 13 October 1917, when he was 40. He may have been wounded at the battle of Broodseinde Ridge, on 4 October 1917.\n\nHe now lies at Sainte Marie cemetery, Le Havre in France. The words at the bottom of his headstone read, "At Rest".\n\nBorn at Hougham, he was the son of the late Police Constable George William Wickham and his wife Eliza Ann, née Church. In 1871 they were living at 5 Adrian Court, Dover, with their children George, then 4, and Alice Louisa, then just 1.  Mr Wickham was working as an upholsterer warehouseman. By 1881 Mr Wickham had become a Police Constable, and the family had moved to Bowling Green Terrace. Alice had died the year before, but the family had been joined by four other children; Edith Annie, 9, Ellen Bertha, 7, William Ernest, 5, and Frank, 3.\n\nPC Wickham died in 1886, aged 46, and in 1891 Mrs Wickham, living at 9 Bowling Green Hill, was working as a shop assistant. Her daughter Edith was a domestic servant, while William was helping by working as an errand boy. Frank was still at school. By 1901 Frank was working as a Bell Diver''s Assistant, helping to construct Dover Harbour.\n\nThe next year, 1902, on Christmas Day, Frank married Annie Ashby. The couple had six children, all born in Dover: Ellen May, born 1903, Agnes Eliza, 1905, Frederick Frank, 1906,  Harry George, 1908,  Frank William, 1910, and Annie, 1912. There was probably also another daughter, Bertha, who died as a baby in 1907. The family were, in 1911, living at 5 Durham Hill, with their father still working as a Diver''s Attendant.\n\nWilliam, below, was Frank''s brother, and Charles, above, was his nephew, the son of his brother George.\n\nIn memoriam 10 October 1919\n\nnote: Little Frank, born 1910, served as Sergeant in The Buffs in WWII. He was taken Prisoner of War. He survived, and on 22 September 1945 at St Paul''s RC Church, Dover, married Rosalie Mary Smith from 6 Caroline Place, Dover.\n\nwith thanks to Simon Randle\n\n\n![F Wickham, courtesy Dover Express](%asset_url%pictures/SurnamesW/WickhamF2.gif "F Wickham, courtesy Dover Express"){.left}\n\n![F Wickham grave stone, by Andy and Michelle Cooper](%asset_url%pictures/SurnamesW/WickhamF.gif "F Wickham grave stone, by Andy and Michelle Cooper"){.right}\n\n![](%asset_url%pictures/SurnamesW/WickhamFannounce.gif){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(651, 'W', 'E.', 'Wickham', 'William Ernest Wickham, G/13557, was a Serjeant in the Buffs. He was in the 6th battalion and had gained the Territorial Force Efficiency Medal. He had joined the Territorials, 4th Buffs, on 20 April 1908 at Herne Bay and re-engaged several times. He became a Corporal in 1910. On 9 September 1914, at Margate, he signed an agreement to accept liability in the event of a National Emergency to serve in any place outside the United Kingdom. To denote this he was entitled to wear a badge on the right breast of his uniform.\n\nWilliam went to Aden on 5 August 1915 and served there until 4 February 1916.   On 16 January 1917 he was posted to the 6th Buffs , and appears to have joined them in the field just a fortnight or so before he went missing on 3 May 1917. His body was never found; he is commemorated on the Arras Memorial in France.\n\nHe was the husband of Eliza Jane Wickham, née Foad, of 1 York Terrace, King''s Road, Herne Bay, Kent, in which town he had enlisted. The couple had married in 1897, and in 1901 they were living at 1 Orchard Road, Herne, Blean, with William working as a house decorator. They then had two children, Ethel Bertha, 3, and Ernest William, 1.\n\nThe family had moved by 1911, to 1 Hanover Street, Herne Bay. There they had two more sons, Charles George, 10, and Frederick Arthur, 3. Two other children had died in infancy. When he enlisted his sister, then Mrs Edith Annie Pout, was also living at Herne Bay, at 23 Stanley Road. She had three children; William, Alice, and Frank.\n\nBorn in Christchurch (Dover), William was the  brother to Frank, above, and an uncle to Charles, above\n\n\n![W Wickham, courtesy Dover Express](%asset_url%pictures/SurnamesW/WickhamW.gif "W Wickham, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(652, 'A', 'G. ', 'Wicks', 'Arthur Giffard Wicks, 9077, was a Private in the 2nd battalion of the Honourable Artillery Company. On 2 April 1917 he died from wounds he had received on 31st March. He was 19. He is buried at Euston Road Cemetery, Colincamps, France.\n\nBorn in Dover, he was the "beloved younger son" of John Giffard Wicks and Kate Wicks, from "Snaefell", 39 Priory Hill, Dover, formerly of Ashen Tree Lodge, Dover.  In 1911 the family were living at 18 Castle Hill road, Dover, and Mr Wicks was working as a head teacher in a school.\n\nHe lived in Chesham, and enlisted in Aylesbury. He is also commemorated on the Chesham memorial.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(653, 'T', '', 'Wicks', '\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(654, 'W', ' ', 'Wiley', 'William Wiley. This might be Major William Wiley, of the RAMC, who died on 12 February 1917 at the age of 40. Twice mentioned in dispatches, he was in the 12th Field Ambulance of the RAMC. He is buried at South Ealing cemetery I D 12.\n\nBorn in Cork, he was the son of William and Jessie Wiley, and the husband of Ida, née Nuthall, whom he married in 1910. They had a daughter, Enid J Wiley, who was christened in Dover in 1912. Mrs Ida Wiley remarried to become Mrs Richards.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(655, 'G', 'E. J. ', 'Williams', 'George Edward James Williams, 2110, was a Lieutenant in the 2nd Field Company of the Australian Engineers. He had enlisted on 2 June 1915, as a Driver and on 6 September 1915 had embarked from Sydney, New South Wales aboard HMAT A70 Ballarat. His address was Monksilver, Louisa Street, Gloucester Street, Brisbane.\n\nHe died from wounds on 25 October 1917, and is buried at Lijssenthoek Military Cemetery in Belgium, XXII C 15.\n\nBorn at Battersea, he was the husband of Pleasant Williams, who was killed in Canterbury on 3 June 1942, and in 1911 was at 5 Military Road Dover, with his stepmother, Mrs Adeline Williams, née Erby, of 6 Military Road, Dover.  He was then an apprentice engine fitter. In 1901 he had been living at 10 Vale View Road with his father, George, a widower, who worked on the steam ships. George and Adeline married in 1904. Adeline''s parents had been licensees at the Kent Arms, Dover between 1878 and 1895, Mrs Erby having run the pub for a short while after her husband''s death in 1893.\n\nresearch with thanks to Joyce Banks\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(656, 'W', 'H.', 'Williams', 'William Henry Williams, SS.103409, was a Stoker, 1st class, in the Royal Navy. He was aboard the HMS "Good Hope", and was killed in action at the Battle of Coronel (Chili) on 1st November 1914, at the age of 26.\n\nHe was the "beloved husband" of Minnie Jane Gold (formerly Williams), of 23, Moselle Street, High Road., Tottenham, London, and "dearly loved and sadly missed by his sorrowing Wife and Aunt". Mrs Gold formerly lived at 6 Market Street, Dover.\n\nHe is commemorated on the Portsmouth Naval memorial in France.\n\nHow hard it is to part with those We hold on earth so dear; The heart no greater trial knows, No sorrow more sincere.\n\nPeace, perfect peace. (Nov 1914)\n\n\n![WH Williams, courtesy Dover Express](%asset_url%pictures/SurnamesWicks/WilliamsWH.gif "WH Williams, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(657, 'W', 'S. S.', 'Williams', 'Walter Stephen Sockwell Williams, J/15758, was the son of Walter and Alice Williams, of 3 Heverham Road, Plumstead, London. The couple married in Dover in 1893; Mrs Williams was formerly Fanny Alice Stockwell, born in Folkestone in 1870. In 1901 they were living at 4 Five Post Lane, Dover, with Mr Williams working as a general labourer. With them were their first three children, Norah, aged 7, Walter, then aged 5, born on 29 August 1895, and Ruby, aged 3, all born in Dover.\n\nTen years later there family were living at 2 Selborne Terrace, Dover, joined by a fourth child, Stanley, then aged 9. Mr Williams was working as an engine driver for contractors S. Pearson and Sons, and Norah had become a music teacher. Walter had begun work as an apprentice at an ironmongers.\n\nWalter became an Able Seaman in the Royal Navy, on the HMS "Defence". He died on 31st May 1916 in the Battle of Jutland, at the age of 20. He is commemorated on the Plymouth Naval Memorial in the United Kingdom. His mother, by then living at 3 Heversham Road, Plumstead, London, was the relative notified of his death.\n\n\n\nWhat will it matter when the war is o''er? What sea shall contain him or on what shore He shall be sleeping - far away from his home. Not there will we look, but to God''s great Dome, Where the quiet moon and each shining star Will tell us that he is not very far - And so are we comforted; we know - we know! That youth has come to claim his own again, That nothing beautiful that God has given Dies utterly - or gives his life in vain. In ever loving memory of our dear son\n\n\n![WSS Williams announce, courtesy Dover Express](%asset_url%pictures/SurnamesWicks/WilliamsWSSannounce.gif "WSS Williams announce, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(658, 'A', '', 'Willis', 'A Willis was probably Thomas Arthur Willis, a Gunner, 54881, in the 97th battery of the Royal Field Artillery. He went missing, feared drowned, from the transport "Manitou" in the Aegean Sea on Saturday 17 April 1915. He had just returned from India.\n\nBorn in Shrewsbury in 1891, he enlisted in Dover and was in 1911 serving overseas in the 90th battery at Jubbulpore, India. He was a grandson of the late QMS James Robert Robinson, AOC and the eldest son of Mr and Mrs Willis of 31 Longfield Road, Dover.\n\nHe is commemorated on the Helles Memorial, Turkey, panel 21 and 22.\n\nNotes: QMS Robinson died on 1 April 1909 from pneumonia and was buried at St James. He was a veteran of some 24 years, having served in the Anglo-Zulu war of 1879 and had also been engaged at the Ordnance Stores in Dover. He had been awarded a good conduct medal and left the Army with an exemplary character. QMS Robinson had also been recorded in 1891 as publican of the Ordnance Inn at 120 Snargate Street, and in 1901 as a painter, living at 32  Belgrave Road with his wife and one of their three daughters, Agnes Isabel. Agnes.born about 1882 in Bermuda, would marry Ebenezer Payn Gower, a corporal in the 19th Hussars, at Christchurch, Dover, on 27 June 1903. The other daughters were Edith Maud, born 1887 at Portsmouth, who married William James Maltby, a soldier, on 28 February 1897 at Christchurch, Dover, and probably Nellie. She is likely to have become Mrs Willis Russell and the mother of Thomas Arthur Willis. Mrs Robinson died on 17 August 1922 and was buried at St James in the grave of her husband.\n\n\n![A Willis, courtesy Dover Express](%asset_url%pictures/SurnamesWicks/WillisA.gif "A Willis, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(659, 'H', ' ', 'Willis', '\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(660, 'A', 'C. ', 'Wills', 'He was the son of Mrs Isabella Wills, of 54 London Road, Dover \n\nWe often think and talk of you, We have listened for your footsteps, Which has been all in vain. But we trust in God to meet you In heaven once again. Sadly missed, from his heart-broken Mother, Father, Brothers, and Sisters\n\n\n![](%asset_url%pictures/SurnamesWicks/WillsACannounce.gif){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(661, 'A', 'J. ', 'Willson', 'Albert John Willson ("Bert"), CH926(S) was 21 when he died of wounds on 3rd August 1916 while serving with  the 1st Royal Marines RN Division, Royal Marine Light Infantry. He is buried in the Barlin Communal Cemetery Extension, France.\n\nBorn on 14 January 1895, he was the  second and "dear beloved" son of Mr Alfred and Mrs Charlotte Lavinia Willson, née Clark, of 1, The Esplanade, Dover. In 1911 the family had been living at 4 Cowgate Hill. Mr Willson was working as a messenger for Trinity House, and there were five children in the family. Winifred was 21 and an assistant in the millinery department of the Co-operative Stores. William, 19, was working as a seaman for Trinity House, and Albert, aged 16, as a shop boy. There were two more sons, Sidney, aged 13, and Alfred, the youngest, then 10. Ten years previously they had been living at 2a Cowgate Hill.\n\nRIP\n\nNote: 4 Cowgate Hill was also the home in 1916 of civilian casualty Gertrude Boorman and of George Saunders in 1901. \n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(662, 'C', 'E. ', 'Wilshire', 'Charles Eric Wilshire, G/9020, was in the 8th battalion of the Buffs. He died at the age of 20 years and two months on 6th September 1916. He is commemorated on the Thiepval memorial in France.\n\nHe was the "beloved son" of  William Evans Wilshire and Sarah Jane Wilshire, of 6 Barton Path, Dover, and previously at 123 Clarendon Place, Dover. He was born, enlisted, and lived in Dover.\n\nHis brother Ernest Wilshire became a civilian casualty in World War II\n\n\n![CE Wilshire, courtesy Dover Express](%asset_url%pictures/SurnamesWicks/WillshireCE.gif "CE Wilshire, courtesy Dover Express"){.left}\n\n![Thiepval, by Reg and Jenny Crascall](%asset_url%pictures/SurnamesWicks/WillshireCEThiepvalmon.gif "Thiepval, by Reg and Jenny Crascall"){.right}\n\n![CE Wilshire, on Thiepval, by Andy and Michelle Cooper](%asset_url%pictures/SurnamesWicks/WillshireCEThiepval.gif "CE Wilshire, on Thiepval, by Andy and Michelle Cooper"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(663, 'C', 'E. ', 'Wilson', '\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(664, 'H', 'P. ', 'Wilson', 'Henry Porter Wilson, L/10605, joined the 7th battalion of The Buffs in 1915. He was a Private died in action on 23rd March 1918, at the age of 23. He is commemorated on the Pozieres memorial in France.\n\nBorn in Croydon, he was the son of Mr and Mrs Wilson of 13 Commercial Quay, Dover. where he enlisted and lived.\n\n1925 - In loving memory of our dear son ... "Gone but not forgotten" From Father, Mother, brothers and sister (Commercial Quay).\n\n\n![HP Wilson, courtesy Dover Express](%asset_url%pictures/SurnamesWicks/WilsonHP.gif "HP Wilson, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(665, 'E', 'J', 'Winkworth', 'Edwin John Winkworth was born in Dartford, and had an army career. In 1901 he was a Private in Canterbury. He had served for several years at Dover Castle, and when the war began was an instructor in the No 1 depot of the RGA.  His commission was announced in May 1917. As 2nd Lieutenant in the 219th Siege battery of the RGA he died of wounds on 6th December 1917, aged 38, and is buried at Achiet Le-Grand Communal Cemetery Extension in France.\n\nHis parents were the late George and Agnes Susan Winkworth, of The Brooklands, Dartford, Kent, and his wife was Eleanor, nee Fittall, who lived at 176 Clarendon Street, Dover. In the New Year of 1918   Mrs Winkworth received a telegram from Buckingham Palace. It read:\n\n"The King and Queen deeply regret the loss you and the Army have sustained by the death of your husband in the service of his country. Their Majesties truly sympathise with you in your sorrow. - The Keeper of the Privy Purse."\n\nThe headstone is at Charlton, and reads:\n\nIn Loving Memory of William Fittall who passed away 29th March 1915 aged 72 years Also of Elizabeth Ann Fittall Wife of the Above who passed away 30th September 1922 aged 77 years Also of 2nd Lieut Edwin John Winkworth 219 Siege Bty RGA Son-in-Law of the Above Died of wounds in France 6th December 1917 aged 38 years "At Rest" Also of Eleanor Winkworth who passed away 14th July 1947 aged 60 years "Re-united"\n\nphoto and transcription with thanks to Joyce Banks\n\n\n![headstone, by Joyce Banks](%asset_url%pictures/SurnamesWicks/WinkworthEJstone.gif "headstone, by Joyce Banks"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(666, 'J', ' ', 'Wise', 'Joseph Wise, 222824, was was the son of James Loftus and Agnes Eleanor Wise, from London, and the husband of Edith Green  (formerly Wise) of Corporation House, Tower Hamlets Road, Dover.\n\nA Leading Signalman on the HMS "Flirt" with the Royal Navy, he was Mentioned in Dispatches, He also gained the Distinguished Service Medal, gazetted on 26 July 1916. Vice Admiral Sir Roger Bacon, in his report, detailed the work of the Dover Patrol over the preceding winter, escorting merchant vessels and troop-carriers, hindering enemy submarine activity, and engaging in a number of actions including bombardment of enemy positions in Belgium. During this time over a hundred Dover Patrol officers and men were lost. \n\nLeading Signalman Wise was killed at the age of 29 on 26 October 1916 when the Dover Patrol intercepted enemy destroyers intending to raid in the Straits of Dover. HMS Flirt was torpedoed after she had lowered a boat to rescue survivors from the burning drifter Waveney II. The only survivors from HMS Flirt were those in this boat.\n\nHe is commemorated on the Portsmouth Naval memorial in the United Kingdom (detail above)\n\nleft HMS Flirt, Wikimedia Commons\n\n\n![by Dean Sumner](%asset_url%pictures/SurnamesWicks/Wise-J.gif "by Dean Sumner"){.left}\n\n![HMS Flirt, Wikimedia Commons](%asset_url%pictures/SurnamesWicks/Wise-JFlirt.gif "HMS Flirt, Wikimedia Commons"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(667, 'C', 'E. ', 'Wood', 'Charles Edward Wood, 120266, was a Gunner in the Clearing Office of the RGA. He had been invalided home from the Front, and he died at the Central Military Hospital, Eastbourne on 16th July 1918, from double pneumonia following influenza. He was 32. \n\nHis body was brought home to Dover on 20th July by train. It was met at the station and brought back to his house at 4 Barton Path. Previously he had lived with his brother at 4 Biggin Street.\n\nCharles'' funeral was held two days later, on Monday 22nd July, with full military honours. His body was borne on a gun carriage to Buckland cemetery, and the coffin was covered with the Union Flag. Members of the RGA were bearers, and the band of the Royal Warwickshire Regiment played "Abide with Me" at the graveside. After the service there were three volleys fired over the grave, and the Last Post was sounded. \n\nHe was born, enlisted, and lived in Dover, and was the husband of Gertrude Wood, who lived at 7 Charlton Avenue, Dover. She was one of many relatives and friends at his graveside. Her parents, Mr and Mrs Hopper, and her uncle from Sandwich were there, along with four brothers, Lieutenant JE Wood, Mr H Wood, Corporal B Wood APC, and Mr E Wood, and Miss C Wood, his sister. There were numerous floral tributes.\n\nMrs Wood''s home and the street it stands in\n\n \n\n\n![CE Wood, grave, by Simon Chambers](%asset_url%pictures/SurnamesWicks/WoodCEgrave.gif "CE Wood, grave, by Simon Chambers"){.left}\n\n![CE Wood, home, by Simon Chambers](%asset_url%pictures/SurnamesWicks/WoodCEhouse.gif "CE Wood, home, by Simon Chambers"){.right}\n\n![Churchill Avenue, by Simon Chambers](%asset_url%pictures/SurnamesWicks/WoodCECharltonAvenue.gif "Churchill Avenue, by Simon Chambers"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(668, 'J', 'F. ', 'Wood', '\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(669, 'J', 'T.', 'Wood', 'James Thomas Wood, 40512, was a Private in the 7th battalion of the Bedfordshire Regiment (formerly 29006, Essex Regiment) He died on 3rd May 1917 and is commemorated on the Arras Memorial in France.\n\nBorn in Cha(r)tham, he was the son of George, a farm labourer, and Emily Wood. In 1881 the family were at Chartham Hatch, and at home were sisters Beatrice, 17, Margaret, 12, and Annie, 8, and brothers Herbert, 11, William, 6, and Frederick, a baby.\n\nHe enlisted and lived in Dover, and was the husband of Matilda Emily Wood, formerly Gilham of St James'' Parish Hall, Dover. The couple had married in 1911, and in that year Miss Gilham had been working as a house parlour maid at St James Rectory.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(670, 'W', ' ', 'Wood', 'William Wood was a temporary Captain in the 8th battalion of the Queen''s Own (Royal West Kents). He was 37 when he died in action on 31st May 1916, and is buried at Dranoutre Military Cemetery, Belgium.\n\n\n\nHe was the youngest son of James and Elizabeth Wood, from Dover.\n\nIn loving memory of Captain W Wood. One of the best and loved by all who knew him - from his sorrowing Father, Brothers, and Sisters Through shot and through shell, He fought and fought well, No thought of pain or of fear, Till God thought it best to lay him to rest, after toiling for those he loved dear. We miss the handclasp, miss the loving smile, Our hearts are broken; yet a little while, We too shall pass within the golden gate; God help us, God comfort us while we wait. From his affectionate brother and sister, Arthur and Emily\n\nHis father received a telegram of condolence:\n\nThe King and Queen deeply regret the loss you and the army have sustained by the death of your son in the service of his country. Their majesties truly sympathise with you in your sorrow.\n\n\n![W Wood, courtesy Dover Express ](%asset_url%pictures/SurnamesWicks/WoodW.gif "W Wood, courtesy Dover Express "){.left}\n\n![announce W Wood, courtesy Dover Express](%asset_url%pictures/SurnamesWicks/WoodWannounce2.gif "announce W Wood, courtesy Dover Express"){.right}\n\n![announce W Wood, courtesy Dover Express](%asset_url%pictures/SurnamesWicks/WoodWannounce.gif "announce W Wood, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `casualty` (`id`, `given_name`, `middle_names`, `family_name`, `narrative`, `war`, `civilian`, `gender`, `final_resting_place`, `date_of_birth`, `date_of_death`, `commemoration_photo`, `rank_at_death`, `service_country`, `place_of_birth`, `last_known_address`, `last_known_address_year`, `recently_uploaded`) VALUES
(671, 'A', 'F. ', 'Worster', 'Alexander Frederick Worster was an old boy of the County (now the Grammar) school. His parents lived at the Dublin Man o'' War, River. He was a member of the Dover Rifle Club, on its Committee, and a good shot, and he was also a Scoutmaster. He was a pupil of Mr Twyman, the auctioneer at Canterbury, after he left school, but when war broke out he joined the Royal East Kent Yeomanry and afterwards received a commission from the Buffs. He was the first Dovorian to be awarded a Military Cross and bar.\n\nHe gained the Cross as a temporary 2nd Lieutenant, for conspicuous gallantry and devotion to duty. "He gallantly led a party in pursuit of the retreating enemy, and in the face of heavy opposition established himself in the enemy''s second  line" (London Gazette 18th June 1917). His old school said they "heard with pleasure" of the award, and that Lieutenant Worster was put in temporary command of his company. \n\nThree months later he received the bar to the Cross, detailed in the Gazette of 17th September 1917. Again it was for conspicuous gallantry and devotion to duty. He had been commanding his company against a hostile raid. "He collected every available man with the greatest coolness under intense barrage and posted them at point of advantage, moving up and down the line encouraging his men, with a complete disregard of danger. His great courage and personal example caused the raid to be repulsed with great loss to the enemy. Later, though heavily sniped, he brought in a wounded enemy from "No Man''s Land" therefore obtaining important identification."\n\nOn 23rd November 1917, just as he was due home on leave, the then Captain Worster died from wounds. He was buried at Rocquigny-Equancourt Road British Cemetery, Manancourt. His commanding officer, Brigadier General Green, wrote expressing his sympathy with his father, adding that he was the most popular man in the battalion and adored by the men in his "B" company. "His personal bravery and splendid soldierly qualities were a byword in the battalion. He had led his company to a glorious victory on the 20th in the battle of Cambrai.".  He had recommended him for both honours, the Brigadier continued, and if he had lived he would have received rapid promotion.\n\nOn 21st April 1918, after the Church Parade on the Western Heights, Brigadier General Sir W B Hickey, KCB, presented to Mr Alex Worster the Military Cross and Bar which had been awarded to his son. This was the second son to be lost, as the younger,  Donald (below), had been killed just before his brother.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(672, 'D', 'F.', 'Worster', '\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(673, 'D', '', 'Wyborn', 'In 1875 he married Mary Ann Beer, daughter of Richard and Rachel Beer, and the couple had two children, Ernest (married Grace in 1901, died 1954) and Florence (married 11 December 1905 at Christchurch, Hougham to Percy Edward Golding). In 1881 the family were living at 33 Clarendon Street, Dover, and Daniel was working as a coachman/domestic servant. By 1891 they were at 122 Clarendon Street, with Daniel employed as a grocer''s carman. In 1901 Daniel and Mary were living at 4 Roseberry Terrace, Underdown Road, Dover, and Daniel was working as a fireman on the SECR. Lodging with them was Frederick Beer, Mrs Wyborn''s brother.\n\nOn 8 November 1913 Mrs Wyborn died at home after a long illness, having been nursed by her sister, Elizabeth ("Lizzie") Punyer, for six years. She was buried at St James, with many affectionate messages on the floral tributes.\n\nIn 1916 Daniel married Lizzie and the couple continued to live at Roseberry Terrace. After Daniel ''s death she spoke of  "ever loving memory of my dear husband" and stated that she was his "ever sorrowing wife". Less than a year later Lizzie''s sorrows ended; on 16 January 1918 she died at 27 Ladywell Place, aged 67. She was buried at Cowgate.\n\n1919 - Never forgotten by his loving son and daughter, Ern and Flo\n\n(article)\n\nabove left: Transport Memorial at Newhaven, which commemorates amongst others the Achille Adam and her crew. below right, the Achille Adam commemorated on the Memorial. Pictures with thanks to John Harrison\n\nThe panel above on the Memorial reads:\n\n"This memorial is erected to the memory of the Captains, Officers, and Seamen of HM Transports who lost their lives whilst sailing from this port during the Great War 1914 to 1918 and also in commemoration of the valuable services rendered by the Mercantile Marine of the United Kingdom during the War. \n\n \n\n\n![Memorial at Newhaven, by John Harrison](%asset_url%pictures/SurnamesWicks/Wyborn-Newhaven.gif "Memorial at Newhaven, by John Harrison"){.left}\n\n![panel from Memorial at Newhaven, by John Harrison ](%asset_url%pictures/SurnamesWicks/Wyborn-Newhaven2.gif "panel from Memorial at Newhaven, by John Harrison "){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(674, 'J', 'F.', 'Wyborn', 'In 1881 the family were living at 1 Edgar Crescent, Buckland, Dover, with Mr Wyborn working as a malt maker. Their children then were Susan, 10, Richard, 8, Adelaide, 7, and John, 4.  John''s brother James, below, was born the following year. By 1891 the family were at 4 Russell Street, Dover, with John working as a shop boy.\n\nBy 1911 John was in the Royal Navy. He was an Able Seaman when he was lost on 23 March 1917 with HMS "Laforey". He is commemorated on the Chatham Naval Memorial in the United Kingdom. (J J B Thompson, also lost, refers). Mrs Wyborn, then a widow, was living at 24 Folkestone Road, Dover, when she was notified of her son''s death.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(675, 'J', 'H. ', 'Wyborn', ', France.\n\nIn 1901 he was living with his parents at 4 Russell Street, and working as an assistant hairdresser. Ten years later he was at home with his widowed mother at 9 Rosedale Cottages, Manor Road, Maxton, Dover, employed as a hairdresser. The same year he married Nellie Hill, and the following year the couple may have had a daughter, Dorothy.\n\nHe was the brother of John, above, and the husband of Nellie Wyborn, of 25, Folkestone Road, Dover.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(676, 'E', 'R. L. ', 'Wynne', 'He was the son of Arthur Edwin Wynne, MA, the headmaster of Blundell''s School, Tiverton, Devon, and the late Georgina Wynne.  \n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(677, 'M', 'St-C. P. ', 'Wynne', 'Born on 3 October 1895, Maurice St Clair Patrick Wynne was the son of the late Mr William Wynne of 69 Snargate Street, and Mrs Norah Keilthy, wife of James Keilthy, of Avenue Villa, Frith Road, Dover. He was an old boy of St Francis of Sales school in Walmer, and went on to study with his brother Arthur at a college in Deal for the Roman Catholic priesthood. However, he volunteered for service at the outbreak of war, beginning with the Territorials, and joined the Royal Garrison Artillery on 14 October 1914. He was then 5'' 7" tall. He was transferred to the Royal Inniskilling Fusiliers in November.\n\nMaurice saw considerable service with the Mediterranean Expeditionary Force. He was gazetted as a 2nd Lieutenant on 1 Jan 1916, and the next month was awarded the DCM for his actions in the Gallipoli campaign when he was 19. On 6 August 1915 as a Lance-Corporal he had displayed conspicuous gallantry at Sulva Bay. He brought ammunition to the firing line and on in advance of his party under heavy fire to find out where it was most required. He was informed on 4th September by Lieutenant General Mahon, who was commanding the 10th Irish division. He wrote, "Your Commanding Officer and Brigade Commander have informed me that you have distinguished yourself by gallant conduct on the field. I have read their report with great pleasure and have forwarded it to the higher authority for recognition."\n\nMaurice became a Lieutenant in September 1918. Sadly he was fatally wounded by a shell on the third day leading his men in an advance on Le Cateau. Having served throughout the war, he died just a month before the Armistice at the No 3 Canadian Casualty Clearing Station on 10/11 October 1918, aged 23. He is buried at Rocquigny-Equancourt Road British cemetery, Manancourt, France, XIV C 2. At the foot of his headstone are engraved the words, "Eternal rest grant unto him, O Lord. May he rest in peace. Amen".\n\nHis commanding officer wrote, "He had done splendid work in the first two days, when the whole battalion earned very high praise, and the news of his death came as a very great blow to all of us. A fine type of officer, loved as a comrade by his brother officers and men. His loss is one we can ill afford, and we all feel it very deeply.".\n\n*\n\nWilliam Wynne, Maurice''s father, was in 1901 at the Masonic Hall in Snargate Street, and occupied as a caretaker. Aged 60, he came from Manchester, and his wife, Norah Mary Cecelia, née Deegan, then 34, from Limerick in Ireland. The couple had married in 1891 in Dover, and they had four children together; Norah Gwendoline, born in 1891, Kathleen, about 1893, Martyn William Arthur, 1 May 1894 ("Arthur"), and Maurice Sinclair, all born in Dover. William died later that year, 1901, and the following year Mrs Wynne married James Keilthy. He was an engine driver for the electricity for the council, and in 1911 they were living at 1 Granville Street with Kathleen, Arthur, and Maurice, then a painter in a motor building, and with a new son, James Roland Keilthy, born in 1905. Another new son, William James, born in 1902, had died at the age of 2.\n\nWilliam Wynne had been married twice; his first wife, Emma, née Hatton, whom he had married on 6 April 1867, died in 1889 at the age of 41. The couple were living in 1881 at the Grand Shaft Barracks, Western Heights, Dover, where William was a BR Sgt/Chelsea Pensioner. With them then were eight children; Margaret, born in Ashton, William and Frederick Charles, born in Ireland, Charlotte and Edith Ellen, born in India, Lea and May, born in Kingston-upon-Thames, and Harry, who was born in Dover. Sadly Harry also died in 1889, aged 8, just before his mother.\n\nDuring the war Arthur served with The Buffs and then was gazetted on 28 February 1917 with a commission in the Royal Fusiliers. He survived the war and was married at St Paul''s, Dover, on 12 September 1928 to Mlle Germaine Georgette Martineau, born 13 July 1894, from Versailles. Employed at Chitty''s Mill as a cashier in the 1930s, Arthur died in Dover in 1968; his wife in the Ashford area in 1978. The couple had two sons; Maurice George Arthur Wynne, born on 13 November 1930 at the Buckland Nursing Home and named in memory of his uncle, and Martyn William Anthony Wynne, born on 23 December 1931 at 1 Castle Avenue, Dover.\n\npicture, above right: with thanks to Susan Avery census information with thanks to Joyce Banks\n\n\n![Maurice Wynne, by courtesy of Susan Avery](%asset_url%pictures/SurnamesWicks/WynneM.gif "Maurice Wynne, by courtesy of Susan Avery"){.left}\n\n![M StC Wynne, courtesy Dover Express](%asset_url%pictures/SurnamesWicks/WynneMStC.gif "M StC Wynne, courtesy Dover Express"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(678, 'P', 'J. ', 'Walsh', 'Percy John Walsh, 8639, was a Rifleman in the 2nd battalion of the Royal Irish Rifles. Born in Newry, County Down, he enlisted in Dublin.\n\nIn 1911 he was stationed at the Citadel Barracks on the Western Heights in Dover. In 1912 he married Mabel Susannah Moore in Dover. She was the daughter of Richard Moore, a railway guard, and his wife, Elizabeth, and in 1911, aged 22, she was living with them at 46 Limekiln Street and working in a laundry. Mr and Mrs Walsh had one daughter, Eileen.\n\nRifleman Walsh was killed in action on 26 October 1914, and is commemorated on the Le Touret Memorial in France.\n\nOn 8 May 1916 at Holy Trinity, Dover, Mrs Walsh, then living at 68 Limekiln Street, remarried. Her new husband was Charles William Harris. He was a Sergeant in the 1st Battalion of the East Surreys, then stationed at the Grand Shaft Barracks, Western Heights.\n\nIn 1924 Mrs Harris, living at 25 Victoria Dwellings, requested that Percy''s name should be commemorated on Dover Memorial. Mrs Harris had also previously lived at 220 Old Folkestone Road.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(679, 'A', 'G.', 'Young', 'Alfred George Young, Dover born\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(680, 'J', '', 'Young', 'John Young, 891690, was a Diver''s Linesman,  R.F.Aux. Fidget, Mercantile Marine Reserve. He died on 1 October 1918, at the age of 45.\n\nHe was the son of John and Mary Ann Young, of Dunmow, Essex; and the husband of Rosa Amy Young, of 69, Clarendon Place, Dover.\n\nHis body was brought home for burial; he is buried at Charlton cemetery, Dover in the United Kingdom. Mourners included Mrs Young, his widow, Mr T H Young, his son, and Mrs Young, his mother. His brother Luther was in Egypt\n\n \n\n\n![](%asset_url%pictures/SurnamesY/YoungJgrave.gif){.left}\n\n![J Young, house, by Simon Chambers](%asset_url%pictures/SurnamesY/YoungJhouse.gif "J Young, house, by Simon Chambers"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(681, 'A', 'J.', 'Nash', 'Arthur James Nash, G/24262. He was 20 when he was killed in action on 1st August 1917, and he is commemorated on the Ypres Menin Gate memorial in Belgium. He was in the 8th battalion of The Queen''s (Royal West Surrey Regiment) (formerly 3020, East Kent Regiment), serving as a Lance Corporal.\n\nBorn and living in Dover, he went to St Mary''s school, and was the youngest son of William and Mary Jane Nash, of 24 Ladywell Place, Dover  He enlisted in Canterbury.\n\n\n![AJ Nash, courtesy Dover Express](%asset_url%pictures/SurnamesN/NashAJ.gif "AJ Nash, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(682, 'J', 'R.', 'Nash', 'John Robert Nash, M/316133, born around 1879, was the son of Alfred Nash, a police inspector, and Jane, formerly Fagg, who had married in Dover in 1870. In 1909 he married Kathleen Kennett, also in Dover, and in 1911 the couple were living at 3 Victoria Crescent, Dover with John working as a carman for a builders'' merchant firm. Visiting them was his mother, then a widow.  \n\nJohn enlisted in Dover, and on 4 October 1918 he was killed in action as a Private in the Royal Army Service Corps, 565th MT Company, attached to the VI Corps Heavy Artillery. He is buried in the Louverval Military Cemetery, Doignies in France, A5.\n\nNote: Inspector Nash, popular, advancing quickly in his career, and said to be eminently trustworthy, reliable, and upright, had served 35 years in the police force when he was killed helping launch the lifeboat to the aid of two men in a hopper barge adrift in a severe gale at 1.40 am on 11 September 1903. The wind twisted the lifeboat just before it was launched and drove it into a fence. A wheel of the lifeboat carriage ran over his back; it was later discovered that the toe of his right boot, his right leg having been doubled beneath him, had penetrated his heart. He died instantly. The two men remained on their barge, declining rescue on two occasions when a tug put out to them, and in the morning returned to shore unharmed having been picked up by the passenger steamer Britannia. Inspector Nash is buried at Charlton.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(683, 'C', 'S.', 'Neill', 'Charles S. Neill, S/10607, was born in Lydd to Mr James H H Neill, a Sergeant in the Royal Artillery,  and his wife Amelia, who later lived at 9 Westbury Road, Dover. He enlisted in Dover, and served as a Private in the 1st battalion of The Buffs, having been in the 3rd (reserve) battalion in France in the early part of 1915.. He had been reported as missing, and then as a prisoner of war, after having been severely wounded in February 1917.\n\nWhen he recovered from his wounds he was employed on various works by his captors. He was able to send letters to his parents; the last they received from him was dated 30th October 1918, from Soltan, stating he was well. They were informed of his death in 7th February 1919 by the Central Prisoners of War Committee (British Red Cross Society), after a fellow prisoner of war who had recently returned had notified the Committee that Private Neill had died in hospital in Germany from the "Spanish sickness". His death occurred on 30th  (Soldiers Died says 1st) November 1918. He is buried in Hamburg cemetery in Germany, and it is believed he was the only listed Dovorian POW who had not returned home. .\n\nThere were three sons still serving in the Royal Artillery in early 1919, all of whom had been wounded, and one severely. Two of the sons were in the RGA. One received his commission 1917 for services in the field, and became a captain in command of a POW camp in France. The third had joined the BEF in France in October 1914, as a trumpeter, and, after having served throughout the Great War, was then part of the army of occupation in Germany. The extended family could boast fifteen sons who had served in the army or the navy during the Great War. \n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(684, 'F', 'T.', 'Newland', 'Frederick  Thomas Newland, G/237, was a Private in 6th battalion of The Buffs (East Kent Regiment). He was 21 when he was killed in action on 13th or 14th October 1915, and is commemorated on the Loos memorial in France, panel 15-19.\n\nBefore enlisting in dover he was a baker at the premises of Mr Holmes Morris. He was born and lived in Dover; "the dearly beloved only son" of the late Thomas and Sarah Newland, formerly of 6 Alexandra Place, Buckland. \n\n \n\nOh teach me from my heart to say, Thy will be done.\n\n\n![F Newland, courtesy Dover Express](%asset_url%pictures/SurnamesN/NewlandF.gif "F Newland, courtesy Dover Express"){.left}\n\n![in memoriam annoucement, courtesy Dover Express](%asset_url%pictures/SurnamesN/NewlandFinmemoriam.gif "in memoriam annoucement, courtesy Dover Express"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(685, 'J', 'W. ', 'Newman', 'John William Newman, G/9733, was a Private in the 6th battalion of the Buffs (East Kent regiment). He was killed in action on 7th October 1916, when he was 35. He now lies in Bancourt British cemetery in France.\n\nEnlisting in Dover, he was, before the war, for many years employed by Messrs R. Dickeson. He was born and lived in Dover and was the son of George Newman, of 42 Snargate Street, Dover. Mrs Newman of 29 Balfour Road requested that he should be put on the Memorial.\n\n\n![JW Newman, courtesy Dover Express](%asset_url%pictures/SurnamesN/NewmanJW.gif "JW Newman, courtesy Dover Express"){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(686, 'P', 'C.', 'Newman', 'Percy Chester Newman, G/13566, was a Lance Corporal in the "D" company of the 6th battalion of the Buffs (East Kent Regiment). Before the war he was a clerk with the Clyde Shipping company at Dover, and a member of the Territorial battalion of the Buffs, joining in April 1908 from 6 Barton View, Buckland.\n\nWhen war broke out Percy volunteered for foreign service. He enlisted in Dover and he went to India in October 1914, and thence to Aden. In October 1916 he returned to England, and in December 1916 he went to France. He was killed in action on 2nd May 1917, aged 27, and is commemorated on the Arras memorial in France.\n\nHe was the son of Fred and Annie Newman, born in St Mary''s, Dover, on 7 December 1889. He was christened at Charlton Church on 16 March 1890, and there his parents were given as Matthew, a commercial traveller, and Anne, living at 1 Spring Gardens, Dover.\n\n In the 1891 census Percy had become a nursechild, living at 38 St Peter''s Street, in the home of Daniel Borrett, a cordwainer, and his wife Lucy. One of their children was Bernard George Borrett, linked by marriage to Frances Charles Weller and John Collon Fox. In 1911 Percy was still at 6 Barton View, the home of Charles and Eliza Croft, where he was designated a lodger. Mrs Croft was the daughter of Daniel and Lucy Borrett.\n\nPercy was the husband of Daisy May Simmonds (formerly Newman), of The Gothic Inn, Snargate Street, Dover. The couple had married at 2.30pm on Christmas Day, 1913, at St James, attended by four bridesmaids. Daisy referred to Percy  as her "dearly loved husband".\n\nPercy''s Captain wrote to Daisy, who then lived at 6 Barton View, Dover, and who was the daughter of Mr and Mrs W. Tart, saying "He will be greatly missed by us all, he was such a splendid fellow and good soldier. He laid down his life fighting hard in the fiercest fighting that has taken place during the war."\n\n\n![PC Newman, courtesy Dover Express](%asset_url%pictures/SurnamesN/NewmanPC.gif "PC Newman, courtesy Dover Express"){.left}\n\n![PC Newman, Arras memorial, by Michelle and Andy Cooper](%asset_url%pictures/SurnamesN/NewmanPCArras.gif "PC Newman, Arras memorial, by Michelle and Andy Cooper"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(687, 'R', 'H.', 'Newman', 'Reginald Henry Newman, 374112, was a Rifleman n the 8th (City of London) battalion of the London Regiment (Post Office Rifles). He died of wounds on 25th April 1917 when he was 29. He is buried at the Aubigny Communal Cemetery Extension, France.\n\nHe was born in Dover. He was the son of William Ingram Newman and Sophia Catherine Newman, of 1, Queen Street, Dover. He lived in Dover, but enlisted in Canterbury.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(688, 'A', 'W.', 'Newton', 'Albert William Newton. In December 1913 the local paper mentions an Albert William Newton who was serving in the RMLI.\n\nHe may be the person who was Acting Sergeant, CH 17111 in the 1st Royal Marines Battalion, Royal Naval Division and killed on 3 September 1918. He was the son of Frederick Newton of 123 Regent or Reginald Road, Eastney, Hampshire. Acting Sergeant Newton was born on 16 Jun 1894 in Kinsale, County Cork, Ireland. He is buried in the Queant Road British Cemetery, Buissy, France, VF 29.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(689, 'H', 'C.', 'Nicholas', 'Henry Charles Nicholas - possibly below?\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(690, 'H', '', 'Nicholass', 'Henry Charles Nicholass, 2163, was a Gunner in the 1st.2nd battery of the RFA (3rd Home counties). He was 23 when he died on 27th May 1916 at the War Hospital, Colaba, India.  He is commemorated on the Kirkee 1914-1918 Memorial, India. \n\nHe was the only son of Henry Richard and Louisa Jane Nicholass, of 16, Peter Street., Dover, formerly 2 Spring Gardens.\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(691, 'A', 'C. ', 'Nimmo', 'Alfred Charles Nimmo, K/4760, was born on 30 September 1889 at Headcorn, Kent. He was the son of Alfred Charles Nimmo and Mary née Goldsmith, of 166 Union Road, Buckland, Dover. The couple had married in 1889, and in 1901 the family were living at 42 Longfield Road, Dover, and Mr Nimmo was working as a carpenter. With them were four children, Alfred, aged 11, William, aged 9, born in London, and Alice, aged 2, and Ellen, aged 7 months, both born in Dover.\n\nAlfred served in the Royal Navy, acting as Leading Stoker. He was killed at the aged of 25 when his ship, HMS "Princess Irene", exploded off Sheerness on 27 May 1915 when she was being loaded with mines. The explosion was massive, with debris and human remains thrown over 20 miles. Some 350 people were killed, and a number of people inland injured, with one young girl fatally so.\n\nAlfred Nimmo is commemorated on the Chatham Naval Memorial.\n\nAt Sheerness is a grave, sq DD 66 (right), for one of the few recovered bodies. This is for civilian shipwright "Arthur .Harold, the second son of Thomas and Augusta Grout, whose work on earth was ended by the explosion on HMS Princess Irene, May 27th 1913, aged 27 years. "Faithful unto Death"\n\n\n![](%asset_url%pictures/SurnamesN/Nimmo-Grout-grave.gif){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(692, 'E', 'J.', 'Norman', '(G?) Edward James Norman, 30999, was an Acting Sergeant in the 1st battalion of the Queen''s Own Royal West Kent Regiment (formerly G/27661 in the Middlesex Regiment). He was killed in action in France on 27th September 1918.\n\nHe was born in Folkestone and enlisted in Margate. Mrs Blackburn, from 144 Mayfield Avenue, requested that his name should be placed on the Town Memorial\n\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(693, 'F', 'J. ', 'Norris', 'Frank John Norris, G/17932, was a Private in the 7th battalion of the East Surrey Regiment. He had seen seven months active service before he was killed in action on 30th April 1917, when he was 34. He was buried at the Feuchy British Cemetery, France. His wife, Mercy Matilda Norris, and children lived at 130 Heathfield Avenue, Dover.\n\nBorn in Dover, he enlisted in Canterbury. He was one of four sons of Mrs E. Norris, of 11 Commercial Quay, Dover, who was serving. His brother, Herbert Norris, below, was killed three days later.  \n\nIn ever loving memory of my loving and dearly loved husband, Frank John Norris, of the East Surrey Regiment, who gave his life for his King and country on April 30th, 1917, aged 34. Sleep on, beloved one, until the day break - from his sorrowing Wife, Mother, and Children (130 Heathfield Avenue, Dover)  \n\n \n\nEntrance to Feuchy British Cemetery - Private Norris''s grave is to the right of the entrance (out of shot)  Private Norris''s grave is in the foreground row, just behind the camera position  \n\nAt the bottom of the gravestone is inscribed:\n\nFather in thy loving keeping leave we now our loved one sleeping\n\nFeuchy pictures with thanks to Michelle and Andy Cooper\n\n\n![FJ Norris, courtesy Dover Express](%asset_url%pictures/SurnamesN/NorrisFJ.gif "FJ Norris, courtesy Dover Express"){.left}\n\n![](%asset_url%pictures/SurnamesN/NorrisFJannounce.gif){.right}\n\n![insceripton on FJ Norris'' grave, by Michelle and Andy Cooper](%asset_url%pictures/SurnamesN/NorrisFJinscription.gif "insceripton on FJ Norris'' grave, by Michelle and Andy Cooper"){.left}\n\n![FJ Norris, gravestone, by Michelle and Andy Cooper](%asset_url%pictures/SurnamesN/NorrisFJgrave.gif "FJ Norris, gravestone, by Michelle and Andy Cooper"){.right}\n\n![entrance to Feuchy British cemetery, by Michelle and Andy Cooper](%asset_url%pictures/SurnamesN/NorrisFJFeuchy.gif "entrance to Feuchy British cemetery, by Michelle and Andy Cooper"){.left}\n\n![Feuchy British Cemetery, by Michelle and Andy Cooper](%asset_url%pictures/SurnamesN/NorrisFJFeuchy2.gif "Feuchy British Cemetery, by Michelle and Andy Cooper"){.right}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(694, 'H', 'E.', 'Norris', 'Herbert E. Norris, known as Bert, 60491, was a Private in the Royal Fusiliers (City of London Regiment), 9th battalion (formerly in the East Surrey Regiment). He lived in Marylebone and enlisted in London on 14th June 1916, and was killed less than a year later, on 3rd May 1917, three days after his brother, Frank. He is commemorated on the Arras memorial in France.\n\nOther brothers serving were:\n\nR. Norris, who enlisted on 1st December 1916, and was in the Army Ordnance Corps Sapper Fred  Norris, who was a Transport Driver in the Royal Engineers\n\n\n![HE Norris, courtesy Dover Express](%asset_url%pictures/SurnamesN/NorrisBE.gif "HE Norris, courtesy Dover Express"){.left}\n\n![](%asset_url%pictures/SurnamesN/NorrisR.gif){.right}\n\n![](%asset_url%pictures/SurnamesN/NorrisF.gif){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(695, 'L', 'F. F.', 'Nowers', 'Leslie Fred Filer Nowers, M2/202810, was a Private in the RASC, in the 881st Mechanical Transport Company. He was born and lived in Dover, and enlisted in Canterbury. Before enlisting he was in the anti-aircraft corps, and worked for the Dover Motor Company in Castle Street.\n\nHe was 20 when he was reported missing, and later as presumed dead, on 27 June 1917 in the Atlantic Ocean. He is commemorated on the Hollybrook Memorial, Southampton in the United Kingdom, panel 44.  \n\nHe had a sister, Mabel, and was the son of bootmaker Frederick George and Laura D. Nowers, of 30 Frith Rd., Dover and formerly (in 1901) of 3 De Burgh Hill.\n\nAt the foot of the grave, left, are the words, "Everlasting light and peace".\n\nOn their gravestone (left) at Charlton cemetery, Leslie''s name was also inscribed. The headstone reads:  \n\nIn loving Memory of Laura beloved wife of Frederick G. Nowers Died 14th June 1938 Aged 69 Years Also Leslie, Beloved Only Son of  Above Killed in Action 27th June 1917 Aged 20 Years Also of  Frederick George Nowers Died ? April 1949 Aged 89 Years Well Done Thou Good and Faithful Servant\n\nAround the kerbstone is written, "And of their daughter, Mabel Gertrude King, died 30th January 1984, aged 89 years. Dearly loved", and "Also of their son-in-law, Ralph James Oddy King, died 31st October 1951, aged 60 years, whose ashes are interred here"..\n\nThe stone on the grave reads, "Hilary Mabel King, 23 August 1923 - 2 May 2009. Daughter of Mabel and Ralph".\n\n  the inscription at Hollybrook Memorial   with thanks to Andy and Michelle Cooper\n\n\n![](%asset_url%pictures/SurnamesN/NowersLgrave.gif){.left}\n\n![](%asset_url%pictures/SurnamesN/NowersLF.gif){.right}\n\n![Hollybrook memorial, by Michelle and Andy Cooper ](%asset_url%pictures/SurnamesN/NowersHollybrook.gif "Hollybrook memorial, by Michelle and Andy Cooper "){.left}\n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `casualty_relation`
--

CREATE TABLE `casualty_relation` (
  `casualty_id_senior` int(11) NOT NULL,
  `casualty_id_junior` int(11) NOT NULL,
  `relation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `casualty_relation`
--

TRUNCATE TABLE `casualty_relation`;
-- --------------------------------------------------------

--
-- Table structure for table `commemoration_location`
--

CREATE TABLE `commemoration_location` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `narrative` text NOT NULL,
  `location` text,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `commemoration_location`
--

TRUNCATE TABLE `commemoration_location`;
--
-- Dumping data for table `commemoration_location`
--

INSERT INTO `commemoration_location` (`id`, `name`, `narrative`, `location`, `lat`, `lon`) VALUES
(1, 'Dover War Memorial', 'The big one in Dover', NULL, NULL, NULL),
(2, 'Book of Remembrance', 'They were all casualties of World War II.', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `commemoration_location_casualty`
--

CREATE TABLE `commemoration_location_casualty` (
  `casualty_id` int(11) NOT NULL,
  `commemoration_location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `commemoration_location_casualty`
--

TRUNCATE TABLE `commemoration_location_casualty`;
--
-- Dumping data for table `commemoration_location_casualty`
--

INSERT INTO `commemoration_location_casualty` (`casualty_id`, `commemoration_location_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(424, 1),
(425, 1),
(426, 1),
(427, 1),
(428, 1),
(429, 1),
(430, 1),
(431, 1),
(432, 1),
(433, 1),
(434, 1),
(435, 1),
(436, 1),
(437, 1),
(438, 1),
(439, 1),
(440, 1),
(441, 1),
(442, 1),
(443, 1),
(445, 1),
(446, 1),
(447, 1),
(448, 1),
(449, 1),
(450, 1),
(451, 1),
(454, 1),
(455, 1),
(456, 1),
(458, 1),
(459, 1),
(460, 1),
(461, 1),
(462, 1),
(463, 1),
(464, 1),
(465, 1),
(466, 1),
(467, 1),
(468, 1),
(469, 1),
(470, 1),
(471, 1),
(472, 1),
(473, 1),
(474, 1),
(475, 1),
(476, 1),
(477, 1),
(478, 1),
(479, 1),
(480, 1),
(481, 1),
(482, 1),
(483, 1),
(484, 1),
(485, 1),
(486, 1),
(487, 1),
(488, 1),
(489, 1),
(490, 1),
(491, 1),
(492, 1),
(493, 1),
(494, 1),
(495, 1),
(496, 1),
(497, 1),
(498, 1),
(499, 1),
(500, 1),
(501, 1),
(502, 1),
(503, 1),
(504, 1),
(505, 1),
(506, 1),
(507, 1),
(508, 1),
(509, 1),
(510, 1),
(511, 1),
(512, 1),
(513, 1),
(514, 1),
(515, 1),
(516, 1),
(517, 1),
(518, 1),
(519, 1),
(520, 1),
(521, 1),
(522, 1),
(523, 1),
(524, 1),
(525, 1),
(526, 1),
(527, 1),
(528, 1),
(529, 1),
(530, 1),
(531, 1),
(532, 1),
(533, 1),
(534, 1),
(535, 1),
(536, 1),
(537, 1),
(538, 1),
(539, 1),
(540, 1),
(541, 1),
(542, 1),
(543, 1),
(544, 1),
(545, 1),
(546, 1),
(547, 1),
(548, 1),
(549, 1),
(550, 1),
(551, 1),
(552, 1),
(553, 1),
(554, 1),
(555, 1),
(556, 1),
(557, 1),
(558, 1),
(559, 1),
(560, 1),
(561, 1),
(562, 1),
(563, 1),
(564, 1),
(565, 1),
(566, 1),
(567, 1),
(568, 1),
(569, 1),
(570, 1),
(571, 1),
(572, 1),
(573, 1),
(574, 1),
(575, 1),
(576, 1),
(577, 1),
(578, 1),
(579, 1),
(580, 1),
(581, 1),
(582, 1),
(583, 1),
(584, 1),
(585, 1),
(586, 1),
(587, 1),
(588, 1),
(589, 1),
(590, 1),
(591, 1),
(592, 1),
(593, 1),
(594, 1),
(595, 1),
(596, 1),
(597, 1),
(598, 1),
(599, 1),
(600, 1),
(601, 1),
(602, 1),
(603, 1),
(604, 1),
(605, 1),
(606, 1),
(607, 1),
(608, 1),
(609, 1),
(610, 1),
(611, 1),
(612, 1),
(613, 1),
(614, 1),
(615, 1),
(616, 1),
(617, 1),
(618, 1),
(619, 1),
(620, 1),
(621, 1),
(622, 1),
(623, 1),
(624, 1),
(625, 1),
(626, 1),
(627, 1),
(628, 1),
(629, 1),
(630, 1),
(631, 1),
(632, 1),
(633, 1),
(634, 1),
(635, 1),
(636, 1),
(637, 1),
(638, 1),
(639, 1),
(640, 1),
(641, 1),
(642, 1),
(643, 1),
(644, 1),
(645, 1),
(646, 1),
(647, 1),
(648, 1),
(649, 1),
(650, 1),
(651, 1),
(652, 1),
(653, 1),
(654, 1),
(655, 1),
(656, 1),
(657, 1),
(658, 1),
(659, 1),
(660, 1),
(661, 1),
(662, 1),
(663, 1),
(664, 1),
(665, 1),
(666, 1),
(667, 1),
(668, 1),
(669, 1),
(670, 1),
(671, 1),
(672, 1),
(673, 1),
(674, 1),
(675, 1),
(676, 1),
(677, 1),
(678, 1),
(679, 1),
(680, 1),
(681, 1),
(682, 1),
(683, 1),
(684, 1),
(685, 1),
(686, 1),
(687, 1),
(688, 1),
(689, 1),
(690, 1),
(691, 1),
(692, 1),
(693, 1),
(694, 1),
(695, 1);

-- --------------------------------------------------------

--
-- Table structure for table `meta`
--

CREATE TABLE `meta` (
  `id` varchar(255) NOT NULL,
  `title` text,
  `content` text NOT NULL,
  `whereUsed` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `meta`
--

TRUNCATE TABLE `meta`;
--
-- Dumping data for table `meta`
--

INSERT INTO `meta` (`id`, `title`, `content`, `whereUsed`) VALUES
('contactUs', 'Contact Us', 'Please contact us', 'For the Contact Us page'),
('home', 'Welcome', 'Home page goes ***here***', 'On the home page'),
('infoIndex', 'Information Index Blurb', 'List of articles', 'On the Information Index'),
('markdown', 'Markdown Help', 'This is the markdown help page.', 'On the markdown Help pages'),
('metaList', 'Meta List Blurb', 'This is a list of all the meta pages on the site. Some may be standalone pages (e.g. the home page), while others might power sections of text on lists (like this one).', 'On the meta list page');

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE `picture` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `alt` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `picture`
--

TRUNCATE TABLE `picture`;
--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`id`, `filename`, `alt`) VALUES
(7, 'SurnamesO/OliverCFTyneCot.gif', ''),
(8, 'SurnamesO/OliverC.gif', 'by Joyce Banks'),
(9, 'SurnamesO/OsborneAGhouse.gif', 'AG Osbourne, house, by Simon Chambers'),
(46, '%asset_url%pictures/SurnamesO/OliverCFTyneCot.gif', ''),
(47, '%asset_url%pictures/SurnamesO/OliverC.gif', 'by Joyce Banks'),
(48, '%asset_url%pictures/SurnamesO/OsborneAGhouse.gif', 'AG Osbourne, house, by Simon Chambers'),
(52, '%asset_url%pictures/SurnamesP/PalmerGTposs.gif', 'believed to be G Palmer'),
(53, '%asset_url%pictures/SurnamesP/Palmer-button.gif', ''),
(54, '%asset_url%pictures/SurnamesP/Palmer-tag.gif', 'dog tag'),
(55, '%asset_url%pictures/SurnamesP/PalmerGT.gif', ''),
(56, '%asset_url%pictures/SurnamesP/Palmerannounce.gif', ''),
(57, '%asset_url%pictures/SurnamesP/PalmerWJ.gif', ''),
(58, '%asset_url%pictures/SurnamesP/PalmerSJAMenin.gif', 'SJA Palmer, Menin Gate, by Andy and Michelle Cooper'),
(59, '%asset_url%pictures/SurnamesP/PalmerSJAand-box.gif', 'Stephen Palmer and box, courtesy Dover Express'),
(60, '%asset_url%pictures/SurnamesP/PalmerSJposs.gif', ''),
(61, '%asset_url%pictures/SurnamesP/PalmerSJ.gif', ''),
(62, '%asset_url%pictures/SurnamesP/ParkerAG.gif', 'AG Parker, courtesy Dover Express '),
(63, '%asset_url%pictures/SurnamesP/PattisonESheadstone.gif', 'E S Pattison, headstone, by Simon Chambers'),
(64, '%asset_url%pictures/SurnamesP/PearceGT.gif', ''),
(65, '%asset_url%pictures/SurnamesP/PerryAyscoughMenincrowd.gif', 'gathering for the Last Post ceremony at the Menin Gate, by Michael Webb '),
(66, '%asset_url%pictures/SurnamesP/PetticrewAThiepval.gif', 'A Petticrew, on the Thiepval memorial, by Andy and Michelle CooperS'),
(67, '%asset_url%pictures/SurnamesP/PhippsC-grave.gif', ''),
(68, '%asset_url%pictures/SurnamesP/PhippsCnotice.gif', 'Who stands if freedom falls, who dies if England lives? notice from father, courtesy Dover Express '),
(172, '%asset_url%pictures/SurnamesP/PhippsCThiepval.gif', 'C Phipps on Thiepval memorial, by Michelle and Andy Cooper'),
(173, '%asset_url%pictures/SurnamesP/PhippsFEgrave.gif', 'FE Phipps gravestone, by Andy and Michelle Cooper'),
(174, '%asset_url%pictures/SurnamesP/PhippsFEStSever.gif', 'FE Phipps, view of St Sever, by Michelle and Andy Cooper'),
(175, '%asset_url%pictures/SurnamesP/PhippsJW.gif', ''),
(176, '%asset_url%pictures/SurnamesP/Piddingtongrave.gif', ''),
(177, '%asset_url%pictures/SurnamesP/PiddingtonWTnot1.gif', 'In memoriam notice, from Mrs Piddington, courtesy Dover Express'),
(178, '%asset_url%pictures/SurnamesP/PiddingtonWTnot2.gif', 'In Memoriam from r Piddington''s daughters, courtesy Dover Express'),
(284, '%asset_url%pictures/SurnamesP/PierceACHheadstone.gif', 'ACH Pierce, headstone, by Simon Chambers'),
(285, '%asset_url%pictures/SurnamesP/PierceAE.gif', 'A E Pierce, courtesy Dover Express'),
(316, '%asset_url%pictures/SurnamesPigg/PiggottH.gif', 'H Piggott'),
(317, '%asset_url%pictures/SurnamesPigg/PiggottHcross.gif', 'cross on Harry''s grave'),
(318, '%asset_url%pictures/SurnamesPigg/PiggottHmourning.gif', 'mourning card'),
(319, '%asset_url%pictures/SurnamesPigg/PiggottHannounce17.gif', 'in memoriam verse from family, courtesy Dover Express'),
(320, '%asset_url%pictures/SurnamesPigg/PiggottHannounce172.gif', 'ionn memoriam verse from sweetheart Edith, courtesy Dvoer Express'),
(321, '%asset_url%pictures/SurnamesPigg/PiggottH-g.gif', 'George Piggott'),
(322, '%asset_url%pictures/SurnamesPigg/PilcherGgrave.gif', ''),
(323, '%asset_url%pictures/SurnamesPigg/PodevinGSheadstone1.gif', 'headstone, by Joyce Banks'),
(324, '%asset_url%pictures/SurnamesPigg/PortAGAchille.gif', 'names on the Tower Hill Memorial, by Simon Chambers'),
(325, '%asset_url%pictures/SurnamesPigg/PortAG-penny.gif', ''),
(326, '%asset_url%pictures/SurnamesPigg/Port-scroll.gif', ''),
(327, '%asset_url%pictures/SurnamesPigg/PortCW.gif', 'CW Port, courtesy Dover Express'),
(328, '%asset_url%pictures/SurnamesPigg/PortAsnr.gif', 'Albert Port, father, courtesy Dover Express'),
(329, '%asset_url%pictures/SurnamesPigg/PortA.gif', 'Albert Port, son, courtesy Dover Express'),
(330, '%asset_url%pictures/SurnamesPigg/PortP.gif', 'P Port, courtesy Dover Express'),
(331, '%asset_url%pictures/SurnamesPigg/PortE.gif', 'E Port, courtesy Dover Express'),
(332, '%asset_url%pictures/SurnamesPigg/PottDRB.gif', 'R Pott, D Pott, and father, courtesy Dover Express'),
(333, '%asset_url%pictures/SurnamesPigg/PotterMW.gif', 'MW Potter, courtesy Dover Express'),
(334, '%asset_url%pictures/SurnamesPigg/PotterMWgrave.gif', 'MW Potter, grave at St James, by Simon Chambers'),
(335, '%asset_url%pictures/SurnamesPigg/Powell-RG-stone.gif', 'R G Powell, headstone, by Edward Sperinck'),
(336, '%asset_url%pictures/SurnamesPigg/Powell-RG-Jerusalem.gif', 'Jerusalem War Cemetery by Edward Sperinck'),
(337, '%asset_url%pictures/SurnamesPigg/PrescottRH.gif', 'RH Prescott, on Thiepval, by Andy and Michelle Cooper'),
(338, '%asset_url%pictures/SurnamesPigg/Prescott-wedding.gif', ''),
(339, '%asset_url%pictures/SurnamesPigg/PriestA.gif', 'A Priest, courtesy Dover Express'),
(340, '%asset_url%pictures/SurnamesPigg/PriestAmenin.gif', 'A priest, on Menin Gate, by Andy and Michelle Cooper'),
(341, '%asset_url%pictures/SurnamesPigg/PriestAlfredgrave.gif', ''),
(342, '%asset_url%pictures/SurnamesPigg/Purser1919.gif', ''),
(343, '%asset_url%pictures/SurnamesR/ReaderPS.gif', 'PS Reader, courtesy Dover Express'),
(344, '%asset_url%pictures/SurnamesR/ReaderRE.gif', 'RE Reader, courtesy Dover Express'),
(345, '%asset_url%pictures/SurnamesR/RedgateGWgrave.gif', 'G W Redgate, grave, by Simon Chambers'),
(346, '%asset_url%pictures/SurnamesR/ReevesE.gif', 'E Reeves, courtesy Dover Express'),
(347, '%asset_url%pictures/SurnamesR/ReidAVgrave.gif', 'AV Reid gravestone, by Andy and Michelle Cooper'),
(348, '%asset_url%pictures/SurnamesR/RichardsonRJ-stone.gif', 'headstone, Michelle and Andy Cooper'),
(349, '%asset_url%pictures/SurnamesR/Richardson-Cairo.gif', 'Cairo cemetery, Andy and Michelle Cooper'),
(350, '%asset_url%pictures/SurnamesR/RichardsonWA.gif', 'W A Richardson, courtesy Dover Express'),
(351, '%asset_url%pictures/SurnamesR/RigdenG.gif', 'George Rigden. courtesy Dover Express'),
(352, '%asset_url%pictures/SurnamesR/RigdenGinhospital.gif', 'George Rigden in hospital, courtesy Dover Express'),
(353, '%asset_url%pictures/SurnamesR/RigdenGgravestone.gif', 'set 2186'),
(354, '%asset_url%pictures/SurnamesR/RigdenGannoucne1939.gif', 'G Rigden, announcement, courtesy Dover Express'),
(355, '%asset_url%pictures/SurnamesR/RobinsonHP.gif', ''),
(356, '%asset_url%pictures/SurnamesR/RogersG.gif', 'G Rogers, courtesy Dover Express'),
(357, '%asset_url%pictures/SurnamesR/RouseAC.gif', ''),
(358, '%asset_url%pictures/SurnamesR/RussellH.gif', 'H Russell, courtesy Dover Epxress'),
(359, '%asset_url%pictures/SurnamesS/SabeyF.gif', 'F Sabey, courtesy Dover Express'),
(360, '%asset_url%pictures/SurnamesS/SaitT.gif', 'T Sait, courtesy Dover Express'),
(361, '%asset_url%pictures/SurnamesS/SaitC.gif', 'C Sait, courtesy Dover Express'),
(362, '%asset_url%pictures/SurnamesS/SaitA.gif', 'A Sait, courtesy Dover Express'),
(363, '%asset_url%pictures/SurnamesS/SaitF.gif', 'F Sait, courtesy Dover Express'),
(364, '%asset_url%pictures/SurnamesS/SaitT2.gif', 'T Sait, courtesy Dover Express'),
(365, '%asset_url%pictures/SurnamesS/SamwaysAH.gif', 'AH Samways, courtesy Dover Express'),
(366, '%asset_url%pictures/SurnamesS/SandhamLH.gif', 'LH Sandham, courtesy Dover Express'),
(367, '%asset_url%pictures/SurnamesS/SaundersGhouse.gif', 'G Saunders house, by Simon Chambers'),
(368, '%asset_url%pictures/SurnamesS/SaundersG.gif', ''),
(369, '%asset_url%pictures/SurnamesS/SaundersGannounce17.gif', 'in memoriam announcement for brother from Alfred and Molly, courtesy Dover Express'),
(370, '%asset_url%pictures/SurnamesS/SaundersJB1.gif', 'courtesy Daphne Ashby'),
(371, '%asset_url%pictures/SurnamesS/SaundersW.gif', 'W Saunders, courtesy Dover Express'),
(372, '%asset_url%pictures/SurnamesS/SavageF.gif', 'F Savage, courtesy Dover Express'),
(373, '%asset_url%pictures/SurnamesS/ScarlettWE.gif', 'WE Scarlett, courtesy Dover Express'),
(374, '%asset_url%pictures/SurnamesS/ScarlettHG.gif', 'HG Scarlett, courtesy Dover Express'),
(375, '%asset_url%pictures/SurnamesS/Scarlett-five-bells.gif', 'Five Bells pub'),
(376, '%asset_url%pictures/SurnamesS/ScottGEDstone.gif', 'GED Scott, gravestone, by Joyce Banks'),
(377, '%asset_url%pictures/SurnamesS/sedgwickG.gif', 'Georgina Sedgwick, courtesy Brian Sedgwick'),
(378, '%asset_url%pictures/SurnamesS/SedgwickEgravestone.gif', 'E Sedgwick and W Sedgwick gravestone, by Simon Chambers'),
(379, '%asset_url%pictures/SurnamesS/SedgwickF-stone.gif', ''),
(380, '%asset_url%pictures/SurnamesS/SergeantFWBTyneCot.gif', ''),
(381, '%asset_url%pictures/SurnamesS/SharpESH.gif', 'E S H Sharp, courtesy Dover Express'),
(382, '%asset_url%pictures/SurnamesS/SharpESH2.gif', ''),
(383, '%asset_url%pictures/SurnamesS/SharpAG.gif', ''),
(384, '%asset_url%pictures/SurnamesS/SharpF.gif', ''),
(385, '%asset_url%pictures/SurnamesS/SharpWT.gif', ''),
(386, '%asset_url%pictures/SurnamesS/Sharpfamily.gif', 'the family, courtesy Daniel Collard'),
(387, '%asset_url%pictures/SurnamesS/Sharpthree.gif', ''),
(388, '%asset_url%pictures/SurnamesS/SheppardFAS.gif', 'FAS Sheppard, courtesy Dover Express'),
(389, '%asset_url%pictures/SurnamesShe/ShillitoWHphoto.gif', 'W H Shillito, courtesy Dover Express'),
(390, '%asset_url%pictures/SurnamesShe/ShillitoWHArras.gif', 'WH Shillito name on Arras, by Andy and Michelle Cooper'),
(391, '%asset_url%pictures/SurnamesShe/ShillitoWH.gif', 'Shillito announcement, courtesy Dover Express'),
(392, '%asset_url%pictures/SurnamesShe/SiddersHF.gif', 'H F Sidders, courtesy Dover Express'),
(393, '%asset_url%pictures/SurnamesShe/SiddersJ.gif', 'J Sidders, courtesy Dover Express'),
(394, '%asset_url%pictures/SurnamesShe/SimmonsJhouse.gif', 'Mrs Simmons house, by Simon Chambers'),
(395, '%asset_url%pictures/SurnamesShe/SimmonsJgravestone.gif', 'J Simmons gravestone, by Simon Chambers (under very difficult conditions)'),
(396, '%asset_url%pictures/SurnamesShe/SmithA.gif', 'A Smith, courtesy Dover Express'),
(397, '%asset_url%pictures/SurnamesShe/SmithGAgrave.gif', 'GA Smith, grave at Etaples, by Simon Chambers'),
(398, '%asset_url%pictures/SurnamesShe/SmithJ.gif', 'J Smith, courtesy Dover Express'),
(399, '%asset_url%pictures/SurnamesShe/SmithTJ.gif', 'TJ Smith, courtesy Dover Express'),
(400, '%asset_url%pictures/SurnamesShe/SmithTJcert.gif', '"He whom this scroll commmerates ...", courtesy Lorraine Amos'),
(401, '%asset_url%pictures/SurnamesShe/SmithTJannounce.gif', 'verse from death announcement, courtesy Dover Express'),
(402, '%asset_url%pictures/SurnamesShe/SmithEM.gif', 'Edward Smith, wearing glasses, courtesy Lorraine Amos'),
(403, '%asset_url%pictures/SurnamesShe/SmithTJparentsstone.gif', 'Peer and Susannah Smith''s gravestone, courtesy Lorraine Amos'),
(404, '%asset_url%pictures/SurnamesShe/SmithWT.gif', ''),
(405, '%asset_url%pictures/SurnamesShe/Snelling-A.gif', 'Albert Snelling, courtesy Mick Diston'),
(406, '%asset_url%pictures/SurnamesShe/Snelling-A-cu.gif', 'A Snelling, close up, courtesy Mike Diston'),
(407, '%asset_url%pictures/SurnamesShe/SoleEW.gif', 'E W Sole, courtesy Dover Express'),
(408, '%asset_url%pictures/SurnamesShe/SoleH.gif', 'H Sole, courtesy Dover Express'),
(409, '%asset_url%pictures/SurnamesShe/SoleHannouncement.gif', 'announcement, courtesy Dover Express'),
(410, '%asset_url%pictures/SurnamesShe/SoleHgravestone.gif', 'H Sole gravestone, by Simon Chambers'),
(411, '%asset_url%pictures/SurnamesShe/SoleHgraveincemetery.gif', ''),
(412, '%asset_url%pictures/SurnamesShe/SoleWHD.gif', 'WHD Sole, courtesy Dover Express'),
(413, '%asset_url%pictures/SurnamesShe/SoleWHD2.gif', ''),
(414, '%asset_url%pictures/SurnamesShe/SoleWHDback.gif', ''),
(415, '%asset_url%pictures/SurnamesShe/SoleWplaque.gif', ''),
(416, '%asset_url%pictures/SurnamesShe/SouthenWR.gif', ''),
(417, '%asset_url%pictures/SurnamesShe/SpainAgravestone.gif', 'A Spain, gravestone, by Simon Chambers'),
(418, '%asset_url%pictures/SurnamesShe/SpendiffWG.gif', 'WG Spendiff, courtesy Dover Express'),
(419, '%asset_url%pictures/SurnamesShe/SpendiffWSGgravestone.gif', 'WSG Spendiff, gravetson, by Simon Chambers'),
(420, '%asset_url%pictures/SurnamesShe/SpendiffWSG.gif', 'WSG Spendiff, courtesy Dover Express'),
(421, '%asset_url%pictures/SurnamesShe/Spinnerhouse.gif', '8 Springfield Road, by Simon Chambers'),
(422, '%asset_url%pictures/SurnamesShe/SpinnerWGstone.gif', 'headstone, by Joyce Banks'),
(423, '%asset_url%pictures/SurnamesSt/StathamHKL.gif', 'HKL Statham, courtesy Dierdre Freethy'),
(424, '%asset_url%pictures/SurnamesSt/StevensAR.gif', 'R Stevens, courtesy Dover Express'),
(425, '%asset_url%pictures/SurnamesSt/StevensEP.gif', 'EP Stevens, courtesy Dover Express'),
(426, '%asset_url%pictures/SurnamesSt/StevensH.gif', 'StevensH, courtesy Dover Express'),
(427, '%asset_url%pictures/SurnamesSt/StitsonF.gif', 'F Stitson, courtesy Dover Express'),
(428, '%asset_url%pictures/SurnamesSt/StokesC.gif', 'C Stokes, courtesy Dover Express'),
(429, '%asset_url%pictures/SurnamesSt/StokesHCannounce.gif', 'In Memoriam announcement, courtesy Dover Express'),
(430, '%asset_url%pictures/SurnamesSt/StokesFJ2.gif', 'F J Stokes, courtesy Dover Express'),
(431, '%asset_url%pictures/SurnamesSt/StokesHgrave.gif', 'H Stokes gravestone, by Andy and Michelle Cooper'),
(432, '%asset_url%pictures/SurnamesSt/StokesH.gif', 'H Stokes, courtesy Dover Express'),
(433, '%asset_url%pictures/SurnamesSt/StokesL.gif', 'L Stokes, courtesy Dover Express '),
(434, '%asset_url%pictures/SurnamesSt/StrandHF.gif', 'HF Strand, courtesy Dover Express'),
(435, '%asset_url%pictures/SurnamesSt/StreatCyril.gif', ''),
(436, '%asset_url%pictures/SurnamesSt/StreatWsnr.gif', ''),
(437, '%asset_url%pictures/SurnamesSt/StreatW.gif', ''),
(438, '%asset_url%pictures/SurnamesSt/StreatC.gif', ''),
(439, '%asset_url%pictures/SurnamesSt/Streatstone.gif', ''),
(440, '%asset_url%pictures/SurnamesSt/StubbsWC.gif', 'WC Stubbs, courtesy Dover Express'),
(441, '%asset_url%pictures/SurnamesSt/SumnerDC.gif', 'DC Sumner, courtesy Dover Express'),
(442, '%asset_url%pictures/SurnamesSt/SumnerDC2.gif', 'DC Sumner, courtesy Dover Express'),
(443, '%asset_url%pictures/SurnamesSt/SwabyC.gif', 'C Swaby, courtesy Dover Express'),
(444, '%asset_url%pictures/SurnamesSt/SymesPB.gif', 'P B Symes, courtesy Dover Express'),
(445, '%asset_url%pictures/SurnamesT/TaylorJ.gif', 'J Taylor, courtesy Dover Express'),
(446, '%asset_url%pictures/SurnamesT/TaylorJThiepvalmon.gif', 'Thiepval, by Andy and Michelle Cooper'),
(447, '%asset_url%pictures/SurnamesT/TaylorJthiepval.gif', 'J Taylor name at Thiepval, by Michelle and Andy Cooper'),
(448, '%asset_url%pictures/SurnamesT/TaylorJ-percy.gif', 'Percy in the Home Guard, courtesy Therasa Dowsett'),
(449, '%asset_url%pictures/SurnamesT/TaylorJ-percy-2.gif', 'cu Percy, courtesy Teheras Dowsett'),
(450, '%asset_url%pictures/SurnamesT/TerryH.gif', 'Harry Terry, courtesy Craig Terry'),
(451, '%asset_url%pictures/SurnamesT/Terry-H-Blanche.gif', 'Blanche Terry, courtesy Craig Terry'),
(452, '%asset_url%pictures/SurnamesT/Terry-H-family.gif', 'George Terry with young Harry, courtesy Craig Terry'),
(453, '%asset_url%pictures/SurnamesT/TerryHmourning.gif', 'mourning card - "In loving memory of my dearly loved husband, Harry Terry, who lost his life by the sinking of HMS Aboukir in the North Sea on the 22nd September 1914, aged 30 years. "Thy Will be Done"", courtesy Craig Terry'),
(454, '%asset_url%pictures/SurnamesT/TerryH-postcard.gif', 'back of postcard of Aboukir, courtesy Craig Terry'),
(455, '%asset_url%pictures/SurnamesT/TerryAboukir.gif', 'postcard of Aboukir, courtesy Craig Terry'),
(456, '%asset_url%pictures/SurnamesT/TerrySJmenin.gif', 'S Terry, name on Menin Gate, by Michelle and Andy Cooper'),
(457, '%asset_url%pictures/SurnamesT/TerryP.gif', 'Percy Terry, coutesy Dover Express'),
(458, '%asset_url%pictures/SurnamesT/TerrySJinmem.gif', 'In memoriam announcement, courtesy Dover Express'),
(459, '%asset_url%pictures/SurnamesT/TesterAE.gif', 'AE Tester, courtesy Dover Express'),
(460, '%asset_url%pictures/SurnamesT/TesterAEfamily.gif', 'A E Tester, family, by courtesy John Tester'),
(461, '%asset_url%pictures/SurnamesT/Tester-Fricourt.gif', 'postcard, courtesy John Tester'),
(462, '%asset_url%pictures/SurnamesT/TesterAEstone.gif', 'gravestone, by Joyce Banks'),
(463, '%asset_url%pictures/SurnamesT/TesterAEgrave.gif', ''),
(464, '%asset_url%pictures/SurnamesT/Tester-congrats.gif', 'handwritten message, courtesy John Tester'),
(465, '%asset_url%pictures/SurnamesT/ThompsonFC.gif', 'FC Thompson, courtesy Dover Express'),
(466, '%asset_url%pictures/SurnamesT/ThompsonSA.gif', 'S A Thompson, courtesy Dover Express'),
(467, '%asset_url%pictures/SurnamesT/ThompsonSAannouncewife.gif', 'announcement from Mrs Thompson of death, courtesy Dover Express'),
(468, '%asset_url%pictures/SurnamesT/ThompsonSAannouncefamily.gif', ''),
(469, '%asset_url%pictures/SurnamesT/ThompsonSAinmem41.gif', 'in memoriam, courtesy Dover Express'),
(470, '%asset_url%pictures/SurnamesT/Thurley-Portsmouth.gif', 'Portsmouth by DeanSumner'),
(471, '%asset_url%pictures/SurnamesT/TierneyM.gif', 'M Tierney, courtesy Dover Express'),
(472, '%asset_url%pictures/SurnamesT/Todd-EGstone.gif', 'headstone by Joyce Banks'),
(473, '%asset_url%pictures/SurnamesT/TuckerHB.gif', 'H Tucker, courtesy Dover Express'),
(474, '%asset_url%pictures/SurnamesT/TullWDJArrras.gif', 'WDJ Tull, on Arras memorial, by Andy and Michelle Cooper'),
(475, '%asset_url%pictures/SurnamesU/UptonSbell.gif', 'Bell Inn at night, Shepherdswell, by Simon Chambers'),
(476, '%asset_url%pictures/SurnamesU/UptonL.gif', ''),
(477, '%asset_url%pictures/SurnamesU/UptonLcu.gif', 'Louis Upton, courtesy Bernice Bartlett'),
(478, '%asset_url%pictures/SurnamesU/UptonLbrotherWilliam.gif', 'William and daughter, 1939, courtesy Bernice Bartlett'),
(479, '%asset_url%pictures/SurnamesU/UsherwoodHC.gif', 'HC Usherwood, by Michelle and Andy Cooper'),
(480, '%asset_url%pictures/SurnamesU/UsherwoodHCGuillemont.gif', 'Guillemont cemetery entrance, by Michelle and Andy Cooper'),
(481, '%asset_url%pictures/SurnamesU/UsherwoodHCannounce.gif', 'death annoucement, courtesy Dover Express'),
(482, '%asset_url%pictures/SurnamesV/Vale-TW.gif', 'grave by Joyce Banks'),
(483, '%asset_url%pictures/SurnamesV/CressyVanson.gif', ''),
(484, '%asset_url%pictures/SurnamesV/VidlerA.gif', 'A Vidler, courtesy Dover Express'),
(485, '%asset_url%pictures/SurnamesV/VidlerA2.gif', 'A Vidler, courtesy Dover Express'),
(486, '%asset_url%pictures/SurnamesV/VidlerAmemoriam16.gif', 'in memoriam, courtesy Dover Express'),
(487, '%asset_url%pictures/SurnamesV/VidlerAmenin.gif', 'A Vidler on Menin Gate, by Michelle and Andy Cooper'),
(488, '%asset_url%pictures/SurnamesW/WaightHR.gif', 'JH Waight, courtesy Dover Express'),
(489, '%asset_url%pictures/SurnamesW/WallTWgravestone.gif', 'TW Wall gravestone at Charlton, by Simon Chambers'),
(490, '%asset_url%pictures/SurnamesW/Walter-EJ-and-sons.gif', 'E J Walter and sons, with thanks'),
(491, '%asset_url%pictures/SurnamesW/WalterEJ2.gif', 'E J Walter, detail'),
(492, '%asset_url%pictures/SurnamesW/WalterEJ.gif', 'EJ Walter, courtesy Dover Express'),
(493, '%asset_url%pictures/SurnamesW/WatersW.gif', 'W Waters, by courtesy of Dover Express '),
(494, '%asset_url%pictures/SurnamesW/WatsonRC.gif', 'RC Watson, courtesy Dover Express, 29.6.17'),
(495, '%asset_url%pictures/SurnamesW/WatsonRCwreath37a.gif', ''),
(496, '%asset_url%pictures/SurnamesW/WatsonRCwreath37b.gif', ''),
(497, '%asset_url%pictures/SurnamesW/WattsAHandWEA.gif', 'Arthur and Walter Watts , courtesy Dover Express'),
(498, '%asset_url%pictures/SurnamesW/Wattsannoun42.gif', 'in memoriam, courtesy Dover Express'),
(499, '%asset_url%pictures/SurnamesW/WellardGJ.gif', 'GJ Wellard, courtesy Dover Express'),
(500, '%asset_url%pictures/SurnamesW/WellsAJ.gif', 'AJ Wells, courtesy Dover Express'),
(501, '%asset_url%pictures/SurnamesW/WellsS.gif', 'S Wells, courtesy Dover Express'),
(502, '%asset_url%pictures/SurnamesW/WellsA-e.gif', 'gravestone, Joyce Banks'),
(503, '%asset_url%pictures/SurnamesW/WellsE.gif', 'E Wells grave stone, by Simon Chambers '),
(504, '%asset_url%pictures/SurnamesW/WickesT.gif', 'T wickes, courtesy Mr Morris'),
(505, '%asset_url%pictures/SurnamesW/WickesT2.gif', 'T Wickes, courtesy Dover Express'),
(506, '%asset_url%pictures/SurnamesW/WickhamCE.gif', 'CE Wickham, courtesy Dover Express  '),
(507, '%asset_url%pictures/SurnamesW/WickhamCannounce2.gif', ''),
(508, '%asset_url%pictures/SurnamesW/WickhamCannounce1.gif', ''),
(509, '%asset_url%pictures/SurnamesW/WickhamCannounce3.gif', ''),
(510, '%asset_url%pictures/SurnamesW/WickhamF2.gif', 'F Wickham, courtesy Dover Express'),
(511, '%asset_url%pictures/SurnamesW/WickhamF.gif', 'F Wickham grave stone, by Andy and Michelle Cooper'),
(512, '%asset_url%pictures/SurnamesW/WickhamFannounce.gif', ''),
(513, '%asset_url%pictures/SurnamesW/WickhamW.gif', 'W Wickham, courtesy Dover Express'),
(514, '%asset_url%pictures/SurnamesWicks/WilliamsWH.gif', 'WH Williams, courtesy Dover Express'),
(515, '%asset_url%pictures/SurnamesWicks/WilliamsWSSannounce.gif', 'WSS Williams announce, courtesy Dover Express'),
(516, '%asset_url%pictures/SurnamesWicks/WillisA.gif', 'A Willis, courtesy Dover Express'),
(517, '%asset_url%pictures/SurnamesWicks/WillsACannounce.gif', ''),
(518, '%asset_url%pictures/SurnamesWicks/WillshireCE.gif', 'CE Wilshire, courtesy Dover Express'),
(519, '%asset_url%pictures/SurnamesWicks/WillshireCEThiepvalmon.gif', 'Thiepval, by Reg and Jenny Crascall'),
(520, '%asset_url%pictures/SurnamesWicks/WillshireCEThiepval.gif', 'CE Wilshire, on Thiepval, by Andy and Michelle Cooper'),
(521, '%asset_url%pictures/SurnamesWicks/WilsonHP.gif', 'HP Wilson, courtesy Dover Express'),
(522, '%asset_url%pictures/SurnamesWicks/WinkworthEJstone.gif', 'headstone, by Joyce Banks'),
(523, '%asset_url%pictures/SurnamesWicks/Wise-J.gif', 'by Dean Sumner'),
(524, '%asset_url%pictures/SurnamesWicks/Wise-JFlirt.gif', 'HMS Flirt, Wikimedia Commons'),
(525, '%asset_url%pictures/SurnamesWicks/WoodCEgrave.gif', 'CE Wood, grave, by Simon Chambers'),
(526, '%asset_url%pictures/SurnamesWicks/WoodCEhouse.gif', 'CE Wood, home, by Simon Chambers'),
(527, '%asset_url%pictures/SurnamesWicks/WoodCECharltonAvenue.gif', 'Churchill Avenue, by Simon Chambers'),
(528, '%asset_url%pictures/SurnamesWicks/WoodW.gif', 'W Wood, courtesy Dover Express '),
(529, '%asset_url%pictures/SurnamesWicks/WoodWannounce2.gif', 'announce W Wood, courtesy Dover Express'),
(530, '%asset_url%pictures/SurnamesWicks/WoodWannounce.gif', 'announce W Wood, courtesy Dover Express'),
(531, '%asset_url%pictures/SurnamesWicks/Wyborn-Newhaven.gif', 'Memorial at Newhaven, by John Harrison'),
(532, '%asset_url%pictures/SurnamesWicks/Wyborn-Newhaven2.gif', 'panel from Memorial at Newhaven, by John Harrison '),
(533, '%asset_url%pictures/SurnamesWicks/WynneM.gif', 'Maurice Wynne, by courtesy of Susan Avery'),
(534, '%asset_url%pictures/SurnamesWicks/WynneMStC.gif', 'M StC Wynne, courtesy Dover Express'),
(535, '%asset_url%pictures/SurnamesY/YoungJgrave.gif', ''),
(536, '%asset_url%pictures/SurnamesY/YoungJhouse.gif', 'J Young, house, by Simon Chambers'),
(537, '%asset_url%pictures/SurnamesN/NashAJ.gif', 'AJ Nash, courtesy Dover Express'),
(538, '%asset_url%pictures/SurnamesN/NewlandF.gif', 'F Newland, courtesy Dover Express'),
(539, '%asset_url%pictures/SurnamesN/NewlandFinmemoriam.gif', 'in memoriam annoucement, courtesy Dover Express'),
(540, '%asset_url%pictures/SurnamesN/NewmanJW.gif', 'JW Newman, courtesy Dover Express'),
(541, '%asset_url%pictures/SurnamesN/NewmanPC.gif', 'PC Newman, courtesy Dover Express'),
(542, '%asset_url%pictures/SurnamesN/NewmanPCArras.gif', 'PC Newman, Arras memorial, by Michelle and Andy Cooper'),
(543, '%asset_url%pictures/SurnamesN/Nimmo-Grout-grave.gif', ''),
(544, '%asset_url%pictures/SurnamesN/NorrisFJ.gif', 'FJ Norris, courtesy Dover Express'),
(545, '%asset_url%pictures/SurnamesN/NorrisFJannounce.gif', ''),
(546, '%asset_url%pictures/SurnamesN/NorrisFJinscription.gif', 'insceripton on FJ Norris'' grave, by Michelle and Andy Cooper'),
(547, '%asset_url%pictures/SurnamesN/NorrisFJgrave.gif', 'FJ Norris, gravestone, by Michelle and Andy Cooper'),
(548, '%asset_url%pictures/SurnamesN/NorrisFJFeuchy.gif', 'entrance to Feuchy British cemetery, by Michelle and Andy Cooper'),
(549, '%asset_url%pictures/SurnamesN/NorrisFJFeuchy2.gif', 'Feuchy British Cemetery, by Michelle and Andy Cooper'),
(550, '%asset_url%pictures/SurnamesN/NorrisBE.gif', 'HE Norris, courtesy Dover Express'),
(551, '%asset_url%pictures/SurnamesN/NorrisR.gif', ''),
(552, '%asset_url%pictures/SurnamesN/NorrisF.gif', ''),
(553, '%asset_url%pictures/SurnamesN/NowersLgrave.gif', ''),
(554, '%asset_url%pictures/SurnamesN/NowersLF.gif', ''),
(555, '%asset_url%pictures/SurnamesN/NowersHollybrook.gif', 'Hollybrook memorial, by Michelle and Andy Cooper ');

-- --------------------------------------------------------

--
-- Table structure for table `picture_article`
--

CREATE TABLE `picture_article` (
  `picture_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `picture_article`
--

TRUNCATE TABLE `picture_article`;
-- --------------------------------------------------------

--
-- Table structure for table `picture_casualty`
--

CREATE TABLE `picture_casualty` (
  `picture_id` int(11) NOT NULL,
  `casualty_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `picture_casualty`
--

TRUNCATE TABLE `picture_casualty`;
--
-- Dumping data for table `picture_casualty`
--

INSERT INTO `picture_casualty` (`picture_id`, `casualty_id`) VALUES
(316, 459),
(317, 459),
(318, 459),
(319, 459),
(320, 459),
(321, 459),
(322, 461),
(323, 464),
(324, 465),
(325, 465),
(326, 465),
(327, 466),
(328, 466),
(329, 466),
(330, 466),
(331, 466),
(332, 467),
(333, 469),
(334, 469),
(335, 471),
(336, 471),
(337, 473),
(338, 473),
(339, 474),
(340, 474),
(341, 474),
(342, 476),
(343, 480),
(344, 481),
(345, 482),
(346, 485),
(347, 487),
(348, 492),
(349, 492),
(350, 493),
(351, 495),
(352, 495),
(353, 495),
(354, 495),
(355, 499),
(356, 500),
(357, 501),
(358, 502),
(359, 503),
(360, 504),
(361, 504),
(362, 504),
(363, 504),
(364, 504),
(365, 506),
(366, 507),
(367, 509),
(368, 509),
(369, 509),
(370, 510),
(371, 512),
(372, 513),
(373, 515),
(374, 515),
(375, 515),
(376, 517),
(377, 519),
(378, 521),
(379, 522),
(380, 524),
(381, 528),
(382, 528),
(383, 528),
(384, 528),
(385, 528),
(386, 528),
(387, 528),
(388, 530),
(389, 533),
(390, 533),
(391, 533),
(392, 536),
(393, 537),
(394, 542),
(395, 542),
(396, 546),
(397, 550),
(398, 551),
(399, 552),
(400, 552),
(401, 552),
(402, 552),
(403, 552),
(404, 554),
(405, 555),
(406, 555),
(407, 556),
(408, 557),
(409, 557),
(410, 557),
(411, 557),
(412, 558),
(413, 558),
(414, 558),
(415, 558),
(416, 560),
(417, 561),
(418, 564),
(419, 565),
(420, 565),
(421, 566),
(422, 566),
(423, 574),
(424, 576),
(425, 577),
(426, 579),
(427, 584),
(428, 585),
(429, 585),
(430, 586),
(431, 587),
(432, 587),
(433, 588),
(434, 589),
(435, 590),
(436, 590),
(437, 590),
(438, 590),
(439, 590),
(440, 591),
(441, 593),
(442, 593),
(443, 594),
(444, 595),
(445, 596),
(446, 596),
(447, 596),
(448, 596),
(449, 596),
(450, 597),
(451, 597),
(452, 597),
(453, 597),
(454, 597),
(455, 597),
(456, 598),
(457, 598),
(458, 598),
(459, 599),
(460, 599),
(461, 599),
(462, 599),
(463, 599),
(464, 599),
(465, 602),
(466, 604),
(467, 604),
(468, 604),
(469, 604),
(470, 607),
(471, 608),
(472, 610),
(473, 612),
(474, 614),
(475, 618),
(476, 619),
(477, 619),
(478, 619),
(479, 620),
(480, 620),
(481, 620),
(482, 621),
(483, 622),
(484, 624),
(485, 624),
(486, 624),
(487, 624),
(488, 626),
(489, 627),
(490, 630),
(491, 630),
(492, 630),
(493, 632),
(494, 636),
(495, 636),
(496, 636),
(497, 637),
(498, 638),
(499, 642),
(500, 643),
(501, 643),
(502, 643),
(503, 644),
(504, 648),
(505, 648),
(506, 649),
(507, 649),
(508, 649),
(509, 649),
(510, 650),
(511, 650),
(512, 650),
(513, 651),
(514, 656),
(515, 657),
(516, 658),
(517, 660),
(518, 662),
(519, 662),
(520, 662),
(521, 664),
(522, 665),
(523, 666),
(524, 666),
(525, 667),
(526, 667),
(527, 667),
(528, 670),
(529, 670),
(530, 670),
(531, 673),
(532, 673),
(533, 677),
(534, 677),
(535, 680),
(536, 680),
(537, 681),
(538, 684),
(539, 684),
(540, 685),
(541, 686),
(542, 686),
(543, 691),
(544, 693),
(545, 693),
(546, 693),
(547, 693),
(548, 693),
(549, 693),
(550, 694),
(551, 694),
(552, 694),
(553, 695),
(554, 695),
(555, 695);

-- --------------------------------------------------------

--
-- Table structure for table `picture_commemoration_location`
--

CREATE TABLE `picture_commemoration_location` (
  `picture_id` int(11) NOT NULL,
  `commemoration_location` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `picture_commemoration_location`
--

TRUNCATE TABLE `picture_commemoration_location`;
-- --------------------------------------------------------

--
-- Table structure for table `picture_site_update`
--

CREATE TABLE `picture_site_update` (
  `picture_id` int(11) NOT NULL,
  `site_update_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `picture_site_update`
--

TRUNCATE TABLE `picture_site_update`;
-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used for both place and last known address';

--
-- Truncate table before insert `place`
--

TRUNCATE TABLE `place`;
--
-- Dumping data for table `place`
--

INSERT INTO `place` (`id`, `name`, `lat`, `lon`) VALUES
(1, 'Dover Hospital', NULL, NULL),
(2, '23 London Road', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `rank`
--

TRUNCATE TABLE `rank`;
--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `name`) VALUES
(1, 'Private'),
(2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `regiment_service`
--

CREATE TABLE `regiment_service` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `flag` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `regiment_service`
--

TRUNCATE TABLE `regiment_service`;
--
-- Dumping data for table `regiment_service`
--

INSERT INTO `regiment_service` (`id`, `name`, `flag`) VALUES
(1, 'Royal Engineers', NULL),
(2, 'HMS Victory', NULL),
(3, 'Army', NULL),
(4, 'Royal Navy', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `regiment_service_casualty`
--

CREATE TABLE `regiment_service_casualty` (
  `casualty_id` int(11) NOT NULL,
  `regiment_service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `regiment_service_casualty`
--

TRUNCATE TABLE `regiment_service_casualty`;
--
-- Dumping data for table `regiment_service_casualty`
--

INSERT INTO `regiment_service_casualty` (`casualty_id`, `regiment_service_id`) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 4),
(3, 1),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `relation`
--

CREATE TABLE `relation` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `relation`
--

TRUNCATE TABLE `relation`;
-- --------------------------------------------------------

--
-- Table structure for table `service_country`
--

CREATE TABLE `service_country` (
  `id` varchar(2) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `service_country`
--

TRUNCATE TABLE `service_country`;
--
-- Dumping data for table `service_country`
--

INSERT INTO `service_country` (`id`, `name`) VALUES
('GB', 'United Kingdom');

-- --------------------------------------------------------

--
-- Table structure for table `service_country_flag`
--

CREATE TABLE `service_country_flag` (
  `id` int(11) NOT NULL,
  `flag` text NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `country_id` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `service_country_flag`
--

TRUNCATE TABLE `service_country_flag`;
--
-- Dumping data for table `service_country_flag`
--

INSERT INTO `service_country_flag` (`id`, `flag`, `start`, `end`, `country_id`) VALUES
(1, 'flags-iso/flat/32/GB.png', '1707-01-01', NULL, 'GB');

-- --------------------------------------------------------

--
-- Table structure for table `service_number`
--

CREATE TABLE `service_number` (
  `casualty_id` int(11) NOT NULL,
  `service_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `service_number`
--

TRUNCATE TABLE `service_number`;
--
-- Dumping data for table `service_number`
--

INSERT INTO `service_number` (`casualty_id`, `service_number`) VALUES
(1, 'ABC123'),
(1, 'DEF456'),
(2, 'ZYX99'),
(3, '34FGB'),
(506, '');

-- --------------------------------------------------------

--
-- Table structure for table `site_update`
--

CREATE TABLE `site_update` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL,
  `family` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `site_update`
--

TRUNCATE TABLE `site_update`;
--
-- Dumping data for table `site_update`
--

INSERT INTO `site_update` (`id`, `title`, `content`, `date`, `family`) VALUES
(1, 'Welcome', 'this year', '2016-07-06', 0),
(2, 'last year', 'old stuff', '2015-07-07', 0),
(3, 'Christmas!', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ornare porttitor metus, sed mattis sem ullamcorper nec. Proin non lobortis elit, eu cursus augue. Curabitur lectus ligula, pellentesque at ipsum sit amet, vehicula vehicula lacus. Suspendisse egestas nisl eros. Etiam in venenatis felis. Duis ultrices lacus dui, vitae porta risus pulvinar nec. Nullam sed mauris dolor. Curabitur ut magna ex. Vivamus sit amet risus a sem consectetur blandit vitae porta augue. Morbi finibus, ante viverra pharetra commodo, lorem nisl condimentum orci, vitae mollis erat justo eu purus. Aliquam erat volutpat.\r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin tempor lacus in egestas placerat. Phasellus nec ullamcorper nisl, nec molestie velit. Etiam vitae tempor massa. Suspendisse dictum sed magna eget molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam porttitor laoreet augue, at vehicula massa convallis ut. Donec dapibus diam et lacus vestibulum gravida. Aliquam laoreet, lorem ac luctus tincidunt, nisi libero consequat tortor, id dapibus mauris ipsum vel felis. Aenean et orci euismod neque pretium interdum aliquet sit amet mauris. Vestibulum at purus ac sem venenatis maximus vel ac diam. Phasellus vitae eros nibh.\r\n\r\nIn euismod enim quis porta viverra. Nunc tempor sed nulla tempus feugiat. Phasellus neque libero, rutrum quis orci varius, tempor finibus augue. Nullam euismod fermentum mi et laoreet. Morbi nec ante vel purus consectetur rutrum. Aliquam ut tellus varius, accumsan tellus sed, ullamcorper ex. Pellentesque condimentum nisl eu neque porta aliquet. Nullam vel consequat urna. Vestibulum facilisis ac est sed viverra. Fusce posuere lectus sed ipsum fringilla lobortis.\r\n\r\nEtiam in maximus libero, rhoncus congue dolor. Sed venenatis vel mi vitae mollis. Ut non ultrices justo, sed consectetur velit. Vestibulum vel dolor fringilla diam finibus placerat. Mauris nec volutpat ipsum, sed fermentum ante. Suspendisse nunc purus, finibus eu leo eget, feugiat vulputate urna. Duis molestie nulla vel blandit sodales. Suspendisse potenti. In egestas lacus nec ullamcorper imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed nec interdum augue, eget rhoncus ligula.\r\n\r\nSed consequat sollicitudin sodales. Morbi ac ultrices orci, sed pellentesque sapien. Pellentesque quam lorem, imperdiet ac lacus vel, elementum ullamcorper leo. Pellentesque blandit condimentum erat a venenatis. Cras a finibus enim, id lobortis augue. Aenean et metus vitae elit feugiat lobortis. Donec molestie vel enim ut vehicula. Phasellus at sodales nibh, vitae interdum ligula. Suspendisse risus sem, feugiat id felis et, fringilla aliquam nibh.', '2016-12-25', 0),
(6, 'Title 2017 test', 'more text here _test_ update. Zeebrugge', '2017-02-26', 0),
(7, '2017 test2', 'more text here2 _test_', '2017-02-26', 0),
(8, '45', '4545', '1955-01-01', 1),
(9, 'add', 'adding', '2017-02-26', 0),
(10, 'add', 'adding', '2017-02-26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `token` char(40) NOT NULL,
  `end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `war`
--

CREATE TABLE `war` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `war`
--

TRUNCATE TABLE `war`;
--
-- Dumping data for table `war`
--

INSERT INTO `war` (`id`, `name`) VALUES
(1, 'World War I'),
(2, 'World War II');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_cat` (`category_id`);
ALTER TABLE `article` ADD FULLTEXT KEY `title` (`title`);
ALTER TABLE `article` ADD FULLTEXT KEY `content` (`content`);
ALTER TABLE `article` ADD FULLTEXT KEY `title_2` (`title`,`content`);

--
-- Indexes for table `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `casualty`
--
ALTER TABLE `casualty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cas_war` (`war`),
  ADD KEY `cas_final_rest` (`final_resting_place`),
  ADD KEY `cas_rank` (`rank_at_death`),
  ADD KEY `cas_place_birth` (`place_of_birth`),
  ADD KEY `cas_last_address` (`last_known_address`),
  ADD KEY `cas_srv_country` (`service_country`);
ALTER TABLE `casualty` ADD FULLTEXT KEY `casualty_content` (`given_name`,`middle_names`,`family_name`,`narrative`);
ALTER TABLE `casualty` ADD FULLTEXT KEY `given_name` (`given_name`);
ALTER TABLE `casualty` ADD FULLTEXT KEY `middle_names` (`middle_names`,`family_name`,`narrative`);
ALTER TABLE `casualty` ADD FULLTEXT KEY `family_name` (`family_name`);
ALTER TABLE `casualty` ADD FULLTEXT KEY `narrative` (`narrative`);

--
-- Indexes for table `casualty_relation`
--
ALTER TABLE `casualty_relation`
  ADD PRIMARY KEY (`casualty_id_senior`,`casualty_id_junior`,`relation_id`),
  ADD KEY `cas_rel_jnr` (`casualty_id_junior`),
  ADD KEY `cas_rel_type` (`relation_id`);

--
-- Indexes for table `commemoration_location`
--
ALTER TABLE `commemoration_location`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `commemoration_location` ADD FULLTEXT KEY `name` (`name`,`narrative`);

--
-- Indexes for table `commemoration_location_casualty`
--
ALTER TABLE `commemoration_location_casualty`
  ADD PRIMARY KEY (`casualty_id`,`commemoration_location_id`),
  ADD KEY `comm_cas_comm` (`commemoration_location_id`);

--
-- Indexes for table `meta`
--
ALTER TABLE `meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_name` (`filename`);

--
-- Indexes for table `picture_article`
--
ALTER TABLE `picture_article`
  ADD PRIMARY KEY (`picture_id`,`article_id`),
  ADD KEY `pic_art_art` (`article_id`);

--
-- Indexes for table `picture_casualty`
--
ALTER TABLE `picture_casualty`
  ADD PRIMARY KEY (`picture_id`,`casualty_id`),
  ADD KEY `pic_cas_cas` (`casualty_id`);

--
-- Indexes for table `picture_commemoration_location`
--
ALTER TABLE `picture_commemoration_location`
  ADD PRIMARY KEY (`picture_id`,`commemoration_location`),
  ADD KEY `pic_com_com` (`commemoration_location`);

--
-- Indexes for table `picture_site_update`
--
ALTER TABLE `picture_site_update`
  ADD KEY `pic_su_pic` (`picture_id`),
  ADD KEY `pic_su_su` (`site_update_id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regiment_service`
--
ALTER TABLE `regiment_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regiment_service_casualty`
--
ALTER TABLE `regiment_service_casualty`
  ADD PRIMARY KEY (`casualty_id`,`regiment_service_id`),
  ADD KEY `reg_cas_reg` (`regiment_service_id`);

--
-- Indexes for table `relation`
--
ALTER TABLE `relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_country`
--
ALTER TABLE `service_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_country_flag`
--
ALTER TABLE `service_country_flag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `srvc_flag` (`country_id`);

--
-- Indexes for table `service_number`
--
ALTER TABLE `service_number`
  ADD PRIMARY KEY (`casualty_id`,`service_number`);

--
-- Indexes for table `site_update`
--
ALTER TABLE `site_update`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `site_update` ADD FULLTEXT KEY `title` (`title`,`content`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`token`);

--
-- Indexes for table `war`
--
ALTER TABLE `war`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `article_category`
--
ALTER TABLE `article_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `casualty`
--
ALTER TABLE `casualty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=696;
--
-- AUTO_INCREMENT for table `commemoration_location`
--
ALTER TABLE `commemoration_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `picture`
--
ALTER TABLE `picture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=556;
--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `regiment_service`
--
ALTER TABLE `regiment_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `relation`
--
ALTER TABLE `relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `service_country_flag`
--
ALTER TABLE `service_country_flag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `site_update`
--
ALTER TABLE `site_update`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `war`
--
ALTER TABLE `war`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_cat` FOREIGN KEY (`category_id`) REFERENCES `article_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `casualty`
--
ALTER TABLE `casualty`
  ADD CONSTRAINT `cas_final_rest` FOREIGN KEY (`final_resting_place`) REFERENCES `commemoration_location` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cas_last_address` FOREIGN KEY (`last_known_address`) REFERENCES `place` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cas_place_birth` FOREIGN KEY (`place_of_birth`) REFERENCES `place` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cas_rank` FOREIGN KEY (`rank_at_death`) REFERENCES `rank` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cas_srv_country` FOREIGN KEY (`service_country`) REFERENCES `service_country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cas_war` FOREIGN KEY (`war`) REFERENCES `war` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `casualty_relation`
--
ALTER TABLE `casualty_relation`
  ADD CONSTRAINT `cas_rel_jnr` FOREIGN KEY (`casualty_id_junior`) REFERENCES `casualty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cas_rel_snr` FOREIGN KEY (`casualty_id_senior`) REFERENCES `casualty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cas_rel_type` FOREIGN KEY (`relation_id`) REFERENCES `relation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `commemoration_location_casualty`
--
ALTER TABLE `commemoration_location_casualty`
  ADD CONSTRAINT `comm_cas_cas` FOREIGN KEY (`casualty_id`) REFERENCES `casualty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comm_cas_comm` FOREIGN KEY (`commemoration_location_id`) REFERENCES `commemoration_location` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `picture_article`
--
ALTER TABLE `picture_article`
  ADD CONSTRAINT `pic_art_art` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pic_art_pic` FOREIGN KEY (`picture_id`) REFERENCES `picture` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `picture_casualty`
--
ALTER TABLE `picture_casualty`
  ADD CONSTRAINT `pic_cas_cas` FOREIGN KEY (`casualty_id`) REFERENCES `casualty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pic_cas_pic` FOREIGN KEY (`picture_id`) REFERENCES `picture` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `picture_commemoration_location`
--
ALTER TABLE `picture_commemoration_location`
  ADD CONSTRAINT `pic_com_com` FOREIGN KEY (`commemoration_location`) REFERENCES `commemoration_location` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pic_com_pic` FOREIGN KEY (`picture_id`) REFERENCES `picture` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `picture_site_update`
--
ALTER TABLE `picture_site_update`
  ADD CONSTRAINT `pic_su_pic` FOREIGN KEY (`picture_id`) REFERENCES `picture` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pic_su_su` FOREIGN KEY (`site_update_id`) REFERENCES `site_update` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `regiment_service_casualty`
--
ALTER TABLE `regiment_service_casualty`
  ADD CONSTRAINT `reg_cas_cas` FOREIGN KEY (`casualty_id`) REFERENCES `casualty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reg_cas_reg` FOREIGN KEY (`regiment_service_id`) REFERENCES `regiment_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_country_flag`
--
ALTER TABLE `service_country_flag`
  ADD CONSTRAINT `srvc_flag` FOREIGN KEY (`country_id`) REFERENCES `service_country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_number`
--
ALTER TABLE `service_number`
  ADD CONSTRAINT `srvc_num` FOREIGN KEY (`casualty_id`) REFERENCES `casualty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
