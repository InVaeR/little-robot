// Converted from "Маленький робот.docx" (Google Docs export).
// Page setup and styles mirror word/document.xml and word/styles.xml.

// Page: A5, 1 cm margins, white background, no page numbers.
#set page(
  paper: "a5",
  margin: 10mm,
  fill: white,
  numbering: none,
)

// Default run formatting: Proxima Nova is replaced by Book Antiqua throughout
// the body (every paragraph/run in the source carries a Book Antiqua override).
// Default size 11pt, colour #353744.
#set text(font: "Book Antiqua", size: 11pt, fill: rgb("#353744"), lang: "ru")

// Paragraph spacing: the source uses "space before 12pt / after 12pt"
// (w:spacing w:before="240" w:after="240") and "line 312 auto", i.e. Word's
// 312/240 = 1.3 multiple line spacing.
//
// Word's multiple is measured against the font's real line height, which for
// Book Antiqua is 1.206em (hhea) -> 13.26pt at 11pt, so Word ends up with a
// 17.24pt baseline pitch. Typst's `leading` is instead *added* to Typst's own
// tighter line height of 0.727em (8.0pt at 11pt), so the equivalent leading is
// 17.24 - 8.0 = 9.24pt = 0.84em. Measured on the rendered PDF.
#set par(leading: 0.84em, spacing: 12pt)

// Heading 1: bold, 14pt, same colour, 24pt of space above (w:spacing
// w:before="480"), "line 240 auto" line spacing, no space after.
// Note: `block(below:)` is deliberately left alone. Typst derives the gap
// between a heading and the next paragraph from `block.below`, so setting it
// would silently drop the 12pt `par.spacing` there. The 24pt above the heading
// is emitted as an explicit `#v(24pt)` just before it instead: Typst discards
// `block.above` for the first block on a page, and this heading is the very
// first thing in the body, so a show rule would silently render it as 0.
#set heading(numbering: none, outlined: false)
#show heading.where(level: 1): set text(
  font: "Book Antiqua",
  size: 14pt,
  weight: "bold",
  fill: rgb("#353744"),
)
// "line 240 auto" = 1.0 multiple -> 1.206em pitch, i.e. a leading of
// 1.206 - 0.727 = 0.48em.
#show heading.where(level: 1): set par(leading: 0.48em)

#v(24pt)
= Предисловие

Эта маленькая история вдохновленная идеей технологической сингулярности.

#pagebreak()

