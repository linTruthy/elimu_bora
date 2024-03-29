class Student{
    String firstName;
    String lastName;
    String otherName;
    DateTime dateOfBirth;
    DateTime DateOfJoin;
    

    String fullName{
        return '$firstName $otherName $lastName'
    }
}