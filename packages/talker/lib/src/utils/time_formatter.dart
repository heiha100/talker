import 'package:intl/intl.dart';

/// Util for [DateTime] formatting
class TalkerDateTimeFormatter {
  const TalkerDateTimeFormatter(this.date);

  /// Date
  final DateTime date;

  /// Get time and seconds for display in UI
  /// Format ['yyyy.MM.dd HH:mm:s ms']
  String get timeAndSeconds {
    final formatter = DateFormat("yyyy.MM.dd HH:mm:ss");
    return '${formatter.format(date)} ${date.millisecond}ms';
  }
}
