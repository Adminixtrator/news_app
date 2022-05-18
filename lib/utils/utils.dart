abstract class Utils {

  static String subS(String i, [int j = 30]) => i.length < j ? i : i.substring(0, j) + '...';
  static String tab(int n) => '\t' * n;
  static String yesterday = DateTime.now().toString().split(' ').first;

  static String timeAgoSinceDate(String dateString) {
    final date = DateTime.parse(dateString).toLocal();
    final date2 = DateTime.now().toLocal();
    final difference = date2.difference(date);

    if (difference.inSeconds < 5) {
      return 'now';
    } else if (difference.inSeconds < 60) {
      return '${difference.inSeconds} secs ago';
    } else if (difference.inMinutes <= 1) {
      return '1 min ago';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} mins ago';
    } else if (difference.inHours <= 1) {
      return '1 hour ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hours ago';
    } else if (difference.inDays <= 1) {
      return '1 day ago';
    } else if (difference.inDays < 6) {
      return '${difference.inDays} days ago';
    } else if ((difference.inDays / 7).ceil() <= 1) {
      return '1 week ago';
    } else if ((difference.inDays / 7).ceil() < 4) {
      return '${(difference.inDays / 7).ceil()} weeks ago';
    } else if ((difference.inDays / 30).ceil() <= 1) {
      return '1 month ago';
    } else if ((difference.inDays / 30).ceil() < 30) {
      return '${(difference.inDays / 30).ceil()} months ago';
    } else if ((difference.inDays / 365).ceil() <= 1) {
      return '1 year ago';
    }
    return '${(difference.inDays / 365).floor()} years ago';
  }

}