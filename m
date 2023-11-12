Return-Path: <linux-man+bounces-49-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0217E8F9B
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 12:27:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96E931C2048A
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 11:27:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D6BE79FB;
	Sun, 12 Nov 2023 11:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5XSAsoK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEA379C6
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 11:27:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67198C433C7;
	Sun, 12 Nov 2023 11:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699788460;
	bh=RMNaYx+Yae4fxJj1Bmypd8wPEPlNeui7IxL4fTlNJJ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M5XSAsoKUikQJ9QNdLm4dopLNNMrL+7f7mxP9v4tRO6ylurq5ZTR7G0N8hOKdXbPP
	 1km7Xjl89yiE/uKG9ds9du2EmqJyngKva+97WP/Q2r4KJWUC6pnp96JCgUw1xaxm8M
	 hmDghAi1l2EZO9gP1nnMv/5rjOHMMp+5kCmjjqliSvo+wFDuBDSmttgfqLxqR4nM98
	 /4RxOsDlDrmb/x2YhiXaDlSj7ACzVrdIrim+b400k+0s+YdH8BuzeFmrxIRl/znj/q
	 2qra7i+uoOKMqpuIOj1wO8KQRTCwrBMq/UtkTC0X/9UYuz2Ii830s1JQbYg+H98f5k
	 55NB7JwxM10WQ==
Date: Sun, 12 Nov 2023 12:27:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
	Guillem Jover <guillem@hadrons.org>,
	Paul Eggert <eggert@cs.ucla.edu>, Jonny Grant <jg@jguk.org>,
	DJ Delorie <dj@redhat.com>,
	Matthew House <mattlloydhouse@gmail.com>,
	Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
	Thorsten Kukuk <kukuk@suse.com>,
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
	Zack Weinberg <zack@owlfolio.org>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Carlos O'Donell <carlos@redhat.com>, Xi Ruoyao <xry111@xry111.site>,
	Stefan Puiu <stefan.puiu@gmail.com>,
	Andreas Schwab <schwab@linux-m68k.org>
Subject: [PATCH v2 3/3] strtcpy.3, string_copying.7: Add strtcpy(3)
Message-ID: <20231112112732.14002-1-alx@kernel.org>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5nf5fY9CgykvReru"
Content-Disposition: inline
In-Reply-To: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
X-Mailer: git-send-email 2.42.0


--5nf5fY9CgykvReru
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Nov 2023 12:27:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
	Guillem Jover <guillem@hadrons.org>,
	Paul Eggert <eggert@cs.ucla.edu>, Jonny Grant <jg@jguk.org>,
	DJ Delorie <dj@redhat.com>,
	Matthew House <mattlloydhouse@gmail.com>,
	Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
	Thorsten Kukuk <kukuk@suse.com>,
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
	Zack Weinberg <zack@owlfolio.org>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Carlos O'Donell <carlos@redhat.com>, Xi Ruoyao <xry111@xry111.site>,
	Stefan Puiu <stefan.puiu@gmail.com>,
	Andreas Schwab <schwab@linux-m68k.org>
Subject: [PATCH v2 3/3] strtcpy.3, string_copying.7: Add strtcpy(3)

Add this new truncating string-copying function.  It intends to fully
replace strlcpy(3), which has important bugs (documented in the
preceeding commit).

It is almost identical to Linux kernel's strscpy(9), so reduce the
documentation of strscpy(9) in this page to the minimum, giving
preference to strtcpy(3).  Provide a reference implementation, since no
libc provides it.

Providing an easy, safe, and relatively fast truncating string-copying
function should prevent users from rolling their own, in which they
might introduce bugs accidentally.  We already made enough mistakes
while discussing these functions, so it's certainly not something that
should be written often.

Cc: Paul Eggert <eggert@cs.ucla.edu>
Cc: Jonny Grant <jg@jguk.org>
Cc: DJ Delorie <dj@redhat.com>
Cc: Matthew House <mattlloydhouse@gmail.com>
Cc: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Cc: Thorsten Kukuk <kukuk@suse.com>
Cc: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc: Zack Weinberg <zack@owlfolio.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Carlos O'Donell <carlos@redhat.com>
Cc: Xi Ruoyao <xry111@xry111.site>
Cc: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Andreas Schwab <schwab@linux-m68k.org>
Cc: Guillem Jover <guillem@hadrons.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/strtcpy.3        |  1 +
 man7/string_copying.7 | 97 ++++++++++++++++++++++++++++++-------------
 2 files changed, 69 insertions(+), 29 deletions(-)
 create mode 100644 man3/strtcpy.3

