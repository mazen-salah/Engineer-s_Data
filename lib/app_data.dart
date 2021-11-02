import 'package:engineers_data/models/course.dart';
import 'package:engineers_data/models/menu.dart';

const coursesData = [
  Course(
      title: 'Math 3',
      link:
          'https://drive.google.com/drive/folders/1VV5Qdyh7rd0FYgEXRsPULR7_YE4PQwzl',
      id: 'C1',
      image: 'images/Math.jpeg',
      navId: ''),
  Course(
      title: 'Mechanics 3',
      link:
          'https://drive.google.com/drive/folders/1V_1ZUzDJQZvYhnrIPdKcG2z40_5gIVy3',
      id: 'c2',
      image: 'images/Mechanics.jpg',
      navId: ''),
  Course(
      title: 'Circuits 1',
      link:
          'https://drive.google.com/drive/folders/1VRu-UWHQqJ8UdifNpe_6TkmOmyeUvHi7',
      id: 'C3',
      image: 'images/circuits.png',
      navId: ''),
  Course(
      title: 'Information transmission',
      link:
          'https://drive.google.com/drive/folders/1VU-_DZgBtEwS-7PmxPTmrvqORFkgtEB6',
      id: 'c4',
      image: 'images/informationTransmission.jpg',
      navId: ''),
  Course(
      title: 'Energy',
      link:
          'https://drive.google.com/drive/folders/1VSMCle0DraMUjOQQGAWR0ofO1YQHyWyn',
      id: 'C5',
      image: 'images/energy.jpg',
      navId: ''),
  Course(
      title: 'Structure',
      link:
          'https://drive.google.com/drive/folders/1VaeWKDM-bLXat9okGVIVZFC3u9kkSTqi',
      id: 'c6',
      image: 'images/structures.jpg',
      navId: ''),
];

const mainMenuData = [
  Menu(title: 'Courses', navId: 'CoursesPage'),
  Menu(title: 'Drives', navId: 'DrivesPage'),
  Menu(title: 'Social media', navId: 'SocialMedia'),
  Menu(title: 'Alexandria Engineering libraries', navId: 'Library'),
  Menu(title: 'Timetable', navId: 'TimeTable'),
  Menu(title: 'Teams code', navId: 'TeamsCodes'),
  Menu(title: 'Office hours', navId: 'OfficeHours'),
];

const drives = [
  Menu(title: 'Drive 2025', navId: 'https://drive.google.com/drive/folders/1UBVFdQgpjOWPEZdGtdW7_8YdHld-y3ur'),
  Menu(title: 'Drive 2024', navId: 'https://drive.google.com/drive/folders/1vSLjHRBBAOZ5zTuQNmNfQtKADqt_El0z'),
  Menu(title: 'Drive 2023', navId: 'https://drive.google.com/drive/folders/14WdRpp_SMEqHXi8-PA-aYzS-N-6-sfEr'),
];
