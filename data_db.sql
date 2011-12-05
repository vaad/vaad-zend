--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- Name: accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('accounts_id_seq', 1, false);


--
-- Name: ad_cat_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('ad_cat_codes_seq_id', 2, true);


--
-- Name: ads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('ads_id_seq', 1, false);


--
-- Name: app_codes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('app_codes_id_seq', 8, true);


--
-- Name: app_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('app_codes_seq_id', 1, false);


--
-- Name: appartments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('appartments_id_seq', 32, false);


--
-- Name: apt_maintenance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('apt_maintenance_id_seq', 2, false);


--
-- Name: bank_code_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('bank_code_id_seq', 1, false);


--
-- Name: bank_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('bank_codes_seq_id', 55, true);


--
-- Name: buildings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('buildings_id_seq', 1, false);


--
-- Name: comment_codes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('comment_codes_id_seq', 2, true);


--
-- Name: comment_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('comment_codes_seq_id', 1, false);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('comments_id_seq', 1, true);


--
-- Name: contact_codes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('contact_codes_id_seq', 6, true);


--
-- Name: contact_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('contact_codes_seq_id', 2, true);


--
-- Name: contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('contacts_id_seq', 10, true);


--
-- Name: forums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('forums_id_seq', 1, false);


--
-- Name: incomes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('incomes_id_seq', 286, true);


--
-- Name: pay_codes_id_seqpay_codes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('pay_codes_id_seqpay_codes_id_seq', 1, false);


--
-- Name: pay_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('pay_codes_seq_id', 1, false);


--
-- Name: poll_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('poll_codes_seq_id', 1, false);


--
-- Name: polloptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('polloptions_id_seq', 1, false);


--
-- Name: polls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('polls_id_seq', 1, false);


