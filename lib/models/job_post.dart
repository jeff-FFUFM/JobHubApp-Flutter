class JobPost {
  String imageAddress;
  String companyName;
  String jobTitle;
  String salary;
  String location;
  String jobDescription;
  String companyDetails;
  Review reviews;

  JobPost({
    required this.imageAddress,
    required this.companyName,
    required this.jobTitle,
    required this.salary,
    required this.location,
    required this.jobDescription,
    required this.companyDetails,
    required this.reviews,
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
