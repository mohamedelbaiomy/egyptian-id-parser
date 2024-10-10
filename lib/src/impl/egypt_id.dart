part of 'impl.dart';

class EgyptID extends IdParser {
  @override
  String extractBirthDate(String id) {
    try {
      String year = id.substring(1, 3);
      String month = id.substring(3, 5);
      String day = id.substring(5, 7);

      // إضافة 1900 أو 2000 بناءً على الجنس
      int genderCode = int.parse(id[0]);
      int fullYear =
          (genderCode < 3) ? 1900 + int.parse(year) : 2000 + int.parse(year);

      return '$fullYear-$month-$day';
    } catch (e) {
      return 'error';
    }
  }

  @override
  String extractGender(String id) {
    try {
      int genderCode = int.parse(id[12]);
      return (genderCode % 2 == 0) ? 'أنثى' : 'ذكر';
    } catch (e) {
      return 'error';
    }
  }

  @override
  String extractGovernorate(String id) {
    try {
      String governorateCode = id.substring(7, 9);
      Map<String, String> governorates = {
        '01': 'القاهرة',
        '02': 'الإسكندرية',
        '03': 'بورسعيد',
        '04': 'السويس',
        '11': 'دمياط',
        '12': 'الدقهليه',
        '13': 'الشرقيه',
        '14': 'القليوبية',
        '15': 'كفر الشيخ',
        '16': 'الغربية',
        '17': 'المنوفيه',
        '18': 'البحيره',
        '19': 'الاسماعيلية',
        '21': 'الجيزه',
        '22': 'بني سويف',
        '23': 'الفيوم',
        '24': 'المنيا',
        '25': 'اسيوط',
        '26': 'سوهاج',
        '27': 'قنا',
        '28': 'اسوان',
        '29': 'الأقصر',
        '31': 'البحر الاحمر',
        '32': 'الوادى الجديد',
        '33': 'مطروح',
        '34': 'شمال سيناء',
        '35': 'جنوب سيناء',
        '88': 'خارج مصر',
      };

      return governorates[governorateCode] ?? 'محافظة غير معروفة';
    } catch (e) {
      return 'error';
    }
  }

  @override
  Age calculateAge(String id) {
    try {
      DateTime birthDate = DateTime.parse(extractBirthDate(id));
      DateTime today = DateTime.now();

      int years = today.year - birthDate.year;
      int months = today.month - birthDate.month;
      int days = today.day - birthDate.day;

      // Adjust for negative values
      if (days < 0) {
        months--;
        int previousMonth = today.month == 1 ? 12 : today.month - 1;
        days += DateTime(today.year, previousMonth + 1, 0).day;
      }
      if (months < 0) {
        years--;
        months += 12;
      }

      return Age(years: years, months: months, days: days);
    } catch (e) {
      return Age(years: 0, months: 0, days: 0);
    }
  }
}
