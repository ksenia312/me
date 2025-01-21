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
class LocaleKeysHi extends LocaleKeys {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	LocaleKeysHi({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.hi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <hi>.
	@override final TranslationMetadata<AppLocale, LocaleKeys> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final LocaleKeysHi _root = this; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysTabHi tab = _LocaleKeysTabHi._(_root);
	@override late final _LocaleKeysSkillHi skill = _LocaleKeysSkillHi._(_root);
	@override late final _LocaleKeysWelcomeHi welcome = _LocaleKeysWelcomeHi._(_root);
	@override late final _LocaleKeysSummaryHi summary = _LocaleKeysSummaryHi._(_root);
	@override late final _LocaleKeysPetProjectsHi petProjects = _LocaleKeysPetProjectsHi._(_root);
	@override String year({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('hi'))(n,
		zero: '${n} वर्ष',
		one: '${n} साल',
		two: '${n} साल',
		few: '${n} साल',
		many: '${n} साल',
		other: '${n} साल',
	);
	@override String get androidDemo => 'Android डेमो';
	@override String get iosDemo => 'iOS डेमो';
	@override late final _LocaleKeysNotFoundHi notFound = _LocaleKeysNotFoundHi._(_root);
	@override String get pageTitle => 'Kseniia | मोबाइल डेवलपर';
	@override String get mainImageCaption => 'छवि को ग्राफिक प्रोसेसिंग की मदद से बनाया गया था';
	@override late final _LocaleKeysExperienceHi experience = _LocaleKeysExperienceHi._(_root);
}

// Path: tab
class _LocaleKeysTabHi extends LocaleKeysTabEn {
	_LocaleKeysTabHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get home => 'होम';
	@override String get summary => 'सारांश';
	@override String get projects => 'प्रोजेक्ट्स';
	@override String get experience => 'अनुभव';
	@override String get language => 'भाषा';
}

// Path: skill
class _LocaleKeysSkillHi extends LocaleKeysSkillEn {
	_LocaleKeysSkillHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get teamPlayer => 'टीम खिलाड़ी';
	@override String get communicative => 'संचार में माहिर';
	@override String get problemSolver => 'समस्या हल करने वाली';
	@override String get leader => 'नेता';
	@override String get nonConflictual => 'संघर्षहीन';
}

// Path: welcome
class _LocaleKeysWelcomeHi extends LocaleKeysWelcomeEn {
	_LocaleKeysWelcomeHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'मोबाइल डेवलपर';
	@override String get subtitle => 'Kseniia Nikitina';
}

// Path: summary
class _LocaleKeysSummaryHi extends LocaleKeysSummaryEn {
	_LocaleKeysSummaryHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysSummaryTotalExperienceHi totalExperience = _LocaleKeysSummaryTotalExperienceHi._(_root);
	@override late final _LocaleKeysSummaryFlutterExperienceHi flutterExperience = _LocaleKeysSummaryFlutterExperienceHi._(_root);
	@override late final _LocaleKeysSummaryHighEducationHi highEducation = _LocaleKeysSummaryHighEducationHi._(_root);
	@override late final _LocaleKeysSummaryOpenSourceHi openSource = _LocaleKeysSummaryOpenSourceHi._(_root);
	@override late final _LocaleKeysSummaryGooglePlayHi googlePlay = _LocaleKeysSummaryGooglePlayHi._(_root);
	@override late final _LocaleKeysSummaryEnglishHi english = _LocaleKeysSummaryEnglishHi._(_root);
	@override String get title => 'सारांश';
	@override String get subtitle => 'बहुत संक्षिप्त और मीठा';
}

// Path: petProjects
class _LocaleKeysPetProjectsHi extends LocaleKeysPetProjectsEn {
	_LocaleKeysPetProjectsHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पेट प्रोजेक्ट्स';
	@override String get subtitle => 'विशिष्ट, रचनात्मक, मेरे!';
	@override late final _LocaleKeysPetProjectsMarkdownHi markdown = _LocaleKeysPetProjectsMarkdownHi._(_root);
	@override late final _LocaleKeysPetProjectsErrorHi error = _LocaleKeysPetProjectsErrorHi._(_root);
}

// Path: notFound
class _LocaleKeysNotFoundHi extends LocaleKeysNotFoundEn {
	_LocaleKeysNotFoundHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get title => '404';
	@override String get subtitle => 'यह पृष्ठ अस्तित्व में नहीं है';
	@override String get button => 'मुख्य पृष्ठ पर जाएं';
}

// Path: experience
class _LocaleKeysExperienceHi extends LocaleKeysExperienceEn {
	_LocaleKeysExperienceHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'अनुभव';
	@override String get subtitle => 'उबाऊ हिस्सा';
	@override late final _LocaleKeysExperienceCvHi cv = _LocaleKeysExperienceCvHi._(_root);
	@override late final _LocaleKeysExperienceGreenfluxHi greenflux = _LocaleKeysExperienceGreenfluxHi._(_root);
	@override late final _LocaleKeysExperienceFriflexHi friflex = _LocaleKeysExperienceFriflexHi._(_root);
	@override late final _LocaleKeysExperienceAgroStabHi agroStab = _LocaleKeysExperienceAgroStabHi._(_root);
}

// Path: summary.totalExperience
class _LocaleKeysSummaryTotalExperienceHi extends LocaleKeysSummaryTotalExperienceEn {
	_LocaleKeysSummaryTotalExperienceHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'कुल अनुभव';
	@override String get content => 'Dart के अलावा, मेरे पास Kotlin, Swift, JavaScript, Python, C#, R और अन्य में अनुभव है';
}

// Path: summary.flutterExperience
class _LocaleKeysSummaryFlutterExperienceHi extends LocaleKeysSummaryFlutterExperienceEn {
	_LocaleKeysSummaryFlutterExperienceHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'Flutter अनुभव';
	@override String get content1 => 'मैं विकसित करती हूँ';
	@override String get content2 => 'वेब और मोबाइल';
	@override String get content3 => 'एप्लिकेशन, साथ ही';
	@override String get content4 => 'बैकएंड';
	@override String get content5 => 'संरचनाएँ। मैं जटिल प्रणालियों और कस्टम Flutter पैकेजों में विशेषज्ञ हूँ';
}

// Path: summary.highEducation
class _LocaleKeysSummaryHighEducationHi extends LocaleKeysSummaryHighEducationEn {
	_LocaleKeysSummaryHighEducationHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'उच्च शिक्षा';
	@override String get subtitle => 'इंजीनियरिंग में';
	@override String get content1 => '«सूचना और संचार प्रणालियों में प्रोग्रामिंग»';
	@override String get content2 => 'ITMO विश्वविद्यालय में';
}

// Path: summary.openSource
class _LocaleKeysSummaryOpenSourceHi extends LocaleKeysSummaryOpenSourceEn {
	_LocaleKeysSummaryOpenSourceHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Open-source';
	@override String get subtitle => 'सक्रिय परियोजना';
	@override String get content => 'P2P संचार के लिए एक पैकेज';
	@override String get contentButton => 'पैकेज देखें';
}

// Path: summary.googlePlay
class _LocaleKeysSummaryGooglePlayHi extends LocaleKeysSummaryGooglePlayEn {
	_LocaleKeysSummaryGooglePlayHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Google Play';
	@override String get subtitle => 'सक्रिय एप्लिकेशन';
	@override String get content => 'टेक्स्ट और फाइल साझाकरण के साथ एक ऑफ़लाइन चैट ऐप';
	@override String get contentButton => 'एप्लिकेशन खोलें';
}

// Path: summary.english
class _LocaleKeysSummaryEnglishHi extends LocaleKeysSummaryEnglishEn {
	_LocaleKeysSummaryEnglishHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'अंग्रेजी';
	@override String get subtitle => 'कामकाजी दक्षता';
	@override String get content => 'I very, very, very speak English';
}

// Path: petProjects.markdown
class _LocaleKeysPetProjectsMarkdownHi extends LocaleKeysPetProjectsMarkdownEn {
	_LocaleKeysPetProjectsMarkdownHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get imageButton => 'GitHub पर छवि देखें';
}

// Path: petProjects.error
class _LocaleKeysPetProjectsErrorHi extends LocaleKeysPetProjectsErrorEn {
	_LocaleKeysPetProjectsErrorHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'ओपस!';
	@override String subtitle({required Object id}) => 'ID=${id} के लिए परियोजना नहीं मिला. कृपया ID को जांचें और पुन: प्रयास करें.';
}

// Path: experience.cv
class _LocaleKeysExperienceCvHi extends LocaleKeysExperienceCvEn {
	_LocaleKeysExperienceCvHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get caption => 'मेरी अभियान के बारे में और पढ़ने के लिए और अधिक जानें';
	@override String get button => 'खुला CV';
}

// Path: experience.greenflux
class _LocaleKeysExperienceGreenfluxHi extends LocaleKeysExperienceGreenfluxEn {
	_LocaleKeysExperienceGreenfluxHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'मोबाइल एप्लिकेशन डेवलपर';
	@override String get organization => 'Greenflux Assets B.V.';
	@override String get location => 'एम्स्टर्डम, नीदरलैंड्स (हाइब्रिड)';
	@override String get duration => 'फरवरी 2024 – वर्तमान';
	@override String get subtitle => 'इलेक्ट्रिक वाहन चार्जिंग के लिए एप्लिकेशन विकसित करना';
	@override late final _LocaleKeysExperienceGreenfluxSkillsHi skills = _LocaleKeysExperienceGreenfluxSkillsHi._(_root);
	@override late final _LocaleKeysExperienceGreenfluxAchievementsHi achievements = _LocaleKeysExperienceGreenfluxAchievementsHi._(_root);
}

// Path: experience.friflex
class _LocaleKeysExperienceFriflexHi extends LocaleKeysExperienceFriflexEn {
	_LocaleKeysExperienceFriflexHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'मोबाइल एप्लिकेशन डेवलपर';
	@override String get organization => 'Friflex';
	@override String get location => 'मॉस्को, रूस';
	@override String get duration => 'अगस्त 2022 – दिसंबर 2023';
	@override String get subtitle => 'शतरंज और चौपड़ खेलों की पहचान करने वाली सेवाओं का विकास';
	@override late final _LocaleKeysExperienceFriflexSkillsHi skills = _LocaleKeysExperienceFriflexSkillsHi._(_root);
	@override late final _LocaleKeysExperienceFriflexAchievementsHi achievements = _LocaleKeysExperienceFriflexAchievementsHi._(_root);
}

// Path: experience.agroStab
class _LocaleKeysExperienceAgroStabHi extends LocaleKeysExperienceAgroStabEn {
	_LocaleKeysExperienceAgroStabHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Full-stack डेवलपर';
	@override String get organization => 'AgroSTAB';
	@override String get location => 'सेंट पीटर्सबर्ग, रूस';
	@override String get duration => 'फरवरी 2022 – जुलाई 2022';
	@override String get subtitle => 'स्मार्ट ग्रीनहाउस के लिए प्रशासनिक पैनल का विकास';
	@override late final _LocaleKeysExperienceAgroStabSkillsHi skills = _LocaleKeysExperienceAgroStabSkillsHi._(_root);
	@override late final _LocaleKeysExperienceAgroStabAchievementsHi achievements = _LocaleKeysExperienceAgroStabAchievementsHi._(_root);
}

// Path: experience.greenflux.skills
class _LocaleKeysExperienceGreenfluxSkillsHi extends LocaleKeysExperienceGreenfluxSkillsEn {
	_LocaleKeysExperienceGreenfluxSkillsHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

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
	@override String get skill10 => 'अंग्रेज़ी';
	@override String get skill11 => 'REST API';
	@override String get skill12 => 'Figma';
	@override String get skill13 => 'ऑब्जेक्ट-ओरिएंटेड प्रोग्रामिंग (OOP)';
}

// Path: experience.greenflux.achievements
class _LocaleKeysExperienceGreenfluxAchievementsHi extends LocaleKeysExperienceGreenfluxAchievementsEn {
	_LocaleKeysExperienceGreenfluxAchievementsHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'सभी विकास चक्र का समर्थन किया: तकनीकी विनिर्देशन से लेकर प्रकाशन तक';
	@override String get achievement2 => '10+ एप्लिकेशन की एक साझा कोडबेस के साथ सिस्टम का समर्थन किया';
	@override String get achievement3 => 'लिन्टर्स, फॉर्मेटिंग सेट की और सभी एप्लिकेशन के लिए एक सामान्य क्लास सिस्टम लागू किया';
	@override String get achievement4 => 'पुल्ल-रिक्वेस्ट की समीक्षा, एप्लिकेशन के निर्माण और प्रकाशन के लिए पाइपलाइन बनाई, और प्रक्रियाओं को सरल बनाने के लिए स्क्रिप्ट बनाई';
	@override String get achievement5 => 'Git Flow सेट किया और इसकी अनुपालना की निगरानी की';
	@override String get achievement6 => 'Google Maps, सूचनाओं और अन्य जटिल कार्यों के साथ निकटता से काम किया';
	@override String get achievement7 => 'SwiftUI के साथ iOS Live Activities को पूरी तरह से लागू किया और इसे कई एप्लिकेशनों तक विस्तारित किया';
	@override String get achievement8 => 'संपूर्ण कोडबेस के लिए परीक्षण कवर किए';
}

// Path: experience.friflex.skills
class _LocaleKeysExperienceFriflexSkillsHi extends LocaleKeysExperienceFriflexSkillsEn {
	_LocaleKeysExperienceFriflexSkillsHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Firebase';
	@override String get skill2 => 'डेटाबेस';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Figma';
	@override String get skill5 => 'स्थानीयकरण';
	@override String get skill6 => 'ChatGPT';
	@override String get skill7 => 'Dart';
	@override String get skill8 => 'REST API';
	@override String get skill9 => 'Flutter';
	@override String get skill10 => 'Google Play';
	@override String get skill11 => 'डिज़ाइन पैटर्न';
	@override String get skill12 => 'Git';
	@override String get skill13 => 'BloC';
	@override String get skill14 => 'ऑब्जेक्ट-ओरिएंटेड प्रोग्रामिंग (OOP)';
}

// Path: experience.friflex.achievements
class _LocaleKeysExperienceFriflexAchievementsHi extends LocaleKeysExperienceFriflexAchievementsEn {
	_LocaleKeysExperienceFriflexAchievementsHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'सभी विकास चक्र का समर्थन किया: तकनीकी विनिर्देशन से लेकर प्रकाशन तक';
	@override String get achievement2 => '3 कस्टम पैकेज बनाए और 10+ पैकेजों का समर्थन किया, और उनके बीच निर्भरता सेट की';
	@override String get achievement3 => 'तीसरे पक्ष की सेवाओं (MiniO, Firebase) का सफलतापूर्वक एकीकरण किया';
	@override String get achievement4 => 'Flutter Web पर प्रशासनिक वेब डैशबोर्ड का विकास किया';
	@override String get achievement5 => 'Dart का उपयोग करके बैकएंड विकास किया';
	@override String get achievement6 => 'असंख्य UI घटक और एनीमेशन बनाए';
	@override String get achievement7 => 'क्लाउड स्टोरेज में डेटा भेजने के लिए बैकग्राउंड सेवा विकसित की';
	@override String get achievement8 => 'लाइव स्ट्रीमिंग प्रणाली को बनाए रखा, जिसमें मोबाइल एप्लिकेशन, बैकएंड और वेब पार्ट शामिल थे';
}

// Path: experience.agroStab.skills
class _LocaleKeysExperienceAgroStabSkillsHi extends LocaleKeysExperienceAgroStabSkillsEn {
	_LocaleKeysExperienceAgroStabSkillsHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Mqtt';
	@override String get skill2 => 'Cron';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Linux';
	@override String get skill5 => 'अंग्रेज़ी';
	@override String get skill6 => 'Git';
	@override String get skill7 => 'ReactJS';
	@override String get skill8 => 'GitLab';
}

// Path: experience.agroStab.achievements
class _LocaleKeysExperienceAgroStabAchievementsHi extends LocaleKeysExperienceAgroStabAchievementsEn {
	_LocaleKeysExperienceAgroStabAchievementsHi._(LocaleKeysHi root) : this._root = root, super.internal(root);

	final LocaleKeysHi _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'सभी विकास चक्र का समर्थन किया: तकनीकी विनिर्देशन से लेकर प्रकाशन तक';
	@override String get achievement2 => 'React.js का उपयोग करके यूजर इंटरफेस बनाया';
	@override String get achievement3 => 'react-redux का उपयोग करके डेटा प्रोसेसिंग का एकीकरण किया';
	@override String get achievement4 => 'घटक संरचना, उनकी स्थिति और कनेक्शन डिजाइन किए';
	@override String get achievement5 => 'UX सुधारने के लिए इंटरएक्टिव तत्व जोड़े';
	@override String get achievement6 => 'Nest.js पर लिखे गए बैकएंड की संरचना में सुधार किया और डेटा प्रोसेसिंग लॉजिक जोड़ा';
	@override String get achievement7 => 'PostgreSQL डेटाबेस संरचना डिजाइन की और अपडेट लागू किए';
	@override String get achievement8 => 'Cron का उपयोग करके डेटाबेस में डेटा के अपडेट के लिए एल्गोरिदम विकसित किए';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on LocaleKeysHi {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'tab.home': return 'होम';
			case 'tab.summary': return 'सारांश';
			case 'tab.projects': return 'प्रोजेक्ट्स';
			case 'tab.experience': return 'अनुभव';
			case 'tab.language': return 'भाषा';
			case 'skill.teamPlayer': return 'टीम खिलाड़ी';
			case 'skill.communicative': return 'संचार में माहिर';
			case 'skill.problemSolver': return 'समस्या हल करने वाली';
			case 'skill.leader': return 'नेता';
			case 'skill.nonConflictual': return 'संघर्षहीन';
			case 'welcome.title': return 'मोबाइल डेवलपर';
			case 'welcome.subtitle': return 'Kseniia Nikitina';
			case 'summary.totalExperience.subtitle': return 'कुल अनुभव';
			case 'summary.totalExperience.content': return 'Dart के अलावा, मेरे पास Kotlin, Swift, JavaScript, Python, C#, R और अन्य में अनुभव है';
			case 'summary.flutterExperience.subtitle': return 'Flutter अनुभव';
			case 'summary.flutterExperience.content1': return 'मैं विकसित करती हूँ';
			case 'summary.flutterExperience.content2': return 'वेब और मोबाइल';
			case 'summary.flutterExperience.content3': return 'एप्लिकेशन, साथ ही';
			case 'summary.flutterExperience.content4': return 'बैकएंड';
			case 'summary.flutterExperience.content5': return 'संरचनाएँ। मैं जटिल प्रणालियों और कस्टम Flutter पैकेजों में विशेषज्ञ हूँ';
			case 'summary.highEducation.title': return 'उच्च शिक्षा';
			case 'summary.highEducation.subtitle': return 'इंजीनियरिंग में';
			case 'summary.highEducation.content1': return '«सूचना और संचार प्रणालियों में प्रोग्रामिंग»';
			case 'summary.highEducation.content2': return 'ITMO विश्वविद्यालय में';
			case 'summary.openSource.title': return 'Open-source';
			case 'summary.openSource.subtitle': return 'सक्रिय परियोजना';
			case 'summary.openSource.content': return 'P2P संचार के लिए एक पैकेज';
			case 'summary.openSource.contentButton': return 'पैकेज देखें';
			case 'summary.googlePlay.title': return 'Google Play';
			case 'summary.googlePlay.subtitle': return 'सक्रिय एप्लिकेशन';
			case 'summary.googlePlay.content': return 'टेक्स्ट और फाइल साझाकरण के साथ एक ऑफ़लाइन चैट ऐप';
			case 'summary.googlePlay.contentButton': return 'एप्लिकेशन खोलें';
			case 'summary.english.title': return 'अंग्रेजी';
			case 'summary.english.subtitle': return 'कामकाजी दक्षता';
			case 'summary.english.content': return 'I very, very, very speak English';
			case 'summary.title': return 'सारांश';
			case 'summary.subtitle': return 'बहुत संक्षिप्त और मीठा';
			case 'petProjects.title': return 'पेट प्रोजेक्ट्स';
			case 'petProjects.subtitle': return 'विशिष्ट, रचनात्मक, मेरे!';
			case 'petProjects.markdown.imageButton': return 'GitHub पर छवि देखें';
			case 'petProjects.error.title': return 'ओपस!';
			case 'petProjects.error.subtitle': return ({required Object id}) => 'ID=${id} के लिए परियोजना नहीं मिला. कृपया ID को जांचें और पुन: प्रयास करें.';
			case 'year': return ({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('hi'))(n,
				zero: '${n} वर्ष',
				one: '${n} साल',
				two: '${n} साल',
				few: '${n} साल',
				many: '${n} साल',
				other: '${n} साल',
			);
			case 'androidDemo': return 'Android डेमो';
			case 'iosDemo': return 'iOS डेमो';
			case 'notFound.title': return '404';
			case 'notFound.subtitle': return 'यह पृष्ठ अस्तित्व में नहीं है';
			case 'notFound.button': return 'मुख्य पृष्ठ पर जाएं';
			case 'pageTitle': return 'Kseniia | मोबाइल डेवलपर';
			case 'mainImageCaption': return 'छवि को ग्राफिक प्रोसेसिंग की मदद से बनाया गया था';
			case 'experience.title': return 'अनुभव';
			case 'experience.subtitle': return 'उबाऊ हिस्सा';
			case 'experience.cv.caption': return 'मेरी अभियान के बारे में और पढ़ने के लिए और अधिक जानें';
			case 'experience.cv.button': return 'खुला CV';
			case 'experience.greenflux.title': return 'मोबाइल एप्लिकेशन डेवलपर';
			case 'experience.greenflux.organization': return 'Greenflux Assets B.V.';
			case 'experience.greenflux.location': return 'एम्स्टर्डम, नीदरलैंड्स (हाइब्रिड)';
			case 'experience.greenflux.duration': return 'फरवरी 2024 – वर्तमान';
			case 'experience.greenflux.subtitle': return 'इलेक्ट्रिक वाहन चार्जिंग के लिए एप्लिकेशन विकसित करना';
			case 'experience.greenflux.skills.skill1': return 'Dart';
			case 'experience.greenflux.skills.skill2': return 'Flutter';
			case 'experience.greenflux.skills.skill3': return 'Google Play';
			case 'experience.greenflux.skills.skill4': return 'Firebase';
			case 'experience.greenflux.skills.skill5': return 'Git';
			case 'experience.greenflux.skills.skill6': return 'ChatGPT';
			case 'experience.greenflux.skills.skill7': return 'BloC';
			case 'experience.greenflux.skills.skill8': return 'App Store';
			case 'experience.greenflux.skills.skill9': return 'SwiftUI';
			case 'experience.greenflux.skills.skill10': return 'अंग्रेज़ी';
			case 'experience.greenflux.skills.skill11': return 'REST API';
			case 'experience.greenflux.skills.skill12': return 'Figma';
			case 'experience.greenflux.skills.skill13': return 'ऑब्जेक्ट-ओरिएंटेड प्रोग्रामिंग (OOP)';
			case 'experience.greenflux.achievements.achievement1': return 'सभी विकास चक्र का समर्थन किया: तकनीकी विनिर्देशन से लेकर प्रकाशन तक';
			case 'experience.greenflux.achievements.achievement2': return '10+ एप्लिकेशन की एक साझा कोडबेस के साथ सिस्टम का समर्थन किया';
			case 'experience.greenflux.achievements.achievement3': return 'लिन्टर्स, फॉर्मेटिंग सेट की और सभी एप्लिकेशन के लिए एक सामान्य क्लास सिस्टम लागू किया';
			case 'experience.greenflux.achievements.achievement4': return 'पुल्ल-रिक्वेस्ट की समीक्षा, एप्लिकेशन के निर्माण और प्रकाशन के लिए पाइपलाइन बनाई, और प्रक्रियाओं को सरल बनाने के लिए स्क्रिप्ट बनाई';
			case 'experience.greenflux.achievements.achievement5': return 'Git Flow सेट किया और इसकी अनुपालना की निगरानी की';
			case 'experience.greenflux.achievements.achievement6': return 'Google Maps, सूचनाओं और अन्य जटिल कार्यों के साथ निकटता से काम किया';
			case 'experience.greenflux.achievements.achievement7': return 'SwiftUI के साथ iOS Live Activities को पूरी तरह से लागू किया और इसे कई एप्लिकेशनों तक विस्तारित किया';
			case 'experience.greenflux.achievements.achievement8': return 'संपूर्ण कोडबेस के लिए परीक्षण कवर किए';
			case 'experience.friflex.title': return 'मोबाइल एप्लिकेशन डेवलपर';
			case 'experience.friflex.organization': return 'Friflex';
			case 'experience.friflex.location': return 'मॉस्को, रूस';
			case 'experience.friflex.duration': return 'अगस्त 2022 – दिसंबर 2023';
			case 'experience.friflex.subtitle': return 'शतरंज और चौपड़ खेलों की पहचान करने वाली सेवाओं का विकास';
			case 'experience.friflex.skills.skill1': return 'Firebase';
			case 'experience.friflex.skills.skill2': return 'डेटाबेस';
			case 'experience.friflex.skills.skill3': return 'PostgreSQL';
			case 'experience.friflex.skills.skill4': return 'Figma';
			case 'experience.friflex.skills.skill5': return 'स्थानीयकरण';
			case 'experience.friflex.skills.skill6': return 'ChatGPT';
			case 'experience.friflex.skills.skill7': return 'Dart';
			case 'experience.friflex.skills.skill8': return 'REST API';
			case 'experience.friflex.skills.skill9': return 'Flutter';
			case 'experience.friflex.skills.skill10': return 'Google Play';
			case 'experience.friflex.skills.skill11': return 'डिज़ाइन पैटर्न';
			case 'experience.friflex.skills.skill12': return 'Git';
			case 'experience.friflex.skills.skill13': return 'BloC';
			case 'experience.friflex.skills.skill14': return 'ऑब्जेक्ट-ओरिएंटेड प्रोग्रामिंग (OOP)';
			case 'experience.friflex.achievements.achievement1': return 'सभी विकास चक्र का समर्थन किया: तकनीकी विनिर्देशन से लेकर प्रकाशन तक';
			case 'experience.friflex.achievements.achievement2': return '3 कस्टम पैकेज बनाए और 10+ पैकेजों का समर्थन किया, और उनके बीच निर्भरता सेट की';
			case 'experience.friflex.achievements.achievement3': return 'तीसरे पक्ष की सेवाओं (MiniO, Firebase) का सफलतापूर्वक एकीकरण किया';
			case 'experience.friflex.achievements.achievement4': return 'Flutter Web पर प्रशासनिक वेब डैशबोर्ड का विकास किया';
			case 'experience.friflex.achievements.achievement5': return 'Dart का उपयोग करके बैकएंड विकास किया';
			case 'experience.friflex.achievements.achievement6': return 'असंख्य UI घटक और एनीमेशन बनाए';
			case 'experience.friflex.achievements.achievement7': return 'क्लाउड स्टोरेज में डेटा भेजने के लिए बैकग्राउंड सेवा विकसित की';
			case 'experience.friflex.achievements.achievement8': return 'लाइव स्ट्रीमिंग प्रणाली को बनाए रखा, जिसमें मोबाइल एप्लिकेशन, बैकएंड और वेब पार्ट शामिल थे';
			case 'experience.agroStab.title': return 'Full-stack डेवलपर';
			case 'experience.agroStab.organization': return 'AgroSTAB';
			case 'experience.agroStab.location': return 'सेंट पीटर्सबर्ग, रूस';
			case 'experience.agroStab.duration': return 'फरवरी 2022 – जुलाई 2022';
			case 'experience.agroStab.subtitle': return 'स्मार्ट ग्रीनहाउस के लिए प्रशासनिक पैनल का विकास';
			case 'experience.agroStab.skills.skill1': return 'Mqtt';
			case 'experience.agroStab.skills.skill2': return 'Cron';
			case 'experience.agroStab.skills.skill3': return 'PostgreSQL';
			case 'experience.agroStab.skills.skill4': return 'Linux';
			case 'experience.agroStab.skills.skill5': return 'अंग्रेज़ी';
			case 'experience.agroStab.skills.skill6': return 'Git';
			case 'experience.agroStab.skills.skill7': return 'ReactJS';
			case 'experience.agroStab.skills.skill8': return 'GitLab';
			case 'experience.agroStab.achievements.achievement1': return 'सभी विकास चक्र का समर्थन किया: तकनीकी विनिर्देशन से लेकर प्रकाशन तक';
			case 'experience.agroStab.achievements.achievement2': return 'React.js का उपयोग करके यूजर इंटरफेस बनाया';
			case 'experience.agroStab.achievements.achievement3': return 'react-redux का उपयोग करके डेटा प्रोसेसिंग का एकीकरण किया';
			case 'experience.agroStab.achievements.achievement4': return 'घटक संरचना, उनकी स्थिति और कनेक्शन डिजाइन किए';
			case 'experience.agroStab.achievements.achievement5': return 'UX सुधारने के लिए इंटरएक्टिव तत्व जोड़े';
			case 'experience.agroStab.achievements.achievement6': return 'Nest.js पर लिखे गए बैकएंड की संरचना में सुधार किया और डेटा प्रोसेसिंग लॉजिक जोड़ा';
			case 'experience.agroStab.achievements.achievement7': return 'PostgreSQL डेटाबेस संरचना डिजाइन की और अपडेट लागू किए';
			case 'experience.agroStab.achievements.achievement8': return 'Cron का उपयोग करके डेटाबेस में डेटा के अपडेट के लिए एल्गोरिदम विकसित किए';
			default: return null;
		}
	}
}

