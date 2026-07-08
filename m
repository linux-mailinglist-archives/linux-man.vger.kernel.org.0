Return-Path: <linux-man+bounces-5716-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xOThKLhuTmp/MgIAu9opvQ
	(envelope-from <linux-man+bounces-5716-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 17:37:28 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 955C57281D5
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 17:37:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UeVBW8it;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5716-lists+linux-man=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="linux-man+bounces-5716-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9CCCA31A1331
	for <lists+linux-man@lfdr.de>; Wed,  8 Jul 2026 15:10:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15A09439348;
	Wed,  8 Jul 2026 15:09:15 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC1043933F
	for <linux-man@vger.kernel.org>; Wed,  8 Jul 2026 15:09:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783523354; cv=none; b=Wqvf1020mAXOYUHcdKtUuaSHrOuLWGTpxiuVp3tEGZVSfzZsxzzPYiaRD3ulqES7kSyTvyMG/Ao4FlBYd5c7D9w7ZfhS44wYwiuFIvBvqcWno9iJhiqDdQcBSHgaq+1yqy57U6XuC8E98iZ7bb6arVS4anvEP0z3W1tDX32AgAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783523354; c=relaxed/simple;
	bh=nQPtk/qt5fn+3LSJfVqgwt2uhTfzcrqg7ust+vfUphY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OHI6/zvG4wH/lWcTtWXos8VInwR8uj2ghYZQ5dg6vcVa4e1JS3p0y/2YKyRxguJnUztW8WXUu1IaFW4VUsl7+iureSFcutFwLK3ezALM/p6o1s/IDDScNaidaXxnOc30f4g5mpBHC2qPaZZkMre0UR4R99Wr/HxsnlzxZQdyfAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeVBW8it; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB3C41F000E9;
	Wed,  8 Jul 2026 15:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783523353;
	bh=E5A4JAWT4BZydTJw8fNJp3vViLVu9gG1lKwDJgXVN7s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=UeVBW8itdqqNb7wMMPGBwexAwkJYE1Uomx+zPNx4xMmBsBMSGun+iGY3U4hzSVz7j
	 HdVNWQJbbsDWVZloko+NI9X/F9KTI5XCbqePxkBY43rK2KTQsVK+hjgwt9bXHXNgmB
	 IIlY3t8uTpIEVWQnQk84avXlHtpqGje0k47QHnxIQcFZYblKyOlaDwvqs40irYQ4El
	 nrZbEVC1t6hnGVFDPxljPOWey59LaQ73kcN8mXBzIgu97mbnkTVnyE9+gh3h9Zb3/1
	 B1aA1VfzbZ5qTmL3Uc277YTQEP0AAsM03nn8vbWLI+LJzOyCHPh+5HtDvo2XsoX+HK
	 UVXWBwETNoPrA==
Date: Wed, 8 Jul 2026 17:09:10 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>, Mark Harris <mark.hsj@gmail.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>, Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Subject: [PATCH v2 1/4] man/man3/str*.3: NAME: Explain the names
Message-ID: <b17a1548f3ab96216e6165bdd3194a80363e99f6.1783523064.git.alx@kernel.org>
X-Mailer: git-send-email 2.53.0
References: <e1446fbce9d76cea797cf058f74ab0a63b744205.1782995502.git.alx@kernel.org>
 <cover.1783523064.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="m3fxdu6rw57llmpt"
Content-Disposition: inline
In-Reply-To: <cover.1783523064.git.alx@kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-man@vger.kernel.org,m:alx@kernel.org,m:serge@hallyn.com,m:mark.hsj@gmail.com,m:g.branden.robinson@gmail.com,m:douglas.mcilroy@dartmouth.edu,m:markhsj@gmail.com,m:gbrandenrobinson@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5716-lists,linux-man=lfdr.de];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,hallyn.com,gmail.com,dartmouth.edu];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,dartmouth.edu:email,vger.kernel.org:from_smtp,hallyn.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 955C57281D5


--m3fxdu6rw57llmpt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>, Mark Harris <mark.hsj@gmail.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>, Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Subject: [PATCH v2 1/4] man/man3/str*.3: NAME: Explain the names
Message-ID: <b17a1548f3ab96216e6165bdd3194a80363e99f6.1783523064.git.alx@kernel.org>
References: <e1446fbce9d76cea797cf058f74ab0a63b744205.1782995502.git.alx@kernel.org>
 <cover.1783523064.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <cover.1783523064.git.alx@kernel.org>

