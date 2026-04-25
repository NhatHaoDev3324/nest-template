--
-- PostgreSQL database dump
--

\restrict IJPTzOlXogUGs8GYLCoRmrKX9OcBvXOjqdwtsuthjsbYmpt6VsRIsDJMT484SFg

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2026-04-25 23:56:32

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 671755)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id text NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    full_name text,
    avatar text,
    provider text,
    role text,
    active boolean DEFAULT false,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 4902 (class 0 OID 671755)
-- Dependencies: 218
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, password, full_name, avatar, provider, role, active, created_at, updated_at, deleted_at) FROM stdin;
424b9ff8-36d5-4d8a-a291-ad2a68e8cfb4	nhathao.nguyen@gmail.com	$2a$14$JpUDLkPJehEZt5meVBLbMemkZRkcH/IEWMaxQBOXszR4DxZa9bUC2	Nguyễn Nhật Hào	https://randomuser.me/api/portraits/men/32.jpg	google	admin	t	2026-04-24 08:35:42+07	2026-04-24 09:05:12+07	\N
2d07d52a-d8e8-4d04-ab78-0af587c66811	minh.quan.nguyen@gmail.com	$2a$14$k5UpgSEiLnzDm7O1RvqfhuFW0b2ZbzbXn8cB3lyEoRm61g3pyo.Cy	Nguyễn Minh Quân	https://randomuser.me/api/portraits/men/11.jpg	email	user	t	2025-11-03 08:14:11+07	2025-11-03 08:14:11+07	\N
46a100a4-3f95-45be-9b10-76f062a5d7cc	phuong.anh.le@gmail.com	$2a$14$uaFpcR2sD3E7goO1KzgYhuRqiLCRHw/Dqgi88i.jBKeN6gmcdDrDW	Lê Phương Anh	https://randomuser.me/api/portraits/women/12.jpg	google	user	t	2025-11-15 19:42:05+07	2025-11-15 19:42:05+07	\N
2c5f102e-ed31-4fb4-b867-f0cdecf2b7a3	giahuy.pham@gmail.com	$2a$14$4Pq8PcjvguzCgZ2WgAVs8eAMkEla2pbLnAUsFLQQa052Kr64BR.lK	Phạm Gia Huy	https://randomuser.me/api/portraits/men/45.jpg	email	user	t	2025-11-28 10:07:33+07	2025-11-28 10:07:33+07	\N
a1bf969c-5415-47d5-ab7a-c4f47e63dd66	thaomy.vo@gmail.com	$2a$14$a3QO4AngPPpQiiDhHTzSyeZZTeE2bCSx6gghC0Rx9bEg/jCCbMocW	Võ Thảo My	https://randomuser.me/api/portraits/women/68.jpg	google	user	t	2025-12-04 14:23:19+07	2025-12-04 14:23:19+07	\N
b9047216-36c0-4cb0-bf18-ed60bff0f3d4	nhatnam.bui@gmail.com	$2a$14$MQUxPsBlWPZ5NonVxMcoxO5pu7NKhNlpdrrLxOXPW4ISNZFw1XL56	Bùi Nhật Nam	https://randomuser.me/api/portraits/men/71.jpg	email	admin	t	2025-12-19 09:18:44+07	2025-12-19 09:44:10+07	\N
d9303c8e-35d6-4adb-8e47-c5d9ecfcf558	khanhlinh.nguyen@gmail.com	$2a$14$2kOtZNFM3XqKlWkcPUSpm.FSD2hker5qSOi2sqikIKPoDMrFo2hdm	Nguyễn Khánh Linh	https://randomuser.me/api/portraits/women/24.jpg	google	user	t	2026-01-07 07:56:20+07	2026-01-07 08:01:03+07	\N
8a2323cc-56b1-4e1d-ad78-9e7dd93bb946	hoangyen.do@gmail.com	$2a$14$CR0kRKRJcShPhplrZ9FbUeEqiqNjR9w0B1BjIp.3Ig3dF8RXaTQ.K	Đỗ Hoàng Yến	https://randomuser.me/api/portraits/women/33.jpg	email	user	t	2026-01-22 21:11:08+07	2026-01-22 21:11:08+07	\N
f331e2d1-ef3e-4812-b786-7bdc09fe9092	quocbao.le@gmail.com	$2a$14$e/U9Fs93QJS8DSmFmKaVh.GkZuOTrglDUhmBMDK42XEUNt38.EEka	Lê Quốc Bảo	https://randomuser.me/api/portraits/men/18.jpg	google	user	t	2026-02-10 13:34:56+07	2026-02-10 14:00:02+07	\N
d19b2455-8e89-4b10-bb2d-b37deefa81eb	daniel.nguyen.work@gmail.com	$2a$14$MaIPOWICZ7BLqm9MmIvvX.wEMu0Ya5q.cjjcqoz.wUBynoz8EntGK	Daniel Nguyễn	https://randomuser.me/api/portraits/men/76.jpg	email	user	t	2026-03-03 16:05:41+07	2026-03-03 16:05:41+07	\N
90c54116-5cb5-4a6d-abc9-4fbe28e8db53	sophie.tran.mail@gmail.com	$2a$14$anhu5t9140sV6pYhuhFg4u9YUQU4fllQSfgTxq5Y0wGimpuxoh4E2	Sophie Trần	https://randomuser.me/api/portraits/women/44.jpg	google	user	t	2026-03-18 11:27:09+07	2026-03-18 11:27:09+07	\N
007d24a9-e620-4627-8f95-23d78352169a	kenny.le@gmail.com	$2a$14$P0iB21EvtD8hngLy7Kmi4e53u8NtFUAGOZViHNilgAfOrxrVIjzEa	Kenny Lê	https://randomuser.me/api/portraits/men/68.jpg	email	user	t	2026-04-09 20:48:30+07	2026-04-09 20:48:30+07	\N
c6add758-c0a5-47b5-a842-e3ae68d1fbce	nguyen.minh.khang+sg-13@gmail.com	$2a$14$k5UpgSEiLnzDm7O1RvqfhuFW0b2ZbzbXn8cB3lyEoRm61g3pyo.Cy	Nguyen Minh Khang	https://randomuser.me/api/portraits/men/1.jpg	email	user	t	2024-07-01 08:17:00+07	2024-07-01 10:17:00+07	\N
53181ed6-2eae-4cbc-9e65-fb2aeec81875	tran.minh.khang+hn-23@outlook.com	$2a$14$uaFpcR2sD3E7goO1KzgYhuRqiLCRHw/Dqgi88i.jBKeN6gmcdDrDW	Tran Minh Khang	https://randomuser.me/api/portraits/men/2.jpg	email	user	t	2024-07-04 08:34:00+07	2024-07-04 11:34:00+07	\N
bad64511-6c52-4b3f-a368-9099a4bff9ed	le.minh.khang+q1-33@proton.me	$2a$14$4Pq8PcjvguzCgZ2WgAVs8eAMkEla2pbLnAUsFLQQa052Kr64BR.lK	Le Minh Khang	https://randomuser.me/api/portraits/men/3.jpg	google	user	t	2024-07-07 08:51:00+07	2024-07-07 12:51:00+07	\N
241e2a22-b626-424f-97d4-757a2d8f1d2e	pham.minh.khang+q3-43@icloud.com	$2a$14$a3QO4AngPPpQiiDhHTzSyeZZTeE2bCSx6gghC0Rx9bEg/jCCbMocW	Pham Minh Khang	https://randomuser.me/api/portraits/men/4.jpg	email	user	t	2024-07-10 09:08:00+07	2024-07-10 14:08:00+07	\N
55e3d475-a7c9-4ec3-ace7-8d3b661b1567	vo.minh.khang+q7-53@yahoo.com	$2a$14$MQUxPsBlWPZ5NonVxMcoxO5pu7NKhNlpdrrLxOXPW4ISNZFw1XL56	Vo Minh Khang	https://randomuser.me/api/portraits/men/5.jpg	email	user	t	2024-07-13 09:25:00+07	2024-07-13 15:25:00+07	\N
a6d076b5-d305-4475-9681-4c8058fe1216	bui.minh.khang+bt-63@hotmail.com	$2a$14$2kOtZNFM3XqKlWkcPUSpm.FSD2hker5qSOi2sqikIKPoDMrFo2hdm	Bui Minh Khang	https://randomuser.me/api/portraits/men/6.jpg	google	user	t	2024-07-16 09:42:00+07	2024-07-16 16:42:00+07	\N
93d912de-678a-4c73-adc6-22f7a4efcb9f	do.minh.khang+work-73@gmail.com	$2a$14$CR0kRKRJcShPhplrZ9FbUeEqiqNjR9w0B1BjIp.3Ig3dF8RXaTQ.K	Do Minh Khang	https://randomuser.me/api/portraits/men/7.jpg	email	user	t	2024-07-19 09:59:00+07	2024-07-19 17:59:00+07	\N
d8428378-decd-43b7-a66d-95fd4bed48be	hoang.minh.khang+studio-83@outlook.com	$2a$14$e/U9Fs93QJS8DSmFmKaVh.GkZuOTrglDUhmBMDK42XEUNt38.EEka	Hoang Minh Khang	https://randomuser.me/api/portraits/men/8.jpg	email	user	t	2024-07-22 10:16:00+07	2024-07-22 19:16:00+07	\N
55fc9356-10aa-4bac-bd6b-58cceb5a1171	phan.minh.khang+room-93@proton.me	$2a$14$MaIPOWICZ7BLqm9MmIvvX.wEMu0Ya5q.cjjcqoz.wUBynoz8EntGK	Phan Minh Khang	https://randomuser.me/api/portraits/men/9.jpg	google	admin	t	2024-07-25 10:33:00+07	2024-07-25 20:33:00+07	\N
f8381da1-5818-4fa6-b329-3947887f26ca	dang.minh.khang+dev-103@icloud.com	$2a$14$anhu5t9140sV6pYhuhFg4u9YUQU4fllQSfgTxq5Y0wGimpuxoh4E2	Dang Minh Khang	https://randomuser.me/api/portraits/men/10.jpg	email	user	t	2024-07-28 10:50:00+07	2024-07-28 21:50:00+07	\N
f78413a7-57c9-463b-9b26-929282eab6c8	nguyen.gia.bao+mail-113@yahoo.com	$2a$14$k5UpgSEiLnzDm7O1RvqfhuFW0b2ZbzbXn8cB3lyEoRm61g3pyo.Cy	Nguyen Gia Bao	https://randomuser.me/api/portraits/men/11.jpg	email	user	t	2024-07-31 11:07:00+07	2024-07-31 23:07:00+07	\N
7fbc1892-78d6-4cfa-8028-85ba32348967	tran.gia.bao+beta-123@hotmail.com	$2a$14$uaFpcR2sD3E7goO1KzgYhuRqiLCRHw/Dqgi88i.jBKeN6gmcdDrDW	Tran Gia Bao	https://randomuser.me/api/portraits/men/12.jpg	google	user	t	2024-08-03 11:24:00+07	2024-08-04 00:24:00+07	\N
a3ea049a-20c5-4ff9-a855-c6fb6acee0a4	le.gia.bao+hub-133@gmail.com	$2a$14$4Pq8PcjvguzCgZ2WgAVs8eAMkEla2pbLnAUsFLQQa052Kr64BR.lK	Le Gia Bao	https://randomuser.me/api/portraits/men/13.jpg	email	user	t	2024-08-06 11:41:00+07	2024-08-07 01:41:00+07	\N
1d8cdd18-36c3-4b0e-b3ed-96d2bb4430f5	pham.gia.bao+office-143@outlook.com	$2a$14$a3QO4AngPPpQiiDhHTzSyeZZTeE2bCSx6gghC0Rx9bEg/jCCbMocW	Pham Gia Bao	https://randomuser.me/api/portraits/men/14.jpg	email	user	t	2024-08-09 11:58:00+07	2024-08-10 02:58:00+07	\N
117a26db-73cc-449d-9c27-826f8f438fbb	vo.gia.bao+zen-153@proton.me	$2a$14$MQUxPsBlWPZ5NonVxMcoxO5pu7NKhNlpdrrLxOXPW4ISNZFw1XL56	Vo Gia Bao	https://randomuser.me/api/portraits/men/15.jpg	google	user	t	2024-08-12 12:15:00+07	2024-08-13 04:15:00+07	\N
95f2492e-9da4-4bc7-b1b4-058ff1025c5c	bui.gia.bao+cafe-163@icloud.com	$2a$14$2kOtZNFM3XqKlWkcPUSpm.FSD2hker5qSOi2sqikIKPoDMrFo2hdm	Bui Gia Bao	https://randomuser.me/api/portraits/men/16.jpg	email	user	t	2024-08-15 12:32:00+07	2024-08-16 05:32:00+07	\N
bb42c78a-13ce-42f8-88e2-9ca23f057794	do.gia.bao+sky-173@yahoo.com	$2a$14$CR0kRKRJcShPhplrZ9FbUeEqiqNjR9w0B1BjIp.3Ig3dF8RXaTQ.K	Do Gia Bao	https://randomuser.me/api/portraits/men/17.jpg	email	user	t	2024-08-18 12:49:00+07	2024-08-19 06:49:00+07	\N
93951cc6-d74a-4629-81e4-132a4db65fe1	hoang.gia.bao+live-183@hotmail.com	$2a$14$e/U9Fs93QJS8DSmFmKaVh.GkZuOTrglDUhmBMDK42XEUNt38.EEka	Hoang Gia Bao	https://randomuser.me/api/portraits/men/18.jpg	google	user	t	2024-08-21 13:06:00+07	2024-08-21 14:06:00+07	\N
41dd2c2b-d181-439d-8d66-249d9c879fd8	phan.gia.bao+cloud-193@gmail.com	$2a$14$MaIPOWICZ7BLqm9MmIvvX.wEMu0Ya5q.cjjcqoz.wUBynoz8EntGK	Phan Gia Bao	https://randomuser.me/api/portraits/men/19.jpg	email	user	t	2024-08-24 13:23:00+07	2024-08-24 15:23:00+07	\N
ed759cb9-919d-4410-8049-69ec4baa4c5c	dang.gia.bao+home-203@outlook.com	$2a$14$anhu5t9140sV6pYhuhFg4u9YUQU4fllQSfgTxq5Y0wGimpuxoh4E2	Dang Gia Bao	https://randomuser.me/api/portraits/men/20.jpg	email	user	t	2024-08-27 13:40:00+07	2024-08-27 16:40:00+07	\N
c710a0af-2e25-4028-80a1-6f4bb3d01276	nguyen.quoc.huy+sg-213@proton.me	$2a$14$k5UpgSEiLnzDm7O1RvqfhuFW0b2ZbzbXn8cB3lyEoRm61g3pyo.Cy	Nguyen Quoc Huy	https://randomuser.me/api/portraits/men/21.jpg	google	user	t	2024-08-30 13:57:00+07	2024-08-30 17:57:00+07	\N
07f61475-d027-4935-88ce-2113fbf9d3a5	tran.quoc.huy+hn-223@icloud.com	$2a$14$uaFpcR2sD3E7goO1KzgYhuRqiLCRHw/Dqgi88i.jBKeN6gmcdDrDW	Tran Quoc Huy	https://randomuser.me/api/portraits/men/22.jpg	email	user	t	2024-09-02 14:14:00+07	2024-09-02 19:14:00+07	\N
12919aca-20f6-4850-bf6a-1bf7e60c2493	le.quoc.huy+q1-233@yahoo.com	$2a$14$4Pq8PcjvguzCgZ2WgAVs8eAMkEla2pbLnAUsFLQQa052Kr64BR.lK	Le Quoc Huy	https://randomuser.me/api/portraits/men/23.jpg	email	user	t	2024-09-05 14:31:00+07	2024-09-05 20:31:00+07	\N
6ad1cc5f-4027-43b7-8446-bf90a149eaaa	pham.quoc.huy+q3-243@hotmail.com	$2a$14$a3QO4AngPPpQiiDhHTzSyeZZTeE2bCSx6gghC0Rx9bEg/jCCbMocW	Pham Quoc Huy	https://randomuser.me/api/portraits/men/24.jpg	google	user	t	2024-09-08 14:48:00+07	2024-09-08 21:48:00+07	\N
137fc331-8208-4091-88a2-be987d0aeab4	vo.quoc.huy+q7-253@gmail.com	$2a$14$MQUxPsBlWPZ5NonVxMcoxO5pu7NKhNlpdrrLxOXPW4ISNZFw1XL56	Vo Quoc Huy	https://randomuser.me/api/portraits/men/25.jpg	email	user	t	2024-09-11 15:05:00+07	2024-09-11 23:05:00+07	\N
2ab4262d-c0a4-4e18-b1d1-2fef68641562	bui.quoc.huy+bt-263@outlook.com	$2a$14$2kOtZNFM3XqKlWkcPUSpm.FSD2hker5qSOi2sqikIKPoDMrFo2hdm	Bui Quoc Huy	https://randomuser.me/api/portraits/men/26.jpg	email	user	t	2024-09-14 15:22:00+07	2024-09-15 00:22:00+07	\N
dab4dfdb-3608-44ee-b918-006724c37e3e	do.quoc.huy+work-273@proton.me	$2a$14$CR0kRKRJcShPhplrZ9FbUeEqiqNjR9w0B1BjIp.3Ig3dF8RXaTQ.K	Do Quoc Huy	https://randomuser.me/api/portraits/men/27.jpg	google	admin	t	2024-09-17 15:39:00+07	2024-09-18 01:39:00+07	\N
fef11536-21ad-4694-84db-d489908bb86f	hoang.quoc.huy+studio-283@icloud.com	$2a$14$e/U9Fs93QJS8DSmFmKaVh.GkZuOTrglDUhmBMDK42XEUNt38.EEka	Hoang Quoc Huy	https://randomuser.me/api/portraits/men/28.jpg	email	user	t	2024-09-20 15:56:00+07	2024-09-21 02:56:00+07	\N
cee240f8-3953-4fd2-ac9a-1ee541309b6d	phan.quoc.huy+room-293@yahoo.com	$2a$14$MaIPOWICZ7BLqm9MmIvvX.wEMu0Ya5q.cjjcqoz.wUBynoz8EntGK	Phan Quoc Huy	https://randomuser.me/api/portraits/men/29.jpg	email	user	t	2024-09-23 16:13:00+07	2024-09-24 04:13:00+07	\N
822198d5-0d7a-48e5-b1ec-f3f3ac98cee2	dang.quoc.huy+dev-303@hotmail.com	$2a$14$anhu5t9140sV6pYhuhFg4u9YUQU4fllQSfgTxq5Y0wGimpuxoh4E2	Dang Quoc Huy	https://randomuser.me/api/portraits/men/30.jpg	google	user	t	2024-09-26 16:30:00+07	2024-09-27 05:30:00+07	\N
7f84f393-e426-4d4a-8b0b-f80aec0c07a9	nguyen.tuan.kiet+mail-313@gmail.com	$2a$14$k5UpgSEiLnzDm7O1RvqfhuFW0b2ZbzbXn8cB3lyEoRm61g3pyo.Cy	Nguyen Tuan Kiet	https://randomuser.me/api/portraits/men/31.jpg	email	user	t	2024-09-29 16:47:00+07	2024-09-30 06:47:00+07	\N
4df70a63-4e54-4b09-9226-e63affa7a1d5	tran.tuan.kiet+beta-323@outlook.com	$2a$14$uaFpcR2sD3E7goO1KzgYhuRqiLCRHw/Dqgi88i.jBKeN6gmcdDrDW	Tran Tuan Kiet	https://randomuser.me/api/portraits/men/32.jpg	email	user	t	2024-10-02 17:04:00+07	2024-10-03 08:04:00+07	\N
8ae474ef-e971-4aa6-b05a-d0890d724ae1	le.tuan.kiet+hub-333@proton.me	$2a$14$4Pq8PcjvguzCgZ2WgAVs8eAMkEla2pbLnAUsFLQQa052Kr64BR.lK	Le Tuan Kiet	https://randomuser.me/api/portraits/men/33.jpg	google	user	t	2024-10-05 17:21:00+07	2024-10-06 09:21:00+07	\N
eab0d300-2ea4-40c9-bb83-c0f787b5ed10	pham.tuan.kiet+office-343@icloud.com	$2a$14$a3QO4AngPPpQiiDhHTzSyeZZTeE2bCSx6gghC0Rx9bEg/jCCbMocW	Pham Tuan Kiet	https://randomuser.me/api/portraits/men/34.jpg	email	user	t	2024-10-08 17:38:00+07	2024-10-09 10:38:00+07	\N
06aa7b2a-c66b-495f-8715-a9b5cbbcd3f7	vo.tuan.kiet+zen-353@yahoo.com	$2a$14$MQUxPsBlWPZ5NonVxMcoxO5pu7NKhNlpdrrLxOXPW4ISNZFw1XL56	Vo Tuan Kiet	https://randomuser.me/api/portraits/men/35.jpg	email	user	t	2024-10-11 17:55:00+07	2024-10-12 11:55:00+07	\N
a7f1903a-9568-4b1a-81b4-b4556f9fcec7	bui.tuan.kiet+cafe-363@hotmail.com	$2a$14$2kOtZNFM3XqKlWkcPUSpm.FSD2hker5qSOi2sqikIKPoDMrFo2hdm	Bui Tuan Kiet	https://randomuser.me/api/portraits/men/36.jpg	google	user	t	2024-10-14 18:12:00+07	2024-10-14 19:12:00+07	\N
1a35f8b5-ef16-49d9-99f5-6fdb8daabfd8	do.tuan.kiet+sky-373@gmail.com	$2a$14$CR0kRKRJcShPhplrZ9FbUeEqiqNjR9w0B1BjIp.3Ig3dF8RXaTQ.K	Do Tuan Kiet	https://randomuser.me/api/portraits/men/37.jpg	email	user	t	2024-10-17 18:29:00+07	2024-10-17 20:29:00+07	\N
7481b0bb-5ab3-4371-8bfa-6d0ba8a5ba2b	hoang.tuan.kiet+live-383@outlook.com	$2a$14$e/U9Fs93QJS8DSmFmKaVh.GkZuOTrglDUhmBMDK42XEUNt38.EEka	Hoang Tuan Kiet	https://randomuser.me/api/portraits/men/38.jpg	email	user	t	2024-10-20 18:46:00+07	2024-10-20 21:46:00+07	\N
fe0873d0-c48c-4727-b31e-16a9e21dbf78	phan.tuan.kiet+cloud-393@proton.me	$2a$14$MaIPOWICZ7BLqm9MmIvvX.wEMu0Ya5q.cjjcqoz.wUBynoz8EntGK	Phan Tuan Kiet	https://randomuser.me/api/portraits/men/39.jpg	google	user	t	2024-10-23 19:03:00+07	2024-10-23 23:03:00+07	\N
5d2965b0-5827-4908-a876-541ed273b887	dang.tuan.kiet+home-403@icloud.com	$2a$14$anhu5t9140sV6pYhuhFg4u9YUQU4fllQSfgTxq5Y0wGimpuxoh4E2	Dang Tuan Kiet	https://randomuser.me/api/portraits/men/40.jpg	email	user	t	2024-10-26 19:20:00+07	2024-10-27 00:20:00+07	\N
b862aee4-ad3a-473a-842d-c5d612e80f1f	nguyen.thanh.long+sg-413@yahoo.com	$2a$14$k5UpgSEiLnzDm7O1RvqfhuFW0b2ZbzbXn8cB3lyEoRm61g3pyo.Cy	Nguyen Thanh Long	https://randomuser.me/api/portraits/men/41.jpg	email	user	t	2024-10-29 19:37:00+07	2024-10-30 01:37:00+07	\N
57257e80-72f1-49ed-b587-66ba759e5e1f	tran.thanh.long+hn-423@hotmail.com	$2a$14$uaFpcR2sD3E7goO1KzgYhuRqiLCRHw/Dqgi88i.jBKeN6gmcdDrDW	Tran Thanh Long	https://randomuser.me/api/portraits/men/42.jpg	google	user	t	2024-11-01 19:54:00+07	2024-11-02 02:54:00+07	\N
334fb218-2cf2-4018-a039-711f9b65e990	le.thanh.long+q1-433@gmail.com	$2a$14$4Pq8PcjvguzCgZ2WgAVs8eAMkEla2pbLnAUsFLQQa052Kr64BR.lK	Le Thanh Long	https://randomuser.me/api/portraits/men/43.jpg	email	user	t	2024-11-04 20:11:00+07	2024-11-05 04:11:00+07	\N
0b0e2bca-bc17-48e4-8390-d715d55abd09	pham.thanh.long+q3-443@outlook.com	$2a$14$a3QO4AngPPpQiiDhHTzSyeZZTeE2bCSx6gghC0Rx9bEg/jCCbMocW	Pham Thanh Long	https://randomuser.me/api/portraits/men/44.jpg	email	user	t	2024-11-07 20:28:00+07	2024-11-08 05:28:00+07	\N
e98af987-c0f4-479b-9b6b-ce39fb165959	vo.thanh.long+q7-453@proton.me	$2a$14$MQUxPsBlWPZ5NonVxMcoxO5pu7NKhNlpdrrLxOXPW4ISNZFw1XL56	Vo Thanh Long	https://randomuser.me/api/portraits/men/45.jpg	google	user	t	2024-11-10 20:45:00+07	2024-11-11 06:45:00+07	\N
ee06d7c7-d2e3-4689-91bf-51ff6fb10b14	bui.thanh.long+bt-463@icloud.com	$2a$14$2kOtZNFM3XqKlWkcPUSpm.FSD2hker5qSOi2sqikIKPoDMrFo2hdm	Bui Thanh Long	https://randomuser.me/api/portraits/men/46.jpg	email	user	t	2024-11-13 21:02:00+07	2024-11-14 08:02:00+07	\N
15c5c3c0-1689-455e-8584-d538646b8712	do.thanh.long+work-473@yahoo.com	$2a$14$CR0kRKRJcShPhplrZ9FbUeEqiqNjR9w0B1BjIp.3Ig3dF8RXaTQ.K	Do Thanh Long	https://randomuser.me/api/portraits/men/47.jpg	email	user	t	2024-11-16 21:19:00+07	2024-11-17 09:19:00+07	\N
43a5b8b7-92ea-42cc-8d28-21eba1c1d83a	hoang.thanh.long+studio-483@hotmail.com	$2a$14$e/U9Fs93QJS8DSmFmKaVh.GkZuOTrglDUhmBMDK42XEUNt38.EEka	Hoang Thanh Long	https://randomuser.me/api/portraits/men/48.jpg	google	user	t	2024-11-19 21:36:00+07	2024-11-20 10:36:00+07	\N
11fc8297-fa35-4189-bb9c-4a497fbdaaa8	phan.thanh.long+room-493@gmail.com	$2a$14$MaIPOWICZ7BLqm9MmIvvX.wEMu0Ya5q.cjjcqoz.wUBynoz8EntGK	Phan Thanh Long	https://randomuser.me/api/portraits/men/49.jpg	email	user	t	2024-11-22 21:53:00+07	2024-11-23 11:53:00+07	\N
734e649d-8e40-47a8-a3e3-8ee3819d6b79	dang.thanh.long+dev-503@outlook.com	$2a$14$anhu5t9140sV6pYhuhFg4u9YUQU4fllQSfgTxq5Y0wGimpuxoh4E2	Dang Thanh Long	https://randomuser.me/api/portraits/men/50.jpg	email	user	t	2024-11-25 22:10:00+07	2024-11-26 13:10:00+07	\N
f04d06b8-061d-4869-a6e7-29453c44fed0	nguyen.duy.khanh+mail-513@proton.me	$2a$14$k5UpgSEiLnzDm7O1RvqfhuFW0b2ZbzbXn8cB3lyEoRm61g3pyo.Cy	Nguyen Duy Khanh	https://randomuser.me/api/portraits/men/51.jpg	google	admin	t	2024-11-28 22:27:00+07	2024-11-29 14:27:00+07	\N
acb5c613-a621-4bbb-83f4-01de940195a2	tran.duy.khanh+beta-523@icloud.com	$2a$14$uaFpcR2sD3E7goO1KzgYhuRqiLCRHw/Dqgi88i.jBKeN6gmcdDrDW	Tran Duy Khanh	https://randomuser.me/api/portraits/men/52.jpg	email	user	t	2024-12-01 22:44:00+07	2024-12-02 15:44:00+07	\N
b0c917fa-5db1-4598-b019-928f558358f8	le.duy.khanh+hub-533@yahoo.com	$2a$14$4Pq8PcjvguzCgZ2WgAVs8eAMkEla2pbLnAUsFLQQa052Kr64BR.lK	Le Duy Khanh	https://randomuser.me/api/portraits/men/53.jpg	email	user	t	2024-12-04 23:01:00+07	2024-12-05 17:01:00+07	\N
a77ed17c-43a5-40ea-9e7f-e970f137794f	pham.duy.khanh+office-543@hotmail.com	$2a$14$a3QO4AngPPpQiiDhHTzSyeZZTeE2bCSx6gghC0Rx9bEg/jCCbMocW	Pham Duy Khanh	https://randomuser.me/api/portraits/men/54.jpg	google	user	t	2024-12-07 23:18:00+07	2024-12-08 00:18:00+07	\N
5806164c-a5df-4dc3-a631-ea31dc9eeb85	vo.duy.khanh+zen-553@gmail.com	$2a$14$MQUxPsBlWPZ5NonVxMcoxO5pu7NKhNlpdrrLxOXPW4ISNZFw1XL56	Vo Duy Khanh	https://randomuser.me/api/portraits/men/55.jpg	email	user	t	2024-12-10 23:35:00+07	2024-12-11 01:35:00+07	\N
c8d07817-492c-4172-8036-5a484d75ff8b	bui.duy.khanh+cafe-563@outlook.com	$2a$14$2kOtZNFM3XqKlWkcPUSpm.FSD2hker5qSOi2sqikIKPoDMrFo2hdm	Bui Duy Khanh	https://randomuser.me/api/portraits/men/56.jpg	email	user	t	2024-12-13 23:52:00+07	2024-12-14 02:52:00+07	\N
0a8ae639-b06c-4dd9-9ffc-b89a539c93a2	do.duy.khanh+sky-573@proton.me	$2a$14$CR0kRKRJcShPhplrZ9FbUeEqiqNjR9w0B1BjIp.3Ig3dF8RXaTQ.K	Do Duy Khanh	https://randomuser.me/api/portraits/men/57.jpg	google	user	t	2024-12-17 00:09:00+07	2024-12-17 04:09:00+07	\N
62f757d1-321d-41c6-90f1-e4ffaf49b5a3	hoang.duy.khanh+live-583@icloud.com	$2a$14$e/U9Fs93QJS8DSmFmKaVh.GkZuOTrglDUhmBMDK42XEUNt38.EEka	Hoang Duy Khanh	https://randomuser.me/api/portraits/men/58.jpg	email	user	t	2024-12-20 00:26:00+07	2024-12-20 05:26:00+07	\N
4269fe21-af2a-4822-b554-b978496b449d	phan.duy.khanh+cloud-593@yahoo.com	$2a$14$MaIPOWICZ7BLqm9MmIvvX.wEMu0Ya5q.cjjcqoz.wUBynoz8EntGK	Phan Duy Khanh	https://randomuser.me/api/portraits/men/59.jpg	email	user	t	2024-12-23 00:43:00+07	2024-12-23 06:43:00+07	\N
0c0caa72-457f-4ef9-a65e-fe2e4e09f5eb	dang.duy.khanh+home-603@hotmail.com	$2a$14$anhu5t9140sV6pYhuhFg4u9YUQU4fllQSfgTxq5Y0wGimpuxoh4E2	Dang Duy Khanh	https://randomuser.me/api/portraits/men/60.jpg	google	user	t	2024-12-26 01:00:00+07	2024-12-26 08:00:00+07	\N
918a6e99-27b2-49f7-94c6-50ee150d33ff	nguyen.gia.phuc+sg-613@gmail.com	$2a$14$k5UpgSEiLnzDm7O1RvqfhuFW0b2ZbzbXn8cB3lyEoRm61g3pyo.Cy	Nguyen Gia Phuc	https://randomuser.me/api/portraits/men/61.jpg	email	user	t	2024-12-29 01:17:00+07	2024-12-29 09:17:00+07	\N
dce44b5d-4166-4d66-ae76-4d15d4eabc8e	tran.gia.phuc+hn-623@outlook.com	$2a$14$uaFpcR2sD3E7goO1KzgYhuRqiLCRHw/Dqgi88i.jBKeN6gmcdDrDW	Tran Gia Phuc	https://randomuser.me/api/portraits/men/62.jpg	email	user	t	2025-01-01 01:34:00+07	2025-01-01 10:34:00+07	\N
e35aebc6-096a-48cc-bdb1-9b334e2f4c9c	le.gia.phuc+q1-633@proton.me	$2a$14$4Pq8PcjvguzCgZ2WgAVs8eAMkEla2pbLnAUsFLQQa052Kr64BR.lK	Le Gia Phuc	https://randomuser.me/api/portraits/men/63.jpg	google	user	t	2025-01-04 01:51:00+07	2025-01-04 11:51:00+07	\N
63b52096-42b3-4f3d-ad7b-f886997b41df	pham.gia.phuc+q3-643@icloud.com	$2a$14$a3QO4AngPPpQiiDhHTzSyeZZTeE2bCSx6gghC0Rx9bEg/jCCbMocW	Pham Gia Phuc	https://randomuser.me/api/portraits/men/64.jpg	email	user	t	2025-01-07 02:08:00+07	2025-01-07 13:08:00+07	\N
b66669fc-a4d4-4b6f-947c-73d3a9b76648	vo.gia.phuc+q7-653@yahoo.com	$2a$14$MQUxPsBlWPZ5NonVxMcoxO5pu7NKhNlpdrrLxOXPW4ISNZFw1XL56	Vo Gia Phuc	https://randomuser.me/api/portraits/men/65.jpg	email	user	t	2025-01-10 02:25:00+07	2025-01-10 14:25:00+07	\N
f53f1bb3-7d0a-4d00-b286-a783dddaa10e	bui.gia.phuc+bt-663@hotmail.com	$2a$14$2kOtZNFM3XqKlWkcPUSpm.FSD2hker5qSOi2sqikIKPoDMrFo2hdm	Bui Gia Phuc	https://randomuser.me/api/portraits/men/66.jpg	google	user	t	2025-01-13 02:42:00+07	2025-01-13 15:42:00+07	\N
07bbb08b-42c4-4d67-8708-9aec5df10ca8	do.gia.phuc+work-673@gmail.com	$2a$14$CR0kRKRJcShPhplrZ9FbUeEqiqNjR9w0B1BjIp.3Ig3dF8RXaTQ.K	Do Gia Phuc	https://randomuser.me/api/portraits/men/67.jpg	email	user	t	2025-01-16 02:59:00+07	2025-01-16 16:59:00+07	\N
f77584d2-536e-43e9-b457-08ff0a5b07c8	hoang.gia.phuc+studio-683@outlook.com	$2a$14$e/U9Fs93QJS8DSmFmKaVh.GkZuOTrglDUhmBMDK42XEUNt38.EEka	Hoang Gia Phuc	https://randomuser.me/api/portraits/men/68.jpg	email	user	t	2025-01-19 03:16:00+07	2025-01-19 18:16:00+07	\N
d76ecb61-256b-48ad-a4db-a0b583b1d7db	phan.gia.phuc+room-693@proton.me	$2a$14$MaIPOWICZ7BLqm9MmIvvX.wEMu0Ya5q.cjjcqoz.wUBynoz8EntGK	Phan Gia Phuc	https://randomuser.me/api/portraits/men/69.jpg	google	user	t	2025-01-22 03:33:00+07	2025-01-22 19:33:00+07	\N
afa539fb-0998-4aa3-a558-cfbc32d6fbc2	dang.gia.phuc+dev-703@icloud.com	$2a$14$anhu5t9140sV6pYhuhFg4u9YUQU4fllQSfgTxq5Y0wGimpuxoh4E2	Dang Gia Phuc	https://randomuser.me/api/portraits/men/70.jpg	email	user	t	2025-01-25 03:50:00+07	2025-01-25 20:50:00+07	\N
29de145c-6054-4769-92fe-0f6d725f50df	nguyen.viet.anh+mail-713@yahoo.com	$2a$14$k5UpgSEiLnzDm7O1RvqfhuFW0b2ZbzbXn8cB3lyEoRm61g3pyo.Cy	Nguyen Viet Anh	https://randomuser.me/api/portraits/men/71.jpg	email	user	t	2025-01-28 04:07:00+07	2025-01-28 22:07:00+07	\N
1908373d-6215-4c35-b83e-c6e5e586c8d9	tran.viet.anh+beta-723@hotmail.com	$2a$14$uaFpcR2sD3E7goO1KzgYhuRqiLCRHw/Dqgi88i.jBKeN6gmcdDrDW	Tran Viet Anh	https://randomuser.me/api/portraits/men/72.jpg	google	user	t	2025-01-31 04:24:00+07	2025-01-31 05:24:00+07	\N
2f207127-f7b4-48c8-9d2e-f8016e847c65	le.viet.anh+hub-733@gmail.com	$2a$14$4Pq8PcjvguzCgZ2WgAVs8eAMkEla2pbLnAUsFLQQa052Kr64BR.lK	Le Viet Anh	https://randomuser.me/api/portraits/men/73.jpg	email	user	t	2025-02-03 04:41:00+07	2025-02-03 06:41:00+07	\N
f621ffa6-be35-4e8a-bab4-d8988341f4e8	pham.viet.anh+office-743@outlook.com	$2a$14$a3QO4AngPPpQiiDhHTzSyeZZTeE2bCSx6gghC0Rx9bEg/jCCbMocW	Pham Viet Anh	https://randomuser.me/api/portraits/men/74.jpg	email	user	t	2025-02-06 04:58:00+07	2025-02-06 07:58:00+07	\N
753e78d4-c1ac-4dee-bef3-e38547c23cf0	vo.viet.anh+zen-753@proton.me	$2a$14$MQUxPsBlWPZ5NonVxMcoxO5pu7NKhNlpdrrLxOXPW4ISNZFw1XL56	Vo Viet Anh	https://randomuser.me/api/portraits/men/75.jpg	google	admin	t	2025-02-09 05:15:00+07	2025-02-09 09:15:00+07	\N
a688e94f-e278-4414-9885-9ca387e06a7d	bui.viet.anh+cafe-763@icloud.com	$2a$14$2kOtZNFM3XqKlWkcPUSpm.FSD2hker5qSOi2sqikIKPoDMrFo2hdm	Bui Viet Anh	https://randomuser.me/api/portraits/men/76.jpg	email	user	t	2025-02-12 05:32:00+07	2025-02-12 10:32:00+07	\N
1d5a1f49-d31d-4890-914f-f066dbf449d2	do.viet.anh+sky-773@yahoo.com	$2a$14$CR0kRKRJcShPhplrZ9FbUeEqiqNjR9w0B1BjIp.3Ig3dF8RXaTQ.K	Do Viet Anh	https://randomuser.me/api/portraits/men/77.jpg	email	user	t	2025-02-15 05:49:00+07	2025-02-15 11:49:00+07	\N
36c94385-1777-4f97-97f4-23af7241b973	hoang.viet.anh+live-783@hotmail.com	$2a$14$e/U9Fs93QJS8DSmFmKaVh.GkZuOTrglDUhmBMDK42XEUNt38.EEka	Hoang Viet Anh	https://randomuser.me/api/portraits/men/78.jpg	google	user	t	2025-02-18 06:06:00+07	2025-02-18 13:06:00+07	\N
41646770-f189-4fb8-a5b3-523e72b7622d	phan.viet.anh+cloud-793@gmail.com	$2a$14$MaIPOWICZ7BLqm9MmIvvX.wEMu0Ya5q.cjjcqoz.wUBynoz8EntGK	Phan Viet Anh	https://randomuser.me/api/portraits/men/79.jpg	email	user	t	2025-02-21 06:23:00+07	2025-02-21 14:23:00+07	\N
05feaec0-02ba-414c-a139-9811a4e5d2c4	dang.viet.anh+home-803@outlook.com	$2a$14$anhu5t9140sV6pYhuhFg4u9YUQU4fllQSfgTxq5Y0wGimpuxoh4E2	Dang Viet Anh	https://randomuser.me/api/portraits/men/80.jpg	email	user	t	2025-02-24 06:40:00+07	2025-02-24 15:40:00+07	\N
9339679e-71a1-4fd7-ab06-69d049f25808	nguyen.hoai.nam+sg-813@proton.me	$2a$14$k5UpgSEiLnzDm7O1RvqfhuFW0b2ZbzbXn8cB3lyEoRm61g3pyo.Cy	Nguyen Hoai Nam	https://randomuser.me/api/portraits/men/81.jpg	google	user	t	2025-02-27 06:57:00+07	2025-02-27 16:57:00+07	\N
082d2396-6664-4db8-a705-23b44d31b795	tran.hoai.nam+hn-823@icloud.com	$2a$14$uaFpcR2sD3E7goO1KzgYhuRqiLCRHw/Dqgi88i.jBKeN6gmcdDrDW	Tran Hoai Nam	https://randomuser.me/api/portraits/men/82.jpg	email	user	t	2025-03-02 07:14:00+07	2025-03-02 18:14:00+07	\N
0c4af56f-9ce3-46b4-bee6-cb9c11da1fc0	le.hoai.nam+q1-833@yahoo.com	$2a$14$4Pq8PcjvguzCgZ2WgAVs8eAMkEla2pbLnAUsFLQQa052Kr64BR.lK	Le Hoai Nam	https://randomuser.me/api/portraits/men/83.jpg	email	user	t	2025-03-05 07:31:00+07	2025-03-05 19:31:00+07	\N
1db1e98f-95e9-449c-8b2a-a0030a5d03b6	pham.hoai.nam+q3-843@hotmail.com	$2a$14$a3QO4AngPPpQiiDhHTzSyeZZTeE2bCSx6gghC0Rx9bEg/jCCbMocW	Pham Hoai Nam	https://randomuser.me/api/portraits/men/84.jpg	google	user	t	2025-03-08 07:48:00+07	2025-03-08 20:48:00+07	\N
8d4f3781-7e4b-4718-b7ca-8c5e404fe385	vo.hoai.nam+q7-853@gmail.com	$2a$14$MQUxPsBlWPZ5NonVxMcoxO5pu7NKhNlpdrrLxOXPW4ISNZFw1XL56	Vo Hoai Nam	https://randomuser.me/api/portraits/men/85.jpg	email	user	t	2025-03-10 08:05:00+07	2025-03-10 22:05:00+07	\N
cd1eb219-c8e9-4ece-90df-c39e20a1270e	bui.hoai.nam+bt-863@outlook.com	$2a$14$2kOtZNFM3XqKlWkcPUSpm.FSD2hker5qSOi2sqikIKPoDMrFo2hdm	Bui Hoai Nam	https://randomuser.me/api/portraits/men/86.jpg	email	user	t	2025-03-13 08:22:00+07	2025-03-13 23:22:00+07	\N
e22f1ee5-26e9-49b0-a28b-ea288a16ddf0	do.hoai.nam+work-873@proton.me	$2a$14$CR0kRKRJcShPhplrZ9FbUeEqiqNjR9w0B1BjIp.3Ig3dF8RXaTQ.K	Do Hoai Nam	https://randomuser.me/api/portraits/men/87.jpg	google	user	t	2025-03-16 08:39:00+07	2025-03-17 00:39:00+07	\N
2126089d-09e0-4da4-9e07-2f022df92837	phan.hoai.nam+room-893@yahoo.com	$2a$14$MaIPOWICZ7BLqm9MmIvvX.wEMu0Ya5q.cjjcqoz.wUBynoz8EntGK	Phan Hoai Nam	https://randomuser.me/api/portraits/men/89.jpg	email	user	t	2025-03-22 09:13:00+07	2025-03-23 03:13:00+07	\N
dd323177-fce9-4d3d-9c05-3fbad16f8ba5	dang.hoai.nam+dev-903@hotmail.com	$2a$14$anhu5t9140sV6pYhuhFg4u9YUQU4fllQSfgTxq5Y0wGimpuxoh4E2	Dang Hoai Nam	https://randomuser.me/api/portraits/men/90.jpg	google	user	t	2025-03-25 09:30:00+07	2025-03-25 10:30:00+07	\N
9ac6a6b8-3670-4300-bbbe-ee728a5450e5	nguyen.nhat.minh+mail-913@gmail.com	$2a$14$k5UpgSEiLnzDm7O1RvqfhuFW0b2ZbzbXn8cB3lyEoRm61g3pyo.Cy	Nguyen Nhat Minh	https://randomuser.me/api/portraits/men/91.jpg	email	user	t	2025-03-28 09:47:00+07	2025-03-28 11:47:00+07	\N
03405749-dd86-4bff-a06c-ec78dae43c21	tran.nhat.minh+beta-923@outlook.com	$2a$14$uaFpcR2sD3E7goO1KzgYhuRqiLCRHw/Dqgi88i.jBKeN6gmcdDrDW	Tran Nhat Minh	https://randomuser.me/api/portraits/men/92.jpg	email	user	t	2025-03-31 10:04:00+07	2025-03-31 13:04:00+07	\N
5c93aa90-9b52-4641-8ad0-c626dec91e63	le.nhat.minh+hub-933@proton.me	$2a$14$4Pq8PcjvguzCgZ2WgAVs8eAMkEla2pbLnAUsFLQQa052Kr64BR.lK	Le Nhat Minh	https://randomuser.me/api/portraits/men/93.jpg	google	user	t	2025-04-03 10:21:00+07	2025-04-03 14:21:00+07	\N
85a5eea9-b8d1-4e65-8b21-b826cafb2dee	pham.nhat.minh+office-943@icloud.com	$2a$14$a3QO4AngPPpQiiDhHTzSyeZZTeE2bCSx6gghC0Rx9bEg/jCCbMocW	Pham Nhat Minh	https://randomuser.me/api/portraits/men/94.jpg	email	user	t	2025-04-06 10:38:00+07	2025-04-06 15:38:00+07	\N
ff43c7c0-923d-403f-accf-effec1018fdf	vo.nhat.minh+zen-953@yahoo.com	$2a$14$MQUxPsBlWPZ5NonVxMcoxO5pu7NKhNlpdrrLxOXPW4ISNZFw1XL56	Vo Nhat Minh	https://randomuser.me/api/portraits/men/95.jpg	email	user	t	2025-04-09 10:55:00+07	2025-04-09 16:55:00+07	\N
946f79de-997e-40d3-ba61-bc7fb7a2d48c	bui.nhat.minh+cafe-963@hotmail.com	$2a$14$2kOtZNFM3XqKlWkcPUSpm.FSD2hker5qSOi2sqikIKPoDMrFo2hdm	Bui Nhat Minh	https://randomuser.me/api/portraits/men/96.jpg	google	user	t	2025-04-12 11:12:00+07	2025-04-12 18:12:00+07	\N
980ef279-ec66-48ff-adf1-436c6b99005c	do.nhat.minh+sky-973@gmail.com	$2a$14$CR0kRKRJcShPhplrZ9FbUeEqiqNjR9w0B1BjIp.3Ig3dF8RXaTQ.K	Do Nhat Minh	https://randomuser.me/api/portraits/men/97.jpg	email	user	t	2025-04-15 11:29:00+07	2025-04-15 19:29:00+07	\N
e80e60d9-5198-412f-b943-a98e24c8441d	hoang.nhat.minh+live-983@outlook.com	$2a$14$e/U9Fs93QJS8DSmFmKaVh.GkZuOTrglDUhmBMDK42XEUNt38.EEka	Hoang Nhat Minh	https://randomuser.me/api/portraits/men/98.jpg	email	user	t	2025-04-18 11:46:00+07	2025-04-18 20:46:00+07	\N
a69b94b3-eddf-4999-b24e-0774f3e7faa7	phan.nhat.minh+cloud-993@proton.me	$2a$14$MaIPOWICZ7BLqm9MmIvvX.wEMu0Ya5q.cjjcqoz.wUBynoz8EntGK	Phan Nhat Minh	https://randomuser.me/api/portraits/men/99.jpg	google	admin	t	2025-04-21 12:03:00+07	2025-04-21 22:03:00+07	\N
8698a3a9-e781-4a39-b9c0-a245504edc29	dang.nhat.minh+home-1003@icloud.com	$2a$14$anhu5t9140sV6pYhuhFg4u9YUQU4fllQSfgTxq5Y0wGimpuxoh4E2	Dang Nhat Minh	https://randomuser.me/api/portraits/men/1.jpg	email	user	t	2025-04-24 12:20:00+07	2025-04-24 23:20:00+07	\N
65215e91-ee76-4887-bab8-56cf5d1cfd84	nguyen.phuong.linh+sg-1013@yahoo.com	$2a$14$k5UpgSEiLnzDm7O1RvqfhuFW0b2ZbzbXn8cB3lyEoRm61g3pyo.Cy	Nguyen Phuong Linh	https://randomuser.me/api/portraits/women/1.jpg	email	user	t	2025-04-27 12:37:00+07	2025-04-28 00:37:00+07	\N
b82acd5d-e0b4-42db-92ee-22a7b77f0466	tran.phuong.linh+hn-1023@hotmail.com	$2a$14$uaFpcR2sD3E7goO1KzgYhuRqiLCRHw/Dqgi88i.jBKeN6gmcdDrDW	Tran Phuong Linh	https://randomuser.me/api/portraits/women/2.jpg	google	user	t	2025-04-30 12:54:00+07	2025-05-01 01:54:00+07	\N
173155af-f7dc-492c-8273-aa5d8d51fd0c	le.phuong.linh+q1-1033@gmail.com	$2a$14$4Pq8PcjvguzCgZ2WgAVs8eAMkEla2pbLnAUsFLQQa052Kr64BR.lK	Le Phuong Linh	https://randomuser.me/api/portraits/women/3.jpg	email	user	t	2025-05-03 13:11:00+07	2025-05-04 03:11:00+07	\N
39a33df9-b71e-400c-9fc1-7b52c822417c	pham.phuong.linh+q3-1043@outlook.com	$2a$14$a3QO4AngPPpQiiDhHTzSyeZZTeE2bCSx6gghC0Rx9bEg/jCCbMocW	Pham Phuong Linh	https://randomuser.me/api/portraits/women/4.jpg	email	user	t	2025-05-06 13:28:00+07	2025-05-07 04:28:00+07	\N
aaa14166-7a6f-4396-af79-adb30e52864b	vo.phuong.linh+q7-1053@proton.me	$2a$14$MQUxPsBlWPZ5NonVxMcoxO5pu7NKhNlpdrrLxOXPW4ISNZFw1XL56	Vo Phuong Linh	https://randomuser.me/api/portraits/women/5.jpg	google	user	t	2025-05-09 13:45:00+07	2025-05-10 05:45:00+07	\N
d37dc813-e2a2-47b6-8e08-e26abc8be82a	bui.phuong.linh+bt-1063@icloud.com	$2a$14$2kOtZNFM3XqKlWkcPUSpm.FSD2hker5qSOi2sqikIKPoDMrFo2hdm	Bui Phuong Linh	https://randomuser.me/api/portraits/women/6.jpg	email	user	t	2025-05-12 14:02:00+07	2025-05-13 07:02:00+07	\N
22a2d0f1-e7f9-42e3-aaa4-0094a5c79df3	do.phuong.linh+work-1073@yahoo.com	$2a$14$CR0kRKRJcShPhplrZ9FbUeEqiqNjR9w0B1BjIp.3Ig3dF8RXaTQ.K	Do Phuong Linh	https://randomuser.me/api/portraits/women/7.jpg	email	user	t	2025-05-15 14:19:00+07	2025-05-16 08:19:00+07	\N
7e9a3f6f-45d9-4f58-ac32-bbf5ac11b815	hoang.phuong.linh+studio-1083@hotmail.com	$2a$14$e/U9Fs93QJS8DSmFmKaVh.GkZuOTrglDUhmBMDK42XEUNt38.EEka	Hoang Phuong Linh	https://randomuser.me/api/portraits/women/8.jpg	google	user	t	2025-05-18 14:36:00+07	2025-05-18 15:36:00+07	\N
89d8b8e3-ff85-4038-b0af-f9d49a507ee4	phan.phuong.linh+room-1093@gmail.com	$2a$14$MaIPOWICZ7BLqm9MmIvvX.wEMu0Ya5q.cjjcqoz.wUBynoz8EntGK	Phan Phuong Linh	https://randomuser.me/api/portraits/women/9.jpg	email	user	t	2025-05-21 14:53:00+07	2025-05-21 16:53:00+07	\N
b84dd63c-9267-4cc3-b105-7be30e6741bb	dang.phuong.linh+dev-1103@outlook.com	$2a$14$anhu5t9140sV6pYhuhFg4u9YUQU4fllQSfgTxq5Y0wGimpuxoh4E2	Dang Phuong Linh	https://randomuser.me/api/portraits/women/10.jpg	email	user	t	2025-05-24 15:10:00+07	2025-05-24 18:10:00+07	\N
8b8df9b6-b3ff-4b22-900c-158d1f74589b	nguyen.thao.my+mail-1113@proton.me	$2a$14$k5UpgSEiLnzDm7O1RvqfhuFW0b2ZbzbXn8cB3lyEoRm61g3pyo.Cy	Nguyen Thao My	https://randomuser.me/api/portraits/women/11.jpg	google	user	t	2025-05-27 15:27:00+07	2025-05-27 19:27:00+07	\N
5a9fbed8-62f5-46c8-8a05-244e55217221	tran.thao.my+beta-1123@icloud.com	$2a$14$uaFpcR2sD3E7goO1KzgYhuRqiLCRHw/Dqgi88i.jBKeN6gmcdDrDW	Tran Thao My	https://randomuser.me/api/portraits/women/12.jpg	email	user	t	2025-05-30 15:44:00+07	2025-05-30 20:44:00+07	\N
6027c865-ef17-44f2-9995-8ceb76a619bd	le.thao.my+hub-1133@yahoo.com	$2a$14$4Pq8PcjvguzCgZ2WgAVs8eAMkEla2pbLnAUsFLQQa052Kr64BR.lK	Le Thao My	https://randomuser.me/api/portraits/women/13.jpg	email	user	t	2025-06-02 16:01:00+07	2025-06-02 22:01:00+07	\N
4d7629ff-3b8d-4018-a3b5-ac46a12a62fe	pham.thao.my+office-1143@hotmail.com	$2a$14$a3QO4AngPPpQiiDhHTzSyeZZTeE2bCSx6gghC0Rx9bEg/jCCbMocW	Pham Thao My	https://randomuser.me/api/portraits/women/14.jpg	google	user	t	2025-06-05 16:18:00+07	2025-06-05 23:18:00+07	\N
44575f93-fbd1-42d7-b263-6100c8864620	vo.thao.my+zen-1153@gmail.com	$2a$14$MQUxPsBlWPZ5NonVxMcoxO5pu7NKhNlpdrrLxOXPW4ISNZFw1XL56	Vo Thao My	https://randomuser.me/api/portraits/women/15.jpg	email	user	t	2025-06-08 16:35:00+07	2025-06-09 00:35:00+07	\N
d2e04149-487b-41eb-b54c-816b038463aa	bui.thao.my+cafe-1163@outlook.com	$2a$14$2kOtZNFM3XqKlWkcPUSpm.FSD2hker5qSOi2sqikIKPoDMrFo2hdm	Bui Thao My	https://randomuser.me/api/portraits/women/16.jpg	email	user	t	2025-06-11 16:52:00+07	2025-06-12 01:52:00+07	\N
eaaeba57-46d2-4f5c-8178-e705995b7e2f	hoang.thao.my+live-1183@icloud.com	$2a$14$e/U9Fs93QJS8DSmFmKaVh.GkZuOTrglDUhmBMDK42XEUNt38.EEka	Hoang Thao My	https://randomuser.me/api/portraits/women/18.jpg	email	user	t	2025-06-17 17:26:00+07	2025-06-18 04:26:00+07	\N
6378fa2c-f804-451f-bd6b-d5cc97624825	phan.thao.my+cloud-1193@yahoo.com	$2a$14$MaIPOWICZ7BLqm9MmIvvX.wEMu0Ya5q.cjjcqoz.wUBynoz8EntGK	Phan Thao My	https://randomuser.me/api/portraits/women/19.jpg	email	user	t	2025-06-20 17:43:00+07	2025-06-21 05:43:00+07	\N
f5918b6f-debe-4c8e-9626-9fad8426321c	dang.thao.my+home-1203@hotmail.com	$2a$14$anhu5t9140sV6pYhuhFg4u9YUQU4fllQSfgTxq5Y0wGimpuxoh4E2	Dang Thao My	https://randomuser.me/api/portraits/women/20.jpg	google	user	t	2025-06-23 18:00:00+07	2025-06-24 07:00:00+07	\N
4c04df2c-5d73-4801-a411-ce6133e99866	nguyen.khanh.an+sg-1213@gmail.com	$2a$14$k5UpgSEiLnzDm7O1RvqfhuFW0b2ZbzbXn8cB3lyEoRm61g3pyo.Cy	Nguyen Khanh An	https://randomuser.me/api/portraits/women/21.jpg	email	user	t	2025-06-26 18:17:00+07	2025-06-27 08:17:00+07	\N
48843088-6627-4b1e-bac8-2594728a5030	tran.khanh.an+hn-1223@outlook.com	$2a$14$uaFpcR2sD3E7goO1KzgYhuRqiLCRHw/Dqgi88i.jBKeN6gmcdDrDW	Tran Khanh An	https://randomuser.me/api/portraits/women/22.jpg	email	user	t	2025-06-29 18:34:00+07	2025-06-30 09:34:00+07	\N
f57915f5-a610-46b8-94f2-127a4787e7a2	le.khanh.an+q1-1233@proton.me	$2a$14$4Pq8PcjvguzCgZ2WgAVs8eAMkEla2pbLnAUsFLQQa052Kr64BR.lK	Le Khanh An	https://randomuser.me/api/portraits/women/23.jpg	google	admin	t	2025-07-02 18:51:00+07	2025-07-03 10:51:00+07	\N
8b1d49ac-9ac1-47b2-a4c2-cafbbc7a13be	pham.khanh.an+q3-1243@icloud.com	$2a$14$a3QO4AngPPpQiiDhHTzSyeZZTeE2bCSx6gghC0Rx9bEg/jCCbMocW	Pham Khanh An	https://randomuser.me/api/portraits/women/24.jpg	email	user	t	2025-07-05 19:08:00+07	2025-07-06 12:08:00+07	\N
dda1daa3-8bff-4ec8-9c2d-63f2bc8069f4	vo.khanh.an+q7-1253@yahoo.com	$2a$14$MQUxPsBlWPZ5NonVxMcoxO5pu7NKhNlpdrrLxOXPW4ISNZFw1XL56	Vo Khanh An	https://randomuser.me/api/portraits/women/25.jpg	email	user	t	2025-07-08 19:25:00+07	2025-07-09 13:25:00+07	\N
a7ed94a5-7893-47ec-869d-95c14c6bd93f	bui.khanh.an+bt-1263@hotmail.com	$2a$14$2kOtZNFM3XqKlWkcPUSpm.FSD2hker5qSOi2sqikIKPoDMrFo2hdm	Bui Khanh An	https://randomuser.me/api/portraits/women/26.jpg	google	user	t	2025-07-11 19:42:00+07	2025-07-11 20:42:00+07	\N
ada6cd05-3d5d-46af-ab59-2f12a0724fe9	do.khanh.an+work-1273@gmail.com	$2a$14$CR0kRKRJcShPhplrZ9FbUeEqiqNjR9w0B1BjIp.3Ig3dF8RXaTQ.K	Do Khanh An	https://randomuser.me/api/portraits/women/27.jpg	email	user	t	2025-07-14 19:59:00+07	2025-07-14 21:59:00+07	\N
3dd72e2c-de28-4ba7-9dff-7e3724ba50f7	hoang.khanh.an+studio-1283@outlook.com	$2a$14$e/U9Fs93QJS8DSmFmKaVh.GkZuOTrglDUhmBMDK42XEUNt38.EEka	Hoang Khanh An	https://randomuser.me/api/portraits/women/28.jpg	email	user	t	2025-07-17 20:16:00+07	2025-07-17 23:16:00+07	\N
d5c6602c-3ff9-41dd-ac23-b4004fff2049	phan.khanh.an+room-1293@proton.me	$2a$14$MaIPOWICZ7BLqm9MmIvvX.wEMu0Ya5q.cjjcqoz.wUBynoz8EntGK	Phan Khanh An	https://randomuser.me/api/portraits/women/29.jpg	google	user	t	2025-07-20 20:33:00+07	2025-07-21 00:33:00+07	\N
14538b14-4fd6-483a-8280-57d4d47aad92	dang.khanh.an+dev-1303@icloud.com	$2a$14$anhu5t9140sV6pYhuhFg4u9YUQU4fllQSfgTxq5Y0wGimpuxoh4E2	Dang Khanh An	https://randomuser.me/api/portraits/women/30.jpg	email	user	t	2025-07-23 20:50:00+07	2025-07-24 01:50:00+07	\N
c110dd12-ee74-4443-8f16-22b9bef526b0	nguyen.ngoc.han+mail-1313@yahoo.com	$2a$14$k5UpgSEiLnzDm7O1RvqfhuFW0b2ZbzbXn8cB3lyEoRm61g3pyo.Cy	Nguyen Ngoc Han	https://randomuser.me/api/portraits/women/31.jpg	email	user	t	2025-07-26 21:07:00+07	2025-07-27 03:07:00+07	\N
26470643-cc7d-451e-ae52-38f16a6d8b2f	tran.ngoc.han+beta-1323@hotmail.com	$2a$14$uaFpcR2sD3E7goO1KzgYhuRqiLCRHw/Dqgi88i.jBKeN6gmcdDrDW	Tran Ngoc Han	https://randomuser.me/api/portraits/women/32.jpg	google	user	t	2025-07-29 21:24:00+07	2025-07-30 04:24:00+07	\N
ff923d8c-050d-4820-b74d-8c1eaaf0ffda	le.ngoc.han+hub-1333@gmail.com	$2a$14$4Pq8PcjvguzCgZ2WgAVs8eAMkEla2pbLnAUsFLQQa052Kr64BR.lK	Le Ngoc Han	https://randomuser.me/api/portraits/women/33.jpg	email	user	t	2025-08-01 21:41:00+07	2025-08-02 05:41:00+07	\N
99c0a6ce-45de-4fbc-85ac-6e49dc065ee6	pham.ngoc.han+office-1343@outlook.com	$2a$14$a3QO4AngPPpQiiDhHTzSyeZZTeE2bCSx6gghC0Rx9bEg/jCCbMocW	Pham Ngoc Han	https://randomuser.me/api/portraits/women/34.jpg	email	user	t	2025-08-04 21:58:00+07	2025-08-05 06:58:00+07	\N
88adec28-2982-4071-b13f-981626f7a144	vo.ngoc.han+zen-1353@proton.me	$2a$14$MQUxPsBlWPZ5NonVxMcoxO5pu7NKhNlpdrrLxOXPW4ISNZFw1XL56	Vo Ngoc Han	https://randomuser.me/api/portraits/women/35.jpg	google	user	t	2025-08-07 22:15:00+07	2025-08-08 08:15:00+07	\N
51a19dab-87df-4d46-9b78-b0a51c0d6c46	bui.ngoc.han+cafe-1363@icloud.com	$2a$14$2kOtZNFM3XqKlWkcPUSpm.FSD2hker5qSOi2sqikIKPoDMrFo2hdm	Bui Ngoc Han	https://randomuser.me/api/portraits/women/36.jpg	email	user	t	2025-08-10 22:32:00+07	2025-08-11 09:32:00+07	\N
e67cc3e8-dfad-4bb0-b102-f03ed97b7d67	do.ngoc.han+sky-1373@yahoo.com	$2a$14$CR0kRKRJcShPhplrZ9FbUeEqiqNjR9w0B1BjIp.3Ig3dF8RXaTQ.K	Do Ngoc Han	https://randomuser.me/api/portraits/women/37.jpg	email	user	t	2025-08-13 22:49:00+07	2025-08-14 10:49:00+07	\N
748837b1-9205-466d-ac46-03d02d794a99	hoang.ngoc.han+live-1383@hotmail.com	$2a$14$e/U9Fs93QJS8DSmFmKaVh.GkZuOTrglDUhmBMDK42XEUNt38.EEka	Hoang Ngoc Han	https://randomuser.me/api/portraits/women/38.jpg	google	user	t	2025-08-16 23:06:00+07	2025-08-17 12:06:00+07	\N
bff120f7-7cc8-49fa-b38e-80f52451f807	phan.ngoc.han+cloud-1393@gmail.com	$2a$14$MaIPOWICZ7BLqm9MmIvvX.wEMu0Ya5q.cjjcqoz.wUBynoz8EntGK	Phan Ngoc Han	https://randomuser.me/api/portraits/women/39.jpg	email	user	t	2025-08-19 23:23:00+07	2025-08-20 13:23:00+07	\N
f1c265ee-fbfc-42b3-8b26-f2c596ba80ee	dang.ngoc.han+home-1403@outlook.com	$2a$14$anhu5t9140sV6pYhuhFg4u9YUQU4fllQSfgTxq5Y0wGimpuxoh4E2	Dang Ngoc Han	https://randomuser.me/api/portraits/women/40.jpg	email	user	t	2025-08-22 23:40:00+07	2025-08-23 14:40:00+07	\N
80229c14-d962-4586-8970-db8e1bbbf388	nguyen.gia.han+sg-1413@proton.me	$2a$14$k5UpgSEiLnzDm7O1RvqfhuFW0b2ZbzbXn8cB3lyEoRm61g3pyo.Cy	Nguyen Gia Han	https://randomuser.me/api/portraits/women/41.jpg	google	user	t	2025-08-25 23:57:00+07	2025-08-26 15:57:00+07	\N
27783369-4832-4eac-bece-dab790e54494	tran.gia.han+hn-1423@icloud.com	$2a$14$uaFpcR2sD3E7goO1KzgYhuRqiLCRHw/Dqgi88i.jBKeN6gmcdDrDW	Tran Gia Han	https://randomuser.me/api/portraits/women/42.jpg	email	user	t	2025-08-29 00:14:00+07	2025-08-29 17:14:00+07	\N
8edf6365-e3cb-4e90-b901-c1297433bcc3	le.gia.han+q1-1433@yahoo.com	$2a$14$4Pq8PcjvguzCgZ2WgAVs8eAMkEla2pbLnAUsFLQQa052Kr64BR.lK	Le Gia Han	https://randomuser.me/api/portraits/women/43.jpg	email	user	t	2025-09-01 00:31:00+07	2025-09-01 18:31:00+07	\N
5e2d7730-cc2a-4e4b-9ef3-701666a7075f	pham.gia.han+q3-1443@hotmail.com	$2a$14$a3QO4AngPPpQiiDhHTzSyeZZTeE2bCSx6gghC0Rx9bEg/jCCbMocW	Pham Gia Han	https://randomuser.me/api/portraits/women/44.jpg	google	user	t	2025-09-04 00:48:00+07	2025-09-04 01:48:00+07	\N
2a6c3c07-389f-474e-a0f9-31f297cdb551	vo.gia.han+q7-1453@gmail.com	$2a$14$MQUxPsBlWPZ5NonVxMcoxO5pu7NKhNlpdrrLxOXPW4ISNZFw1XL56	Vo Gia Han	https://randomuser.me/api/portraits/women/45.jpg	email	user	t	2025-09-07 01:05:00+07	2025-09-07 03:05:00+07	\N
4be5f2d8-0bc9-49c3-88e2-005557ef20ff	bui.gia.han+bt-1463@outlook.com	$2a$14$2kOtZNFM3XqKlWkcPUSpm.FSD2hker5qSOi2sqikIKPoDMrFo2hdm	Bui Gia Han	https://randomuser.me/api/portraits/women/46.jpg	email	user	t	2025-09-10 01:22:00+07	2025-09-10 04:22:00+07	\N
96035e66-f6aa-400a-8bed-c5f3ca8141d4	do.gia.han+work-1473@proton.me	$2a$14$CR0kRKRJcShPhplrZ9FbUeEqiqNjR9w0B1BjIp.3Ig3dF8RXaTQ.K	Do Gia Han	https://randomuser.me/api/portraits/women/47.jpg	google	admin	t	2025-09-13 01:39:00+07	2025-09-13 05:39:00+07	\N
55c3883c-2ca0-4a35-8a22-0d6b7eb4e913	hoang.gia.han+studio-1483@icloud.com	$2a$14$e/U9Fs93QJS8DSmFmKaVh.GkZuOTrglDUhmBMDK42XEUNt38.EEka	Hoang Gia Han	https://randomuser.me/api/portraits/women/48.jpg	email	user	t	2025-09-16 01:56:00+07	2025-09-16 06:56:00+07	\N
a5e9c6a8-8d11-4b7f-a568-d3891dd08ee2	phan.gia.han+room-1493@yahoo.com	$2a$14$MaIPOWICZ7BLqm9MmIvvX.wEMu0Ya5q.cjjcqoz.wUBynoz8EntGK	Phan Gia Han	https://randomuser.me/api/portraits/women/49.jpg	email	user	t	2025-09-19 02:13:00+07	2025-09-19 08:13:00+07	\N
453153df-122f-4db5-a27b-3c1f8b3b3fa3	dang.gia.han+dev-1503@hotmail.com	$2a$14$anhu5t9140sV6pYhuhFg4u9YUQU4fllQSfgTxq5Y0wGimpuxoh4E2	Dang Gia Han	https://randomuser.me/api/portraits/women/50.jpg	google	user	t	2025-09-22 02:30:00+07	2025-09-22 09:30:00+07	\N
ecd39191-fdee-4020-9706-02d51169ab08	nguyen.minh.chau+mail-1513@gmail.com	$2a$14$k5UpgSEiLnzDm7O1RvqfhuFW0b2ZbzbXn8cB3lyEoRm61g3pyo.Cy	Nguyen Minh Chau	https://randomuser.me/api/portraits/women/51.jpg	email	user	t	2025-09-25 02:47:00+07	2025-09-25 10:47:00+07	\N
36d40b3f-7639-49f5-a1fa-0c2888b238ca	tran.minh.chau+beta-1523@outlook.com	$2a$14$uaFpcR2sD3E7goO1KzgYhuRqiLCRHw/Dqgi88i.jBKeN6gmcdDrDW	Tran Minh Chau	https://randomuser.me/api/portraits/women/52.jpg	email	user	t	2025-09-28 03:04:00+07	2025-09-28 12:04:00+07	\N
2eebf8e0-fe40-433f-bc0c-f16f5339b717	le.minh.chau+hub-1533@proton.me	$2a$14$4Pq8PcjvguzCgZ2WgAVs8eAMkEla2pbLnAUsFLQQa052Kr64BR.lK	Le Minh Chau	https://randomuser.me/api/portraits/women/53.jpg	google	user	t	2025-10-01 03:21:00+07	2025-10-01 13:21:00+07	\N
47c08052-1c18-4cf8-b571-afb241dd7bef	pham.minh.chau+office-1543@icloud.com	$2a$14$a3QO4AngPPpQiiDhHTzSyeZZTeE2bCSx6gghC0Rx9bEg/jCCbMocW	Pham Minh Chau	https://randomuser.me/api/portraits/women/54.jpg	email	user	t	2025-10-04 03:38:00+07	2025-10-04 14:38:00+07	\N
454069ce-a562-46e7-9c86-3bfdcf56631f	vo.minh.chau+zen-1553@yahoo.com	$2a$14$MQUxPsBlWPZ5NonVxMcoxO5pu7NKhNlpdrrLxOXPW4ISNZFw1XL56	Vo Minh Chau	https://randomuser.me/api/portraits/women/55.jpg	email	user	t	2025-10-07 03:55:00+07	2025-10-07 15:55:00+07	\N
7717af50-44c1-43a1-a4dd-10e6559abe02	bui.minh.chau+cafe-1563@hotmail.com	$2a$14$2kOtZNFM3XqKlWkcPUSpm.FSD2hker5qSOi2sqikIKPoDMrFo2hdm	Bui Minh Chau	https://randomuser.me/api/portraits/women/56.jpg	google	user	t	2025-10-10 04:12:00+07	2025-10-10 17:12:00+07	\N
6579e7cc-281f-4a2f-8740-c36bebe1b44e	do.minh.chau+sky-1573@gmail.com	$2a$14$CR0kRKRJcShPhplrZ9FbUeEqiqNjR9w0B1BjIp.3Ig3dF8RXaTQ.K	Do Minh Chau	https://randomuser.me/api/portraits/women/57.jpg	email	user	t	2025-10-13 04:29:00+07	2025-10-13 18:29:00+07	\N
d7c5e3c2-566b-40de-b878-a6c469098ce2	hoang.minh.chau+live-1583@outlook.com	$2a$14$e/U9Fs93QJS8DSmFmKaVh.GkZuOTrglDUhmBMDK42XEUNt38.EEka	Hoang Minh Chau	https://randomuser.me/api/portraits/women/58.jpg	email	user	t	2025-10-16 04:46:00+07	2025-10-16 19:46:00+07	\N
c05b0982-fcde-47a2-bb73-f64fe7cbbf30	phan.minh.chau+cloud-1593@proton.me	$2a$14$MaIPOWICZ7BLqm9MmIvvX.wEMu0Ya5q.cjjcqoz.wUBynoz8EntGK	Phan Minh Chau	https://randomuser.me/api/portraits/women/59.jpg	google	user	t	2025-10-19 05:03:00+07	2025-10-19 21:03:00+07	\N
d76eefce-fb54-4b2f-a7fa-498ac1867bdf	dang.minh.chau+home-1603@icloud.com	$2a$14$anhu5t9140sV6pYhuhFg4u9YUQU4fllQSfgTxq5Y0wGimpuxoh4E2	Dang Minh Chau	https://randomuser.me/api/portraits/women/60.jpg	email	user	t	2025-10-22 05:20:00+07	2025-10-22 22:20:00+07	\N
a8e28824-1c70-4602-9e31-01c9920cf06e	nguyen.hoai.thu+sg-1613@yahoo.com	$2a$14$k5UpgSEiLnzDm7O1RvqfhuFW0b2ZbzbXn8cB3lyEoRm61g3pyo.Cy	Nguyen Hoai Thu	https://randomuser.me/api/portraits/women/61.jpg	email	user	t	2025-10-25 05:37:00+07	2025-10-25 23:37:00+07	\N
955e25d8-4c47-4fe3-92b7-573466f79908	tran.hoai.thu+hn-1623@hotmail.com	$2a$14$uaFpcR2sD3E7goO1KzgYhuRqiLCRHw/Dqgi88i.jBKeN6gmcdDrDW	Tran Hoai Thu	https://randomuser.me/api/portraits/women/62.jpg	google	user	t	2025-10-28 05:54:00+07	2025-10-28 06:54:00+07	\N
19e9c91e-46b5-4093-a5c6-d03dbba3d9fe	le.hoai.thu+q1-1633@gmail.com	$2a$14$4Pq8PcjvguzCgZ2WgAVs8eAMkEla2pbLnAUsFLQQa052Kr64BR.lK	Le Hoai Thu	https://randomuser.me/api/portraits/women/63.jpg	email	user	t	2025-10-31 06:11:00+07	2025-10-31 08:11:00+07	\N
415af4d1-1ea0-4abd-9ea1-4e4ba3a86015	pham.hoai.thu+q3-1643@outlook.com	$2a$14$a3QO4AngPPpQiiDhHTzSyeZZTeE2bCSx6gghC0Rx9bEg/jCCbMocW	Pham Hoai Thu	https://randomuser.me/api/portraits/women/64.jpg	email	user	t	2025-11-03 06:28:00+07	2025-11-03 09:28:00+07	\N
eed73c14-34be-48ae-a528-72d5a4a6d853	vo.hoai.thu+q7-1653@proton.me	$2a$14$MQUxPsBlWPZ5NonVxMcoxO5pu7NKhNlpdrrLxOXPW4ISNZFw1XL56	Vo Hoai Thu	https://randomuser.me/api/portraits/women/65.jpg	google	user	t	2025-11-06 06:45:00+07	2025-11-06 10:45:00+07	\N
222402ac-b9d3-4ae4-a3d9-f1331096be36	bui.hoai.thu+bt-1663@icloud.com	$2a$14$2kOtZNFM3XqKlWkcPUSpm.FSD2hker5qSOi2sqikIKPoDMrFo2hdm	Bui Hoai Thu	https://randomuser.me/api/portraits/women/66.jpg	email	user	t	2025-11-09 07:02:00+07	2025-11-09 12:02:00+07	\N
fad508f6-bfa2-47e2-865b-1c63acf41a65	do.hoai.thu+work-1673@yahoo.com	$2a$14$CR0kRKRJcShPhplrZ9FbUeEqiqNjR9w0B1BjIp.3Ig3dF8RXaTQ.K	Do Hoai Thu	https://randomuser.me/api/portraits/women/67.jpg	email	user	t	2025-11-12 07:19:00+07	2025-11-12 13:19:00+07	\N
5829efff-9e5a-469f-8936-017ec2fc6b0f	hoang.hoai.thu+studio-1683@hotmail.com	$2a$14$e/U9Fs93QJS8DSmFmKaVh.GkZuOTrglDUhmBMDK42XEUNt38.EEka	Hoang Hoai Thu	https://randomuser.me/api/portraits/women/68.jpg	google	user	t	2025-11-15 07:36:00+07	2025-11-15 14:36:00+07	\N
4e76799e-0a8b-411f-a9ed-deb7005185d0	phan.hoai.thu+room-1693@gmail.com	$2a$14$MaIPOWICZ7BLqm9MmIvvX.wEMu0Ya5q.cjjcqoz.wUBynoz8EntGK	Phan Hoai Thu	https://randomuser.me/api/portraits/women/69.jpg	email	user	t	2025-11-18 07:53:00+07	2025-11-18 15:53:00+07	\N
0621f3f5-31ad-47dd-a6b4-db6c7347cea4	dang.hoai.thu+dev-1703@outlook.com	$2a$14$anhu5t9140sV6pYhuhFg4u9YUQU4fllQSfgTxq5Y0wGimpuxoh4E2	Dang Hoai Thu	https://randomuser.me/api/portraits/women/70.jpg	email	user	t	2025-11-20 08:10:00+07	2025-11-20 17:10:00+07	\N
0274964e-7a4f-4b07-adc7-4087b0acb251	nguyen.yen.nhi+mail-1713@proton.me	$2a$14$k5UpgSEiLnzDm7O1RvqfhuFW0b2ZbzbXn8cB3lyEoRm61g3pyo.Cy	Nguyen Yen Nhi	https://randomuser.me/api/portraits/women/71.jpg	google	admin	t	2025-11-23 08:27:00+07	2025-11-23 18:27:00+07	\N
ed629208-a50a-4cc2-a8e1-0b149825023f	tran.yen.nhi+beta-1723@icloud.com	$2a$14$uaFpcR2sD3E7goO1KzgYhuRqiLCRHw/Dqgi88i.jBKeN6gmcdDrDW	Tran Yen Nhi	https://randomuser.me/api/portraits/women/72.jpg	email	user	t	2025-11-26 08:44:00+07	2025-11-26 19:44:00+07	\N
69f4edc1-4688-4d0b-99f5-588b9cb5eda9	le.yen.nhi+hub-1733@yahoo.com	$2a$14$4Pq8PcjvguzCgZ2WgAVs8eAMkEla2pbLnAUsFLQQa052Kr64BR.lK	Le Yen Nhi	https://randomuser.me/api/portraits/women/73.jpg	email	user	t	2025-11-29 09:01:00+07	2025-11-29 21:01:00+07	\N
f75cf215-198d-447f-943d-39f553a331d2	pham.yen.nhi+office-1743@hotmail.com	$2a$14$a3QO4AngPPpQiiDhHTzSyeZZTeE2bCSx6gghC0Rx9bEg/jCCbMocW	Pham Yen Nhi	https://randomuser.me/api/portraits/women/74.jpg	google	user	t	2025-12-02 09:18:00+07	2025-12-02 22:18:00+07	\N
0d10bbe9-f286-4dcd-b1ab-16e9f6d571bd	vo.yen.nhi+zen-1753@gmail.com	$2a$14$MQUxPsBlWPZ5NonVxMcoxO5pu7NKhNlpdrrLxOXPW4ISNZFw1XL56	Vo Yen Nhi	https://randomuser.me/api/portraits/women/75.jpg	email	user	t	2025-12-05 09:35:00+07	2025-12-05 23:35:00+07	\N
2224f217-b137-4f20-81a7-e75984702dbe	bui.yen.nhi+cafe-1763@outlook.com	$2a$14$2kOtZNFM3XqKlWkcPUSpm.FSD2hker5qSOi2sqikIKPoDMrFo2hdm	Bui Yen Nhi	https://randomuser.me/api/portraits/women/76.jpg	email	user	t	2025-12-08 09:52:00+07	2025-12-09 00:52:00+07	\N
0f1be172-d6a3-4f4c-9e65-4e842cb28c1c	do.yen.nhi+sky-1773@proton.me	$2a$14$CR0kRKRJcShPhplrZ9FbUeEqiqNjR9w0B1BjIp.3Ig3dF8RXaTQ.K	Do Yen Nhi	https://randomuser.me/api/portraits/women/77.jpg	google	user	t	2025-12-11 10:09:00+07	2025-12-12 02:09:00+07	\N
8bb01ed0-5a0b-4a1c-8754-3643b15c99f1	hoang.yen.nhi+live-1783@icloud.com	$2a$14$e/U9Fs93QJS8DSmFmKaVh.GkZuOTrglDUhmBMDK42XEUNt38.EEka	Hoang Yen Nhi	https://randomuser.me/api/portraits/women/78.jpg	email	user	t	2025-12-14 10:26:00+07	2025-12-15 03:26:00+07	\N
3d49065d-6949-4367-824f-45831e29ea96	phan.yen.nhi+cloud-1793@yahoo.com	$2a$14$MaIPOWICZ7BLqm9MmIvvX.wEMu0Ya5q.cjjcqoz.wUBynoz8EntGK	Phan Yen Nhi	https://randomuser.me/api/portraits/women/79.jpg	email	user	t	2025-12-17 10:43:00+07	2025-12-18 04:43:00+07	\N
92abf701-a1b0-4bd3-8b41-d72f8ba61f0f	dang.yen.nhi+home-1803@hotmail.com	$2a$14$anhu5t9140sV6pYhuhFg4u9YUQU4fllQSfgTxq5Y0wGimpuxoh4E2	Dang Yen Nhi	https://randomuser.me/api/portraits/women/80.jpg	google	user	t	2025-12-20 11:00:00+07	2025-12-20 12:00:00+07	\N
ceee15be-5daa-428d-9582-2fa4e5a351b6	nguyen.my.duyen+sg-1813@gmail.com	$2a$14$k5UpgSEiLnzDm7O1RvqfhuFW0b2ZbzbXn8cB3lyEoRm61g3pyo.Cy	Nguyen My Duyen	https://randomuser.me/api/portraits/women/81.jpg	email	user	t	2025-12-23 11:17:00+07	2025-12-23 13:17:00+07	\N
adb514fe-8fbd-4b3f-bce9-8d14c2f384c6	tran.my.duyen+hn-1823@outlook.com	$2a$14$uaFpcR2sD3E7goO1KzgYhuRqiLCRHw/Dqgi88i.jBKeN6gmcdDrDW	Tran My Duyen	https://randomuser.me/api/portraits/women/82.jpg	email	user	t	2025-12-26 11:34:00+07	2025-12-26 14:34:00+07	\N
3771e1aa-55f8-4f4d-8e5f-29b356dc1a97	le.my.duyen+q1-1833@proton.me	$2a$14$4Pq8PcjvguzCgZ2WgAVs8eAMkEla2pbLnAUsFLQQa052Kr64BR.lK	Le My Duyen	https://randomuser.me/api/portraits/women/83.jpg	google	user	t	2025-12-29 11:51:00+07	2025-12-29 15:51:00+07	\N
7da7b522-7b6e-4c17-b15d-3b2623f75fd9	pham.my.duyen+q3-1843@icloud.com	$2a$14$a3QO4AngPPpQiiDhHTzSyeZZTeE2bCSx6gghC0Rx9bEg/jCCbMocW	Pham My Duyen	https://randomuser.me/api/portraits/women/84.jpg	email	user	t	2026-01-01 12:08:00+07	2026-01-01 17:08:00+07	\N
a75c012c-02f9-4327-909b-9897111ed7a6	vo.my.duyen+q7-1853@yahoo.com	$2a$14$MQUxPsBlWPZ5NonVxMcoxO5pu7NKhNlpdrrLxOXPW4ISNZFw1XL56	Vo My Duyen	https://randomuser.me/api/portraits/women/85.jpg	email	user	t	2026-01-04 12:25:00+07	2026-01-04 18:25:00+07	\N
12ae5585-5e69-40bd-8d13-ca3ede929d4d	bui.my.duyen+bt-1863@hotmail.com	$2a$14$2kOtZNFM3XqKlWkcPUSpm.FSD2hker5qSOi2sqikIKPoDMrFo2hdm	Bui My Duyen	https://randomuser.me/api/portraits/women/86.jpg	google	user	t	2026-01-07 12:42:00+07	2026-01-07 19:42:00+07	\N
a9320b71-6050-4f87-b702-1d06d26e671b	do.my.duyen+work-1873@gmail.com	$2a$14$CR0kRKRJcShPhplrZ9FbUeEqiqNjR9w0B1BjIp.3Ig3dF8RXaTQ.K	Do My Duyen	https://randomuser.me/api/portraits/women/87.jpg	email	user	t	2026-01-10 12:59:00+07	2026-01-10 20:59:00+07	\N
bb810078-cf05-4493-ba98-6b834557c874	hoang.my.duyen+studio-1883@outlook.com	$2a$14$e/U9Fs93QJS8DSmFmKaVh.GkZuOTrglDUhmBMDK42XEUNt38.EEka	Hoang My Duyen	https://randomuser.me/api/portraits/women/88.jpg	email	user	t	2026-01-13 13:16:00+07	2026-01-13 22:16:00+07	\N
4f3f977b-de07-4d88-9171-e8c0b7cd3c08	phan.my.duyen+room-1893@proton.me	$2a$14$MaIPOWICZ7BLqm9MmIvvX.wEMu0Ya5q.cjjcqoz.wUBynoz8EntGK	Phan My Duyen	https://randomuser.me/api/portraits/women/89.jpg	google	user	t	2026-01-16 13:33:00+07	2026-01-16 23:33:00+07	\N
ce3f3426-6bbb-4f53-9f9e-4764922a5383	dang.my.duyen+dev-1903@icloud.com	$2a$14$anhu5t9140sV6pYhuhFg4u9YUQU4fllQSfgTxq5Y0wGimpuxoh4E2	Dang My Duyen	https://randomuser.me/api/portraits/women/90.jpg	email	user	t	2026-01-19 13:50:00+07	2026-01-20 00:50:00+07	\N
eddaaf20-25dc-493b-8c02-e64f509bfc14	nguyen.cam.tu+mail-1913@yahoo.com	$2a$14$k5UpgSEiLnzDm7O1RvqfhuFW0b2ZbzbXn8cB3lyEoRm61g3pyo.Cy	Nguyen Cam Tu	https://randomuser.me/api/portraits/women/91.jpg	email	user	t	2026-01-22 14:07:00+07	2026-01-23 02:07:00+07	\N
a2f28c3f-f1de-4f2d-af6a-8345ecbceb66	tran.cam.tu+beta-1923@hotmail.com	$2a$14$uaFpcR2sD3E7goO1KzgYhuRqiLCRHw/Dqgi88i.jBKeN6gmcdDrDW	Tran Cam Tu	https://randomuser.me/api/portraits/women/92.jpg	google	user	t	2026-01-25 14:24:00+07	2026-01-26 03:24:00+07	\N
6f64423e-4576-46a1-b3cc-c78f137de768	le.cam.tu+hub-1933@gmail.com	$2a$14$4Pq8PcjvguzCgZ2WgAVs8eAMkEla2pbLnAUsFLQQa052Kr64BR.lK	Le Cam Tu	https://randomuser.me/api/portraits/women/93.jpg	email	user	t	2026-01-28 14:41:00+07	2026-01-29 04:41:00+07	\N
c931095f-aa50-46a4-9837-2dc0ec083b6f	pham.cam.tu+office-1943@outlook.com	$2a$14$a3QO4AngPPpQiiDhHTzSyeZZTeE2bCSx6gghC0Rx9bEg/jCCbMocW	Pham Cam Tu	https://randomuser.me/api/portraits/women/94.jpg	email	user	t	2026-01-31 14:58:00+07	2026-02-01 05:58:00+07	\N
565708a4-97e2-49f7-9948-29d6e3332185	vo.cam.tu+zen-1953@proton.me	$2a$14$MQUxPsBlWPZ5NonVxMcoxO5pu7NKhNlpdrrLxOXPW4ISNZFw1XL56	Vo Cam Tu	https://randomuser.me/api/portraits/women/95.jpg	google	admin	t	2026-02-03 15:15:00+07	2026-02-04 07:15:00+07	\N
aa054f71-f4b9-44f9-8c0f-d85409a9f263	bui.cam.tu+cafe-1963@icloud.com	$2a$14$2kOtZNFM3XqKlWkcPUSpm.FSD2hker5qSOi2sqikIKPoDMrFo2hdm	Bui Cam Tu	https://randomuser.me/api/portraits/women/96.jpg	email	user	t	2026-02-06 15:32:00+07	2026-02-07 08:32:00+07	\N
265b859c-5770-49df-b50c-42b22cdb258d	do.cam.tu+sky-1973@yahoo.com	$2a$14$CR0kRKRJcShPhplrZ9FbUeEqiqNjR9w0B1BjIp.3Ig3dF8RXaTQ.K	Do Cam Tu	https://randomuser.me/api/portraits/women/97.jpg	email	user	t	2026-02-09 15:49:00+07	2026-02-10 09:49:00+07	\N
de161993-372a-4faa-bb84-694832830194	hoang.cam.tu+live-1983@hotmail.com	$2a$14$e/U9Fs93QJS8DSmFmKaVh.GkZuOTrglDUhmBMDK42XEUNt38.EEka	Hoang Cam Tu	https://randomuser.me/api/portraits/women/98.jpg	google	user	t	2026-02-12 16:06:00+07	2026-02-12 17:06:00+07	\N
52078e98-97e7-4cec-bd3c-37d6ab8ac18e	phan.cam.tu+cloud-1993@gmail.com	$2a$14$MaIPOWICZ7BLqm9MmIvvX.wEMu0Ya5q.cjjcqoz.wUBynoz8EntGK	Phan Cam Tu	https://randomuser.me/api/portraits/women/99.jpg	email	user	t	2026-02-15 16:23:00+07	2026-02-15 18:23:00+07	\N
dfb932e6-e62e-4181-8eba-137251db835e	dang.cam.tu+home-2003@outlook.com	$2a$14$anhu5t9140sV6pYhuhFg4u9YUQU4fllQSfgTxq5Y0wGimpuxoh4E2	Dang Cam Tu	https://randomuser.me/api/portraits/women/1.jpg	email	admin	t	2026-02-18 16:40:00+07	2026-02-18 19:40:00+07	\N
f964a403-8f0f-4e48-8372-a245a92b4c59	nguyennhathao.cm2k4@gmail.com		Nguyễn Nhật Hào	https://lh3.googleusercontent.com/a/ACg8ocKIkTt2ErHT407u7F90qjaVcazfFijmx-OMMFNqiKvTeLm99J3u=s96-c	google	admin	t	2026-04-24 23:46:17.204067+07	2026-04-24 23:46:17.204067+07	\N
b3b2220c-4a5c-41da-bd3e-c10904e17dba	hoang.hoai.nam+studio-883@icloud.com	$2a$14$e/U9Fs93QJS8DSmFmKaVh.GkZuOTrglDUhmBMDK42XEUNt38.EEka	Hoang Hoai Nam	https://randomuser.me/api/portraits/men/88.jpg	email	user	t	2025-03-19 08:56:00+07	2025-03-20 01:56:00+07	2026-04-24 23:48:10.015785+07
217280e6-678e-403a-adc7-97538ede88f2	do.thao.my+sky-1173@proton.me	$2a$14$CR0kRKRJcShPhplrZ9FbUeEqiqNjR9w0B1BjIp.3Ig3dF8RXaTQ.K	Do Thao My	https://randomuser.me/api/portraits/women/17.jpg	google	user	t	2025-06-14 17:09:00+07	2025-06-15 03:09:00+07	2026-04-24 23:48:33.505987+07
\.


--
-- TOC entry 4754 (class 2606 OID 671764)
-- Name: users uni_users_email; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT uni_users_email UNIQUE (email);


--
-- TOC entry 4756 (class 2606 OID 671762)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4752 (class 1259 OID 671765)
-- Name: idx_users_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_users_deleted_at ON public.users USING btree (deleted_at);


-- Completed on 2026-04-25 23:56:32

--
-- PostgreSQL database dump complete
--

\unrestrict IJPTzOlXogUGs8GYLCoRmrKX9OcBvXOjqdwtsuthjsbYmpt6VsRIsDJMT484SFg

