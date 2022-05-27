import 'package:jobs_app/models/job_post.dart';

class PopularJobs {
  List<JobPost> popularJobPosts = [
    JobPost(
      imageAddress: 'images/job_posts/accenture.jpg',
      companyName: 'Accenture',
      jobTitle: 'Flutter Developer',
      salary: '\$109,000/yr',
      location: 'Canberra ACT',
      jobDescription: '''
Strong experience and skills in Mobile app development

Deep understanding of SDK’s, frameworks and app development in any of the following:

Google Flutter app development

Native Android app development (Java / Kotlin is beneficial)

Native iOS app development (Swift / Objective-C is beneficial)

React Native app development
''',
      companyDetails: '''
About Accenture

Accenture is a global professional services company with leading capabilities in digital, cloud and security. Combining unmatched experience and specialized skills across more than 40 industries, we offer Strategy and Consulting, Interactive, Technology and Operations services — all powered by the world’s largest network of Advanced Technology and Intelligent Operations centers. Our 569,000 people deliver on the promise of technology and human ingenuity every day, serving clients in more than 120 countries. We embrace the power of change to create value and shared success for our clients, people, shareholders, partners, and communities. Visit us at www.accenture.com.

At Accenture, our philosophy is anchored in recognising that our people are multi-dimensional. We take an intersectional human approach to create a work environment where all people feel like they can bring their authentic selves to work, every day.

We believe that equality drives innovation. Our commitment to accelerating equality starts at the top with our board and CEO and extends across every part of the company. This comes to life when our people own the equality agenda, making it part of their jobs – every decision, every day – and feel free to speak up and to act.

We do not tolerate discrimination because of differences, such as age, ability, ethnicity, gender, gender identity or expression, religion, or sexual orientation. We want a workplace that is inclusive and diverse to that end we are setting bold goals and taking comprehensive action. To achieve these goals, we collect information that allows us to track the effectiveness of our Inclusion and Diversity programs.
''',
      reviews: Review(
        rating: 5.0,
        title: 'Uni Student Friendly',
        jobTitle: 'Developer',
        employeeType: 'Current Employee',
        date: 'March 26, 2018',
        reviewData: '''Very friendly towards university students/graduates.
Pretty good to students.
I would recommend work there if you are a student!!!!!!!!!!!!!!!!!!!!!!!''',
      ),
    ),
    JobPost(
      imageAddress: 'images/job_posts/accenture.jpg',
      companyName: 'Accenture2',
      jobTitle: 'Flutter Developer',
      salary: '\$109,000/yr',
      location: 'Canberra ACT',
      jobDescription: '''
Strong experience and skills in Mobile app development

Deep understanding of SDK’s, frameworks and app development in any of the following:

Google Flutter app development

Native Android app development (Java / Kotlin is beneficial)

Native iOS app development (Swift / Objective-C is beneficial)

React Native app development
''',
      companyDetails: '''
About Accenture

Accenture is a global professional services company with leading capabilities in digital, cloud and security. Combining unmatched experience and specialized skills across more than 40 industries, we offer Strategy and Consulting, Interactive, Technology and Operations services — all powered by the world’s largest network of Advanced Technology and Intelligent Operations centers. Our 569,000 people deliver on the promise of technology and human ingenuity every day, serving clients in more than 120 countries. We embrace the power of change to create value and shared success for our clients, people, shareholders, partners, and communities. Visit us at www.accenture.com.

At Accenture, our philosophy is anchored in recognising that our people are multi-dimensional. We take an intersectional human approach to create a work environment where all people feel like they can bring their authentic selves to work, every day.

We believe that equality drives innovation. Our commitment to accelerating equality starts at the top with our board and CEO and extends across every part of the company. This comes to life when our people own the equality agenda, making it part of their jobs – every decision, every day – and feel free to speak up and to act.

We do not tolerate discrimination because of differences, such as age, ability, ethnicity, gender, gender identity or expression, religion, or sexual orientation. We want a workplace that is inclusive and diverse to that end we are setting bold goals and taking comprehensive action. To achieve these goals, we collect information that allows us to track the effectiveness of our Inclusion and Diversity programs.
''',
      reviews: Review(
        rating: 5.0,
        title: 'Uni Student Friendly',
        jobTitle: 'Developer',
        employeeType: 'Current Employee',
        date: 'March 26, 2018',
        reviewData: '''Very friendly towards university students/graduates.
Pretty good to students.
I would recommend work there if you are a student!!!!!!!!!!!!!!!!!!!!!!!''',
      ),
    ),
  ];

  List<JobPost> get getPopularJobPosts {
    return popularJobPosts;
  }
}

