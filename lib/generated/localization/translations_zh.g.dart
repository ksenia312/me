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
class LocaleKeysZh extends LocaleKeys {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	LocaleKeysZh({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.zh,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh>.
	@override final TranslationMetadata<AppLocale, LocaleKeys> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final LocaleKeysZh _root = this; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysTabZh tab = _LocaleKeysTabZh._(_root);
	@override late final _LocaleKeysSkillZh skill = _LocaleKeysSkillZh._(_root);
	@override late final _LocaleKeysWelcomeZh welcome = _LocaleKeysWelcomeZh._(_root);
	@override late final _LocaleKeysSummaryZh summary = _LocaleKeysSummaryZh._(_root);
	@override late final _LocaleKeysPetProjectsZh petProjects = _LocaleKeysPetProjectsZh._(_root);
	@override String year({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('zh'))(n,
		zero: '${n} 年',
		one: '${n} 年',
		two: '${n} 年',
		few: '${n} 年',
		many: '${n} 年',
		other: '${n} 年',
	);
	@override String get androidDemo => 'Android 演示';
	@override String get iosDemo => 'iOS 演示';
	@override late final _LocaleKeysNotFoundZh notFound = _LocaleKeysNotFoundZh._(_root);
	@override String get pageTitle => 'Kseniia | 移动开发者';
	@override String get mainImageCaption => '图像是通过图形处理创建的';
	@override late final _LocaleKeysExperienceZh experience = _LocaleKeysExperienceZh._(_root);
}

// Path: tab
class _LocaleKeysTabZh extends LocaleKeysTabEn {
	_LocaleKeysTabZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get home => '首页';
	@override String get summary => '摘要';
	@override String get projects => '项目';
	@override String get experience => '经验';
	@override String get language => '语言';
}

// Path: skill
class _LocaleKeysSkillZh extends LocaleKeysSkillEn {
	_LocaleKeysSkillZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get teamPlayer => '团队合作者';
	@override String get communicative => '善于沟通';
	@override String get problemSolver => '问题解决者';
	@override String get leader => '领导者';
	@override String get nonConflictual => '无冲突';
}

// Path: welcome
class _LocaleKeysWelcomeZh extends LocaleKeysWelcomeEn {
	_LocaleKeysWelcomeZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get title => '移动开发者';
	@override String get subtitle => 'Kseniia Nikitina';
}

// Path: summary
class _LocaleKeysSummaryZh extends LocaleKeysSummaryEn {
	_LocaleKeysSummaryZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysSummaryTotalExperienceZh totalExperience = _LocaleKeysSummaryTotalExperienceZh._(_root);
	@override late final _LocaleKeysSummaryFlutterExperienceZh flutterExperience = _LocaleKeysSummaryFlutterExperienceZh._(_root);
	@override late final _LocaleKeysSummaryHighEducationZh highEducation = _LocaleKeysSummaryHighEducationZh._(_root);
	@override late final _LocaleKeysSummaryOpenSourceZh openSource = _LocaleKeysSummaryOpenSourceZh._(_root);
	@override late final _LocaleKeysSummaryGooglePlayZh googlePlay = _LocaleKeysSummaryGooglePlayZh._(_root);
	@override late final _LocaleKeysSummaryEnglishZh english = _LocaleKeysSummaryEnglishZh._(_root);
	@override String get title => '总结';
	@override String get subtitle => '非常简短且甜美';
}

// Path: petProjects
class _LocaleKeysPetProjectsZh extends LocaleKeysPetProjectsEn {
	_LocaleKeysPetProjectsZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get title => '个人项目';
	@override String get subtitle => '独特、创意、属于我！';
	@override late final _LocaleKeysPetProjectsErrorZh error = _LocaleKeysPetProjectsErrorZh._(_root);
}

// Path: notFound
class _LocaleKeysNotFoundZh extends LocaleKeysNotFoundEn {
	_LocaleKeysNotFoundZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get title => '404';
	@override String get subtitle => '此页面不存在';
	@override String get button => '返回首页';
}

// Path: experience
class _LocaleKeysExperienceZh extends LocaleKeysExperienceEn {
	_LocaleKeysExperienceZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get title => '经验';
	@override String get subtitle => '无聊的部分';
	@override late final _LocaleKeysExperienceCvZh cv = _LocaleKeysExperienceCvZh._(_root);
	@override late final _LocaleKeysExperienceGreenfluxZh greenflux = _LocaleKeysExperienceGreenfluxZh._(_root);
	@override late final _LocaleKeysExperienceFriflexZh friflex = _LocaleKeysExperienceFriflexZh._(_root);
	@override late final _LocaleKeysExperienceAgroStabZh agroStab = _LocaleKeysExperienceAgroStabZh._(_root);
}

// Path: summary.totalExperience
class _LocaleKeysSummaryTotalExperienceZh extends LocaleKeysSummaryTotalExperienceEn {
	_LocaleKeysSummaryTotalExperienceZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get subtitle => '总经验';
	@override String get content => '除了Dart，我还具有Kotlin、Swift、JavaScript、Python、C#、R等语言的经验';
}

// Path: summary.flutterExperience
class _LocaleKeysSummaryFlutterExperienceZh extends LocaleKeysSummaryFlutterExperienceEn {
	_LocaleKeysSummaryFlutterExperienceZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'Flutter经验';
	@override String get content1 => '我开发';
	@override String get content2 => 'Web和移动';
	@override String get content3 => '应用程序，以及';
	@override String get content4 => '后端';
	@override String get content5 => '结构。我专注于复杂系统和自定义Flutter包';
}

// Path: summary.highEducation
class _LocaleKeysSummaryHighEducationZh extends LocaleKeysSummaryHighEducationEn {
	_LocaleKeysSummaryHighEducationZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get title => '高等教育';
	@override String get subtitle => '工程学';
	@override String get content1 => '«信息与通信系统编程»，在';
	@override String get content2 => 'ITMO大学';
}

// Path: summary.openSource
class _LocaleKeysSummaryOpenSourceZh extends LocaleKeysSummaryOpenSourceEn {
	_LocaleKeysSummaryOpenSourceZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get title => '开源';
	@override String get subtitle => '活跃项目';
	@override String get content => 'P2P通信的包';
	@override String get contentButton => '查看包';
}

// Path: summary.googlePlay
class _LocaleKeysSummaryGooglePlayZh extends LocaleKeysSummaryGooglePlayEn {
	_LocaleKeysSummaryGooglePlayZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get title => 'Google Play';
	@override String get subtitle => '活跃应用';
	@override String get content => '支持文本和文件共享的离线聊天应用';
	@override String get contentButton => '打开应用';
}

// Path: summary.english
class _LocaleKeysSummaryEnglishZh extends LocaleKeysSummaryEnglishEn {
	_LocaleKeysSummaryEnglishZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get title => '英语';
	@override String get subtitle => '工作水平';
	@override String get content => 'I very, very, very speak English';
}

// Path: petProjects.error
class _LocaleKeysPetProjectsErrorZh extends LocaleKeysPetProjectsErrorEn {
	_LocaleKeysPetProjectsErrorZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get title => '哎呀！';
	@override String subtitle({required Object id}) => '找不到项目ID=${id}。请检查ID并重试。';
}

// Path: experience.cv
class _LocaleKeysExperienceCvZh extends LocaleKeysExperienceCvEn {
	_LocaleKeysExperienceCvZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get caption => '阅读更多关于我的经验的CV';
	@override String get button => '开放CV';
}

// Path: experience.greenflux
class _LocaleKeysExperienceGreenfluxZh extends LocaleKeysExperienceGreenfluxEn {
	_LocaleKeysExperienceGreenfluxZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get title => '移动应用开发工程师';
	@override String get organization => 'Greenflux Assets B.V.';
	@override String get location => '阿姆斯特丹，荷兰（混合工作模式）';
	@override String get duration => '2024年2月 – 至今';
	@override String get subtitle => '开发电动汽车充电站的应用程序';
	@override late final _LocaleKeysExperienceGreenfluxSkillsZh skills = _LocaleKeysExperienceGreenfluxSkillsZh._(_root);
	@override late final _LocaleKeysExperienceGreenfluxAchievementsZh achievements = _LocaleKeysExperienceGreenfluxAchievementsZh._(_root);
}

// Path: experience.friflex
class _LocaleKeysExperienceFriflexZh extends LocaleKeysExperienceFriflexEn {
	_LocaleKeysExperienceFriflexZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get title => '移动应用开发工程师';
	@override String get organization => 'Friflex';
	@override String get location => '莫斯科，俄罗斯';
	@override String get duration => '2022年8月 – 2023年12月';
	@override String get subtitle => '开发用于识别象棋和跳棋游戏的服务';
	@override late final _LocaleKeysExperienceFriflexSkillsZh skills = _LocaleKeysExperienceFriflexSkillsZh._(_root);
	@override late final _LocaleKeysExperienceFriflexAchievementsZh achievements = _LocaleKeysExperienceFriflexAchievementsZh._(_root);
}

// Path: experience.agroStab
class _LocaleKeysExperienceAgroStabZh extends LocaleKeysExperienceAgroStabEn {
	_LocaleKeysExperienceAgroStabZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get title => '全栈开发工程师';
	@override String get organization => 'AgroSTAB';
	@override String get location => '圣彼得堡，俄罗斯';
	@override String get duration => '2022年2月 – 2022年7月';
	@override String get subtitle => '为智能温室开发管理面板';
	@override late final _LocaleKeysExperienceAgroStabSkillsZh skills = _LocaleKeysExperienceAgroStabSkillsZh._(_root);
	@override late final _LocaleKeysExperienceAgroStabAchievementsZh achievements = _LocaleKeysExperienceAgroStabAchievementsZh._(_root);
}

// Path: experience.greenflux.skills
class _LocaleKeysExperienceGreenfluxSkillsZh extends LocaleKeysExperienceGreenfluxSkillsEn {
	_LocaleKeysExperienceGreenfluxSkillsZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

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
	@override String get skill10 => '英语';
	@override String get skill11 => 'REST API';
	@override String get skill12 => 'Figma';
	@override String get skill13 => '面向对象编程（OOP）';
}

// Path: experience.greenflux.achievements
class _LocaleKeysExperienceGreenfluxAchievementsZh extends LocaleKeysExperienceGreenfluxAchievementsEn {
	_LocaleKeysExperienceGreenfluxAchievementsZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => '支持了整个开发周期：从技术规格到发布';
	@override String get achievement2 => '维护了一个包含10多个应用程序的系统，所有应用程序共享相同的代码库';
	@override String get achievement3 => '配置了linter、格式化工具，并为所有应用程序实施了统一的类系统';
	@override String get achievement4 => '创建了用于检查pull requests、构建和发布应用程序的管道，并编写了简化流程的脚本';
	@override String get achievement5 => '配置了Git Flow并监控其遵循情况';
	@override String get achievement6 => '与Google Maps、通知和其他复杂功能紧密合作';
	@override String get achievement7 => '使用SwiftUI完全实现了iOS Live Activities，并扩展到多个应用程序';
	@override String get achievement8 => '为所有代码库编写了测试';
}

// Path: experience.friflex.skills
class _LocaleKeysExperienceFriflexSkillsZh extends LocaleKeysExperienceFriflexSkillsEn {
	_LocaleKeysExperienceFriflexSkillsZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Firebase';
	@override String get skill2 => '数据库';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Figma';
	@override String get skill5 => '本地化';
	@override String get skill6 => 'ChatGPT';
	@override String get skill7 => 'Dart';
	@override String get skill8 => 'REST API';
	@override String get skill9 => 'Flutter';
	@override String get skill10 => 'Google Play';
	@override String get skill11 => '设计模式';
	@override String get skill12 => 'Git';
	@override String get skill13 => 'BloC';
	@override String get skill14 => '面向对象编程（OOP）';
}

// Path: experience.friflex.achievements
class _LocaleKeysExperienceFriflexAchievementsZh extends LocaleKeysExperienceFriflexAchievementsEn {
	_LocaleKeysExperienceFriflexAchievementsZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => '支持了整个开发周期：从技术规格到发布';
	@override String get achievement2 => '完全开发了3个自定义包，并维护了超过10个包，配置了它们之间的依赖关系';
	@override String get achievement3 => '成功集成了第三方服务（MiniO、Firebase）';
	@override String get achievement4 => '使用Flutter Web开发了管理面板';
	@override String get achievement5 => '使用Dart开发了后端';
	@override String get achievement6 => '创建了大量UI组件和动画';
	@override String get achievement7 => '开发了一个后台服务，将数据分块发送到云存储';
	@override String get achievement8 => '维护了一个由移动应用、后端和Web部分组成的直播流系统';
}

// Path: experience.agroStab.skills
class _LocaleKeysExperienceAgroStabSkillsZh extends LocaleKeysExperienceAgroStabSkillsEn {
	_LocaleKeysExperienceAgroStabSkillsZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Mqtt';
	@override String get skill2 => 'Cron';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Linux';
	@override String get skill5 => '英语';
	@override String get skill6 => 'Git';
	@override String get skill7 => 'ReactJS';
	@override String get skill8 => 'GitLab';
}

// Path: experience.agroStab.achievements
class _LocaleKeysExperienceAgroStabAchievementsZh extends LocaleKeysExperienceAgroStabAchievementsEn {
	_LocaleKeysExperienceAgroStabAchievementsZh._(LocaleKeysZh root) : this._root = root, super.internal(root);

	final LocaleKeysZh _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => '支持了整个开发周期：从技术规格到发布';
	@override String get achievement2 => '使用React.js开发了用户界面';
	@override String get achievement3 => '使用react-redux集成了数据处理';
	@override String get achievement4 => '设计了组件的结构、位置和连接方式';
	@override String get achievement5 => '添加了交互元素以改善用户体验';
	@override String get achievement6 => '改进了用Nest.js编写的后端结构，并添加了数据处理逻辑';
	@override String get achievement7 => '设计了PostgreSQL数据库架构，并实现了更新';
	@override String get achievement8 => '使用Cron开发了数据库中定时更新数据的算法';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on LocaleKeysZh {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'tab.home': return '首页';
			case 'tab.summary': return '摘要';
			case 'tab.projects': return '项目';
			case 'tab.experience': return '经验';
			case 'tab.language': return '语言';
			case 'skill.teamPlayer': return '团队合作者';
			case 'skill.communicative': return '善于沟通';
			case 'skill.problemSolver': return '问题解决者';
			case 'skill.leader': return '领导者';
			case 'skill.nonConflictual': return '无冲突';
			case 'welcome.title': return '移动开发者';
			case 'welcome.subtitle': return 'Kseniia Nikitina';
			case 'summary.totalExperience.subtitle': return '总经验';
			case 'summary.totalExperience.content': return '除了Dart，我还具有Kotlin、Swift、JavaScript、Python、C#、R等语言的经验';
			case 'summary.flutterExperience.subtitle': return 'Flutter经验';
			case 'summary.flutterExperience.content1': return '我开发';
			case 'summary.flutterExperience.content2': return 'Web和移动';
			case 'summary.flutterExperience.content3': return '应用程序，以及';
			case 'summary.flutterExperience.content4': return '后端';
			case 'summary.flutterExperience.content5': return '结构。我专注于复杂系统和自定义Flutter包';
			case 'summary.highEducation.title': return '高等教育';
			case 'summary.highEducation.subtitle': return '工程学';
			case 'summary.highEducation.content1': return '«信息与通信系统编程»，在';
			case 'summary.highEducation.content2': return 'ITMO大学';
			case 'summary.openSource.title': return '开源';
			case 'summary.openSource.subtitle': return '活跃项目';
			case 'summary.openSource.content': return 'P2P通信的包';
			case 'summary.openSource.contentButton': return '查看包';
			case 'summary.googlePlay.title': return 'Google Play';
			case 'summary.googlePlay.subtitle': return '活跃应用';
			case 'summary.googlePlay.content': return '支持文本和文件共享的离线聊天应用';
			case 'summary.googlePlay.contentButton': return '打开应用';
			case 'summary.english.title': return '英语';
			case 'summary.english.subtitle': return '工作水平';
			case 'summary.english.content': return 'I very, very, very speak English';
			case 'summary.title': return '总结';
			case 'summary.subtitle': return '非常简短且甜美';
			case 'petProjects.title': return '个人项目';
			case 'petProjects.subtitle': return '独特、创意、属于我！';
			case 'petProjects.error.title': return '哎呀！';
			case 'petProjects.error.subtitle': return ({required Object id}) => '找不到项目ID=${id}。请检查ID并重试。';
			case 'year': return ({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('zh'))(n,
				zero: '${n} 年',
				one: '${n} 年',
				two: '${n} 年',
				few: '${n} 年',
				many: '${n} 年',
				other: '${n} 年',
			);
			case 'androidDemo': return 'Android 演示';
			case 'iosDemo': return 'iOS 演示';
			case 'notFound.title': return '404';
			case 'notFound.subtitle': return '此页面不存在';
			case 'notFound.button': return '返回首页';
			case 'pageTitle': return 'Kseniia | 移动开发者';
			case 'mainImageCaption': return '图像是通过图形处理创建的';
			case 'experience.title': return '经验';
			case 'experience.subtitle': return '无聊的部分';
			case 'experience.cv.caption': return '阅读更多关于我的经验的CV';
			case 'experience.cv.button': return '开放CV';
			case 'experience.greenflux.title': return '移动应用开发工程师';
			case 'experience.greenflux.organization': return 'Greenflux Assets B.V.';
			case 'experience.greenflux.location': return '阿姆斯特丹，荷兰（混合工作模式）';
			case 'experience.greenflux.duration': return '2024年2月 – 至今';
			case 'experience.greenflux.subtitle': return '开发电动汽车充电站的应用程序';
			case 'experience.greenflux.skills.skill1': return 'Dart';
			case 'experience.greenflux.skills.skill2': return 'Flutter';
			case 'experience.greenflux.skills.skill3': return 'Google Play';
			case 'experience.greenflux.skills.skill4': return 'Firebase';
			case 'experience.greenflux.skills.skill5': return 'Git';
			case 'experience.greenflux.skills.skill6': return 'ChatGPT';
			case 'experience.greenflux.skills.skill7': return 'BloC';
			case 'experience.greenflux.skills.skill8': return 'App Store';
			case 'experience.greenflux.skills.skill9': return 'SwiftUI';
			case 'experience.greenflux.skills.skill10': return '英语';
			case 'experience.greenflux.skills.skill11': return 'REST API';
			case 'experience.greenflux.skills.skill12': return 'Figma';
			case 'experience.greenflux.skills.skill13': return '面向对象编程（OOP）';
			case 'experience.greenflux.achievements.achievement1': return '支持了整个开发周期：从技术规格到发布';
			case 'experience.greenflux.achievements.achievement2': return '维护了一个包含10多个应用程序的系统，所有应用程序共享相同的代码库';
			case 'experience.greenflux.achievements.achievement3': return '配置了linter、格式化工具，并为所有应用程序实施了统一的类系统';
			case 'experience.greenflux.achievements.achievement4': return '创建了用于检查pull requests、构建和发布应用程序的管道，并编写了简化流程的脚本';
			case 'experience.greenflux.achievements.achievement5': return '配置了Git Flow并监控其遵循情况';
			case 'experience.greenflux.achievements.achievement6': return '与Google Maps、通知和其他复杂功能紧密合作';
			case 'experience.greenflux.achievements.achievement7': return '使用SwiftUI完全实现了iOS Live Activities，并扩展到多个应用程序';
			case 'experience.greenflux.achievements.achievement8': return '为所有代码库编写了测试';
			case 'experience.friflex.title': return '移动应用开发工程师';
			case 'experience.friflex.organization': return 'Friflex';
			case 'experience.friflex.location': return '莫斯科，俄罗斯';
			case 'experience.friflex.duration': return '2022年8月 – 2023年12月';
			case 'experience.friflex.subtitle': return '开发用于识别象棋和跳棋游戏的服务';
			case 'experience.friflex.skills.skill1': return 'Firebase';
			case 'experience.friflex.skills.skill2': return '数据库';
			case 'experience.friflex.skills.skill3': return 'PostgreSQL';
			case 'experience.friflex.skills.skill4': return 'Figma';
			case 'experience.friflex.skills.skill5': return '本地化';
			case 'experience.friflex.skills.skill6': return 'ChatGPT';
			case 'experience.friflex.skills.skill7': return 'Dart';
			case 'experience.friflex.skills.skill8': return 'REST API';
			case 'experience.friflex.skills.skill9': return 'Flutter';
			case 'experience.friflex.skills.skill10': return 'Google Play';
			case 'experience.friflex.skills.skill11': return '设计模式';
			case 'experience.friflex.skills.skill12': return 'Git';
			case 'experience.friflex.skills.skill13': return 'BloC';
			case 'experience.friflex.skills.skill14': return '面向对象编程（OOP）';
			case 'experience.friflex.achievements.achievement1': return '支持了整个开发周期：从技术规格到发布';
			case 'experience.friflex.achievements.achievement2': return '完全开发了3个自定义包，并维护了超过10个包，配置了它们之间的依赖关系';
			case 'experience.friflex.achievements.achievement3': return '成功集成了第三方服务（MiniO、Firebase）';
			case 'experience.friflex.achievements.achievement4': return '使用Flutter Web开发了管理面板';
			case 'experience.friflex.achievements.achievement5': return '使用Dart开发了后端';
			case 'experience.friflex.achievements.achievement6': return '创建了大量UI组件和动画';
			case 'experience.friflex.achievements.achievement7': return '开发了一个后台服务，将数据分块发送到云存储';
			case 'experience.friflex.achievements.achievement8': return '维护了一个由移动应用、后端和Web部分组成的直播流系统';
			case 'experience.agroStab.title': return '全栈开发工程师';
			case 'experience.agroStab.organization': return 'AgroSTAB';
			case 'experience.agroStab.location': return '圣彼得堡，俄罗斯';
			case 'experience.agroStab.duration': return '2022年2月 – 2022年7月';
			case 'experience.agroStab.subtitle': return '为智能温室开发管理面板';
			case 'experience.agroStab.skills.skill1': return 'Mqtt';
			case 'experience.agroStab.skills.skill2': return 'Cron';
			case 'experience.agroStab.skills.skill3': return 'PostgreSQL';
			case 'experience.agroStab.skills.skill4': return 'Linux';
			case 'experience.agroStab.skills.skill5': return '英语';
			case 'experience.agroStab.skills.skill6': return 'Git';
			case 'experience.agroStab.skills.skill7': return 'ReactJS';
			case 'experience.agroStab.skills.skill8': return 'GitLab';
			case 'experience.agroStab.achievements.achievement1': return '支持了整个开发周期：从技术规格到发布';
			case 'experience.agroStab.achievements.achievement2': return '使用React.js开发了用户界面';
			case 'experience.agroStab.achievements.achievement3': return '使用react-redux集成了数据处理';
			case 'experience.agroStab.achievements.achievement4': return '设计了组件的结构、位置和连接方式';
			case 'experience.agroStab.achievements.achievement5': return '添加了交互元素以改善用户体验';
			case 'experience.agroStab.achievements.achievement6': return '改进了用Nest.js编写的后端结构，并添加了数据处理逻辑';
			case 'experience.agroStab.achievements.achievement7': return '设计了PostgreSQL数据库架构，并实现了更新';
			case 'experience.agroStab.achievements.achievement8': return '使用Cron开发了数据库中定时更新数据的算法';
			default: return null;
		}
	}
}

