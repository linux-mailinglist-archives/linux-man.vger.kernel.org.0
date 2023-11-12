Return-Path: <linux-man+bounces-60-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B22DC7E9366
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 00:52:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3F14D280AA7
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 23:52:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D79661BDF6;
	Sun, 12 Nov 2023 23:52:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="BH1LJLFm"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9331BDE3
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 23:52:33 +0000 (UTC)
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92A261FD7
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 15:52:32 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 69A073C011BED
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 15:52:32 -0800 (PST)
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id gDnedtUClraz; Sun, 12 Nov 2023 15:52:32 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 036B73C011BEC;
	Sun, 12 Nov 2023 15:52:32 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 036B73C011BEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1699833152;
	bh=3a2SpVPZoBX0peqIptUOxyDDn7Ai5JemANUOBGdwP64=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=BH1LJLFmXElgJVa8C+9kL2WLBxjag40anDLTqYbEE1bZ4A06h+QnegL/QY6Zyufnl
	 Q1T5SCMnzrgu1owH/n0ifL6j8I/WCxGUc5w8ovgrNuM5Zwtc/P/xabYYCuZHGiQxP/
	 e09W59FXDJfyDtPJFxKL1/2kwVi097uR1dVlDl2O8j8mR2KeCXWTmD+WN1xMULfWY+
	 32BYqSvNTevmf7sxD8wEnbgH7kHeb/z/z8NVdt+ym9TSbtsxXuTzyEVxF7CZy/7hXR
	 Du7SJrft2YtTQrtMHKVK5UD1WfHhjJftMwO7HLhtM/IT5SM/0sAVcBlAOrSF7+jHId
	 pmTN9Kdcs5GHw==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id pkqZjCC0dMF0; Sun, 12 Nov 2023 15:52:31 -0800 (PST)
Received: from penguin.cs.ucla.edu (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id D76E13C011BEB;
	Sun, 12 Nov 2023 15:52:31 -0800 (PST)
From: Paul Eggert <eggert@cs.ucla.edu>
To: linux-man@vger.kernel.org
Cc: Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH 4/4] stpncpy(3) fixes
Date: Sun, 12 Nov 2023 15:52:08 -0800
Message-ID: <20231112235218.80195-5-eggert@cs.ucla.edu>
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

Don't say "width" when "size" was meant.
Prefer "byte" to the confusing word "character".
Don't say that the source is a string; it need not be a string.
Don't imply the result always has some null padding.
Prefer standalone terminology.
Fix indenting of prototype.
Improve sample implementation by using memset rather than
the less-standard bzero, and by not overwriting part of
the destination more than once which is confusing.
Simplify example without losing its lessons.
Use fwrite instead of printf to avoid assuming buffer length fits in int;
although obviously this buffer length does fit, it's better if the sample
code is general.
---
 man3/stpncpy.3 | 82 ++++++++++++++++++++++++--------------------------
 1 file changed, 40 insertions(+), 42 deletions(-)

diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
index 3cf4eb371..afe230307 100644
--- a/man3/stpncpy.3
+++ b/man3/stpncpy.3
@@ -7,8 +7,8 @@
 .SH NAME
 stpncpy, strncpy
 \-
-fill a fixed-width buffer with characters from a string
-and pad with null bytes
+fill a fixed-size buffer with non-null bytes from a source array,
+padding with null bytes as needed
 .SH LIBRARY
 Standard C library
 .RI ( libc ", " \-lc )
@@ -18,10 +18,10 @@ Standard C library
 .P
 .BI "char *strncpy(char " dst "[restrict ." sz "], \
 const char *restrict " src ,
-.BI "               size_t " sz );
+.BI "              size_t " sz );
 .BI "char *stpncpy(char " dst "[restrict ." sz "], \
 const char *restrict " src ,
-.BI "               size_t " sz );
+.BI "              size_t " sz );
 .fi
 .P
 .RS -4
