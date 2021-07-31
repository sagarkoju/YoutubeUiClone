class User {
  final String username;
  final String profileImageUrl;
  final String subscribers;

  const User({
    required this.username,
    required this.profileImageUrl,
    required this.subscribers,
  });
}

const User currentUser = User(
  username: 'Sagar Koju',
  profileImageUrl:
      'https://scontent.fktm3-1.fna.fbcdn.net/v/t1.6435-9/169393807_3769730173146153_1447273600101580803_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=CfDuSD2scT4AX-fN_mY&_nc_ht=scontent.fktm3-1.fna&oh=d7c1634c292b6384f36cad3ff7169df9&oe=612AEDFF',
  subscribers: '450',
);

class Video {
  final String id;
  final User author;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final DateTime timestamp;
  final String viewCount;
  final String likes;
  final String dislikes;

  const Video({
    required this.id,
    required this.author,
    required this.title,
    required this.thumbnailUrl,
    required this.duration,
    required this.timestamp,
    required this.viewCount,
    required this.likes,
    required this.dislikes,
  });
}

final List<Video> videos = [
  Video(
    id: 'x606y4QWrxo',
    author: currentUser,
    title: 'Hive database in flutter with read and write method',
    thumbnailUrl: 'assets/sagar.jpg',
    duration: '16:20',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '10K',
    likes: '958',
    dislikes: '4',
  ),
  Video(
    id: 'x606y4QWrxo',
    author: currentUser,
    title: 'Fix the Bottom overflow error while opening the keyboard',
    thumbnailUrl: 'assets/sagar1.jpg',
    duration: '8:20',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '10K',
    likes: '958',
    dislikes: '4',
  ),
  Video(
    id: 'x606y4QWrxo',
    author: currentUser,
    title: 'How to use the Hex code and RGBO color',
    thumbnailUrl: 'assets/sagar2.jpg',
    duration: '45:20',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '10K',
    likes: '958',
    dislikes: '4',
  ),
  Video(
    author: currentUser,
    id: 'vrPk6LB9bjo',
    title:
        'Bottom Sheet in the Flutter',
    thumbnailUrl: 'assets/sagar3.jpg',
    duration: '22:06',
    timestamp: DateTime(2021, 2, 26),
    viewCount: '8K',
    likes: '485',
    dislikes: '8',
  ),
  Video(
    id: 'ilX5hnH8XoI',
    author: currentUser,
    title: 'How to convert the app into null safety',
    thumbnailUrl: 'assets/sagar4.jpg',
    duration: '10:53',
    timestamp: DateTime(2020, 7, 12),
    viewCount: '18K',
    likes: '1k',
    dislikes: '4',
  ),
  Video(
    id: 'ilX5hnH8XoI',
    author: currentUser,
    title: 'How to Create a dice roller game in Flutter',
    thumbnailUrl: 'assets/sagar8.jpg',
    duration: '10:53',
    timestamp: DateTime(2020, 7, 12),
    viewCount: '18K',
    likes: '1k',
    dislikes: '4',
  ),
  Video(
    id: 'ilX5hnH8XoI',
    author: currentUser,
    title: 'Introduction Deno in Nepali',
    thumbnailUrl: 'assets/sagar9.jpg',
    duration: '10:53',
    timestamp: DateTime(2020, 7, 12),
    viewCount: '18K',
    likes: '1k',
    dislikes: '4',
  ),
];

final List<Video> suggestedVideos = [
  Video(
    id: 'rJKN_880b-M',
    author: currentUser,
    title: 'Top 3 Extension in Flutter',
    thumbnailUrl: 'assets/sagar5.jpg',
    duration: '1:13:15',
    timestamp: DateTime(2020, 8, 22),
    viewCount: '32K',
    likes: '1.9k',
    dislikes: '7',
  ),
  Video(
    id: 'HvLb5gdUfDE',
    author: currentUser,
    title: 'WillPopscope widget in Flutter',
    thumbnailUrl: 'assets/sagar6.jpg',
    duration: '1:52:12',
    timestamp: DateTime(2020, 8, 7),
    viewCount: '190K',
    likes: '9.3K',
    dislikes: '45',
  ),
  Video(
    id: 'h-igXZCCrrc',
    author: currentUser,
    title: 'Introduction Getx in Nepali',
    thumbnailUrl: 'assets/sagar7.jpg',
    duration: '03:58',
    timestamp: DateTime(2019, 10, 17),
    viewCount: '358K',
    likes: '20k',
    dislikes: '85',
  ),
];

var imagelist = [
  'assets/sagar.jpg',
  'assets/sagar.jpg',
  'assets/sagar.jpg',
  'assets/sagar.jpg',
  'assets/sagar.jpg',
];
