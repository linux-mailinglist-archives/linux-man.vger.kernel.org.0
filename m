Return-Path: <linux-man+bounces-1111-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 319C0904006
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:30:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2DA411C21D46
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 15:30:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D47F2BAE2;
	Tue, 11 Jun 2024 15:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="kA1vBA0W"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 936F8381BB
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 15:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718119827; cv=none; b=NgrAod5n8wqgDM8RkPAZdARbWegMyAD6uuMzGFBXc1T1kyR07clSAjchx/JPBFSZBxrmJoGWuinGuHzKOISyPfYyXPPFNQPcHhdKm7Dh5UenR7INT8a2oH5SjtGJRWrY8o1Ec+boP+/xqygUSCFcxMauZgq8Vi1yJDEUW5egh78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718119827; c=relaxed/simple;
	bh=6wo4X82vLTrBfzu2mk7qS4Tf0hS6d2MRs379VaVOx6Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=A2CyT2LJkiiR0cnZS+L2pOoIQAaQATSn9NjL5ABrbHv4dMt42Tau2oSEL61m/YP82RTDOKDCmVtWfipr8/TUk84RxqD8QRGxujr6ml/g9J3431xSts6mX+GZfEXE6f+aeO0DFLzRaYKkd+ynnF+VUID575kJKn2tjLR8lAg+Ji0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=kA1vBA0W; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id E2B3F3C00E402;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id gc1eseNLHb0q; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 733123C0140A0;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 733123C0140A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1718119822;
	bh=V+jCBbVHsQc7ZFxE5iwadZJLrGn9ynVTpo/e8609I6w=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=kA1vBA0WUyY2jbPPUKd/lYy93+cJAYSUe0vD8efwUrIxztyR4k0FzrPk2gBnj9qko
	 kfa7CFH6dzOzmeaFTaiz6wpJpzHehrJpUM4gMt9x9bLaYtdyFQMeMELIYxKX0SLNLy
	 SJG0h3qCCJGlUwwQvoI+/5LL4c+vxzvjrS7Co27qOjMHfwkOq9E8+QvHS/I72zGFoM
	 QYNCZIN0Awjk3pQ8v5jzHWD7tuDGI8tCLKofdtv2u2cdgGddpg5BE1LA3M+v4gjXie
	 UQOqEE8vfpWz0eu0lYBpTtbG0enMww4arIBsAGQLMwVLW1/XqnxoaF4eGpCVVvLBgM
	 mQ7aa664FM/uA==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id Sh8zWY1mp5wf; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from penguin.cs.ucla.edu (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 4F26C3C00E409;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
From: Paul Eggert <eggert@cs.ucla.edu>
To: Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org
Cc: Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH 10/12] tzset: update more POSIX citations and quotes
Date: Tue, 11 Jun 2024 08:29:13 -0700
Message-ID: <20240611153005.3066-10-eggert@cs.ucla.edu>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

---
 man/man3/ctime.3 | 29 +++++++++++++----------------
 man/man3/tzset.3 |  4 ++--
 2 files changed, 15 insertions(+), 18 deletions(-)

diff --git a/man/man3/ctime.3 b/man/man3/ctime.3
index e863f0572..a0dacfeda 100644
--- a/man/man3/ctime.3
+++ b/man/man3/ctime.3
@@ -320,7 +320,7 @@ In many implementations, including glibc, a 0 in
 .I tm_mday
 is interpreted as meaning the last day of the preceding month.
 .P
-According to POSIX.1-2001,
+According to POSIX.1-2024,
 .BR localtime ()
 is required to behave as though
 .BR tzset (3)
@@ -343,16 +343,12 @@ should be called before
 .BR localtime ()
 .TQ
 .BR mktime ()
-C11, POSIX.1-2008.
+C23, POSIX.1-2024.
 .TP
-.BR asctime_r ()
-.TQ
-.BR ctime_r ()
-.TQ
 .BR gmtime_r ()
 .TQ
 .BR localtime_r ()
-POSIX.1-2008.
+POSIX.1-2024.
 .SH HISTORY
 .TP
 .BR gmtime ()
@@ -360,25 +356,25 @@ POSIX.1-2008.
 .BR localtime ()
 .TQ
 .BR mktime ()
-C89, POSIX.1-2001.
+C89, POSIX.1-1988.
 .TP
 .BR asctime ()
 .TQ
 .BR ctime ()
-C89, POSIX.1-2001.
-Marked obsolete in POSIX.1-2008 (recommending
+C89, POSIX.1-1988.
+Marked obsolescent in C23 and in POSIX.1-2008 (recommending
 .BR strftime (3)).
 .TP
 .BR gmtime_r ()
 .TQ
 .BR localtime_r ()
-POSIX.1-2001.
+POSIX.1-1996.
 .TP
 .BR asctime_r ()
 .TQ
 .BR ctime_r ()
-POSIX.1-2001.
-Marked obsolete in POSIX.1-2008 (recommending
+POSIX.1-1996.
+Removed in POSIX.1-2024 (recommending
 .BR strftime (3)).
 .SH NOTES
 The four functions
@@ -396,7 +392,7 @@ and
 .BR localtime_r (),
 are specified by SUSv2.
 .P
-POSIX.1-2001 says:
+POSIX.1-2024 says:
 "The
 .BR asctime (),
 .BR ctime (),
@@ -406,8 +402,9 @@ and
 functions shall return values in one of two static objects:
 a broken-down time structure and an array of type
 .IR char .
-Execution of any of the functions may overwrite the information returned
-in either of these objects by any of the other functions."
+Execution of any of the functions that return a pointer to one of these
+object types may overwrite the information in any object of the same typ=
e
+pointed to by the value returned from any previous call to any of them."
 This can occur in the glibc implementation.
 .SH SEE ALSO
 .BR date (1),
diff --git a/man/man3/tzset.3 b/man/man3/tzset.3
index 4c7e286fe..7d57dc9a1 100644
--- a/man/man3/tzset.3
+++ b/man/man3/tzset.3
@@ -235,9 +235,9 @@ T{
 T}	Thread safety	MT-Safe env locale
 .TE
 .SH STANDARDS
-POSIX.1-2008.
+POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001, SVr4, 4.3BSD.
+POSIX.1-1988, SVr4, 4.3BSD.
 .P
 4.3BSD had a function
 .BI "char *timezone(" zone ", " dst )
--=20
2.45.2


