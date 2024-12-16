///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'translations.g.dart';

// Path: <root>
class LocaleKeysTr extends LocaleKeys {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	LocaleKeysTr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.tr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tr>.
	@override final TranslationMetadata<AppLocale, LocaleKeys> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final LocaleKeysTr _root = this; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysTabTr tab = _LocaleKeysTabTr._(_root);
	@override late final _LocaleKeysSkillTr skill = _LocaleKeysSkillTr._(_root);
	@override late final _LocaleKeysWelcomeTr welcome = _LocaleKeysWelcomeTr._(_root);
	@override late final _LocaleKeysSummaryTr summary = _LocaleKeysSummaryTr._(_root);
	@override late final _LocaleKeysPetProjectsTr petProjects = _LocaleKeysPetProjectsTr._(_root);
	@override String year({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('tr'))(n,
		zero: '${n} yıl',
		one: '${n} yıl',
		two: '${n} yıl',
		few: '${n} yıl',
		many: '${n} yıl',
		other: '${n} yıl',
	);
	@override String get androidDemo => 'Android Demo';
	@override String get iosDemo => 'iOS Demo';
	@override late final _LocaleKeysNotFoundTr notFound = _LocaleKeysNotFoundTr._(_root);
	@override String get pageTitle => 'Kseniia | Flutter Geliştirici';
	@override String get mainImageCaption => 'Görsel grafik işleme kullanılarak oluşturuldu';
	@override late final _LocaleKeysExperienceTr experience = _LocaleKeysExperienceTr._(_root);
}

// Path: tab
class _LocaleKeysTabTr extends LocaleKeysTabEn {
	_LocaleKeysTabTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get home => 'Anasayfa';
	@override String get summary => 'Özet';
	@override String get projects => 'Projeler';
	@override String get experience => 'Deneyim';
}

// Path: skill
class _LocaleKeysSkillTr extends LocaleKeysSkillEn {
	_LocaleKeysSkillTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get teamPlayer => 'Takım oyuncusu';
	@override String get communicative => 'İletişim becerisi';
	@override String get problemSolver => 'Problem çözücü';
	@override String get leader => 'Lider';
	@override String get nonConflictual => 'Çatışmasız';
}

// Path: welcome
class _LocaleKeysWelcomeTr extends LocaleKeysWelcomeEn {
	_LocaleKeysWelcomeTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Flutter geliştiricisi';
	@override String get subtitle => 'Kseniia Nikitina';
}

// Path: summary
class _LocaleKeysSummaryTr extends LocaleKeysSummaryEn {
	_LocaleKeysSummaryTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysSummaryTotalExperienceTr totalExperience = _LocaleKeysSummaryTotalExperienceTr._(_root);
	@override late final _LocaleKeysSummaryFlutterExperienceTr flutterExperience = _LocaleKeysSummaryFlutterExperienceTr._(_root);
	@override late final _LocaleKeysSummaryHighEducationTr highEducation = _LocaleKeysSummaryHighEducationTr._(_root);
	@override late final _LocaleKeysSummaryOpenSourceTr openSource = _LocaleKeysSummaryOpenSourceTr._(_root);
	@override late final _LocaleKeysSummaryGooglePlayTr googlePlay = _LocaleKeysSummaryGooglePlayTr._(_root);
	@override late final _LocaleKeysSummaryEnglishTr english = _LocaleKeysSummaryEnglishTr._(_root);
	@override String get title => 'Özet';
	@override String get subtitle => 'Çok kısa ve tatlı';
}

// Path: petProjects
class _LocaleKeysPetProjectsTr extends LocaleKeysPetProjectsEn {
	_LocaleKeysPetProjectsTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pet projeler';
	@override String get subtitle => 'Benzersiz, kreatif, benim!';
	@override late final _LocaleKeysPetProjectsErrorTr error = _LocaleKeysPetProjectsErrorTr._(_root);
}

// Path: notFound
class _LocaleKeysNotFoundTr extends LocaleKeysNotFoundEn {
	_LocaleKeysNotFoundTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get title => '404';
	@override String get subtitle => 'Bu sayfa mevcut değil';
	@override String get button => 'Anasayfaya git';
}

// Path: experience
class _LocaleKeysExperienceTr extends LocaleKeysExperienceEn {
	_LocaleKeysExperienceTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Deneyim';
	@override String get subtitle => 'Sıkıcı kısım';
	@override late final _LocaleKeysExperienceGreenfluxTr greenflux = _LocaleKeysExperienceGreenfluxTr._(_root);
	@override late final _LocaleKeysExperienceFriflexTr friflex = _LocaleKeysExperienceFriflexTr._(_root);
	@override late final _LocaleKeysExperienceAgroStabTr agroStab = _LocaleKeysExperienceAgroStabTr._(_root);
}

// Path: summary.totalExperience
class _LocaleKeysSummaryTotalExperienceTr extends LocaleKeysSummaryTotalExperienceEn {
	_LocaleKeysSummaryTotalExperienceTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'toplam deneyim';
	@override String get content => 'Dart\'a ek olarak, Kotlin, Swift, JavaScript, Python, C#, R ve daha birçok dilde deneyimim var';
}

// Path: summary.flutterExperience
class _LocaleKeysSummaryFlutterExperienceTr extends LocaleKeysSummaryFlutterExperienceEn {
	_LocaleKeysSummaryFlutterExperienceTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'Flutter deneyimi';
	@override String get content1 => 'Ben geliştiriyorum';
	@override String get content2 => 'web ve mobil';
	@override String get content3 => 'uygulamalar ve ayrıca';
	@override String get content4 => 'backend';
	@override String get content5 => 'yapıları. Karmaşık sistemler ve özelleştirilmiş Flutter paketleri konusunda uzmanım';
}

// Path: summary.highEducation
class _LocaleKeysSummaryHighEducationTr extends LocaleKeysSummaryHighEducationEn {
	_LocaleKeysSummaryHighEducationTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yükseköğretim';
	@override String get subtitle => 'mühendislik alanında';
	@override String get content1 => '«Bilgi ve iletişim sistemlerinde programlama»';
	@override String get content2 => 'ITMO Üniversitesi';
}

// Path: summary.openSource
class _LocaleKeysSummaryOpenSourceTr extends LocaleKeysSummaryOpenSourceEn {
	_LocaleKeysSummaryOpenSourceTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Açık kaynak';
	@override String get subtitle => 'aktif proje';
	@override String get content => 'P2P iletişim için paket';
	@override String get contentButton => 'Paketi görüntüle';
}

// Path: summary.googlePlay
class _LocaleKeysSummaryGooglePlayTr extends LocaleKeysSummaryGooglePlayEn {
	_LocaleKeysSummaryGooglePlayTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Google Play';
	@override String get subtitle => 'aktif uygulama';
	@override String get content => 'Metin paylaşımı ve dosya paylaşımı için çevrimdışı sohbet uygulaması';
	@override String get contentButton => 'Uygulamayı aç';
}

// Path: summary.english
class _LocaleKeysSummaryEnglishTr extends LocaleKeysSummaryEnglishEn {
	_LocaleKeysSummaryEnglishTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'İngilizce';
	@override String get subtitle => 'iş seviyesi';
	@override String get content => 'I very, very, very speak English';
}

// Path: petProjects.error
class _LocaleKeysPetProjectsErrorTr extends LocaleKeysPetProjectsErrorEn {
	_LocaleKeysPetProjectsErrorTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oops!';
	@override String subtitle({required Object id}) => 'Project with ID=${id} not found. Please check the ID and try again.';
}

// Path: experience.greenflux
class _LocaleKeysExperienceGreenfluxTr extends LocaleKeysExperienceGreenfluxEn {
	_LocaleKeysExperienceGreenfluxTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mobil Uygulama Geliştiricisi';
	@override String get organization => 'Greenflux Assets B.V.';
	@override String get location => 'Amsterdam, Hollanda (Hibrit)';
	@override String get duration => 'Şubat 2024 – Günümüz';
	@override String get subtitle => 'Elektrikli araç şarj istasyonları için uygulama geliştirme';
	@override late final _LocaleKeysExperienceGreenfluxSkillsTr skills = _LocaleKeysExperienceGreenfluxSkillsTr._(_root);
	@override late final _LocaleKeysExperienceGreenfluxAchievementsTr achievements = _LocaleKeysExperienceGreenfluxAchievementsTr._(_root);
}

// Path: experience.friflex
class _LocaleKeysExperienceFriflexTr extends LocaleKeysExperienceFriflexEn {
	_LocaleKeysExperienceFriflexTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mobil Uygulama Geliştiricisi';
	@override String get organization => 'Friflex';
	@override String get location => 'Moskova, Rusya';
	@override String get duration => 'Ağustos 2022 – Aralık 2023';
	@override String get subtitle => 'Satranç ve dama oyunlarını tanıyan servislerin geliştirilmesi';
	@override late final _LocaleKeysExperienceFriflexSkillsTr skills = _LocaleKeysExperienceFriflexSkillsTr._(_root);
	@override late final _LocaleKeysExperienceFriflexAchievementsTr achievements = _LocaleKeysExperienceFriflexAchievementsTr._(_root);
}

// Path: experience.agroStab
class _LocaleKeysExperienceAgroStabTr extends LocaleKeysExperienceAgroStabEn {
	_LocaleKeysExperienceAgroStabTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Full-stack Geliştirici';
	@override String get organization => 'AgroSTAB';
	@override String get location => 'St. Petersburg, Rusya';
	@override String get duration => 'Şubat 2022 – Temmuz 2022';
	@override String get subtitle => 'Akıllı seralar için yönetim paneli geliştirme';
	@override late final _LocaleKeysExperienceAgroStabSkillsTr skills = _LocaleKeysExperienceAgroStabSkillsTr._(_root);
	@override late final _LocaleKeysExperienceAgroStabAchievementsTr achievements = _LocaleKeysExperienceAgroStabAchievementsTr._(_root);
}

// Path: experience.greenflux.skills
class _LocaleKeysExperienceGreenfluxSkillsTr extends LocaleKeysExperienceGreenfluxSkillsEn {
	_LocaleKeysExperienceGreenfluxSkillsTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Dart';
	@override String get skill2 => 'Flutter';
	@override String get skill3 => 'Google Play';
	@override String get skill4 => 'Firebase';
	@override String get skill5 => 'Git';
	@override String get skill6 => 'ChatGPT';
	@override String get skill7 => 'BloC';
	@override String get skill8 => 'App Store';
	@override String get skill9 => 'SwiftUI';
	@override String get skill10 => 'İngilizce';
	@override String get skill11 => 'REST API';
	@override String get skill12 => 'Figma';
	@override String get skill13 => 'Nesne Yönelimli Programlama (OOP)';
}

// Path: experience.greenflux.achievements
class _LocaleKeysExperienceGreenfluxAchievementsTr extends LocaleKeysExperienceGreenfluxAchievementsEn {
	_LocaleKeysExperienceGreenfluxAchievementsTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'Teknik spesifikasyondan yayına kadar tüm geliştirme döngüsünü destekledim';
	@override String get achievement2 => 'Paylaşılan bir kod tabanına sahip 10\'dan fazla uygulamanın sistemini sürdürdüm';
	@override String get achievement3 => 'Tüm uygulamalar için linters, formatlama ve ortak sınıf sistemi kurdum';
	@override String get achievement4 => 'Pull request\'leri kontrol etmek, uygulamaları derlemek ve yayınlamak için pipeline\'lar oluşturdum, süreçleri basitleştiren betikler yazdım';
	@override String get achievement5 => 'Git Flow\'u yapılandırdım ve uyumunu izledim';
	@override String get achievement6 => 'Google Maps, bildirimler ve diğer karmaşık fonksiyonlarla yakın bir şekilde çalıştım';
	@override String get achievement7 => 'SwiftUI kullanarak iOS Live Activities\'yi tamamen uyguladım ve bunu birkaç uygulamaya genişlettim';
	@override String get achievement8 => 'Tüm kod tabanını testlerle kapsadım';
}

// Path: experience.friflex.skills
class _LocaleKeysExperienceFriflexSkillsTr extends LocaleKeysExperienceFriflexSkillsEn {
	_LocaleKeysExperienceFriflexSkillsTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Firebase';
	@override String get skill2 => 'Veritabanları';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Figma';
	@override String get skill5 => 'Lokalizasyon';
	@override String get skill6 => 'ChatGPT';
	@override String get skill7 => 'Dart';
	@override String get skill8 => 'REST API';
	@override String get skill9 => 'Flutter';
	@override String get skill10 => 'Google Play';
	@override String get skill11 => 'Tasarım Desenleri';
	@override String get skill12 => 'Git';
	@override String get skill13 => 'BloC';
	@override String get skill14 => 'Nesne Yönelimli Programlama (OOP)';
}

// Path: experience.friflex.achievements
class _LocaleKeysExperienceFriflexAchievementsTr extends LocaleKeysExperienceFriflexAchievementsEn {
	_LocaleKeysExperienceFriflexAchievementsTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'Teknik spesifikasyondan yayına kadar tüm geliştirme döngüsünü destekledim';
	@override String get achievement2 => '3 özel paket oluşturdum ve 10\'dan fazla paketi sürdürdüm, bunlar arasındaki bağımlılıkları yapılandırdım';
	@override String get achievement3 => 'Üçüncü taraf hizmetleri başarıyla entegre ettim (MiniO, Firebase)';
	@override String get achievement4 => 'Flutter Web kullanarak yönetim panelleri geliştirdim';
	@override String get achievement5 => 'Dart kullanarak backend geliştirdim';
	@override String get achievement6 => 'Birçok UI bileşeni ve animasyonlar geliştirdim';
	@override String get achievement7 => 'Verileri bulut depolama alanına parçalar halinde gönderen bir arka plan servisi geliştirdim';
	@override String get achievement8 => 'Mobil uygulama, backend ve web kısmından oluşan canlı yayın sistemini sürdürdüm';
}

// Path: experience.agroStab.skills
class _LocaleKeysExperienceAgroStabSkillsTr extends LocaleKeysExperienceAgroStabSkillsEn {
	_LocaleKeysExperienceAgroStabSkillsTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Mqtt';
	@override String get skill2 => 'Cron';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Linux';
	@override String get skill5 => 'İngilizce';
	@override String get skill6 => 'Git';
	@override String get skill7 => 'ReactJS';
	@override String get skill8 => 'GitLab';
}

// Path: experience.agroStab.achievements
class _LocaleKeysExperienceAgroStabAchievementsTr extends LocaleKeysExperienceAgroStabAchievementsEn {
	_LocaleKeysExperienceAgroStabAchievementsTr._(LocaleKeysTr root) : this._root = root, super.internal(root);

