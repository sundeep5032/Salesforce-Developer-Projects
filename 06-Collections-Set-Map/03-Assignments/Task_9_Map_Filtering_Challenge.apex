/*
🧪 Task 10 – Map Filtering Challenge
-------------------------------------
1. Create a Map<String, Integer> to store:
    'John' → 85
    'Kiran' → 75
    'Maya' → 95
    'Neha' → 68
    'Ravi' → 90
2. Print only those students who scored above 80.
3. Count how many students scored above 80.
*/

// Create a Map to store
Map<String, Integer> studentGrades = new Map<String, Integer>{
    'John' => 85,
    'Kiran'=> 75,
    'Maya' => 95,
    'Neha' => 68,
    'Ravi' => 90
};

Integer highScoresCount = 0;
// Print and count only those students who scored above 80
for (String studentName: studentGrades.keySet()){
    Integer currentScore = studentGrades.get(studentName);
    if(currentScore > 80){
        system.debug('High Scorer: ' + studentName + ' with a grade of ' + currentScore);
        highScoresCount++;
    }
}

System.debug('Total nummber of students who scored above 80: ' +highScoresCount);