class Jobs {
  List<JobPost> recentJobPosts = [
    JobPost(
      imageAddress: 'images/job_posts/accenture.jpg',
      companyName: 'Accenture',
      jobTitle: 'Flutter Developer',
      salary: '\$109,000/yr',
      location: 'Canberra ACT',
      jobDescription: '''
Strong experience and skills in Mobile app development

Deep understanding of SDK’s, frameworks and app development in any of the following:

Google Flutter app development

Native Android app development (Java / Kotlin is beneficial)

Native iOS app development (Swift / Objective-C is beneficial)

React Native app development
''',
      companyDetails: '''
About Accenture

Accenture is a global professional services company with leading capabilities in digital, cloud and security. Combining unmatched experience and specialized skills across more than 40 industries, we offer Strategy and Consulting, Interactive, Technology and Operations services — all powered by the world’s largest network of Advanced Technology and Intelligent Operations centers. Our 569,000 people deliver on the promise of technology and human ingenuity every day, serving clients in more than 120 countries. We embrace the power of change to create value and shared success for our clients, people, shareholders, partners, and communities. Visit us at www.accenture.com.

At Accenture, our philosophy is anchored in recognising that our people are multi-dimensional. We take an intersectional human approach to create a work environment where all people feel like they can bring their authentic selves to work, every day.

We believe that equality drives innovation. Our commitment to accelerating equality starts at the top with our board and CEO and extends across every part of the company. This comes to life when our people own the equality agenda, making it part of their jobs – every decision, every day – and feel free to speak up and to act.

We do not tolerate discrimination because of differences, such as age, ability, ethnicity, gender, gender identity or expression, religion, or sexual orientation. We want a workplace that is inclusive and diverse to that end we are setting bold goals and taking comprehensive action. To achieve these goals, we collect information that allows us to track the effectiveness of our Inclusion and Diversity programs.
''',
      reviews: Review(
        rating: 5.0,
        title: 'Uni Student Friendly',
        jobTitle: 'Developer',
        employeeType: 'Current Employee',
        date: 'March 26, 2018',
        reviewData: '''Very friendly towards university students/graduates.
Pretty good to students.
I would recommend work there if you are a student!!!!!!!!!!!!!!!!!!!!!!!''',
      ),
    ),
    JobPost(
      imageAddress: 'images/job_posts/accenture.jpg',
      companyName: 'Accenture2',
      jobTitle: 'Flutter Developer',
      salary: '\$109,000/yr',
      location: 'Canberra ACT',
      jobDescription: '''
Strong experience and skills in Mobile app development

Deep understanding of SDK’s, frameworks and app development in any of the following:

Google Flutter app development

Native Android app development (Java / Kotlin is beneficial)

Native iOS app development (Swift / Objective-C is beneficial)

React Native app development
''',
      companyDetails: '''
About Accenture

Accenture is a global professional services company with leading capabilities in digital, cloud and security. Combining unmatched experience and specialized skills across more than 40 industries, we offer Strategy and Consulting, Interactive, Technology and Operations services — all powered by the world’s largest network of Advanced Technology and Intelligent Operations centers. Our 569,000 people deliver on the promise of technology and human ingenuity every day, serving clients in more than 120 countries. We embrace the power of change to create value and shared success for our clients, people, shareholders, partners, and communities. Visit us at www.accenture.com.

At Accenture, our philosophy is anchored in recognising that our people are multi-dimensional. We take an intersectional human approach to create a work environment where all people feel like they can bring their authentic selves to work, every day.

We believe that equality drives innovation. Our commitment to accelerating equality starts at the top with our board and CEO and extends across every part of the company. This comes to life when our people own the equality agenda, making it part of their jobs – every decision, every day – and feel free to speak up and to act.

We do not tolerate discrimination because of differences, such as age, ability, ethnicity, gender, gender identity or expression, religion, or sexual orientation. We want a workplace that is inclusive and diverse to that end we are setting bold goals and taking comprehensive action. To achieve these goals, we collect information that allows us to track the effectiveness of our Inclusion and Diversity programs.
''',
      reviews: Review(
        rating: 5.0,
        title: 'Uni Student Friendly',
        jobTitle: 'Developer',
        employeeType: 'Current Employee',
        date: 'March 26, 2018',
        reviewData: '''Very friendly towards university students/graduates.
Pretty good to students.
I would recommend work there if you are a student!!!!!!!!!!!!!!!!!!!!!!!''',
      ),
    ),
    JobPost(
      imageAddress: 'images/job_posts/accenture.jpg',
      companyName: 'Accenture3',
      jobTitle: 'Flutter Developer',
      salary: '\$109,000/yr',
      location: 'Canberra ACT',
      jobDescription: '''
Strong experience and skills in Mobile app development

Deep understanding of SDK’s, frameworks and app development in any of the following:

Google Flutter app development

Native Android app development (Java / Kotlin is beneficial)

Native iOS app development (Swift / Objective-C is beneficial)

React Native app development
''',
      companyDetails: '''
About Accenture

Accenture is a global professional services company with leading capabilities in digital, cloud and security. Combining unmatched experience and specialized skills across more than 40 industries, we offer Strategy and Consulting, Interactive, Technology and Operations services — all powered by the world’s largest network of Advanced Technology and Intelligent Operations centers. Our 569,000 people deliver on the promise of technology and human ingenuity every day, serving clients in more than 120 countries. We embrace the power of change to create value and shared success for our clients, people, shareholders, partners, and communities. Visit us at www.accenture.com.

At Accenture, our philosophy is anchored in recognising that our people are multi-dimensional. We take an intersectional human approach to create a work environment where all people feel like they can bring their authentic selves to work, every day.

We believe that equality drives innovation. Our commitment to accelerating equality starts at the top with our board and CEO and extends across every part of the company. This comes to life when our people own the equality agenda, making it part of their jobs – every decision, every day – and feel free to speak up and to act.

We do not tolerate discrimination because of differences, such as age, ability, ethnicity, gender, gender identity or expression, religion, or sexual orientation. We want a workplace that is inclusive and diverse to that end we are setting bold goals and taking comprehensive action. To achieve these goals, we collect information that allows us to track the effectiveness of our Inclusion and Diversity programs.
''',
      reviews: Review(
        rating: 5.0,
        title: 'Uni Student Friendly',
        jobTitle: 'Developer',
        employeeType: 'Current Employee',
        date: 'March 26, 2018',
        reviewData: '''Very friendly towards university students/graduates.
Pretty good to students.
I would recommend work there if you are a student!!!!!!!!!!!!!!!!!!!!!!!''',
      ),
    ),
  ];

  List<JobPost> get getRecentJobPosts {
    return recentJobPosts;
  }
}