Reported-by: "Serge E. Hallyn" <serge@hallyn.com>
Cc: Mark Harris <mark.hsj@gmail.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/strcasecmp.3 | 2 +-
 man/man3/strchr.3     | 2 +-
 man/man3/strcmp.3     | 2 +-
 man/man3/strcoll.3    | 2 +-
 man/man3/strcpy.3     | 2 +-
 man/man3/strdup.3     | 2 +-
 man/man3/strerror.3   | 5 +++--
 man/man3/strfmon.3    | 2 +-
 man/man3/strfromd.3   | 3 +--
 man/man3/strfry.3     | 2 +-
 man/man3/strftime.3   | 2 +-
 man/man3/string.3     | 5 +----
 man/man3/strlen.3     | 2 +-
 man/man3/strncat.3    | 5 +----
 man/man3/strnlen.3    | 2 +-
 man/man3/strpbrk.3    | 2 +-
 man/man3/strptime.3   | 2 +-
 man/man3/strsep.3     | 2 +-
 man/man3/strsignal.3  | 2 +-
 man/man3/strspn.3     | 2 +-
 man/man3/strtod.3     | 2 +-
 man/man3/strtoimax.3  | 2 +-
 man/man3/strtok.3     | 2 +-
 man/man3/strtol.3     | 2 +-
 man/man3/strtoul.3    | 2 +-
 man/man3/strverscmp.3 | 2 +-
 man/man3/strxfrm.3    | 2 +-
 27 files changed, 29 insertions(+), 35 deletions(-)

diff --git a/man/man3/strcasecmp.3 b/man/man3/strcasecmp.3
index aa554341da4c..65941ddf6524 100644
--- a/man/man3/strcasecmp.3
+++ b/man/man3/strcasecmp.3
@@ -6,7 +6,7 @@
 .\"
 .TH strcasecmp 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strcasecmp, strncasecmp \- compare two strings ignoring case
+strcasecmp, strncasecmp \- strings case-insensitive compare
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strchr.3 b/man/man3/strchr.3
index 4e6a96d8cde6..12d08f63ddbb 100644
--- a/man/man3/strchr.3
+++ b/man/man3/strchr.3
@@ -6,7 +6,7 @@
 .\"
 .TH strchr 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strchr \- locate character in string
+strchr \- string search character
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strcmp.3 b/man/man3/strcmp.3
index a088412917d2..0a573e52d936 100644
--- a/man/man3/strcmp.3
+++ b/man/man3/strcmp.3
@@ -7,7 +7,7 @@
 .\"
 .TH strcmp 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strcmp, strncmp \- compare two strings
+strcmp, strncmp \- strings compare
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strcoll.3 b/man/man3/strcoll.3
index 32d620f52c51..1f9eb2441b13 100644
--- a/man/man3/strcoll.3
+++ b/man/man3/strcoll.3
@@ -6,7 +6,7 @@
 .\"
 .TH strcoll 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strcoll \- compare two strings using the current locale
+strcoll \- strings LC_COLLATE compare
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strcpy.3 b/man/man3/strcpy.3
index cea24ff04020..d4d0e4246545 100644
--- a/man/man3/strcpy.3
+++ b/man/man3/strcpy.3
@@ -5,7 +5,7 @@
 .\"
 .TH strcpy 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strcpy, strcat \- copy or catenate a string
+strcpy, strcat \- string copy/catenate
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strdup.3 b/man/man3/strdup.3
index b4026ed41b4a..05671cd936c2 100644
--- a/man/man3/strdup.3
+++ b/man/man3/strdup.3
@@ -6,7 +6,7 @@
 .\"
 .TH strdup 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strdup, strndup \- duplicate a string
+strdup, strndup \- string duplicate
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strerror.3 b/man/man3/strerror.3
index e3306c7e1608..637d1d812d52 100644
--- a/man/man3/strerror.3
+++ b/man/man3/strerror.3
@@ -7,8 +7,9 @@
 .\"
 .TH strerror 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strerror, strerrorname_np, strerrordesc_np, strerror_r, strerror_l \-
-return string describing error number
+strerror, strerrorname_np, strerrordesc_np, strerror_r, strerror_l
+\-
+string error-string
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strfmon.3 b/man/man3/strfmon.3
index e0d9790395cb..dee915c8a9f4 100644
--- a/man/man3/strfmon.3
+++ b/man/man3/strfmon.3
@@ -6,7 +6,7 @@
 .\"
 .TH strfmon 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strfmon, strfmon_l \- convert monetary value to a string
