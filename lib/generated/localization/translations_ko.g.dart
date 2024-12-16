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
class LocaleKeysKo extends LocaleKeys {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	LocaleKeysKo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ko,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ko>.
	@override final TranslationMetadata<AppLocale, LocaleKeys> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final LocaleKeysKo _root = this; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysTabKo tab = _LocaleKeysTabKo._(_root);
	@override late final _LocaleKeysSkillKo skill = _LocaleKeysSkillKo._(_root);
	@override late final _LocaleKeysWelcomeKo welcome = _LocaleKeysWelcomeKo._(_root);
	@override late final _LocaleKeysSummaryKo summary = _LocaleKeysSummaryKo._(_root);
	@override late final _LocaleKeysPetProjectsKo petProjects = _LocaleKeysPetProjectsKo._(_root);
	@override String year({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('ko'))(n,
		zero: '${n} 년',
		one: '${n} 년',
		two: '${n} 년',
		few: '${n} 년',
		many: '${n} 년',
		other: '${n} 년',
	);
	@override String get androidDemo => 'Android 데모';
	@override String get iosDemo => 'iOS 데모';
	@override late final _LocaleKeysNotFoundKo notFound = _LocaleKeysNotFoundKo._(_root);
	@override String get pageTitle => 'Kseniia | 플러터 개발자';
	@override String get mainImageCaption => '이미지는 그래픽 처리를 사용하여 생성되었습니다';
	@override late final _LocaleKeysExperienceKo experience = _LocaleKeysExperienceKo._(_root);
}

// Path: tab
class _LocaleKeysTabKo extends LocaleKeysTabEn {
	_LocaleKeysTabKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override String get home => '홈';
	@override String get summary => '요약';
	@override String get projects => '프로젝트';
	@override String get experience => '경험';
}

// Path: skill
class _LocaleKeysSkillKo extends LocaleKeysSkillEn {
	_LocaleKeysSkillKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override String get teamPlayer => '팀 플레이어';
	@override String get communicative => '소통 능력';
	@override String get problemSolver => '문제 해결자';
	@override String get leader => '리더';
	@override String get nonConflictual => '갈등 없음';
}

// Path: welcome
class _LocaleKeysWelcomeKo extends LocaleKeysWelcomeEn {
	_LocaleKeysWelcomeKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override String get title => '플러터 개발자';
	@override String get subtitle => 'Kseniia Nikitina';
}

// Path: summary
class _LocaleKeysSummaryKo extends LocaleKeysSummaryEn {
	_LocaleKeysSummaryKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysSummaryTotalExperienceKo totalExperience = _LocaleKeysSummaryTotalExperienceKo._(_root);
	@override late final _LocaleKeysSummaryFlutterExperienceKo flutterExperience = _LocaleKeysSummaryFlutterExperienceKo._(_root);
	@override late final _LocaleKeysSummaryHighEducationKo highEducation = _LocaleKeysSummaryHighEducationKo._(_root);
	@override late final _LocaleKeysSummaryOpenSourceKo openSource = _LocaleKeysSummaryOpenSourceKo._(_root);
	@override late final _LocaleKeysSummaryGooglePlayKo googlePlay = _LocaleKeysSummaryGooglePlayKo._(_root);
	@override late final _LocaleKeysSummaryEnglishKo english = _LocaleKeysSummaryEnglishKo._(_root);
	@override String get title => '요약';
	@override String get subtitle => '매우 간단하고 달콤하게';
}

// Path: petProjects
class _LocaleKeysPetProjectsKo extends LocaleKeysPetProjectsEn {
	_LocaleKeysPetProjectsKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override String get title => '개인 프로젝트';
	@override String get subtitle => '독특하고 창의적이며 내 것!';
	@override late final _LocaleKeysPetProjectsErrorKo error = _LocaleKeysPetProjectsErrorKo._(_root);
}

// Path: notFound
class _LocaleKeysNotFoundKo extends LocaleKeysNotFoundEn {
	_LocaleKeysNotFoundKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override String get title => '404';
	@override String get subtitle => '이 페이지는 존재하지 않습니다';
	@override String get button => '홈페이지로 가기';
}

// Path: experience
class _LocaleKeysExperienceKo extends LocaleKeysExperienceEn {
	_LocaleKeysExperienceKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override String get title => '경험';
	@override String get subtitle => '지루한 부분';
	@override late final _LocaleKeysExperienceGreenfluxKo greenflux = _LocaleKeysExperienceGreenfluxKo._(_root);
	@override late final _LocaleKeysExperienceFriflexKo friflex = _LocaleKeysExperienceFriflexKo._(_root);
	@override late final _LocaleKeysExperienceAgroStabKo agroStab = _LocaleKeysExperienceAgroStabKo._(_root);
}

// Path: summary.totalExperience
class _LocaleKeysSummaryTotalExperienceKo extends LocaleKeysSummaryTotalExperienceEn {
	_LocaleKeysSummaryTotalExperienceKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override String get subtitle => '총 경험';
	@override String get content => 'Dart 외에도 Kotlin, Swift, JavaScript, Python, C#, R 등 다양한 경험이 있습니다';
}

// Path: summary.flutterExperience
class _LocaleKeysSummaryFlutterExperienceKo extends LocaleKeysSummaryFlutterExperienceEn {
	_LocaleKeysSummaryFlutterExperienceKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'Flutter 경험';
	@override String get content1 => '저는 개발합니다';
	@override String get content2 => '웹 및 모바일';
	@override String get content3 => '애플리케이션, 또한';
	@override String get content4 => '백엔드';
	@override String get content5 => '구조. 저는 복잡한 시스템과 맞춤형 Flutter 패키지에 전문화되어 있습니다';
}

// Path: summary.highEducation
class _LocaleKeysSummaryHighEducationKo extends LocaleKeysSummaryHighEducationEn {
	_LocaleKeysSummaryHighEducationKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override String get title => '고등 교육';
	@override String get subtitle => '공학 전공';
	@override String get content1 => '«정보 및 통신 시스템 프로그래밍»';
	@override String get content2 => 'ITMO 대학교';
}

// Path: summary.openSource
class _LocaleKeysSummaryOpenSourceKo extends LocaleKeysSummaryOpenSourceEn {
	_LocaleKeysSummaryOpenSourceKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override String get title => '오픈소스';
	@override String get subtitle => '활성 프로젝트';
	@override String get content => 'P2P 통신을 위한 패키지';
	@override String get contentButton => '패키지 보기';
}

// Path: summary.googlePlay
class _LocaleKeysSummaryGooglePlayKo extends LocaleKeysSummaryGooglePlayEn {
	_LocaleKeysSummaryGooglePlayKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Google Play';
	@override String get subtitle => '활성 앱';
	@override String get content => '텍스트 및 파일 공유를 지원하는 오프라인 채팅 앱';
	@override String get contentButton => '앱 열기';
}

// Path: summary.english
class _LocaleKeysSummaryEnglishKo extends LocaleKeysSummaryEnglishEn {
	_LocaleKeysSummaryEnglishKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override String get title => '영어';
	@override String get subtitle => '업무 수준';
	@override String get content => 'I very, very, very speak English';
}

// Path: petProjects.error
class _LocaleKeysPetProjectsErrorKo extends LocaleKeysPetProjectsErrorEn {
	_LocaleKeysPetProjectsErrorKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oops!';
	@override String subtitle({required Object id}) => 'Project with ID=${id} not found. Please check the ID and try again.';
}

// Path: experience.greenflux
class _LocaleKeysExperienceGreenfluxKo extends LocaleKeysExperienceGreenfluxEn {
	_LocaleKeysExperienceGreenfluxKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override String get title => '모바일 애플리케이션 개발자';
	@override String get organization => 'Greenflux Assets B.V.';
	@override String get location => '암스테르담, 네덜란드 (하이브리드)';
	@override String get duration => '2024년 2월 – 현재';
	@override String get subtitle => '전기차 충전소 애플리케이션 개발';
	@override late final _LocaleKeysExperienceGreenfluxSkillsKo skills = _LocaleKeysExperienceGreenfluxSkillsKo._(_root);
	@override late final _LocaleKeysExperienceGreenfluxAchievementsKo achievements = _LocaleKeysExperienceGreenfluxAchievementsKo._(_root);
}

// Path: experience.friflex
class _LocaleKeysExperienceFriflexKo extends LocaleKeysExperienceFriflexEn {
	_LocaleKeysExperienceFriflexKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override String get title => '모바일 애플리케이션 개발자';
	@override String get organization => 'Friflex';
	@override String get location => '모스크바, 러시아';
	@override String get duration => '2022년 8월 – 2023년 12월';
	@override String get subtitle => '체스 및 장기 게임 인식 서비스 개발';
	@override late final _LocaleKeysExperienceFriflexSkillsKo skills = _LocaleKeysExperienceFriflexSkillsKo._(_root);
	@override late final _LocaleKeysExperienceFriflexAchievementsKo achievements = _LocaleKeysExperienceFriflexAchievementsKo._(_root);
}

// Path: experience.agroStab
class _LocaleKeysExperienceAgroStabKo extends LocaleKeysExperienceAgroStabEn {
	_LocaleKeysExperienceAgroStabKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override String get title => '풀스택 개발자';
	@override String get organization => 'AgroSTAB';
	@override String get location => '상트페테르부르크, 러시아';
	@override String get duration => '2022년 2월 – 2022년 7월';
	@override String get subtitle => '스마트 온실을 위한 관리 대시보드 개발';
	@override late final _LocaleKeysExperienceAgroStabSkillsKo skills = _LocaleKeysExperienceAgroStabSkillsKo._(_root);
	@override late final _LocaleKeysExperienceAgroStabAchievementsKo achievements = _LocaleKeysExperienceAgroStabAchievementsKo._(_root);
}

// Path: experience.greenflux.skills
class _LocaleKeysExperienceGreenfluxSkillsKo extends LocaleKeysExperienceGreenfluxSkillsEn {
	_LocaleKeysExperienceGreenfluxSkillsKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

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
	@override String get skill10 => '영어';
	@override String get skill11 => 'REST API';
	@override String get skill12 => 'Figma';
	@override String get skill13 => '객체지향 프로그래밍(OOP)';
}

// Path: experience.greenflux.achievements
class _LocaleKeysExperienceGreenfluxAchievementsKo extends LocaleKeysExperienceGreenfluxAchievementsEn {
	_LocaleKeysExperienceGreenfluxAchievementsKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => '기술 사양에서 출시까지의 전체 개발 주기를 지원';
	@override String get achievement2 => '공유 코드 베이스를 가진 10개 이상의 애플리케이션 시스템 유지';
	@override String get achievement3 => '모든 애플리케이션에 대해 린터, 포맷팅 및 공통 클래스 시스템 설정';
	@override String get achievement4 => '풀 리퀘스트 검토, 애플리케이션 빌드 및 출시 파이프라인을 만들고 프로세스를 단순화하는 스크립트 작성';
	@override String get achievement5 => 'Git Flow 설정 및 준수 모니터링';
	@override String get achievement6 => 'Google Maps, 알림 및 기타 복잡한 기능들과 긴밀히 작업';
	@override String get achievement7 => 'SwiftUI를 사용하여 iOS Live Activities를 완전 구현하고 여러 애플리케이션에 확장';
	@override String get achievement8 => '전체 코드 베이스를 테스트로 커버';
}

// Path: experience.friflex.skills
class _LocaleKeysExperienceFriflexSkillsKo extends LocaleKeysExperienceFriflexSkillsEn {
	_LocaleKeysExperienceFriflexSkillsKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Firebase';
	@override String get skill2 => '데이터베이스';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Figma';
	@override String get skill5 => '로컬라이제이션';
	@override String get skill6 => 'ChatGPT';
	@override String get skill7 => 'Dart';
	@override String get skill8 => 'REST API';
	@override String get skill9 => 'Flutter';
	@override String get skill10 => 'Google Play';
	@override String get skill11 => '디자인 패턴';
	@override String get skill12 => 'Git';
	@override String get skill13 => 'BloC';
	@override String get skill14 => '객체지향 프로그래밍(OOP)';
}

// Path: experience.friflex.achievements
class _LocaleKeysExperienceFriflexAchievementsKo extends LocaleKeysExperienceFriflexAchievementsEn {
	_LocaleKeysExperienceFriflexAchievementsKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => '기술 사양에서 출시까지의 전체 개발 주기를 지원';
	@override String get achievement2 => '3개의 커스텀 패키지 완성, 10개 이상의 패키지 유지 및 종속성 설정';
	@override String get achievement3 => 'MiniO, Firebase 등의 서드파티 서비스 통합 성공';
	@override String get achievement4 => 'Flutter Web을 사용하여 관리용 웹 대시보드 개발';
	@override String get achievement5 => 'Dart를 사용하여 백엔드 개발';
	@override String get achievement6 => '수많은 UI 컴포넌트 및 애니메이션 제작';
	@override String get achievement7 => '클라우드 저장소로 데이터를 청크로 전송하는 백그라운드 서비스 개발';
	@override String get achievement8 => '모바일 애플리케이션, 백엔드 및 웹 부분으로 구성된 라이브 스트리밍 시스템 유지';
}

// Path: experience.agroStab.skills
class _LocaleKeysExperienceAgroStabSkillsKo extends LocaleKeysExperienceAgroStabSkillsEn {
	_LocaleKeysExperienceAgroStabSkillsKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Mqtt';
	@override String get skill2 => 'Cron';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Linux';
	@override String get skill5 => '영어';
	@override String get skill6 => 'Git';
	@override String get skill7 => 'ReactJS';
	@override String get skill8 => 'GitLab';
}

// Path: experience.agroStab.achievements
class _LocaleKeysExperienceAgroStabAchievementsKo extends LocaleKeysExperienceAgroStabAchievementsEn {
	_LocaleKeysExperienceAgroStabAchievementsKo._(LocaleKeysKo root) : this._root = root, super.internal(root);

