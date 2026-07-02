Return-Path: <linux-man+bounces-5687-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TzRkMkddRmoiRwsAu9opvQ
	(envelope-from <linux-man+bounces-5687-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 02 Jul 2026 14:44:55 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9F06F7D15
	for <lists+linux-man@lfdr.de>; Thu, 02 Jul 2026 14:44:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="BjLt6IU/";
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5687-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5687-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 52326302A07E
	for <lists+linux-man@lfdr.de>; Thu,  2 Jul 2026 12:33:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0FF747ECC6;
	Thu,  2 Jul 2026 12:33:33 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57813355F46
	for <linux-man@vger.kernel.org>; Thu,  2 Jul 2026 12:33:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782995613; cv=none; b=W3zfaPccPKiz2VbXT4JHbsh6HoirHBNX2fJkXoyXEhtjMx0YrnyV0LwbnhVI1/DxzpncCZR5c29RT6Lr84/TWfbfKgLEi5PIGBw90R32mL+mjyRA64bP2/LSt7YCTNbrRm3o2XbgxcFwxVSkNDLD0qEicDFZLOodtG31r3e71Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782995613; c=relaxed/simple;
	bh=ZsTDOqLKh3E/i37SOUvLD5zrYH+PLFLOLoit15V/w2k=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=eGsVKEBWaZbqjz7u3fRZYy3KQP2DNByHsSdAaYZ6ZKSkFzMtuSP4ZSj3epUkmobzUo6GToDTT9+T7uIplFdnhq9UjoBiKXha343zz1Y0kcqo/BQH2TVW6fiL0NPteatCrAqPwcV9yvXt4s2LJbrh6QP0nhjOhyqiTyb38qhzyCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjLt6IU/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A3471F000E9;
	Thu,  2 Jul 2026 12:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782995612;
	bh=t87TxBawHsqAPWOwF+eKXFvvMzlV9hZpI1shE1xlhxc=;
	h=Date:From:To:Cc:Subject;
	b=BjLt6IU/7nrEBn8sXLKQUHbkMuioIR/oRDfH0pSrDoENtXi46v4lYSYzwmqACTq9v
	 4P6DALYbFZ5o4oy91ZefVAyQKOeTq0ytS/RTzZ08QzlshLR+Qxsptn5dCM+3hNYQKG
	 If5GGonmenU/S4cbqkFenmDh8PInVnYPTbB3PKfJtui167j3nnAklj1gWT92JT8x3V
	 ZvZbVOxtAD2qFXm3jJtASMt4hBA83s+iGhLTMSvjpI/T6RF17jk3A8aNZo5dty9lgV
	 sUZjWt+l549Ejyu3hC/UJWAeUUEhYCp5Ychxu8BHRbiVNM1A7zsVO7V43pbsWJvSK/
	 05tw4jYYZhNKQ==
Date: Thu, 2 Jul 2026 14:33:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>
Subject: [PATCH v1 1/2] man/man3/str*.3: NAME: Explain the names
Message-ID: <e1446fbce9d76cea797cf058f74ab0a63b744205.1782995502.git.alx@kernel.org>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3xkqsqpph2vh64pw"
Content-Disposition: inline
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5687-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:linux-man@vger.kernel.org,m:alx@kernel.org,m:serge@hallyn.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3C9F06F7D15


--3xkqsqpph2vh64pw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>
Subject: [PATCH v1 1/2] man/man3/str*.3: NAME: Explain the names
Message-ID: <e1446fbce9d76cea797cf058f74ab0a63b744205.1782995502.git.alx@kernel.org>
MIME-Version: 1.0

Reported-by: "Serge E. Hallyn" <serge@hallyn.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi Serge,

I finally took some time to do this that you asked me to do some time
ago.  I've edited all the str*(3) manual pages so that the NAME section
actually explains the name of the function.

There's an exception: strpbrk(3).  I refuse to explain that name.  I've
explained it as if it were called strchrs(), which is a name that Plan9
uses for that function, and which would have been a better name for it.
(See patch 2/2).


Have a lovely day!
Alex

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
index 32d620f52c51..ea94f2a90224 100644
--- a/man/man3/strcoll.3
+++ b/man/man3/strcoll.3
@@ -6,7 +6,7 @@
 .\"
 .TH strcoll 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strcoll \- compare two strings using the current locale
+strcoll \- strings collate
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


--3xkqsqpph2vh64pw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpGWpkACgkQ64mZXMKQ
wql9qhAAkDsVXuWo5kojOw4dJOO6TIUQObij9o5JjPvfDNHzqoXrp/0N/Ya/ske+
UkIE9+d0ciiotOc8K0VV4DagqGt6Hfp82hQu8GLEDbCCrpmdrX5IuECjsslvMZtx
GDfQDVC9XdDfFXkSsaDDHMJCLnb2ryR6kWMBv2hdwknsaMIkQOSqditLorSAjAGj
XGXQVaD3X3qfL/4jiTkvMi5qzmeQnZrTl5gqlukqpdehspTkaTVvwydqG8iseFR7
972YHZLYJrZ9O6iW0k1w7mWYFTubgX5XQDN4OogaRC784fYZOY71yUIJntbcbRd3
1qcIBnG5h8gpFtV+aheFm5v+3hjgt2ScjmMQvxvd33XpL7WC6vAx73VBgc5C1g3F
1nvK7WdMXgrlQoClq8f2hsH4bceQH8EZ5eMbSarHzs1hb2XeGr3dk0fA/LRDW4Y1
v0LffwjVW5Iu9mvXAJ4DVu87z6BrlRphPtiX2THE64GpwmTUeWMGAlJC/8rsgLoF
PDfJN7IYBldeNIRB9R700wvvqsMHxDvyY9sZ5po1FlLwfaRYo4qezaQBoXBVx8cb
fh5Ny1VAatqHT50oOKmCwqi8yo4wGYC1GtGpYhwNGS0saLbW76pNi3iUzZ84LJdV
7dGb7SK4Hnjh3NlkM6GZyM2lKWopN/L+8GJoAtxKt+bXYjNNLfw=
=aCm5
-----END PGP SIGNATURE-----

--3xkqsqpph2vh64pw--

