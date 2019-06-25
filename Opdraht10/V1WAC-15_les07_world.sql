--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3
-- Dumped by pg_dump version 10.3

-- Started on 2018-04-14 22:37:53

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 16609)
-- Name: country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.country (
    code character varying(2) DEFAULT ''::character varying NOT NULL,
    iso3 character varying(3) DEFAULT ''::character varying NOT NULL,
    name character varying(52) DEFAULT ''::character varying NOT NULL,
    continent character varying(20) DEFAULT ''::character varying NOT NULL,
    region character varying(26) DEFAULT ''::character varying NOT NULL,
    surfacearea numeric(10,2) DEFAULT 0.00 NOT NULL,
    indepyear integer,
    population integer DEFAULT 0 NOT NULL,
    lifeexpectancy numeric(3,1) DEFAULT NULL::numeric,
    gnp numeric(10,2) DEFAULT NULL::numeric,
    gnpold numeric(10,2) DEFAULT NULL::numeric,
    localname character varying(45) DEFAULT ''::character varying NOT NULL,
    governmentform character varying(45) DEFAULT ''::character varying NOT NULL,
    headofstate character varying(60) DEFAULT NULL::character varying,
    latitude numeric(10,2),
    longitude numeric(10,2),
    capital character varying NOT NULL
);


ALTER TABLE public.country OWNER TO postgres;

