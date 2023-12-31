import '../../features/home/data/models/trip_model.dart';
import '../domain/entities/date_interval/date_interval.dart';
import '../domain/entities/trip_type/trip_type.dart';

class AppConstantData {
  static const defaultTripType = TripType(
    title: 'Кэмпинги',
    image: 'assets/icons/camping.svg',
  );

  static const List<TripType> tripTypes = [
    TripType(
      title: 'Кэмпинги',
      image: 'assets/icons/camping.svg',
    ),
    TripType(
      title: 'Глэмпинги ',
      image: 'assets/icons/glamping.svg',
    ),
    TripType(
      title: 'Базы отдыха',
      image: 'assets/icons/rest_base.svg',
    ),
    TripType(
      title: 'Шале',
      image: 'assets/icons/chalet.svg',
    ),
  ];

  static final List<TripModel> trips = [
    TripModel(
      id: '1',
      title: 'Глэминг Караидель',
      description:
          'Единственный эко-отель в Башкирии и на всём Южном Урале, где можно пожить в настоящих башкирских юртах!\n\nВсем, кто пожелает разделить с нами радость жизни в гармонии с природой. Всем, для кого Природа – это Великая Тайна!\n\nЭтнотуристический парк INAYA (иная) на Нугуше - единственный эко-отель в Башкирии и на всём Южном Урале, где можно пожить в настоящих башкирских юртах!\n\nМы ждем вас в гости с семьей или друзьями! Юрты, как и в древние времена, изготовлены из войлока и дерева, а для более комфортного проживания оборудованы печью-камином и электричеством. Они расположены на живописном берегу Нугушского водохранилища, вдали от повседневных забот, городского шума и суеты. Опыт проживания в юртах - это идеальный способ погрузиться за короткий срок в быт и культуру местного кочевого этноса - башкир.',
      locationName: 'Республика Башкортостан, Мелеузовский район, д. Сергеевка',
      images: [
        'https://images.unsplash.com/photo-1593053272490-e0ed6d6a42c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1516402707257-787c50fc3898?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1536854310359-ccc07f5e72de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1508974462591-3c124867fdf8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1172&q=80',
        'https://images.unsplash.com/photo-1599056407101-7c557a4a0144?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80',
        'https://images.unsplash.com/photo-1593534560771-4f0fc0cabd94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80',
        'https://images.unsplash.com/photo-1632367294096-4e77d53c4ae9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80'
      ],
      dateIntervals: [
        DateInterval(
          start: DateTime(2023, 6, 19),
          end: DateTime(2023, 6, 23),
        ),
        DateInterval(
          start: DateTime(2023, 6, 27),
          end: DateTime(2023, 6, 30),
        ),
        DateInterval(
          start: DateTime(2023, 7, 5),
          end: DateTime(2023, 7, 21),
        ),
        DateInterval(
          start: DateTime(2023, 8, 2),
          end: DateTime(2023, 8, 20),
        ),
      ],
      minCost: 15000,
      minMembersCount: 6,
      maxMembersCount: 12,
      distance: 888,
    ),
    TripModel(
      id: '2',
      title: 'Глэминг Караидель',
      description:
          'Единственный эко-отель в Башкирии и на всём Южном Урале, где можно пожить в настоящих башкирских юртах!\n\nВсем, кто пожелает разделить с нами радость жизни в гармонии с природой. Всем, для кого Природа – это Великая Тайна!\n\nЭтнотуристический парк INAYA (иная) на Нугуше - единственный эко-отель в Башкирии и на всём Южном Урале, где можно пожить в настоящих башкирских юртах!\n\nМы ждем вас в гости с семьей или друзьями! Юрты, как и в древние времена, изготовлены из войлока и дерева, а для более комфортного проживания оборудованы печью-камином и электричеством. Они расположены на живописном берегу Нугушского водохранилища, вдали от повседневных забот, городского шума и суеты. Опыт проживания в юртах - это идеальный способ погрузиться за короткий срок в быт и культуру местного кочевого этноса - башкир.',
      locationName: 'Республика Башкортостан, Мелеузовский район, д. Сергеевка',
      images: [
        'https://images.unsplash.com/photo-1593053272490-e0ed6d6a42c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1516402707257-787c50fc3898?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1536854310359-ccc07f5e72de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1508974462591-3c124867fdf8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1172&q=80',
        'https://images.unsplash.com/photo-1599056407101-7c557a4a0144?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80',
        'https://images.unsplash.com/photo-1593534560771-4f0fc0cabd94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80',
        'https://images.unsplash.com/photo-1632367294096-4e77d53c4ae9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80'
      ],
      dateIntervals: [
        DateInterval(
          start: DateTime(2023, 6, 19),
          end: DateTime(2023, 6, 23),
        ),
        DateInterval(
          start: DateTime(2023, 6, 27),
          end: DateTime(2023, 6, 30),
        ),
        DateInterval(
          start: DateTime(2023, 7, 5),
          end: DateTime(2023, 7, 21),
        ),
        DateInterval(
          start: DateTime(2023, 8, 2),
          end: DateTime(2023, 8, 20),
        ),
      ],
      minCost: 15000,
      minMembersCount: 6,
      maxMembersCount: 12,
      distance: 888,
    ),
    TripModel(
      id: '3',
      title: 'Глэминг Караидель',
      description:
          'Единственный эко-отель в Башкирии и на всём Южном Урале, где можно пожить в настоящих башкирских юртах!\n\nВсем, кто пожелает разделить с нами радость жизни в гармонии с природой. Всем, для кого Природа – это Великая Тайна!\n\nЭтнотуристический парк INAYA (иная) на Нугуше - единственный эко-отель в Башкирии и на всём Южном Урале, где можно пожить в настоящих башкирских юртах!\n\nМы ждем вас в гости с семьей или друзьями! Юрты, как и в древние времена, изготовлены из войлока и дерева, а для более комфортного проживания оборудованы печью-камином и электричеством. Они расположены на живописном берегу Нугушского водохранилища, вдали от повседневных забот, городского шума и суеты. Опыт проживания в юртах - это идеальный способ погрузиться за короткий срок в быт и культуру местного кочевого этноса - башкир.',
      locationName: 'Республика Башкортостан, Мелеузовский район, д. Сергеевка',
      images: [
        'https://images.unsplash.com/photo-1593053272490-e0ed6d6a42c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1516402707257-787c50fc3898?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1536854310359-ccc07f5e72de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1508974462591-3c124867fdf8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1172&q=80',
        'https://images.unsplash.com/photo-1599056407101-7c557a4a0144?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80',
        'https://images.unsplash.com/photo-1593534560771-4f0fc0cabd94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80',
        'https://images.unsplash.com/photo-1632367294096-4e77d53c4ae9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80'
      ],
      dateIntervals: [
        DateInterval(
          start: DateTime(2023, 6, 19),
          end: DateTime(2023, 6, 23),
        ),
        DateInterval(
          start: DateTime(2023, 6, 27),
          end: DateTime(2023, 6, 30),
        ),
        DateInterval(
          start: DateTime(2023, 7, 5),
          end: DateTime(2023, 7, 21),
        ),
        DateInterval(
          start: DateTime(2023, 8, 2),
          end: DateTime(2023, 8, 20),
        ),
      ],
      minCost: 15000,
      minMembersCount: 6,
      maxMembersCount: 12,
      distance: 888,
    ),
    TripModel(
      id: '4',
      title: 'Глэминг Караидель',
      description:
          'Единственный эко-отель в Башкирии и на всём Южном Урале, где можно пожить в настоящих башкирских юртах!\n\nВсем, кто пожелает разделить с нами радость жизни в гармонии с природой. Всем, для кого Природа – это Великая Тайна!\n\nЭтнотуристический парк INAYA (иная) на Нугуше - единственный эко-отель в Башкирии и на всём Южном Урале, где можно пожить в настоящих башкирских юртах!\n\nМы ждем вас в гости с семьей или друзьями! Юрты, как и в древние времена, изготовлены из войлока и дерева, а для более комфортного проживания оборудованы печью-камином и электричеством. Они расположены на живописном берегу Нугушского водохранилища, вдали от повседневных забот, городского шума и суеты. Опыт проживания в юртах - это идеальный способ погрузиться за короткий срок в быт и культуру местного кочевого этноса - башкир.',
      locationName: 'Республика Башкортостан, Мелеузовский район, д. Сергеевка',
      images: [
        'https://images.unsplash.com/photo-1593053272490-e0ed6d6a42c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1516402707257-787c50fc3898?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1536854310359-ccc07f5e72de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1508974462591-3c124867fdf8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1172&q=80',
        'https://images.unsplash.com/photo-1599056407101-7c557a4a0144?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80',
        'https://images.unsplash.com/photo-1593534560771-4f0fc0cabd94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80',
        'https://images.unsplash.com/photo-1632367294096-4e77d53c4ae9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80'
      ],
      dateIntervals: [
        DateInterval(
          start: DateTime(2023, 6, 19),
          end: DateTime(2023, 6, 23),
        ),
        DateInterval(
          start: DateTime(2023, 6, 27),
          end: DateTime(2023, 6, 30),
        ),
        DateInterval(
          start: DateTime(2023, 7, 5),
          end: DateTime(2023, 7, 21),
        ),
        DateInterval(
          start: DateTime(2023, 8, 2),
          end: DateTime(2023, 8, 20),
        ),
      ],
      minCost: 15000,
      minMembersCount: 6,
      maxMembersCount: 12,
      distance: 888,
    ),
    TripModel(
      id: '5',
      title: 'Глэминг Караидель',
      description:
          'Единственный эко-отель в Башкирии и на всём Южном Урале, где можно пожить в настоящих башкирских юртах!\n\nВсем, кто пожелает разделить с нами радость жизни в гармонии с природой. Всем, для кого Природа – это Великая Тайна!\n\nЭтнотуристический парк INAYA (иная) на Нугуше - единственный эко-отель в Башкирии и на всём Южном Урале, где можно пожить в настоящих башкирских юртах!\n\nМы ждем вас в гости с семьей или друзьями! Юрты, как и в древние времена, изготовлены из войлока и дерева, а для более комфортного проживания оборудованы печью-камином и электричеством. Они расположены на живописном берегу Нугушского водохранилища, вдали от повседневных забот, городского шума и суеты. Опыт проживания в юртах - это идеальный способ погрузиться за короткий срок в быт и культуру местного кочевого этноса - башкир.',
      locationName: 'Республика Башкортостан, Мелеузовский район, д. Сергеевка',
      images: [
        'https://images.unsplash.com/photo-1593053272490-e0ed6d6a42c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1516402707257-787c50fc3898?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1536854310359-ccc07f5e72de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1508974462591-3c124867fdf8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1172&q=80',
        'https://images.unsplash.com/photo-1599056407101-7c557a4a0144?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80',
        'https://images.unsplash.com/photo-1593534560771-4f0fc0cabd94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80',
        'https://images.unsplash.com/photo-1632367294096-4e77d53c4ae9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80'
      ].reversed.toList(),
      dateIntervals: [
        DateInterval(
          start: DateTime(2023, 6, 19),
          end: DateTime(2023, 6, 23),
        ),
        DateInterval(
          start: DateTime(2023, 6, 27),
          end: DateTime(2023, 6, 30),
        ),
        DateInterval(
          start: DateTime(2023, 7, 5),
          end: DateTime(2023, 7, 21),
        ),
        DateInterval(
          start: DateTime(2023, 8, 2),
          end: DateTime(2023, 8, 20),
        ),
      ],
      minCost: 15000,
      minMembersCount: 6,
      maxMembersCount: 12,
      distance: 888,
    ),
    TripModel(
      id: '6',
      title: 'Глэминг Караидель',
      description:
          'Единственный эко-отель в Башкирии и на всём Южном Урале, где можно пожить в настоящих башкирских юртах!\n\nВсем, кто пожелает разделить с нами радость жизни в гармонии с природой. Всем, для кого Природа – это Великая Тайна!\n\nЭтнотуристический парк INAYA (иная) на Нугуше - единственный эко-отель в Башкирии и на всём Южном Урале, где можно пожить в настоящих башкирских юртах!\n\nМы ждем вас в гости с семьей или друзьями! Юрты, как и в древние времена, изготовлены из войлока и дерева, а для более комфортного проживания оборудованы печью-камином и электричеством. Они расположены на живописном берегу Нугушского водохранилища, вдали от повседневных забот, городского шума и суеты. Опыт проживания в юртах - это идеальный способ погрузиться за короткий срок в быт и культуру местного кочевого этноса - башкир.',
      locationName: 'Республика Башкортостан, Мелеузовский район, д. Сергеевка',
      images: [
        'https://images.unsplash.com/photo-1593053272490-e0ed6d6a42c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1516402707257-787c50fc3898?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1536854310359-ccc07f5e72de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1508974462591-3c124867fdf8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1172&q=80',
        'https://images.unsplash.com/photo-1599056407101-7c557a4a0144?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80',
        'https://images.unsplash.com/photo-1593534560771-4f0fc0cabd94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80',
        'https://images.unsplash.com/photo-1632367294096-4e77d53c4ae9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80'
      ].reversed.toList(),
      dateIntervals: [
        DateInterval(
          start: DateTime(2023, 6, 19),
          end: DateTime(2023, 6, 23),
        ),
        DateInterval(
          start: DateTime(2023, 6, 27),
          end: DateTime(2023, 6, 30),
        ),
        DateInterval(
          start: DateTime(2023, 7, 5),
          end: DateTime(2023, 7, 21),
        ),
        DateInterval(
          start: DateTime(2023, 8, 2),
          end: DateTime(2023, 8, 20),
        ),
      ],
      minCost: 15000,
      minMembersCount: 6,
      maxMembersCount: 12,
      distance: 888,
    ),
    TripModel(
      id: '7',
      title: 'Глэминг Караидель',
      description:
          'Единственный эко-отель в Башкирии и на всём Южном Урале, где можно пожить в настоящих башкирских юртах!\n\nВсем, кто пожелает разделить с нами радость жизни в гармонии с природой. Всем, для кого Природа – это Великая Тайна!\n\nЭтнотуристический парк INAYA (иная) на Нугуше - единственный эко-отель в Башкирии и на всём Южном Урале, где можно пожить в настоящих башкирских юртах!\n\nМы ждем вас в гости с семьей или друзьями! Юрты, как и в древние времена, изготовлены из войлока и дерева, а для более комфортного проживания оборудованы печью-камином и электричеством. Они расположены на живописном берегу Нугушского водохранилища, вдали от повседневных забот, городского шума и суеты. Опыт проживания в юртах - это идеальный способ погрузиться за короткий срок в быт и культуру местного кочевого этноса - башкир.',
      locationName: 'Республика Башкортостан, Мелеузовский район, д. Сергеевка',
      images: [
        'https://images.unsplash.com/photo-1593053272490-e0ed6d6a42c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1516402707257-787c50fc3898?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1536854310359-ccc07f5e72de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1508974462591-3c124867fdf8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1172&q=80',
        'https://images.unsplash.com/photo-1599056407101-7c557a4a0144?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80',
        'https://images.unsplash.com/photo-1593534560771-4f0fc0cabd94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80',
        'https://images.unsplash.com/photo-1632367294096-4e77d53c4ae9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80'
      ].reversed.toList(),
      dateIntervals: [
        DateInterval(
          start: DateTime(2023, 6, 19),
          end: DateTime(2023, 6, 23),
        ),
        DateInterval(
          start: DateTime(2023, 6, 27),
          end: DateTime(2023, 6, 30),
        ),
        DateInterval(
          start: DateTime(2023, 7, 5),
          end: DateTime(2023, 7, 21),
        ),
        DateInterval(
          start: DateTime(2023, 8, 2),
          end: DateTime(2023, 8, 20),
        ),
      ],
      minCost: 15000,
      minMembersCount: 6,
      maxMembersCount: 12,
      distance: 888,
    ),
    TripModel(
      id: '8',
      title: 'Глэминг Караидель',
      description:
          'Единственный эко-отель в Башкирии и на всём Южном Урале, где можно пожить в настоящих башкирских юртах!\n\nВсем, кто пожелает разделить с нами радость жизни в гармонии с природой. Всем, для кого Природа – это Великая Тайна!\n\nЭтнотуристический парк INAYA (иная) на Нугуше - единственный эко-отель в Башкирии и на всём Южном Урале, где можно пожить в настоящих башкирских юртах!\n\nМы ждем вас в гости с семьей или друзьями! Юрты, как и в древние времена, изготовлены из войлока и дерева, а для более комфортного проживания оборудованы печью-камином и электричеством. Они расположены на живописном берегу Нугушского водохранилища, вдали от повседневных забот, городского шума и суеты. Опыт проживания в юртах - это идеальный способ погрузиться за короткий срок в быт и культуру местного кочевого этноса - башкир.',
      locationName: 'Республика Башкортостан, Мелеузовский район, д. Сергеевка',
      images: [
        'https://images.unsplash.com/photo-1593053272490-e0ed6d6a42c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1516402707257-787c50fc3898?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1536854310359-ccc07f5e72de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1508974462591-3c124867fdf8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1172&q=80',
        'https://images.unsplash.com/photo-1599056407101-7c557a4a0144?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80',
        'https://images.unsplash.com/photo-1593534560771-4f0fc0cabd94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80',
        'https://images.unsplash.com/photo-1632367294096-4e77d53c4ae9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80'
      ].reversed.toList(),
      dateIntervals: [
        DateInterval(
          start: DateTime(2023, 6, 19),
          end: DateTime(2023, 6, 23),
        ),
        DateInterval(
          start: DateTime(2023, 6, 27),
          end: DateTime(2023, 6, 30),
        ),
        DateInterval(
          start: DateTime(2023, 7, 5),
          end: DateTime(2023, 7, 21),
        ),
        DateInterval(
          start: DateTime(2023, 8, 2),
          end: DateTime(2023, 8, 20),
        ),
      ],
      minCost: 15000,
      minMembersCount: 6,
      maxMembersCount: 12,
      distance: 888,
    ),
  ];
}