diff --git a/man3/strtcpy.3 b/man3/strtcpy.3
new file mode 100644
index 000000000..beb850746
--- /dev/null
+++ b/man3/strtcpy.3
@@ -0,0 +1 @@
+.so man7/string_copying.7
diff --git a/man7/string_copying.7 b/man7/string_copying.7
index cb3910db0..4f609e480 100644
--- a/man7/string_copying.7
+++ b/man7/string_copying.7
@@ -6,8 +6,9 @@
 .\" ----- NAME :: -----------------------------------------------------/
 .SH NAME
 stpcpy,
 strcpy, strcat,
+strtcpy,
 stpecpy,
 strlcpy, strlcat,
 stpncpy,
 strncpy,
@@ -30,8 +31,11 @@ .SS Strings
 // Chain-copy a string with truncation.
 .BI "char *stpecpy(char *" dst ", char " end "[0], const char *restrict " =
src );
 .P
 // Copy/catenate a string with truncation.
+.BI "size_t strtcpy(char " dst "[restrict ." sz "], \
+const char *restrict " src ,
+.BI "               size_t " sz );
 .BI "size_t strlcpy(char " dst "[restrict ." sz "], \
 const char *restrict " src ,
 .BI "               size_t " sz );
 .BI "size_t strlcat(char " dst "[restrict ." sz "], \
@@ -220,10 +224,10 @@ .SS Truncate or not?
 .P
 Functions that truncate:
 .IP \[bu] 3
 .BR stpecpy (3)
-is the most efficient string copy function that performs truncation.
-It only requires to check for truncation once after all chained calls.
+.IP \[bu]
+.BR strtcpy (3)
 .IP \[bu]
 .BR strlcpy (3bsd)
 and
 .BR strlcat (3bsd)
@@ -326,8 +330,10 @@ .SS String vs character sequence
 .IP \[bu]
 .BR strcpy (3),
 .BR strcat (3)
 .IP \[bu]
+.BR strtcpy (3)
+.IP \[bu]
 .BR stpecpy (3)
 .IP \[bu]
 .BR strlcpy (3bsd),
 .BR strlcat (3bsd)
@@ -390,12 +396,24 @@ .SS Functions
 The return value is useless.
 .IP
 .BR stpcpy (3)
 is a faster alternative to these functions.
+.\" ----- DESCRIPTION :: Functions :: strtcpy(3) ----------------------/
+.TP
+.BR strtcpy (3)
+Copy the input string into a destination string.
+If the destination buffer isn't large enough to hold the copy,
+the resulting string is truncated
+(but it is guaranteed to be null-terminated).
+It returns the length of the string,
+or \-1 if it truncated.
+.IP
+This function is not provided by any library;
+see EXAMPLES for a reference implementation.
 .\" ----- DESCRIPTION :: Functions :: stpecpy(3) ----------------------/
 .TP
 .BR stpecpy (3)
-Copy the input string into a destination string.
+Chain-copy the input string into a destination string.
 If the destination buffer,
 limited by a pointer to its end,
 isn't large enough to hold the copy,
 the resulting string is truncated
@@ -419,10 +437,12 @@ .SS Functions
 They return the length of the total string they tried to create.
 .IP
 Check BUGS before using these functions.
 .IP
+.BR strtcpy (3)
+and
 .BR stpecpy (3)
-is a simpler alternative to these functions.
+are better alternatives to these functions.
 .\" ----- DESCRIPTION :: Functions :: stpncpy(3) ----------------------/
 .TP
 .BR stpncpy (3)
 Copy the input string into
@@ -542,8 +562,17 @@ .SH RETURN VALUE
 .BR ustpcpy (3)
 A pointer to one after the last character
 in the destination character sequence.
 .TP
+.BR strtcpy (3)
+The length of the string.
+When truncation occurs, it returns \-1.
+When
+.I dsize
+is
+.BR 0 ,
+it also returns \-1.
+.TP
 .BR strlcpy (3bsd)
 .TQ
 .BR strlcat (3bsd)
 The length of the total string that they tried to create
@@ -562,25 +591,14 @@ .SH RETURN VALUE
 which is useless.
 .\" ----- NOTES :: strscpy(9) -----------------------------------------/
 .SH NOTES
 The Linux kernel has an internal function for copying strings,
-which is similar to
-.BR stpecpy (3),
-except that it can't be chained:
-.TP
-.BR strscpy (9)
-Copy the input string into a destination string.
-If the destination buffer,
-limited by its size,
-isn't large enough to hold the copy,
-the resulting string is truncated
-(but it is guaranteed to be null-terminated).
-It returns the length of the destination string, or
+.BR strscpy (9),
+which is identical to
+.BR strtcpy (3),
+except that it returns
 .B \-E2BIG
