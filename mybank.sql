

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";




CREATE TABLE `branch` (
  `branchId` int(11) NOT NULL,
  `branchNo` varchar(111) NOT NULL,
  `branchName` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `branch` (`branchId`, `branchNo`, `branchName`) VALUES
(1, '100101', 'Mirpur'),
(2, '100102', 'Azimpur'),
(3,'100103','Badda');



CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `message` text NOT NULL,
  `userId` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `feedback` (`feedbackId`, `message`, `userId`, `date`) VALUES
(1, 'This is testing message to admin or manager by fk', 1, '2023-10-15 04:30:48'),
(3, 'This is testing message to admin or manager by fk', 2, '2023-10-15 04:30:48'),
(4, 'this is help card for admin', 1, '2023-10-17 06:45:20');




CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `type` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `login` (`id`, `email`, `password`, `type`, `date`) VALUES
(1, 'cashier1@cashier.com', 'cashier', 'cashier', '2023-10-15 04:36:27'),
(2, 'manager@manager.com', 'manager', 'manager', '2023-10-15 04:36:27'),
(3, 'sadfas@gmail.com', 'sdfas', 'type', '2023-10-16 07:13:12'),
(4, 'fkgeo@gmail.com', 'asdfsa', 'type', '2023-10-16 07:13:18'),
(6, 'cashier2@cashier.com', 'cashier2', 'cashier', '2023-10-16 07:14:47');



CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `userId` varchar(111) NOT NULL,
  `notice` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `notice` (`id`, `userId`, `notice`, `date`) VALUES
(1, '1', 'Dear Customer! <br> Our privacy policy is changed for account information get new prospectus from your nearest branch', '2023-10-14 13:11:46'),
(6, '2', 'Dear Ali,<br>\r\nOur privacy policy has been changed please visit nearest <kbd> MCB </kbd> branch for new prospectus.', '2023-10-16 06:29:23');


CREATE TABLE `otheraccounts` (
  `id` int(11) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `bankName` varchar(111) NOT NULL,
  `holderName` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `otheraccounts` (`id`, `accountNo`, `bankName`, `holderName`, `balance`, `date`) VALUES
(1, '12001122', 'UBL', 'Asif', '40800', '2023-10-14 11:55:07'),
(2, '12001123', 'HBL', 'Noman', '71000', '2023-10-14 11:55:07'),
(3, '12001124', 'HBL', 'Bristi', '71000', '2023-10-14 11:55:07');



CREATE TABLE `transaction` (
  `transactionId` int(11) NOT NULL,
  `action` varchar(111) NOT NULL,
  `credit` varchar(111) NOT NULL,
  `debit` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `beneId` varchar(111) NOT NULL,
  `other` varchar(111) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `transaction` (`transactionId`, `action`, `credit`, `debit`, `balance`, `beneId`, `other`, `userId`, `date`) VALUES
(4, 'transfer', '', '200', '', '', '12001122', 1, '2023-10-14 12:33:40'),
(5, 'transfer', '', '200', '', '', '10054777', 1, '2023-10-14 12:56:48'),
(6, 'transfer', '', '333', '', '', '10054777', 1, '2023-10-14 12:57:20'),
(7, 'transfer', '', '222', '', '', '10054777', 1, '2023-10-14 12:58:19'),
(8, 'transfer', '', '333', '', '', '10054777', 1, '2023-10-14 13:00:23'),
(16, 'withdraw', '', '100', '', '', '23423', 1, '2023-10-15 08:31:59'),
(17, 'deposit', '1200', '', '', '', '234232', 1, '2023-10-15 08:32:17'),
(18, 'transfer', '', '467', '', '', '12001122', 1, '2023-10-17 06:44:48'),
(22, 'deposit', '1200', '', '', '', '32424', 2, '2023-10-17 06:56:29'),
(23, 'withdraw', '', '12', '', '', '23423', 2, '2023-10-17 06:59:02'),
(24, 'deposit', '12', '', '', '', '21321', 2, '2023-10-17 06:59:20'),
(25, 'transfer', '', '1200', '', '', '10054777', 1, '2023-10-17 07:01:37'),
(26, 'deposit', '600', '', '', '', '342342', 2, '2023-10-17 07:04:39'),
(27, 'withdraw', '', '1012', '', '', '23423', 2, '2023-10-17 07:04:58');



CREATE TABLE `useraccounts` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `name` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `nid` varchar(111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `city` varchar(111) NOT NULL,
  `address` varchar(111) NOT NULL,
  `source` varchar(111) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `branch` varchar(111) NOT NULL,
  `accountType` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `useraccounts` (`id`, `email`, `password`, `name`, `balance`, `nid`, `number`, `city`, `address`, `source`, `accountNo`, `branch`, `accountType`, `date`) VALUES
(1, 'some@gmail.com', 'some', 'Joy Roy', '9800', '3210375555426', '017569102', 'Barisal', 'Pirojpur', 'Programmer', '1005469', '1', 'Current', '2023-10-14 05:50:06'),
(2, 'some2@gmail.com', 'some2', 'Sifat Hassan', '16000', '3210375555343', '018910260', 'Barisal', 'Some where in Barisal', 'Programmer', '10054777', '1', 'Saving', '2023-10-14 04:50:06'),
(6, 'realx4rd@gmail.com', 'afsdfasd', 'Tanjim Masum', '234234', '3240338834902', '016910260', 'Dhaka', 'Mirpur-2', 'Govt. job', '1513410739', '1', 'saving', '2023-10-16 07:52:40'),
(7, 'realx4rd@gmail.com', 'safsadf', 'Subir Boral', '12121', '3240338834902', '015910260', 'Dhaka', 'Mirpur-1', 'Govt. job', '1513410837', '1', 'current', '2023-10-16 07:54:18');



ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchId`);


ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackId`);


ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `otheraccounts`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`);


ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `branch`
  MODIFY `branchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `otheraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `transaction`
  MODIFY `transactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

ALTER TABLE `useraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
