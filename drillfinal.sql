	
	create database BUNKEY
	use BUNKEY

	begin

	CREATE TABLE BOOK (
		book_id INT PRIMARY KEY NOT NULL,
		title VARCHAR(50)NOT NULL,
		Publisher_Name VARCHAR(50),
		--FOREIGN KEY (Publisher_name) REFERENCES Publisher(Name)
	);


	CREATE TABLE BOOK_AUTHORS ( 
		book_id INT NOT NULL,
		author_name Varchar(50) NOT NULL,
		PRIMARY KEY (book_id,author_name),
		--FOREIGN KEY (book_id) REFERENCES BOOK(Book_id) ON DELETE CASCADE
	);

	CREATE TABLE PUBLISHER (
		Name VARCHAR(50) NOT NULL,
		[address] VARCHAR(50), 
		phone VARCHAR(50) NOT NULL,
		PRIMARY KEY (name)
	);

	CREATE TABLE BOOK_LOANS (  
		book_id INT NOT NULL,
		Branch_id INT NOT NULL,
		Card_No INT NOT NULL,
		Date_Out Date,
		Due_Date Date
		PRIMARY KEY (book_id,Branch_id,Card_no),
		--FOREIGN KEY (Book_id) REFERENCES BOOK(Book_id) ON DELETE SET NULL,
		--FOREIGN KEY (Branch_id) REFERENCES Library_Branch(Branch_id) ON DELETE CASCADE ON UPDATE CASCADE,
		--FOREIGN KEY (Card_no) REFERENCES Borrower(Card_no) ON DELETE CASCADE,
	);

	CREATE TABLE BOOK_COPIES (
		book_id INT NOT NULL,
		Branch_id CHAR(4) NOT NULL,
		No_Of_Copies INT DEFAULT 1,
		PRIMARY KEY (book_id,Branch_id),
		--FOREIGN KEY (Book_id) REFERENCES BOOK(Book_id) ON DELETE CASCADE,
		--FOREIGN KEY (Branch_id) REFERENCES Library_Branch(Branch_id) ON DELETE CASCADE
	);

	CREATE TABLE BORROWER ( 
		Card_no INT PRIMARY KEY , 
		Name VARCHAR(50) NOT NULL,
		[Address]  VARCHAR(50),
		phone VARCHAR(50) NOT NULL
	);

	CREATE TABLE LIBRARY_BRANCH (
		Branch_id INT NOT NULL,
		Branch_name  VARCHAR(50),
		[Address]  VARCHAR(50) NOT NULL,
		PRIMARY KEY	(bRANCH_ID)
	
		
	);


	INSERT INTO BOOK
		(book_id,Title, Publisher_Name)
	VALUES 
		(1,'The Lost Tribe','hill'),
		(2,'grassy gnoll with trees','bob' ),
		(3,'gnoll with','goat'),
		(4,'gnoll with trees','che'),
		(5,'ft pond and rocks', 'stuff'),
		(6,'ft pond','hmm'),
		(7,'pond and rocks','mn'),
		(8,'icy aquirium with snowy facade','tf' ),
		(9,'icy aquirium','df'),
		(10,'snowy facade','rr'),
		(11,'short grass shade and moat','gg' ),
		(12,'short grass','rr'),
		(13,' shade and moat','aa'),
		(14,'netted forest atrium','ww' ),
		(15,'netted forest','aa'),
		(16,'jungle vines and winding branches','aa' ),
		(17,'jungle vines','aa'),
		(18,'cliff with shaded cave', 'aa'),
		(19,'bats','aa'),
		(20,'boats','aa')
	;
	SELECT * FROM BOOK;

		SELECT * FROM BOOK_AUTHORS;

	INSERT INTO  PUBLISHER
		(name, [address], phone)
		VALUES 
		('joel','Publiishers way','555-44-3333')
	
	;
	SELECT * FROM publisher;

	INSERT INTO BOOK_AUTHORS
		(book_id,Author_Name)
	VALUES 
		(1,'Stephen King'),
		(2,'salad'),
		(3,'carvivore'),
		(4,'herbivore'),
		(5,'potato'),
		(6,'potato King'),
		(7,'carvivore crap'),
		(8,'herbivore master'),
		(9,'carvivore me too'),
		(10,'herbivore not')
	;
	SELECT * FROM BOOK_AUTHORS;


		INSERT INTO BOOK_LOANS
		(book_id,Branch_id,Card_No,Date_Out,Due_Date)
	VALUES 
		(1,1,1,'2008-10-15','2009-11-11'),
		(2,1,1,'2008-10-15','2009-11-11'),
		(3,1,1,'2008-10-15','2009-11-11'),
		(4,1,1,'2008-10-15','2009-11-11'),
		(5,1,1,'2008-10-15','2009-11-11'),
		(6,1,1,'2008-10-15','2009-11-11'),
		(7,1,1,'2008-10-15','2009-11-11'),
		(8,1,1,'2008-10-15','2009-11-11'),
		(9,1,1,'2008-10-15','2009-11-11'),
		(10,1,1,'2008-10-15','2009-11-11'),
		(11,2,2,'2008-10-15','2009-11-11'),
		(12,2,2,'2008-10-15','2009-11-11'),
		(13,2,2,'2008-10-15','2009-11-11'),
		(14,2,2,'2008-10-15','2009-11-11'),
		(15,2,2,'2008-10-15','2009-11-11'),
		(16,2,2,'2008-10-15','2009-11-11'),
		(17,2,2,'2008-10-15','2009-11-11'),
		(18,2,2,'2008-10-15','2009-11-11'),
		(19,2,2,'2008-10-15','2009-11-11'),
		(20,2,2,'2008-10-15','2009-11-11'),
		(11,3,3,'2008-10-15','2009-11-11'),
		(12,3,3,'2008-10-15','2009-11-11'),
		(13,3,3,'2008-10-15','2009-11-11'),
		(14,3,3,'2008-10-15','2009-11-11'),
		(15,3,3,'2008-10-15','2009-11-11'),
		(16,3,3,'2008-10-15','2009-11-11'),
		(17,3,3,'2008-10-15','2009-11-11'),
		(18,3,3,'2008-10-15','2009-11-11'),
		(19,3,3,'2008-10-15','2009-11-11'),
		(20,3,3,'2008-10-15','2009-11-11'),
		(1,2,4,'2008-10-15','2009-11-11'),
		(2,2,4,'2008-10-15','2009-11-11'),
		(3,2,4,'2008-10-15','2009-11-11'),
		(4,2,4,'2008-10-15','2009-11-11'),
		(5,2,4,'2008-10-15','2009-11-11'),
		(6,2,4,'2008-10-15','2009-11-11'),
		(7,2,4,'2008-10-15','2009-11-11'),
		(8,2,4,'2008-10-15','2009-11-11'),
		(9,2,4,'2008-10-15','2009-11-11'),
		(10,2,4,'2008-10-15','2009-11-11'),	
		(1,4,1,'2008-10-15','2009-11-11'),
		(2,4,1,'2008-10-15','2009-11-11'),
		(3,4,1,'2008-10-15','2009-11-11'),
		(4,4,1,'2008-10-15','2009-11-11'),
		(5,4,1,'2008-10-15','2009-11-11'),
		(6,4,1,'2008-10-15','2009-11-11'),
		(7,4,1,'2008-10-15','2009-11-11'),
		(8,4,1,'2008-10-15','2009-11-11'),
		(9,4,1,'2008-10-15','2009-11-11'),
		(10,4,1,'2008-10-15','2009-11-11')
	;
	SELECT * FROM BOOK_LOANS;

	
		INSERT INTO BOOK_COPIES
		(book_id,Branch_id,No_Of_Copies)
	VALUES 
		(1,1,3),
		(2,1,2),
		(3,1,4),
		(4,1,2),
		(5,1,3),
		(6,1,4),
		(7,1,3),
		(8,1,4),
		(9,1,4),
		(10,1,2),
		(11,2,3),
		(12,2,2),
		(13,2,4),
		(14,2,2),
		(1,2,3),
		(16,2,4),
		(17,2,3),
		(18,2,4),
		(19,2,4),
		(20,2,2),
		(1,3,3),
		(2,3,2),
		(3,3,4),
		(4,3,2),
		(5,3,3),
		(6,3,4),
		(7,3,3),
		(8,3,4),
		(9,3,4),
		(10,3,2),
		(11,4,3),
		(12,4,2),
		(13,4,4),
		(14,4,2),
		(15,4,3),
		(16,4,4),
		(17,4,3),
		(18,4,4),
		(19,4,4),
		(20,4,2)
	;
	SELECT * FROM BOOK_COPIES;

		INSERT INTO BORROWER
		(Card_No,Name,[Address],phone)
	VALUES 
		(1,'joe','joe street','222-44-5567'),
		(2,'bob', 'bob corner','444-11-6666'),
		(3,'jane','jane way','333-55-1213'),
		(4,'busty','busty lookout','345-45-9876'),
		(5,'flank','flank sauce way','668-33-6789'),
		(6,'jake','jake master street','122-34-6789'),
		(7,'seemore', 'seemore but sstreet','999-12-3456'),
		(8,'butts', '456 butt st','545-22-5645')
		
	;
	SELECT * FROM BORROWER;

	INSERT INTO LIBRARY_BRANCH
		(branch_id,Branch_Name,[Address])
	VALUES 
		(1,'Sharpstown','sharpstown way on that corner'),
		(2,'Central','central park view on butt center'),
		(3,'parkcenter', 'park my trailer here'),
		(4,'hood','get outta the hood B****')
	;
	SELECT * FROM LIBRARY_BRANCH;