+strfmon, strfmon_l \- string format monetary value
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strfromd.3 b/man/man3/strfromd.3
index c221f82df0a8..fa8a10feec01 100644
--- a/man/man3/strfromd.3
+++ b/man/man3/strfromd.3
@@ -6,8 +6,7 @@
 .\"
 .TH strfromd 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strfromd, strfromf, strfroml \- convert a floating-point value into
-a string
+strfromd, strfromf, strfroml \- string from float
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strfry.3 b/man/man3/strfry.3
index 99917e4a6261..54ea313ea262 100644
--- a/man/man3/strfry.3
+++ b/man/man3/strfry.3
@@ -6,7 +6,7 @@
 .\"
 .TH strfry 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strfry \- randomize a string
+strfry \- string fry
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strftime.3 b/man/man3/strftime.3
index 66351f6bd43a..bdba4089b934 100644
--- a/man/man3/strftime.3
+++ b/man/man3/strftime.3
@@ -6,7 +6,7 @@
 .\"
 .TH strftime 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strftime \- format date and time
+strftime \- string format date and time
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/string.3 b/man/man3/string.3
index 89fe51fba609..2141822e1fd1 100644
--- a/man/man3/string.3
+++ b/man/man3/string.3
@@ -5,10 +5,7 @@
 .\"
 .TH string 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-stpcpy, strcasecmp, strcat, strchr, strcmp, strcoll, strcpy, strcspn,
-strdup, strfry, strlen, strncat, strncmp, strncpy, strncasecmp, strpbrk,
-strrchr, strsep, strspn, strstr, strtok, strxfrm
-\- string operations
+string \- string operations
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strlen.3 b/man/man3/strlen.3
index 1dd99bd8e250..639bdd6ac2d2 100644
--- a/man/man3/strlen.3
+++ b/man/man3/strlen.3
@@ -6,7 +6,7 @@
 .\"
 .TH strlen 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strlen \- calculate the length of a string
+strlen \- string length
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strncat.3 b/man/man3/strncat.3
index 4b0217b02673..dd39d54939d9 100644
--- a/man/man3/strncat.3
+++ b/man/man3/strncat.3
@@ -5,10 +5,7 @@
 .\"
 .TH strncat 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strncat
-\-
-append non-null bytes from a source array to a string,
-and null-terminate the result
+strncat \- nonstring catenate
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strnlen.3 b/man/man3/strnlen.3
index fbd719ee4888..553a39a9ec7a 100644
--- a/man/man3/strnlen.3
+++ b/man/man3/strnlen.3
@@ -6,7 +6,7 @@
 .\"
 .TH strnlen 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strnlen \- determine the length of a fixed-size string
+strnlen \- nonstring length
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strpbrk.3 b/man/man3/strpbrk.3
index 1f56cf18dbac..6e5b79a48bbe 100644
--- a/man/man3/strpbrk.3
+++ b/man/man3/strpbrk.3
@@ -6,7 +6,7 @@
 .\"
 .TH strpbrk 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strpbrk \- search a string for any of a set of bytes
+strpbrk \- string search characters
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strptime.3 b/man/man3/strptime.3
index 979bffea7bf8..4502acfe6d1e 100644
--- a/man/man3/strptime.3
+++ b/man/man3/strptime.3
@@ -6,7 +6,7 @@
 .\"
 .TH strptime 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strptime \- convert a string representation of time to a time tm structure
+strptime \- string parse time
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strsep.3 b/man/man3/strsep.3
index 46ba6c5819bd..98859f64909f 100644
--- a/man/man3/strsep.3
+++ b/man/man3/strsep.3
@@ -6,7 +6,7 @@
 .\"
 .TH strsep 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strsep \- extract token from string
+strsep \- string separate
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strsignal.3 b/man/man3/strsignal.3
index 4a4e8c86e71d..964a5e5aacaf 100644
--- a/man/man3/strsignal.3
+++ b/man/man3/strsignal.3
@@ -8,7 +8,7 @@
 .TH strsignal 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
 strsignal, sigabbrev_np, sigdescr_np, sys_siglist \-
-return string describing signal
+string signal description
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strspn.3 b/man/man3/strspn.3
index fe4414317df6..7c85d209c59d 100644
--- a/man/man3/strspn.3
+++ b/man/man3/strspn.3
@@ -6,7 +6,7 @@
 .\"
 .TH strspn 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strspn, strcspn \- get length of a prefix substring