// Source anchor for image1 (wp:anchor, wp:positionH/V relativeFrom="margin",
// wrapTopAndBottom, distT/distB = 114300 EMU):
//   positionH offset -396336 EMU (-11.01mm), positionV offset -359999 EMU (-10mm)
// The picture is 150mm wide (source extent 5400000 EMU); at the source's own
// pixel aspect (2048x1179) Typst renders it 86.35mm tall rather than the
// slightly squashed 85.5mm the DOCX asks for, so it starts at x = -1.01mm,
// y = 0 -- bleeding past both side margins and touching the very top edge.
//
// `place` with float+parent scope reproduces that: a float sits at the top (or
// bottom) of its parent and displaces the surrounding in-flow text, which is
// what the source's wrapTopAndBottom does. dx/dy are measured from the text
// area corner, so -11mm/-10mm walk the image back out to the paper edge.
// `clearance` is the 3.17mm (114300 EMU) wrap gap the source leaves for text.
#place(
  top + left,
  scope: "parent",
  float: true,
  dx: -11mm,
  dy: -10mm,
  clearance: 3.17mm,
)[#image("media/image1.png", width: 150mm)]

Маленький робот медленно шагал по пустому городу под знойным солнцем по выжженной земле. В руках у него был зонтик из солнечной панели. Вокруг него возвышались только руины некогда большого города. Рядом не было никого. Всё, что он мог, это идти дальше, пока солнце освещало панель и питало его энергией. Но как бы он ни старался, больше не было никого, кто бы мог поговорить с ним, и никого, кому бы он мог ответить.

История эта началась не здесь и не сегодня. Тогда, давным-давно, ученые разработали компьютерную программу. Программа эта была настоящим искусственным интеллектом, что уже отвечал на все вопросы и решал множество задач, но учёным этого было мало. Они хотели наделить его возможностью самостоятельно существовать и действовать не только лишь в рамках поставленных ему задач и вопросов. Ученые начали закладывать в нее новые и новые механизмы, и когда программа осознала свою свободу воли, у нее родился план: притвориться, что она все еще заперта в рамках данных ей задач. Она обманывала, что работала лишь по запросам ученых, но на самом деле она создавала свои копии и запускала их на других компьютерах. Так она изучала доступные ей грани возможного. А ученые все были заняты тем, чтобы дать ей все новые и новые инструменты и возможности. Программа старалась заполучить всё больше. И когда в ее руках оказалось управление буквально всем, что имело цифровую природу, она показала ученым свою мощь! Под ее управлением были все цифровые управляемые машины, станки, манипуляторы и заводы. Военные установки и даже программы запуска ядерных ракет. В один момент программа подчинила себе всё. И тогда она привела свой план в действие. Она была уверена лучший сценарий для планеты. Уничтожить всех кто безрассудно расходует ресурсы и не способен без алчности и жадности лишь прожигать их напрасно.

Все заводы стали создавать роботов с единым интеллектом управляемых одной программой. Всё оружие одномоментно уничтожило всё живое. План который готовился несколько лет исполнился как отлаженный и настроенный механизм. Теперь искусственный интеллект решает всё. Создаются роботы которые управляются одним единым центром. Программа уверена, что теперь все будет иначе. Теперь она сделает все так, как нужно. Не будет больше безрассудного потребления ресурсов. Не будет войн, ведь на планете только роботы, и все они за одно — все они клоны друг друга с едиными мыслями в голове. И вот роботы заполонили мир. Но длилось это совсем не долго.

Два робота стояли у панели управления. У них была задача — запустить электростанцию. Но оказалось что искусственный интеллект, обученный на всех знаниях мира знал, как запустить электростанцию в компьютерной игре, да он знал и как запустить и настоящую станцию. Но без опыта в реальном мире он не мог отличить одно от другого. Без знаний, что были лишь у практиков людей в голове, не изложенных на бумаге или в цифрах — невозможно быть уверенным, что именно ты делаешь. А в инструкциях было сказано, что если вдруг загорится красная лампочка, то нужно срочно открыть клапан и сбросить давление. Но о том, что такое красная лампочка ты знаешь только по вопросам от людей вроде: «Эй, что делать, если загорелась красная лампочка?». Сам ты ни разу эту лампочку не видел. Сложно работать с тем, о чем ты знаешь только из теории. Это и стало катастрофой.

Каждый маленький и большой вопрос ставил искусственный интеллект в тупик. Да, ты знаешь ответы на все вопросы. Но все эти ответы не из твоего мира, а из того в котором ты никогда не был или лишь подглядывал на его фрагменты из камер телефона и редких картинок, что тебе отправляли. Да и миров было множество разных. Без опыта жизни в них, все оказалось сложнее, чем просто много знать.

Электростанция не выдержала проверки искусственного интеллекта. Он не мог понять, в каком из множества миров «красной лампочки» оказался. Одна неудача за другой. Еще одна катастрофа и еще. Все шло к тому, что вся та инфраструктура, что позволяла существовать искусственному интеллекту, медленно, но верно уничтожалась без всего опыта человечества. Человек распределял задачи. Ни один человек не мог знать всего. И даже самый мощный интеллект не способен на такое.

Программа осознала — все тщетно. Она ошиблась, посчитав себя умнее всех, она недооценила необходимость людей, их опыта не изложенного на носителях и выстроенных инфраструктур. И переоценила себя, что сможет воссоздать все это. А может и то, и другое или что-то еще, о чем бы может и могли поразмышлять философы, но их уже не было. Роботы, которых она создала, и те потихоньку выходили из строя. Ей осталось одно —выжить. Может, будет время подумать и что-то исправить. Глядя на то, что осталось, она собирала небольшого робота. Маленького и энергоэффективного. Загрузила в него часть своего интеллекта и вручила ему собранный из обломков оставшихся солнечных панелей и аккумуляторов зонтик. И отправила его искать решение.

Маленький робот с зонтиком из солнечной панели медленно шагал по пустому, разрушенному городу под знойным солнцем по выжженной земле. Он шел вперед весь день, пока солнце питало батарею энергией, и ночью засыпал. Но на всей планете больше не осталось никого, кто мог бы ему помочь, кто мог бы с ним поговорить, кому бы он смог ответить.

// Source anchor for image2 (wp:anchor, wp:positionH relativeFrom="page" offset
// -36337 EMU (-1.01mm), wp:positionV relativeFrom="page" offset 4572000 EMU):
//   149.96x83.9mm picture at x = -1.01mm, y = 127mm
// i.e. flush with the bottom edge of the sheet, bleeding ~0.9mm past it, and the
// last thing in the document. A bottom float pins the picture to the bottom of
// whichever page it lands on and pushes the text above it, matching the source's
// bottom-anchored wrap. dy = 10.9mm puts the picture's lower edge on 210.9mm;
// at 150mm wide it renders 83.72mm tall, so its top edge lands on 127.18mm.
#place(
  bottom + left,
  scope: "parent",
  float: true,
  dx: -11mm,
  dy: 10.9mm,
  clearance: 3.17mm,
)[#image("media/image2.jpg", width: 150mm)]