// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a messages locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, always_declare_return_types

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = MessageLookup();

typedef String MessageIfAbsent(String? messageStr, List<Object>? args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'messages';

  static m0(value) => "${Intl.select(value, {
            'ru': 'Русский',
            'en': 'English',
            'other': 'Unknown',
          })}";

  static m1(count) => "Выбрано пользователей: ${count}";

  static m2(isRequired) => "${Intl.select(isRequired, {
            'true': 'Необходимо обновить приложение до последней версии',
            'false': 'Мы рекомендуем вам обновить приложение',
            'other': 'Update status unknown',
          })}";

  static m3(number) =>
      "${Intl.plural(number, one: 'Pin code must contain ${number} character', other: 'Pin code must contain ${number} characters')}";

  static m4(index) => "${Intl.select(index, {
            'i0': '∙ Обсуждаем рабочие моменты',
            'i1':
                '∙ Определяем важную тему для Вас и определяем подход для работы с этой темой (консультация, карьерный диалог, карьерный коучинг, психолог)',
            'i2': '∙ Строим план по темам для следующей встречи',
            'i3':
                '∙ Плотно работаем над планами , приоритетами, обозначаем сроки и определяем желаемый результат',
            'i4': '∙ Отслеживаем тенденцию и работаем над ошибками',
          })}";

  static m5(index) => "${Intl.select(index, {
            'i0':
                '∙ Работа над вопросами профессионального самоопределения, создания развития и плана его реализации',
            'i1':
                '∙ Диалог о профессиональном развитии между сотрудником и экспертом',
            'i2':
                '∙ Карьерный эксперт-подготовленный сотрудник компании «Неофлекс» с опытом в HR, психологии, карьерном коучинге с международной сертификацией',
          })}";

  static m6(index) => "${Intl.select(index, {
            'i0':
                '∙ Сможете разобраться в ситуации, достичь поставленных целей в карьере',
            'i1': '∙ Получите экспертную позицию по ситуации в работе, карьере',
            'i2': '∙ Конфиденциальность',
            'i3': '∙ Осознаете сильные и слабые стороны',
          })}";

  static m7(type) => "${Intl.select(type, {
            'selfPhone': 'Личный телефон',
            'workPhone': 'Рабочий телефон',
            'telegram': 'Telegram',
            'whatsapp': 'WhatsApp',
            'skype': 'Skype',
          })}";

  static m8(index) => "${Intl.select(index, {
            'i0':
                'Отправить заявку, нажав на кнопку «Хочу к карьерному эксперту»',
            'i1': 'Заполнить необходимую информацию',
            'i2': 'Получить письмо-подтверждение на почту.',
          })}";

  static m9(index) => "${Intl.select(index, {
            'i0': 'Что такое встреча с карьерным экспертом?',
            'i1': 'В чем преимущества?',
            'i2': 'Сессия длительностью 60 мин, 1 раз в неделю или 2 недели',
          })}";

  static m10(index) => "${Intl.select(index, {
            'i0':
                'Устал от проекта, не знаю какие интересные проекты есть в компании',
            'i1': 'Выгорел, не знаю что с этим делать',
            'i2': 'Конфликт в команде как действовать?',
            'i3':
                'Куда развивает начальник двигаться не хочу, а что хочу сам не знаю',
            'i4':
                'Переживаю неопределенность в работе, в связи с текущей ситуацией',
            'i5': 'Свой вариант',
          })}";

  static m11(index) => "${Intl.select(index, {
            'i0': 'Всем сотрудникам',
            'i1': 'HRTalents HRTalents@neoflex.ru',
            'i2': 'Желание сотрудника, подача заявки с описанием запроса.',
            'i3':
                'Наш эксперт свяжется в течение дня и согласует день и время для встречи',
          })}";

  static m12(index) => "${Intl.select(index, {
            'i0': 'Кому предоставляется',
            'i1': 'Кто предоставляет',
            'i2': 'Условия предоставления',
            'i3': 'Сроки оформления',
          })}";

  static m13(name) => "${Intl.select(name, {
            'install': '',
            'ios': '',
            'android': '',
            'today': '',
            'lastWeek': '',
            'lastMonth': '',
          })}";

  static m14(status) => "${Intl.select(status, {
            'all': 'Все',
            'donorDays': 'День донора',
            'paidVacation': 'В отпуске',
            'sickLeave': 'На больничном',
            'sickLeaveWithoutProof': 'БББ',
            'timeOff': 'Отгул',
            'vacationWithoutPay': 'В отпуске за свой счет',
            'maternityLeave': 'Декретный отпуск',
          })}";

  static m15(value) => "Срок исполнения: ${value}";

  static m16(from, to) =>
      "Возможно даты целей указаны не верно.\nОни должны быть в промежутке между ${from} и ${to}";

  static m17(value, isEmpty) => "${Intl.select(isEmpty, {
            'true': 'Переработка',
            'false': 'Переработка: ${value}',
          })}";

  static m18(value) => "Долг по списаниям: ${value}";

  static m19(days) => "За ${days}";

  static m20(time) => "До начала встречи осталось ${time}";

  static m21(value) => "${Intl.select(value, {
            'incorrectTimeFormat': 'Неправильный формат времени',
            'incorrectHours': 'Неправильные часы',
            'incorrectMinutes': 'Неправильные минуты',
            'incorrectTimeOrder': 'Неправильный порядок времени',
            'other': '',
          })}";

  static m22(value) => "Количество дней: ${value} ";

  static m23(value1, value2) =>
      "${Intl.plural(value2, zero: 'Списано ${value1} из ${value2} часов', one: 'Списано ${value1} из ${value2} час', two: 'Списано ${value1} из ${value2} часа', few: 'Списано ${value1} из ${value2} часа', many: 'Списано ${value1} из ${value2} часов', other: 'Списано ${value1} из ${value2} часов')}";

  static m24(value) => "Переработка ${value}";

  static m25(value) =>
      "${Intl.plural(value, zero: 'Осталось списать ${value} часов', one: 'Осталось списать ${value} час', two: 'Осталось списать ${value} часа', few: 'Осталось списать ${value} часа', many: 'Осталось списать ${value} часов', other: 'Осталось списать ${value} часов')}";

  static m26(value, secondValue) => "Списано ${value} из ${secondValue}";

  static m27(index) => "${Intl.select(index, {
            'i0': 'Налоговая инспекция',
            'i1': 'По месту требования',
          })}";

  static m28(index) => "${Intl.select(index, {
            'i0': 'Лично',
            'i1': 'Доставить по адресу',
          })}";

  static m29(index) => "${Intl.select(index, {
            'i0':
                'Отправить заявку, выбрав месяц, за который необходимо предоставить расчетный лист, нажав на кнопку \"Создать\"',
            'i1': 'Получить расчетный лист на e-mail',
          })}";

  static m30(index) => "${Intl.select(index, {
            'i0':
                'Сервис предназначен для получения расчетного листа на e-mail.',
            'i1': 'Всем сотрудникам',
            'i2': 'Бухгалтерия',
            'i3':
                'Расчетный лист за текущий месяц предоставляется после 4 числа следующего месяца.',
          })}";

  static m31(index) => "${Intl.select(index, {
            'i0': 'Описание',
            'i1': 'Кому предоставляется',
            'i2': 'Кто предоставляет',
            'i3': 'Условия предоставления',
          })}";

  static m32(index) => "${Intl.select(index, {
            'i0': 'Копия',
            'i1': 'Оригинал',
          })}";

  static m33(count) => "Смотреть все комментарии (${count})";

  static m34(type) => "${Intl.select(type, {
            'selfPhone': 'Личный телефон',
            'workPhone': 'Рабочий телефон',
            'telegram': 'Telegram',
            'whatsapp': 'WhatsApp',
            'skype': 'Skype',
          })}";

  static m35(type) => "${Intl.select(type, {
            'logTime': 'Списаться',
            'headOfficeRoom': 'Кабинет\nруководителя',
            'sickLeaveWithoutProof': 'Больничный\nбез больничного',
            'sickLeave': 'Уведомление о\nбольничном листе',
            'careerExpert': 'Хочу\nк карьерному эксперту',
            'payslip': 'Расчетный\nлисток',
            'ndfl2': 'Справка\n2-НДФЛ',
            'placeWork': 'Справка \nс места работы',
            'workBook': 'Копия \nтрудовой книжки',
            'vacation': 'Заявление \nна отпуск',
            'other': 'Unknown Service',
          })}";

  static m36(type) => "${Intl.select(type, {
            'logTime': 'Списаться',
            'headOfficeRoom': 'Кабинет руководителя',
            'sickLeaveWithoutProof': 'Больничный без больничного',
            'sickLeave': 'Уведомление о больничном листе',
            'careerExpert': 'Хочу к карьерному эксперту',
            'payslip': 'Расчетный листок',
            'ndfl2': 'Справка 2-НДФЛ',
            'placeWork': 'Справка с места работы',
            'workBook': 'Копия трудовой книжки',
            'vacation': 'Заявление на отпуск',
            'other': 'Unknown Service',
          })}";

  static m37(available) => "${Intl.select(available, {
            'true': 'Доступен',
            'false': 'Недоступен',
          })}";

  static m38(value) => "Доступен будет ${value}";

  static m39(index) => "${Intl.select(index, {
            'i0': 'Создать заявку или уведомить Службу персонала письмом',
            'i1': 'Получить подтверждение в виде письма на почту',
            'i2':
                'Уведомить Службу Персонала о продлении/закрытии больничного листа',
            'i3':
                'В Jira произойдет автоматические списания за указанные даты.',
          })}";

  static m40(index) => "${Intl.select(index, {
            'i0':
                'Оформление отсутствия на работе в связи с заболеванием и открытием больничного листа в медицинском учреждении',
            'i1': 'Всем сотрудникам',
            'i2': 'Служба Персонала',
            'i3': 'Открыт электронный больничный лист в медицинском учреждении',
            'i4': 'В день открытия больничного листа',
          })}";

  static m41(index) => "${Intl.select(index, {
            'i0': 'Описание',
            'i1': 'Кому предоставляется',
            'i2': 'Кто предоставляет',
            'i3': 'Условия предоставления',
            'i4': 'Сроки оформления',
          })}";

  static m42(available) => "${Intl.select(available, {
            'true': 'Доступен',
            'false': 'Недоступен',
          })}";

  static m43(value) => "Доступен будет ${value}";

  static m44(index) => "${Intl.select(index, {
            'i0': 'Отправить заявку нажав на кнопку «Создать заявку»',
            'i1': 'Получить подтверждение в виде письма на почту',
            'i2': 'В JIRA произойдет автоматическое списание за указанные даты',
          })}";

  static m45(index) => "${Intl.select(index, {
            'i0':
                'Оформление краткосрочного отсутствия на работе в случае непродолжительной болезни или плохого самочувствия, до 2 рабочих дней без заявления на отпуск и больничного листа',
            'i1': 'Всем сотрудникам, прошедшим испытательный срок',
            'i2': 'Служба персонала HR@neoflex.ru',
            'i3':
                'Один раз в полгода 1 или 2 рабочих дня подряд. При использовании только одного дня, второй сгорает. Отсчет полугодия начинается с даты приема на работу.',
            'i4': 'За день или в день использования',
          })}";

  static m46(index) => "${Intl.select(index, {
            'i0': 'Описание',
            'i1': 'Кому предоставляется',
            'i2': 'Кто предоставляет',
            'i3': 'Условия предоставления',
            'i4': 'Сроки оформления',
          })}";

  static m47(status) => "${Intl.select(status, {
            'atWork': 'На работе',
            'donorDays': 'День донора',
            'paidVacation': 'В отпуске',
            'sickLeave': 'На больничном',
            'sickLeaveWithoutProof': 'БББ',
            'timeOff': 'Отгул',
            'vacationWithoutPay': 'В отпуске за свой счет',
            'maternityLeave': 'Декретный отпуск',
          })}";

  static m48(value) =>
      "${Intl.plural(value, zero: '${value} дней отпуска', one: '${value} день отпуска', two: '${value} дня отпуска', few: '${value} дня отпуска', many: '${value} дней отпуска', other: '${value} дней отпуска')}";

  static m49(findCount) => "Найдено пользователей: ${findCount}";

  static m50(selectedCount, allCount) =>
      "Выбрано ${selectedCount} из ${allCount}";

  static m51(available, value) => "${Intl.select(available, {
            'true': 'Доступно дней: ${value}',
            'false': 'Нет доступных дней для\nоплачиваемого отпуска',
          })}";

  static m52(message, taskKey) => "${Intl.select(message, {
            'Incorrect_dates': 'Дата начала должна\nбыть меньше даты окончания',
            'Less_than_10_days_before_start_date':
                'Заявку можно заполнить не менее,\nчем за 10 дней до начала отпуска',
            'Too_many_days': 'Превышен лимит\nколичества отгулов',
            'Approvers_errors__missing_manager':
                'В списке согласующих отсутствует\nвертикальный руководитель.\nВ случае ошибки, обратитесь к\nадминистратору или ОК',
            'Approvers_errors__missing_branch_manager':
                'В списке согласующих\nотсутствует директор филиала.\nВ случае ошибки,\nобратитесь к администратору.',
            'Dismissed_manager':
                'Ваш Вертикальный руководитель является\nнедействующим пользователем системы.\nДля установки корректного значения\nобратитесь в ОК.',
            'Overlapping_vacations':
                'В указанный промежуток заведена задача:\nЗаявка на отпуск c ключем ${taskKey}',
            'other': 'Возникла непредвиденная ошибка',
          })}";

  static m53(value) => "Найдено пользователей: ${value}";

  static m54(index) => "${Intl.select(index, {
            'i0':
                'За 10 дней до планируемого отпуска отправить заявку, нажав на кнопку “ОТПРАВИТЬ ЗАЯВКУ”',
            'i1':
                'Заполнить все поля формы - выбрать вид отпуска, указать даты начала и окончания отпуска, указать всех согласующих руководителей, указать заместителя на время отпуска (при необходимости)',
            'i2':
                'Получить подтверждение в виде письма из Jira об учете отпуска',
            'i3': 'В Jira произойдет автоматическое списание за указанные даты',
            'i4': 'Подписать приказ на отпуск',
          })}";

  static m55(selectedCount, allCount) =>
      "Выбрано ${selectedCount} из ${allCount}";

  static m56(message) => "${Intl.select(message, {
            'success': 'Ожидайте письмо\nс подтверждением на почте',
            'attachment_n_not_approve':
                'При загрузке файлов\nпроизошла ошибка.\nДля редактирование заявки\nперейдите в JIRA',
            'attachment_n_approve':
                'При загрузке файлов\nпроизошла ошибка,\nотправка на согласование не выполнена.\n Для редактирование заявки и\nотправки на согласование\n перейдите в JIRA.',
            'Gap_for_holidays_is_not_allowed':
                'При отправке на согласование\nвозникла ошибка:\nОплачиваемый отпуск сразрывом на\nвыходные/праздничные дни не предоставляется.\nДля редактирование заявки\nперейдите в JIRA',
            'Missing_attachment':
                'При отправке на согласование\nвозникла ошибка:\nотсутствует справка донора.\nДля редактирование заявки\n перейдите в JIRA.',
            'donor_day':
                'При отправке на согласование\nвозникла ошибка.\nЧтобы повторить отправку,\nперейдите в JIRA.',
            'not_donor_day':
                'При отправке на согласование\nвозникла ошибка.\nЧтобы повторить отправку,\nперейдите в JIRA либо ожидайте\nавтоматического перевода на согласование.',
            'other':
                'Возникла непредвиденная ошибка.\nДля редактирование заявки\n перейдите в JIRA.',
          })}";

  static m57(index) => "${Intl.select(index, {
            'i0':
                'Отправка заявления на ежегодный оплачиваемый отпуск или отпуск без сохранения заработной платы, согласование с руководителем, учет отпуска с автоматическим списанием трудозатрат',
            'i1': 'Всем сотрудникам',
            'i2': 'Служба персонала HR@neoflex.ru',
            'i3': 'По запросу сотрудника',
            'i4': 'Не позднее 2 рабочих дней с момента отправки уведомления',
          })}";

  static m58(index) => "${Intl.select(index, {
            'i0': 'Описание',
            'i1': 'Кому предоставляется',
            'i2': 'Кто предоставляет',
            'i3': 'Условия предоставления',
            'i4': 'Сроки оформления',
          })}";

  static m59(index) => "${Intl.select(index, {
            'i0': 'Оплачиваемый',
            'i1': 'За свой счет',
            'i2': 'День донора',
          })}";

  static m60(index) => "${Intl.select(index, {
            'i0': 'PAID_VACATION',
            'i1': 'VACATION_WITHOUT_PAY',
            'i2': 'DONOR_DAYS',
          })}";

  static m61(index) => "${Intl.select(index, {
            'i0': 'Копия',
            'i1': 'Заверенная копия',
          })}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "AppSettingsI18n_allowBiometricsAccess":
            MessageLookupByLibrary.simpleMessage("Allow biometrics access"),
        "AppSettingsI18n_birthdaysAll":
            MessageLookupByLibrary.simpleMessage("Все"),
        "AppSettingsI18n_birthdaysFavorites":
            MessageLookupByLibrary.simpleMessage("Выбранные"),
        "AppSettingsI18n_birthdaysNotReceive":
            MessageLookupByLibrary.simpleMessage("Не получать"),
        "AppSettingsI18n_birthdaysSave":
            MessageLookupByLibrary.simpleMessage("Сохранить"),
        "AppSettingsI18n_changePinCode":
            MessageLookupByLibrary.simpleMessage("Изменить Pin-код"),
        "AppSettingsI18n_darkTheme":
            MessageLookupByLibrary.simpleMessage("Dark"),
        "AppSettingsI18n_language":
            MessageLookupByLibrary.simpleMessage("Language"),
        "AppSettingsI18n_languageType": m0,
        "AppSettingsI18n_lightTheme":
            MessageLookupByLibrary.simpleMessage("Light"),
        "AppSettingsI18n_meetingTagged":
            MessageLookupByLibrary.simpleMessage("Встречи"),
        "AppSettingsI18n_neonPosts":
            MessageLookupByLibrary.simpleMessage("Уведомления от Неона"),
        "AppSettingsI18n_notificationBirthday":
            MessageLookupByLibrary.simpleMessage("Дни рождения"),
        "AppSettingsI18n_notificationOnNotifyTitle":
            MessageLookupByLibrary.simpleMessage(
                "Уведомления о дне рождения включены"),
        "AppSettingsI18n_notificationPosts":
            MessageLookupByLibrary.simpleMessage("Посты"),
        "AppSettingsI18n_notificationSavedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Изменения сохранены"),
        "AppSettingsI18n_notifications":
            MessageLookupByLibrary.simpleMessage("Уведомления"),
        "AppSettingsI18n_postTagged":
            MessageLookupByLibrary.simpleMessage("Отметки на фото"),
        "AppSettingsI18n_resetPinCode":
            MessageLookupByLibrary.simpleMessage("Reset pin code"),
        "AppSettingsI18n_security":
            MessageLookupByLibrary.simpleMessage("Безопасность"),
        "AppSettingsI18n_selectLanguage":
            MessageLookupByLibrary.simpleMessage("Выбрать язык"),
        "AppSettingsI18n_selectTheme":
            MessageLookupByLibrary.simpleMessage("Select a theme"),
        "AppSettingsI18n_selectedFavouriteUsers": m1,
        "AppSettingsI18n_services":
            MessageLookupByLibrary.simpleMessage("Сервисы на главной"),
        "AppSettingsI18n_servicesSettings":
            MessageLookupByLibrary.simpleMessage("Настройка сервисов"),
        "AppSettingsI18n_signInToAccessTheApp":
            MessageLookupByLibrary.simpleMessage("Sign in to access the app"),
        "AppSettingsI18n_signOut": MessageLookupByLibrary.simpleMessage(
            "Вы уверены что хотите выйти?"),
        "AppSettingsI18n_systemLanguage":
            MessageLookupByLibrary.simpleMessage("System language"),
        "AppSettingsI18n_systemTheme":
            MessageLookupByLibrary.simpleMessage("System"),
        "AppSettingsI18n_theme": MessageLookupByLibrary.simpleMessage("Theme"),
        "AppSettingsI18n_title":
            MessageLookupByLibrary.simpleMessage("Настройки"),
        "AppSettingsI18n_updateBtn":
            MessageLookupByLibrary.simpleMessage("Обновить"),
        "AppSettingsI18n_updateText": m2,
        "AppSettingsI18n_updateTitle":
            MessageLookupByLibrary.simpleMessage("Доступно обновление"),
        "AppSettingsI18n_useBiometrics":
            MessageLookupByLibrary.simpleMessage("Биометрия"),
        "AppSettingsI18n_useLocalAuth":
            MessageLookupByLibrary.simpleMessage("Use local auth?"),
        "AppSettingsI18n_youNeedToEnableBiometrics":
            MessageLookupByLibrary.simpleMessage(
                "You need to enable biometrics in Settings"),
        "AuthI18n_checkInternetConnection":
            MessageLookupByLibrary.simpleMessage("Check internet connection"),
        "AuthI18n_delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "AuthI18n_enterPinCode":
            MessageLookupByLibrary.simpleMessage("Enter pin code"),
        "AuthI18n_invalidPin":
            MessageLookupByLibrary.simpleMessage("Invalid PIN"),
        "AuthI18n_login": MessageLookupByLibrary.simpleMessage("Login"),
        "AuthI18n_loginRequired":
            MessageLookupByLibrary.simpleMessage("Login required"),
        "AuthI18n_minimumPassword": MessageLookupByLibrary.simpleMessage(
            "Password must have at least 6 characters"),
        "AuthI18n_password": MessageLookupByLibrary.simpleMessage("Password"),
        "AuthI18n_passwordRequired": MessageLookupByLibrary.simpleMessage(
            "The password must not be empty"),
        "AuthI18n_pinCodeMustContain": m3,
        "AuthI18n_pinCodesDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Pin codes do not match"),
        "AuthI18n_repeatPinCode":
            MessageLookupByLibrary.simpleMessage("Repeat pin code"),
        "AuthI18n_reset": MessageLookupByLibrary.simpleMessage("Reset"),
        "AuthI18n_resetPinCode":
            MessageLookupByLibrary.simpleMessage("Reset pin code"),
        "AuthI18n_settingPinCode":
            MessageLookupByLibrary.simpleMessage("Setting pin code"),
        "AuthI18n_signIn": MessageLookupByLibrary.simpleMessage("Sign In"),
        "AuthI18n_signInBtn": MessageLookupByLibrary.simpleMessage("Sign In"),
        "AuthI18n_signOut": MessageLookupByLibrary.simpleMessage(
            "Вы уверены что хотите выйти?"),
        "AuthI18n_unknownError": MessageLookupByLibrary.simpleMessage(
            "Unknown error. Please try later"),
        "AuthI18n_useBiometricsToLogin":
            MessageLookupByLibrary.simpleMessage("Use biometrics to login?"),
        "AuthI18n_userNotFound": MessageLookupByLibrary.simpleMessage(
            "Incorrect username or password"),
        "CareerExpertI18n_aboutSession": m4,
        "CareerExpertI18n_aboutWhat": m5,
        "CareerExpertI18n_advantages": m6,
        "CareerExpertI18n_attention": MessageLookupByLibrary.simpleMessage(
            "В случае нарушения сроков, оформление задним числом может быть сделано только сотрудником кадровой службы. Для этого необходимо написать письмо на адрес службы персонала "),
        "CareerExpertI18n_contactLabel": m7,
        "CareerExpertI18n_contacts":
            MessageLookupByLibrary.simpleMessage("Контакты для связи"),
        "CareerExpertI18n_createApplication":
            MessageLookupByLibrary.simpleMessage("Создать заявку"),
        "CareerExpertI18n_createSuccessDescription":
            MessageLookupByLibrary.simpleMessage(
                "Ожидайте письмо\nс подтверждением на почте"),
        "CareerExpertI18n_createSuccessTitle":
            MessageLookupByLibrary.simpleMessage("Заявка создана"),
        "CareerExpertI18n_dateStart":
            MessageLookupByLibrary.simpleMessage("Дата начала"),
        "CareerExpertI18n_dayCount":
            MessageLookupByLibrary.simpleMessage("Количество дней"),
        "CareerExpertI18n_description": MessageLookupByLibrary.simpleMessage(
            "Если есть вопрос по карьере и ты не знаешь как его решить? Тебе помогут разобраться опытные эксперты из Hr-команды"),
        "CareerExpertI18n_descriptionTitle":
            MessageLookupByLibrary.simpleMessage("Описание"),
        "CareerExpertI18n_howToIssueTexts": m8,
        "CareerExpertI18n_howToIssueTitle":
            MessageLookupByLibrary.simpleMessage("Как оформить"),
        "CareerExpertI18n_infoBlocksTitle": m9,
        "CareerExpertI18n_questions": m10,
        "CareerExpertI18n_questionsTitle": MessageLookupByLibrary.simpleMessage(
            "Какие вопросы можно обсудить? "),
        "CareerExpertI18n_responseSuccessBody":
            MessageLookupByLibrary.simpleMessage(
                "В ближайшее время\nнаш карьерный эксперт\nсвяжется с Вами"),
        "CareerExpertI18n_responseSuccessTitle":
            MessageLookupByLibrary.simpleMessage("Благодарим\nза обращение."),
        "CareerExpertI18n_send":
            MessageLookupByLibrary.simpleMessage("Отправить"),
        "CareerExpertI18n_subject":
            MessageLookupByLibrary.simpleMessage("Тема заявки"),
        "CareerExpertI18n_submit":
            MessageLookupByLibrary.simpleMessage("Отправить заявку"),
        "CareerExpertI18n_texts": m11,
        "CareerExpertI18n_titles": m12,
        "DashboardI18n_androidUsers":
            MessageLookupByLibrary.simpleMessage("Android"),
        "DashboardI18n_dashboardNotFound":
            MessageLookupByLibrary.simpleMessage(" not found"),
        "DashboardI18n_empty":
            MessageLookupByLibrary.simpleMessage("Список пуст"),
        "DashboardI18n_filter": m13,
        "DashboardI18n_installUsers":
            MessageLookupByLibrary.simpleMessage("Установили"),
        "DashboardI18n_iosUsers": MessageLookupByLibrary.simpleMessage("iOS"),
        "DashboardI18n_lastMonthUsers":
            MessageLookupByLibrary.simpleMessage("Активных за месяц"),
        "DashboardI18n_lastWeekUsers":
            MessageLookupByLibrary.simpleMessage("Активных за неделю"),
        "DashboardI18n_title":
            MessageLookupByLibrary.simpleMessage("Dashboard"),
        "DashboardI18n_todayUsers":
            MessageLookupByLibrary.simpleMessage("Активных за сегодня"),
        "DashboardI18n_users":
            MessageLookupByLibrary.simpleMessage("Сотрудников"),
        "HeadOfficeAbsencesI18n_absenceCalendar":
            MessageLookupByLibrary.simpleMessage("Календарь отсутствий"),
        "HeadOfficeAbsencesI18n_absenceStatusFilter": m14,
        "HeadOfficeAbsencesI18n_notFound":
            MessageLookupByLibrary.simpleMessage("Все сотрудники на работе"),
        "HeadOfficeAbsencesI18n_title":
            MessageLookupByLibrary.simpleMessage("Отсутствия"),
        "HeadOfficeAttestationsI18n_achievementCriteria":
            MessageLookupByLibrary.simpleMessage("Критерии достижения"),
        "HeadOfficeAttestationsI18n_actualResult":
            MessageLookupByLibrary.simpleMessage("Фактический результат"),
        "HeadOfficeAttestationsI18n_approvers":
            MessageLookupByLibrary.simpleMessage("Согласующие"),
        "HeadOfficeAttestationsI18n_createRequest":
            MessageLookupByLibrary.simpleMessage("Создать заявку"),
        "HeadOfficeAttestationsI18n_currentAttestations":
            MessageLookupByLibrary.simpleMessage("Ближайшие аттестации"),
        "HeadOfficeAttestationsI18n_date": m15,
        "HeadOfficeAttestationsI18n_emptyGoals": m16,
        "HeadOfficeAttestationsI18n_goal":
            MessageLookupByLibrary.simpleMessage("Цель аттестации"),
        "HeadOfficeAttestationsI18n_goalGroup":
            MessageLookupByLibrary.simpleMessage("Группа цели"),
        "HeadOfficeAttestationsI18n_goalNotFound":
            MessageLookupByLibrary.simpleMessage("Цель не найдена"),
        "HeadOfficeAttestationsI18n_goals":
            MessageLookupByLibrary.simpleMessage("Цели"),
        "HeadOfficeAttestationsI18n_name":
            MessageLookupByLibrary.simpleMessage("Название"),
        "HeadOfficeAttestationsI18n_notFound":
            MessageLookupByLibrary.simpleMessage("Аттестации не найден"),
        "HeadOfficeAttestationsI18n_passedAttestations":
            MessageLookupByLibrary.simpleMessage("Прошедшие аттестации"),
        "HeadOfficeAttestationsI18n_plannedResult":
            MessageLookupByLibrary.simpleMessage("Запланированный результат"),
        "HeadOfficeAttestationsI18n_status":
            MessageLookupByLibrary.simpleMessage("Статус"),
        "HeadOfficeAttestationsI18n_title":
            MessageLookupByLibrary.simpleMessage("Аттестации"),
        "HeadOfficeBirthdaysI18n_headOfficeBirthdaysNotFound":
            MessageLookupByLibrary.simpleMessage(
                "HeadOfficeBirthdays not found"),
        "HeadOfficeBirthdaysI18n_showAll":
            MessageLookupByLibrary.simpleMessage("Показывать всех подчиненных"),
        "HeadOfficeBirthdaysI18n_thisMonth":
            MessageLookupByLibrary.simpleMessage("В этом месяце"),
        "HeadOfficeBirthdaysI18n_thisWeek":
            MessageLookupByLibrary.simpleMessage("На этой неделе"),
        "HeadOfficeBirthdaysI18n_title":
            MessageLookupByLibrary.simpleMessage("Дни рождения"),
        "HeadOfficeBirthdaysI18n_today":
            MessageLookupByLibrary.simpleMessage("Сегодня"),
        "HeadOfficeI18n_debtorNotFound":
            MessageLookupByLibrary.simpleMessage("Должник не найдены"),
        "HeadOfficeI18n_debtors":
            MessageLookupByLibrary.simpleMessage("Должники"),
        "HeadOfficeI18n_debtorsEmpty":
            MessageLookupByLibrary.simpleMessage("Должники не найдены"),
        "HeadOfficeI18n_logTime":
            MessageLookupByLibrary.simpleMessage("Списания"),
        "HeadOfficeI18n_notifyDebtors": MessageLookupByLibrary.simpleMessage(
            "Отправить пуш о задолженности"),
        "HeadOfficeI18n_overtime": m17,
        "HeadOfficeI18n_overtimeEmpty":
            MessageLookupByLibrary.simpleMessage("Переработки не найдены"),
        "HeadOfficeI18n_title":
            MessageLookupByLibrary.simpleMessage("Кабинет руководителя"),
        "HeadOfficeI18n_vacationDebt":
            MessageLookupByLibrary.simpleMessage("Задолженности по отпускам"),
        "HeadOfficeI18n_writeOffDebt": m18,
        "HeadOfficeTetATetsI18n_cancelMeet":
            MessageLookupByLibrary.simpleMessage("Отменить"),
        "HeadOfficeTetATetsI18n_cancelMeetChoise":
            MessageLookupByLibrary.simpleMessage(
                "Вы уверены, что хотите отменить встречу?"),
        "HeadOfficeTetATetsI18n_cancelMeetSuccess":
            MessageLookupByLibrary.simpleMessage("Встреча отменена"),
        "HeadOfficeTetATetsI18n_createMeet":
            MessageLookupByLibrary.simpleMessage("Создать встречу"),
        "HeadOfficeTetATetsI18n_createMeetSuccess":
            MessageLookupByLibrary.simpleMessage("Новая встреча создана"),
        "HeadOfficeTetATetsI18n_createResumeSuccess":
            MessageLookupByLibrary.simpleMessage("Итоги встречи заполнены"),
        "HeadOfficeTetATetsI18n_delayManagerMeeting":
            MessageLookupByLibrary.simpleMessage("Уведомление"),
        "HeadOfficeTetATetsI18n_editMeet":
            MessageLookupByLibrary.simpleMessage("Изменить"),
        "HeadOfficeTetATetsI18n_editMeetSuccess":
            MessageLookupByLibrary.simpleMessage("Встреча изменена"),
        "HeadOfficeTetATetsI18n_editMeetTitle":
            MessageLookupByLibrary.simpleMessage("Изменить встречу"),
        "HeadOfficeTetATetsI18n_editResumeSuccess":
            MessageLookupByLibrary.simpleMessage("Итоги встречи изменены"),
        "HeadOfficeTetATetsI18n_enabledManagerMeeting":
            MessageLookupByLibrary.simpleMessage("Включено"),
        "HeadOfficeTetATetsI18n_finishedMeeting":
            MessageLookupByLibrary.simpleMessage("Завершенная"),
        "HeadOfficeTetATetsI18n_frequencyManagerMeeting":
            MessageLookupByLibrary.simpleMessage("Частота встреч"),
        "HeadOfficeTetATetsI18n_headOfficeTetATetsLastMeetsNotFound":
            MessageLookupByLibrary.simpleMessage(
                "HeadOfficeTetATetsLastMeets not found"),
        "HeadOfficeTetATetsI18n_meetFrequency":
            MessageLookupByLibrary.simpleMessage("Частота встреч"),
        "HeadOfficeTetATetsI18n_meeting":
            MessageLookupByLibrary.simpleMessage("Встреча"),
        "HeadOfficeTetATetsI18n_meetingDate":
            MessageLookupByLibrary.simpleMessage("Дата"),
        "HeadOfficeTetATetsI18n_meetingDescription":
            MessageLookupByLibrary.simpleMessage("Описание встречи"),
        "HeadOfficeTetATetsI18n_meetingFinishTime":
            MessageLookupByLibrary.simpleMessage("Время конца"),
        "HeadOfficeTetATetsI18n_meetingResults":
            MessageLookupByLibrary.simpleMessage("Итоги встречи"),
        "HeadOfficeTetATetsI18n_meetingStartTime":
            MessageLookupByLibrary.simpleMessage("Время начала"),
        "HeadOfficeTetATetsI18n_meetingSubordinate":
            MessageLookupByLibrary.simpleMessage("Сотрудник"),
        "HeadOfficeTetATetsI18n_meetingTitle":
            MessageLookupByLibrary.simpleMessage("Название встречи"),
        "HeadOfficeTetATetsI18n_meetings":
            MessageLookupByLibrary.simpleMessage("Встречи"),
        "HeadOfficeTetATetsI18n_neoScrollSelectDone":
            MessageLookupByLibrary.simpleMessage("Готово"),
        "HeadOfficeTetATetsI18n_noEvents":
            MessageLookupByLibrary.simpleMessage("Нет встреч"),
        "HeadOfficeTetATetsI18n_noMeetingYet":
            MessageLookupByLibrary.simpleMessage("Встреч не было"),
        "HeadOfficeTetATetsI18n_noMeetings":
            MessageLookupByLibrary.simpleMessage(
                "У вас не запланировано встреч с руководителем"),
        "HeadOfficeTetATetsI18n_noMeetingsSubordinate":
            MessageLookupByLibrary.simpleMessage(
                "У вас не запланировано встреч с подчиненными"),
        "HeadOfficeTetATetsI18n_plannedMeeting":
            MessageLookupByLibrary.simpleMessage("Запланированная"),
        "HeadOfficeTetATetsI18n_reminderDays": m19,
        "HeadOfficeTetATetsI18n_repeatMeet":
            MessageLookupByLibrary.simpleMessage("Повторить"),
        "HeadOfficeTetATetsI18n_save":
            MessageLookupByLibrary.simpleMessage("Сохранить"),
        "HeadOfficeTetATetsI18n_subordinateSettingUpdateSeccess":
            MessageLookupByLibrary.simpleMessage("Настройки изменены"),
        "HeadOfficeTetATetsI18n_tabsAll":
            MessageLookupByLibrary.simpleMessage("Все"),
        "HeadOfficeTetATetsI18n_tabsCompletedMeets":
            MessageLookupByLibrary.simpleMessage("Завершенные"),
        "HeadOfficeTetATetsI18n_tabsNeedMeets":
            MessageLookupByLibrary.simpleMessage("Необходима встреча"),
        "HeadOfficeTetATetsI18n_tabsPlannedMeets":
            MessageLookupByLibrary.simpleMessage("Запланированные"),
        "HeadOfficeTetATetsI18n_timeToStartMeeting": m20,
        "HeadOfficeTetATetsI18n_title":
            MessageLookupByLibrary.simpleMessage("Встречи с сотрудниками"),
        "HeadOfficeTetATetsI18n_uiCardTitle":
            MessageLookupByLibrary.simpleMessage("Встречи с сотрудниками"),
        "HeadOfficeTetATetsI18n_validationTimeErrors": m21,
        "HeadOfficeVacationsI18n_countDays": m22,
        "HeadOfficeVacationsI18n_notFound":
            MessageLookupByLibrary.simpleMessage(
                "HeadOfficeVacations not found"),
        "HeadOfficeVacationsI18n_showAll":
            MessageLookupByLibrary.simpleMessage("Показывать всех подчиненных"),
        "HeadOfficeVacationsI18n_title":
            MessageLookupByLibrary.simpleMessage("Отпуска"),
        "HeadOfficeWorkLogsI18n_headOfficeWorkLogsNotFound":
            MessageLookupByLibrary.simpleMessage(
                "HeadOfficeWorkLogs not found"),
        "HeadOfficeWorkLogsI18n_title":
            MessageLookupByLibrary.simpleMessage("head_office_work_logs title"),
        "LogTimeI18n_badRequest": MessageLookupByLibrary.simpleMessage(
            "Не удалось списаться, попробуйте позже"),
        "LogTimeI18n_comment": MessageLookupByLibrary.simpleMessage("Описание"),
        "LogTimeI18n_confirmDeleteWorkLog":
            MessageLookupByLibrary.simpleMessage(
                "Вы уверены что хотите удалить списание?"),
        "LogTimeI18n_delete": MessageLookupByLibrary.simpleMessage("Удалить"),
        "LogTimeI18n_duplicate":
            MessageLookupByLibrary.simpleMessage("Дублировать"),
        "LogTimeI18n_edit":
            MessageLookupByLibrary.simpleMessage("Редактировать"),
        "LogTimeI18n_endDate":
            MessageLookupByLibrary.simpleMessage("Дата конца"),
        "LogTimeI18n_hours": MessageLookupByLibrary.simpleMessage("Часов"),
        "LogTimeI18n_hoursPerDay":
            MessageLookupByLibrary.simpleMessage("Часов в день"),
        "LogTimeI18n_logTimeNotFound":
            MessageLookupByLibrary.simpleMessage("Списания не найдены"),
        "LogTimeI18n_loggedSeconds": m23,
        "LogTimeI18n_minutes": MessageLookupByLibrary.simpleMessage("Минуты"),
        "LogTimeI18n_overWork":
            MessageLookupByLibrary.simpleMessage("Переработка"),
        "LogTimeI18n_overtime": m24,
        "LogTimeI18n_remainingSeconds": m25,
        "LogTimeI18n_selectDate":
            MessageLookupByLibrary.simpleMessage("Выберите дату"),
        "LogTimeI18n_selectTask":
            MessageLookupByLibrary.simpleMessage("Выбрать дату"),
        "LogTimeI18n_started":
            MessageLookupByLibrary.simpleMessage("Дата начала"),
        "LogTimeI18n_submit": MessageLookupByLibrary.simpleMessage("Списаться"),
        "LogTimeI18n_success":
            MessageLookupByLibrary.simpleMessage("Вы успешно списались"),
        "LogTimeI18n_tabsFavorites":
            MessageLookupByLibrary.simpleMessage("Избранное"),
        "LogTimeI18n_tabsTasks":
            MessageLookupByLibrary.simpleMessage("Назначенные"),
        "LogTimeI18n_tabsTempo": MessageLookupByLibrary.simpleMessage("Tempo"),
        "LogTimeI18n_task": MessageLookupByLibrary.simpleMessage("Задача"),
        "LogTimeI18n_title": MessageLookupByLibrary.simpleMessage("Списания"),
        "LogTimeI18n_writtenOff": m26,
        "LogTimeI18n_wrongTime":
            MessageLookupByLibrary.simpleMessage("Некорректно указано время"),
        "Ndfl2I18n_methodObtainingType": m27,
        "Ndfl2I18n_ndfl2NotFound": MessageLookupByLibrary.simpleMessage(
            "Страница Справка НДФЛ-2 не найдена"),
        "Ndfl2I18n_personally": MessageLookupByLibrary.simpleMessage("Лично"),
        "Ndfl2I18n_placeDeliveryType": m28,
        "Ndfl2I18n_responseSuccessBody":
            MessageLookupByLibrary.simpleMessage("Заявка создана"),
        "Ndfl2I18n_responseSuccessTitle":
            MessageLookupByLibrary.simpleMessage("Благодарим\nза обращение."),
        "Ndfl2I18n_sendRequest":
            MessageLookupByLibrary.simpleMessage("Отправить заявку"),
        "Ndfl2I18n_taxOffice":
            MessageLookupByLibrary.simpleMessage("Налоговая инспекция"),
        "Ndfl2I18n_titleAddress": MessageLookupByLibrary.simpleMessage("Адрес"),
        "Ndfl2I18n_titleMethodObtaining":
            MessageLookupByLibrary.simpleMessage("Способ получения"),
        "Ndfl2I18n_titleNote":
            MessageLookupByLibrary.simpleMessage("Примечание"),
        "Ndfl2I18n_titleNumberCopies":
            MessageLookupByLibrary.simpleMessage("Количество экземпляров"),
        "Ndfl2I18n_titlePeriod": MessageLookupByLibrary.simpleMessage("Период"),
        "Ndfl2I18n_titlePlaceDelivery":
            MessageLookupByLibrary.simpleMessage("Место предоставления"),
        "PayslipI18n_createApplication":
            MessageLookupByLibrary.simpleMessage("Создать заявку"),
        "PayslipI18n_createSuccessTitle":
            MessageLookupByLibrary.simpleMessage("Заявка создана"),
        "PayslipI18n_description": MessageLookupByLibrary.simpleMessage(
            "Расчётный листок можно запросить за предыдущий месяц, начиная с 4-го числа следующего за отчётным."),
        "PayslipI18n_descriptionTitle":
            MessageLookupByLibrary.simpleMessage("Описание"),
        "PayslipI18n_howToIssueTexts": m29,
        "PayslipI18n_howToIssueTitle":
            MessageLookupByLibrary.simpleMessage("Как оформить"),
        "PayslipI18n_responseSuccessBody": MessageLookupByLibrary.simpleMessage(
            "Расчетный лист отправлен на почту"),
        "PayslipI18n_responseSuccessTitle":
            MessageLookupByLibrary.simpleMessage("Благодарим\nза обращение."),
        "PayslipI18n_selectPeriod":
            MessageLookupByLibrary.simpleMessage("Выберите период"),
        "PayslipI18n_submit":
            MessageLookupByLibrary.simpleMessage("Отправить заявку"),
        "PayslipI18n_texts": m30,
        "PayslipI18n_titles": m31,
        "PlaceWorkI18n_methodObtainingType": m32,
        "PlaceWorkI18n_original":
            MessageLookupByLibrary.simpleMessage("Оригинал"),
        "PlaceWorkI18n_placeWorkNotFound": MessageLookupByLibrary.simpleMessage(
            "Страница \"Справка с места работы\" не найдена"),
        "PlaceWorkI18n_responseSuccessBody":
            MessageLookupByLibrary.simpleMessage("Заявка создана"),
        "PlaceWorkI18n_responseSuccessTitle":
            MessageLookupByLibrary.simpleMessage("Благодарим\nза обращение."),
        "PlaceWorkI18n_sendRequest":
            MessageLookupByLibrary.simpleMessage("Отправить заявку"),
        "PlaceWorkI18n_titleIsSalary":
            MessageLookupByLibrary.simpleMessage("Зарплата"),
        "PlaceWorkI18n_titleMethodObtaining":
            MessageLookupByLibrary.simpleMessage("Как получить"),
        "PlaceWorkI18n_titleNote":
            MessageLookupByLibrary.simpleMessage("Примечание"),
        "PostsI18n_addComment":
            MessageLookupByLibrary.simpleMessage("Добавьте комментарий..."),
        "PostsI18n_answerComment":
            MessageLookupByLibrary.simpleMessage("Ответить"),
        "PostsI18n_closeComments":
            MessageLookupByLibrary.simpleMessage("Скрыть ответы"),
        "PostsI18n_comments":
            MessageLookupByLibrary.simpleMessage("Комментарий"),
        "PostsI18n_commentsNotFound":
            MessageLookupByLibrary.simpleMessage("Комментарии не найдены"),
        "PostsI18n_complain":
            MessageLookupByLibrary.simpleMessage("Пожаловаться"),
        "PostsI18n_confirmComplainPost": MessageLookupByLibrary.simpleMessage(
            "Вы уверены что хотите пожаловаться на пост?"),
        "PostsI18n_confirmDeleteComment": MessageLookupByLibrary.simpleMessage(
            "Вы уверены что хотите удалить комментарий?"),
        "PostsI18n_confirmDeletePost": MessageLookupByLibrary.simpleMessage(
            "Вы уверены что хотите удалить пост?"),
        "PostsI18n_create": MessageLookupByLibrary.simpleMessage("Создать"),
        "PostsI18n_delete": MessageLookupByLibrary.simpleMessage("Удалить"),
        "PostsI18n_edit": MessageLookupByLibrary.simpleMessage("Редактировать"),
        "PostsI18n_editPost":
            MessageLookupByLibrary.simpleMessage("Редактировать пост"),
        "PostsI18n_endDate": MessageLookupByLibrary.simpleMessage("Дата конца"),
        "PostsI18n_filterClean":
            MessageLookupByLibrary.simpleMessage("Очистить"),
        "PostsI18n_filterTitle": MessageLookupByLibrary.simpleMessage("Фильтр"),
        "PostsI18n_likesNotFound":
            MessageLookupByLibrary.simpleMessage("Лайки не найдены"),
        "PostsI18n_looks":
            MessageLookupByLibrary.simpleMessage("Просмотрели пост"),
        "PostsI18n_looksNotFound":
            MessageLookupByLibrary.simpleMessage("Пост еще не просмотрели"),
        "PostsI18n_newPost": MessageLookupByLibrary.simpleMessage("Новый пост"),
        "PostsI18n_openComments":
            MessageLookupByLibrary.simpleMessage("Посмотреть все ответы"),
        "PostsI18n_postAddedSuccessFull":
            MessageLookupByLibrary.simpleMessage("Пост успешно создан"),
        "PostsI18n_postComplained":
            MessageLookupByLibrary.simpleMessage("Жалоба отправлена"),
        "PostsI18n_postDeleted":
            MessageLookupByLibrary.simpleMessage("Пост удален"),
        "PostsI18n_postEditedSuccessFull":
            MessageLookupByLibrary.simpleMessage("Пост успешно отредактирован"),
        "PostsI18n_postImagesLabel":
            MessageLookupByLibrary.simpleMessage("Изображения"),
        "PostsI18n_postNotFound":
            MessageLookupByLibrary.simpleMessage("Пост не найден"),
        "PostsI18n_postTextLabel":
            MessageLookupByLibrary.simpleMessage("Описание"),
        "PostsI18n_postsNotFound":
            MessageLookupByLibrary.simpleMessage("Посты не найден"),
        "PostsI18n_save": MessageLookupByLibrary.simpleMessage("Сохранить"),
        "PostsI18n_sendComment":
            MessageLookupByLibrary.simpleMessage("Отправить"),
        "PostsI18n_share": MessageLookupByLibrary.simpleMessage("Поделиться"),
        "PostsI18n_started":
            MessageLookupByLibrary.simpleMessage("Дата начала"),
        "PostsI18n_taggedEmployeesTitle":
            MessageLookupByLibrary.simpleMessage("Отмеченные пользователи"),
        "PostsI18n_textLess": MessageLookupByLibrary.simpleMessage("свернуть"),
        "PostsI18n_textMore":
            MessageLookupByLibrary.simpleMessage("Читать далее"),
        "PostsI18n_title": MessageLookupByLibrary.simpleMessage("posts title"),
        "PostsI18n_watchAllComments": m33,
        "PostsI18n_whoLiked":
            MessageLookupByLibrary.simpleMessage("Отметки «Нравится»"),
        "PostsI18n_whoLikedNotFound":
            MessageLookupByLibrary.simpleMessage("Ни кто не лайкал этот пост"),
        "ProfileGoalsI18n_actualResult":
            MessageLookupByLibrary.simpleMessage("Фактический результат"),
        "ProfileGoalsI18n_actualResultIsEmpty":
            MessageLookupByLibrary.simpleMessage("Отсутствует"),
        "ProfileGoalsI18n_attestation":
            MessageLookupByLibrary.simpleMessage("Аттестация"),
        "ProfileGoalsI18n_complete":
            MessageLookupByLibrary.simpleMessage("Завершить"),
        "ProfileGoalsI18n_completingTask":
            MessageLookupByLibrary.simpleMessage("Завершение задачи"),
        "ProfileGoalsI18n_deadline":
            MessageLookupByLibrary.simpleMessage("Срок исполнения"),
        "ProfileGoalsI18n_describeGoalAchieved":
            MessageLookupByLibrary.simpleMessage(
                "Опишите как была достигнута цель"),
        "ProfileGoalsI18n_description":
            MessageLookupByLibrary.simpleMessage("Описание"),
        "ProfileGoalsI18n_expectedResult":
            MessageLookupByLibrary.simpleMessage("Ожидаемый результат"),
        "ProfileGoalsI18n_goals": MessageLookupByLibrary.simpleMessage("Цели"),
        "ProfileGoalsI18n_groups":
            MessageLookupByLibrary.simpleMessage("Группа целей"),
        "ProfileGoalsI18n_status":
            MessageLookupByLibrary.simpleMessage("Статус"),
        "ProfileGoalsI18n_task": MessageLookupByLibrary.simpleMessage("Задача"),
        "ProfileGoalsI18n_taskCompleted":
            MessageLookupByLibrary.simpleMessage("Задача решена"),
        "ProfileGoalsI18n_taskNotFound":
            MessageLookupByLibrary.simpleMessage("Задача не найдена"),
        "ProfileGoalsI18n_tasksNotFound":
            MessageLookupByLibrary.simpleMessage("Задачи не найдены"),
        "ProfileGoalsI18n_waysToAchieve":
            MessageLookupByLibrary.simpleMessage("Способы достижения"),
        "ProfileI18n_absence":
            MessageLookupByLibrary.simpleMessage("Отсутствия"),
        "ProfileI18n_contactLabel": m34,
        "ProfileI18n_contacts":
            MessageLookupByLibrary.simpleMessage("Контакты"),
        "ProfileI18n_contactsSuccess":
            MessageLookupByLibrary.simpleMessage("Контакты обновлены"),
        "ProfileI18n_info": MessageLookupByLibrary.simpleMessage("Информация"),
        "ProfileI18n_insurance":
            MessageLookupByLibrary.simpleMessage("Страхование"),
        "ProfileI18n_media": MessageLookupByLibrary.simpleMessage("Медиа"),
        "ProfileI18n_newTr":
            MessageLookupByLibrary.simpleMessage("newTdasdsadsar"),
        "ProfileI18n_profileNotFound":
            MessageLookupByLibrary.simpleMessage(" не найден"),
        "ProfileI18n_projects": MessageLookupByLibrary.simpleMessage("Проекты"),
        "ProfileI18n_sickLeave":
            MessageLookupByLibrary.simpleMessage("Больничные"),
        "ProfileI18n_sickLeaveWithoutProof":
            MessageLookupByLibrary.simpleMessage("Больничные без больничного"),
        "ProfileI18n_tetATet": MessageLookupByLibrary.simpleMessage("Встречи"),
        "ProfileI18n_title": MessageLookupByLibrary.simpleMessage("Профиль"),
        "ProfileI18n_vacation": MessageLookupByLibrary.simpleMessage("Отпуска"),
        "ProfileI18n_worklogs":
            MessageLookupByLibrary.simpleMessage("Списания"),
        "ProfileInsuranceI18n_copyToClipboard":
            MessageLookupByLibrary.simpleMessage(
                "Полис скопирован в буфер обмена"),
        "ProfileInsuranceI18n_from": MessageLookupByLibrary.simpleMessage("c"),
        "ProfileInsuranceI18n_insurance":
            MessageLookupByLibrary.simpleMessage("Страхование"),
        "ProfileInsuranceI18n_insuranceCompany":
            MessageLookupByLibrary.simpleMessage("Страховая компания"),
        "ProfileInsuranceI18n_insuranceType":
            MessageLookupByLibrary.simpleMessage("Тип страхования"),
        "ProfileInsuranceI18n_insuredPerson":
            MessageLookupByLibrary.simpleMessage("Застрахованное лицо"),
        "ProfileInsuranceI18n_number":
            MessageLookupByLibrary.simpleMessage("Номер полиса"),
        "ProfileInsuranceI18n_policiesNotFound":
            MessageLookupByLibrary.simpleMessage(
                "Полиса страхования не найдены"),
        "ProfileInsuranceI18n_to": MessageLookupByLibrary.simpleMessage("по"),
        "ProfileInsuranceI18n_unknownError":
            MessageLookupByLibrary.simpleMessage(
                "Ошибка. Проверьте Интернет соединение"),
        "ProfileInsuranceI18n_validity":
            MessageLookupByLibrary.simpleMessage("Срок действия"),
        "ProfileMediaI18n_posts": MessageLookupByLibrary.simpleMessage("Посты"),
        "ProfileMediaI18n_postsEmpty":
            MessageLookupByLibrary.simpleMessage("Посты еще не созданы"),
        "ProfileMediaI18n_profileMediaNotFound":
            MessageLookupByLibrary.simpleMessage(" not found"),
        "ProfileMediaI18n_settings":
            MessageLookupByLibrary.simpleMessage("Истории"),
        "ProfileMediaI18n_settingsEmpty":
            MessageLookupByLibrary.simpleMessage("Истории еще не созданы"),
        "ProfileMediaI18n_title":
            MessageLookupByLibrary.simpleMessage("Мои медиа"),
        "ProfileProjectsI18n_activeProjects":
            MessageLookupByLibrary.simpleMessage("Активные"),
        "ProfileProjectsI18n_allEmployee":
            MessageLookupByLibrary.simpleMessage("Все участники"),
        "ProfileProjectsI18n_currentTeam":
            MessageLookupByLibrary.simpleMessage("Текущая команда"),
        "ProfileProjectsI18n_currentTeamNotFound":
            MessageLookupByLibrary.simpleMessage(
                "У проекта нет текущих сотрудников"),
        "ProfileProjectsI18n_employeeProjects":
            MessageLookupByLibrary.simpleMessage("Проекты сотрудника"),
        "ProfileProjectsI18n_oldProjects":
            MessageLookupByLibrary.simpleMessage("Архивные"),
        "ProfileProjectsI18n_percentageInProject":
            MessageLookupByLibrary.simpleMessage("Участие"),
        "ProfileProjectsI18n_profileProjectsInfoNotFound":
            MessageLookupByLibrary.simpleMessage(
                "За данным проектом не закреплено ни одного сотрудника"),
        "ProfileProjectsI18n_profileProjectsNotFound":
            MessageLookupByLibrary.simpleMessage(
                "Пользователь не привязан ни к одному проекту"),
        "ProfileProjectsI18n_projectInfoTitle":
            MessageLookupByLibrary.simpleMessage("Информация о проекте"),
        "ProfileProjectsI18n_startDate":
            MessageLookupByLibrary.simpleMessage("Начало работы"),
        "ProfileWorklogsI18n_confirmDeleteWorkLog":
            MessageLookupByLibrary.simpleMessage(
                "Вы уверены что хотите удалить списание?"),
        "ProfileWorklogsI18n_delete":
            MessageLookupByLibrary.simpleMessage("Удалить"),
        "ProfileWorklogsI18n_detailing":
            MessageLookupByLibrary.simpleMessage("Детализация"),
        "ProfileWorklogsI18n_duplicate":
            MessageLookupByLibrary.simpleMessage("Дублировать"),
        "ProfileWorklogsI18n_edit":
            MessageLookupByLibrary.simpleMessage("Редактировать"),
        "ProfileWorklogsI18n_title":
            MessageLookupByLibrary.simpleMessage("Списания"),
        "ServicesI18n_getServiceShortTitle": m35,
        "ServicesI18n_getServiceTitle": m36,
        "ServicesI18n_send": MessageLookupByLibrary.simpleMessage("Отправить"),
        "ServicesI18n_settings":
            MessageLookupByLibrary.simpleMessage("Настройка сервисов"),
        "ServicesI18n_title": MessageLookupByLibrary.simpleMessage("Сервисы"),
        "SickLeaveI18n_accept": MessageLookupByLibrary.simpleMessage(
            "Я подтверждаю, что использую БББ по причине плохого самочувствия"),
        "SickLeaveI18n_attention": MessageLookupByLibrary.simpleMessage(
            "В случае нарушения сроков, оформление задним числом может быть сделано только сотрудником кадровой службы. Для этого необходимо написать письмо на адрес службы персонала "),
        "SickLeaveI18n_available": m37,
        "SickLeaveI18n_availableWilBe": m38,
        "SickLeaveI18n_createApplication":
            MessageLookupByLibrary.simpleMessage("Создать заявку"),
        "SickLeaveI18n_createSuccessDescription":
            MessageLookupByLibrary.simpleMessage(
                "Ожидайте письмо\nс подтверждением на почте"),
        "SickLeaveI18n_createSuccessTitle":
            MessageLookupByLibrary.simpleMessage("Заявка создана"),
        "SickLeaveI18n_dateStart":
            MessageLookupByLibrary.simpleMessage("Дата начала"),
        "SickLeaveI18n_dayCount":
            MessageLookupByLibrary.simpleMessage("Количество дней"),
        "SickLeaveI18n_howToIssueTexts": m39,
        "SickLeaveI18n_howToIssueTitle":
            MessageLookupByLibrary.simpleMessage("Как оформить"),
        "SickLeaveI18n_send": MessageLookupByLibrary.simpleMessage("Отправить"),
        "SickLeaveI18n_sickLeaveListNotFound":
            MessageLookupByLibrary.simpleMessage("Больничные не найдены"),
        "SickLeaveI18n_sickLeaveNotFound":
            MessageLookupByLibrary.simpleMessage(" not found"),
        "SickLeaveI18n_texts": m40,
        "SickLeaveI18n_titles": m41,
        "SickLeaveWithoutProofI18n_accept": MessageLookupByLibrary.simpleMessage(
            "Я подтверждаю, что использую БББ по причине плохого самочувствия"),
        "SickLeaveWithoutProofI18n_attention": MessageLookupByLibrary.simpleMessage(
            "В случае нарушения сроков, оформление задним числом может быть сделано только сотрудником кадровой службы. Для этого необходимо написать письмо на адрес службы персонала "),
        "SickLeaveWithoutProofI18n_available": m42,
        "SickLeaveWithoutProofI18n_availableWilBe": m43,
        "SickLeaveWithoutProofI18n_createApplication":
            MessageLookupByLibrary.simpleMessage("Создать заявку"),
        "SickLeaveWithoutProofI18n_createSuccessDescription":
            MessageLookupByLibrary.simpleMessage(
                "Ожидайте письмо\nс подтверждением на почте"),
        "SickLeaveWithoutProofI18n_createSuccessTitle":
            MessageLookupByLibrary.simpleMessage("Заявка создана"),
        "SickLeaveWithoutProofI18n_dateStart":
            MessageLookupByLibrary.simpleMessage("Дата начала"),
        "SickLeaveWithoutProofI18n_dayCount":
            MessageLookupByLibrary.simpleMessage("Количество дней"),
        "SickLeaveWithoutProofI18n_howToIssueTexts": m44,
        "SickLeaveWithoutProofI18n_howToIssueTitle":
            MessageLookupByLibrary.simpleMessage("Как оформить"),
        "SickLeaveWithoutProofI18n_send":
            MessageLookupByLibrary.simpleMessage("Отправить"),
        "SickLeaveWithoutProofI18n_sickLeaveWithoutProofListNotFound":
            MessageLookupByLibrary.simpleMessage("БББ не найдены"),
        "SickLeaveWithoutProofI18n_sickLeaveWithoutProofNotFound":
            MessageLookupByLibrary.simpleMessage("not found"),
        "SickLeaveWithoutProofI18n_texts": m45,
        "SickLeaveWithoutProofI18n_titles": m46,
        "SettingsI18n_add": MessageLookupByLibrary.simpleMessage("Добавить"),
        "SettingsI18n_addTitle":
            MessageLookupByLibrary.simpleMessage("Добавить историю"),
        "SettingsI18n_complain":
            MessageLookupByLibrary.simpleMessage("Пожаловаться"),
        "SettingsI18n_complainText": MessageLookupByLibrary.simpleMessage(
            "Вы уверены что хотите пожаловаться на историю?"),
        "SettingsI18n_create": MessageLookupByLibrary.simpleMessage("Создать"),
        "SettingsI18n_delete": MessageLookupByLibrary.simpleMessage("Удалить"),
        "SettingsI18n_deleteText": MessageLookupByLibrary.simpleMessage(
            "Вы уверены что хотите удалить историю?"),
        "SettingsI18n_label": MessageLookupByLibrary.simpleMessage("Заголовок"),
        "SettingsI18n_marksReaction":
            MessageLookupByLibrary.simpleMessage("Отметки «Реакции»"),
        "SettingsI18n_reactions":
            MessageLookupByLibrary.simpleMessage("Реакции"),
        "SettingsI18n_responseSuccess":
            MessageLookupByLibrary.simpleMessage("История успешно добавлена"),
        "SettingsI18n_settingsNotFound":
            MessageLookupByLibrary.simpleMessage(" not found"),
        "SettingsI18n_text": MessageLookupByLibrary.simpleMessage("Описание"),
        "SettingsI18n_title":
            MessageLookupByLibrary.simpleMessage("settings title"),
        "SupportI18n_submit": MessageLookupByLibrary.simpleMessage("Отправить"),
        "SupportI18n_success": MessageLookupByLibrary.simpleMessage(
            "Ваша заявка отправлена. Наши специалисты свяжутся с вами в ближайшее время"),
        "SupportI18n_supportNotFound":
            MessageLookupByLibrary.simpleMessage("Support not found"),
        "SupportI18n_title": MessageLookupByLibrary.simpleMessage("Поддержка"),
        "UsersI18n_absenceStatus": m47,
        "UsersI18n_affordableLeaveFact": m48,
        "UsersI18n_birthday":
            MessageLookupByLibrary.simpleMessage("День рождения"),
        "UsersI18n_birthdayOffDialogBody":
            MessageLookupByLibrary.simpleMessage("Перейти в настройки?"),
        "UsersI18n_birthdayOffDialogTitle":
            MessageLookupByLibrary.simpleMessage(
                "Уведомления о дне рождения отключены"),
        "UsersI18n_employee":
            MessageLookupByLibrary.simpleMessage("Сотрудник Neoflex"),
        "UsersI18n_employeeCompanyRole":
            MessageLookupByLibrary.simpleMessage("Роль сотрудника в компании"),
        "UsersI18n_filterClean":
            MessageLookupByLibrary.simpleMessage("Очистить"),
        "UsersI18n_filterTitle": MessageLookupByLibrary.simpleMessage("Фильтр"),
        "UsersI18n_foundedEmployees": m49,
        "UsersI18n_info": MessageLookupByLibrary.simpleMessage("Информация"),
        "UsersI18n_manager":
            MessageLookupByLibrary.simpleMessage("Руководитель"),
        "UsersI18n_media": MessageLookupByLibrary.simpleMessage("Медиа"),
        "UsersI18n_orgStructure":
            MessageLookupByLibrary.simpleMessage("Организационная структура"),
        "UsersI18n_posts": MessageLookupByLibrary.simpleMessage("Посты"),
        "UsersI18n_postsEmpty":
            MessageLookupByLibrary.simpleMessage("Посты еще не созданы"),
        "UsersI18n_projects": MessageLookupByLibrary.simpleMessage("Проекты"),
        "UsersI18n_selectedEmployees": m50,
        "UsersI18n_specialization":
            MessageLookupByLibrary.simpleMessage("Специализация"),
        "UsersI18n_startWork":
            MessageLookupByLibrary.simpleMessage("Начало работы"),
        "UsersI18n_settings": MessageLookupByLibrary.simpleMessage("Истории"),
        "UsersI18n_title": MessageLookupByLibrary.simpleMessage("users title"),
        "UsersI18n_usersNotFound":
            MessageLookupByLibrary.simpleMessage("User not found"),
        "VacationI18n_agreementEmployee":
            MessageLookupByLibrary.simpleMessage("Согласующие"),
        "VacationI18n_attachFile":
            MessageLookupByLibrary.simpleMessage("Прикрепите файл"),
        "VacationI18n_attention": MessageLookupByLibrary.simpleMessage(
            "В случае нарушения сроков, оформление задним числом может быть сделано только сотрудником кадровой службы. Для этого необходимо написать письмо на адрес службы персонала "),
        "VacationI18n_available": m51,
        "VacationI18n_changeEmployeeName":
            MessageLookupByLibrary.simpleMessage("Замещение на время отпуска"),
        "VacationI18n_createApplication":
            MessageLookupByLibrary.simpleMessage("Создать заявку"),
        "VacationI18n_createErrorTitle":
            MessageLookupByLibrary.simpleMessage("Заявка не создана"),
        "VacationI18n_createSuccessTitle":
            MessageLookupByLibrary.simpleMessage("Заявка создана"),
        "VacationI18n_dateEnd":
            MessageLookupByLibrary.simpleMessage("Дата конца"),
        "VacationI18n_dateStart":
            MessageLookupByLibrary.simpleMessage("Дата начала"),
        "VacationI18n_dayCount":
            MessageLookupByLibrary.simpleMessage("Количество календарных дней"),
        "VacationI18n_deliveryManagerName":
            MessageLookupByLibrary.simpleMessage("Delivery manager"),
        "VacationI18n_errorDescription": m52,
        "VacationI18n_foundedEmployees": m53,
        "VacationI18n_howToIssueTexts": m54,
        "VacationI18n_howToIssueTitle":
            MessageLookupByLibrary.simpleMessage("Как оформить"),
        "VacationI18n_projectManagerName":
            MessageLookupByLibrary.simpleMessage("Проектный менеджер"),
        "VacationI18n_selectedUser":
            MessageLookupByLibrary.simpleMessage("Выбран пользователь: "),
        "VacationI18n_selectedUsers": m55,
        "VacationI18n_send": MessageLookupByLibrary.simpleMessage("Отправить"),
        "VacationI18n_sendOnAgreement":
            MessageLookupByLibrary.simpleMessage("Отправить на согласование"),
        "VacationI18n_successDescription": m56,
        "VacationI18n_taggedEmployeesTitle":
            MessageLookupByLibrary.simpleMessage("Отмеченные пользователи"),
        "VacationI18n_texts": m57,
        "VacationI18n_titles": m58,
        "VacationI18n_vacationListNotFound":
            MessageLookupByLibrary.simpleMessage("Отпуска не найдены"),
        "VacationI18n_vacationNotFound": MessageLookupByLibrary.simpleMessage(
            "Заявление на отпуск не найдено"),
        "VacationI18n_vacationType": m59,
        "VacationI18n_vacationTypeTitle":
            MessageLookupByLibrary.simpleMessage("Тип отпуска"),
        "VacationI18n_vacationTypeValue": m60,
        "WorkBookI18n_certificateFormType": m61,
        "WorkBookI18n_copy": MessageLookupByLibrary.simpleMessage("Копия"),
        "WorkBookI18n_responseSuccessBody":
            MessageLookupByLibrary.simpleMessage("Заявка создана"),
        "WorkBookI18n_responseSuccessTitle":
            MessageLookupByLibrary.simpleMessage("Благодарим\nза обращение."),
        "WorkBookI18n_sendRequest":
            MessageLookupByLibrary.simpleMessage("Отправить заявку"),
        "WorkBookI18n_titleCertificateForm":
            MessageLookupByLibrary.simpleMessage("Форма сертификата"),
        "WorkBookI18n_titleDateCertificationCopy":
            MessageLookupByLibrary.simpleMessage("Дата заверения копии"),
        "WorkBookI18n_titleNote":
            MessageLookupByLibrary.simpleMessage("Примечание"),
        "WorkBookI18n_titleNumberCopies":
            MessageLookupByLibrary.simpleMessage("Количество экземпляров"),
        "WorkBookI18n_workBookNotFound": MessageLookupByLibrary.simpleMessage(
            "Страница \"Копия трудовой книжки\" не найдена"),
        "WorkLogsI18n_title":
            MessageLookupByLibrary.simpleMessage("work_logs title"),
        "WorkLogsI18n_workLogsNotFound":
            MessageLookupByLibrary.simpleMessage("WorkLogs not found"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "profileWorklogsNotFound":
            MessageLookupByLibrary.simpleMessage("Списания не найдены"),
        "subject": MessageLookupByLibrary.simpleMessage("Укажите проблему")
      };
}