+strspn, strcspn \- string [complementary] span
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strtod.3 b/man/man3/strtod.3
index 15147ee51006..84a9934ba267 100644
--- a/man/man3/strtod.3
+++ b/man/man3/strtod.3
@@ -6,7 +6,7 @@
 .\"
 .TH strtod 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strtod, strtof, strtold \- convert ASCII string to floating-point number
+strtod, strtof, strtold \- string to float
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strtoimax.3 b/man/man3/strtoimax.3
index 71267754ed7a..08413a9f8101 100644
--- a/man/man3/strtoimax.3
+++ b/man/man3/strtoimax.3
@@ -6,7 +6,7 @@
 .\"
 .TH strtoimax 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strtoimax, strtoumax \- convert string to integer
+strtoimax, strtoumax \- string to [u]intmax_t
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strtok.3 b/man/man3/strtok.3
index 2d733e886086..4ce708ecbcb4 100644
--- a/man/man3/strtok.3
+++ b/man/man3/strtok.3
@@ -6,7 +6,7 @@
 .\"
 .TH strtok 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strtok \- extract tokens from strings
+strtok \- string tokenize
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strtol.3 b/man/man3/strtol.3
index f88b717780f3..4d9c49eaf28a 100644
--- a/man/man3/strtol.3
+++ b/man/man3/strtol.3
@@ -7,7 +7,7 @@
 .\"
 .TH strtol 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strtol, strtoll, strtoq \- convert a string to a long integer
+strtol, strtoll, strtoq \- string to long int
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strtoul.3 b/man/man3/strtoul.3
index a6f6fd4a8ada..670fcb3868a1 100644
--- a/man/man3/strtoul.3
+++ b/man/man3/strtoul.3
@@ -6,7 +6,7 @@
 .\"
 .TH strtoul 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strtoul, strtoull, strtouq \- convert a string to an unsigned long integer
+strtoul, strtoull, strtouq \- string to unsigned long int
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strverscmp.3 b/man/man3/strverscmp.3
index d072471b1431..caadb9717a3b 100644
--- a/man/man3/strverscmp.3
+++ b/man/man3/strverscmp.3
@@ -7,7 +7,7 @@
 .\"
 .TH strverscmp 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strverscmp \- compare two version strings
+strverscmp \- strings version compare
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
diff --git a/man/man3/strxfrm.3 b/man/man3/strxfrm.3
index d4ac57006eb0..a892bf4c813b 100644
--- a/man/man3/strxfrm.3
+++ b/man/man3/strxfrm.3
@@ -6,7 +6,7 @@
 .\"
 .TH strxfrm 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strxfrm \- string transformation
+strxfrm \- string transform
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
--=20
2.53.0


--m3fxdu6rw57llmpt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpOaBUACgkQ64mZXMKQ
wqnWUA//ZQnyJHW50YNEmJ9rzJUE4UkkO8HYBlZhL7Qi7+K1QqtwTshBa1BkHvXM
nTdH5mZJ7is3gkzFOvmpwQras2uVilKinO63MztsXp4bNAoFXA6J+sM2PpeSaoyq
2fwlOqPyJI4pT0CwehAUHUYP0tRItDhwt9wG10l0aO0bTi3T1XKIarAp5vKFYHa+
VPrrnjDs8bT19I0qWJYTfCYhjDl8t7Hqq/e+7g0En7VLQmNV5/rXfZKfo9ADkgvb
Gfut5NDlQi4jk4AD/9XWpFVLRwrDX6F88Ak1vmO5f+kNPzN7AYxKGglrD8Ocp6aR
5gy7ptJTK2TTQHzS8SzVBVh3Ni3tixEYose/W/KI7gcMnbQZwq/osE2+LoTHTjUB
5lt05x5y7Ga5OOAB9+2hIz7LiSq8vz6Mp6NMhgcmfi5G40IlDK61ot1cLCUZrX+G
9dx/kZ1sNechO2VfRcrlckpc4iH3aJzy/IR4Srcr28KoPjfapmH6vIS/dUpXfoNx
r7ygjyaQkErSTT5wQw5QivdEqUmFPdSkKIZFS50rJZB7Y2Bth6fl+KF+A22UU7/V
X4KLRmdDh7i7XYr/+CbnsmjfuSwvADN78ax0radyUY5hMpcUPWDu7RvKGADU5xbL
v/3MavFlXSC8cz38NxfIH4+iDvi+JVnbEQzw98tAoRG6o47dc3c=
=jfGM
-----END PGP SIGNATURE-----

--m3fxdu6rw57llmpt--

