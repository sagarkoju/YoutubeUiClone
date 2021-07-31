import 'package:flutter/material.dart';
import 'package:youubeui/Data/data.dart';
import 'package:timeago/timeago.dart' as timeago;

class VideoInfo extends StatelessWidget {
  const VideoInfo({Key? key, required this.video}) : super(key: key);
  final Video video;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            video.title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            ' ${video.viewCount} views . ${timeago.format(video.timestamp)}',
            style: Theme.of(context).textTheme.caption!.copyWith(
                  fontSize: 14,
                ),
          ),
          const Divider(),
          ActionRow(video: video),
          const Divider(),
          AutherInfo(user: video.author),
          const Divider(),
        ],
      ),
    );
  }
}

class ActionRow extends StatelessWidget {
  const ActionRow({Key? key, required this.video}) : super(key: key);
  final Video video;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildAction(context, Icons.thumb_up_alt_outlined, video.likes),
        _buildAction(context, Icons.thumb_down_alt_outlined, video.dislikes),
        _buildAction(context, Icons.reply_outlined, 'Share'),
        _buildAction(context, Icons.download_outlined, 'Download'),
        _buildAction(context, Icons.library_add_outlined, 'Save'),
      ],
    );
  }

  _buildAction(BuildContext context, IconData icon, String label) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          Text(label,
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}

class AutherInfo extends StatelessWidget {
  const AutherInfo({Key? key, required this.user}) : super(key: key);
  final User user;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Row(
        children: [
          CircleAvatar(
            foregroundImage: NetworkImage(user.profileImageUrl),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  user.username,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 16,
                      ),
                ),
                Text(
                  '${user.subscribers} subscribers',
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        fontSize: 14,
                      ),
                )
              ],
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'SUBSCRIBER',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.red,
                    ),
              ))
        ],
      ),
    );
  }
}