@@ -37,15 +37,18 @@ Feature Test Macro Requirements for glibc (see
         _GNU_SOURCE
 .fi
 .SH DESCRIPTION
-These functions copy characters from the string pointed to by
+These functions copy non-null bytes from the array pointed to by
 .I src
-into a character sequence at the fixed-width buffer pointed to by
-.IR dst ,
-and pad with null bytes.
-If the destination buffer,
-limited by its size,
-isn't large enough to hold the copy,
-the resulting character sequence is truncated.
+into the array that is pointed to by
+.I dst
+and that contains
+.I sz
+bytes.
+If the source has too few non-null bytes to fill the destination,
+the functions pad the destination with trailing null bytes;
+if it has too many non-null bytes, the functions copy only the first
+.I sz
+bytes and do not append any null by5tes.
 For the difference between the two functions, see RETURN VALUE.
 .P
 An implementation of these functions might be:
@@ -62,8 +65,8 @@ strncpy(char *restrict dst, const char *restrict src, s=
ize_t sz)
 char *
 stpncpy(char *restrict dst, const char *restrict src, size_t sz)
 {
-    bzero(dst, sz);
-    return mempcpy(dst, src, strnlen(src, sz));
+    size_t n =3D strnlen(src, sz);
+    return memset(mempcpy(dst, src, n), 0, sz - n);
 }
 .EE
 .in
@@ -75,7 +78,7 @@ returns
 .TP
 .BR stpncpy ()
 returns a pointer to
-one after the last character in the destination character sequence.
+one after the last byte in the destination byte sequence.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
@@ -107,9 +110,10 @@ C89, POSIX.1-2001, SVr4, 4.3BSD.
 glibc 1.07.
 POSIX.1-2008.
 .SH CAVEATS
-The name of these functions is confusing.
-These functions produce a null-padded character sequence,
-not a string (see
+The names of these functions are confusing.
+Because these functions append null bytes only if the source is a
+string with length less than the destination size,
+they might not create a string in their destination (see
 .BR string_copying (7)).
 For example:
 .P
@@ -122,14 +126,12 @@ strncpy(buf, "123456", 5);  // { \[aq]1\[aq], \[aq]=
2\[aq], \[aq]3\[aq], \[aq]4\[
 .EE
 .in
 .P
-It's impossible to distinguish truncation by the result of the call,
-from a character sequence that just fits the destination buffer;
-truncation should be detected by
-comparing the length of the input string
-with the size of the destination buffer.
+Although these functions can be used with strings,
+it is the caller's responsibility to detect whether they produce a strin=
g,
+e.g., by checking whether the result buffer ends in a null byte.
 .P
-If you're going to use this function in chained calls,
-it would be useful to develop a similar function that accepts
+To use these functions in chained calls,
+it might be useful to develop wrapper functions that accept
 a pointer to the end (one after the last element) of the destination buf=
fer
 instead of its size.
 .SH EXAMPLES
@@ -141,30 +143,26 @@ instead of its size.
 #include <string.h>
 \&
 int
-main(void)
+main(int argc, char **argv)
 {
-    char    *p;
-    char    buf1[20];
-    char    buf2[20];
-    size_t  len;
+    char buf[20];
 \&
-    if (sizeof(buf2) < strlen("Hello world!"))
-        warnx("strncpy: truncating character sequence");
-    strncpy(buf2, "Hello world!", sizeof(buf2));
-    len =3D strnlen(buf2, sizeof(buf2));
+    if (strncpy(buf, argv[0], sizeof buf)[sizeof buf - 1])
+        warnx("strncpy: destination buffer is not a string");
+    size_t len =3D strnlen(buf, sizeof buf);
 \&
     printf("[len =3D %zu]: ", len);
-    printf("%.*s\en", (int) len, buf2);  // "Hello world!"
+    fwrite(buf, 1, len, stdout);
+    putchar(\[aq]\en\[aq]);
 \&
-    if (sizeof(buf1) < strlen("Hello world!"))
-        warnx("stpncpy: truncating character sequence");
-    p =3D stpncpy(buf1, "Hello world!", sizeof(buf1));
-    len =3D p \- buf1;
+    char *p =3D stpncpy(buf, argv[0], sizeof buf);
+    if (p =3D=3D buf + sizeof buf)
+        warnx("stpncpy: destination buffer is not a string");
+    len =3D p \- buf;
 \&
     printf("[len =3D %zu]: ", len);
-    printf("%.*s\en", (int) len, buf1);  // "Hello world!"
-\&
-    exit(EXIT_SUCCESS);
+    fwrite(buf, 1, len, stdout);
+    putchar(\[aq]\en\[aq]);
 }
 .EE
 .\" SRC END
--=20
2.41.0