-on truncation.
-.IP
-.BR stpecpy (3)
-is a simpler and faster alternative to this function.
+instead of \-1.
 .\" ----- CAVEATS :: --------------------------------------------------/
 .SH CAVEATS
 Don't mix chain calls to truncating and non-truncating functions.
 It is conceptually wrong
@@ -640,8 +658,17 @@ .SH EXAMPLES
 strcat(buf, "!");
 len =3D strlen(buf);
 puts(buf);
 .EE
+.\" ----- EXAMPLES :: strtcpy(3) --------------------------------------/
+.TP
+.BR strtcpy (3)
+.EX
+len =3D strtcpy(buf, "Hello world!", sizeof(buf));
+if (len =3D=3D \-1)
+    goto toolong;
+puts(buf);
+.EE
 .\" ----- EXAMPLES :: stpecpy(3) --------------------------------------/
 .TP
 .BR stpecpy (3)
 .EX
@@ -671,17 +698,8 @@ .SH EXAMPLES
 if (len >=3D sizeof(buf))
     goto toolong;
 puts(buf);
 .EE
-.\" ----- EXAMPLES :: strscpy(9) --------------------------------------/
-.TP
-.BR strscpy (9)
-.EX
-len =3D strscpy(buf, "Hello world!", sizeof(buf));
-if (len =3D=3D \-E2BIG)
-    goto toolong;
-puts(buf);
-.EE
 .\" ----- EXAMPLES :: stpncpy(3) --------------------------------------/
 .TP
 .BR stpncpy (3)
 .EX
@@ -765,8 +783,29 @@ .SS Implementations
 .in +4n
 .EX
 /* This code is in the public domain. */
 \&
+.\" ----- EXAMPLES :: Implementations :: strtcpy(3) -------------------/
+ssize_t
+.IR strtcpy "(char *restrict dst, const char *restrict src, size_t sz)"
+{
+    bool    trunc;
+    char    *p;
+    size_t  dlen, slen;
+\&
+    if (dsize =3D=3D 0)
+        return \-1;
+\&
+    slen =3D strnlen(src, dsize);
+    trunc =3D (slen =3D=3D dsize);
+    dlen =3D slen \- trunc;
+\&
+    p =3D mempcpy(dst, src, dlen);
+    *p =3D \[aq]\e0\[aq];
+
+    return trunc ? \-1 : slen;
+}
+\&
 .\" ----- EXAMPLES :: Implementations :: stpecpy(3) -------------------/
 char *
 .IR stpecpy "(char *dst, char end[0], const char *restrict src)"
 {
--=20
2.42.0


--5nf5fY9CgykvReru
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVQtqcACgkQnowa+77/
2zL4HRAAqhNyqDbw4EwZKAYFzgdYP02AshTcNIp2U40w3YAyufzsu4CUrFYa710c
HC/e8UFxWuzG7EAZnfMqPS+vZCs7LvLJFWBDPkYRtuUD7QAWqTBkonIdxjO39XaA
bVamvB4Re1B1DDOii7PWIHiZG4+hVm78sTiGXG64lf+JQYMCtIMoCQKtVP5VD+JT
N4lCARQsms5NxPQpK5Worrqdzx0YQgBdORxZmsjLFBUsjLid0Qg1OR2MnFRdA1yL
sdzgt57KRLQ3BSAJT9ChLhUX4D12KRDjLjtkuV4SyYc343HLsOVPmDKeQeNHAVhT
/d5ABUcKRW4T7+Ai3unqcBRLGv4Yeudmj8VgeN8ngIL4/0VtyHEoIKqvRdq+l1Ou
XpdzndpkQ8K5tAYiO6v2kyUjqSq8ZEvtfwvh7ZgfPvKQqzlHKW4iuDDJI9WLp2Gb
DDEmCeMm05PMIy6w9gx9Xc078DZ90uVOpuBgG+wFBf12+U84wikta5cKBl50N7Bb
mBrYMjcEfgJ6XF0XbX84rpcZblgt2NDEIBBnlEpGZGpZAFElJHuWDyrwhPhfUgXn
1WrTdcaV5xUS4r/Tpbj+glgLeMQYPAFNnd032JqtwGCW7Z9nJJuUembujFWfh2yA
e2YrdQySpPbu774JSqm03+oX1N4T1ULn27ZuePKRh1HSTW5ct9Q=
=1tDb
-----END PGP SIGNATURE-----

--5nf5fY9CgykvReru--

