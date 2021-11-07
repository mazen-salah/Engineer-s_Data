import 'package:engineers_data/models/course.dart';
import 'package:engineers_data/models/menu.dart';

const coursesData = [
  Course(
      title: 'Math 3',
      url:
          'https://drive.google.com/drive/folders/1VV5Qdyh7rd0FYgEXRsPULR7_YE4PQwzl',
      id: 'C1',
      image: 'images/Math.jpeg',
      navId: 'Web'),
  Course(
      title: 'Mechanics 3',
      url:
          'https://drive.google.com/drive/folders/1V_1ZUzDJQZvYhnrIPdKcG2z40_5gIVy3',
      id: 'c2',
      image: 'images/Mechanics.jpg',
      navId: 'Web'),
  Course(
      title: 'Circuits 1',
      url:
          'https://drive.google.com/drive/folders/1VRu-UWHQqJ8UdifNpe_6TkmOmyeUvHi7',
      id: 'C3',
      image: 'images/circuits.png',
      navId: 'Web'),
  Course(
      title: 'Information transmission',
      url:
          'https://drive.google.com/drive/folders/1VU-_DZgBtEwS-7PmxPTmrvqORFkgtEB6',
      id: 'c4',
      image: 'images/informationTransmission.jpg',
      navId: 'Web'),
  Course(
      title: 'Energy',
      url:
          'https://drive.google.com/drive/folders/1VSMCle0DraMUjOQQGAWR0ofO1YQHyWyn',
      id: 'C5',
      image: 'images/energy.jpg',
      navId: 'Web'),
  Course(
      title: 'Structure',
      url:
          'https://drive.google.com/drive/folders/1VaeWKDM-bLXat9okGVIVZFC3u9kkSTqi',
      id: 'c6',
      image: 'images/structures.jpg',
      navId: 'Web'),
];

const mainMenuData = [
  Menu(title: 'Courses', navId: 'CoursesPage', url: ''),
  Menu(title: 'Drives', navId: 'DrivesPage', url: ''),
  Menu(title: 'Social media', navId: 'SocialMedia', url: ''),
  Menu(
      title: 'Alexandria Engineering libraries',
      navId: 'Web',
      url: 'https://alexenglibraries.blogspot.com/'),
  Menu(
      title: 'Timetable',
      navId: 'Web',
      url:
          'https://drive.google.com/file/d/1cScJ_0BiN_JTz4Fip5g0GMksVF_L-x4j/view?usp=sharing'),
  Menu(
      title: 'Teams code',
      navId: 'Web',
      url: 'https://justpaste.it/electroTeamsCodes'),
  Menu(
      title: 'Office hours',
      navId: 'Web',
      url: 'https://justpaste.it/electroOfficeHours'),
  Menu(
      title: 'Ibn El Haytham',
      navId: 'Web',
      url: 'https://alexu.mans.edu.eg/static/index.html#'),
];

const drives = [
  Menu(
      title: 'Drive 2025',
      navId: 'Web',
      url:
          'https://drive.google.com/drive/folders/1UEyZSs882otK697hedRQsQ6eLWkG4yBZ'),
  Menu(
      title: 'Drive 2024',
      navId: 'Web',
      url:
          'https://drive.google.com/drive/folders/1vSLjHRBBAOZ5zTuQNmNfQtKADqt_El0z'),
  Menu(
      title: 'Drive 2023',
      navId: 'Web',
      url:
          'https://drive.google.com/drive/folders/14WdRpp_SMEqHXi8-PA-aYzS-N-6-sfEr'),
];