	final LocaleKeysKo _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => '기술 사양에서 출시까지의 전체 개발 주기를 지원';
	@override String get achievement2 => 'React.js를 사용하여 사용자 인터페이스 개발';
	@override String get achievement3 => 'react-redux를 사용하여 데이터 처리 통합';
	@override String get achievement4 => '컴포넌트 구조, 배치 및 연결 설계';
	@override String get achievement5 => 'UX 향상을 위한 인터랙티브 요소 추가';
	@override String get achievement6 => 'Nest.js로 작성된 백엔드 구조 개선 및 데이터 처리 로직 추가';
	@override String get achievement7 => 'PostgreSQL 데이터베이스 아키텍처 설계 및 업데이트 수행';
	@override String get achievement8 => 'Cron을 사용하여 데이터베이스 업데이트 알고리즘 개발';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on LocaleKeysKo {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'tab.home': return '홈';
			case 'tab.summary': return '요약';
			case 'tab.projects': return '프로젝트';
			case 'tab.experience': return '경험';
			case 'skill.teamPlayer': return '팀 플레이어';
			case 'skill.communicative': return '소통 능력';
			case 'skill.problemSolver': return '문제 해결자';
			case 'skill.leader': return '리더';
			case 'skill.nonConflictual': return '갈등 없음';
			case 'welcome.title': return '플러터 개발자';
			case 'welcome.subtitle': return 'Kseniia Nikitina';
			case 'summary.totalExperience.subtitle': return '총 경험';
			case 'summary.totalExperience.content': return 'Dart 외에도 Kotlin, Swift, JavaScript, Python, C#, R 등 다양한 경험이 있습니다';
			case 'summary.flutterExperience.subtitle': return 'Flutter 경험';
			case 'summary.flutterExperience.content1': return '저는 개발합니다';
			case 'summary.flutterExperience.content2': return '웹 및 모바일';
			case 'summary.flutterExperience.content3': return '애플리케이션, 또한';
			case 'summary.flutterExperience.content4': return '백엔드';
			case 'summary.flutterExperience.content5': return '구조. 저는 복잡한 시스템과 맞춤형 Flutter 패키지에 전문화되어 있습니다';
			case 'summary.highEducation.title': return '고등 교육';
			case 'summary.highEducation.subtitle': return '공학 전공';
			case 'summary.highEducation.content1': return '«정보 및 통신 시스템 프로그래밍»';
			case 'summary.highEducation.content2': return 'ITMO 대학교';
			case 'summary.openSource.title': return '오픈소스';
			case 'summary.openSource.subtitle': return '활성 프로젝트';
			case 'summary.openSource.content': return 'P2P 통신을 위한 패키지';
			case 'summary.openSource.contentButton': return '패키지 보기';
			case 'summary.googlePlay.title': return 'Google Play';
			case 'summary.googlePlay.subtitle': return '활성 앱';
			case 'summary.googlePlay.content': return '텍스트 및 파일 공유를 지원하는 오프라인 채팅 앱';
			case 'summary.googlePlay.contentButton': return '앱 열기';
			case 'summary.english.title': return '영어';
			case 'summary.english.subtitle': return '업무 수준';
			case 'summary.english.content': return 'I very, very, very speak English';
			case 'summary.title': return '요약';
			case 'summary.subtitle': return '매우 간단하고 달콤하게';
			case 'petProjects.title': return '개인 프로젝트';
			case 'petProjects.subtitle': return '독특하고 창의적이며 내 것!';
			case 'petProjects.error.title': return 'Oops!';
			case 'petProjects.error.subtitle': return ({required Object id}) => 'Project with ID=${id} not found. Please check the ID and try again.';
			case 'year': return ({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('ko'))(n,
				zero: '${n} 년',
				one: '${n} 년',
				two: '${n} 년',
				few: '${n} 년',
				many: '${n} 년',
				other: '${n} 년',
			);
			case 'androidDemo': return 'Android 데모';
			case 'iosDemo': return 'iOS 데모';
			case 'notFound.title': return '404';
			case 'notFound.subtitle': return '이 페이지는 존재하지 않습니다';
			case 'notFound.button': return '홈페이지로 가기';
			case 'pageTitle': return 'Kseniia | 플러터 개발자';
			case 'mainImageCaption': return '이미지는 그래픽 처리를 사용하여 생성되었습니다';
			case 'experience.title': return '경험';
			case 'experience.subtitle': return '지루한 부분';
			case 'experience.greenflux.title': return '모바일 애플리케이션 개발자';
			case 'experience.greenflux.organization': return 'Greenflux Assets B.V.';
			case 'experience.greenflux.location': return '암스테르담, 네덜란드 (하이브리드)';
			case 'experience.greenflux.duration': return '2024년 2월 – 현재';
			case 'experience.greenflux.subtitle': return '전기차 충전소 애플리케이션 개발';
			case 'experience.greenflux.skills.skill1': return 'Dart';
			case 'experience.greenflux.skills.skill2': return 'Flutter';
			case 'experience.greenflux.skills.skill3': return 'Google Play';
			case 'experience.greenflux.skills.skill4': return 'Firebase';
			case 'experience.greenflux.skills.skill5': return 'Git';
			case 'experience.greenflux.skills.skill6': return 'ChatGPT';
			case 'experience.greenflux.skills.skill7': return 'BloC';
			case 'experience.greenflux.skills.skill8': return 'App Store';
			case 'experience.greenflux.skills.skill9': return 'SwiftUI';
			case 'experience.greenflux.skills.skill10': return '영어';
			case 'experience.greenflux.skills.skill11': return 'REST API';
			case 'experience.greenflux.skills.skill12': return 'Figma';
			case 'experience.greenflux.skills.skill13': return '객체지향 프로그래밍(OOP)';
			case 'experience.greenflux.achievements.achievement1': return '기술 사양에서 출시까지의 전체 개발 주기를 지원';
			case 'experience.greenflux.achievements.achievement2': return '공유 코드 베이스를 가진 10개 이상의 애플리케이션 시스템 유지';
			case 'experience.greenflux.achievements.achievement3': return '모든 애플리케이션에 대해 린터, 포맷팅 및 공통 클래스 시스템 설정';
			case 'experience.greenflux.achievements.achievement4': return '풀 리퀘스트 검토, 애플리케이션 빌드 및 출시 파이프라인을 만들고 프로세스를 단순화하는 스크립트 작성';
			case 'experience.greenflux.achievements.achievement5': return 'Git Flow 설정 및 준수 모니터링';
			case 'experience.greenflux.achievements.achievement6': return 'Google Maps, 알림 및 기타 복잡한 기능들과 긴밀히 작업';
			case 'experience.greenflux.achievements.achievement7': return 'SwiftUI를 사용하여 iOS Live Activities를 완전 구현하고 여러 애플리케이션에 확장';
			case 'experience.greenflux.achievements.achievement8': return '전체 코드 베이스를 테스트로 커버';
			case 'experience.friflex.title': return '모바일 애플리케이션 개발자';
			case 'experience.friflex.organization': return 'Friflex';
			case 'experience.friflex.location': return '모스크바, 러시아';
			case 'experience.friflex.duration': return '2022년 8월 – 2023년 12월';
			case 'experience.friflex.subtitle': return '체스 및 장기 게임 인식 서비스 개발';
			case 'experience.friflex.skills.skill1': return 'Firebase';
			case 'experience.friflex.skills.skill2': return '데이터베이스';
			case 'experience.friflex.skills.skill3': return 'PostgreSQL';
			case 'experience.friflex.skills.skill4': return 'Figma';
			case 'experience.friflex.skills.skill5': return '로컬라이제이션';
			case 'experience.friflex.skills.skill6': return 'ChatGPT';
			case 'experience.friflex.skills.skill7': return 'Dart';
			case 'experience.friflex.skills.skill8': return 'REST API';
			case 'experience.friflex.skills.skill9': return 'Flutter';
			case 'experience.friflex.skills.skill10': return 'Google Play';
			case 'experience.friflex.skills.skill11': return '디자인 패턴';
			case 'experience.friflex.skills.skill12': return 'Git';
			case 'experience.friflex.skills.skill13': return 'BloC';
			case 'experience.friflex.skills.skill14': return '객체지향 프로그래밍(OOP)';
			case 'experience.friflex.achievements.achievement1': return '기술 사양에서 출시까지의 전체 개발 주기를 지원';
			case 'experience.friflex.achievements.achievement2': return '3개의 커스텀 패키지 완성, 10개 이상의 패키지 유지 및 종속성 설정';
			case 'experience.friflex.achievements.achievement3': return 'MiniO, Firebase 등의 서드파티 서비스 통합 성공';
			case 'experience.friflex.achievements.achievement4': return 'Flutter Web을 사용하여 관리용 웹 대시보드 개발';
			case 'experience.friflex.achievements.achievement5': return 'Dart를 사용하여 백엔드 개발';
			case 'experience.friflex.achievements.achievement6': return '수많은 UI 컴포넌트 및 애니메이션 제작';
			case 'experience.friflex.achievements.achievement7': return '클라우드 저장소로 데이터를 청크로 전송하는 백그라운드 서비스 개발';
			case 'experience.friflex.achievements.achievement8': return '모바일 애플리케이션, 백엔드 및 웹 부분으로 구성된 라이브 스트리밍 시스템 유지';
			case 'experience.agroStab.title': return '풀스택 개발자';
			case 'experience.agroStab.organization': return 'AgroSTAB';
			case 'experience.agroStab.location': return '상트페테르부르크, 러시아';
			case 'experience.agroStab.duration': return '2022년 2월 – 2022년 7월';
			case 'experience.agroStab.subtitle': return '스마트 온실을 위한 관리 대시보드 개발';
			case 'experience.agroStab.skills.skill1': return 'Mqtt';
			case 'experience.agroStab.skills.skill2': return 'Cron';
			case 'experience.agroStab.skills.skill3': return 'PostgreSQL';
			case 'experience.agroStab.skills.skill4': return 'Linux';
			case 'experience.agroStab.skills.skill5': return '영어';
			case 'experience.agroStab.skills.skill6': return 'Git';
			case 'experience.agroStab.skills.skill7': return 'ReactJS';
			case 'experience.agroStab.skills.skill8': return 'GitLab';
			case 'experience.agroStab.achievements.achievement1': return '기술 사양에서 출시까지의 전체 개발 주기를 지원';
			case 'experience.agroStab.achievements.achievement2': return 'React.js를 사용하여 사용자 인터페이스 개발';
			case 'experience.agroStab.achievements.achievement3': return 'react-redux를 사용하여 데이터 처리 통합';
			case 'experience.agroStab.achievements.achievement4': return '컴포넌트 구조, 배치 및 연결 설계';
			case 'experience.agroStab.achievements.achievement5': return 'UX 향상을 위한 인터랙티브 요소 추가';
			case 'experience.agroStab.achievements.achievement6': return 'Nest.js로 작성된 백엔드 구조 개선 및 데이터 처리 로직 추가';
			case 'experience.agroStab.achievements.achievement7': return 'PostgreSQL 데이터베이스 아키텍처 설계 및 업데이트 수행';
			case 'experience.agroStab.achievements.achievement8': return 'Cron을 사용하여 데이터베이스 업데이트 알고리즘 개발';
			default: return null;
		}
	}
}