end

-----sp_help 'dbo.BOOK'


----1
	SELECT
		 NC.No_Of_Copies as 'COPIES IN STOCK BY Sharpstown'

	FROM BOOK B, BOOK_COPIES NC, LIBRARY_BRANCH bn 
	
	WHERE 	
		B.Book_Id = NC.Book_Id AND
	    NC.Branch_Id = bn.Branch_Id AND
		Title='The Lost Tribe' AND Branch_Name='Sharpstown';

	----2

	SELECT
		 NC.No_Of_Copies as 'COPIES IN STOCK', bn.branch_name as  'BRANCH'

	FROM 
		BOOK B, BOOK_COPIES NC, LIBRARY_BRANCH bn

	WHERE 	
		B.Book_Id = NC.Book_Id AND
	    NC.Branch_Id = bn.Branch_Id AND
		Title='The Lost Tribe';


---3



	SELECT	
		Name as 'no check outs'
	FROM	
		BORROWER BR
	WHERE	
		NOT EXISTS (SELECT *
	FROM 
		BOOK_LOANS BL
	WHERE 
		BR.Card_No = BL.Card_No );

--- 4

	SELECT 
		B.Title, R.Name, R.[Address]
	
	FROM
		 BOOK B, BORROWER R, BOOK_LOANS BL, LIBRARY_BRANCH LB
	
	WHERE 
		LB.Branch_Name='Sharpstown' AND LB.Branch_Id=BL.Branch_Id 
		AND
		BL.Due_Date='2009-11-11' AND BL.Card_No=R.Card_No AND BL.Book_Id=B.Book_Id --- i could not query todays date as i had random dates so i picked the one i added to the database
