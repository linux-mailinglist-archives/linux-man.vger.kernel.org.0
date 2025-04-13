Return-Path: <linux-man+bounces-2768-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BB0A8732D
	for <lists+linux-man@lfdr.de>; Sun, 13 Apr 2025 20:39:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B967818917B3
	for <lists+linux-man@lfdr.de>; Sun, 13 Apr 2025 18:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9389B19E833;
	Sun, 13 Apr 2025 18:39:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ascz.de header.i=@ascz.de header.b="G27LR7Ea"
X-Original-To: linux-man@vger.kernel.org
Received: from vwp12212.webpack.hosteurope.de (vwp12212.webpack.hosteurope.de [5.35.232.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440CB8635D
	for <linux-man@vger.kernel.org>; Sun, 13 Apr 2025 18:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=5.35.232.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744569567; cv=none; b=B7TrlqahMup8tuulngyrmAXLI5/h+fDI4KgapiBFKLl1vw9xa4X9zolyM4lIAxceGEXvuyNshhGb1y7Shi2Njv9hM1hBPQcdSc+lz0yYOu5TkP2xuPG1rbTkJrQRSo/7KG3/k+0t2bY8nZSm5xBWWZr2jm4J39Lr/sUqwJ8XvLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744569567; c=relaxed/simple;
	bh=7BJExZlKpjrZBVtZ5BNYebkg7QsgSFl1tLbi3vdJ+6E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fEUoUh+CfaVylA3O3biOe2CSiRrbEzQy1NxgFYcrsXxhkuO3qkTJetsWgkGRrX3Sd/XLRRW1hVOkZhJmt3/DblqrO3fbS6ilZiUF03etjOUDe4KpmlCL7/OmeLg5w9rgouM92ziihkKvrXGofnuZmfOamxh1Ztdn/weiSQa1hzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ascz.de; spf=pass smtp.mailfrom=ascz.de; dkim=pass (2048-bit key) header.d=ascz.de header.i=@ascz.de header.b=G27LR7Ea; arc=none smtp.client-ip=5.35.232.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ascz.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ascz.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=ascz.de;
	s=he169026; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:
	Cc:To:From:From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	In-Reply-To:References; bh=oVJLwXwBBL7PoAng7nQu13mEdmEUSoa6tExoAPgrsDM=;
	t=1744569565; x=1745001565; b=G27LR7EaoYPWESuai+/KBJFMdkiA3CQ5E7t7ZyUUisfvTpH
	hKTWat0/7K14eK8B973BOspTEcDwLhEElEBAlQLzDX5Zmx0JxylmB3JsnVAzjKwP497udT6Mw/NdZ
	fyIdWlWYfVZCA2Amv2Tv2qw3+LHIWbOLmV1c5dcYUEpQD3Fp+IjSStJ2NJkhvstojiIOz1xFmLjLe
	uAoD9TLHY9WYm6619MSvVqsLr2yN6XHjDxaREtVBAis+7Qfpv72ctCbLYIv36vWsbk9LEZPS2QoiS
	vEP+gsA2FZuEheIMv+fK7h0kQpmJKgnr9cvKk4CMBndlr4kPQjxn34DnRnzHAt4g==;
Received: from p200300c0df0945162f6a90c04ec6e8e2.dip0.t-ipconnect.de ([2003:c0:df09:4516:2f6a:90c0:4ec6:e8e2] helo=localhost.localdomain); authenticated
	by vwp12212.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	id 1u41ft-0051Po-1M;
	Sun, 13 Apr 2025 20:03:21 +0200
From: Anton Zellerhoff <wg14@ascz.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: Anton Zellerhoff <wg14@ascz.de>,
	linux-man@vger.kernel.org,
	Lenard Mollenkopf <glibc@lenardmollenkopf.de>,
	Jakub Jelinek <jakub@redhat.com>
Subject: [PATCH] man/man3/abs.3: Document u{,l,ll,imax}abs()
Date: Sun, 13 Apr 2025 19:50:11 +0200
Message-ID: <28a36070fe18707ab9fa26b91c88e6fd87a72097.1744566285.git.wg14@ascz.de>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-bounce-key: webpack.hosteurope.de;wg14@ascz.de;1744569565;5f6b3eee;
X-HE-SMSGID: 1u41ft-0051Po-1M

C2Y adds unsigned versions of the abs functions (see C2Y draft N3467 and
proposal N3349).  Support for these functions will be included in GCC 15
and glibc 2.42.

Link: <https://www.open-std.org/JTC1/SC22/WG14/www/docs/n3467.pdf>
Link: <https://www.open-std.org/JTC1/SC22/WG14/www/docs/n3349.pdf>
Link: <https://gcc.gnu.org/bugzilla/show_bug.cgi?id=117024>
Link: <https://sourceware.org/git/?p=glibc.git;a=commitdiff;h=5b132ec2b7712dbc055838b3b538b83ad1196414>
Signed-off-by: Anton Zellerhoff <wg14@ascz.de>
---
I am a co-author of N3349.

I was unsure waht to do with the current standards. As the functions did
not change from C99 to C11 I deleted them.

 man/man3/abs.3      | 63 ++++++++++++++++++++++++++++++++++++++-------
 man/man3/uabs.3     |  1 +
 man/man3/uimaxabs.3 |  1 +
 man/man3/ulabs.3    |  1 +
 man/man3/ullabs.3   |  1 +
 5 files changed, 57 insertions(+), 10 deletions(-)
 create mode 100644 man/man3/uabs.3
 create mode 100644 man/man3/uimaxabs.3
 create mode 100644 man/man3/ulabs.3
 create mode 100644 man/man3/ullabs.3

diff --git a/man/man3/abs.3 b/man/man3/abs.3
index 6a9780019..fbd546cdf 100644
--- a/man/man3/abs.3
+++ b/man/man3/abs.3
@@ -14,7 +14,7 @@
 .\"
 .TH abs 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-abs, labs, llabs, imaxabs \- compute the absolute value of an integer
+abs, labs, llabs, imaxabs, uabs, ulabs, ullabs, uimaxabs \- compute the absolute value of an integer
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
@@ -26,9 +26,14 @@ .SH SYNOPSIS
 .BI "long labs(long " j );
 .BI "long long llabs(long long " j );
 .P
