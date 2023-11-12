Return-Path: <linux-man+bounces-59-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6F87E9365
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 00:52:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C3E31C20862
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 23:52:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00FA31A70A;
	Sun, 12 Nov 2023 23:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="qSKYvl4M"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD6F1BDD6
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 23:52:31 +0000 (UTC)
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0EB4D1
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 15:52:30 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 844973C011BEE
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 15:52:30 -0800 (PST)
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id zYlSAD25zcir; Sun, 12 Nov 2023 15:52:30 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 1E8723C011BED;
	Sun, 12 Nov 2023 15:52:30 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 1E8723C011BED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1699833150;
	bh=VQcdqWb4Ja8PeNwcz3uZ6IYsrej/W6fTQyww0kPWabE=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=qSKYvl4Mf96/L2QOd4RXF3mnex55yPS2QvbTa/ozXdcPYuNLT7Gv6DVlHZaWYbtlC
	 HQOS6x4xsq7ApL+8GZuqB92zDs2Vd7VVoxbRp2cDhpOobNe3o3Lr0klLV/Gsd3tvRg
	 vHkTN7RE8iBB1qk7Fc7vKx4Z/JdPbEpvksoOjn7YckBgjbK9ic+yeqdjc8Lkp0v+cE
	 AE1INz+wiBSBu59VVeXgqHYrR8AOp8TV3D+yx6hjDZpXxj0KCtLg35hj9E1KNnNbG2
	 TuJNRdpZ3hU/QmdwIUsepL3aLl5r8YYCHRcQI407P1Zqe4cyWu4iiOZObY0q4v7qIT
	 HRM7eN5Y/B0uQ==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id ZmeTgBdakvws; Sun, 12 Nov 2023 15:52:30 -0800 (PST)
Received: from penguin.cs.ucla.edu (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id F3EF23C011BEB;
	Sun, 12 Nov 2023 15:52:29 -0800 (PST)
From: Paul Eggert <eggert@cs.ucla.edu>
To: linux-man@vger.kernel.org
Cc: Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH 3/4] strncat.3 fixes
Date: Sun, 12 Nov 2023 15:52:07 -0800
Message-ID: <20231112235218.80195-4-eggert@cs.ucla.edu>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231112235218.80195-1-eggert@cs.ucla.edu>
References: <20231112235218.80195-1-eggert@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Don't say "concatenate". Use "byte" instead of "character",
and use standalone terminology rather than relying on the
reader already having read string_copying(7).
Don't say "width" when "size" was intended.
Fix indenting of prototype.
Simplify possible implementation, fixing a bug when the
source string length and sz exceed INT_MAX.
Say that strncat is rarely useful.
Say that behavior is undefined if the destination is not a string.
Simplify example by using plain sizeof rather than an nitems macro,
by removing a confusingly-named 'maxsize' local,
and by removing an unnecessary call to 'exit'.
---
 man3/strncat.3 | 54 +++++++++++++++++++++-----------------------------
 1 file changed, 23 insertions(+), 31 deletions(-)

diff --git a/man3/strncat.3 b/man3/strncat.3
index d0f777d36..9a7df474a 100644
--- a/man3/strncat.3
+++ b/man3/strncat.3
@@ -5,7 +5,8 @@
 .\"
 .TH strncat 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strncat \- concatenate a null-padded character sequence into a string
+strncat \- append non-null bytes from a source array to a string,
+and null-terminate the result
 .SH LIBRARY
 Standard C library
 .RI ( libc ", " \-lc )
@@ -14,15 +15,18 @@ Standard C library
 .B #include <string.h>
 .P
 .BI "char *strncat(char *restrict " dst ", const char " src "[restrict .=
" sz ],
-.BI "               size_t " sz );
+.BI "              size_t " sz );
 .fi
 .SH DESCRIPTION
-This function catenates the input character sequence
-contained in a null-padded fixed-width buffer,
-into a string at the buffer pointed to by
+This function appends at most
+.I sz
+non-null bytes from the array pointed to by
+.I src
+to the end of the string pointed to by
 .IR dst .
-The programmer is responsible for allocating a destination buffer large =
enough,
-that is,
+.I dst
+must point to a string contained in a buffer that is large enough,
+that is, the buffer size must be at least
 .IR "strlen(dst) + strnlen(src, sz) + 1" .
 .P
 An implementation of this function might be:
@@ -32,12 +36,7 @@ An implementation of this function might be:
 char *
 strncat(char *restrict dst, const char *restrict src, size_t sz)
 {
-    int   len;
-    char  *p;
-\&
-    len =3D strnlen(src, sz);
-    p =3D dst + strlen(dst);
-    p =3D mempcpy(p, src, len);
+    char *p =3D mempcpy(dst + strlen(dst), src, strnlen(src, sz));
     *p =3D \[aq]\e0\[aq];
 \&
     return dst;
@@ -67,11 +66,12 @@ C11, POSIX.1-2008.
 .SH HISTORY
 POSIX.1-2001, C89, SVr4, 4.3BSD.
 .SH CAVEATS
-The name of this function is confusing.
-This function has no relation to
+The name of this function is confusing, as it has no relation to
 .BR strncpy (3).
+This function is rarely useful in practice.
 .P
-If the destination buffer is not large enough,
+If the destination buffer does not already contain a string,
+or is not large enough,
 the behavior is undefined.
 See
 .B _FORTIFY_SOURCE
@@ -91,40 +91,32 @@ Shlemiel the painter
 #include <stdlib.h>
 #include <string.h>
 \&
-#define nitems(arr)  (sizeof((arr)) / sizeof((arr)[0]))
-\&
 int
 main(void)
 {
-    size_t  maxsize;
-\&
-    // Null-padded fixed-width character sequences
+    // Null-padded fixed-size character sequences
     char    pre[4] =3D "pre.";
     char    new_post[50] =3D ".foo.bar";
 \&
     // Strings
     char    post[] =3D ".post";
     char    src[] =3D "some_long_body.post";
-    char    *dest;
-\&
-    maxsize =3D nitems(pre) + strlen(src) \- strlen(post) +
-              nitems(new_post) + 1;
-    dest =3D malloc(sizeof(*dest) * maxsize);
+    char *dest =3D malloc(sizeof pre + strlen(src) \- strlen(post)
+                        + sizeof new_post + 1);
     if (dest =3D=3D NULL)
         err(EXIT_FAILURE, "malloc()");
 \&
-    dest[0] =3D \[aq]\e0\[aq];  // There's no 'cpy' function to this 'ca=
t'.
-    strncat(dest, pre, nitems(pre));
+    dest[0] =3D \[aq]\e0\[aq];  // There's no `cpy' function to this `ca=
t'.
+    strncat(dest, pre, sizeof pre);
     strncat(dest, src, strlen(src) \- strlen(post));
-    strncat(dest, new_post, nitems(new_post));
+    strncat(dest, new_post, sizeof new_post);
 \&
     puts(dest);  // "pre.some_long_body.foo.bar"
     free(dest);
-    exit(EXIT_SUCCESS);
 }
 .EE
 .\" SRC END
 .in
 .SH SEE ALSO
 .BR string (3),
-.BR string_copying (3)
+.BR string_copying (7)
--=20
2.41.0


