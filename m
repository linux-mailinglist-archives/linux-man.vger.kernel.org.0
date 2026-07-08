Return-Path: <linux-man+bounces-5719-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v+JYH91uTmqJMgIAu9opvQ
	(envelope-from <linux-man+bounces-5719-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 17:38:05 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7738F7281E8
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 17:38:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=aR6ViPUt;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5719-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5719-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1C23031CE85E
	for <lists+linux-man@lfdr.de>; Wed,  8 Jul 2026 15:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EB2A40927C;
	Wed,  8 Jul 2026 15:09:26 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7F2340926E
	for <linux-man@vger.kernel.org>; Wed,  8 Jul 2026 15:09:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783523366; cv=none; b=DEQX1L5bIVW/E0KBzT7UCYsWXkE2v6ThRtAHZmXqq3UP0WoYe00fLKg2uZKmTVECIse/xSUBTRDXuXc/DxfEZPSoGsgOJGyoIvLQFE8F1/hrhFr3o58QtNyhd2d8fgsPLgzX4sT+zZAqhkdibcrbTglKSe0Nf36D1gufb9fkXbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783523366; c=relaxed/simple;
	bh=BENmU4+BerzNcOzTEa7M/yLG0OPRL+cG8gOXiO4wsPA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=huX6yePP2jL6XJonsJ6J6oXn4fUfa0VLJ/o9G/KIze/0R0Bagq6agQnWjK6CBzSEUp0vq4xvAr6R5MDnPp2Nps2ZeQdpi4C69DjOJVZdV/jxBR2sUbaY+kV9uStWw4xtMiMUgjOb8aTNs5VdmXIpUxcAIPr/5MTGAsD/hIWAxIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aR6ViPUt; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB5051F000E9;
	Wed,  8 Jul 2026 15:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783523364;
	bh=jFkUF1bzkthdTtrE/eOWwcE0cNBnRu6qcJugq/7w7fA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=aR6ViPUt8eEG53UNE8samrWKh+816yUwzqBjXxI4lrkF6IOKS7Tlv6OjeYHLo6RuX
	 Hni1Dd/eQiGQ6TMNH1vbdyYVbvOpsU/TKfjwQs3mE29UXdUfQZxxeDnxnrhcGjR4Xp
	 jtkCZuHiFLNInAa/OVal0igcvSFg3TRAEVu6a8BowUlm2gLZ+EFtUBZjljb4d5uoZK
	 C9DrTxvakbqsG6lMeyA8UnloUnf0E3X0yWY/EYVTzy/WBMkXM7lZEAhBVu6vrbPXah
	 WLld6vzMyVGRuJsOOSlGwnARMGL85Et77T/Rro+5ecfNY3PWgUOeE4cSuSczJtJMl/
	 kaMxoUzJ829lQ==
Date: Wed, 8 Jul 2026 17:09:21 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>, Mark Harris <mark.hsj@gmail.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>, Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Subject: [PATCH v2 4/4] man/man3/[b]string.3: Rewrite and merge
Message-ID: <89d3fbe27c06a87fa12520da67fc10ad2cd8b03b.1783523064.git.alx@kernel.org>
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
	protocol="application/pgp-signature"; boundary="26zvu4ieekn4txow"
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-man@vger.kernel.org,m:alx@kernel.org,m:serge@hallyn.com,m:mark.hsj@gmail.com,m:g.branden.robinson@gmail.com,m:douglas.mcilroy@dartmouth.edu,m:markhsj@gmail.com,m:gbrandenrobinson@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5719-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dartmouth.edu:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,hallyn.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7738F7281E8


--26zvu4ieekn4txow
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>, Mark Harris <mark.hsj@gmail.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>, Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Subject: [PATCH v2 4/4] man/man3/[b]string.3: Rewrite and merge
Message-ID: <89d3fbe27c06a87fa12520da67fc10ad2cd8b03b.1783523064.git.alx@kernel.org>
References: <e1446fbce9d76cea797cf058f74ab0a63b744205.1782995502.git.alx@kernel.org>
 <cover.1783523064.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <cover.1783523064.git.alx@kernel.org>

Let's have a single page with an organized list of functions.

Cc: "Serge E. Hallyn" <serge@hallyn.com>
Cc: Mark Harris <mark.hsj@gmail.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/bstring.3 |  81 +--------------
 man/man3/string.3  | 238 ++++++++++++++++++++++++++-------------------
 2 files changed, 137 insertions(+), 182 deletions(-)

diff --git a/man/man3/bstring.3 b/man/man3/bstring.3
index c3b5782d3554..f02a9f29817b 100644
--- a/man/man3/bstring.3
+++ b/man/man3/bstring.3
@@ -1,80 +1 @@
-.\" Copyright 1993, David Metcalfe <david@prism.demon.co.uk>
-.\" Copyright, the authors of the Linux man-pages project
-.\"
-.\" SPDX-License-Identifier: Linux-man-pages-copyleft
-.\"
-.TH bstring 3 (date) "Linux man-pages (unreleased)"
-.SH NAME
-bcmp, bcopy, bzero, memccpy, memchr, memcmp, memcpy, memfrob, memmem,
-memmove, memset \- byte string operations
-.SH LIBRARY
-Standard C library
-.RI ( libc ,\~ \-lc )
-.SH SYNOPSIS
-.nf
-.B #include <string.h>
-.P
-.BR "int bcmp(" "size_t n;"
-.BI "         const void " s1 [ n "], const void " s2 [ n "], size_t " n );
-.P
-.BR "void bcopy(" "size_t n;"
-.BI "         const void " src [ n "], void " dest [ n "], size_t " n );
-.P
-.BR "void bzero(" "size_t n;"
-.BI "         void " s [ n "], size_t " n );
-.P
-.BR "void *memccpy(" "size_t n;"
-.BI "         void " dest [ n "], const void " src [ n "], int " c ", size=
_t " n );
-.P
-.BR "void *memchr(" "size_t n;"
-.BI "         const void " s [ n "], int " c ", size_t " n );
-.P
-.BR "int memcmp(" "size_t n;"
-.BI "         const void " s1 [ n "], const void " s2 [ n "], size_t " n );
-.P
-.BR "void *memcpy(" "size_t n;"
-.BI "         void " dest [ n "], const void " src [ n "], size_t " n );
-.P
-.BR "void *memfrob(" "size_t n;"
-.BI "         void " s [ n "], size_t " n );
-.P
-.BR "void *memmem(" "size_t hsize, size_t nsize;"
-.BI "             const void " haystack [ hsize "], size_t " hsize ,
-.BI "             const void " needle [ nsize "], size_t " nsize );
-.P
-.BR "void *memmove(" "size_t n;"
-.BI "         void " dest [ n "], const void " src [ n "], size_t " n );
-.P
-.BR "void *memset(" "size_t n;"
-.BI "         void " s [ n "], int " c ", size_t " n );
-.fi
-.SH DESCRIPTION
-The byte string functions perform operations on strings (byte arrays)
-that are not necessarily null-terminated.
-See the individual man pages
-for descriptions of each function.
-.SH NOTES
-The functions
-.BR bcmp ()
-and
-.BR bcopy ()
-are obsolete.
-Use
-.BR memcmp ()
-and
-.BR memmove ()
-instead.
-.\" The old functions are not even available on some non-GNU+Linux systems.
-.SH SEE ALSO
-.BR bcmp (3),
-.BR bcopy (3),
-.BR bzero (3),
-.BR memccpy (3),
-.BR memchr (3),
-.BR memcmp (3),
-.BR memcpy (3),
-.BR memfrob (3),
-.BR memmem (3),
-.BR memmove (3),
-.BR memset (3),
-.BR string (3)
+.so man3/string.3
diff --git a/man/man3/string.3 b/man/man3/string.3
index 2141822e1fd1..da87799a5e69 100644
--- a/man/man3/string.3
+++ b/man/man3/string.3
@@ -5,7 +5,7 @@
 .\"
 .TH string 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-string \- string operations
+string \- byte operations
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
@@ -15,115 +15,149 @@ .SH SYNOPSIS
 .B #include <strings.h>
 .fi
 .SH DESCRIPTION
-The string functions perform operations on null-terminated
-strings.
-See the individual man pages for descriptions of each function.
+.SS Write
 .TP
-.BR strcasecmp (3)
-Compare two strings,
-ignoring case.
+Write bytes
+.RS
 .TP
-.BR strncasecmp (3)
-Compare the first bytes of two strings,
-ignoring case.
+.BR bzero (3)
+.TQ
+.BR memset (3)
+.RE
+.SS Copy
 .TP
-.BR stpcpy (3)
-Copy a string,
-returning a pointer to the end of the resulting string.
+Copy bytes
+.RS
 .TP
-.BR strcat (3)
-Append a string into an existing string.
+.BR memmove (3)
+.TQ
+.BR memcpy (3)
+.TQ
+.BR mempcpy (3)
+.TQ
+.BR memccpy (3)
+.RE
 .TP
-.BR strchr (3)
-Find the first occurrence of a character
-in a string.
-.TP
-.BR strcmp (3)
-Compare two strings.
-.TP
-.BR strcoll (3)
-Compare two strings,
-using the current locale.
+Copy strings
+.RS
 .TP
 .BR strcpy (3)
-Copy a string.
+.TQ
+.BR stpcpy (3)
+.RE
 .TP
-.BR strcspn (3)
-Calculate the length of the initial segment of a string
-which does not contain any of the rejected bytes.
-.TP
-.BR strdup (3)
-Duplicate a string
-in memory allocated using
-.BR malloc (3).
-.TP
-.BR strfry (3)
-Randomly swap the characters in a string.
-.TP
-.BR strlen (3)
-Return the length of a string.
-.TP
-.BR strncat (3)
-Append non-null bytes from an array
-to a string,
-and null-terminate the result.
-.TP
-.BR strncmp (3)
-Compare the first bytes of two strings.
-.TP
-.BR strpbrk (3)
-Find the first occurrence in a string
-of one of the bytes in the accepted bytes.
-.TP
-.BR strrchr (3)
-Find the last occurrence of a character
-in a string.
-.TP
-.BR strsep (3)
-Extract the initial field in a string
-that is delimited by one of the delimiter bytes.
-.TP
-.BR strspn (3)
-Calculate the length of the initial segment of a string
-that consists entirely of accepted bytes.
-.TP
-.BR strstr (3)
-Find the first occurrence of a substring
-in a string.
-.TP
-.BR strtok (3)
-Extract tokens from a string
-that are delimited by one of the delimiter bytes.
-.TP
-.BR strxfrm (3)
-Transforms a string
-to the current locale
-and copies the first bytes to a buffer.
+Copy nonstrings
+.RS
 .TP
 .BR strncpy (3)
-Fill a fixed-size buffer with leading non-null bytes from a source array,
-padding with null bytes as needed.
-.SH SEE ALSO
-.BR bstring (3),
-.BR stpcpy (3),
-.BR strcasecmp (3),
-.BR strcat (3),
-.BR strchr (3),
-.BR strcmp (3),
-.BR strcoll (3),
-.BR strcpy (3),
-.BR strcspn (3),
-.BR strdup (3),
-.BR strfry (3),
-.BR strlen (3),
-.BR strncasecmp (3),
-.BR strncat (3),
-.BR strncmp (3),
-.BR strncpy (3),
-.BR strpbrk (3),
-.BR strrchr (3),
-.BR strsep (3),
-.BR strspn (3),
-.BR strstr (3),
-.BR strtok (3),
+.RE
+.SS Catenate
+.TP
+Catenate strings
+.RS
+.TP
+.BR strcat (3)
+.RE
+.TP
+Catenate nonstrings
+.RS
+.TP
+.BR strncat (3)
+.RE
+.SS Duplicate
+.TP
+Duplicate strings
+.RS
+.TP
+.BR strdup (3)
+.TQ
+.BR strdupa (3)
+.RE
+.TP
+Duplicate nonstrings
+.RS
+.TP
+.BR strndup (3)
+.TQ
+.BR strndupa (3)
+.RE
+.SS Compare
+.TP
+Compare bytes
+.RS
+.TP
+.BR memeq (3)
+.TQ
+.BR memcmp (3)
+.RE
+.TP
+Compare strings
+.RS
+.TP
+.BR streq (3)
+.TQ
+.BR strcmp (3)
+.TQ
+.BR strcasecmp (3)
+.TQ
+.BR strcoll (3)
+.TQ
+.BR strverscmp (3)
+.RE
+.TP
+Compare nonstrings
+.RS
+.TP
+.BR strncmp (3)
+.TQ
+.BR strncasecmp (3)
+.RE
+.SS Search
+.TP
+Search bytes
+.RS
+.TP
+.BR memchr (3)
+.TQ
+.BR memrchr (3)
+.TQ
+.BR memmem (3)
+.RE
+.TP
+Search strings
+.RS
+.TP
+.BR strlen (3)
+.TQ
+.BR strnul (3)
+.TQ
+.BR strchrnul (3)
+.TQ
+.BR strchr (3)
+.TQ
+.BR strrchr (3)
+.TQ
+.BR strpbrk (3)
+.TQ
+.BR strstr (3)
+.TQ
+.BR strcasestr (3)
+.TQ
+.BR strspn (3)
+.TQ
+.BR strcspn (3)
+.RE
+.SS Separate
+.TP
+Separate strings
+.RS
+.TP
+.BR strsep (3)
+.TQ
+.BR strtok (3)
+.RE
+.SS Others
+.TP
 .BR strxfrm (3)
+.SH SEE ALSO
+.BR string_copying (7)
--=20
2.53.0


--26zvu4ieekn4txow
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpOaCAACgkQ64mZXMKQ
wqkLoxAAl58b3h8e8HkvFcxVSIgrKq6+WUvfTfyj9wzENhJB7bJbHnGEHMCwABXs
XTBJ5KcrgO7B88JORxWKzVk7Iy/eDPzaI/E15e2Gt1kJ8wXm9ibLT8P1LckKOZv7
dJiqn4yjvVdDWnawJErj0GrA6dyvyIZYaLiVfyHuXV/8KWmjedgIpGZymCU2TY78
DhZtCQWr2RxDtKgC4g8JAAtbVuP1pIxJjHlOPC8TQLchOSIYdnRkOJI6tK0Bst0A
NpPJZsgVLtB32IZbahTbgKoecWmH9BeZVibsvLjKieOi1zgcKdWRx4ewxY7kPobr
kdJ5jMEj4TwTJkVfqEOdEiA57fetVtz7/hgTnpYlLRVcud2/kDc9cT21Y4z8lgU3
ZM3/WNHgBLAvVH6QPERfsnjMwUyAYwI0KyXWxdttTvk7pC6toLaB6X4DBKBbIUxe
qdaD1CARYY2SM4MlXwHEi7Sm5ALlNgjZXXnoBCjP7PzI9CnQuHKq7dViMww0+9J6
CzPvhJttFC6bEPMRuDv7zadCiGUJC3sYExD/7tsrK31mwaSpwU3/WLoxSWj1vjen
n/XN3G/Wt9bakg2zPQK5m+Tsyn/MS7OKXjuY7+4lazCfzRX5JevxrxwCZ48dleAV
lhbf19F3upuG/M8LmfkzxfTCK1rKZwxZzMFDsxf0+MZcxbX8UcQ=
=k0/k
-----END PGP SIGNATURE-----

--26zvu4ieekn4txow--

