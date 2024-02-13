Return-Path: <linux-man+bounces-444-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B0F8535ED
	for <lists+linux-man@lfdr.de>; Tue, 13 Feb 2024 17:24:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9101528B490
	for <lists+linux-man@lfdr.de>; Tue, 13 Feb 2024 16:24:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40E105F85E;
	Tue, 13 Feb 2024 16:24:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b="tiSP0jk/"
X-Original-To: linux-man@vger.kernel.org
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11olkn2010.outbound.protection.outlook.com [40.92.20.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26F75F85B
	for <linux-man@vger.kernel.org>; Tue, 13 Feb 2024 16:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.92.20.10
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707841446; cv=fail; b=DXNJOCjKPklaE0h/foKZUgs04rcFD3Zgf8tJYODPROSxMjIZAiUSPqegAQJx5H34uaq6GfOhk04CDg3tDd4sATSY4NJMu5BaqaK0rBeibq2RTTtMZJ/2zLUSbh6GlEfrKuydo6i2dBIKVtIxMZO4QXcg70nGu/UbR9aOKW7cBK4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707841446; c=relaxed/simple;
	bh=jQ5puYS3gdWnIMcngAuLuc31bydrh0FGvo12x4Lr4R4=;
	h=Date:From:To:Cc:Subject:Message-ID:Content-Type:
	 Content-Disposition:MIME-Version; b=Ul3F4qVidrzzO+ihW5awjvo/UvabZOZzjZbZllyG5eiNshY9Wos0VWgJ+pYYMCk9gqJui/KZ3xOQvZK29ZDnJf4iEr23ONhb8F+BQ7EDBGq08/Be7rd++uhi6dmig9Zrw8/6TOp9+R5AL99S9vS5ERrKiKgMyLinseVM7CbPRvE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=outlook.com; spf=pass smtp.mailfrom=outlook.com; dkim=fail (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b=tiSP0jk/ reason="signature verification failed"; arc=fail smtp.client-ip=40.92.20.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=outlook.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=outlook.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fgd82SoSfp2eIZMJZgUKDriJ48jneOrgB+4W0MqXYGBBRi6s/HP+4Z1nDoWReeHKnx31dfx43gXjdaCiH7IHUOxZ/VdIDstGPev+c69TRvWZh4u2utexcCn1HeG0N0KownugjesXngTTwn+nsHcjv5B4NqHa4WITaczsaOI4t6f4a7nAN/DL9oNYz0lSsHcW66YHQ+9mOiVz+A3rk0RVpe8dqgPW0Cm8rJrRrAQDZvkF5r4SZEpmsEXuEcLBkOa0N/WfFJsRGjeLbngKf5FQG6U+uxHo0znucvNwgWqCxVZ1A0dM+Qotlm3K+mgxZ9ie9iPhEkrmohClGJBwmoCTfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0+tZVt9Wa+sp0dvJsVGUpHfTTM45ogJVkg8teviaHn0=;
 b=TG0bSHWYkozQ9OlMfkIEEBfR9p7IKZmbjOXVcM0QFtrc5RtKxQ8A7GlHf86k8R7hE7iNUQxQjHlN/qMGt8GciFeEobDpCOjp6GVSCSvO12bSfOhL1LV/DPdnf55lICZiLltTlJDThZ8T0+UQAH4PPQtp31Xyrn9KnybAslaq9JgpTW1/uRB/1ci4JAgbv1uVTyyOIsED0MtJsoN0xu8o4eT0e4UgyTr5RAoOTvpYfvjzh8PmeD2k/Vtdig7o23+MvHCpcv1cMhdr5c1sJZhQ/zUIDI1kah901ayV7VZa0041HJu3VaRAFC3JsRkyEbHEqJtVCDZ+/cOL4d2I6/VU9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0+tZVt9Wa+sp0dvJsVGUpHfTTM45ogJVkg8teviaHn0=;
 b=tiSP0jk/8oBFBaeQ5EZ9NOSrS5M/GOUcRhuI+qRNxjmlr8kmbkwQIUCtYKXrzKFeTI929+ziGsliF+aQEblMCFK4uelunsowoDixSJ8FAwLXby7AicM51fDL8JIyrQAp3ZwchTFWUStPz3RTNkaT0oTC1VxS1VHeC+085s3G8HaAFZymSR06rpJOmCAsBYaTzXUzrFnu/ctHkLSP4uCIjXjX96v7h6mAkWhi6cfhfksYrFWnArS1ZaatI1SluJRbls7tAjy2yQrWzgYl+ChtmRfQ5Ok3Frgn/qTl1HYPKhM2nFAFGWjr7FCpXYG0dbBalQoPFCykekZHqyLUPbd03A==
Received: from SCZPR80MB7149.lamprd80.prod.outlook.com (2603:10d6:300:75::16)
 by SCYPR80MB7155.lamprd80.prod.outlook.com (2603:10d6:300:ad::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Tue, 13 Feb
 2024 16:24:01 +0000
Received: from SCZPR80MB7149.lamprd80.prod.outlook.com
 ([fe80::e5a:a2d2:8b2:8337]) by SCZPR80MB7149.lamprd80.prod.outlook.com
 ([fe80::e5a:a2d2:8b2:8337%7]) with mapi id 15.20.7270.033; Tue, 13 Feb 2024
 16:24:01 +0000
Date: Tue, 13 Feb 2024 13:23:55 -0300
From: =?utf-8?B?Vmluw61jaXVzIFNjaMO8dHo=?= Piva <vinicius.vsczpv@outlook.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] getdents.2: add note to misleading field "d_off" in struct
 linux_dirent64
Message-ID:
 <SCZPR80MB71490A2B475CBC153A5B3776FC4F2@SCZPR80MB7149.lamprd80.prod.outlook.com>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-TMN: [l2fROW5zdH+1UZ+jDekIIuV3LVA8f72k]
X-ClientProxiedBy: CP5P284CA0279.BRAP284.PROD.OUTLOOK.COM
 (2603:10d6:103:2f3::27) To SCZPR80MB7149.lamprd80.prod.outlook.com
 (2603:10d6:300:75::16)
X-Microsoft-Original-Message-ID:
 <20240213162355.g2v4v26xpwmdrji7@flyingdutchman>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SCZPR80MB7149:EE_|SCYPR80MB7155:EE_
X-MS-Office365-Filtering-Correlation-Id: 45bd0391-9aac-470e-3bde-08dc2cb02fe3
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	RGqaV8KmE/LAwgrTLholA3e1X0tX7G+AP3s4Dox+4WfIfGJnB7VxKq1fGsIggWaoUP0AaX3NvhS6hvsSLa/gD3QJ9zwDGETyqxXFdJZT09vjGBU3kIgzWGLstn11SriYVPLJ4bw/slmhvvJY+zKY1wbMDcgiyzy5PqL3a8utP6FrugVLWyqt7ISVmu6jQkWUYbI99z4D0DRE/bT9FGaVeobV9pOlqpZfm3tOAk/f2hPYypOhxH6NT+6NAS7cev781avtb3ORmVqjGB04AYCtg3mt51xln4ROOENJeFMKT30dGpspSYjwS3fSm6es1Lb/ar5SVwCkdBMDHLtHZnfnhTNJXpUM9EeIb3GPs0r/74WJ4ZifYUNgvAwM6v4TXK45eXST/8QHqgGYivcxvo9Ybr7RWWwYcbnxEmLr74Gf4bRnK7JC8FMW0wm+awTAoZCpS0taFY36IcNU8/w87KuuBV9Ws0vIIJ7FHgfLYzCi4wp0kRhriITAKQ5nNnVB9LTB+bZzgr4LHamf+z4MRnfuOHaLITZZebILZ46xRCQ8PR0A24yQBjfPVQ0ymYKWa1pzjRE5PRxbjxF7ql26NS56uqxmv0LpkyUvsQtXfg7Z/N5WfwfmvQX3dk9PW9RPpzwzpwE5kb2uEQoe0t+Dao7t7A==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?iso-8859-1?Q?Y6OSfS9dwuULcU+wRyuKO+UPWGycQwvyQb4Uaut2CNbvrry1ANVE9FmSwC?=
 =?iso-8859-1?Q?1sW0/hSfhdzsvEEYBQQu5rHxu10HmK2vlnd/TrFKuhIqZyuj7U9fKmL3v2?=
 =?iso-8859-1?Q?kEX+R5z07jcscdL4GON9PLxADQtVwSd2MagkBpYavHIAgx2cSdJ2N9gaD0?=
 =?iso-8859-1?Q?Bi6Luq0XIrcB2g8kwF5aruqWU9U4GMMym0UdDv8c4XvtXFD0UOu7HZrq6e?=
 =?iso-8859-1?Q?DEWlrU5nZOJBFtBO6UJEYt5F6J4gH0JWWEhSBvc6Uy3n8iKFAtJRsmZr8t?=
 =?iso-8859-1?Q?yt6tpbB1V2Lmjoromx5fFlJlX2UKkteHAq6FR182nB4pzFhh1gge6eL2JP?=
 =?iso-8859-1?Q?EvQ4ZOWPUC8ikd2QMifJ/yON5I3F+cDajLV+lJNyqdytEMXYha4XqEhEUA?=
 =?iso-8859-1?Q?EV4fL6aeKHaXkBmpg9T37OdV/T9pfhGFi3inJdSwiE1vyuTdJ2EFaZnzyc?=
 =?iso-8859-1?Q?0fNvz2PQUouik5bUwFM8TV+sFaFdW8pUX7J0p0OZ1bgAbJmx+rtI0cu3Tx?=
 =?iso-8859-1?Q?Nb+mnU+5Cl4SFgyvYXpsasFxzrwtUflobdbHAQ7iE1dC2mx1pOhal1QSzh?=
 =?iso-8859-1?Q?+teyPubfnwaWuZvNULOzvMUnqm4ccVRf8ZvjZg6Pclbi9ExZu0i+QvEssk?=
 =?iso-8859-1?Q?EnuPthBvd00iMlWDJChSmNm1K20vG6JdlcFXY/vaLe32jRfFsQWy/9c1jD?=
 =?iso-8859-1?Q?PYwiAfpFLo75SoVRKt2TRhop0YuCYjeUxSpO0yQ0s8eNi0cIYgLSu+9BCL?=
 =?iso-8859-1?Q?KY9pFkJ3e8SJnCghNnA1KoHz1QiL6cOnimoA1ONBXeYDMnxlCkjwVrutWK?=
 =?iso-8859-1?Q?0QqH5EMupEKIdyTE/Qv2TROTZAL70C4bwfJUl2l0FPbXTHg95+91ZMikY4?=
 =?iso-8859-1?Q?eTP+V8SYuNOWob1DquSNMvXVh7uciccRa9DmGlYVhBoSQEgI62RPSsQsGc?=
 =?iso-8859-1?Q?FZzyW9WYqT/jhhOxNrwriTu7ZuB21PAb/zZKys64tE6tJlbAeKuuxOVdcT?=
 =?iso-8859-1?Q?EinW3pFN3gEMa39u/NzE6IgGxtLbrGF4tSECQNg9Do1vBm/W3/IVDWaBJE?=
 =?iso-8859-1?Q?2ZtoZQbPvmr9dBSzFbrz0MGSL0RE+ejzkVZOGtrPpVHDvkwdybCCp9g0jw?=
 =?iso-8859-1?Q?nctatDMNf59dFJFmAVVNu9fpYqwEwYTh8EB46ohd0PQbwCgB5Jv9Gb/Rj3?=
 =?iso-8859-1?Q?59E/EicmJvGD7Y5Yx4bG6qxqFeVA9T313gEel3sSIb8bPud1UIi5xgUI1H?=
 =?iso-8859-1?Q?THfnqMx0MpUrI0BgZk99usPynEBYP52NEt1ZIygEM=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45bd0391-9aac-470e-3bde-08dc2cb02fe3
X-MS-Exchange-CrossTenant-AuthSource: SCZPR80MB7149.lamprd80.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2024 16:24:01.0733
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SCYPR80MB7155

Sorry for the duplicate email; tried sending to myself to doublecheck
and forget to clear the Cc.

The getdents.2 man page details a pair syscalls: getdents() and
getdents64(), both of which are used to get the entries of a directory.
The results are populated into a structure, with the difference between
both syscalls being mostly bitwidth related.

However, the behaviour or the 'd_off' field in both struct linux_dirent
and linux_dirent64 is wrongly documented in this man page.

According to the current documentation, 'd_off' is used to store the
"Offset to the next linux_dirent [...] the distance from the start of
the directory to the start of the next linux_dirent."

This value, thought, is filesystem dependent, and much of the time it
stores no such offset.

According to readdir.3 [1] manpage:

 > The value returned in d_off is the same as would be returned by
 > calling telldir(3) at the current position in the directory stream.
 > Be aware that despite its type and name, the d_off field is seldom
 > any kind of directory offset on modern filesystems. Applications
 > should treat this field as an opaque value, making no assumptions
 > about its contents; see also telldir(3).

Of course, readdir(3) is a glibc function with no ties to
getdents(2), but it was implemented with such syscall and considering
that readdir(3) doesn't process the data from getdents(2) my belief is
that it inherited said behaviour from it [2]. telldir(3) tells a similar
story.

On the example provided at the end of getdents.2, notable is the d_off
value of the very last entry:

--------------- nread=120 ---------------
inode#    file type  d_reclen  d_off   d_name
       2  directory    16         12  .
       2  directory    16         24  ..
      11  directory    24         44  lost+found
      12  regular      16         56  a
  228929  directory    16         68  sub
   16353  directory    16         80  sub2
  130817  directory    16       4096  sub3

which makes a very sudden jump that is obviously not where the entry is
located.

Rerunning this same example but on a ext4 partition gives you garbage
values:

--------------- nread=176 ---------------
inode#    file type  d_reclen  d_off   d_name
    2050  directory    24 4842312636391754590  sub2
       2  directory    24 4844777444668968292  ..
    2051  directory    24 7251781863886579875  sub3
      12  regular      24 7470722685224223838  a
    2049  directory    24 7653193867028490235  sub
      11  directory    32 7925945214358802294  lost+found
       2  directory    24 9223372036854775807  .

In fact, I've had a hard time reproducing nice d_off values on ext2 too,
so what the filesystem does with d_off must have change since then.

On tmpfs it's a count:

--------------- nread=144 ---------------
inode#    file type  d_reclen  d_off   d_name
       1  directory    24          1  .
       1  directory    24          2  ..
       5  directory    24          3  sub3
       4  directory    24          4  sub2
       3  directory    24          5  sub
       2  regular      24          6  a

I've also not been the first to notice this, as you can see from this
stackoverflow issue opened last year:

https://stackoverflow.com/q/75119224

Safe to say, it's a very unreliable field.

Below is a patch that adds a warning besides the d_off field in both
structures, plus a brief explanation on why this field can be mislea-
ding (while also directing the user towards the readdir.3 man page).

[1] https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/man3/readdir.3
[2] https://elixir.bootlin.com/glibc/glibc-2.39/source/sysdeps/unix/sysv/linux/readdir.c

Signed-off-by: Vinícius Schütz Piva <vinicius.vsczpv@outlook.com>
---
 man2/getdents.2 | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/man2/getdents.2 b/man2/getdents.2
index 0d4c379..3427f4b 100644
--- a/man2/getdents.2
+++ b/man2/getdents.2
@@ -67,7 +67,7 @@ structure is declared as follows:
 .EX
 struct linux_dirent {
     unsigned long  d_ino;     /* Inode number */
-    unsigned long  d_off;     /* Offset to next \fIlinux_dirent\fP */
+    unsigned long  d_off;     /* Not an offset; see below */
     unsigned short d_reclen;  /* Length of this \fIlinux_dirent\fP */
     char           d_name[];  /* Filename (null\-terminated) */
                       /* length is actually (d_reclen \- 2 \-
@@ -84,8 +84,12 @@ struct linux_dirent {
 .I d_ino
 is an inode number.
 .I d_off
-is the distance from the start of the directory to the start of the next
-.IR linux_dirent .
+is a filesystem specific value with no specific meaning to userspace, 
+though on older filesystems it used to be the distance from the start 
+of the directory to the start of the next
+.IR linux_dirent ; 
+see
+.BR readdir (3) .
 .I d_reclen
 is the size of this entire
 .IR linux_dirent .
@@ -167,7 +171,7 @@ structures of the following type:
 .EX
 struct linux_dirent64 {
     ino64_t        d_ino;    /* 64\-bit inode number */
-    off64_t        d_off;    /* 64\-bit offset to next structure */
+    off64_t        d_off;    /* Not an offset; see readdir(3) */
     unsigned short d_reclen; /* Size of this dirent */
     unsigned char  d_type;   /* File type */
     char           d_name[]; /* Filename (null\-terminated) */
-- 
2.39.2