	final LocaleKeysTr _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'Teknik spesifikasyondan yayına kadar tüm geliştirme döngüsünü destekledim';
	@override String get achievement2 => 'React.js kullanarak kullanıcı arayüzünü geliştirdim';
	@override String get achievement3 => 'react-redux kullanarak veri işleme entegrasyonu sağladım';
	@override String get achievement4 => 'Bileşenlerin yapısını, yerleşimini ve bağlantılarını tasarladım';
	@override String get achievement5 => 'Kullanıcı deneyimini iyileştirmek için etkileşimli öğeler ekledim';
	@override String get achievement6 => 'Nest.js ile yazılmış backend yapısını iyileştirdim ve veri işleme mantığı ekledim';
	@override String get achievement7 => 'PostgreSQL veritabanı yapısını tasarladım ve güncellemeleri uyguladım';
	@override String get achievement8 => 'Cron kullanarak veritabanında planlı veri güncellemeleri için algoritmalar geliştirdim';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on LocaleKeysTr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'tab.home': return 'Anasayfa';
			case 'tab.summary': return 'Özet';
			case 'tab.projects': return 'Projeler';
			case 'tab.experience': return 'Deneyim';
			case 'skill.teamPlayer': return 'Takım oyuncusu';
			case 'skill.communicative': return 'İletişim becerisi';
			case 'skill.problemSolver': return 'Problem çözücü';
			case 'skill.leader': return 'Lider';
			case 'skill.nonConflictual': return 'Çatışmasız';
			case 'welcome.title': return 'Flutter geliştiricisi';
			case 'welcome.subtitle': return 'Kseniia Nikitina';
			case 'summary.totalExperience.subtitle': return 'toplam deneyim';
			case 'summary.totalExperience.content': return 'Dart\'a ek olarak, Kotlin, Swift, JavaScript, Python, C#, R ve daha birçok dilde deneyimim var';
			case 'summary.flutterExperience.subtitle': return 'Flutter deneyimi';
			case 'summary.flutterExperience.content1': return 'Ben geliştiriyorum';
			case 'summary.flutterExperience.content2': return 'web ve mobil';
			case 'summary.flutterExperience.content3': return 'uygulamalar ve ayrıca';
			case 'summary.flutterExperience.content4': return 'backend';
			case 'summary.flutterExperience.content5': return 'yapıları. Karmaşık sistemler ve özelleştirilmiş Flutter paketleri konusunda uzmanım';
			case 'summary.highEducation.title': return 'Yükseköğretim';
			case 'summary.highEducation.subtitle': return 'mühendislik alanında';
			case 'summary.highEducation.content1': return '«Bilgi ve iletişim sistemlerinde programlama»';
			case 'summary.highEducation.content2': return 'ITMO Üniversitesi';
			case 'summary.openSource.title': return 'Açık kaynak';
			case 'summary.openSource.subtitle': return 'aktif proje';
			case 'summary.openSource.content': return 'P2P iletişim için paket';
			case 'summary.openSource.contentButton': return 'Paketi görüntüle';
			case 'summary.googlePlay.title': return 'Google Play';
			case 'summary.googlePlay.subtitle': return 'aktif uygulama';
			case 'summary.googlePlay.content': return 'Metin paylaşımı ve dosya paylaşımı için çevrimdışı sohbet uygulaması';
			case 'summary.googlePlay.contentButton': return 'Uygulamayı aç';
			case 'summary.english.title': return 'İngilizce';
			case 'summary.english.subtitle': return 'iş seviyesi';
			case 'summary.english.content': return 'I very, very, very speak English';
			case 'summary.title': return 'Özet';
			case 'summary.subtitle': return 'Çok kısa ve tatlı';
			case 'petProjects.title': return 'Pet projeler';
			case 'petProjects.subtitle': return 'Benzersiz, kreatif, benim!';
			case 'petProjects.error.title': return 'Oops!';
			case 'petProjects.error.subtitle': return ({required Object id}) => 'Project with ID=${id} not found. Please check the ID and try again.';
			case 'year': return ({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('tr'))(n,
				zero: '${n} yıl',
				one: '${n} yıl',
				two: '${n} yıl',
				few: '${n} yıl',
				many: '${n} yıl',
				other: '${n} yıl',
			);
			case 'androidDemo': return 'Android Demo';
			case 'iosDemo': return 'iOS Demo';
			case 'notFound.title': return '404';
			case 'notFound.subtitle': return 'Bu sayfa mevcut değil';
			case 'notFound.button': return 'Anasayfaya git';
			case 'pageTitle': return 'Kseniia | Flutter Geliştirici';
			case 'mainImageCaption': return 'Görsel grafik işleme kullanılarak oluşturuldu';
			case 'experience.title': return 'Deneyim';
			case 'experience.subtitle': return 'Sıkıcı kısım';
			case 'experience.greenflux.title': return 'Mobil Uygulama Geliştiricisi';
			case 'experience.greenflux.organization': return 'Greenflux Assets B.V.';
			case 'experience.greenflux.location': return 'Amsterdam, Hollanda (Hibrit)';
			case 'experience.greenflux.duration': return 'Şubat 2024 – Günümüz';
			case 'experience.greenflux.subtitle': return 'Elektrikli araç şarj istasyonları için uygulama geliştirme';
			case 'experience.greenflux.skills.skill1': return 'Dart';
			case 'experience.greenflux.skills.skill2': return 'Flutter';
			case 'experience.greenflux.skills.skill3': return 'Google Play';
			case 'experience.greenflux.skills.skill4': return 'Firebase';
			case 'experience.greenflux.skills.skill5': return 'Git';
			case 'experience.greenflux.skills.skill6': return 'ChatGPT';
			case 'experience.greenflux.skills.skill7': return 'BloC';
			case 'experience.greenflux.skills.skill8': return 'App Store';
			case 'experience.greenflux.skills.skill9': return 'SwiftUI';
			case 'experience.greenflux.skills.skill10': return 'İngilizce';
			case 'experience.greenflux.skills.skill11': return 'REST API';
			case 'experience.greenflux.skills.skill12': return 'Figma';
			case 'experience.greenflux.skills.skill13': return 'Nesne Yönelimli Programlama (OOP)';
			case 'experience.greenflux.achievements.achievement1': return 'Teknik spesifikasyondan yayına kadar tüm geliştirme döngüsünü destekledim';
			case 'experience.greenflux.achievements.achievement2': return 'Paylaşılan bir kod tabanına sahip 10\'dan fazla uygulamanın sistemini sürdürdüm';
			case 'experience.greenflux.achievements.achievement3': return 'Tüm uygulamalar için linters, formatlama ve ortak sınıf sistemi kurdum';
			case 'experience.greenflux.achievements.achievement4': return 'Pull request\'leri kontrol etmek, uygulamaları derlemek ve yayınlamak için pipeline\'lar oluşturdum, süreçleri basitleştiren betikler yazdım';
			case 'experience.greenflux.achievements.achievement5': return 'Git Flow\'u yapılandırdım ve uyumunu izledim';
			case 'experience.greenflux.achievements.achievement6': return 'Google Maps, bildirimler ve diğer karmaşık fonksiyonlarla yakın bir şekilde çalıştım';
			case 'experience.greenflux.achievements.achievement7': return 'SwiftUI kullanarak iOS Live Activities\'yi tamamen uyguladım ve bunu birkaç uygulamaya genişlettim';
			case 'experience.greenflux.achievements.achievement8': return 'Tüm kod tabanını testlerle kapsadım';
			case 'experience.friflex.title': return 'Mobil Uygulama Geliştiricisi';
			case 'experience.friflex.organization': return 'Friflex';
			case 'experience.friflex.location': return 'Moskova, Rusya';
			case 'experience.friflex.duration': return 'Ağustos 2022 – Aralık 2023';
			case 'experience.friflex.subtitle': return 'Satranç ve dama oyunlarını tanıyan servislerin geliştirilmesi';
			case 'experience.friflex.skills.skill1': return 'Firebase';
			case 'experience.friflex.skills.skill2': return 'Veritabanları';
			case 'experience.friflex.skills.skill3': return 'PostgreSQL';
			case 'experience.friflex.skills.skill4': return 'Figma';
			case 'experience.friflex.skills.skill5': return 'Lokalizasyon';
			case 'experience.friflex.skills.skill6': return 'ChatGPT';
			case 'experience.friflex.skills.skill7': return 'Dart';
			case 'experience.friflex.skills.skill8': return 'REST API';
			case 'experience.friflex.skills.skill9': return 'Flutter';
			case 'experience.friflex.skills.skill10': return 'Google Play';
			case 'experience.friflex.skills.skill11': return 'Tasarım Desenleri';
			case 'experience.friflex.skills.skill12': return 'Git';
			case 'experience.friflex.skills.skill13': return 'BloC';
			case 'experience.friflex.skills.skill14': return 'Nesne Yönelimli Programlama (OOP)';
			case 'experience.friflex.achievements.achievement1': return 'Teknik spesifikasyondan yayına kadar tüm geliştirme döngüsünü destekledim';
			case 'experience.friflex.achievements.achievement2': return '3 özel paket oluşturdum ve 10\'dan fazla paketi sürdürdüm, bunlar arasındaki bağımlılıkları yapılandırdım';
			case 'experience.friflex.achievements.achievement3': return 'Üçüncü taraf hizmetleri başarıyla entegre ettim (MiniO, Firebase)';
			case 'experience.friflex.achievements.achievement4': return 'Flutter Web kullanarak yönetim panelleri geliştirdim';
			case 'experience.friflex.achievements.achievement5': return 'Dart kullanarak backend geliştirdim';
			case 'experience.friflex.achievements.achievement6': return 'Birçok UI bileşeni ve animasyonlar geliştirdim';
			case 'experience.friflex.achievements.achievement7': return 'Verileri bulut depolama alanına parçalar halinde gönderen bir arka plan servisi geliştirdim';
			case 'experience.friflex.achievements.achievement8': return 'Mobil uygulama, backend ve web kısmından oluşan canlı yayın sistemini sürdürdüm';
			case 'experience.agroStab.title': return 'Full-stack Geliştirici';
			case 'experience.agroStab.organization': return 'AgroSTAB';
			case 'experience.agroStab.location': return 'St. Petersburg, Rusya';
			case 'experience.agroStab.duration': return 'Şubat 2022 – Temmuz 2022';
			case 'experience.agroStab.subtitle': return 'Akıllı seralar için yönetim paneli geliştirme';
			case 'experience.agroStab.skills.skill1': return 'Mqtt';
			case 'experience.agroStab.skills.skill2': return 'Cron';
			case 'experience.agroStab.skills.skill3': return 'PostgreSQL';
			case 'experience.agroStab.skills.skill4': return 'Linux';
			case 'experience.agroStab.skills.skill5': return 'İngilizce';
			case 'experience.agroStab.skills.skill6': return 'Git';
			case 'experience.agroStab.skills.skill7': return 'ReactJS';
			case 'experience.agroStab.skills.skill8': return 'GitLab';
			case 'experience.agroStab.achievements.achievement1': return 'Teknik spesifikasyondan yayına kadar tüm geliştirme döngüsünü destekledim';
			case 'experience.agroStab.achievements.achievement2': return 'React.js kullanarak kullanıcı arayüzünü geliştirdim';
			case 'experience.agroStab.achievements.achievement3': return 'react-redux kullanarak veri işleme entegrasyonu sağladım';
			case 'experience.agroStab.achievements.achievement4': return 'Bileşenlerin yapısını, yerleşimini ve bağlantılarını tasarladım';
			case 'experience.agroStab.achievements.achievement5': return 'Kullanıcı deneyimini iyileştirmek için etkileşimli öğeler ekledim';
			case 'experience.agroStab.achievements.achievement6': return 'Nest.js ile yazılmış backend yapısını iyileştirdim ve veri işleme mantığı ekledim';
			case 'experience.agroStab.achievements.achievement7': return 'PostgreSQL veritabanı yapısını tasarladım ve güncellemeleri uyguladım';
			case 'experience.agroStab.achievements.achievement8': return 'Cron kullanarak veritabanında planlı veri güncellemeleri için algoritmalar geliştirdim';
			default: return null;
		}
	}
}