+.BI "unsigned int uabs(int " j );
+.BI "unsigned long ulabs(long " j );
+.BI "unsigned long long ullabs(long long " j );
+.P
 .B #include <inttypes.h>
 .P
 .BI "intmax_t imaxabs(intmax_t " j );
+.BI "uintmax_t uimaxabs(intmax_t " j );
 .fi
 .P
 .RS -4
@@ -40,17 +45,25 @@ .SH SYNOPSIS
 .nf
     _ISOC99_SOURCE || _POSIX_C_SOURCE >= 200112L
 .fi
+.P
+.BR uabs (),
+.BR ulabs (),
+.BR ullabs (),
+.BR uimaxabs ():
+.nf
+    _ISOC2Y_SOURCE
+.fi
 .SH DESCRIPTION
 The
-.BR abs ()
-function computes the absolute value of the integer
-argument
-.IR j .
-The
+.BR abs (),
 .BR labs (),
 .BR llabs (),
+.BR imaxabs (),
+.BR uabs (),
+.BR ulabs (),
+.BR \%ullabs (),
 and
-.BR imaxabs ()
+.BR \%uimaxabs ()
 functions compute the absolute value of the argument
 .I j
 of the
@@ -72,11 +85,15 @@ .SH ATTRIBUTES
 .BR abs (),
 .BR labs (),
 .BR llabs (),
-.BR imaxabs ()
+.BR imaxabs (),
+.BR uabs (),
+.BR ulabs (),
+.BR \%ullabs (),
+.BR \%uimaxabs ()
 T}	Thread safety	MT-Safe
 .TE
 .SH STANDARDS
-C11, POSIX.1-2008.
+C2Y.
 .SH HISTORY
 POSIX.1-2001, C99, SVr4, 4.3BSD.
 .\" POSIX.1 (1996 edition) requires only the
@@ -93,8 +110,21 @@ .SH HISTORY
 and
 .BR imaxabs ()
 were added in C99.
+The functions
+.BR uabs (),
+.BR ulabs (),
+.BR \%ullabs (),
+and
+.BR \%uimaxabs ()
+were added in C2Y.
 .SH NOTES
-Trying to take the absolute value of the most negative integer
+For
+.BR abs (),
+.BR labs (),
+.BR llabs (),
+and
+.BR imaxabs ()
+trying to take the absolute value of the most negative integer
 is not defined.
 .P
 The
@@ -103,6 +133,13 @@ .SH NOTES
 The
 .BR imaxabs ()
 function is included since glibc 2.1.1.
+The
+.BR uabs (),
+.BR ulabs (),
+.BR \%ullabs (),
+and
+.BR \%uimaxabs ()
+functions are included since glibc 2.42.
 .P
 For
 .BR llabs ()
@@ -121,6 +158,12 @@ .SH NOTES
 .BR llabs ()
 and
 .BR imaxabs ()
+and (since GCC 15.0)
+.BR uabs (),
+.BR ulabs (),
+.BR \%ullabs (),
+and
+.BR \%uimaxabs ()
 as built-in functions.
 .SH SEE ALSO
 .BR cabs (3),
diff --git a/man/man3/uabs.3 b/man/man3/uabs.3
new file mode 100644
index 000000000..97db8d2b6
--- /dev/null
+++ b/man/man3/uabs.3
@@ -0,0 +1 @@
+.so man3/abs.3
diff --git a/man/man3/uimaxabs.3 b/man/man3/uimaxabs.3
new file mode 100644
index 000000000..97db8d2b6
--- /dev/null
+++ b/man/man3/uimaxabs.3
@@ -0,0 +1 @@
+.so man3/abs.3
diff --git a/man/man3/ulabs.3 b/man/man3/ulabs.3
new file mode 100644
index 000000000..97db8d2b6
--- /dev/null
+++ b/man/man3/ulabs.3
@@ -0,0 +1 @@
+.so man3/abs.3
diff --git a/man/man3/ullabs.3 b/man/man3/ullabs.3
new file mode 100644
index 000000000..97db8d2b6
--- /dev/null
+++ b/man/man3/ullabs.3
@@ -0,0 +1 @@
+.so man3/abs.3
-- 
2.49.0


