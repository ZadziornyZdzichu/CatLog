10 REM CatLog - A Cat Health and Status Management Tool
20 DIM Cats(500, 5) ' Array to store cat data: ID, Name, Age, Health Status, Adoption Status
30 DIM CatCount AS INTEGER
40 CatCount = 0 ' Initialize cat count
50 CLS ' Clear screen

100 PRINT "Welcome to CatLog - Cat Management System"
110 PRINT "Select an option:"
120 PRINT "1. Add New Cat Record"
130 PRINT "2. Update Cat Record"
140 PRINT "3. View All Cats"
150 PRINT "4. Search Cat By Name"
160 PRINT "5. Exit"
170 INPUT "Enter choice: ", Choice

180 IF Choice = 1 THEN GOTO 200
190 IF Choice = 2 THEN GOTO 500
200 IF Choice = 3 THEN GOTO 800
210 IF Choice = 4 THEN GOTO 1100
220 IF Choice = 5 THEN GOTO 1400

200 REM Add New Cat Record
210 IF CatCount >= 500 THEN PRINT "Database full": GOTO 100
220 CatCount = CatCount + 1
230 PRINT "Enter Cat's Name: "; 
240 INPUT Cats(CatCount, 1)
250 PRINT "Enter Cat's Age: "; 
260 INPUT Cats(CatCount, 2)
270 PRINT "Enter Health Status (Healthy/Ill): "; 
280 INPUT Cats(CatCount, 3)
290 PRINT "Enter Adoption Status (Adopted/Available): "; 
300 INPUT Cats(CatCount, 4)
310 PRINT "Cat record added successfully."
320 GOTO 100

500 REM Update Cat Record
510 INPUT "Enter Cat ID to update: ", UpdateID
520 IF UpdateID > CatCount OR UpdateID <= 0 THEN PRINT "Invalid ID": GOTO 500
530 PRINT "Updating record for: "; Cats(UpdateID, 1)
540 PRINT "Enter New Age: "; 
550 INPUT Cats(UpdateID, 2)
560 PRINT "Enter New Health Status (Healthy/Ill): "; 
570 INPUT Cats(UpdateID, 3)
580 PRINT "Enter New Adoption Status (Adopted/Available): "; 
590 INPUT Cats(UpdateID, 4)
600 PRINT "Cat record updated successfully."
610 GOTO 100

800 REM View All Cats
810 IF CatCount = 0 THEN PRINT "No records found": GOTO 100
820 FOR i = 1 TO CatCount
830 PRINT "ID: "; i; " Name: "; Cats(i, 1); " Age: "; Cats(i, 2); " Health: "; Cats(i, 3); " Status: "; Cats(i, 4)
840 NEXT i
850 GOTO 100

1100 REM Search Cat By Name
1110 INPUT "Enter Cat's Name to search: ", SearchName
1120 Found = FALSE
1130 FOR i = 1 TO CatCount
1140 IF Cats(i, 1) = SearchName THEN 
1150 PRINT "ID: "; i; " Name: "; Cats(i, 1); " Age: "; Cats(i, 2); " Health: "; Cats(i, 3); " Status: "; Cats(i, 4)
1160 Found = TRUE
1170 END IF
1180 NEXT i
1190 IF NOT Found THEN PRINT "No cat found by that name."
1200 GOTO 100

1400 REM Exit
1410 PRINT "Thank you for using CatLog."
1420 END