--
-- Name: post_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('post_codes_seq_id', 100, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('posts_id_seq', 2, false);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('projects_id_seq', 16, true);


--
-- Name: receipts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('receipts_id_seq', 1, false);


--
-- Name: reminders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('reminders_id_seq', 1, false);


--
-- Name: sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('sites_id_seq', 1, false);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('tags_id_seq', 1, false);


--
-- Name: task_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('task_codes_seq_id', 100, true);


--
-- Name: tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('tasks_id_seq', 1, false);


--
-- Name: tenants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('tenants_id_seq', 28, true);


--
-- Name: ticket_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('ticket_codes_seq_id', 100, true);


--
-- Name: tickets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('tickets_id_seq', 1, false);


--
-- Name: todo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('todo_id_seq', 1, false);


--
-- Name: transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('transactions_id_seq', 479, true);


--
-- Name: trn_cat_codes_seq_id; Type: SEQUENCE SET; Schema: public; Owner: mainvaadbait_il_com
--

SELECT pg_catalog.setval('trn_cat_codes_seq_id', 10, true);


--
-- Data for Name: bank_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO bank_codes VALUES (0, 'מזומן');
INSERT INTO bank_codes VALUES (1, 'בנק  יורו');
INSERT INTO bank_codes VALUES (4, 'יהב לעובדי מדינה');
INSERT INTO bank_codes VALUES (7, 'פיתוח התעשייה');
INSERT INTO bank_codes VALUES (8, 'הספנות לישראל');
INSERT INTO bank_codes VALUES (9, 'הדואר – מספר סניף תמיד 001');
INSERT INTO bank_codes VALUES (10, 'לאומי/הישיר הראשון');
INSERT INTO bank_codes VALUES (11, 'דיסקונט');
INSERT INTO bank_codes VALUES (12, 'הפועלים');
INSERT INTO bank_codes VALUES (13, 'איגוד');
INSERT INTO bank_codes VALUES (14, 'אוצר החייל');
INSERT INTO bank_codes VALUES (17, 'מרכנתיל דיסקונט');
INSERT INTO bank_codes VALUES (19, 'החקלאות לישראל ');
INSERT INTO bank_codes VALUES (20, 'המזרחי');
INSERT INTO bank_codes VALUES (26, 'בנק U');
INSERT INTO bank_codes VALUES (28, 'קונטיננטל');
INSERT INTO bank_codes VALUES (30, 'הלמסחר');
INSERT INTO bank_codes VALUES (31, 'הבינלאומי הראשון');
INSERT INTO bank_codes VALUES (34, 'ערבי ישראלי');
INSERT INTO bank_codes VALUES (35, 'פולסקא/פאקאו');
INSERT INTO bank_codes VALUES (46, 'מסד');
INSERT INTO bank_codes VALUES (47, 'עולמי להשקעות');
INSERT INTO bank_codes VALUES (48, 'קופת העובד הלאומי בנתניה');
INSERT INTO bank_codes VALUES (52, 'פועלי אגודת ישראל');
INSERT INTO bank_codes VALUES (54, 'ירושלים');


--
-- Data for Name: sites; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO sites VALUES (1, 'מגדל עוז', 'כשהוועד תופס פיקוד', 'מגדל עוז', '1', 'מודיעין', '71703');


--
-- Data for Name: buildings; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO buildings VALUES (1, 1, true, 'מגדל עוז', '1', 'מודיעין', '70703', 30, -1, 9);


--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO accounts VALUES (1, 1, '2  ', NULL, NULL, 0, 'מזומן', NULL);
INSERT INTO accounts VALUES (2, 1, '1  ', '116', '651121', 0, 'חשבון עוש ראשי', 4);


--
-- Data for Name: ad_cat_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: ads; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: app_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO app_codes VALUES (0, 'דירת מגורים');
INSERT INTO app_codes VALUES (1, 'מעלית');
INSERT INTO app_codes VALUES (2, 'לובי');
INSERT INTO app_codes VALUES (3, 'מחסן');
INSERT INTO app_codes VALUES (4, 'גנרטור');
INSERT INTO app_codes VALUES (5, 'מערכת סולרית');
INSERT INTO app_codes VALUES (6, 'גינה');


--
-- Data for Name: appartments; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO appartments VALUES (5, 1, 5, 2, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (6, 1, 6, 2, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (7, 1, 7, 2, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (8, 1, 8, 2, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (9, 1, 9, 3, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (10, 1, 10, 3, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (11, 1, 11, 3, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (12, 1, 12, 3, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (13, 1, 13, 4, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (14, 1, 14, 4, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (15, 1, 15, 4, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (16, 1, 16, 4, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (17, 1, 17, 5, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (18, 1, 18, 5, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (19, 1, 19, 5, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (20, 1, 20, 5, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (21, 1, 21, 6, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (22, 1, 22, 6, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (23, 1, 23, 6, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (24, 1, 24, 6, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (25, 1, 25, 7, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (26, 1, 26, 7, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (27, 1, 27, 7, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (28, 1, 28, 8, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (29, 1, 29, 8, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (30, 1, 30, 9, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (1, 1, 1, 1, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (2, 1, 2, 1, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (3, 1, 3, 0, 0, NULL, NULL, 1, 2);
INSERT INTO appartments VALUES (4, 1, 4, 0, 0, NULL, NULL, 1, 2);


--
-- Data for Name: app_taxes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: apt_maintenance; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: comment_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO tenants VALUES (1, 1, true, 6, 'אלי', 'חיון', '820e3f2d112673b784f759648bb29e65', NULL, 'elihayun@gmail.com', '089717392', '', '0509247123', NULL, NULL, '', true, true, false, false, false, false);
INSERT INTO tenants VALUES (4, 1, false, 8, 'יעקב', 'בנדלר', '', NULL, NULL, NULL, NULL, '0508217015', NULL, NULL, NULL, false, true, false, false, false, false);
INSERT INTO tenants VALUES (5, 1, false, 21, 'ויטלי', 'ריינוס', NULL, NULL, '', '', '', '0524007630', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (6, 1, false, 29, 'רויטל', 'חדד', NULL, NULL, '', '', '', '0525236463', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (7, 1, false, 7, 'ויקי', 'שמש', NULL, NULL, '', '089712085', '', '', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (8, 1, false, 20, 'גדעון', 'קונרד', NULL, NULL, '', '0777101149', '', '', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (9, 1, false, 12, 'דני', 'ראיקו', NULL, NULL, '', '0774552687', '', '', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (10, 1, false, 17, 'משה', 'בן ציון', NULL, NULL, '', '', '', '0547636193', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (11, 1, false, 25, 'עדי', 'בלאס', NULL, NULL, '', '', '', '0503880407', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (12, 1, false, 19, 'אהרון', 'גרינר', NULL, NULL, '', '', '', '0507925085', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (13, 1, false, 10, 'שי', 'ורנר', NULL, NULL, '', '', '', '0544861228', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (15, 1, false, 18, 'שרי', 'בך', NULL, NULL, '', '', '', '0502863377', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (16, 1, false, 23, 'זאב', 'שטיינברג', NULL, NULL, '', '0505886905', '', '0546388436', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (17, 1, false, 16, 'דויד', 'מילוא', NULL, NULL, '', '', '', '0545868832', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (18, 1, false, 9, 'אסנת', 'כהן', NULL, NULL, '', '', '', '0544799558', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (19, 1, false, 5, 'אבי', 'הייער', NULL, NULL, '', '', '', '0542291790', NULL, NULL, '', true, true, false, false, false, false);
INSERT INTO tenants VALUES (20, 1, false, 30, 'יגאל', 'ביבי', NULL, NULL, '', '', '', '0522499193', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (23, 1, false, 22, 'פרד', 'בראונשטיין', NULL, NULL, '', '0548883744', '', '0546628245', NULL, NULL, '', false, true, false, false, false, false);
INSERT INTO tenants VALUES (26, 1, true, 6, 'עדי', 'זוסמן', 'd23c7a62c9505062d152952a067f7a71', NULL, 'adiz@adi-way.com', NULL, NULL, NULL, NULL, NULL, NULL, false, true, false, false, false, false);
INSERT INTO tenants VALUES (27, 1, true, 19, 'ענת', 'פידלר', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, false, false, false, false, false);
INSERT INTO tenants VALUES (28, 1, true, 19, 'אלכס', 'פידלר', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, false, false, false, false, false);
INSERT INTO tenants VALUES (3, 1, false, 3, 'דוריתה', 'ארקוסין', NULL, NULL, NULL, '089759789', NULL, NULL, NULL, NULL, NULL, false, true, false, false, false, false);
INSERT INTO tenants VALUES (14, 1, false, 4, 'שרית', 'מזרחי', NULL, NULL, NULL, NULL, NULL, '0506817849', NULL, NULL, NULL, false, true, false, false, false, false);
INSERT INTO tenants VALUES (21, 1, false, 1, 'אליהו', 'סספורטס', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, true, false, false, false, false);


--
-- Data for Name: forums; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: post_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO post_codes VALUES (0, 'לא לפרסום');
INSERT INTO post_codes VALUES (1, 'פרסום רגיל');
INSERT INTO post_codes VALUES (99, 'פרסום בעמוד ראשי');


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO posts VALUES (1, 1, 1, 99, 'פתיחת האתר', '<div align="right">ברוכים הבאים לאתר של מגדל עוז 1.<br>אחרי הרבה 

מאמצים האתר סוף סוף נפתח. אני מקווה שתפיקו ממנו תועלת רבה. האתר עדיין בהרצה אז

 אנא, שלחו את הערותיכם אלי ואני אתיחס לכל הערה<br>על

 מנת להנות מכל האפשרויות של האתר, עליכם להירשם. לאחר ההרשמה אנא, המתינו

 עד שאאשר אתכם. זה יכול לקחת מספר שעות, אז סבלנות. אם לא אישרתי אתכם אנא

 צרו איתי קשר דרך הטלפון ואבדוק את העניין.<br>רצוי שכל בני המשפחה ירשמו לאתר ולא רק אחד מבני המשפחה. כך תוכלו ליצור מודעות פרטיות ולהגיב על הנעשה כאן באופן אישי.<br><br>אשמח לשמוע את דעתכם על האתר ועל הבניין כמובן.<br></div><p><br></p>', NULL, '2011-09-27 05:34:05', '2011-10-05 06:46:11', NULL, true);


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: contact_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO contact_codes VALUES (0, 'כללי');
INSERT INTO contact_codes VALUES (1, 'וועד בניין');
INSERT INTO contact_codes VALUES (3, 'אינסטלטור');
INSERT INTO contact_codes VALUES (4, 'וועד בניין סמוך');
INSERT INTO contact_codes VALUES (5, 'חשמלאי');
INSERT INTO contact_codes VALUES (6, 'מתקין מזגנים');


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO contacts VALUES (4, 1, 'רוית', '', '0522200600', '', '', 'ועד בנין 7', 0, '');
INSERT INTO contacts VALUES (6, 1, 'משה', 'אינטרקום בבנין', '0522424272', '', '', 'בתקין את האינטרקום בבנין', 0, '');
INSERT INTO contacts VALUES (3, 1, 'חלי', NULL, '0528752558', NULL, NULL, 'ועד בנין 7', 1, NULL);
INSERT INTO contacts VALUES (1, 1, 'צביקה', 'קמינר', '0544825251', NULL, NULL, 'וועד בנין 3', 4, 'zvikas@malamteam.com');
INSERT INTO contacts VALUES (5, 1, 'יחזקאל', 'עמי', '089728110', NULL, 'רחוב לבונה 11 מודיעין', NULL, 0, NULL);
INSERT INTO contacts VALUES (2, 1, 'מוטי', 'סיטון', '0508575105', NULL, NULL, 'ועד בנין 5', 4, NULL);
INSERT INTO contacts VALUES (7, 1, 'דני', 'שירותי ביובית', '0505215677', '035719833', NULL, 'הומלץ על ידי בנין 3', 3, NULL);
INSERT INTO contacts VALUES (8, 1, 'כלליפט', 'שירותי מעלית', '035507135', '036106666 מנוי 49943', NULL, NULL, 0, NULL);
INSERT INTO contacts VALUES (9, 1, 'אמג''ד', NULL, '0522827048', NULL, NULL, 'מקצועי ולא יקרן. עובד כאינסטלטור בניין באתרי בניה במודיעין', 3, NULL);
INSERT INTO contacts VALUES (10, 1, 'יוחנן', '', '0546222428', '', '', 'מקצועי וזול', 5, '');


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO projects VALUES (3, 1, 'שיפוץ לובי 1-', '', 5000, 8000, NULL, NULL, NULL, NULL);
INSERT INTO projects VALUES (0, 1, 'מיסי וועד', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO projects VALUES (1, 1, 'הוצאות כלליות', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO projects VALUES (2, 1, 'החלפת רצפת מעליות', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO projects VALUES (11, 1, 'אינסטלציה', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO projects VALUES (13, 1, 'הוצאות חשמל', 'כל הוצאות החשמל בבניין', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO projects VALUES (14, 1, 'הוצאות נקיון', 'כל הוצאות הנקיון בבנין', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO projects VALUES (15, 1, 'הוצאות מעלית', 'כל ההוצאות שקשורות למעלית', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO projects VALUES (16, 1, 'גינון', 'כל הפעולות הקשורות לגינון הבניין', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: incomes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO incomes VALUES (281, 1, 0, '2011-11-01', '2011-11-01', 250, false, 582, 369, '2011-11-01', 22, 12);
INSERT INTO incomes VALUES (282, 1, 0, '2011-12-01', '2011-12-01', 250, false, 582, 364, '2011-12-01', 22, 12);
INSERT INTO incomes VALUES (283, 1, 0, '2012-01-01', '2012-01-01', 250, false, 582, 365, '2012-01-01', 22, 12);
INSERT INTO incomes VALUES (7, 1, 0, '2011-12-01', '2011-12-01', 312.5, false, 123, 399, '2011-11-07', 15, 4);
INSERT INTO incomes VALUES (15, 1, 0, '2011-11-01', '2011-11-01', 250, false, 663, 913, '2011-11-15', 2, 12);
INSERT INTO incomes VALUES (16, 1, 0, '2011-12-01', '2011-12-01', 250, false, 663, 914, '2011-12-15', 2, 12);
INSERT INTO incomes VALUES (34, 1, 0, '2011-11-01', '2011-11-01', 250, false, 493, 826, '2011-11-10', 28, 20);
INSERT INTO incomes VALUES (35, 1, 0, '2011-12-01', '2011-12-01', 250, false, 493, 827, '2011-12-10', 28, 20);
INSERT INTO incomes VALUES (46, 1, 0, '2011-11-01', '2011-11-01', 250, false, 148, 52, '2011-11-10', 9, 11);
INSERT INTO incomes VALUES (47, 1, 0, '2011-12-01', '2011-12-01', 250, false, 148, 53, '2011-12-10', 9, 11);
INSERT INTO incomes VALUES (56, 1, 0, '2011-11-01', '2011-11-01', 250, false, 680, 399, '2011-11-10', 1, 10);
INSERT INTO incomes VALUES (67, 1, 0, '2011-11-01', '2011-11-01', 250, false, 494, 38, '2011-11-10', 5, 14);
INSERT INTO incomes VALUES (68, 1, 0, '2011-12-01', '2011-12-01', 250, false, 494, 39, '2011-12-10', 5, 14);
INSERT INTO incomes VALUES (75, 1, 0, '2011-11-01', '2011-11-01', 250, false, 778, 362, '2011-11-10', 7, 12);
INSERT INTO incomes VALUES (76, 1, 0, '2011-12-01', '2011-12-01', 250, false, 778, 363, '2011-12-10', 7, 12);
INSERT INTO incomes VALUES (92, 1, 0, '2011-11-01', '2011-11-01', 250, false, 315, 504, '2011-11-10', 8, 14);
INSERT INTO incomes VALUES (93, 1, 0, '2011-12-01', '2011-12-01', 250, false, 315, 505, '2011-12-10', 8, 14);
INSERT INTO incomes VALUES (57, 1, 0, '2011-12-01', '2011-12-01', 250, true, 680, 400, '2011-12-10', 1, 10);
INSERT INTO incomes VALUES (101, 1, 0, '2011-11-01', '2011-11-01', 250, false, 628, 703, '2011-11-10', 10, 12);
INSERT INTO incomes VALUES (103, 1, 0, '2011-12-01', '2011-12-01', 250, false, 628, 704, '2011-12-10', 10, 12);
INSERT INTO incomes VALUES (116, 1, 0, '2011-11-01', '2011-11-01', 250, false, 5, 63, '2011-11-15', 12, 11);
INSERT INTO incomes VALUES (117, 1, 0, '2011-12-01', '2011-12-01', 250, false, 5, 64, '2011-12-15', 12, 11);
INSERT INTO incomes VALUES (125, 1, 0, '2011-11-01', '2011-11-01', 250, false, 45, 18, '2011-11-10', 13, 11);
INSERT INTO incomes VALUES (126, 1, 0, '2011-12-01', '2011-12-01', 250, false, 45, 19, '2011-12-10', 13, 11);
INSERT INTO incomes VALUES (134, 1, 0, '2011-11-01', '2011-11-01', 250, false, 582, 166, '2011-11-10', 14, 12);
INSERT INTO incomes VALUES (135, 1, 0, '2011-12-01', '2011-12-01', 250, false, 582, 167, '2011-12-10', 14, 12);
INSERT INTO incomes VALUES (142, 1, 0, '2011-11-01', '2011-11-01', 250, false, 678, 732, '2011-11-10', 17, 10);
INSERT INTO incomes VALUES (143, 1, 0, '2011-12-01', '2011-12-01', 250, false, 678, 733, '2011-12-10', 17, 10);
INSERT INTO incomes VALUES (174, 1, 0, '2011-11-01', '2011-11-01', 250, false, 680, 82, '2011-11-01', 21, 10);
INSERT INTO incomes VALUES (175, 1, 0, '2011-12-01', '2011-12-01', 250, false, 680, 83, '2011-12-01', 21, 10);
INSERT INTO incomes VALUES (182, 1, 0, '2011-11-01', '2011-11-01', 250, false, 582, 313, '2011-11-10', 23, 12);
INSERT INTO incomes VALUES (183, 1, 0, '2011-12-01', '2011-12-01', 250, false, 582, 314, '2011-12-10', 23, 12);
INSERT INTO incomes VALUES (192, 1, 0, '2011-11-01', '2011-11-01', 250, false, 657, 2000, '2011-11-15', 26, 10);
INSERT INTO incomes VALUES (193, 1, 0, '2011-12-01', '2011-12-01', 250, false, 657, 2001, '2011-12-15', 26, 10);
INSERT INTO incomes VALUES (201, 1, 0, '2011-11-01', '2011-11-01', 250, false, 128, 87, '2011-11-05', 29, 31);
INSERT INTO incomes VALUES (202, 1, 0, '2011-12-01', '2011-12-01', 250, false, 128, 88, '2011-12-05', 29, 31);
INSERT INTO incomes VALUES (210, 1, 0, '2011-11-01', '2011-11-01', 250, false, 345, 962, '2011-11-15', 30, 14);
INSERT INTO incomes VALUES (218, 1, 0, '2011-12-01', '2011-12-01', 250, false, 85, 11, '2011-12-10', 16, 11);
INSERT INTO incomes VALUES (224, 1, 0, '2010-12-01', '2010-12-01', 187.5, true, 123, 392, '2010-12-07', 15, 4);
INSERT INTO incomes VALUES (217, 1, 0, '2011-11-01', '2011-12-01', 500, false, 85, 10, '2011-11-11', 16, 11);
INSERT INTO incomes VALUES (213, 1, 0, '2011-11-01', '2011-12-01', 500, false, 116, 657, '2011-12-11', 24, 4);
INSERT INTO incomes VALUES (264, 1, 0, '2011-11-01', '2011-11-01', 250, false, 378, 829, '2011-11-10', 11, 14);
INSERT INTO incomes VALUES (265, 1, 0, '2011-12-01', '2011-12-01', 250, false, 378, 830, '2011-12-10', 11, 14);
INSERT INTO incomes VALUES (268, 1, 0, '2011-11-01', '2011-11-01', 250, false, 16, 8785, '2011-11-15', 18, 31);
INSERT INTO incomes VALUES (269, 1, 0, '2011-12-01', '2011-12-01', 250, false, 16, 8786, '2011-12-15', 18, 31);
INSERT INTO incomes VALUES (274, 1, 0, '2011-10-01', '2011-10-01', 250, false, 345, 861, '2011-11-10', 20, 14);
INSERT INTO incomes VALUES (275, 1, 0, '2011-11-01', '2011-11-01', 250, false, 345, 862, '2011-12-10', 20, 14);
INSERT INTO incomes VALUES (276, 1, 0, '2011-12-01', '2011-12-01', 250, false, 345, 863, '2012-01-10', 20, 14);
INSERT INTO incomes VALUES (112, 1, 0, '2011-03-01', '2011-04-01', 500, true, 116, 652, '2011-04-11', 24, 4);
INSERT INTO incomes VALUES (278, 1, 0, '2011-06-01', '2011-08-01', 750, true, 109, 1343, '2011-10-01', 4, 31);
INSERT INTO incomes VALUES (280, 1, 0, '2011-10-01', '2011-10-01', 250, true, 582, 362, '2011-10-03', 22, 12);
INSERT INTO incomes VALUES (284, 1, 0, '2012-02-01', '2012-02-01', 250, true, 582, 366, '2011-02-01', 22, 12);
INSERT INTO incomes VALUES (279, 1, 0, '2011-09-01', '2011-09-01', 250, true, 582, 363, '2011-10-03', 22, 12);
INSERT INTO incomes VALUES (124, 1, 0, '2011-10-01', '2011-10-01', 250, true, 45, 18, '2011-10-10', 13, 11);
INSERT INTO incomes VALUES (74, 1, 0, '2011-10-01', '2011-10-01', 250, true, 778, 362, '2011-10-10', 7, 12);
INSERT INTO incomes VALUES (1, 1, 0, '2011-05-01', '2011-05-01', 250, true, 680, 70, '2011-05-01', 21, 10);
INSERT INTO incomes VALUES (2, 1, 0, '2011-05-01', '2011-05-01', 250, true, 778, 357, '2011-05-10', 7, 12);
INSERT INTO incomes VALUES (8, 1, 0, '2011-04-01', '2011-04-01', 250, true, 663, 906, '2011-04-15', 2, 12);
INSERT INTO incomes VALUES (9, 1, 0, '2011-05-01', '2011-05-01', 250, true, 663, 907, '2011-05-15', 2, 12);
INSERT INTO incomes VALUES (10, 1, 0, '2011-06-01', '2011-06-01', 250, true, 663, 908, '2011-06-15', 2, 12);
INSERT INTO incomes VALUES (11, 1, 0, '2011-07-01', '2011-07-01', 250, true, 663, 909, '2011-07-15', 2, 12);
INSERT INTO incomes VALUES (12, 1, 0, '2011-08-01', '2011-08-01', 250, true, 663, 910, '2011-08-15', 2, 12);
INSERT INTO incomes VALUES (13, 1, 0, '2011-09-01', '2011-09-01', 250, true, 663, 911, '2011-09-15', 2, 12);
INSERT INTO incomes VALUES (14, 1, 0, '2011-10-01', '2011-10-01', 250, true, 663, 912, '2011-10-15', 2, 12);
INSERT INTO incomes VALUES (17, 1, 0, '2010-12-01', '2010-12-01', 250, true, NULL, NULL, '2011-02-15', 3, 0);
INSERT INTO incomes VALUES (18, 1, 0, '2011-02-01', '2011-02-01', 250, true, NULL, NULL, '2011-02-15', 3, 0);
INSERT INTO incomes VALUES (19, 1, 0, '2010-08-01', '2010-08-01', 250, true, NULL, NULL, '2011-01-15', 3, 0);
INSERT INTO incomes VALUES (20, 1, 0, '2010-09-01', '2010-09-01', 250, true, NULL, NULL, '2011-01-15', 3, 0);
INSERT INTO incomes VALUES (21, 1, 0, '2011-01-01', '2011-01-01', 250, true, NULL, NULL, '2011-01-15', 25, 0);
INSERT INTO incomes VALUES (22, 1, 0, '2011-02-01', '2011-02-01', 250, true, NULL, NULL, '2011-01-15', 25, 0);
INSERT INTO incomes VALUES (23, 1, 0, '2011-03-01', '2011-03-01', 250, true, NULL, NULL, '2011-01-15', 25, 0);
INSERT INTO incomes VALUES (24, 1, 0, '2011-04-01', '2011-04-01', 250, true, NULL, NULL, '2011-01-15', 25, 0);
INSERT INTO incomes VALUES (25, 1, 0, '2011-05-01', '2011-05-01', 250, true, NULL, NULL, '2011-01-15', 25, 0);
INSERT INTO incomes VALUES (26, 1, 0, '2011-06-01', '2011-06-01', 250, true, NULL, NULL, '2011-01-15', 25, 0);
INSERT INTO incomes VALUES (27, 1, 0, '2011-04-01', '2011-04-01', 250, true, 493, 717, '2011-04-10', 28, 20);
INSERT INTO incomes VALUES (28, 1, 0, '2011-05-01', '2011-05-01', 250, true, 493, 718, '2011-05-10', 28, 20);
INSERT INTO incomes VALUES (29, 1, 0, '2011-06-01', '2011-06-01', 250, true, 493, 719, '2011-06-10', 28, 20);
INSERT INTO incomes VALUES (30, 1, 0, '2011-07-01', '2011-07-01', 250, true, 493, 720, '2011-07-10', 28, 20);
INSERT INTO incomes VALUES (31, 1, 0, '2011-08-01', '2011-08-01', 250, true, 493, 721, '2011-08-10', 28, 20);
INSERT INTO incomes VALUES (32, 1, 0, '2011-09-01', '2011-09-01', 250, true, 493, 722, '2011-09-10', 28, 20);
INSERT INTO incomes VALUES (33, 1, 0, '2011-10-01', '2011-10-01', 250, true, 493, 723, '2011-10-10', 28, 20);
INSERT INTO incomes VALUES (36, 1, 0, '2011-04-01', '2011-04-01', 250, true, 378, 122, '2011-04-10', 11, 14);
INSERT INTO incomes VALUES (37, 1, 0, '2011-06-01', '2011-06-01', 250, true, 378, 124, '2011-06-10', 11, 14);
INSERT INTO incomes VALUES (38, 1, 0, '2011-07-01', '2011-07-01', 250, true, 378, 125, '2011-07-10', 11, 14);
INSERT INTO incomes VALUES (39, 1, 0, '2011-04-01', '2011-04-01', 250, true, 148, 45, '2011-04-10', 9, 11);
INSERT INTO incomes VALUES (40, 1, 0, '2011-05-01', '2011-05-01', 250, true, 148, 46, '2011-05-10', 9, 11);
INSERT INTO incomes VALUES (41, 1, 0, '2011-06-01', '2011-06-01', 250, true, 148, 47, '2011-06-10', 9, 11);
INSERT INTO incomes VALUES (42, 1, 0, '2011-07-01', '2011-07-01', 250, true, 148, 48, '2011-07-10', 9, 11);
INSERT INTO incomes VALUES (43, 1, 0, '2011-08-01', '2011-08-01', 250, true, 148, 49, '2011-08-10', 9, 11);
INSERT INTO incomes VALUES (44, 1, 0, '2011-09-01', '2011-09-01', 250, true, 148, 50, '2011-09-10', 9, 11);
INSERT INTO incomes VALUES (45, 1, 0, '2011-10-01', '2011-10-01', 250, true, 148, 51, '2011-10-10', 9, 11);
INSERT INTO incomes VALUES (48, 1, 0, '2011-04-01', '2011-04-01', 250, true, 582, 139, '2011-04-01', 22, 12);
INSERT INTO incomes VALUES (49, 1, 0, '2011-04-01', '2011-04-01', 250, true, 680, 392, '2011-04-10', 1, 10);
INSERT INTO incomes VALUES (50, 1, 0, '2011-05-01', '2011-05-01', 250, true, 680, 393, '2011-05-10', 1, 10);
INSERT INTO incomes VALUES (51, 1, 0, '2011-06-01', '2011-06-01', 250, true, 680, 394, '2011-06-10', 1, 10);
INSERT INTO incomes VALUES (52, 1, 0, '2011-07-01', '2011-07-01', 250, true, 680, 395, '2011-07-10', 1, 10);
INSERT INTO incomes VALUES (53, 1, 0, '2011-08-01', '2011-08-01', 250, true, 680, 396, '2011-08-10', 1, 10);
INSERT INTO incomes VALUES (54, 1, 0, '2011-09-01', '2011-09-01', 250, true, 680, 397, '2011-09-10', 1, 10);
INSERT INTO incomes VALUES (55, 1, 0, '2011-10-01', '2011-10-01', 250, true, 680, 398, '2011-10-10', 1, 10);
INSERT INTO incomes VALUES (58, 1, 0, '2011-04-01', '2011-04-01', 250, true, 494, 31, '2011-04-10', 5, 14);
INSERT INTO incomes VALUES (59, 1, 0, '2011-05-01', '2011-05-01', 250, true, 494, 32, '2011-05-10', 5, 14);
INSERT INTO incomes VALUES (60, 1, 0, '2011-06-01', '2011-06-01', 250, true, 494, 33, '2011-06-10', 5, 14);
INSERT INTO incomes VALUES (61, 1, 0, '2011-07-01', '2011-07-01', 250, true, 494, 34, '2011-07-10', 5, 14);
INSERT INTO incomes VALUES (62, 1, 0, '2011-08-01', '2011-08-01', 250, true, 494, 35, '2011-08-10', 5, 14);
INSERT INTO incomes VALUES (63, 1, 0, '2011-09-01', '2011-09-01', 250, true, 494, 36, '2011-09-10', 5, 14);
INSERT INTO incomes VALUES (64, 1, 0, '2010-10-01', '2010-10-01', 250, true, NULL, NULL, '2011-01-15', 3, 0);
INSERT INTO incomes VALUES (65, 1, 0, '2010-11-01', '2010-11-01', 250, true, NULL, NULL, '2011-01-15', 3, 0);
INSERT INTO incomes VALUES (66, 1, 0, '2011-10-01', '2011-10-01', 250, true, 494, 37, '2011-10-10', 5, 14);
INSERT INTO incomes VALUES (69, 1, 0, '2011-04-01', '2011-04-01', 250, true, 778, 355, '2011-04-10', 7, 12);
INSERT INTO incomes VALUES (70, 1, 0, '2011-06-01', '2011-06-01', 250, true, 778, 357, '2011-06-10', 7, 12);
INSERT INTO incomes VALUES (71, 1, 0, '2011-07-01', '2011-07-01', 250, true, 778, 358, '2011-07-10', 7, 12);
INSERT INTO incomes VALUES (72, 1, 0, '2011-08-01', '2011-08-01', 250, true, 778, 359, '2011-08-10', 7, 12);
INSERT INTO incomes VALUES (73, 1, 0, '2011-09-01', '2011-09-01', 250, true, 778, 360, '2011-09-10', 7, 12);
INSERT INTO incomes VALUES (77, 1, 0, '2011-04-01', '2011-04-01', 250, true, 315, 610, '2011-04-10', 8, 14);
INSERT INTO incomes VALUES (78, 1, 0, '2011-05-01', '2011-05-01', 250, true, 315, 611, '2011-05-10', 8, 14);
INSERT INTO incomes VALUES (79, 1, 0, '2011-06-01', '2011-06-01', 250, true, 315, 612, '2011-06-10', 8, 14);
INSERT INTO incomes VALUES (82, 1, 0, '2011-03-01', '2011-03-01', 250, true, 663, 905, '2011-03-15', 2, 12);
INSERT INTO incomes VALUES (83, 1, 0, '2011-03-01', '2011-03-01', 250, true, 315, 609, '2011-03-10', 8, 14);
INSERT INTO incomes VALUES (84, 1, 0, '2011-03-01', '2011-03-01', 250, true, 148, 44, '2011-03-10', 9, 11);
INSERT INTO incomes VALUES (85, 1, 0, '2011-03-01', '2011-03-01', 250, true, 680, 391, '2011-03-10', 1, 10);
INSERT INTO incomes VALUES (86, 1, 0, '2011-03-01', '2011-03-01', 250, true, 778, 355, '2011-03-10', 7, 12);
INSERT INTO incomes VALUES (87, 1, 0, '2011-03-01', '2011-03-01', 250, true, 493, 716, '2011-03-10', 28, 20);
INSERT INTO incomes VALUES (88, 1, 0, '2011-03-01', '2011-03-01', 250, true, 582, 138, '2011-03-01', 22, 12);
INSERT INTO incomes VALUES (90, 1, 0, '2011-09-01', '2011-09-01', 250, true, 315, 502, '2011-09-10', 8, 14);
INSERT INTO incomes VALUES (91, 1, 0, '2011-10-01', '2011-10-01', 250, true, 315, 503, '2011-10-10', 8, 14);
INSERT INTO incomes VALUES (94, 1, 0, '2011-04-01', '2011-04-01', 250, true, 628, 696, '2011-04-10', 10, 12);
INSERT INTO incomes VALUES (95, 1, 0, '2011-05-01', '2011-05-01', 250, true, 628, 697, '2011-05-10', 10, 12);
INSERT INTO incomes VALUES (96, 1, 0, '2011-06-01', '2011-06-01', 250, true, 628, 698, '2011-06-10', 10, 12);
INSERT INTO incomes VALUES (97, 1, 0, '2011-07-01', '2011-07-01', 250, true, 628, 699, '2011-07-10', 10, 12);
INSERT INTO incomes VALUES (98, 1, 0, '2011-08-01', '2011-08-01', 250, true, 628, 700, '2011-08-10', 10, 12);
INSERT INTO incomes VALUES (99, 1, 0, '2011-09-01', '2011-09-01', 250, true, 628, 701, '2011-09-10', 10, 12);
INSERT INTO incomes VALUES (100, 1, 0, '2011-10-01', '2011-10-01', 250, true, 628, 702, '2011-10-10', 10, 12);
INSERT INTO incomes VALUES (102, 1, 0, '2011-05-01', '2011-05-01', 250, true, 378, 123, '2011-05-10', 11, 14);
INSERT INTO incomes VALUES (104, 1, 0, '2011-04-01', '2011-04-01', 250, true, 5, 56, '2011-04-15', 12, 11);
INSERT INTO incomes VALUES (105, 1, 0, '2011-05-01', '2011-05-01', 250, true, 5, 57, '2011-05-15', 12, 11);
INSERT INTO incomes VALUES (106, 1, 0, '2011-06-01', '2011-06-01', 250, true, 5, 58, '2011-06-15', 12, 11);
INSERT INTO incomes VALUES (107, 1, 0, '2011-07-01', '2011-07-01', 250, true, 5, 59, '2011-07-15', 12, 11);
INSERT INTO incomes VALUES (108, 1, 0, '2011-08-01', '2011-08-01', 250, true, 5, 60, '2011-08-15', 12, 11);
INSERT INTO incomes VALUES (109, 1, 0, '2011-06-01', '2011-06-01', 250, true, 582, 141, '2011-06-01', 22, 12);
INSERT INTO incomes VALUES (110, 1, 0, '2011-07-01', '2011-07-01', 250, true, 582, 142, '2011-07-01', 22, 12);
INSERT INTO incomes VALUES (111, 1, 0, '2011-08-01', '2011-08-01', 250, true, 582, 143, '2011-08-01', 22, 12);
INSERT INTO incomes VALUES (114, 1, 0, '2011-09-01', '2011-09-01', 250, true, 5, 61, '2011-09-15', 12, 11);
INSERT INTO incomes VALUES (115, 1, 0, '2011-10-01', '2011-10-01', 250, true, 5, 62, '2011-10-15', 12, 11);
INSERT INTO incomes VALUES (118, 1, 0, '2011-04-01', '2011-04-01', 250, true, 45, 11, '2011-04-10', 13, 11);
INSERT INTO incomes VALUES (119, 1, 0, '2011-05-01', '2011-05-01', 250, true, 45, 12, '2011-05-10', 13, 11);
INSERT INTO incomes VALUES (120, 1, 0, '2011-06-01', '2011-06-01', 250, true, 45, 13, '2011-06-10', 13, 11);
INSERT INTO incomes VALUES (121, 1, 0, '2011-07-01', '2011-07-01', 250, true, 45, 14, '2011-07-10', 13, 11);
INSERT INTO incomes VALUES (122, 1, 0, '2011-08-01', '2011-08-01', 250, true, 45, 15, '2011-08-10', 13, 11);
INSERT INTO incomes VALUES (123, 1, 0, '2011-09-01', '2011-09-01', 250, true, 45, 16, '2011-09-10', 13, 11);
INSERT INTO incomes VALUES (127, 1, 0, '2011-04-01', '2011-04-01', 250, true, 582, 159, '2011-04-10', 14, 12);
INSERT INTO incomes VALUES (128, 1, 0, '2011-05-01', '2011-05-01', 250, true, 582, 160, '2011-05-10', 14, 12);
INSERT INTO incomes VALUES (129, 1, 0, '2011-06-01', '2011-06-01', 250, true, 582, 161, '2011-06-10', 14, 12);
INSERT INTO incomes VALUES (130, 1, 0, '2011-07-01', '2011-07-01', 250, true, 582, 162, '2011-07-10', 14, 12);
INSERT INTO incomes VALUES (131, 1, 0, '2011-08-01', '2011-08-01', 250, true, 582, 163, '2011-08-10', 14, 12);
INSERT INTO incomes VALUES (132, 1, 0, '2011-09-01', '2011-09-01', 250, true, 582, 164, '2011-09-10', 14, 12);
INSERT INTO incomes VALUES (133, 1, 0, '2011-10-01', '2011-10-01', 250, true, 582, 165, '2011-10-10', 14, 12);
INSERT INTO incomes VALUES (136, 1, 0, '2011-04-01', '2011-04-01', 250, true, 678, 725, '2011-04-10', 17, 10);
INSERT INTO incomes VALUES (137, 1, 0, '2011-06-01', '2011-06-01', 250, true, 678, 727, '2011-06-10', 17, 10);
INSERT INTO incomes VALUES (138, 1, 0, '2011-07-01', '2011-07-01', 250, true, 678, 728, '2011-07-10', 17, 10);
INSERT INTO incomes VALUES (139, 1, 0, '2011-08-01', '2011-08-01', 250, true, 678, 729, '2011-08-10', 17, 10);
INSERT INTO incomes VALUES (140, 1, 0, '2011-09-01', '2011-09-01', 250, true, 678, 730, '2011-09-10', 17, 10);
INSERT INTO incomes VALUES (144, 1, 0, '2011-04-01', '2011-04-01', 250, true, 16, 542, '2011-04-15', 18, 31);
INSERT INTO incomes VALUES (145, 1, 0, '2011-05-01', '2011-05-01', 250, true, 16, 543, '2011-05-15', 18, 31);
INSERT INTO incomes VALUES (146, 1, 0, '2011-06-01', '2011-06-01', 250, true, 16, 544, '2011-06-15', 18, 31);
INSERT INTO incomes VALUES (147, 1, 0, '2011-07-01', '2011-07-01', 250, true, 16, 545, '2011-07-15', 18, 31);
INSERT INTO incomes VALUES (148, 1, 0, '2011-08-01', '2011-08-01', 250, true, 16, 546, '2011-08-15', 18, 31);
INSERT INTO incomes VALUES (149, 1, 0, '2011-09-01', '2011-09-01', 250, true, 16, 547, '2011-09-15', 18, 31);
INSERT INTO incomes VALUES (150, 1, 0, '2011-10-01', '2011-10-01', 250, true, 16, 548, '2011-10-15', 18, 31);
INSERT INTO incomes VALUES (151, 1, 0, '2011-04-01', '2011-04-01', 250, true, 16, 9909, '2011-04-01', 19, 31);
INSERT INTO incomes VALUES (152, 1, 0, '2011-05-01', '2011-05-01', 250, true, 16, 9910, '2011-05-01', 19, 31);
INSERT INTO incomes VALUES (153, 1, 0, '2011-06-01', '2011-06-01', 250, true, 16, 9911, '2011-06-01', 19, 31);
INSERT INTO incomes VALUES (154, 1, 0, '2011-07-01', '2011-07-01', 250, true, 16, 9912, '2011-07-01', 19, 31);
INSERT INTO incomes VALUES (155, 1, 0, '2011-08-01', '2011-08-01', 250, true, 16, 9913, '2011-08-01', 19, 31);
INSERT INTO incomes VALUES (156, 1, 0, '2011-04-01', '2011-04-01', 250, true, 582, 306, '2011-04-10', 23, 12);
INSERT INTO incomes VALUES (157, 1, 0, '2011-05-01', '2011-05-01', 250, true, 582, 307, '2011-05-10', 23, 12);
INSERT INTO incomes VALUES (158, 1, 0, '2011-04-01', '2011-04-01', 250, true, 345, 193, '2011-04-10', 20, 14);
INSERT INTO incomes VALUES (159, 1, 0, '2011-05-01', '2011-05-01', 250, true, 345, 194, '2011-05-10', 20, 14);
INSERT INTO incomes VALUES (160, 1, 0, '2011-06-01', '2011-06-01', 250, true, 345, 195, '2011-06-10', 20, 14);
INSERT INTO incomes VALUES (161, 1, 0, '2011-04-01', '2011-04-01', 250, true, 680, 75, '2011-04-01', 21, 10);
INSERT INTO incomes VALUES (162, 1, 0, '2011-06-01', '2011-06-01', 250, true, 680, 77, '2011-06-01', 21, 10);
INSERT INTO incomes VALUES (163, 1, 0, '2011-07-01', '2011-07-01', 250, true, 680, 78, '2011-07-01', 21, 10);
INSERT INTO incomes VALUES (164, 1, 0, '2011-08-01', '2011-08-01', 250, true, 680, 79, '2011-08-01', 21, 10);
INSERT INTO incomes VALUES (165, 1, 0, '2011-09-01', '2011-09-01', 250, true, 680, 80, '2011-09-01', 21, 10);
INSERT INTO incomes VALUES (166, 1, 0, '2011-03-01', '2011-03-01', 250, true, 582, 305, '2011-03-10', 23, 12);
INSERT INTO incomes VALUES (167, 1, 0, '2011-03-01', '2011-03-01', 250, true, 5, 55, '2011-03-15', 12, 11);
INSERT INTO incomes VALUES (168, 1, 0, '2011-03-01', '2011-03-01', 250, true, 582, 158, '2011-03-10', 14, 12);
INSERT INTO incomes VALUES (169, 1, 0, '2011-03-01', '2011-03-01', 250, true, 16, 541, '2011-03-15', 18, 31);
INSERT INTO incomes VALUES (170, 1, 0, '2011-03-01', '2011-03-01', 250, true, 678, 724, '2011-03-10', 17, 10);
INSERT INTO incomes VALUES (171, 1, 0, '2011-03-01', '2011-03-01', 250, true, 680, 72, '2011-03-01', 21, 10);
INSERT INTO incomes VALUES (172, 1, 0, '2011-03-01', '2011-03-01', 250, true, 628, 695, '2011-03-10', 10, 12);
INSERT INTO incomes VALUES (176, 1, 0, '2011-04-01', '2011-04-01', 250, true, 657, 1993, '2011-04-15', 26, 10);
INSERT INTO incomes VALUES (177, 1, 0, '2011-06-01', '2011-06-01', 250, true, 582, 308, '2011-06-10', 23, 12);
INSERT INTO incomes VALUES (173, 1, 0, '2011-10-01', '2011-10-01', 250, true, 680, 65, '2011-10-01', 21, 10);
INSERT INTO incomes VALUES (141, 1, 0, '2011-10-01', '2011-10-01', 250, true, 678, 782, '2011-10-10', 17, 10);
INSERT INTO incomes VALUES (178, 1, 0, '2011-07-01', '2011-07-01', 250, true, 582, 309, '2011-07-10', 23, 12);
INSERT INTO incomes VALUES (179, 1, 0, '2011-08-01', '2011-08-01', 250, true, 582, 310, '2011-08-10', 23, 12);
INSERT INTO incomes VALUES (180, 1, 0, '2011-09-01', '2011-09-01', 250, true, 582, 311, '2011-09-10', 23, 12);
INSERT INTO incomes VALUES (181, 1, 0, '2011-10-01', '2011-10-01', 250, true, 582, 312, '2011-10-10', 23, 12);
INSERT INTO incomes VALUES (184, 1, 0, '2011-05-01', '2011-05-01', 250, true, 657, 1994, '2011-05-15', 26, 10);
INSERT INTO incomes VALUES (185, 1, 0, '2011-06-01', '2011-06-01', 250, true, 657, 1995, '2011-06-15', 26, 10);
INSERT INTO incomes VALUES (186, 1, 0, '2011-07-01', '2011-07-01', 250, true, 657, 1996, '2011-07-15', 26, 10);
INSERT INTO incomes VALUES (187, 1, 0, '2011-08-01', '2011-08-01', 250, true, 657, 1997, '2011-08-15', 26, 10);
INSERT INTO incomes VALUES (188, 1, 0, '2011-05-01', '2011-05-01', 250, true, 582, 141, '2011-05-01', 22, 12);
INSERT INTO incomes VALUES (189, 1, 0, '2011-05-01', '2011-05-01', 250, true, 678, 777, '2011-05-10', 17, 10);
INSERT INTO incomes VALUES (190, 1, 0, '2011-09-01', '2011-09-01', 250, true, 657, 1998, '2011-09-15', 26, 10);
INSERT INTO incomes VALUES (191, 1, 0, '2011-10-01', '2011-10-01', 250, true, 657, 1999, '2011-10-15', 26, 10);
INSERT INTO incomes VALUES (194, 1, 0, '2011-04-01', '2011-04-01', 250, true, 128, 80, '2011-04-05', 29, 31);
INSERT INTO incomes VALUES (195, 1, 0, '2011-05-01', '2011-05-01', 250, true, 128, 81, '2011-05-05', 29, 31);
INSERT INTO incomes VALUES (196, 1, 0, '2011-06-01', '2011-06-01', 250, true, 128, 82, '2011-06-05', 29, 31);
INSERT INTO incomes VALUES (197, 1, 0, '2011-07-01', '2011-07-01', 250, true, 128, 83, '2011-07-05', 29, 31);
INSERT INTO incomes VALUES (198, 1, 0, '2011-08-01', '2011-08-01', 250, true, 128, 84, '2011-08-05', 29, 31);
INSERT INTO incomes VALUES (199, 1, 0, '2011-09-01', '2011-09-01', 250, true, 128, 85, '2011-09-05', 29, 31);
INSERT INTO incomes VALUES (200, 1, 0, '2011-10-01', '2011-10-01', 250, true, 128, 86, '2011-10-05', 29, 31);
INSERT INTO incomes VALUES (203, 1, 0, '2011-04-01', '2011-04-01', 250, true, 345, 955, '2011-04-15', 30, 14);
INSERT INTO incomes VALUES (204, 1, 0, '2011-05-01', '2011-05-01', 250, true, 345, 956, '2011-05-15', 30, 14);
INSERT INTO incomes VALUES (205, 1, 0, '2011-06-01', '2011-06-01', 250, true, 345, 957, '2011-06-15', 30, 14);
INSERT INTO incomes VALUES (206, 1, 0, '2011-07-01', '2011-07-01', 250, true, 345, 958, '2011-07-15', 30, 14);
INSERT INTO incomes VALUES (207, 1, 0, '2011-08-01', '2011-08-01', 250, true, 345, 959, '2011-08-15', 30, 14);
INSERT INTO incomes VALUES (208, 1, 0, '2011-09-01', '2011-09-01', 250, true, 345, 960, '2011-09-15', 30, 14);
INSERT INTO incomes VALUES (209, 1, 0, '2011-10-01', '2011-10-01', 250, true, 345, 961, '2011-10-15', 30, 14);
INSERT INTO incomes VALUES (219, 1, 0, '2010-11-01', '2010-11-01', 250, true, 657, 1816, '2011-01-10', 26, 10);
INSERT INTO incomes VALUES (220, 1, 0, '2010-12-01', '2010-12-01', 250, true, 657, 1817, '2011-02-10', 26, 10);
INSERT INTO incomes VALUES (223, 1, 0, '2010-12-01', '2010-12-01', 312.5, true, 164, 497, '2011-02-14', 15, 46);
INSERT INTO incomes VALUES (225, 1, 0, '2011-02-01', '2011-02-01', 250, true, 663, 904, '2011-02-15', 2, 12);
INSERT INTO incomes VALUES (226, 1, 0, '2011-02-01', '2011-02-01', 250, true, 778, 353, '2011-02-10', 7, 12);
INSERT INTO incomes VALUES (227, 1, 0, '2011-02-01', '2011-02-01', 250, true, 315, 608, '2011-02-10', 8, 14);
INSERT INTO incomes VALUES (228, 1, 0, '2011-02-01', '2011-02-01', 250, true, 628, 694, '2011-02-10', 10, 12);
INSERT INTO incomes VALUES (229, 1, 0, '2011-02-01', '2011-02-01', 250, true, 5, 54, '2011-02-15', 12, 11);
INSERT INTO incomes VALUES (230, 1, 0, '2010-02-01', '2010-02-01', 250, true, 680, 88, '2011-01-01', 21, 10);
INSERT INTO incomes VALUES (231, 1, 0, '2011-02-01', '2011-02-01', 250, true, 16, 9907, '2011-02-01', 19, 31);
INSERT INTO incomes VALUES (232, 1, 0, '2011-02-01', '2011-02-01', 250, true, 582, 304, '2011-02-10', 23, 12);
INSERT INTO incomes VALUES (233, 1, 0, '2011-02-01', '2011-02-01', 250, true, 345, 191, '2011-02-10', 20, 14);
INSERT INTO incomes VALUES (234, 1, 0, '2011-02-01', '2011-02-01', 250, true, 680, 73, '2011-02-01', 21, 10);
INSERT INTO incomes VALUES (235, 1, 0, '2011-02-01', '2011-02-01', 250, true, 116, 651, '2011-02-10', 24, 4);
INSERT INTO incomes VALUES (236, 1, 0, '2011-02-01', '2011-02-01', 250, true, 657, 1991, '2011-02-15', 26, 10);
INSERT INTO incomes VALUES (237, 1, 0, '2011-02-01', '2011-02-01', 250, true, 680, 390, '2011-02-10', 1, 10);
INSERT INTO incomes VALUES (238, 1, 0, '2011-02-01', '2011-02-01', 250, true, 493, 715, '2011-02-10', 28, 20);
INSERT INTO incomes VALUES (239, 1, 0, '2011-02-01', '2011-02-01', 250, true, 378, 120, '2011-02-10', 11, 14);
INSERT INTO incomes VALUES (241, 1, 0, '2011-02-01', '2011-02-01', 250, true, 148, 43, '2011-02-10', 9, 11);
INSERT INTO incomes VALUES (242, 1, 0, '2011-02-01', '2011-02-01', 250, true, 582, 137, '2011-02-01', 22, 12);
INSERT INTO incomes VALUES (243, 1, 0, '2011-02-01', '2011-02-01', 250, true, 494, 29, '2011-02-10', 5, 14);
INSERT INTO incomes VALUES (244, 1, 0, '2011-02-01', '2011-02-01', 250, true, 45, 9, '2011-02-10', 13, 11);
INSERT INTO incomes VALUES (245, 1, 0, '2011-02-01', '2011-02-01', 250, true, 582, 157, '2011-02-10', 14, 12);
INSERT INTO incomes VALUES (246, 1, 0, '2011-02-01', '2011-02-01', 250, true, 678, 723, '2011-02-10', 17, 10);
INSERT INTO incomes VALUES (247, 1, 0, '2011-02-01', '2011-02-01', 250, true, 16, 540, '2011-02-15', 18, 31);
INSERT INTO incomes VALUES (248, 1, 0, '2011-02-01', '2011-02-01', 250, true, 128, 78, '2011-02-05', 29, 31);
INSERT INTO incomes VALUES (249, 1, 0, '2011-02-01', '2011-02-01', 250, true, 345, 953, '2011-02-15', 30, 14);
INSERT INTO incomes VALUES (250, 1, 0, '2011-12-01', '2011-12-01', 250, true, 345, 952, '2011-01-15', 30, 14);
INSERT INTO incomes VALUES (251, 1, 0, '2011-03-01', '2011-03-01', 250, true, 494, 30, '2011-03-10', 5, 14);
INSERT INTO incomes VALUES (252, 1, 0, '2011-03-01', '2011-03-01', 250, true, 45, 10, '2011-03-10', 13, 11);
INSERT INTO incomes VALUES (253, 1, 0, '2011-03-01', '2011-03-01', 250, true, 16, 9908, '2011-03-01', 19, 31);
INSERT INTO incomes VALUES (254, 1, 0, '2011-03-01', '2011-03-01', 250, true, 345, 192, '2011-03-10', 20, 14);
INSERT INTO incomes VALUES (255, 1, 0, '2011-03-01', '2011-03-01', 250, true, 345, 954, '2011-03-15', 30, 14);
INSERT INTO incomes VALUES (256, 1, 0, '2011-03-01', '2011-03-01', 250, true, 128, 79, '2011-03-05', 29, 31);
INSERT INTO incomes VALUES (257, 1, 0, '2011-03-01', '2011-03-01', 250, true, 657, 1992, '2011-03-15', 26, 10);
INSERT INTO incomes VALUES (258, 1, 0, '2011-03-01', '2011-03-01', 250, true, 378, 121, '2011-03-10', 11, 14);
INSERT INTO incomes VALUES (4, 1, 0, '2011-06-01', '2011-07-01', 500, true, 123, 395, '2011-05-07', 15, 4);
INSERT INTO incomes VALUES (5, 1, 0, '2011-08-01', '2011-09-01', 500, true, 123, 397, '2011-07-07', 15, 4);
INSERT INTO incomes VALUES (6, 1, 0, '2011-10-01', '2011-11-01', 500, true, 123, 398, '2011-09-07', 15, 4);
INSERT INTO incomes VALUES (89, 1, 0, '2011-04-01', '2011-05-01', 500, true, 123, 394, '2011-03-07', 15, 4);
INSERT INTO incomes VALUES (221, 1, 0, '2011-02-01', '2011-12-01', 2750, true, 600, 31, '2011-02-15', 27, 12);
INSERT INTO incomes VALUES (214, 1, 0, '2011-05-01', '2011-06-01', 500, true, 85, 7, '2011-05-11', 16, 11);
INSERT INTO incomes VALUES (215, 1, 0, '2011-07-01', '2011-08-01', 500, true, 85, 8, '2011-07-11', 16, 11);
INSERT INTO incomes VALUES (216, 1, 0, '2011-09-01', '2011-10-01', 500, true, 85, 9, '2011-09-11', 16, 11);
INSERT INTO incomes VALUES (222, 1, 0, '2011-02-01', '2011-03-01', 500, true, 123, 393, '2011-01-07', 15, 4);
INSERT INTO incomes VALUES (240, 1, 0, '2011-02-01', '2011-03-01', 500, true, 109, 922, '2011-02-15', 4, 31);
INSERT INTO incomes VALUES (259, 1, 0, '2011-03-01', '2011-04-01', 500, true, 85, 6, '2011-03-11', 16, 11);
INSERT INTO incomes VALUES (113, 1, 0, '2011-05-01', '2011-06-01', 500, true, 116, 653, '2011-06-11', 24, 4);
INSERT INTO incomes VALUES (211, 1, 0, '2011-07-01', '2011-08-01', 500, true, 116, 654, '2011-08-11', 24, 4);
INSERT INTO incomes VALUES (212, 1, 0, '2011-09-01', '2011-10-01', 500, true, 116, 655, '2011-10-11', 24, 4);
INSERT INTO incomes VALUES (260, 1, 0, '2011-08-01', '2011-08-01', 250, true, 378, 826, '2011-08-10', 11, 14);
INSERT INTO incomes VALUES (263, 1, 0, '2011-10-01', '2011-10-01', 250, true, 378, 828, '2011-10-10', 11, 14);
INSERT INTO incomes VALUES (262, 1, 0, '2011-09-01', '2011-09-01', 250, true, 378, 827, '2011-09-10', 11, 14);
INSERT INTO incomes VALUES (81, 1, 0, '2011-07-01', '2011-08-01', 500, true, 315, 501, '2011-08-10', 8, 14);
INSERT INTO incomes VALUES (271, 1, 0, '2011-07-01', '2011-07-01', 250, true, 345, 858, '2011-09-02', 20, 14);
INSERT INTO incomes VALUES (272, 1, 0, '2011-08-01', '2011-08-01', 250, true, 345, 859, '2011-09-28', 20, 14);
INSERT INTO incomes VALUES (273, 1, 0, '2011-09-01', '2011-09-01', 250, true, 345, 860, '2011-10-10', 20, 14);
INSERT INTO incomes VALUES (277, 1, 0, '2011-07-01', '2011-09-01', 750, true, 857, 4591, '2011-09-05', 25, 10);
INSERT INTO incomes VALUES (3, 1, 0, '2011-04-01', '2011-05-01', 500, true, 109, 200, '2011-05-23', 4, 31);
INSERT INTO incomes VALUES (286, 1, 0, '2011-09-01', '2011-11-01', 750, false, 144, 20, '2011-11-14', 19, 11);


--
-- Data for Name: pay_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO pay_codes VALUES (0, 'כללי');


--
-- Data for Name: poll_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO poll_codes VALUES (0, 'החלטת וועד');
INSERT INTO poll_codes VALUES (1, 'משאל רגיל');


--
-- Data for Name: poll_options; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: polls; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: poll_attendents; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: post_tags; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: receipts; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: registries; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: reminders; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: task_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO task_codes VALUES (0, 'משימה פתוחה');
INSERT INTO task_codes VALUES (99, 'משימה סגורה');
INSERT INTO task_codes VALUES (1, 'משימה בפיתוח');


--
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: taxes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--



--
-- Data for Name: ticket_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO ticket_codes VALUES (0, 'תקלה פתוחה');
INSERT INTO ticket_codes VALUES (99, 'תקלה סגורה');
INSERT INTO ticket_codes VALUES (1, 'תקלה בטיפול');
INSERT INTO ticket_codes VALUES (2, 'תקלה מושהית');


--
-- Data for Name: tickets; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO tickets VALUES (1, 1, 1, 0, '2011-10-17', 'Ticket 1', NULL, NULL);
INSERT INTO tickets VALUES (3, 1, 1, 0, '2011-10-15', 'Ticket 3', NULL, NULL);
INSERT INTO tickets VALUES (5, 1, 6, 0, '2011-10-18', 'Ticket 5', NULL, NULL);
INSERT INTO tickets VALUES (2, 1, 1, 99, '2011-10-16', 'Ticket 2', NULL, NULL);
INSERT INTO tickets VALUES (4, 1, 27, 0, '2011-10-20', 'תאורת חדר מדרגות בשבת', '2011-10-26', NULL);


--
-- Data for Name: ticket_history; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO ticket_history VALUES (1, 1, 1, 1, '2011-10-18', 'tick 1', '');
INSERT INTO ticket_history VALUES (3, 1, 1, 5, '2011-10-17', 'tick 2', '');
INSERT INTO ticket_history VALUES (4, 1, 1, 10, '2011-10-17', 'tick 3', '');
INSERT INTO ticket_history VALUES (5, 2, 1, 1, '2011-10-17', 'tick 5', '');
INSERT INTO ticket_history VALUES (6, 2, 1, 10, '2011-10-16', 'tick 6', '');


--
-- Data for Name: todo; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO todo VALUES (3, 'אפשרות מחיקה', 0, '0', 'לאפשר למחוק רשומות', 1);
INSERT INTO todo VALUES (4, 'חובות דיירים', 0, '2', '', 1);
INSERT INTO todo VALUES (1, 'תקלות', 0, '4', 'בעת יצירת תקלה חדשה יש להציג רק שדות : כותרת ותיאור (שייכים לטבלת ההסטוריה) 

כאשר נשמור את הרשומה יש להוסיף רשומה לטבלת תקלות  עם קוד הדייר שפתח את התקלה. ולפי הקוד שהתקבל להוסיף להסטוריה', 1);
INSERT INTO todo VALUES (5, 'לוח מודעות', 0, '0', '', 1);
INSERT INTO todo VALUES (6, 'אפשרות להוסיף תקלה', 0, '7', 'לאפשר לדיירים רגילים אפשרות להוסיף תקלות. ולעדכן את מה שהם הוסיפו. אפשרות להוסיף להיסטוריה של התקלה', 2);


--
-- Data for Name: trn_cat_codes; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO trn_cat_codes VALUES (1, 'חשמל');
INSERT INTO trn_cat_codes VALUES (2, 'מים');
INSERT INTO trn_cat_codes VALUES (3, 'תשלומי וועד');
INSERT INTO trn_cat_codes VALUES (4, 'אחזקת מעלית');
INSERT INTO trn_cat_codes VALUES (5, 'אינסטלציה');
INSERT INTO trn_cat_codes VALUES (6, 'כללי');
INSERT INTO trn_cat_codes VALUES (0, 'לא מוגדר');
INSERT INTO trn_cat_codes VALUES (7, 'נקיון בניין');
INSERT INTO trn_cat_codes VALUES (8, 'וועד מרכזי');
INSERT INTO trn_cat_codes VALUES (9, 'גינון');


--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: mainvaadbait_il_com
--

INSERT INTO transactions VALUES (443, 1, 2, 2, '2011-08-27', 315, 1, '102', 'בניין 11 - ריצוף מעלית', 4);
INSERT INTO transactions VALUES (369, 1, 1, 1, '2011-08-25', 2000, 1, '', 'משיכת מזומן', 6);
INSERT INTO transactions VALUES (398, 1, 1, 1, '2011-09-05', 4000, 1, '', 'משיכת מזומן', 6);
INSERT INTO transactions VALUES (400, 1, 1, 1, '2011-01-20', 5000, 1, '1', 'משיכת מזומן', 6);
INSERT INTO transactions VALUES (418, 1, 1, 1, '2011-05-16', 1000, 1, '19', 'משיכת מזומן', 6);
INSERT INTO transactions VALUES (394, 1, 2, 2, '2011-08-25', 1100, -1, '', 'מרצפות (עם בנין 11)', 4);
INSERT INTO transactions VALUES (407, 1, 2, 2, '2011-06-18', 1212, -1, '24', 'מרצפות למעלית', 4);
INSERT INTO transactions VALUES (374, 1, 1, 2, '2011-09-08', 1000, -1, '13', 'ריצוף מעלית - עבודה', 4);
INSERT INTO transactions VALUES (464, 1, 1, 1, '2011-09-08', 1000, -1, '', 'תיקון קיר חיצוני', 6);
INSERT INTO transactions VALUES (396, 1, 2, 1, '2011-09-02', 917, -1, '', 'חשמל חניון', 8);
INSERT INTO transactions VALUES (389, 1, 2, 1, '2011-07-27', 3499, -1, '', 'חשמל + גנרטור', 8);
INSERT INTO transactions VALUES (378, 1, 1, 1, '2011-09-22', 127.700000000000003, -1, '', 'הרמת כוסית לשנה החדשה', 6);
INSERT INTO transactions VALUES (373, 1, 1, 1, '2011-01-11', 464, -1, '2440', 'תיקון אינטרקום', 6);
INSERT INTO transactions VALUES (375, 1, 1, 1, '2011-06-09', 44.5, -1, '8636', 'שיכפול מפתחות', 6);
INSERT INTO transactions VALUES (376, 1, 2, 1, '2011-08-25', 2000, -1, '', 'משיכת מזומן', 6);
INSERT INTO transactions VALUES (377, 1, 1, 3, '2011-02-15', 1900, -1, '', 'תיקרה אקוסטית', 6);
INSERT INTO transactions VALUES (379, 1, 1, 1, '2011-03-10', 200, -1, '', 'לוחות מודעות', 6);
INSERT INTO transactions VALUES (384, 1, 1, 3, '2011-05-27', 182, -1, '540', 'צבע לארגזי כיבוי', 6);
INSERT INTO transactions VALUES (385, 1, 1, 3, '2011-02-25', 80, -1, '5', 'צבע ללובי', 6);
INSERT INTO transactions VALUES (364, 1, 1, 1, '2011-01-02', 446, -1, '1890', 'מברגה + טסטר', 6);
INSERT INTO transactions VALUES (436, 1, 1, 1, '2011-02-25', 7000, 1, '6', 'משיכת מזומן', 6);
INSERT INTO transactions VALUES (444, 1, 2, 0, '2011-06-01', 6750, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (445, 1, 2, 0, '2011-08-01', 5750, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (446, 1, 2, 0, '2010-02-01', 250, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (447, 1, 2, 0, '2011-03-01', 6500, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (448, 1, 2, 0, '2011-05-01', 6500, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (371, 1, 1, 3, '2011-02-25', 1000, -1, '', 'דלת ללובי', 6);
INSERT INTO transactions VALUES (386, 1, 1, 3, '2011-05-27', 5000, -1, '', 'תשלום לשיפוץ לובי', 6);
INSERT INTO transactions VALUES (387, 1, 1, 3, '2011-05-27', 200, -1, '', 'טיפ לפועל', 6);
INSERT INTO transactions VALUES (397, 1, 2, 1, '2011-09-05', 4000, -1, '', 'משיכת מזומן', 6);
INSERT INTO transactions VALUES (402, 1, 2, 1, '2011-02-16', 870, -1, '3', 'ביטוח לבניין', 6);
INSERT INTO transactions VALUES (442, 1, 2, 11, '2011-10-01', 600, -1, '40', 'תיקון סתימה בדירה 6', 5);
INSERT INTO transactions VALUES (383, 1, 1, 11, '2011-08-25', 450, -1, NULL, 'תיקון דירה 3', 5);
INSERT INTO transactions VALUES (367, 1, 1, 11, '2011-08-26', 500, -1, NULL, 'החלפת גלגלון בלובי 1', 5);
INSERT INTO transactions VALUES (366, 1, 1, 11, '2011-08-25', 1000, -1, NULL, 'מקדמה - אל חזור', 5);
INSERT INTO transactions VALUES (365, 1, 1, 11, '2011-08-25', 200, -1, NULL, 'תיקון דירה מס 1', 5);
INSERT INTO transactions VALUES (440, 1, 1, 11, '2011-02-07', 320, -1, NULL, 'תיקון נזילה בדירה 1', 5);
INSERT INTO transactions VALUES (399, 1, 2, 11, '2011-09-26', 500, -1, '39', 'סתימה בבנין', 5);
INSERT INTO transactions VALUES (432, 1, 1, 11, '2011-05-24', 200, -1, NULL, 'תיקון נזילה בחניה', 5);
INSERT INTO transactions VALUES (466, 1, 2, 13, '2011-10-28', 1049.3900000000001, -1, '45', 'תשלום חשמל', 1);
INSERT INTO transactions VALUES (408, 1, 2, 13, '2011-03-21', 984.909999999999968, -1, '9', 'תשלום חשמל - לפני ניתוק', 1);
INSERT INTO transactions VALUES (421, 1, 2, 13, '2011-06-14', 1086.17000000000007, -1, '22', 'חשמל ציבורי', 1);
INSERT INTO transactions VALUES (416, 1, 2, 13, '2011-05-08', 998.019999999999982, -1, '18', 'חשמל ציבורי', 1);
INSERT INTO transactions VALUES (411, 1, 2, 13, '2011-04-07', 2619, -1, '12', 'חשמל ציבורי', 1);
INSERT INTO transactions VALUES (467, 1, 2, 14, '2011-11-01', 2000, -1, '47', 'נקוי הבניין', 7);
INSERT INTO transactions VALUES (392, 1, 2, 15, '2011-08-25', 900, -1, '33', 'שירות למעלית', 4);
INSERT INTO transactions VALUES (388, 1, 2, 15, '2011-07-17', 900, -1, '', 'שירות למעלית', 4);
INSERT INTO transactions VALUES (465, 1, 2, 0, '2011-10-28', 725.509999999999991, 1, NULL, 'העברה מחשבון קודם', 3);
INSERT INTO transactions VALUES (412, 1, 2, 15, '2011-04-10', 1110, -1, '13', 'מעלית - בדיקה ', 4);
INSERT INTO transactions VALUES (415, 1, 2, 15, '2011-05-08', 1800, -1, '17', 'שירות למעלית', 4);
INSERT INTO transactions VALUES (420, 1, 2, 15, '2011-06-14', 900, -1, '21', 'שירות למעלית', 4);
INSERT INTO transactions VALUES (403, 1, 2, 15, '2011-02-22', 2997, -1, '4', 'שירות למעלית ינואר - מרץ', 4);
INSERT INTO transactions VALUES (382, 1, 2, 0, '2011-01-16', 20000, 1, 'העברה מחשבון קודם', 'יתרת פתיחה', 3);
INSERT INTO transactions VALUES (404, 1, 2, 0, '2011-01-18', 250, -1, '5', 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (423, 1, 1, 0, '2011-02-01', 250, -1, NULL, 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (424, 1, 1, 0, '2011-03-01', 250, -1, NULL, 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (425, 1, 1, 0, '2011-04-01', 250, -1, NULL, 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (426, 1, 1, 0, '2011-05-01', 250, -1, NULL, 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (427, 1, 1, 0, '2011-06-01', 250, -1, NULL, 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (428, 1, 1, 0, '2011-07-01', 250, -1, NULL, 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (429, 1, 1, 0, '2011-08-01', 250, -1, NULL, 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (430, 1, 1, 0, '2011-09-01', 250, -1, NULL, 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (431, 1, 1, 0, '2011-10-01', 250, -1, NULL, 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (372, 1, 2, 16, '2011-06-17', 1450, -1, '23', 'גינון + מחשב לגינה', 9);
INSERT INTO transactions VALUES (380, 1, 1, 16, '2011-01-21', 142, -1, '45799', 'ברזים לגינה', 9);
INSERT INTO transactions VALUES (381, 1, 1, 16, '2011-01-21', 39, -1, '45820', 'ברזים לגינה', 9);
INSERT INTO transactions VALUES (391, 1, 2, 16, '2011-08-16', 1250, -1, NULL, 'גינה עם בניין 3', 9);
INSERT INTO transactions VALUES (361, 1, 1, 16, '2011-04-22', 600, -1, '744', 'ארגז גינה+דלתות', 9);
INSERT INTO transactions VALUES (363, 1, 2, 16, '2011-04-22', 500, -1, '744', 'ארגז גינה+דלתות', 9);
INSERT INTO transactions VALUES (362, 1, 2, 16, '2011-04-22', 500, -1, '744', 'ארגז גינה+דלתות', 9);
INSERT INTO transactions VALUES (370, 1, 1, 1, '2011-04-05', 200, -1, '0771', 'תיקון תריסים חדר כושר', 6);
INSERT INTO transactions VALUES (406, 1, 2, 3, '2011-03-16', 6563, -1, '8', 'ריצוף ללובי', 6);
INSERT INTO transactions VALUES (409, 1, 2, 3, '2011-04-02', 179, -1, '10', 'שלטים לבניין', 6);
INSERT INTO transactions VALUES (413, 1, 2, 1, '2011-04-10', 300, -1, '14', 'תיקון דלת כניסה', 6);
INSERT INTO transactions VALUES (417, 1, 2, 1, '2011-05-16', 1000, -1, '19', 'משיכת מזומן', 6);
INSERT INTO transactions VALUES (433, 1, 1, 1, '2011-01-21', 117, -1, '45801', 'לחצנים למדרגות', 6);
INSERT INTO transactions VALUES (434, 1, 2, 1, '2011-01-20', 5000, -1, '1', 'משיכת מזומן', 6);
INSERT INTO transactions VALUES (435, 1, 1, 1, '2011-03-21', 77.5, -1, '', 'צינור גמיש', 6);
INSERT INTO transactions VALUES (438, 1, 2, 1, '2011-02-25', 7000, -1, '6', 'משיכת מזומן', 6);
INSERT INTO transactions VALUES (439, 1, 1, 1, '2011-01-05', 230, -1, '', 'מנורות', 6);
INSERT INTO transactions VALUES (441, 1, 1, 3, '2011-02-25', 1700, -1, '', 'מקדמה לשיפוץ', 6);
INSERT INTO transactions VALUES (454, 1, 1, 3, '2011-02-23', 340, -1, '18318', 'מנעול מותאם ללובי -1', 6);
INSERT INTO transactions VALUES (449, 1, 2, 0, '2011-04-01', 6500, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (450, 1, 2, 0, '2011-02-01', 9500, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (451, 1, 2, 0, '2011-10-01', 5750, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (452, 1, 2, 0, '2011-09-01', 6250, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (453, 1, 2, 0, '2011-07-01', 7500, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (455, 1, 1, 0, '2011-02-01', 500, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (456, 1, 1, 0, '2010-10-01', 250, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (457, 1, 1, 0, '2011-03-01', 250, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (458, 1, 1, 0, '2011-05-01', 250, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (460, 1, 1, 0, '2010-08-01', 250, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (461, 1, 1, 0, '2011-01-01', 250, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (462, 1, 1, 0, '2011-04-01', 250, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (463, 1, 1, 0, '2010-09-01', 250, 1, NULL, NULL, 3);
INSERT INTO transactions VALUES (459, 1, 1, 0, '2011-06-01', 250, 1, '', '', 3);
INSERT INTO transactions VALUES (471, 1, 2, 11, '2011-11-04', 900, -1, '77', 'פתיחת סתימה דירה 6', 5);
INSERT INTO transactions VALUES (470, 1, 2, 11, '2011-11-02', 986, -1, '76', 'פתיחת סתימה דירה 6', 5);
INSERT INTO transactions VALUES (368, 1, 1, 11, '2011-09-06', 1300, -1, NULL, 'אל חזור', 5);
INSERT INTO transactions VALUES (437, 1, 1, 11, '2011-02-07', 200, -1, NULL, 'בדיקת נזילה וצנרת בחניות', 5);
INSERT INTO transactions VALUES (393, 1, 2, 13, '2011-08-25', 1045, -1, NULL, 'תשלום חשמל', 1);
INSERT INTO transactions VALUES (468, 1, 2, 14, '2011-10-05', 2000, -1, '42', 'מנקה לבניין', 7);
INSERT INTO transactions VALUES (401, 1, 2, 14, '2011-02-04', 2000, -1, '2', 'מנקה לבניין', 7);
INSERT INTO transactions VALUES (405, 1, 2, 14, '2011-03-04', 2000, -1, '7', 'מנקה לבניין', 7);
INSERT INTO transactions VALUES (410, 1, 2, 14, '2011-04-07', 2000, -1, '11', 'מנקה לבניין', 7);
INSERT INTO transactions VALUES (414, 1, 2, 14, '2011-05-02', 2200, -1, '16', 'מנקה + שי לחג', 7);
INSERT INTO transactions VALUES (419, 1, 2, 14, '2011-06-01', 2000, -1, '20', 'מנקה לבניין', 7);
INSERT INTO transactions VALUES (422, 1, 2, 14, '2011-07-08', 2000, -1, '25', 'מנקה לבניין', 7);
INSERT INTO transactions VALUES (395, 1, 2, 14, '2011-09-02', 2000, -1, '', 'מנקה לבניין', 7);
INSERT INTO transactions VALUES (390, 1, 2, 14, '2011-08-03', 2000, -1, '', 'מנקה לבניין', 7);
INSERT INTO transactions VALUES (472, 1, 2, 1, '2011-11-01', 406, -1, '50', 'הוצאת מכתב התראה למר סספורטס', 6);
INSERT INTO transactions VALUES (473, 1, 2, 1, '2011-11-01', 250, -1, '49', 'תשלום לוועד', 3);
INSERT INTO transactions VALUES (474, 1, 2, 11, '2011-11-06', 850, -1, '80', 'סתימה בדירה 6', 5);
INSERT INTO transactions VALUES (475, 1, 2, 0, '2011-11-18', 6812.5, 1, 'תקבולים מחודש נובמבר', 'תקבולים מחודש נובמבר', 3);
INSERT INTO transactions VALUES (476, 1, 2, 15, '2011-12-01', 2000, -1, '81', 'שירות למעלית', 4);
INSERT INTO transactions VALUES (478, 1, 2, 1, '2011-12-01', 172, -1, '82', 'כיבוי שריפה בחדר אשפה', 6);
INSERT INTO transactions VALUES (477, 1, 2, 14, '2011-12-01', 2000, -1, '83', 'מנקה לבניין', 7);
INSERT INTO transactions VALUES (479, 1, 2, 13, '2011-12-02', 150, -1, '84', 'תיקון חשמל בגג - תאורה לא פעלה', 1);


--
-- PostgreSQL database dump complete
--

