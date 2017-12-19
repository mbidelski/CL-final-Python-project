

--
-- Data for Name: ecommerce_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ecommerce_category (id, category_name, slug) FROM stdin;
1	Wibratory	wibratory
2	Strapony	strapony
9	Kulki dla gimpa	kulki-dla-gimpa
10	Żele i lubrykanty	lubrykanty
8	Filmy	filmy
\.


--
-- Name: ecommerce_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ecommerce_category_id_seq', 16, true);


--
-- Data for Name: ecommerce_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ecommerce_product (id, name, description, price, vat_rate, stock, image) FROM stdin;
3	Damska szpada	\N	250	1	2	\N
8	Double penetration fun time	-	269	1	3	\N
4	Śliska gadzina	-	15	1	5	\N
12	Poke-a-hot-azz	Film przygodowo-podróżniczy rozgrywający się Ameryce Północnej czasu pierwszych kolonistów	39.990000000000002	1	2	\N
7	Czarny smagacz	-	199	1	10	\N
24	Kulka gimpa - czerwona		\N	1	\N	\N
25	Czarna, lateks	Mroczna kulka dla gimpa - produkt wysokiej jakości, z najlepszego gatunkowo lateksu. Twój gimp dusząc się będzie płakał łzy radości!	89	1	50	\N
5	Człowiek o żelaznej lasce	Wzruszający dramat obyczajowy	49	1	3	
\.


--
-- Data for Name: ecommerce_product_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ecommerce_product_categories (id, product_id, category_id) FROM stdin;
2	3	2
3	3	1
8	5	8
9	7	1
10	8	1
12	4	10
15	12	8
30	24	9
31	25	9
\.


