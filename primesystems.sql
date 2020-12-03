-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2020 at 04:02 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `primesystems`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeID` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `birthday` date NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phonenumber` int(11) NOT NULL,
  `sex` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `gmail_users`
-- (See below for the actual view)
--
CREATE TABLE `gmail_users` (
`email` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `order_tbl`
--

CREATE TABLE `order_tbl` (
  `orderID` int(11) NOT NULL,
  `order_data` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` int(255) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `brand` varchar(20) NOT NULL,
  `picture_path` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `specification` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `product_name`, `price`, `brand`, `picture_path`, `category`, `specification`) VALUES
(1, 'Amd Ryzen 5 2600 Processor Socket Am4 3.4ghz with Wraith Stealth Cooler', 6699, 'AMD', 'r52600.jpg', 'Processors', 'Specifications:<br>\r\n Module Type U-DIMM<br>\r\n Memory Type DDR4<br>\r\n Interface 288-pin<br>\r\n Density 8GB<br>\r\n Speed 3200MHz<br>\r\n DRAM spec/VCC DDR4 STD 1.2V<br>\r\n 2 1/2 taza de nueces molidas'),
(2, 'Amd Athlon 200GE Vega3 Processor Socket Am4 3.2ghz', 2150, 'AMD', 'athlon200ge.jpg', 'Processors', '<br>\r\n# of CPU Cores<br>\r\n2<br>\r\n# of Threads<br>\r\n4<br>\r\n# of GPU Cores<br>\r\n3<br>\r\nCompute Cores<br>\r\n5 (2 CPU + 3 GPU)<br>\r\nBase Clock<br>\r\n3.2GHz<br>\r\nTotal L1 Cache<br>\r\n192KB<br>\r\nTotal L2 Cache<br>\r\n1MB<br>\r\nTotal L3 Cache<br>\r\n4MB<br>\r\nUnlocked <br>\r\nNo<br>\r\nCMOS<br>\r\n14nm<br>\r\nPackage<br>\r\nAM4<br>\r\nPCI Express&reg; Version<br>\r\nPCIe&reg; 3.0<br>\r\nDefault TDP / TDP<br>\r\n35W<br>\r\nMax Temps<br>\r\n95&deg;C<br>\r\n*OS Support<br>\r\nWindows 10 - 64-Bit Edition<br>\r\nRHEL x86 64-Bit<br>\r\nUbuntu x86'),
(3, 'Amd Ryzen 3 3200g Processor Socket Am4 3.6ghz with Radeon Vega 8', 5795, 'AMD', 'r33200g.jpg', 'Processors', '# of CPU Cores: 4<br>\r\n# of Threads: 4<br>\r\n# of GPU Cores: 8<br>\r\nBase Clock: 3.6GHz<br>\r\nMax Boost Clock: Up to 4.0GHz<br>\r\nTotal L1 Cache: 384KB<br>\r\nTotal L2 Cache: 2MB<br>\r\nTotal L3 Cache: 4MB<br>\r\nThermal Solution (PIB): Wraith Stealth<br>\r\nThermal Solution (MPK): Wraith Stealth<br>\r\nDefault TDP / TDP: 65W<br>\r\nGraphics Specifications: Graphics Frequency 1250 MHz<br>\r\nGraphics Model Radeon&trade;: Vega 8 Graphics<br>\r\nGraphics Core Count: 8'),
(4, 'AMD Ryzen 3 3100 Socket Am4 3.6Ghz with Wraith Stealth Cooler Processor', 5750, 'AMD', 'r33100.jpg', 'Processors', '# of CPU Cores 4<br>\r\n# of Threads 8<br>\r\nBase Clock 3.6GHz<br>\r\nMax Boost Clock Up to 3.9GHz<br>\r\nTotal L1 Cache 256KB<br>\r\nTotal L2 Cache 2MB<br>\r\nTotal L3 Cache 16MB<br>\r\nUnlocked Yes<br>\r\nCMOS TSMC 7nm FinFET<br>\r\nPackage AM4<br>\r\nPCI Express&reg; Version PCIe 4.0<br>\r\nThermal Solution (PIB) Wraith Stealth<br>\r\nDefault TDP / TDP 65W<br>\r\nSystem Memory Specification 3200MHz<br>\r\nSystem Memory Type DDR4'),
(6, 'AMD Athlon 3000G Vega 3 Socket Am4 Processor', 2895, 'AMD', 'athlon3000g.jpg', 'Processors', '# of CPU Cores 2<br>\r\n# of Threads 4<br>\r\n# of GPU Cores 3<br>\r\nBase Clock 3.5GHz<br>\r\nTotal L1 Cache 192KB<br>\r\nTotal L2 Cache 1MB<br>\r\nTotal L3 Cache 4MB<br>\r\nUnlocked Yes<br>\r\nCMOS 14nm<br>\r\nPackage AM4<br>\r\nPCI Express&reg; Version PCIe&reg; 3.0<br>\r\nDefault TDP / TDP 35W<br>\r\nMax Temps 95&deg;C<br>\r\n*OS Support<br>\r\nWindows 10 - 64-Bit Edition<br>\r\nRHEL x86 64-Bit<br>\r\nUbuntu x86 64-Bit<br>\r\n*Operating System (OS) support will vary by manufacturer.<br>\r\nSystem Memory Specification Up to 266'),
(12, 'AMD RYZEN 5 3500 6-CORE 6-THREAD 3.60-4.10 GHZ', 7850, 'AMD', 'r53500.jpg', 'Processors', '6 Cores &amp; 6 Threads<br>\r\nBase Clock: 3.6GHz, Max Boost Clock: up to 4.1GHz, 19MB Cache, TDP: 65W<br>\r\nSystem Memory Specification: 3200MHz, System Memory Type: DDR4, Memory Channels: 2<br>\r\nSocket: AM4, Motherboard Compatibility: AMD 300, 400, 500 serles chipset based motherboards'),
(13, 'Acer Predator Helios 300 PH315-51-538G i5-8300H/4gb/GTX 1050Ti 4gb/1TB/Win 10', 56500, 'Acer', 'helios3001050.jpg', 'Laptops', 'Model :<br>\r\nAcer Predator Helios 300 PH315-51-538G<br>\r\nProcessor :<br>\r\nIntel Core i5-8300H Processor (8M Cache, up to 4.00 GHz)<br>\r\nMemory :<br>\r\n4GB DDR4 system memory, upgradable to 32 GB using two soDIMM modules<br>\r\nStorage :<br>\r\n1TB 2.5-inch 5400 RPM<br>\r\nDisplay :<br>\r\n15.6&quot; display with IPS (In-Plane Switching) technology, Full HD 1920 x 1080, Acer ComfyView LED-backlit TFT LCD 16:9 aspect ratio Wide viewing angle up to 170 degrees Ultra-slim design Mercury free, environment fri'),
(14, 'Acer Predator Helios 300 PH315-51-55CR Intel i5-8300H/4gb/GTX 1060 6gb/1TB+128gb M.2 SSD/144Hz/Win 1', 65500, 'Acer', 'helios3001060.jpg', 'Laptops', 'TECH SPECS<br>\r\n<br>\r\nModel : Predator Helios 300 PH315-51-55CR - Obsidian Black<br>\r\nProcessor : Intel Core i5-8300H processor (8 MB Smart Cache, 2.3 GHz with<br>\r\n Turbo Boost up to 4.0 GHz, DDR4, 45 W)<br>\r\nMemory : 4GB of DDR4 system memory, upgradable to 32 GB using two soDIMM modules<br>\r\nStorage : 128GB M.2 SSD + 1 TB 2.5-inch 5400 RPM<br>\r\nDisplay : 15.6-in display with IPS (In-Plane Switching) technology, Full HD 1920 x 1080, <br>\r\n high-brightness (300 nits) Acer ComfyViewTM LED-backli'),
(15, 'Acer Aspire VX15 VX5-591G-51DL 15.6-in FHD Core i5-7300HQ/4GB/256GB SSD/4GB GTX1050/Window 10', 40000, 'Acer', 'aspirevx15.jpg', 'Laptops', 'Operating System : Windows 10<br>\r\nProcessor : Intel Core i5-7300HQ processor (6 MB cache, 2.5 GHz with Turbo Boost up to 3.5 GHz)<br>\r\nMemory : 4GB DDR4 SDRAM<br>\r\nStorage : 256GB SSD<br>\r\nDisplay : 15.6-in FHD Active Matrix TFT Color LCD 1920 x 1080 Display<br>\r\nGraphics : 4GB NVIDIA GeForce GTX 1050 VRAM<br>\r\nI/O Ports : HDMI, USB 2.0 Ports, USB 3.0 Ports, USB 3.1 Ports, USB Connector Type-C<br>\r\nKeyboard : Keyboard Backlight<br>\r\nBattery : 3-Cells Lithium Ion (Li-Ion) Battery<br>\r\nWarranty :'),
(16, 'Acer ED323QUR 31.5\" 144Hz Curved Gaming Monitor', 25500, 'Acer', 'acered323qur.jpg', 'Monitors', 'Screen Size : 31.5&quot;<br>\r\nMaximum Resolution : (WQHD)2560 x 1440<br>\r\nAspect Ratio : 16:9<br>\r\nResponse Time : 4 ms GTG<br>\r\nColor Supported : 16.7 Million<br>\r\nBrightness : 250 cd/m&sup2;<br>\r\nViewing Angles : 178&deg; Horizontal , 178&deg; Vertical<br>\r\nPanel Type : VA (Vertical Alignment)<br>\r\nStand : Tilt (-5&deg;~15&deg;)<br>\r\nPorts &amp; Connectors : DVI-in , 1x HDMI&reg;-in(1.4) , 1x DisplayPort<br>\r\nEnvironmental Certification : T&Uuml;V-GS, MPR II, RoHS<br>\r\nTearing Prevention Techn'),
(17, 'Acer KA220HQ-BD 21\" 60Hz Led Monitor', 5350, 'Acer', 'acerka220hq.jpg', 'Monitors', 'Technical Information<br>\r\n<br>\r\nNumber of Screens<br>\r\n<br>\r\n1<br>\r\n<br>\r\nScreen Size<br>\r\n<br>\r\n54.6 cm (21.5&quot;)<br>\r\n<br>\r\nScreen Mode<br>\r\n<br>\r\nFull HD<br>\r\n<br>\r\nResponse Time<br>\r\n<br>\r\n5 ms<br>\r\n<br>\r\nAspect Ratio<br>\r\n<br>\r\n16:9<br>\r\n<br>\r\nBacklight Technology<br>\r\n<br>\r\nLED<br>\r\n<br>\r\nPanel Technology<br>\r\n<br>\r\nTwisted Nematic Film (TN Film)<br>\r\n<br>\r\nTilt Angle<br>\r\n<br>\r\n-5to15<br>\r\n<br>\r\nSwivel Angle<br>\r\n<br>\r\nNo<br>\r\n<br>\r\nMaximum Adjustable Height<br>\r\n<br>\r\nNo<br>\r\n<br>\r\nV'),
(21, 'Acer Veriton M4660G Intel i7-9700/8GB/1TB+128GB SSD/NVIDIA GT 720/Win10 Pro Desktop with ACM ACVE428', 55550, 'Acer', 'veritoni7.jpg', 'Laptops', 'Power Description<br>\r\nMaximum Power Supply Wattage 500 W<br>\r\nInput Devices<br>\r\nKeyboard Yes<br>\r\nPointing Device Type Mouse<br>\r\nKeyboard Type Physical Keyboard<br>\r\nSoftware<br>\r\nOperating System Windows 10 Pro<br>\r\nOperating System Architecture 64-bit<br>\r\nOperating System Platform Windows<br>\r\nMemory<br>\r\nMaximum Memory 64 GB<br>\r\nStandard Memory 8 GB<br>\r\nMemory Technology DDR4 SDRAM<br>\r\nMemory Card Reader Yes<br>\r\nNetwork &amp; Communication<br>\r\nModem No<br>\r\nWireless LAN Yes<br>\r\nWire'),
(22, 'Asus EX-A320M Gaming Motherboard Socket Am4 Ddr4', 3150, 'Asus', 'asusexa320.jpg', 'Motherboard', 'Non-stop action: The best choice for iCaf&eacute;s, built-to-order gaming systems and quality-driven businesses.<br>\r\nNon-stop durability: Unbeatable features including anti-moisture coating, gold-plated PCIe x16 and LAN design, USB Guard, plus 5X Protection III.<br>\r\nNon-stop gaming: Aura sync, ASUS Beyond VR ready, Epic audio experiences<br>\r\nNon-stop challenger: ASUS iCafe LAB-certified reboot- and compatibility-tested for diskless-system use, top games and 100+ peripherals, 1000+ CPUs, memor'),
(23, 'ASUS TUF B450M Plus Socket Am4 Ddr4 Motherboard', 6134, 'Asus', 'asusb450m.jpg', 'Motherboard', 'Model<br>\r\nBrand<br>\r\nASUS<br>\r\nSeries<br>\r\nTUF<br>\r\nModel<br>\r\nB450M-PLUS GAMING<br>\r\n<br>\r\nSupported CPU<br>\r\nCPU Socket Type<br>\r\nAM4<br>\r\nCPU Type<br>\r\nAMD AM4 Socket AMD Ryzen 2nd Generation / Ryzen with Radeon Vega Graphics / Ryzen 1st Generation Processors<br>\r\nSupports CPU up to 8 cores*<br>\r\n* Due to CPU limitation, CPU cores supported varies by processor. <br>\r\n** Refer to www.asus.com for the AMD CPU support list.<br>\r\n<br>\r\nChipsets<br>\r\nChipset<br>\r\nAMD B450<br>\r\n<br>\r\nMemory<br>\r\nN'),
(24, 'Asus TUF GTX 1660 Super O6G Gaming 6gb 192bit GDdr6 Videocard', 15120, 'Asus', 'tufgtx1660.jpg', 'Video Cards', 'Graphics Engine<br>\r\n<br>\r\nNVIDIA&reg; GeForce<sup&reg;< sup=&quot;&quot;> GTX 1660 SUPER&trade;</sup&reg;<><br>\r\nBus Standard PCI Express 3.0<br>\r\nOpenGL OpenGL&reg;4.6<br>\r\nVideo Memory GDDR6 6GB<br>\r\nEngine Clock OC Mode - 1845 MHz (Boost Clock)<br>\r\nGaming Mode (Default) - GPU Boost Clock : 1815 MHz , GPU Base Clock : 1530 MHz<br>\r\nCUDA Core 1408<br>\r\nMemory Clock 14002 MHz<br>\r\nMemory Interface 192-bit<br>\r\nResolution Digital Max Resolution:7680x4320<br>\r\nInterface DVI Output : Yes x 1 (Nat'),
(25, 'Asus TUF Gaming X3 RX 5600 XT Evo 6gb 192bit GDdr6 Gaming Videocard', 20650, 'Asus', 'tufrx5600.jpg', 'Video Cards', 'Graphics Engine<br>\r\nAMD Radeon RX 5600 XT<br>\r\nBus Standard<br>\r\nPCI Express 4.0<br>\r\nOpenGL<br>\r\nOpenGL&reg;4.6<br>\r\nVideo Memory<br>\r\nGDDR6 6GB<br>\r\nEngine Clock &ndash; OC Mode<br>\r\nup to 1660 MHz (Game clock**) / ~ 1770 MHz (Boost clock*)<br>\r\nEngine Clock &ndash; Gaming Mode<br>\r\nup to 1615 MHz (Game clock**) / ~ 1750 MHz (Boost clock*)<br>\r\nStream Processors<br>\r\n2304<br>\r\nMemory Speed<br>\r\nUp to 14 Gbps***<br>\r\nMemory Interface<br>\r\n192-bit<br>\r\nResolution<br>\r\nDigital Max Resolution:768'),
(26, 'Asus VP278QG 27\" FreeSync Gaming Monitor', 13850, 'Asus', 'asusvp278qg.jpg', 'Monitors', '1920 x 1080 1ms(GTG)<br>\r\nASCR 100,000,000:1 (1,200:1)<br>\r\nD-Sub, HDMI, DisplayPort'),
(27, 'Asus ROG Spatha RGB Wired/Wireless Gaming Mouse', 6995, 'Asus', 'asusspatha.jpg', 'Mouse', 'Customizable 3-Zone (ROG logo, scroll wheel, side buttons) RGB lighting effects<br>\r\nWireless/wired modes with 8200 DPI, 150 IPS, 30G acceleration and 2000Hz USB polling rate (In wired mode)<br>\r\nProgrammable 12-button design with swappable Omron click switches for customizable Click resistance, Weight 178.5 g without cable<br>\r\nRog Armory interface to customize buttons, performance and RGB, with built-in flash memory for profile storage<br>\r\nDurable, smooth magnesium alloy bottom plate glides a'),
(28, 'Corsair Harpoon RGB Pro CSCH9301111AP Gaming Mouse', 1495, 'Corsair', 'corsairharpoon.jpg', 'Mouse', 'Prog Buttons 6<br>\r\nDPI 12,000 DPI<br>\r\nSensor PMW3327<br>\r\nSensor Type Optical<br>\r\nMouse Backlighting 1 Zone RGB<br>\r\nOn Board Memory Yes<br>\r\nMouse button Type Omron<br>\r\nConnectivity Wired<br>\r\nMouse Button Durability 20M L/R Click<br>\r\nGrip Type Claw<br>\r\nWeight 85g (w/out cable)<br>\r\nCUE Software Supported in iCUE<br>\r\nCable 1.8m Tangle Free Rubber<br>\r\nGame Type FPS<br>\r\nMouse Feet Large PTFE<br>\r\nReport Rate Selectable 1000Hz/500Hz/250Hz/125Hz<br>\r\nMouse Dimensions 115.5(L) x 68.3(W) x 4'),
(29, 'Corsair Strafe RGB MK.2 CS-CH-9104113-NA Mechanical Gaming Keyboard Cherry MX Silent', 7750, 'Corsair', 'corsairstrafe.jpg', 'Keyboard', 'Keyboard Backlighting RGB<br>\r\nKeyboard Layout NA<br>\r\nHID Keyboard Report Rate 1000Hz<br>\r\nKey Switches CHERRY&reg; MX Silent<br>\r\nUSB Pass-through USB 2.0 Type-A<br>\r\nMatrix 104 Keys<br>\r\nKeyboard Connectivity Wired<br>\r\nAdjustable Height Yes<br>\r\nAdditional colored and textured keycaps FPS / MOBA<br>\r\nMedia Controls YN Yes<br>\r\nKeyboard Type Size STRAFE<br>\r\nKeyboard Product Family STRAFE<br>\r\nKeyboard Rollover Full Key (NKRO) with 100% Anti-Ghosting<br>\r\nSize(Full/TKL) Full Size<br>\r\nWired C'),
(30, 'Corsair Carbide 110R Tempered Glass Mid Tower Case Black', 3525, 'Corsair', 'corsaircarbide.jpg', 'Case', 'Case Dimensions<br>\r\n 418mm x 210mm x 480mm<br>\r\n<br>\r\nMaximum GPU Length<br>\r\n 330mm<br>\r\n<br>\r\nMaximum PSU Length<br>\r\n 180mm<br>\r\n<br>\r\nMaximum CPU Cooler Height<br>\r\n160mm<br>\r\nCase Expansion Slots<br>\r\n7<br>\r\n<br>\r\nCase Drive Bays<br>\r\n (x2) 3.5in (x2) 2.5in<br>\r\n<br>\r\nCase Form Factor<br>\r\nMid-Tower<br>\r\n<br>\r\nCase Windowed<br>\r\nTempered Glass<br>\r\n<br>\r\niCUE enabled<br>\r\n No<br>\r\n <br>\r\nCase Material<br>\r\n Steel, Tempered Glass<br>\r\n<br>\r\nRadiator Compatibility<br>\r\n 120mm, 140mm, 240mm, '),
(31, 'Corsair Vengeance Pro Memory 2x8gb Ddr4 3000mhz Black RGB', 4695, 'Corsair', 'corsairvengeancepro.jpg', 'RAM', 'Fan Included<br>\r\nNo<br>\r\nMemory Series<br>\r\nVENGEANCE RGB PRO<br>\r\nMemory Type<br>\r\nDDR4<br>\r\nMemory Size<br>\r\n16GB Kit (2 x 8GB)<br>\r\nTested Latency<br>\r\n16-18-18-36<br>\r\nTested Voltage<br>\r\n1.35V<br>\r\nTested Speed<br>\r\n3200MHz<br>\r\nMemory Color<br>\r\nWHITE<br>\r\nLED Lighting<br>\r\nRGB<br>\r\nSingle Zone / Multi-Zone Lighting<br>\r\nIndividually Addressable<br>\r\nSPD Latency<br>\r\n15-15-15-36<br>\r\nSPD Speed<br>\r\n2133MHz<br>\r\nSPD Voltage<br>\r\n1.2V<br>\r\nSpeed Rating<br>\r\nPC4-25600 (3200MHz)<br>\r\nCompatib'),
(32, 'Corsair M65 CS-CH-9309011-AP RGB Elite Tunable Gaming Mouse Black', 2950, 'Corsair', 'corsairm65.jpg', 'Mouse', 'Prog Buttons 8<br>\r\nDPI 18,000 DPI<br>\r\nSensor PMW3391<br>\r\nSensor Type Optical<br>\r\nMouse Backlighting 2 Zone RGB<br>\r\nOn Board Memory Yes<br>\r\nOn-board Memory Profiles 1<br>\r\nMouse button Type Omron<br>\r\nMouse Button Durability 50M L/R Click<br>\r\nConnectivity Wired<br>\r\nGrip Type Claw<br>\r\nWeight Tuning Yes<br>\r\n<br>\r\nWeight 97g (w/out cable and accessories)<br>\r\nCable 1.8m Braided Fiber<br>\r\nCUE Software Supported in iCUE<br>\r\nGame Type FPS<br>\r\nReport Rate Selectable 1000Hz/500Hz/250Hz/125Hz'),
(33, 'Corsair Void Pro CSCA9011150AP RGB 7.1 Wireless Premium Gaming Headset Yellow', 6595, 'Corsair', 'corsairvoidpro.jpg', 'Headset', 'Audio Product<br>\r\nHeadset<br>\r\nHeadset Backlighting<br>\r\nYes<br>\r\nAudio CUE Software<br>\r\nYes<br>\r\nSurround Sound<br>\r\nYes<br>\r\nDetachable Microphone<br>\r\nNo<br>\r\nRechargble Battery<br>\r\nYes<br>\r\nHeadphone Frequency Response<br>\r\n20Hz - 20 kHz<br>\r\nHeadphone Battery Life<br>\r\nUp to 16 hours<br>\r\nHeadphone Sensitivity<br>\r\n107dB (+/-3dB)<br>\r\nHeadphone Wireless Range<br>\r\nUp to 40 feet (12m)<br>\r\nImpedance<br>\r\n32k Ohms @ 1 kHz<br>\r\nHeadphone Type<br>\r\nWireless<br>\r\nHeadphone Connector<br>\r\nUSB '),
(34, 'Gigabyte Gtx 1650 Super Windforce OC Gaming Videocard 4GB 128bit GDdr6', 10100, 'Gigabyte', 'gigabytegtx1650super.jpg', 'Video Cards', 'Graphics Processing: GeForce&reg; GTX 1650 SUPER&trade;<br>\r\nCore Clock: 1755 MHz (Reference Card: 1725 MHz)<br>\r\nCUDA&reg; Cores: 1280<br>\r\nMemory Clock: 12000 MHz<br>\r\nMemory Size: 4 GB<br>\r\nMemory Type: GDDR6<br>\r\nMemory Bus: 128 bit<br>\r\nMemory Bandwidth (GB/sec): 192 GB/s<br>\r\nCard Bus: PCI-E 3.0 x 16<br>\r\nDigital max resolution: 7680x4320@60Hz<br>\r\nMulti-view: 3<br>\r\nCard size: L=225 W=119 H=40 mm<br>\r\nPCB Form: ATX<br>\r\nDirectX: 12<br>\r\nOpenGL: 4.6<br>\r\nRecommended PSU: 350W<br>\r\nPower Co'),
(35, 'Gigabyte RX 570 V2.0 4gb 256bit DDR5', 8300, 'Gigabyte', 'gigabytex570.jpg', 'Video Cards', '<br>\r\nGraphics Processing Radeon RX570<br>\r\n I/O HDMI 2.0b *1<br>\r\n Display Port 1.4 *3<br>\r\n Core Clock OC mode: up to 1255 MHz<br>\r\n Gaming mode: up to 1244 MHz<br>\r\n Stream Processors 2&#8206;048<br>\r\n Memory Clock 7&#8206;000 MHz<br>\r\n Memory Size 8&#8206; GB<br>\r\n Memory Type GDDR5<br>\r\n Memory Bus 2&#8206;56 bit<br>\r\n Card Bus PCI-E 3.0 x 16<br>\r\n Digital max resolution 7&#8206;680x4320<br>\r\n Multi-view 4&#8206;<br>\r\n Card size L=232 W=116 H=36 mm<br>\r\n PCB Form ATX<br>\r\n DirectX 1&#8206;2'),
(36, 'Gigabyte Gtx 1660 Super OC 2 Fans Videocard 6gb 192bit GDdr6', 14650, 'Gigabyte', 'gigabytegtx1660super.jpg', 'Video Cards', 'Graphics Processing<br>\r\nGeForce GTX 1660 SUPER<br>\r\nCore Clock<br>\r\n1830 MHz (Reference Card: 1785 MHz)<br>\r\nCUDA Cores<br>\r\n1408<br>\r\nMemory Clock<br>\r\n14000 MHz<br>\r\nMemory Size<br>\r\n6 GB<br>\r\nMemory Type<br>\r\nGDDR6<br>\r\nMemory Bus<br>\r\n192 bit<br>\r\nMemory Bandwidth (GB/sec)<br>\r\n336 GB/s<br>\r\nCard Bus<br>\r\nPCI-E 3.0 x 16<br>\r\nDigital max resolution<br>\r\n7680x4320@60Hz<br>\r\nMulti-view<br>\r\n4<br>\r\nCard size<br>\r\nL=225.65 W=122.02 H=40.5 mm<br>\r\nPCB Form<br>\r\nATX<br>\r\nDirectX<br>\r\n12<br>\r\nOpenG'),
(37, 'Gigabyte GA A320M S2H V2 Motherboard Am4 Ddr4', 3100, 'Gigabyte', 'gigabytea320m.jpg', 'Motherboard', 'Supports AMD 3rd Gen Ryzen&trade;/ 2nd Gen Ryzen&trade;/ 1st Gen Ryzen&trade;/ 2nd Gen Ryzen&trade; with Radeon&trade; Vega Graphics/ 1st Gen Ryzen&trade; with Radeon&trade; Vega Graphics/ Athlon&trade; with Radeon&trade; Vega Graphics/ 7th Gen A-series/ Athlon X4 Processors<br>\r\nDual Channel Non-ECC Unbuffered DDR4, 2 DIMMs<br>\r\nUltra-Fast PCIe Gen3 x4 M.2 with PCIe NVMe &amp; SATA mode support<br>\r\nHigh Quality Audio Capacitors and Audio Noise Guard<br>\r\nRealtek&reg; Gigabit LAN with cFosSpeed'),
(38, 'Gigabyte B550M DS3H Socket Am4 Ddr4 Motherboard', 5799, 'Gigabyte', 'gigabyteb550m.jpg', 'Motherboard', 'CPU<br>\r\n<br>\r\n AMD Socket AM4, support for: 3rd Generation AMD Ryzen&trade; processors/ 3rd Generation AMD Ryzen&trade; with Radeon&trade; Graphics processors<br>\r\n<br>\r\n(Please refer &quot;CPU Support List&quot; for more information.)<br>\r\nChipset<br>\r\n<br>\r\n AMD B550<br>\r\n<br>\r\nMemory<br>\r\n<br>\r\n 4 x DDR4 DIMM sockets supporting up to 128 GB (32 GB single DIMM capacity) of system memory<br>\r\n 3rd Gen AMD Ryzen&trade; Processors:<br>\r\n Support for DDR4 4000(O.C.) / 3600(O.C.) / 3333(O.C.) /320'),
(39, 'Gigabyte Aorus 16gb 2x8gb Memory 3200mhz Ddr4 RGB', 5195, 'Gigabyte', 'gigabyteaorus.jpg', 'RAM', 'Memory Size : 16GB Kit (2 x 8GB)<br>\r\nFrequency : DDR4-3200 MHz<br>\r\nTiming : 16-18-18-38 (XMP 3200MHz)<br>\r\nSupport AORUS MEMORY BOOST*<br>\r\nPerformance Profile : XMP 2.0<br>\r\nRGB Fusion 2.0 Supported<br>\r\nHigh Efficient Heat Spreaders to Keep Performance<br>\r\nUser Friendly Design for Easier Installation<br>\r\n100% Sorted &amp; Tested'),
(40, 'Kingston HyperX Cloud II Gaming Headset Red', 5095, 'HyperX', 'hyperxcloud2.jpg', 'Headset', 'Connection Type : Single 3.5mm<br>\r\nAudio Type : Stereo<br>\r\nAudio Controls : Inline<br>\r\nHeadband Memory Foam : yes<br>\r\nVelour Ear Cushions : no<br>\r\nTravel Bag : Mesh Bag<br>\r\nExtension Cable : Dual 3.5mm'),
(41, 'HyperX Cloud II Gaming Headset Gun Metal', 4850, 'HyperX', 'hyperxcloudii.jpg', 'Headset', 'Connection Type : Single 3.5mm<br>\r\nAudio Type : Stereo<br>\r\nAudio Controls : Inline<br>\r\nHeadband Memory Foam : yes<br>\r\nVelour Ear Cushions : no<br>\r\nTravel Bag : Mesh Bag<br>\r\nExtension Cable : Dual 3.5mm'),
(42, 'Kingston Hyperx Pulsefire Surge RGB Gaming Mouse', 3995, 'HyperX', 'hyperxpulsefire.jpg', 'Mouse', 'Light ring provides dynamic 360 degree RGB effects<br>\r\nPixart 3389 Sensor with native DPI up to 16,000<br>\r\nReliable Omron switches rated for 50 million clicks<br>\r\nEasy customization with HyperX NGENUITY software<br>\r\nOnboard memory to store customizations'),
(43, 'Kingston HyperX Fury Memory 1x8gb Ddr4-2666 Black', 1795, 'HyperX', 'hyperxfury.jpg', 'RAM', 'Capacities<br>\r\nSingles 4GB, 8GB, 16GB, 32GB<br>\r\nKits of 2 8GB, 16GB, 32GB, 64GB<br>\r\nKits of 4 16GB, 32GB, 64GB, 128GB<br>\r\nFrequencies 2400MHz, 2666MHz, 3000MHz, 3200MHz, 3466MHz, 3600MHz, 3733MHz<br>\r\nLatencies CL15, CL16, CL17, CL19<br>\r\nVoltage 1.2V, 1.35V<br>\r\nOperating Temperatures 0C to 85C<br>\r\nDimensions 133.35mm x 34.1mm x 7.2mm'),
(44, 'Kingston HyperX Fury Memory 2x8gb Ddr4-3200 CL16 Black RGB', 4495, 'HyperX', 'hyperxfury2.jpg', 'RAM', 'Frequencies 2400MHz, 2666MHz, 3000MHz, 3200MHz, 3466MHz, 3600MHz, 3733MHz<br>\r\nLatencies CL15, CL16, CL17, CL19<br>\r\nVoltage 1.2V, 1.35V<br>\r\nOperating Temperature 0&deg;C to 70&deg;C<br>\r\nDimensions 133.35mm x 41.24mm x 7mm'),
(45, 'Kingston HyperX Fury v2 Memory 1x4gb Ddr4-2666 Black', 1175, 'HyperX', 'hyperxfuryv2.jpg', 'RAM', 'CL(IDD) 15 cycles<br>\r\nRow Cycle Time (tRCmin) 45ns(min.)<br>\r\nRefresh to Active/Refresh<br>\r\nCommand Time (tRFCmin) 260ns(min.)<br>\r\nRow Active Time (tRASmin) 26.25ns(min.)<br>\r\nMaximum Operating Power TBD W*<br>\r\nUL Rating 94 V 0<br>\r\nOperating Temperature 0o<br>\r\nC to +85o<br>\r\nC<br>\r\nStorage Temperature -55o<br>\r\nC to +100o<br>\r\nC'),
(46, 'Intel Core I9-10850KA Avengers Edition Comet Lake Socket 1200 3.6GHz Processor', 26900, 'Intel', 'i910gen.jpg', 'Processors', 'Processor Number i9-10850K<br>\r\n# of Cores 10<br>\r\n# of Threads 20<br>\r\nProcessor Base Frequency 3.60 GHz<br>\r\nMax Turbo Frequency 5.20 GHz<br>\r\nIntel&reg; Thermal Velocity Boost Frequency 5.20 GHz<br>\r\nCache 20 MB Intel&reg; Smart Cache<br>\r\nBus Speed 8 GT/s<br>\r\nIntel&reg; Turbo Boost Max Technology 3.0 Frequency 5.10 GHz<br>\r\nIntel&reg; Turbo Boost Technology 2.0 Frequency 5.00 GHz<br>\r\nTDP 125 W<br>\r\nConfigurable TDP-down Frequency 3.30 GHz<br>\r\nConfigurable TDP-down 95 W<br>\r\nMax Memory Siz'),
(47, 'Intel Core I7-10700KA Avengers Edition Comet Lake Socket 1200 3.8GHz Processor', 22480, 'Intel', 'i710gen.jpg', 'Processors', 'Product Collection 10th Generation Intel&reg; Core&trade; i7 Processors<br>\r\nProcessor Number i7-10700K<br>\r\n# of Cores 8<br>\r\n# of Threads 16<br>\r\nProcessor Base Frequency 3.80 GHz<br>\r\nMax Turbo Frequency 5.10 GHz<br>\r\nCache 16 MB Intel&reg; Smart Cache<br>\r\nBus Speed 8 GT/s<br>\r\nIntel&reg; Turbo Boost Max Technology 3.0 Frequency 5.10 GHz<br>\r\nIntel&reg; Turbo Boost Technology 2.0 Frequency 5.00 GHz<br>\r\nTDP 125 W<br>\r\nConfigurable TDP-down Frequency 3.50 GHz<br>\r\nConfigurable TDP-down 95 W<b'),
(48, 'Intel Core i3-9100F Coffee Lake Processor Socket 1151 3.60Ghz 6m', 3899, 'Intel', 'i39gen.jpg', 'Processors', 'Essentials<br>\r\n<br>\r\nProduct Collection 9th Generation Intel Core i3 Processors<br>\r\nCode Name Products formerly Coffee Lake<br>\r\nVertical Segment Desktop<br>\r\nProcessor Number i3-9100F<br>\r\nStatus Launched<br>\r\nLaunch Date Q2\'19<br>\r\nLithography 14 nm<br>\r\nUse Conditions PC/Client/Tablet<br>\r\nRecommended Customer Price$97.00<br>\r\n<br>\r\nPerformance<br>\r\n<br>\r\n# of Cores 4<br>\r\n# of Threads 4<br>\r\nProcessor Base Frequency 3.60 GHz<br>\r\nMax Turbo Frequency 4.20 GHz<br>\r\nCache 6 MB Intel Smart Cac'),
(49, 'Intel Core i7-9700k Coffee Lake Processor Socket 1151 3.6Ghz 12m', 21295, 'Intel', 'i79gen.jpg', 'Processors', 'Socket 1151<br>\r\nArchitecture Coffee Lake Refresh<br>\r\nNo. of Cores 8 Core<br>\r\nNo. of Threads 8<br>\r\nCore Ratio 36 x<br>\r\nClock Speed 3.0 GHz<br>\r\nTurbo Speed 4.7 GHz<br>\r\nDMI Speed 8 GT/s<br>\r\nUnlocked Full Range Base Clock (B-Clock) No<br>\r\nMax. Memory Size 128 GB<br>\r\nMax. Memory Speed DDR4 - 2666<br>\r\nMax. Memory Channels 2 (Dual Channel)<br>\r\nIntel Optane Memory Support Yes<br>\r\nScalability 1 Socket/Processor ONLY<br>\r\nMax. PCIe Lanes Supported 16<br>\r\nIntel&reg; Smart Cache 12MB<br>\r\nVolt'),
(50, 'Intel Core i5-9400f Coffee Lake Processor Socket 1151 2.9Ghz 9m', 7950, 'Intel', 'i59gen.jpg', 'Processors', 'Essentials<br>\r\n<br>\r\nProduct Collection 9th Generation Intel Core i5 Processors<br>\r\nCode Name Products formerly Coffee Lake<br>\r\nVertical Segment Desktop<br>\r\nProcessor Number i5-9400F<br>\r\nStatus Launched<br>\r\nLaunch Date Q1\'19<br>\r\nLithography 14 nm<br>\r\nUse Conditions PC/Client/Tablet<br>\r\nRecommended Customer Price$157.00<br>\r\n<br>\r\nPerformance<br>\r\n<br>\r\n# of Cores 6<br>\r\n# of Threads 6<br>\r\nProcessor Base Frequency 2.90 GHz<br>\r\nMax Turbo Frequency 4.10 GHz<br>\r\nCache 9 MB Intel Smart Ca'),
(51, 'Intel Optane M.2 16gb Memory Module', 1995, 'Intel', 'inteloptane.jpg', 'Memory', 'Model<br>\r\n<br>\r\nBrand<br>\r\nIntel<br>\r\n<br>\r\nSeries<br>\r\nOptane<br>\r\n<br>\r\nModel<br>\r\nMEMPEK1W016GAXT<br>\r\n<br>\r\nDevice Type<br>\r\nMemory Module/System Accelerator<br>\r\n<br>\r\nDetails<br>\r\n<br>\r\nForm Factor<br>\r\nM.2 2280<br>\r\n<br>\r\nCapacity<br>\r\n16GB<br>\r\n<br>\r\nInterface<br>\r\nPCIe NVMe 3.0 x2<br>\r\n<br>\r\nPerformance<br>\r\n<br>\r\nMax Sequential Read<br>\r\nUp to 900 MBps<br>\r\n<br>\r\nMax Sequential Write<br>\r\nUp to 145 MBps<br>\r\n<br>\r\n4KB Random Read<br>\r\nUp to 190,000 IOPS<br>\r\n<br>\r\n4KB Random Write<br>'),
(52, 'Msi A320M-A Pro Motherboard Socket Am4 Pcie Ddr4', 2850, 'MSI', 'msia320ma.jpg', 'Motherboard', 'Socket<br>\r\nCPU (Max Support)<br>\r\nChipset<br>\r\nDDR4 Memory<br>\r\nMemory Channel<br>\r\nDIMM Slots<br>\r\nMax Memory (GB)<br>\r\nPCI-E x16<br>\r\nPCI-E Gen<br>\r\nPCI-E x1<br>\r\nSATAIII<br>\r\nRAID<br>\r\nTPM (header)<br>\r\nLAN<br>\r\nUSB 3.2 ports (Front)<br>\r\nUSB 3.2 ports (Rear)<br>\r\nUSB 2.0 ports (Front)<br>\r\nUSB 2.0 ports (Rear)<br>\r\nSerial ports(Front)<br>\r\nAudio ports (Rear)<br>\r\nDVI-D<br>\r\nHDMI<br>\r\nDirectX<br>\r\nForm Factor<br>\r\nOperating System<br>\r\n<br>\r\nAM4<br>\r\nRYZEN<br>\r\nAMD A320 Chipset<br>\r\n1866/ 21'),
(53, 'MSI B450m Mortar Max Motherboard Socket Am4 Ddr4', 5500, 'MSI', 'msib450m.jpg', 'Motherboard', 'Socket<br>\r\nCPU (Max Support)<br>\r\nChipset<br>\r\nDDR4 Memory<br>\r\nMemory Channel<br>\r\nDIMM Slots<br>\r\nMax Memory (GB)<br>\r\nPCI-E x16<br>\r\nPCI-E Gen<br>\r\nPCI-E x1<br>\r\nSATAIII<br>\r\nM.2 Slot<br>\r\nRAID<br>\r\nTPM (header)<br>\r\nLAN<br>\r\nUSB 3.2 ports (Front)<br>\r\nUSB 3.2 ports (Rear)<br>\r\nUSB 2.0 ports (Front)<br>\r\nUSB 2.0 ports (Rear)<br>\r\nSerial ports(Front)<br>\r\nParallel Port(Front)<br>\r\nAudio ports (Rear)<br>\r\nDisplayPort<br>\r\nHDMI<br>\r\nDirectX<br>\r\nForm Factor<br>\r\nCrossFire<br>\r\nOperating System<'),
(54, 'MSI B450 Gaming Pro Carbon AC Motherboard Socket Am4 Ddr4', 8150, 'MSI', 'msib450.jpg', 'Motherboard', 'Supports AMD&reg; Ryzen 1st and 2nd Generation/ Ryzen&trade; with Radeon&trade; Vega Graphics/ Athlon&trade; with Radeon&trade; Vega Graphics Processors for Socket AM4<br>\r\nSupports DDR4-3466(OC) Memory<br>\r\nMystic Light and Mystic Light Sync: 16.8 million colors / 17 effects in one click. Synchronize RGB/RAINBOW strips and other RGB solutions for customization.<br>\r\nLightning Fast Game experience: TURBO M.2 with M.2 Shield, StoreMI, AMD Turbo USB 3.1 GEN2<br>\r\nAudio Boost 4 with Nahimic: Reward'),
(55, 'MSI MAG Forge 100R Mid Tower PC Case Black', 3295, 'MSI', 'msimag.jpg', 'Case', '<br>\r\nPRODUCT NAME <br>\r\nMAG Forge 100R<br>\r\n<br>\r\nI/O PORTS <br>\r\n2 x USB 3.2 Gen1 Type-A / 1 x HD Audio / 1 x Mic<br>\r\n<br>\r\nDRIVER BAYS <br>\r\n2 x 3.5&rdquo; (compatible with 2.5&rdquo;) + 3 x 2.5&rdquo;<br>\r\n<br>\r\nCASE EXPANSION SLOTS <br>\r\n7<br>\r\n<br>\r\nMAXIMUM GPU LENGTH <br>\r\n330 mm<br>\r\n<br>\r\nMAXIMUM CPU COOLER LENGTH <br>\r\n160 mm<br>\r\n<br>\r\nPOWER SUPPLY <br>\r\nStandard ATX 160 mm, max to 200 mm (without 3.5&rdquo; HDD case installed)<br>\r\n<br>\r\nCOOLING LAYOUT <br>\r\nFront: Up to 3 x 120 mm '),
(56, 'MSI RX 570 GT OC 8gb 256bit GDdr5 Gaming Videocard', 9440, 'MSI', 'msirx570.jpg', 'Video Cards', 'MODEL NAME Radeon&trade; RX 570 8GT OC<br>\r\nGRAPHICS PROCESSING UNIT Radeon&trade; RX 570<br>\r\nINTERFACE PCI Express x16<br>\r\nCORES 2048 Units<br>\r\nCORE CLOCKS Boost: up to 1256 MHz<br>\r\nMEMORY SPEED 7000 MHz<br>\r\nMEMORY 8GB GDDR5<br>\r\nMEMORY BUS 256-bit<br>\r\nOUTPUT DisplayPort x 3 / HDMI 2.0b x 1 / DL-DVI-D x 1<br>\r\nHDCP SUPPORT 2.2<br>\r\nRECOMMENDED PSU 450 W<br>\r\nCARD DIMENSION (MM) 237 x 114 x 42 mm<br>\r\nWEIGHT (CARD / PACKAGE) 610 g / 1042 g<br>\r\nDIRECTX VERSION SUPPORT 12<br>\r\nOPENGL VERSIO'),
(57, 'MSI Gtx 1050ti OCv1 Single Fan Videocard 4gb 128bit Ddr5', 8795, 'MSI', 'msigtx1050.jpg', 'Video Cards', 'Core/Memory<br>\r\n<br>\r\nBoost Clock / Base Clock<br>\r\n1455 MHz / 1341 MHz<br>\r\n4GB GDDR5 / 7008 MHz Memory<br>\r\nAll Solid Capacitors<br>\r\n<br>\r\n10 years long lifetime under full load.<br>\r\nLower temperature and higher efficiency.<br>\r\nAluminum core for higher stability.<br>\r\nAfterburner Overclocking Utility<br>\r\n<br>\r\nWireless control through Android/iOS devices.<br>\r\nPredator: In-game video recording.<br>\r\nKombustor: built-in DirectX12 benchmark.<br>\r\nNVIDIA G-SYNC&trade;<br>\r\n<br>\r\nSynchronizes'),
(58, 'EasyPC Rakk Daguob Illuminated Gaming Headset Red', 360, 'Rakk', 'rakkdaguob.jpg', 'Case', 'Stylish designExcellent build quality<br>\r\nComfortable adjustable foam and leather cushion headband<br>\r\nOvertheear and replaceable ear cups<br>\r\nNew sports mesh materials used in the ear cupsComfortable Fit'),
(59, 'Rakk Alti Illuminated Gaming Mouse RGY', 350, 'Rakk', 'rakkalti.jpg', 'Mouse', 'Budget friendly mouse with software including a macro recorder and changeable LED light colors<br>\r\n<br>\r\nMouse Glaiders<br>\r\n<br>\r\nBraided Fiber Cable<br>\r\n<br>\r\nOn the fly sensitivity adjustment<br>\r\n<br>\r\n6D Buttons<br>\r\n<br>\r\nOmron switch rated for 20 Million clicks<br>\r\n<br>\r\nUnique edge Lighting<br>\r\n<br>\r\nResolution: 50 to 4800DPI <br>\r\n<br>\r\nPolling rate: 125/250/500/1000Hz <br>\r\n<br>\r\nButtons: 6 <br>\r\n<br>\r\nWith software?: Yes <br>\r\n<br>\r\nClikers: Omron for left and right clickers <br>\r'),
(60, 'RAKK Aptas V2 Keyboard and Mouse Bundle', 395, 'Rakk', 'rakkaptas.jpg', 'Keyboard', 'Keyboard<br>\r\nLaser-etched ABS Keycaps<br>\r\nSoft braided cable<br>\r\nAnti-flex plate<br>\r\nMouse<br>\r\nOmron switches up to 20m clicks<br>\r\nSoft braided cable<br>\r\n3d and scroll wheel'),
(61, 'Rakk Anyag Tempered Glass Gaming Case Frost', 1395, 'Rakk', 'rakkanyag.jpg', 'Case', 'Case Type: Micro<br>\r\n Expansion card Slots<br>\r\n Motherboard Compatibility<br>\r\n <br>\r\n Micro ATX, Mini-ITX<br>\r\n <br>\r\n <br>\r\n Graphic Card Comaptibility<br>\r\n <br>\r\n up to 340mmVGA<br>\r\n <br>\r\n <br>\r\n CPU Cooler Comaptibiblity<br>\r\n <br>\r\n up to 155m<br>\r\n <br>\r\n <br>\r\n Cooling:<br>\r\n <br>\r\n Cooling - Front 12cm Fan * 3 or 240mm water cooling<br>\r\n Top 12cm Fan * 2 (optional)<br>\r\n Rear 12cm Fan * 1 (optional)<br>\r\n Bottom 12cm Fan * 2 (optional)'),
(62, 'Rakk Marug Gaming Case Black', 995, 'Rakk', 'rakkmarug.jpg', 'Case', 'Winning formula of aesthetics.<br>\r\nFeatures and competitive price to offer a truly excellent place to your next gaming system.<br>\r\nGaming Case'),
(63, 'RAKK Siri Gaming ATX Case Black', 1195, 'Rakk', 'rakksiri.jpg', 'Case', 'L350*W185*H420mm<br>\r\nN.W - 3 KG\'<br>\r\nG. W - 3.7 KG<br>\r\nDrive Bays - HDD x 1 , SSD x 2<br>\r\nPCI Slot - 7 Slot<br>\r\nUSB 3.0 x1 , USB 2.0 x 2 , Audio<br>\r\nFan Cooling 1x 120mm RGB<br>\r\nWater Cooling - 240mm Front , 120mm Top<br>\r\nMax CPU height 160mm<br>\r\nVGA 240mm'),
(64, 'Samsung 970 Evo Plus M.2 NVME Solid State drive 500Gb with FREE Samsung Evo Plus 64gb MicroSD', 6650, 'Samsung', 'samsungevo500gb.jpg', 'Memory', 'Series: SSD 860 EVO<br>\r\nCapacity : 500 GB (Actual usablestorage less)<br>\r\nInterface: SATA 6 Gb/s Interface, compatible with SATA 3 Gb/s &amp; SATA 1.5 Gb/s interface<br>\r\nSequential Read Speed: Up to 550 MB/s<br>\r\nSequential Write Speed: Up to 520 MB/s<br>\r\nController: Samsung MJX Controller<br>\r\nNAND Type: Samsung V-NAND 3bit MLC<br>\r\nCache Memory: Samsung 512 MB Low Power DDR4 SDRAM<br>\r\nInternal Storage: Yes<br>\r\nPower Consumption (W): Average: 2.5 W<br>\r\nOperating Temperature: 0 - 70 &#845'),
(65, 'Samsung 970 Evo Plus M.2 NVME Solid State drive 250GB with FREE Samsung Evo Plus 64gb MicroSD', 4795, 'Samsung', 'samsungevo250gb.jpg', 'Memory', 'Type<br>\r\n<br>\r\nProduct Type<br>\r\n<br>\r\nSSD<br>\r\n<br>\r\nSeries<br>\r\n<br>\r\n970 EVO Plus<br>\r\n<br>\r\nUsage Application<br>\r\n<br>\r\nClient PCs<br>\r\n<br>\r\nInterface<br>\r\n<br>\r\nPCIe Gen 3.0 x 4, NVMe 1.3<br>\r\nApplication<br>\r\n<br>\r\nConsumer<br>\r\n<br>\r\nYes<br>\r\nStorage<br>\r\n<br>\r\nCapacity<br>\r\n<br>\r\n250GB (1GB=1 Billion byte by IDEMA) * Actual usable capacity may be less (due to formatting, partitioning, operating system, applications or otherwise)<br>\r\nKey Features<br>\r\n<br>\r\nSequential Read Speed<br>\r\n'),
(66, 'Samsung 860 Evo Solid State Drive 1tb M.2 SATA', 8369, 'Samsung', 'samsung860evo.jpg', 'Memory', 'Type<br>\r\n<br>\r\nSeries<br>\r\n<br>\r\nSSD 860 EVO<br>\r\nInterface<br>\r\n<br>\r\nSATA 6 Gb/s Interface, compatible with SATA 3 Gb/s &amp; SATA 1.5 Gb/s interface<br>\r\nStorage<br>\r\n<br>\r\nCapacity<br>\r\n<br>\r\n1,000 GB (1 GB=1 Billion byte by IDEMA)<br>\r\nKey Features<br>\r\n<br>\r\nSequential Read Speed<br>\r\n<br>\r\nUp to 550 MB/s Sequential Read<br>\r\nSequential Write Speed<br>\r\n<br>\r\nUp to 520 MB/s Sequential Write<br>\r\nRandom Read Speed<br>\r\n<br>\r\nRandom Read (4KB, QD32): Up to 97,000 IOPS Random Read Random Rea'),
(67, 'Samsung 860 Evo Solid State Drive 250gb SATA 2.5', 2725, 'Samsung', 'samsungevo250gbsata.jpg', 'Memory', 'Type<br>\r\n<br>\r\nSeries<br>\r\n<br>\r\nSSD 860 EVO<br>\r\n<br>\r\nUsage Application<br>\r\n<br>\r\nClient PCs<br>\r\n<br>\r\nInterface<br>\r\n<br>\r\nSATA 6 Gb/s Interface, compatible with SATA 3 Gb/s &amp; SATA 1.5 Gb/s interface<br>\r\nStorage<br>\r\n<br>\r\nCapacity<br>\r\n<br>\r\n250 GB (1 GB=1 Billion byte by IDEMA) * Actual usable capacity may be less (due to formatting, partitioning, operating system, applications or otherwise)<br>\r\nKey Features<br>\r\n<br>\r\nSequential Read Speed<br>\r\n<br>\r\nUp to 550 MB/s Sequential Read'),
(68, 'Samsung 860 Evo Solid State Drive 500gb SATA 2.5 with FREE Samsung Evo Plus 64gb MicroSD', 4495, 'Samsung', 'samsungevo500gbsata.jpg', 'Memory', 'Type<br>\r\n<br>\r\nSeries<br>\r\n<br>\r\nSSD 860 EVO<br>\r\n<br>\r\nUsage Application<br>\r\n<br>\r\nClient PCs<br>\r\n<br>\r\nInterface<br>\r\n<br>\r\nSATA 6 Gb/s Interface, compatible with SATA 3 Gb/s &amp; SATA 1.5 Gb/s interface<br>\r\nStorage<br>\r\n<br>\r\nCapacity<br>\r\n<br>\r\n500 GB (1 GB=1 Billion byte by IDEMA) * Actual usable capacity may be less (due to formatting, partitioning, operating system, applications or otherwise)<br>\r\nKey Features<br>\r\n<br>\r\nSequential Read Speed<br>\r\n<br>\r\nUp to 550 MB/s Sequential Read'),
(69, 'Samsung 860 Evo Solid State Drive 1tb SATA 2.5', 8399, 'Samsung', 'samsungevo1tbsata.jpg', 'Memory', 'General Feature<br>\r\nApplication Client PCs<br>\r\nCapacity 1,000 GB (1 GB=1 Billion byte by IDEMA) * Actual usable capacity may be less (due to formatting, partitioning, operating system, applications or otherwise)<br>\r\nForm Factor 2.5 inch<br>\r\nInterface SATA 6 Gb/s Interface, compatible with SATA 3 Gb/s &amp; SATA 1.5 Gb/s interface<br>\r\nDimension (W x H x D) 100 X 69.85 X 6.8 (mm)<br>\r\nWeight Max 51.0 g Weight<br>\r\nNAND Type Samsung V-NAND 3bit MLC<br>\r\nController Samsung MJX Controller<br>\r\nC');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `employeeID` int(11) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `birthday` date NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `phonenumber` int(15) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `user_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `email`, `first_name`, `last_name`, `password`, `address`, `birthday`, `middle_name`, `phonenumber`, `sex`, `user_name`) VALUES
(1, 'peterparker@gmail.com', 'Peter', 'Parker', 'spiderman', 'Queens New York', '2020-10-01', '', 0, '', ''),
(2, 'gabo@gmail.com', 'Gabrielle', 'Sayago', '$2y$10$BHvUVwjEiKMab6BUSMgsG.A2gS3Y7A8slJdnVQfgmMY', 'QC', '2020-12-03', 'Baluyot', 2147483647, 'Male', '');

--
-- Triggers `user`
--
DELIMITER $$
CREATE TRIGGER `before_products_insert` BEFORE INSERT ON `user` FOR EACH ROW BEGIN
     IF NEW.user_name = '' THEN
         SET NEW.user_name = 'Unspecified';
     END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure for view `gmail_users`
--
DROP TABLE IF EXISTS `gmail_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gmail_users`  AS  select `user`.`email` AS `email` from `user` where `user`.`email` like '%gmail%' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeID`);

--
-- Indexes for table `order_tbl`
--
ALTER TABLE `order_tbl`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`employeeID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_tbl`
--
ALTER TABLE `order_tbl`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `employeeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
