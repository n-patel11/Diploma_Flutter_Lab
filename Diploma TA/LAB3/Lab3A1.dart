// Create a class named Candidate with Candidate_ID, Candidate_Name,
// Candidate_Age, Candidate_ Weight and Candidate_Height data members.
// Also create a method GetCandidateDetails() and
// DisplayCandidateDetails(}. Create main method to demonstrate the
// Candidate class. (A)

import 'dart:io';

class Candidate{
  int? Candidate_ID;
  String? Candidate_Name;
  int? Candidate_Age;
  double? Candidate_Weight;
  double ? Candidate_Height;

  void GetCandidateDetails(){
    print("enter a Candidate ID ");
    Candidate_ID=int.parse(stdin.readLineSync()!);
    print("enter a Candidate Name ");
    Candidate_Name=stdin.readLineSync()!;
    print("enter a Candidate Age ");
    Candidate_Age=int.parse(stdin.readLineSync()!);
    print("enter a Candidate height ");
    Candidate_Weight=double.parse(stdin.readLineSync()!);
    print("enter a Candidate weight ");
    Candidate_Height=double.parse(stdin.readLineSync()!);
  }

  void DisplayCandidateDetails(){
    print("Display Candidate Details :");
    print("Candidate ID : $Candidate_ID");
    print("Candidate Name : $Candidate_Name");
    print("Candidate Age : $Candidate_Age");
    print("Candidate Weight : $Candidate_Weight");
    print("Candidate Height : $Candidate_Height");
  }
}

void main(){
  Candidate a1= new Candidate();
  a1.GetCandidateDetails();
  a1.DisplayCandidateDetails();
}