--
-- TOC entry 2805 (class 0 OID 16609)
-- Dependencies: 196
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.country VALUES ('AF', 'AFG', 'Afghanistan', 'Asia', 'Southern and Central Asia', 652090.00, 1919, 22720000, 45.9, 5976.00, NULL, 'Afganistan/Afqanestan', 'Islamic Emirate', 'Mohammad Omar', 34.53, 69.17, 'Kabul');
INSERT INTO public.country VALUES ('AD', 'AND', 'Andorra', 'Europe', 'Southern Europe', 468.00, 1278, 78000, 83.5, 1630.00, NULL, 'Andorra', 'Parliamentary Coprincipality', '', 42.51, 1.52, 'Andorra la Vella');
INSERT INTO public.country VALUES ('AI', 'AIA', 'Anguilla', 'North America', 'Caribbean', 96.00, NULL, 8000, 76.1, 63.20, NULL, 'Anguilla', 'Dependent Territory of the UK', 'Elisabeth II', 18.22, -63.06, 'The Valley');
INSERT INTO public.country VALUES ('AU', 'AUS', 'Australia', 'Oceania', 'Australia and New Zealand', 7741220.00, 1901, 18886000, 79.8, 351182.00, 392911.00, 'Australia', 'Constitutional Monarchy, Federation', 'Elisabeth II', -35.28, 149.13, 'Canberra');
INSERT INTO public.country VALUES ('BS', 'BHS', 'Bahamas', 'North America', 'Caribbean', 13878.00, 1973, 307000, 71.1, 3527.00, 3347.00, 'The Bahamas', 'Constitutional Monarchy', 'Elisabeth II', 25.06, -77.34, 'Nassau');
INSERT INTO public.country VALUES ('BH', 'BHR', 'Bahrain', 'Asia', 'Middle East', 694.00, 1971, 617000, 73.0, 6366.00, 6097.00, 'Al-Bahrayn', 'Monarchy (Emirate)', 'Hamad ibn Isa al-Khalifa', 26.22, 50.58, 'al-Manama');
INSERT INTO public.country VALUES ('BD', 'BGD', 'Bangladesh', 'Asia', 'Southern and Central Asia', 143998.00, 1971, 129155000, 60.2, 32852.00, 31966.00, 'Bangladesh', 'Republic', 'Shahabuddin Ahmad', 23.71, 90.41, 'Dhaka');
INSERT INTO public.country VALUES ('BB', 'BRB', 'Barbados', 'North America', 'Caribbean', 430.00, 1966, 270000, 73.0, 2223.00, 2186.00, 'Barbados', 'Constitutional Monarchy', 'Elisabeth II', 13.10, -59.62, 'Bridgetown');
INSERT INTO public.country VALUES ('BZ', 'BLZ', 'Belize', 'North America', 'Central America', 22696.00, 1981, 241000, 70.9, 630.00, 616.00, 'Belize', 'Constitutional Monarchy', 'Elisabeth II', 17.25, -88.77, 'Belmopan');
INSERT INTO public.country VALUES ('BM', 'BMU', 'Bermuda', 'North America', 'North America', 53.00, NULL, 65000, 76.9, 2328.00, 2190.00, 'Bermuda', 'Dependent Territory of the UK', 'Elisabeth II', 32.29, -64.78, 'Hamilton');
INSERT INTO public.country VALUES ('BT', 'BTN', 'Bhutan', 'Asia', 'Southern and Central Asia', 47000.00, 1910, 2124000, 52.4, 372.00, 383.00, 'Druk-Yul', 'Monarchy', 'Jigme Singye Wangchuk', 27.47, 89.64, 'Thimphu');
INSERT INTO public.country VALUES ('BA', 'BIH', 'Bosnia and Herzegovina', 'Europe', 'Southern Europe', 51197.00, 1992, 3972000, 71.5, 2841.00, NULL, 'Bosna i Hercegovina', 'Federal Republic', 'Ante Jelavic', 43.85, 18.36, 'Sarajevo');
INSERT INTO public.country VALUES ('BW', 'BWA', 'Botswana', 'Africa', 'Southern Africa', 581730.00, 1966, 1622000, 39.3, 4834.00, 4935.00, 'Botswana', 'Republic', 'Festus G. Mogae', -24.65, 25.91, 'Gaborone');
INSERT INTO public.country VALUES ('BN', 'BRN', 'Brunei', 'Asia', 'Southeast Asia', 5765.00, 1984, 328000, 73.6, 11705.00, 12460.00, 'Brunei Darussalam', 'Monarchy (Sultanate)', 'Haji Hassan al-Bolkiah', 4.94, 114.95, 'Bandar Seri Begawan');
INSERT INTO public.country VALUES ('BG', 'BGR', 'Bulgaria', 'Europe', 'Eastern Europe', 110994.00, 1908, 8190900, 70.9, 12178.00, 10169.00, 'Balgarija', 'Republic', 'Petar Stojanov', 42.70, 23.32, 'Sofija');
INSERT INTO public.country VALUES ('BY', 'BLR', 'Belarus', 'Europe', 'Eastern Europe', 207600.00, 1991, 10236000, 68.0, 13714.00, NULL, 'Belarus', 'Republic', 'Alyaksandr Ryhoravich Lukashenka', 53.90, 27.57, 'Minsk');
INSERT INTO public.country VALUES ('AG', 'ATG', 'Antigua and Barbuda', 'North America', 'Caribbean', 442.00, 1981, 68000, 70.5, 612.00, 584.00, 'Antigua and Barbuda', 'Constitutional Monarchy', 'Elisabeth II', 17.12, -61.85, 'Saint John''s');
INSERT INTO public.country VALUES ('BR', 'BRA', 'Brazil', 'South America', 'South America', 8547403.00, 1822, 170115000, 62.9, 776739.00, 804108.00, 'Brasil', 'Federal Republic', 'Fernando Henrique Cardoso', -15.78, -47.93, 'Brasília');
INSERT INTO public.country VALUES ('BI', 'BDI', 'Burundi', 'Africa', 'Eastern Africa', 27834.00, 1962, 6695000, 46.2, 903.00, 982.00, 'Burundi/Uburundi', 'Republic', 'Pierre Buyoya', -3.38, 29.36, 'Bujumbura');
INSERT INTO public.country VALUES ('CA', 'CAN', 'Canada', 'North America', 'North America', 9970610.00, 1867, 31147000, 79.4, 598862.00, 625626.00, 'Canada', 'Constitutional Monarchy, Federation', 'Elisabeth II', 45.41, -75.70, 'Ottawa');
INSERT INTO public.country VALUES ('KY', 'CYM', 'Cayman Islands', 'North America', 'Caribbean', 264.00, NULL, 38000, 78.9, 1263.00, 1186.00, 'Cayman Islands', 'Dependent Territory of the UK', 'Elisabeth II', 19.29, -81.37, 'George Town');
INSERT INTO public.country VALUES ('CL', 'CHL', 'Chile', 'South America', 'South America', 756626.00, 1810, 15211000, 75.7, 72949.00, 75780.00, 'Chile', 'Republic', 'Ricardo Lagos Escobar', -33.46, -70.65, 'Santiago de Chile');
INSERT INTO public.country VALUES ('CN', 'CHN', 'China', 'Asia', 'Eastern Asia', 9572900.00, -1523, 1277558000, 71.4, 982268.00, 917719.00, 'Zhongquo', 'People''sRepublic', 'Jiang Zemin', 39.91, 116.40, 'Peking');
INSERT INTO public.country VALUES ('CX', 'CXR', 'Christmas Island', 'Oceania', 'Australia and New Zealand', 135.00, NULL, 2500, NULL, 0.00, NULL, 'Christmas Island', 'Territory of Australia', 'Elisabeth II', -10.42, 105.68, 'Flying Fish Cove');
INSERT INTO public.country VALUES ('KM', 'COM', 'Comoros', 'Africa', 'Eastern Africa', 1862.00, 1975, 578000, 60.0, 4401.00, 4361.00, 'Komori/Comores', 'Republic', 'Azali Assoumani', -11.70, 43.26, 'Moroni');
INSERT INTO public.country VALUES ('CK', 'COK', 'Cook Islands', 'Oceania', 'Polynesia', 236.00, NULL, 20000, 71.1, 100.00, NULL, 'The Cook Islands', 'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', -21.21, -159.78, 'Avarua');
INSERT INTO public.country VALUES ('HR', 'HRV', 'Croatia', 'Europe', 'Southern Europe', 56538.00, 1991, 4473000, 73.7, 20208.00, 19300.00, 'Hrvatska', 'Republic', 'Å tipe Mesic', 45.81, 15.98, 'Zagreb');
INSERT INTO public.country VALUES ('CU', 'CUB', 'Cuba', 'North America', 'Caribbean', 110861.00, 1902, 11201000, 76.2, 17843.00, 18862.00, 'Cuba', 'Socialistic Republic', 'Fidel Castro Ruz', 23.13, -82.38, 'La Habana');
INSERT INTO public.country VALUES ('DJ', 'DJI', 'Djibouti', 'Africa', 'Eastern Africa', 23200.00, 1977, 638000, 50.8, 382.00, 373.00, 'Djibouti/Jibuti', 'Republic', 'Ismail Omar Guelleh', 11.59, 43.15, 'Djibouti');
INSERT INTO public.country VALUES ('DM', 'DMA', 'Dominica', 'North America', 'Caribbean', 751.00, 1978, 71000, 73.4, 256.00, 243.00, 'Dominica', 'Republic', 'Vernon Shaw', 15.30, -61.39, 'Roseau');
INSERT INTO public.country VALUES ('EC', 'ECU', 'Ecuador', 'South America', 'South America', 283561.00, 1822, 12646000, 71.1, 19770.00, 19769.00, 'Ecuador', 'Republic', 'Gustavo Noboa Bejarano', -0.23, -78.52, 'Quito');
INSERT INTO public.country VALUES ('EG', 'EGY', 'Egypt', 'Africa', 'Northern Africa', 1001449.00, 1922, 68470000, 63.3, 82710.00, 75617.00, 'Misr', 'Republic', 'Hosni Mubarak', 30.06, 31.25, 'Cairo');
INSERT INTO public.country VALUES ('EE', 'EST', 'Estonia', 'Europe', 'Baltic Countries', 45227.00, 1991, 1439200, 69.5, 5328.00, 3371.00, 'Eesti', 'Republic', 'Lennart Meri', 59.44, 24.75, 'Tallinn');
INSERT INTO public.country VALUES ('FK', 'FLK', 'Falkland Islands', 'South America', 'South America', 12173.00, NULL, 2000, NULL, 0.00, NULL, 'Falkland Islands', 'Dependent Territory of the UK', 'Elisabeth II', -51.70, -57.85, 'Stanley');
INSERT INTO public.country VALUES ('FI', 'FIN', 'Finland', 'Europe', 'Nordic Countries', 338145.00, 1917, 5171300, 77.4, 121914.00, 119833.00, 'Suomi', 'Republic', 'Tarja Halonen', 60.17, 24.94, 'Helsinki [Helsingfors]');
INSERT INTO public.country VALUES ('FR', 'FRA', 'France', 'Europe', 'Western Europe', 551500.00, 843, 59225700, 78.8, 1424285.00, 1392448.00, 'France', 'Republic', 'Jacques Chirac', 48.85, 2.35, 'Paris');
INSERT INTO public.country VALUES ('GA', 'GAB', 'Gabon', 'Africa', 'Central Africa', 267668.00, 1960, 1226000, 50.1, 5493.00, 5279.00, 'Le Gabon', 'Republic', 'Omar Bongo', 0.39, 9.45, 'Libreville');
INSERT INTO public.country VALUES ('GM', 'GMB', 'Gambia', 'Africa', 'Western Africa', 11295.00, 1965, 1305000, 53.2, 320.00, 325.00, 'The Gambia', 'Republic', 'Yahya Jammeh', 13.45, -16.58, 'Banjul');
INSERT INTO public.country VALUES ('CG', 'COG', 'Congo', 'Africa', 'Central Africa', 342000.00, 1960, 2943000, 47.4, 2108.00, 2287.00, 'Congo', 'Republic', 'Denis Sassou-Nguesso', -4.24, 15.08, 'Brazzaville');
INSERT INTO public.country VALUES ('FJ', 'FJI', 'Fiji Islands', 'Oceania', 'Melanesia', 18274.00, 1970, 817000, 67.9, 1536.00, 2149.00, 'Fiji Islands', 'Republic', 'Josefa Iloilo', -18.12, 178.42, 'Suva');
INSERT INTO public.country VALUES ('FM', 'FSM', 'Micronesia, Federated States of', 'Oceania', 'Micronesia', 702.00, 1990, 119000, 68.6, 212.00, NULL, 'Micronesia', 'Federal Republic', 'Leo A. Falcam', 6.91, 158.15, 'Palikir');
INSERT INTO public.country VALUES ('KZ', 'KAZ', 'Kazakstan', 'Asia', 'Southern and Central Asia', 2724900.00, 1991, 16223000, 63.2, 24375.00, 23383.00, 'Qazaqstan', 'Republic', 'Nursultan Nazarbajev', 51.14, 71.33, 'Astana');
INSERT INTO public.country VALUES ('LY', 'LBY', 'Libyan Arab Jamahiriya', 'Africa', 'Northern Africa', 1759540.00, 1951, 5605000, 75.5, 44806.00, 40562.00, 'Libiya', 'Socialistic State', 'Muammar al-Qadhafi', 32.88, 13.17, 'Tripoli');
INSERT INTO public.country VALUES ('VG', 'VGB', 'Virgin Islands, British', 'North America', 'Caribbean', 151.00, NULL, 21000, 75.4, 612.00, 573.00, 'British Virgin Islands', 'Dependent Territory of the UK', 'Elisabeth II', 18.42, -64.63, 'Road Town');
INSERT INTO public.country VALUES ('DE', 'DEU', 'Germany', 'Europe', 'Western Europe', 357022.00, 1955, 82164700, 77.4, 2133367.00, 2102826.00, 'Deutschland', 'Federal Republic', 'Johannes Rau', 52.52, 13.41, 'Berlin');
INSERT INTO public.country VALUES ('GH', 'GHA', 'Ghana', 'Africa', 'Western Africa', 238533.00, 1957, 20212000, 57.4, 7137.00, 6884.00, 'Ghana', 'Republic', 'John Kufuor', 5.56, -0.20, 'Accra');
INSERT INTO public.country VALUES ('GI', 'GIB', 'Gibraltar', 'Europe', 'Southern Europe', 6.00, NULL, 25000, 79.0, 258.00, NULL, 'Gibraltar', 'Dependent Territory of the UK', 'Elisabeth II', 36.14, -5.35, 'Gibraltar');
INSERT INTO public.country VALUES ('GP', 'GLP', 'Guadeloupe', 'North America', 'Caribbean', 1705.00, NULL, 456000, 77.0, 3501.00, NULL, 'Guadeloupe', 'Overseas Department of France', 'Jacques Chirac', 16.00, -61.73, 'Basse-Terre');
INSERT INTO public.country VALUES ('GD', 'GRD', 'Grenada', 'North America', 'Caribbean', 344.00, 1974, 94000, 64.5, 318.00, NULL, 'Grenada', 'Constitutional Monarchy', 'Elisabeth II', 12.06, -61.75, 'Saint George''s');
INSERT INTO public.country VALUES ('CM', 'CMR', 'Cameroon', 'Africa', 'Central Africa', 475442.00, 1960, 15085000, 54.8, 9174.00, 8596.00, 'Cameroun/Cameroon', 'Republic', 'Paul Biya', 3.87, 11.52, 'Yaoundé');
INSERT INTO public.country VALUES ('DK', 'DNK', 'Denmark', 'Europe', 'Nordic Countries', 43094.00, 800, 5330000, 76.5, 174099.00, 169264.00, 'Danmark', 'Constitutional Monarchy', 'Margrethe II', 55.68, 12.57, 'København');
INSERT INTO public.country VALUES ('GT', 'GTM', 'Guatemala', 'North America', 'Central America', 108889.00, 1821, 11385000, 66.2, 19008.00, 17797.00, 'Guatemala', 'Republic', 'Alfonso Portillo Cabrera', 14.64, -90.51, 'Ciudad de Guatemala');
INSERT INTO public.country VALUES ('GY', 'GUY', 'Guyana', 'South America', 'South America', 214969.00, 1966, 861000, 64.0, 722.00, 743.00, 'Guyana', 'Republic', 'Bharrat Jagdeo', 6.80, -58.16, 'Georgetown');
INSERT INTO public.country VALUES ('HN', 'HND', 'Honduras', 'North America', 'Central America', 112088.00, 1838, 6485000, 69.9, 5333.00, 4697.00, 'Honduras', 'Republic', 'Carlos Roberto Flores FacussÃ©', 14.08, -87.21, 'Tegucigalpa');
INSERT INTO public.country VALUES ('HK', 'HKG', 'Hong Kong', 'Asia', 'Eastern Asia', 1075.00, NULL, 6782000, 79.5, 166448.00, 173610.00, 'Xianggang/Hong Kong', 'Special Administrative Region of China', 'Jiang Zemin', 22.29, 114.16, 'Victoria');
INSERT INTO public.country VALUES ('IN', 'IND', 'India', 'Asia', 'Southern and Central Asia', 3287263.00, 1947, 1013662000, 62.5, 447114.00, 430572.00, 'Bharat/India', 'Federal Republic', 'Kocheril Raman Narayanan', 28.64, 77.22, 'New Delhi');
INSERT INTO public.country VALUES ('ID', 'IDN', 'Indonesia', 'Asia', 'Southeast Asia', 1904569.00, 1945, 212107000, 68.0, 84982.00, 215002.00, 'Indonesia', 'Republic', 'Abdurrahman Wahid', -6.21, 106.85, 'Jakarta');
INSERT INTO public.country VALUES ('IR', 'IRN', 'Iran', 'Asia', 'Southern and Central Asia', 1648195.00, 1906, 67702000, 69.7, 195746.00, 160151.00, 'Iran', 'Islamic Republic', 'Ali Mohammad Khatami-Ardakani', 35.69, 51.42, 'Teheran');
INSERT INTO public.country VALUES ('IT', 'ITA', 'Italy', 'Europe', 'Southern Europe', 301316.00, 1861, 57680000, 79.0, 1161755.00, 1145372.00, 'Italia', 'Republic', 'Carlo Azeglio Ciampi', 41.89, 12.48, 'Roma');
INSERT INTO public.country VALUES ('JM', 'JAM', 'Jamaica', 'North America', 'Caribbean', 10990.00, 1962, 2583000, 75.2, 6871.00, 6722.00, 'Jamaica', 'Constitutional Monarchy', 'Elisabeth II', 18.00, -76.79, 'Kingston');
INSERT INTO public.country VALUES ('JP', 'JPN', 'Japan', 'Asia', 'Eastern Asia', 377829.00, -660, 126714000, 80.7, 3787042.00, 4192638.00, 'Nihon/Nippon', 'Constitutional Monarchy', 'Akihito', 35.69, 139.69, 'Tokyo');
INSERT INTO public.country VALUES ('JO', 'JOR', 'Jordan', 'Asia', 'Middle East', 88946.00, 1946, 5083000, 77.4, 7526.00, 7051.00, 'Al-Urdunn', 'Constitutional Monarchy', 'Abdullah II', 31.96, 35.95, 'Amman');
INSERT INTO public.country VALUES ('KE', 'KEN', 'Kenya', 'Africa', 'Eastern Africa', 580367.00, 1963, 30080000, 48.0, 9217.00, 10241.00, 'Kenya', 'Republic', 'Daniel arap Moi', -1.28, 36.82, 'Nairobi');
INSERT INTO public.country VALUES ('KI', 'KIR', 'Kiribati', 'Oceania', 'Micronesia', 726.00, 1979, 83000, 59.8, 40.70, NULL, 'Kiribati', 'Republic', 'Teburoro Tito', 1.33, 172.98, 'Bairiki');
INSERT INTO public.country VALUES ('KW', 'KWT', 'Kuwait', 'Asia', 'Middle East', 17818.00, 1961, 1972000, 76.1, 27037.00, 30373.00, 'Al-Kuwayt', 'Constitutional Monarchy (Emirate)', 'Jabir al-Ahmad al-Jabir al-Sabah', 29.37, 47.98, 'Kuwait');
INSERT INTO public.country VALUES ('KG', 'KGZ', 'Kyrgyzstan', 'Asia', 'Southern and Central Asia', 199900.00, 1991, 4699000, 63.4, 1626.00, 1767.00, 'Kyrgyzstan', 'Republic', 'Askar Akajev', 42.87, 74.59, 'Bishkek');
INSERT INTO public.country VALUES ('LA', 'LAO', 'Laos', 'Asia', 'Southeast Asia', 236800.00, 1953, 5433000, 53.1, 1292.00, 1746.00, 'Lao', 'Republic', 'Khamtay Siphandone', 17.97, 102.60, 'Vientiane');
INSERT INTO public.country VALUES ('LV', 'LVA', 'Latvia', 'Europe', 'Baltic Countries', 64589.00, 1991, 2424200, 68.4, 6398.00, 5639.00, 'Latvija', 'Republic', 'Vaira Vike-Freiberga', 56.95, 24.11, 'Riga');
INSERT INTO public.country VALUES ('LS', 'LSO', 'Lesotho', 'Africa', 'Southern Africa', 30355.00, 1966, 2153000, 50.8, 1061.00, 1161.00, 'Lesotho', 'Constitutional Monarchy', 'Letsie III', -29.32, 27.48, 'Maseru');
INSERT INTO public.country VALUES ('LR', 'LBR', 'Liberia', 'Africa', 'Western Africa', 111369.00, 1847, 3154000, 51.0, 2012.00, NULL, 'Liberia', 'Republic', 'Charles Taylor', 6.30, -10.80, 'Monrovia');
INSERT INTO public.country VALUES ('LI', 'LIE', 'Liechtenstein', 'Europe', 'Western Europe', 160.00, 1806, 32300, 78.8, 1119.00, 1084.00, 'Liechtenstein', 'Constitutional Monarchy', 'Hans-Adam II', 47.14, 9.52, 'Vaduz');
INSERT INTO public.country VALUES ('LT', 'LTU', 'Lithuania', 'Europe', 'Baltic Countries', 65301.00, 1991, 3698500, 69.1, 10692.00, 9585.00, 'Lietuva', 'Republic', 'Valdas Adamkus', 54.69, 25.28, 'Vilnius');
INSERT INTO public.country VALUES ('MO', 'MAC', 'Macao', 'Asia', 'Eastern Asia', 18.00, NULL, 473000, 81.6, 5749.00, 5940.00, 'Macau/Aomen', 'Special Administrative Region of China', 'Jiang Zemin', 22.20, 113.55, 'Macao');
INSERT INTO public.country VALUES ('MK', 'MKD', 'Macedonia', 'Europe', 'Southern Europe', 25713.00, 1991, 2024000, 73.8, 1694.00, 1915.00, 'Makedonija', 'Republic', 'Boris Trajkovski', 42.00, 21.43, 'Skopje');
INSERT INTO public.country VALUES ('MG', 'MDG', 'Madagascar', 'Africa', 'Eastern Africa', 587041.00, 1960, 15942000, 55.0, 3750.00, 3545.00, 'Madagasikara/Madagascar', 'Federal Republic', 'Didier Ratsiraka', -18.91, 47.54, 'Antananarivo');
INSERT INTO public.country VALUES ('MW', 'MWI', 'Malawi', 'Africa', 'Eastern Africa', 118484.00, 1964, 10925000, 37.6, 1687.00, 2527.00, 'Malawi', 'Republic', 'Bakili Muluzi', -13.97, 33.79, 'Lilongwe');
INSERT INTO public.country VALUES ('MY', 'MYS', 'Malaysia', 'Asia', 'Southeast Asia', 329758.00, 1957, 22244000, 70.8, 69213.00, 97884.00, 'Malaysia', 'Constitutional Monarchy, Federation', 'Salahuddin Abdul Aziz Shah Alhaj', 3.14, 101.69, 'Kuala Lumpur');
INSERT INTO public.country VALUES ('MV', 'MDV', 'Maldives', 'Asia', 'Southern and Central Asia', 298.00, 1965, 286000, 62.2, 199.00, NULL, 'Dhivehi Raajje/Maldives', 'Republic', 'Maumoon Abdul Gayoom', 4.17, 73.51, 'Male');
INSERT INTO public.country VALUES ('ML', 'MLI', 'Mali', 'Africa', 'Western Africa', 1240192.00, 1960, 11234000, 46.7, 2642.00, 2453.00, 'Mali', 'Republic', 'Alpha Oumar KonarÃ©', 12.65, -8.00, 'Bamako');
INSERT INTO public.country VALUES ('MT', 'MLT', 'Malta', 'Europe', 'Southern Europe', 316.00, 1964, 380200, 77.9, 3512.00, 3338.00, 'Malta', 'Republic', 'Guido de Marco', 35.90, 14.51, 'Valletta');
INSERT INTO public.country VALUES ('MH', 'MHL', 'Marshall Islands', 'Oceania', 'Micronesia', 181.00, 1990, 64000, 65.5, 97.00, NULL, 'Marshall Islands/Majol', 'Republic', 'Kessai Note', 7.09, 171.38, 'Dalap-Uliga-Darrit');
INSERT INTO public.country VALUES ('MQ', 'MTQ', 'Martinique', 'North America', 'Caribbean', 1102.00, NULL, 395000, 78.3, 2731.00, 2559.00, 'Martinique', 'Overseas Department of France', 'Jacques Chirac', 14.61, -61.07, 'Fort-de-France');
INSERT INTO public.country VALUES ('MU', 'MUS', 'Mauritius', 'Africa', 'Eastern Africa', 2040.00, 1968, 1158000, 71.0, 4251.00, 4186.00, 'Mauritius', 'Republic', 'Cassam Uteem', -20.16, 57.50, 'Port-Louis');
INSERT INTO public.country VALUES ('MD', 'MDA', 'Moldova', 'Europe', 'Eastern Europe', 33851.00, 1991, 4380000, 64.5, 1579.00, 1872.00, 'Moldova', 'Republic', 'Vladimir Voronin', 47.01, 28.86, 'Chisinau');
INSERT INTO public.country VALUES ('MC', 'MCO', 'Monaco', 'Europe', 'Western Europe', 1.50, 1861, 34000, 78.8, 776.00, NULL, 'Monaco', 'Constitutional Monarchy', 'Rainier III', 43.73, 7.42, 'Monaco-Ville');
INSERT INTO public.country VALUES ('MN', 'MNG', 'Mongolia', 'Asia', 'Eastern Asia', 1566500.00, 1921, 2662000, 67.3, 1043.00, 933.00, 'Mongol Uls', 'Republic', 'Natsagiin Bagabandi', 47.91, 106.88, 'Ulan Bator');
INSERT INTO public.country VALUES ('MS', 'MSR', 'Montserrat', 'North America', 'Caribbean', 102.00, NULL, 11000, 78.0, 109.00, NULL, 'Montserrat', 'Dependent Territory of the UK', 'Elisabeth II', 16.71, -62.21, 'Plymouth');
INSERT INTO public.country VALUES ('MA', 'MAR', 'Morocco', 'Africa', 'Northern Africa', 446550.00, 1956, 28351000, 69.1, 36124.00, 33514.00, 'Al-Maghrib', 'Constitutional Monarchy', 'Mohammed VI', 34.01, -6.83, 'Rabat');
INSERT INTO public.country VALUES ('MM', 'MMR', 'Myanmar', 'Asia', 'Southeast Asia', 676578.00, 1948, 45611000, 54.9, 180375.00, 171028.00, 'Myanma Pye', 'Republic', 'kenraali Than Shwe', 19.75, 96.13, 'Rangoon (Yangon)');
INSERT INTO public.country VALUES ('NA', 'NAM', 'Namibia', 'Africa', 'Southern Africa', 824292.00, 1990, 1726000, 42.5, 3101.00, 3384.00, 'Namibia', 'Republic', 'Sam Nujoma', -22.56, 17.08, 'Windhoek');
INSERT INTO public.country VALUES ('NR', 'NRU', 'Nauru', 'Oceania', 'Micronesia', 21.00, 1968, 12000, 60.8, 197.00, NULL, 'Naoero/Nauru', 'Republic', 'Bernard Dowiyogo', 166.93, -0.54, 'Yaren');
INSERT INTO public.country VALUES ('NP', 'NPL', 'Nepal', 'Asia', 'Southern and Central Asia', 147181.00, 1769, 23930000, 57.8, 4768.00, 4837.00, 'Nepal', 'Constitutional Monarchy', 'Gyanendra Bir Bikram', 27.70, 85.32, 'Kathmandu');
INSERT INTO public.country VALUES ('NZ', 'NZL', 'New Zealand', 'Oceania', 'Australia and New Zealand', 270534.00, 1907, 3862000, 77.8, 54669.00, 64960.00, 'New Zealand/Aotearoa', 'Constitutional Monarchy', 'Elisabeth II', -41.29, 174.78, 'Wellington');
INSERT INTO public.country VALUES ('NE', 'NER', 'Niger', 'Africa', 'Western Africa', 1267000.00, 1960, 10730000, 41.3, 1706.00, 1580.00, 'Niger', 'Republic', 'Mamadou Tandja', 13.51, 2.11, 'Niamey');
INSERT INTO public.country VALUES ('NG', 'NGA', 'Nigeria', 'Africa', 'Western Africa', 923768.00, 1960, 111506000, 51.6, 65707.00, 58623.00, 'Nigeria', 'Federal Republic', 'Olusegun Obasanjo', 9.07, 7.48, 'Abuja');
INSERT INTO public.country VALUES ('NU', 'NIU', 'Niue', 'Oceania', 'Polynesia', 260.00, NULL, 2000, NULL, 0.00, NULL, 'Niue', 'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', -19.06, -169.92, 'Alofi');
INSERT INTO public.country VALUES ('NF', 'NFK', 'Norfolk Island', 'Oceania', 'Australia and New Zealand', 36.00, NULL, 2000, NULL, 0.00, NULL, 'Norfolk Island', 'Territory of Australia', 'Elisabeth II', -29.05, 167.97, 'Kingston');
INSERT INTO public.country VALUES ('MP', 'MNP', 'Northern Mariana Islands', 'Oceania', 'Micronesia', 464.00, NULL, 78000, 75.5, 0.00, NULL, 'Northern Mariana Islands', 'Commonwealth of the US', 'George W. Bush', 15.21, 145.75, 'Garapan');
INSERT INTO public.country VALUES ('NO', 'NOR', 'Norway', 'Europe', 'Nordic Countries', 323877.00, 1905, 4478500, 78.7, 145895.00, 153370.00, 'Norge', 'Constitutional Monarchy', 'Harald V', 59.91, 10.75, 'Oslo');
INSERT INTO public.country VALUES ('PK', 'PAK', 'Pakistan', 'Asia', 'Southern and Central Asia', 796095.00, 1947, 156483000, 61.1, 61289.00, 58549.00, 'Pakistan', 'Republic', 'Mohammad Rafiq Tarar', 33.72, 73.04, 'Islamabad');
INSERT INTO public.country VALUES ('PW', 'PLW', 'Palau', 'Oceania', 'Micronesia', 459.00, 1994, 19000, 68.6, 105.00, NULL, 'Belau/Palau', 'Republic', 'Kuniwo Nakamura', 7.50, 134.62, 'Koror');
INSERT INTO public.country VALUES ('PG', 'PNG', 'Papua New Guinea', 'Oceania', 'Melanesia', 462840.00, 1975, 4807000, 63.1, 4988.00, 6328.00, 'Papua New Guinea/Papua Niugini', 'Constitutional Monarchy', 'Elisabeth II', -9.44, 147.18, 'Port Moresby');
INSERT INTO public.country VALUES ('PH', 'PHL', 'Philippines', 'Asia', 'Southeast Asia', 300000.00, 1946, 75967000, 67.5, 65107.00, 82239.00, 'Pilipinas', 'Republic', 'Gloria Macapagal-Arroyo', 14.60, 120.98, 'Manila');
INSERT INTO public.country VALUES ('PN', 'PCN', 'Pitcairn', 'Oceania', 'Polynesia', 49.00, NULL, 50, NULL, 0.00, NULL, 'Pitcairn', 'Dependent Territory of the UK', 'Elisabeth II', -25.07, -130.10, 'Adamstown');
INSERT INTO public.country VALUES ('PL', 'POL', 'Poland', 'Europe', 'Eastern Europe', 323250.00, 1918, 38653600, 73.2, 151697.00, 135636.00, 'Polska', 'Republic', 'Aleksander Kwasniewski', 52.23, 21.01, 'Warszawa');
INSERT INTO public.country VALUES ('QA', 'QAT', 'Qatar', 'Asia', 'Middle East', 11000.00, 1971, 599000, 72.4, 9472.00, 8920.00, 'Qatar', 'Monarchy', 'Hamad ibn Khalifa al-Thani', 25.28, 51.52, 'Doha');
INSERT INTO public.country VALUES ('RW', 'RWA', 'Rwanda', 'Africa', 'Eastern Africa', 26338.00, 1962, 7733000, 39.3, 2036.00, 1863.00, 'Rwanda/Urwanda', 'Republic', 'Paul Kagame', -1.95, 30.06, 'Kigali');
INSERT INTO public.country VALUES ('SH', 'SHN', 'Saint Helena', 'Africa', 'Western Africa', 314.00, NULL, 6000, 76.8, 0.00, NULL, 'Saint Helena', 'Dependent Territory of the UK', 'Elisabeth II', -15.94, -5.72, 'Jamestown');
INSERT INTO public.country VALUES ('KN', 'KNA', 'Saint Kitts and Nevis', 'North America', 'Caribbean', 261.00, 1983, 38000, 70.7, 299.00, NULL, 'Saint Kitts and Nevis', 'Constitutional Monarchy', 'Elisabeth II', 17.29, -62.73, 'Basseterre');
INSERT INTO public.country VALUES ('LC', 'LCA', 'Saint Lucia', 'North America', 'Caribbean', 622.00, 1979, 154000, 72.3, 571.00, NULL, 'Saint Lucia', 'Constitutional Monarchy', 'Elisabeth II', 14.00, -61.01, 'Castries');
INSERT INTO public.country VALUES ('VC', 'VCT', 'Saint Vincent and the Grenadines', 'North America', 'Caribbean', 388.00, 1979, 114000, 72.3, 285.00, NULL, 'Saint Vincent and the Grenadines', 'Constitutional Monarchy', 'Elisabeth II', 13.16, -61.22, 'Kingstown');
INSERT INTO public.country VALUES ('WS', 'WSM', 'Samoa', 'Oceania', 'Polynesia', 2831.00, 1962, 180000, 69.2, 141.00, 157.00, 'Samoa', 'Parlementary Monarchy', 'Malietoa Tanumafili II', -13.83, -171.77, 'Apia');
INSERT INTO public.country VALUES ('SM', 'SMR', 'San Marino', 'Europe', 'Southern Europe', 61.00, 885, 27000, 81.1, 510.00, NULL, 'San Marino', 'Republic', NULL, 43.94, 12.45, 'San Marino');
INSERT INTO public.country VALUES ('SL', 'SLE', 'Sierra Leone', 'Africa', 'Western Africa', 71740.00, 1961, 4854000, 45.3, 746.00, 858.00, 'Sierra Leone', 'Republic', 'Ahmed Tejan Kabbah', 8.48, -13.23, 'Freetown');
INSERT INTO public.country VALUES ('SG', 'SGP', 'Singapore', 'Asia', 'Southeast Asia', 618.00, 1965, 3567000, 80.1, 86503.00, 96318.00, 'Singapore/Singapura/Xinjiapo/Singapur', 'Republic', 'Sellapan Rama Nathan', 1.29, 103.85, 'Singapore');
INSERT INTO public.country VALUES ('SK', 'SVK', 'Slovakia', 'Europe', 'Eastern Europe', 49012.00, 1993, 5398700, 73.7, 20594.00, 19452.00, 'Slovensko', 'Republic', 'Rudolf Schuster', 48.15, 17.11, 'Bratislava');
INSERT INTO public.country VALUES ('SI', 'SVN', 'Slovenia', 'Europe', 'Southern Europe', 20256.00, 1991, 1987800, 74.9, 19756.00, 18202.00, 'Slovenija', 'Republic', 'Milan Kucan', 46.05, 14.51, 'Ljubljana');
INSERT INTO public.country VALUES ('SB', 'SLB', 'Solomon Islands', 'Oceania', 'Melanesia', 28896.00, 1978, 444000, 71.3, 182.00, 220.00, 'Solomon Islands', 'Constitutional Monarchy', 'Elisabeth II', -9.43, 159.95, 'Honiara');
INSERT INTO public.country VALUES ('SO', 'SOM', 'Somalia', 'Africa', 'Eastern Africa', 637657.00, 1960, 10097000, 46.2, 935.00, NULL, 'Soomaaliya', 'Republic', 'Abdiqassim Salad Hassan', 2.04, 45.34, 'Mogadishu');
INSERT INTO public.country VALUES ('ZA', 'ZAF', 'South Africa', 'Africa', 'Southern Africa', 1221037.00, 1910, 40377000, 51.1, 116729.00, 129092.00, 'South Africa', 'Republic', 'Thabo Mbeki', -25.74, 28.19, 'Pretoria');
INSERT INTO public.country VALUES ('LK', 'LKA', 'Sri Lanka', 'Asia', 'Southern and Central Asia', 65610.00, 1948, 18827000, 71.8, 15706.00, 15091.00, 'Sri Lanka/Ilankai', 'Republic', 'Chandrika Kumaratunga', 6.93, 79.85, 'Colombo');
INSERT INTO public.country VALUES ('SD', 'SDN', 'Sudan', 'Africa', 'Northern Africa', 2505813.00, 1956, 29490000, 56.6, 10162.00, NULL, 'As-Sudan', 'Islamic Republic', 'Omar Hassan Ahmad al-Bashir', 15.55, 32.53, 'Khartum');
INSERT INTO public.country VALUES ('SR', 'SUR', 'Suriname', 'South America', 'South America', 163265.00, 1975, 417000, 71.4, 870.00, 706.00, 'Suriname', 'Republic', 'Ronald Venetiaan', 5.87, -55.17, 'Paramaribo');
INSERT INTO public.country VALUES ('SJ', 'SJM', 'Svalbard and Jan Mayen', 'Europe', 'Nordic Countries', 62422.00, NULL, 3200, NULL, 0.00, NULL, 'Svalbard og Jan Mayen', 'Dependent Territory of Norway', 'Harald V', 78.22, 15.64, 'Longyearbyen');
INSERT INTO public.country VALUES ('SZ', 'SWZ', 'Swaziland', 'Africa', 'Southern Africa', 17364.00, 1968, 1008000, 40.4, 1206.00, 1312.00, 'kaNgwane', 'Monarchy', 'Mswati III', -26.32, 31.13, 'Mbabane');
INSERT INTO public.country VALUES ('SE', 'SWE', 'Sweden', 'Europe', 'Nordic Countries', 449964.00, 836, 8861400, 79.6, 226492.00, 227757.00, 'Sverige', 'Constitutional Monarchy', 'Carl XVI Gustaf', 59.33, 18.06, 'Stockholm');
INSERT INTO public.country VALUES ('CH', 'CHE', 'Switzerland', 'Europe', 'Western Europe', 41284.00, 1499, 7160400, 79.6, 264478.00, 256092.00, 'Schweiz/Suisse/Svizzera/Svizra', 'Federation', 'Adolf Ogi', 46.95, 7.45, 'Bern');
INSERT INTO public.country VALUES ('SY', 'SYR', 'Syria', 'Asia', 'Middle East', 185180.00, 1941, 16125000, 68.5, 65984.00, 64926.00, 'Suriya', 'Republic', 'Bashar al-Assad', 33.51, 36.29, 'Damascus');
INSERT INTO public.country VALUES ('TZ', 'TZA', 'Tanzania', 'Africa', 'Eastern Africa', 883749.00, 1961, 33517000, 52.3, 8005.00, 7388.00, 'Tanzania', 'Republic', 'Benjamin William Mkapa', -6.17, 35.74, 'Dodoma');
INSERT INTO public.country VALUES ('TH', 'THA', 'Thailand', 'Asia', 'Southeast Asia', 513115.00, 1350, 61399000, 68.6, 116416.00, 153907.00, 'Prathet Thai', 'Constitutional Monarchy', 'Bhumibol Adulyadej', 13.75, 100.50, 'Bangkok');
INSERT INTO public.country VALUES ('TK', 'TKL', 'Tokelau', 'Oceania', 'Polynesia', 12.00, NULL, 2000, NULL, 0.00, NULL, 'Tokelau', 'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', -171.85, -9.20, 'Fakaofo');
INSERT INTO public.country VALUES ('TT', 'TTO', 'Trinidad and Tobago', 'North America', 'Caribbean', 5130.00, 1962, 1295000, 68.0, 6232.00, 5867.00, 'Trinidad and Tobago', 'Republic', 'Arthur N. R. Robinson', 10.67, -61.52, 'Port-of-Spain');
INSERT INTO public.country VALUES ('TN', 'TUN', 'Tunisia', 'Africa', 'Northern Africa', 163610.00, 1956, 9586000, 73.7, 20026.00, 18898.00, 'Tunis/Tunisie', 'Republic', 'Zine al-Abidine Ben Ali', 36.82, 10.17, 'Tunis');
INSERT INTO public.country VALUES ('TC', 'TCA', 'Turks and Caicos Islands', 'North America', 'Caribbean', 430.00, NULL, 17000, 73.3, 96.00, NULL, 'The Turks and Caicos Islands', 'Dependent Territory of the UK', 'Elisabeth II', 21.46, -71.14, 'Cockburn Town');
INSERT INTO public.country VALUES ('TV', 'TUV', 'Tuvalu', 'Oceania', 'Polynesia', 26.00, 1978, 12000, 66.3, 6.00, NULL, 'Tuvalu', 'Constitutional Monarchy', 'Elisabeth II', -8.52, 179.19, 'Funafuti');
INSERT INTO public.country VALUES ('UG', 'UGA', 'Uganda', 'Africa', 'Eastern Africa', 241038.00, 1962, 21778000, 42.9, 6313.00, 6887.00, 'Uganda', 'Republic', 'Yoweri Museveni', 0.32, 32.58, 'Kampala');
INSERT INTO public.country VALUES ('UA', 'UKR', 'Ukraine', 'Europe', 'Eastern Europe', 603700.00, 1991, 50456000, 66.0, 42168.00, 49677.00, 'Ukrajina', 'Republic', 'Leonid KutÅ¡ma', 50.45, 30.52, 'Kyiv');
INSERT INTO public.country VALUES ('GB', 'GBR', 'United Kingdom', 'Europe', 'British Islands', 242900.00, 1066, 59623400, 77.7, 1378330.00, 1296830.00, 'United Kingdom', 'Constitutional Monarchy', 'Elisabeth II', 51.51, -0.13, 'London');
INSERT INTO public.country VALUES ('UZ', 'UZB', 'Uzbekistan', 'Asia', 'Southern and Central Asia', 447400.00, 1991, 24318000, 63.7, 14194.00, 21300.00, 'Uzbekiston', 'Republic', 'Islam Karimov', 41.26, 69.22, 'Toskent');
INSERT INTO public.country VALUES ('VU', 'VUT', 'Vanuatu', 'Oceania', 'Melanesia', 12189.00, 1980, 190000, 60.6, 261.00, 246.00, 'Vanuatu', 'Republic', 'John Bani', -17.73, 168.32, 'Port-Vila');
INSERT INTO public.country VALUES ('YE', 'YEM', 'Yemen', 'Asia', 'Middle East', 527968.00, 1918, 18112000, 59.8, 6041.00, 5729.00, 'Al-Yaman', 'Republic', 'Ali Abdallah Salih', 15.35, 44.21, 'Sanaa');
INSERT INTO public.country VALUES ('ZM', 'ZMB', 'Zambia', 'Africa', 'Eastern Africa', 752618.00, 1964, 9169000, 37.2, 3377.00, 3922.00, 'Zambia', 'Republic', 'Frederick Chiluba', -15.41, 28.29, 'Lusaka');
INSERT INTO public.country VALUES ('RU', 'RUS', 'Russian Federation', 'Europe', 'Eastern Europe', 17075400.00, 1991, 146934000, 67.2, 276608.00, 442989.00, 'Rossija', 'Federal Republic', 'Vladimir Putin', 55.76, 37.62, 'Moscow');
INSERT INTO public.country VALUES ('TO', 'TON', 'Tonga', 'Oceania', 'Polynesia', 650.00, 1970, 99000, 67.9, 146.00, 170.00, 'Tonga', 'Monarchy', 'Taufa''ahau Tupou IV', -21.13, -175.20, 'Nuku''alofa');
INSERT INTO public.country VALUES ('EH', 'ESH', 'Western Sahara', 'Africa', 'Northern Africa', 266000.00, NULL, 293000, 49.8, 60.00, NULL, 'As-Sahrawiya', 'Occupied by Marocco', 'Mohammed Abdel Aziz', 27.16, -13.20, 'El-Aaiún');
INSERT INTO public.country VALUES ('US', 'USA', 'United States', 'North America', 'North America', 9363520.00, 1776, 278357000, 77.1, 8510700.00, 8110900.00, 'United States', 'Federal Republic', 'Donald J. Trump', 38.90, -77.04, 'Washington');
INSERT INTO public.country VALUES ('WF', 'WLF', 'Wallis and Futuna', 'Oceania', 'Polynesia', 200.00, NULL, 15000, NULL, 0.00, NULL, 'Wallis-et-Futuna', 'Nonmetropolitan Territory of France', 'Emanuel Macron', -13.28, -176.17, 'Mata-Utu');
INSERT INTO public.country VALUES ('IO', 'IOT', 'British Indian Ocean Territory', 'Africa', 'Eastern Africa', 78.00, NULL, 0, NULL, 0.00, NULL, 'British Indian Ocean Territory', 'Dependent Territory of the UK', 'Elisabeth II', 72.46, 7.24, '');
INSERT INTO public.country VALUES ('GS', 'SGS', 'South Georgia and the South Sandwich Islands', 'Antarctica', 'Antarctica', 3903.00, NULL, 0, NULL, 0.00, NULL, 'South Georgia and the South Sandwich Islands', 'Dependent Territory of the UK', 'Elisabeth II', -54.28, -36.51, '');
INSERT INTO public.country VALUES ('TW', 'TWN', 'Taiwan', 'Asia', 'Eastern Asia', 36188.00, 1945, 22256000, 76.4, 256254.00, 263451.00, 'Táiwān', 'Republic', 'Chen Shui-bian', 25.05, 121.53, 'Taipei');
INSERT INTO public.country VALUES ('TR', 'TUR', 'Turkey', 'Asia', 'Middle East', 774815.00, 1923, 66591000, 71.0, 210721.00, 189122.00, 'Türkiye', 'Republic', 'Ahmet Necdet Sezer', 39.92, 32.85, 'Ankara');
INSERT INTO public.country VALUES ('TM', 'TKM', 'Turkmenistan', 'Asia', 'Southern and Central Asia', 488100.00, 1991, 4459000, 60.9, 4397.00, 2000.00, 'Türkmenistan', 'Republic', 'Saparmurad Nijazov', 37.95, 58.38, 'Ashgabat');
INSERT INTO public.country VALUES ('TP', 'TMP', 'East Timor', 'Asia', 'Southeast Asia', 14874.00, NULL, 885000, 46.0, 0.00, NULL, 'Timor Timur', 'Administrated by the UN', 'Francisco Guterres', -8.56, 125.57, 'Dili');
INSERT INTO public.country VALUES ('BF', 'BFA', 'Burkina Faso', 'Africa', 'Western Africa', 274000.00, 1960, 11937000, 46.7, 2425.00, 2201.00, 'Burkina Faso', 'Republic', 'Roch Marc Christian Kaboré', 12.37, -1.53, 'Ouagadougou');
INSERT INTO public.country VALUES ('BO', 'BOL', 'Bolivia', 'South America', 'South America', 1098581.00, 1825, 8329000, 63.7, 8571.00, 7967.00, 'Bolivia', 'Republic', 'Evo Morales', -19.03, -65.26, 'La Paz');
INSERT INTO public.country VALUES ('AW', 'ABW', 'Aruba', 'North America', 'Caribbean', 193.00, NULL, 103000, 78.4, 828.00, 793.00, 'Aruba', 'Nonmetropolitan Territory of The Netherlands', 'Willem-Alexander', 12.52, -70.03, 'Oranjestad');
INSERT INTO public.country VALUES ('AL', 'ALB', 'Albania', 'Europe', 'Southern Europe', 28748.00, 1912, 3401200, 71.6, 3205.00, 2500.00, 'Shqipëria', 'Republic', 'Rexhep Mejdani', 41.33, 19.82, 'Tirana');
INSERT INTO public.country VALUES ('AR', 'ARG', 'Argentina', 'South America', 'South America', 2780400.00, 1816, 37032000, 75.1, 340238.00, 323310.00, 'Argentina', 'Federal Republic', 'Mauricio Macri', -34.61, -58.38, 'Buenos Aires');
INSERT INTO public.country VALUES ('HT', 'HTI', 'Haiti', 'North America', 'Caribbean', 27750.00, 1804, 8222000, 49.2, 3459.00, 3107.00, 'Haïti/Ayiti', 'Republic', 'Jean-Bertrand Aristide', 18.54, -72.34, 'Port-au-Prince');
INSERT INTO public.country VALUES ('CZ', 'CZE', 'Czech Republic', 'Europe', 'Eastern Europe', 78866.00, 1993, 10278100, 74.5, 55017.00, 52037.00, 'Česko', 'Republic', 'Miloš Zeman', 50.09, 14.42, 'Praha');
INSERT INTO public.country VALUES ('CY', 'CYP', 'Cyprus', 'Asia', 'Middle East', 9251.00, 1960, 754700, 76.7, 9333.00, 8246.00, 'Kypriakí/Kibris', 'Republic', 'Glafkos Klerides', 35.17, 33.37, 'Nicosia');
INSERT INTO public.country VALUES ('PM', 'SPM', 'Saint Pierre and Miquelon', 'North America', 'North America', 242.00, NULL, 7000, 77.6, 0.00, NULL, 'Saint-Pierre-et-Miquelon', 'Territorial Collectivity of France', 'Emanuel Macron', 46.78, -56.17, 'Saint-Pierre');
INSERT INTO public.country VALUES ('SV', 'SLV', 'El Salvador', 'North America', 'Central America', 21041.00, 1841, 6276000, 69.7, 11863.00, 11203.00, 'El Salvador', 'Republic', 'Salvador Sánchez Cerén', 13.69, -89.19, 'San Salvador');
INSERT INTO public.country VALUES ('PF', 'PYF', 'French Polynesia', 'Oceania', 'Polynesia', 4000.00, NULL, 235000, 74.8, 818.00, 781.00, 'Polynésie française', 'Nonmetropolitan Territory of France', 'Emanuel Macron', -17.53, -149.57, 'Papeete');
INSERT INTO public.country VALUES ('GF', 'GUF', 'French Guiana', 'South America', 'South America', 90000.00, NULL, 181000, 76.1, 681.00, NULL, 'Guyane française', 'Overseas Department of France', 'Jacques Chirac', 4.93, -52.33, 'Cayenne');
INSERT INTO public.country VALUES ('KH', 'KHM', 'Cambodia', 'Asia', 'Southeast Asia', 181035.00, 1953, 11168000, 56.5, 5121.00, 5670.00, 'Kâmpŭchéa', 'Constitutional Monarchy', 'Norodom Sihanouk', 11.56, 104.92, 'Phnom Penh');
INSERT INTO public.country VALUES ('GW', 'GNB', 'Guinea-Bissau', 'Africa', 'Western Africa', 36125.00, 1974, 1213000, 49.0, 293.00, 272.00, 'Guiné-Bissau', 'Republic', 'José Mário Vaz', 11.86, -15.60, 'Bissau');
INSERT INTO public.country VALUES ('GN', 'GIN', 'Guinea', 'Africa', 'Western Africa', 245857.00, 1958, 7430000, 45.6, 2352.00, 2383.00, 'Guinée', 'Republic', 'Lansana ContÃ©', 9.54, -13.68, 'Conakry');
INSERT INTO public.country VALUES ('LB', 'LBN', 'Lebanon', 'Asia', 'Middle East', 10400.00, 1941, 3282000, 71.3, 17121.00, 15129.00, 'Lubnan', 'Republic', 'Michel Aoun', 33.89, 35.49, 'Beirut');
INSERT INTO public.country VALUES ('GL', 'GRL', 'Greenland', 'North America', 'North America', 2166090.00, NULL, 56000, 68.1, 0.00, NULL, 'Kalaallit Nunaat/Grønland', 'Part of Denmark', 'Margrethe II', 64.18, -51.72, 'Nuuk');
INSERT INTO public.country VALUES ('GQ', 'GNQ', 'Equatorial Guinea', 'Africa', 'Central Africa', 28051.00, 1968, 453000, 53.6, 283.00, 542.00, 'Guinea Ecuatorial', 'Republic', 'Alpha Condé', 3.75, 8.78, 'Malabo');
INSERT INTO public.country VALUES ('GR', 'GRC', 'Greece', 'Europe', 'Southern Europe', 131626.00, 1830, 10545700, 78.4, 120724.00, 119946.00, 'Ελλάδα', 'Republic', 'Kostis Stefanopoulos', 37.98, 23.72, 'Athenai');
INSERT INTO public.country VALUES ('AE', 'ARE', 'United Arab Emirates', 'Asia', 'Middle East', 83600.00, 1971, 2441000, 74.1, 37966.00, 36846.00, 'Al-Imarat al-''Arabiya al-Muttahida', 'Emirate Federation', 'Zayid bin Sultan al-Nahayan', 24.47, 54.37, 'Abu Dhabi');
INSERT INTO public.country VALUES ('IQ', 'IRQ', 'Iraq', 'Asia', 'Middle East', 438317.00, 1932, 23115000, 66.5, 11500.00, NULL, 'al-‘Irāq/Eraq', 'Republic', 'Fuad Masum', 33.34, 44.40, 'Baghdad');
INSERT INTO public.country VALUES ('IE', 'IRL', 'Ireland', 'Europe', 'British Islands', 70273.00, 1921, 3775100, 76.8, 75921.00, 73132.00, 'Ireland/Éire', 'Republic', 'Mary McAleese', 53.33, -6.25, 'Dublin');
INSERT INTO public.country VALUES ('IL', 'ISR', 'Israel', 'Asia', 'Middle East', 21056.00, 1948, 6217000, 78.6, 97477.00, 98577.00, 'יִשְׂרָאֵל‬/Yisrā''el', 'Republic', 'Reuven Rivlin', 35.23, 31.77, 'Jerusalem');
INSERT INTO public.country VALUES ('CF', 'CAF', 'Central African Republic', 'Africa', 'Central Africa', 622984.00, 1960, 3615000, 44.0, 1054.00, 993.00, 'Centrafrique/Bêafrîka', 'Republic', 'Faustin-Archange Touadéra', 4.36, 18.55, 'Bangui');
INSERT INTO public.country VALUES ('DZ', 'DZA', 'Algeria', 'Africa', 'Northern Africa', 2381741.00, 1962, 31471000, 69.7, 49982.00, 46966.00, 'Al-Jazā''ir/Algérie', 'Republic', 'Abdelaziz Bouteflika', 36.75, 3.04, 'Alger');
INSERT INTO public.country VALUES ('ER', 'ERI', 'Eritrea', 'Africa', 'Eastern Africa', 117600.00, 1993, 3850000, 55.8, 650.00, 755.00, 'Ertra', 'Republic', 'Isayas Afewerki', 15.33, 38.93, 'Asmara');
INSERT INTO public.country VALUES ('ES', 'ESP', 'Spain', 'Europe', 'Southern Europe', 505992.00, 1492, 39441700, 78.8, 553233.00, 532031.00, 'España', 'Constitutional Monarchy', 'Juan Carlos I', 40.42, -3.70, 'Madrid');
INSERT INTO public.country VALUES ('HM', 'HMD', 'Heard Island and McDonald Islands', 'Antarctica', 'Antarctica', 359.00, NULL, 0, NULL, 0.00, NULL, 'Heard and McDonald Islands', 'Territory of Australia', 'Elisabeth II', -53.07, 73.37, '');
INSERT INTO public.country VALUES ('RE', 'REU', 'Réunion', 'Africa', 'Eastern Africa', 2510.00, NULL, 699000, 72.7, 8287.00, 7988.00, 'Réunion', 'Overseas Department of France', 'Emanuel Macron', 48.92, 2.33, 'Saint-Denis');
INSERT INTO public.country VALUES ('ST', 'STP', 'Sao Tome and Principe', 'Africa', 'Central Africa', 964.00, 1975, 147000, 65.3, 6.00, NULL, 'São Tomé e Príncipe', 'Republic', 'Miguel Trovoada', 0.34, 6.73, 'São Tomé');
INSERT INTO public.country VALUES ('DO', 'DOM', 'Dominican Republic', 'North America', 'Caribbean', 48511.00, 1844, 8495000, 73.2, 15846.00, 15076.00, 'República Dominicana', 'Republic', 'Danilo Medina', 18.50, -69.99, 'Santo Domingo de Guzmán');
INSERT INTO public.country VALUES ('MX', 'MEX', 'Mexico', 'North America', 'Central America', 1958201.00, 1810, 98881000, 71.5, 414972.00, 401461.00, 'México', 'Federal Republic', 'Vicente Fox Quesada', 19.43, -99.13, 'Ciudad de México');
INSERT INTO public.country VALUES ('ET', 'ETH', 'Ethiopia', 'Africa', 'Eastern Africa', 1104300.00, -1000, 62565000, 45.2, 6353.00, 6180.00, 'Ītyōṗṗyā', 'Republic', 'Negasso Gidada', 9.02, 38.75, 'Addis Abeba');
INSERT INTO public.country VALUES ('PT', 'PRT', 'Portugal', 'Europe', 'Southern Europe', 91982.00, 1143, 9997600, 75.8, 105954.00, 102133.00, 'Portugal', 'Republic', 'Marcelo Rebelo de Sousa', 38.72, -9.13, 'Lisboa');
INSERT INTO public.country VALUES ('KP', 'PRK', 'North Korea', 'Asia', 'Eastern Asia', 120538.00, 1948, 24039000, 70.7, 5332.00, NULL, 'Chosŏn Minjujuŭi Inmin Konghwaguk (Bukhan)', 'Socialistic Republic', 'Kim Jong-un', 39.03, 125.75, 'Pyongyang');
INSERT INTO public.country VALUES ('PR', 'PRI', 'Puerto Rico', 'North America', 'Caribbean', 8875.00, NULL, 3869000, 75.6, 34100.00, 32100.00, 'Puerto Rico', 'Commonwealth of the US', 'Donald J. Trump', 18.47, -66.11, 'San Juan');
INSERT INTO public.country VALUES ('SA', 'SAU', 'Saudi Arabia', 'Asia', 'Middle East', 2149690.00, 1932, 21607000, 67.8, 137635.00, 146171.00, 'Al-ʿĀrabīyah As-Saʿūdīyah', 'Monarchy', 'Salman bin Abdoel Aziz al-Saoed', 24.69, 46.72, 'Riyadh');
INSERT INTO public.country VALUES ('RO', 'ROM', 'Romania', 'Europe', 'Eastern Europe', 238391.00, 1878, 22455500, 69.9, 38158.00, 34843.00, 'România', 'Republic', 'Ion Iliescu', 44.43, 26.11, 'Bucuresti');
INSERT INTO public.country VALUES ('AO', 'AGO', 'Angola', 'Africa', 'Central Africa', 1246700.00, 1975, 12878000, 38.3, 6648.00, 7984.00, 'Angola', 'Republic', 'João Manuel Gonçalves Lourenço', -8.84, 13.23, 'Luanda');
INSERT INTO public.country VALUES ('AN', 'ANT', 'Netherlands Antilles', 'North America', 'Caribbean', 800.00, NULL, 217000, 74.7, 1941.00, NULL, 'Nederlandse Antillen', 'Nonmetropolitan Territory of The Netherlands', 'Willem-Alexander', -68.92, 12.10, 'Willemstad');
INSERT INTO public.country VALUES ('SN', 'SEN', 'Senegal', 'Africa', 'Western Africa', 196722.00, 1960, 9481000, 62.2, 4787.00, 4542.00, 'Sénégal/Sounougal', 'Republic', 'Abdoulaye Wade', 14.69, -17.44, 'Dakar');
INSERT INTO public.country VALUES ('VE', 'VEN', 'Venezuela', 'South America', 'South America', 912050.00, 1811, 24170000, 73.1, 95023.00, 88434.00, 'Venezuela', 'Federal Republic', 'Nicolás Maduro', 10.49, -66.88, 'Caracas');
INSERT INTO public.country VALUES ('PE', 'PER', 'Peru', 'South America', 'South America', 1285216.00, 1821, 25662000, 70.0, 64140.00, 65186.00, 'Perú/Piruw', 'Republic', 'Valentin Paniagua Corazao', -12.04, -77.03, 'Lima');
INSERT INTO public.country VALUES ('UY', 'URY', 'Uruguay', 'South America', 'South America', 175016.00, 1828, 3337000, 75.2, 20831.00, 19967.00, 'Uruguay', 'Republic', 'Tabaré Vázquez', -34.83, -56.17, 'Montevideo');
INSERT INTO public.country VALUES ('OM', 'OMN', 'Oman', 'Asia', 'Middle East', 309500.00, 1951, 2542000, 71.8, 16904.00, 16153.00, 'ʻumān', 'Monarchy (Sultanate)', 'Sayyid Qaboos bin Said Al Sai', 23.61, 58.59, 'Masqat');
INSERT INTO public.country VALUES ('AS', 'ASM', 'American Samoa', 'Oceania', 'Polynesia', 199.00, NULL, 68000, 75.1, 334.00, NULL, 'Amerika Samoa', 'US Territory', 'Donald J. Trump', -14.28, -170.70, 'Fagatogo');
INSERT INTO public.country VALUES ('AT', 'AUT', 'Austria', 'Europe', 'Western Europe', 83859.00, 1918, 8091800, 77.7, 211860.00, 206025.00, 'Österreich', 'Federal Republic', 'Thomas Klestil', 48.21, 16.37, 'Wien');
INSERT INTO public.country VALUES ('AZ', 'AZE', 'Azerbaijan', 'Asia', 'Middle East', 86600.00, 1991, 7734000, 62.9, 4127.00, 4100.00, 'Azərbaycan', 'Federal Republic', 'Ilham Aliyev', 40.38, 49.89, 'Baku');
INSERT INTO public.country VALUES ('BJ', 'BEN', 'Benin', 'Africa', 'Western Africa', 112622.00, 1960, 6097000, 50.2, 2357.00, 2141.00, 'Bénin', 'Republic', 'Patrice Talon', 6.50, 2.60, 'Porto-Novo');
INSERT INTO public.country VALUES ('BE', 'BEL', 'Belgium', 'Europe', 'Western Europe', 30518.00, 1830, 10239000, 77.8, 249704.00, 243948.00, 'België/Belgique', 'Constitutional Monarchy, Federation', 'Albert II', 50.85, 4.35, 'Bruxelles [Brussel]');
INSERT INTO public.country VALUES ('KR', 'KOR', 'South Korea', 'Asia', 'Eastern Asia', 99434.00, 1948, 46844000, 74.4, 320749.00, 442544.00, 'Taehan Min’guk (Namhan)', 'Republic', 'Kim Dae-jung', 37.57, 126.98, 'Seoul');
INSERT INTO public.country VALUES ('YT', 'MYT', 'Mayotte', 'Africa', 'Eastern Africa', 373.00, NULL, 149000, 59.5, 0.00, NULL, 'Mayotte', 'Territorial Collectivity of France', 'Emanuel Macron', -12.78, 45.23, 'Mamoutzou');
INSERT INTO public.country VALUES ('NI', 'NIC', 'Nicaragua', 'North America', 'Central America', 130000.00, 1838, 5074000, 68.7, 1988.00, 2023.00, 'Nicaragua', 'Republic', 'Daniel Ortega', 12.13, -86.25, 'Managua');
INSERT INTO public.country VALUES ('NL', 'NLD', 'Netherlands', 'Europe', 'Western Europe', 41526.00, 1581, 15864000, 78.3, 371362.00, 360478.00, 'Nederland', 'Constitutional Monarchy', 'Willem-Alexander', 52.37, 4.89, 'Amsterdam');
INSERT INTO public.country VALUES ('ZW', 'ZWE', 'Zimbabwe', 'Africa', 'Eastern Africa', 390757.00, 1980, 11669000, 37.8, 5951.00, 8670.00, 'Zimbabwe', 'Republic', 'Emmerson Mnangagwa', -17.83, 31.05, 'Harare');
INSERT INTO public.country VALUES ('VN', 'VNM', 'Vietnam', 'Asia', 'Southeast Asia', 331689.00, 1945, 79832000, 69.3, 21929.00, 22834.00, 'Việt Nam', 'Socialistic Republic', 'Trần Đại Quang', 21.02, 105.84, 'Hanoi');
INSERT INTO public.country VALUES ('CV', 'CPV', 'Cape Verde', 'Africa', 'Western Africa', 4033.00, 1975, 428000, 68.9, 435.00, 420.00, 'Cabo Verde', 'Republic', 'Jorge Carlos Fonseca', 14.93, -23.51, 'Praia');
INSERT INTO public.country VALUES ('AM', 'ARM', 'Armenia', 'Asia', 'Middle East', 29800.00, 1991, 3520000, 66.4, 1813.00, 1627.00, 'Hajastan', 'Republic', 'Armen Sarkissian', 40.18, 44.51, 'Yerevan');
INSERT INTO public.country VALUES ('MR', 'MRT', 'Mauritania', 'Africa', 'Western Africa', 1025520.00, 1960, 2670000, 50.8, 998.00, 1081.00, 'Muritaniya/Mauritanie', 'Republic', 'Mohamed Ould Abdel Aziz', 18.09, -15.98, 'Nouakchott');
INSERT INTO public.country VALUES ('SC', 'SYC', 'Seychelles', 'Africa', 'Eastern Africa', 455.00, 1976, 77000, 70.4, 536.00, 539.00, 'Sesel/Seychelles', 'Republic', 'Danny Faure', -4.62, 55.45, 'Victoria');
INSERT INTO public.country VALUES ('MZ', 'MOZ', 'Mozambique', 'Africa', 'Eastern Africa', 801590.00, 1975, 19680000, 37.5, 2891.00, 2711.00, 'Moçambique', 'Republic', 'Ibrahim Boubacar Keïta', -25.97, 32.58, 'Maputo');
INSERT INTO public.country VALUES ('TJ', 'TJK', 'Tajikistan', 'Asia', 'Southern and Central Asia', 143100.00, 1991, 6188000, 64.1, 1990.00, 1056.00, 'Toçikiston', 'Republic', 'Emomali Rahmonov', 38.54, 68.78, 'Dushanbe');
INSERT INTO public.country VALUES ('GE', 'GEO', 'Georgia', 'Asia', 'Middle East', 69700.00, 1991, 4968000, 64.5, 6064.00, 5924.00, 'Sakartvelo', 'Republic', 'Giorgi Margvelasjvili', 41.69, 44.83, 'Tbilisi');
INSERT INTO public.country VALUES ('NC', 'NCL', 'New Caledonia', 'Oceania', 'Melanesia', 18575.00, NULL, 214000, 72.8, 3563.00, NULL, 'Nouvelle-Calédonie', 'Nonmetropolitan Territory of France', 'Emanuel Macron', -22.28, 166.46, 'Nouméa');
INSERT INTO public.country VALUES ('GU', 'GUM', 'Guam', 'Oceania', 'Micronesia', 549.00, NULL, 168000, 77.8, 1197.00, 1136.00, 'Guam', 'US Territory', 'Donald J. Trump', 13.48, 144.75, 'Agaña');
INSERT INTO public.country VALUES ('PY', 'PRY', 'Paraguay', 'South America', 'South America', 406752.00, 1811, 5496000, 73.7, 8444.00, 9555.00, 'Paraguay', 'Republic', 'Horacio Cartes', -25.30, -57.64, 'Asunción');
INSERT INTO public.country VALUES ('CO', 'COL', 'Colombia', 'South America', 'South America', 1138914.00, 1810, 42321000, 70.3, 102896.00, 105116.00, 'Colombia', 'Republic', 'Juan Manuel Santos', 4.61, -74.08, 'Santa Fé de Bogotá');
INSERT INTO public.country VALUES ('TD', 'TCD', 'Chad', 'Africa', 'Central Africa', 1284000.00, 1960, 7651000, 50.5, 1208.00, 1102.00, 'Tchad/Tshad', 'Republic', 'Idriss Déby', 12.11, 15.04, 'N''Djaména');
INSERT INTO public.country VALUES ('TG', 'TGO', 'Togo', 'Africa', 'Western Africa', 56785.00, 1960, 4629000, 54.7, 1449.00, 1400.00, 'Togo', 'Republic', 'Faure Eyadéma', 6.14, 1.21, 'Lomé');
INSERT INTO public.country VALUES ('FO', 'FRO', 'Faroe Islands', 'Europe', 'Nordic Countries', 1399.00, NULL, 43000, 78.4, 0.00, NULL, 'Føroyar', 'Part of Denmark', 'Margrethe II', 62.01, -6.77, 'Tórshavn');
INSERT INTO public.country VALUES ('TF', 'ATF', 'French Southern territories', 'Antarctica', 'Antarctica', 7780.00, NULL, 0, NULL, 0.00, NULL, 'Terres australes françaises', 'Nonmetropolitan Territory of France', 'Emmanuel Macron', -49.22, 68.44, '');
INSERT INTO public.country VALUES ('VI', 'VIR', 'Virgin Islands, U.S.', 'North America', 'Caribbean', 347.00, NULL, 93000, 78.1, 0.00, NULL, 'Virgin Islands of the United States', 'US Territory', 'Donald J. Trump', 18.34, -64.93, 'Charlotte Amalie');
INSERT INTO public.country VALUES ('LU', 'LUX', 'Luxembourg', 'Europe', 'Western Europe', 2586.00, 1867, 435700, 77.1, 16321.00, 15519.00, 'Luxembourg/Lëtzebuerg', 'Constitutional Monarchy', 'Henri', 49.61, 6.13, 'Luxembourg [Luxemburg/Lëtzebuerg]');
INSERT INTO public.country VALUES ('PA', 'PAN', 'Panama', 'North America', 'Central America', 75517.00, 1903, 2856000, 75.5, 9131.00, 8700.00, 'Panamá', 'Republic', 'Mireya Elisa Moscoso RodrÃ­guez', 8.99, -79.52, 'Ciudad de Panamá');
INSERT INTO public.country VALUES ('IS', 'ISL', 'Iceland', 'Europe', 'Nordic Countries', 103000.00, 1944, 279000, 79.4, 8255.00, 7474.00, 'Ísland', 'Republic', 'Guðni Thorlacius Jóhannesson', 64.14, -21.90, 'Reykjavík');
INSERT INTO public.country VALUES ('CR', 'CRI', 'Costa Rica', 'North America', 'Central America', 51100.00, 1821, 4023000, 75.8, 10226.00, 9757.00, 'Costa Rica', 'Republic', 'Luis Guillermo Solís', 9.93, -84.08, 'San José');
INSERT INTO public.country VALUES ('HU', 'HUN', 'Hogeschool Utrecht', 'Europe', 'Western-Europe', 300.24, 1918, 12411, 71.4, 48267.00, 45914.00, 'Magyarország', 'Monarchy', 'János Áder', 5.00, 53.12, 'Daltonlaan 200');
INSERT INTO public.country VALUES ('AQ', 'ATA', 'Antarctica', 'Antarctica', 'Antarctica', 13120000.00, NULL, 0, NULL, 0.00, NULL, 'Antarctica', 'Co-administrated', '', -39.70, -72.14, 'Antarctica');
INSERT INTO public.country VALUES ('BV', 'BVT', 'Bouvet Island', 'Antarctica', 'Antarctica', 59.00, NULL, 0, NULL, 0.00, NULL, 'Bouvetøya', 'Dependent Territory of Norway', 'Harald V', -54.42, 3.32, '');
INSERT INTO public.country VALUES ('CC', 'CCK', 'Cocos (Keeling) Islands', 'Oceania', 'Australia and New Zealand', 14.00, NULL, 600, NULL, 0.00, NULL, 'Cocos (Keeling) Islands', 'Territory of Australia', 'Elisabeth II', -35.60, 138.58, 'West Island');
INSERT INTO public.country VALUES ('CD', 'COD', 'Congo, The Democratic Republic of the', 'Africa', 'Central Africa', 2344858.00, 1960, 51654000, 48.8, 6964.00, 2474.00, 'République démocratique du Congo', 'Republic', 'Joseph Kabila', -4.40, 15.25, 'Kinshasa');
INSERT INTO public.country VALUES ('CI', 'CIV', 'Côte d''Ivoire', 'Africa', 'Western Africa', 322463.00, 1960, 14786000, 45.2, 11345.00, 10285.00, 'Côte d''Ivoire', 'Republic', 'Laurent Gbagbo', 6.81, -5.35, 'Yamoussoukro');
INSERT INTO public.country VALUES ('PS', 'PSE', 'Palestine', 'Asia', 'Middle East', 6257.00, NULL, 3101000, 71.4, 4173.00, NULL, 'Filastin', 'Autonomous Area', 'Yasser (Yasir) Arafat', 31.50, 34.45, 'Gaza');
INSERT INTO public.country VALUES ('UM', 'UMI', 'United States Minor Outlying Islands', 'Oceania', 'Micronesia/Caribbean', 16.00, NULL, 0, NULL, 0.00, NULL, 'United States Minor Outlying Islands', 'Dependent Territory of the US', 'Donald J. Trump', 13.84, 174.26, '');
INSERT INTO public.country VALUES ('VA', 'VAT', 'Holy See (Vatican City State)', 'Europe', 'Southern Europe', 0.40, 1929, 1000, NULL, 9.00, NULL, 'Santa Sede/Città del Vaticano', 'Independent Church State', 'Johannes Paavali II', 41.90, 12.44, 'Città  del Vaticano');


--
-- TOC entry 2683 (class 2606 OID 16629)
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (code);


-- Completed on 2018-04-14 22:37:53

--
-- PostgreSQL database dump complete
--

