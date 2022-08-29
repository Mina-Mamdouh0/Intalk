class SubjectModel{
  final String image;
  final String name;

  SubjectModel({required this.image,required  this.name});
}

List<SubjectModel> subjectList=[
  SubjectModel(image: 'assets/images/subject/arabic.png', name: 'Arabic'),
  SubjectModel(image: 'assets/images/subject/math.png', name: 'Math'),
  SubjectModel(image: 'assets/images/subject/biology.png', name: 'Biology'),
  SubjectModel(image: 'assets/images/subject/chimestry.png', name: 'Chimestry'),
  SubjectModel(image: 'assets/images/subject/computer.png', name: 'Computer'),
  SubjectModel(image: 'assets/images/subject/geography.png', name: 'Geography'),
  SubjectModel(image: 'assets/images/subject/geology.png', name: 'Geology'),
  SubjectModel(image: 'assets/images/subject/history.png', name: 'History'),
  SubjectModel(image: 'assets/images/subject/math.png', name: 'Math'),
  SubjectModel(image: 'assets/images/subject/math-1.png', name: 'Math1'),
  SubjectModel(image: 'assets/images/subject/math-2.png', name: 'Math2'),
  SubjectModel(image: 'assets/images/subject/math-3.png', name: 'Math3'),
  SubjectModel(image: 'assets/images/subject/physics.png', name: 'Physics'),
  SubjectModel(image: 'assets/images/subject/psychology.png', name: 'Psychology'),
];

class NewsGames{
  final String image;
  final String title;
  final String subTitle;

  NewsGames({required this.image,required this.title,required this.subTitle});
}

List<NewsGames> newsGamesList=[
  NewsGames(image: 'assets/images/newsgames/discussion.png', title: 'Discussion', subTitle: 'Test your Academic achievement in all subjects every 5 days.'),
  NewsGames(image: 'assets/images/newsgames/day.png', title: 'Discussion', subTitle: 'Test your Academic achievement in all subjects every 5 days.'),
  NewsGames(image: 'assets/images/newsgames/change.png', title: 'Discussion', subTitle: 'Test your Academic achievement in all subjects every 5 days.'),
];