----5
	
	SELECT
		BN.Branch_Name, COUNT(*) as 'copies'
	FROM	
		LIBRARY_BRANCH BN, BOOK_LOANS BL
	WHERE	
		BL.Branch_Id = BN.Branch_Id
	GROUP BY
		BN.Branch_Name;

---6
	SELECT	
		B.Name, B.Address, B.phone, COUNT(*) as 'copies'
	FROM		
		BORROWER B, BOOK_LOANS BL
	WHERE	
		B.Card_No = BL.Card_No
	GROUP BY	
		B.Card_No, B.Name, B.Address,B.phone
	HAVING	COUNT(*) > 5;

----7
 


	SELECT	
		A.Title, NC.No_Of_Copies
	FROM   
		BOOK_AUTHORS BA,  BOOK A ,BOOK_COPIES NC , LIBRARY_BRANCH LB
	WHERE 
		  
		BA.Author_Name='Stephen King' AND A.book_id = BA.book_id AND
		 A.book_id = NC.book_id
		AND LB.Branch_Name='Central' AND NC.Branch_id= LB.Branch_id ; 


	SELECT
		 Title, No_Of_Copies, Branch_Name
	FROM 
		BOOK  BK
		FULL OUTER JOIN BOOK_COPIES AS BC ON BK.Book_ID = BC.Book_ID
		FULL OUTER JOIN LIBRARY_BRANCH AS LB ON BC.Branch_Id = LB.Branch_Id
		FULL OUTER JOIN BOOK_AUTHORS AS BA ON BK.Book_ID = BA.Book_Id
	WHERE 
		Branch_Name = 'Central'AND
	    Author_Name = 'Stephen King'