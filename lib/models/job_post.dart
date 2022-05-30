class JobPost {
  String imageAddress;
  String companyName;
  String jobTitle;
  String salary;
  String location;
  List<String> jobDescription;
  List<String> companyDetails;
  List<String> reviews;
  String jobType;

  JobPost({
    required this.imageAddress,
    required this.companyName,
    required this.jobTitle,
    required this.salary,
    required this.location,
    required this.jobDescription,
    required this.companyDetails,
    required this.reviews,
    required this.jobType,
  });
}

class Review {
  double rating;
  String title;
  String jobTitle;
  String employeeType;
  String date;
  String reviewData;
  Review({
    required this.rating,
    required this.title,
    required this.jobTitle,
    required this.employeeType,
    required this.date,
    required this.reviewData,
  });
}
