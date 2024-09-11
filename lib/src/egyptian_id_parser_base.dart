class EgyptianIdParserBase {
  static String extractBirthDate(String id) {
    try {
      String year = id.substring(1, 3); // سنتين
      String month = id.substring(3, 5); // شهرين
      String day = id.substring(5, 7); // يومين

      // إضافة 1900 أو 2000 بناءً على الجنس
      int genderCode = int.parse(id[0]);
      int fullYear =
          (genderCode < 3) ? 1900 + int.parse(year) : 2000 + int.parse(year);

      return '$fullYear-$month-$day'; // تنسيق للتاريخ
    } catch (e) {
      return 'error';
    }
  }

  static String extractGovernorate(String id) {
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
      };

      return governorates[governorateCode] ?? 'محافظة غير معروفة';
    } catch (e) {
      return 'error';
    }
  }

  static String extractGender(String id) {
    try {
      int genderCode = int.parse(id[0]);
      return (genderCode % 2 == 0) ? 'أنثى' : 'ذكر';
    } catch (e) {
      return 'error';
    }
  }

  static int calculateYears(String id) {
    try {
      DateTime birthDate = DateTime.parse(extractBirthDate(id));
      DateTime today = DateTime.now();
      int years = today.year - birthDate.year;

      // التحقق من الأشهر والأيام
      if (today.month < birthDate.month ||
          (today.month == birthDate.month && today.day < birthDate.day)) {
        years--;
      }

      return years;
    } catch (e) {
      return 0;
    }
  }

  static int calculateMonths(String id) {
    try {
      DateTime birthDate = DateTime.parse(extractBirthDate(id));
      DateTime today = DateTime.now();
      int months = today.month - birthDate.month;

      // التحقق من السنوات
      if (today.day < birthDate.day) {
        months--;
      }

      if (months < 0) {
        months += 12;
      }

      return months;
    } catch (e) {
      return 0;
    }
  }

  static int calculateDays(String id) {
    try {
      DateTime birthDate = DateTime.parse(extractBirthDate(id));
      DateTime today = DateTime.now();
      int days = today.day - birthDate.day;

      // التحقق من الأشهر
      if (days < 0) {
        // الحصول على عدد الأيام في الشهر السابق
        int lastMonth = today.month == 1 ? 12 : today.month - 1;
        int daysInLastMonth = DateTime(today.year, lastMonth + 1, 0).day;
        days += daysInLastMonth;
      }

      return days;
    } catch (e) {
      return 0;
    }
  }
}
