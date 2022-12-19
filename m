Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E362651495
	for <lists+linux-man@lfdr.de>; Mon, 19 Dec 2022 22:02:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229690AbiLSVCk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Dec 2022 16:02:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232556AbiLSVCi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Dec 2022 16:02:38 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C7427678
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 13:02:36 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id co23so9929983wrb.4
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 13:02:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rvA/mbgw49CNUJwAw0bou7Q+kqoGSKtXvLqG967rgGc=;
        b=C9eO7wGP0crXO0a9+/j0pl3teeuLwZXFX3StHy5bpP0yA4X/+1NMm25PtmGGrWs5W7
         hoOR0sraFPfGQ5Gn/XSpNgqHH2xFxxjtZ8gTMD8nDy6e5l00L1cn9uzyismlUTnR5lni
         56lqaufMuWsQGoc4Ocmaxz04Tc60KOOAnLk/AZCbb3lhXvEgvJ/+G6jLnSafTo2Rk3Cu
         ALatkkCPm+g8rVyJvla5oCbygJ5Yugot7DBV5xEZbS0m9BPM32d666xzm+qStiUfjhST
         mEPFod5b90Mb3GrqYIA0m/nbOv51lgmms0b6dG7ONtYdBCzeMxsS1inKn+Pmy8F1S0YA
         mp1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rvA/mbgw49CNUJwAw0bou7Q+kqoGSKtXvLqG967rgGc=;
        b=lTyRJdNdDwJVZeuUBaKggM/RUrbza3KAXM9IiwE/FRBonlhkfcnDAjmH6hQX6+UXvS
         +ZCMM7fQcWM9+chaU9YSoZx+0ZlMB45ZLs5X84c81aRI/FT3fr6Y5dyXTGD+sVb0R4f4
         J3vMOx4LlsQ5JfmUMTbn/p3mo6YDVozN1rxadnmn1lYVvdIjGBh+32yAYYD1gdi0G3sZ
         dhBUnQhsxNcLBRN6zPBsKAsBNhHXX+BxOPZUj5KE2gKDFwn8onvKPza2vTENDGRDFazM
         aD3d2GLI6JlzoFAYMWUpyMIw6iwftJ6mmCXh7k1nwpdQdkDvxLlU3IoB2o5F+J/3cNm8
         WJ9A==
X-Gm-Message-State: ANoB5pmAgNL8Ta7NsziZT7tldgEZ3nUzS7VDDMzWFxdshY6w6MuE0m8J
        l1jUWlzk5yZfXwTmMVBo6uI7pNsPx3I=
X-Google-Smtp-Source: AA0mqf7aZ7ror2Ty/X9vLbfPSCQAApx2Ryg8KgJ3BvMkaIHxFgAcNYJCBWSNTh7rZ6xj1WOSbXZxtg==
X-Received: by 2002:a5d:670b:0:b0:242:15af:27f with SMTP id o11-20020a5d670b000000b0024215af027fmr25946944wru.28.1671483755153;
        Mon, 19 Dec 2022 13:02:35 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k11-20020a5d6d4b000000b0022584c82c80sm10888516wri.19.2022.12.19.13.02.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 13:02:34 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        Jakub Wilk <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
        Iker Pedrosa <ipedrosa@redhat.com>,
        Andrew Pinski <pinskia@gmail.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
Subject: [PATCH v6 4/5] stpncpy.3, strncpy.3: Document in a single page
Date:   Mon, 19 Dec 2022 22:02:08 +0100
Message-Id: <20221219210208.10860-5-alx@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221215002648.35111-1-alx@kernel.org>
References: <20221215002648.35111-1-alx@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Rewrite to be consistent with the new string_copy.7 page.

Cc: Martin Sebor <msebor@redhat.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Cc: Jakub Wilk <jwilk@jwilk.net>
Cc: Serge Hallyn <serge@hallyn.com>
Cc: Iker Pedrosa <ipedrosa@redhat.com>
Cc: Andrew Pinski <pinskia@gmail.com>
Cc: Stefan Puiu <stefan.puiu@gmail.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/stpncpy.3 | 166 ++++++++++++++++++++++++++++++-------------------
 man3/strncpy.3 | 130 +-------------------------------------
 2 files changed, 102 insertions(+), 194 deletions(-)

diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
index e7b24036b..e80ec2fd4 100644
--- a/man3/stpncpy.3
+++ b/man3/stpncpy.3
@@ -1,16 +1,14 @@
 '\" t
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\" Copyright (c) 2022 Alejandro Colomar <alx@kernel.org>
+.\" Copyright 2022 Alejandro Colomar <alx@kernel.org>
 .\"
-.\" SPDX-License-Identifier: GPL-2.0-or-later
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
 .\"
-.\" References consulted:
-.\"   GNU glibc-2 source code and manual
-.\"
-.\" Corrected, aeb, 990824
 .TH stpncpy 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-stpncpy \- copy string into a fixed-length buffer and zero the rest of it
+stpncpy, strncpy
+\- zero a fixed-width buffer and
+copy a string into a character sequence with truncation
+and zero the rest of it
 .SH LIBRARY
 Standard C library
 .RI ( libc ", " \-lc )
@@ -18,9 +16,12 @@ .SH SYNOPSIS
 .nf
 .B #include <string.h>
 .PP
-.BI "char *stpncpy(char " dest "[restrict ." n "], \
-const char " src "[restrict ." n ],
-.BI "              size_t " n );
+.BI "char *stpncpy(char " dst "[restrict ." sz "], \
+const char *restrict " src ,
+.BI "               size_t " sz );
+.BI "char *strncpy(char " dst "[restrict ." sz "], \
+const char *restrict " src ,
+.BI "               size_t " sz );
 .fi
 .PP
 .RS -4
@@ -36,67 +37,44 @@ .SH SYNOPSIS
         _GNU_SOURCE
 .fi
 .SH DESCRIPTION
-.IR Note :
-This is probably not the function you want to use.
-For string copying with truncation, see
-.BR strlcpy (3bsd).
-.PP
-The
-.BR stpncpy ()
-function copies at most
-.I n
-characters of
+These functions copy the string pointed to by
 .I src
-and fills the rest of the
-.I dest
-buffer with null bytes.
-.BR Warning :
-If there is no null character among the first
-.I n
-bytes of
-.IR src ,
-the string placed in
-.I dest
-will not be null-terminated.
+into a null-padded character sequence at the fixed-width buffer pointed to by
+.IR dst .
+If the destination buffer,
+limited by its size,
+isn't large enough to hold the copy,
+the resulting character sequence is truncated.
+For the difference between the two functions, see RETURN VALUE.
 .PP
-A simple implementation of
-.BR strncpy ()
-might be:
+An implementation of these functions might be:
 .PP
 .in +4n
 .EX
 char *
-stpncpy(char *dest, const char *src, size_t n)
+stpncpy(char *restrict dst, const char *restrict src, size_t sz)
 {
-    char  *p
+    bzero(dst, sz);
+    return mempcpy(dst, src, strnlen(src, sz));
+}
 
-    bzero(dest, n);
-    p = memccpy(dest, src, \(aq\e0\(aq, n);
-    if (p == NULL)
-        return dest + n;
-
-    return p - 1;
+char *
+strncpy(char *restrict dst, const char *restrict src, size_t sz)
+{
+    stpncpy(dst, src, sz);
+    return dst;
 }
 .EE
 .in
-.PP
-The use of
-.BR strncpy ()
-is to copy a C string to a fixed-length buffer
-while ensuring that unused bytes in the destination buffer are zeroed out
-(perhaps to prevent information leaks if the buffer is to be
-written to media or transmitted to another process via an
-interprocess communication technique).
 .SH RETURN VALUE
+.TP
 .BR stpncpy ()
-returns a pointer to the terminating null byte
-in
-.IR dest ,
-or, if
-.I dest
-is not null-terminated,
-.IR dest + n
-(that is, a pointer to one-past-the-end of the array).
+returns a pointer to
+one after the last character in the destination character sequence.
+.TP
+.BR strncpy ()
+returns
+.IR dst .
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
@@ -108,16 +86,74 @@ .SH ATTRIBUTES
 l l l.
 Interface	Attribute	Value
 T{
-.BR stpncpy ()
+.BR stpncpy (),
+.BR strncpy ()
 T}	Thread safety	MT-Safe
 .TE
 .hy
 .ad
 .sp 1
 .SH STANDARDS
-This function was added to POSIX.1-2008.
-Before that, it was a GNU extension.
-It first appeared in glibc 1.07 in 1993.
+.TP
+.BR stpncpy ()
+POSIX.1-2008.
+.\" Before that, it was a GNU extension.
+.\" It first appeared in glibc 1.07 in 1993.
+.TP
+.BR strncpy ()
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
+.SH CAVEATS
+The name of these functions is confusing.
+These functions produce a null-padded character sequence,
+not a string (see
+.BR string_copy (7)).
+.PP
+It's impossible to distinguish truncation by the result of the call,
+from a character sequence that just fits the destination buffer;
+truncation should be detected by
+comparing the length of the input string
+with the size of the destination buffer.
+.PP
+If you're going to use this function in chained calls,
+it would be useful to develop a similar function that accepts
+a pointer to the end (one after the last element) of the destination buffer
+instead of its size.
+.SH EXAMPLES
+.\" SRC BEGIN (stpncpy.c)
+.EX
+#include <err.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+
+int
+main(void)
+{
+    char    *p;
+    char    buf1[20];
+    char    buf2[20];
+    size_t  len;
+
+    if (sizeof(buf1) < strlen("Hello world!"))
+        warnx("stpncpy: truncating character sequence");
+    p = stpncpy(buf1, "Hello world!", sizeof(buf1));
+    len = p \- buf1;
+
+    printf("[len = %zu]: ", len);
+    printf("%.*s\en", (int) len, buf1);  // "Hello world!"
+
+    if (sizeof(buf2) < strlen("Hello world!"))
+        warnx("strncpy: truncating character sequence");
+    strncpy(buf2, "Hello world!", sizeof(buf));
+    len = strnlen(buf2, sizeof(buf2));
+
+    printf("[len = %zu]: ", len);
+    printf("%.*s\en", (int) len, buf2);  // "Hello world!"
+
+    exit(EXIT_SUCCESS);
+}
+.EE
+.\" SRC END
 .SH SEE ALSO
-.BR strlcpy (3bsd)
-.BR wcpncpy (3)
+.BR wcpncpy (3),
+.BR string_copy (7)
diff --git a/man3/strncpy.3 b/man3/strncpy.3
index e2ffc683f..4710b0201 100644
--- a/man3/strncpy.3
+++ b/man3/strncpy.3
@@ -1,129 +1 @@
-.\" Copyright (C) 1993 David Metcalfe <david@prism.demon.co.uk>
-.\" Copyright (C) 2022 Alejandro Colomar <alx@kernel.org>
-.\"
-.\" SPDX-License-Identifier: Linux-man-pages-copyleft
-.\"
-.\" References consulted:
-.\"     Linux libc source code
-.\"     Lewine's _POSIX Programmer's Guide_ (O'Reilly & Associates, 1991)
-.\"     386BSD man pages
-.\" Modified Sat Jul 24 18:06:49 1993 by Rik Faith (faith@cs.unc.edu)
-.\" Modified Fri Aug 25 23:17:51 1995 by Andries Brouwer (aeb@cwi.nl)
-.\" Modified Wed Dec 18 00:47:18 1996 by Andries Brouwer (aeb@cwi.nl)
-.\" 2007-06-15, Marc Boyer <marc.boyer@enseeiht.fr> + mtk
-.\"     Improve discussion of strncpy().
-.\"
-.TH strncpy 3 (date) "Linux man-pages (unreleased)"
-.SH NAME
-strncpy \- copy a string into a fixed-length buffer and zero the rest of it
-.SH LIBRARY
-Standard C library
-.RI ( libc ", " \-lc )
-.SH SYNOPSIS
-.nf
-.B #include <string.h>
-.PP
-.BI "[[deprecated]] char *strncpy(char " dest "[restrict ." n ],
-.BI "                             const char " src "[restrict ." n "], \
-size_t " n );
-.fi
-.SH DESCRIPTION
-.BI Note: " This is not the function you want to use."
-For string copying with truncation, see
-.BR strlcpy (3bsd).
-For copying a string into a fixed-length buffer with zeroing of the rest,
-see
-.BR stpncpy (3).
-.PP
-.BR strncpy ()
-copies at most
-.I n
-bytes of
-.IR src ,
-and fills the rest of the
-.I dest
-buffer with null bytes.
-.BR Warning :
-If there is no null byte
-among the first
-.I n
-bytes of
-.IR src ,
-the string placed in
-.I dest
-will not be null-terminated.
-.PP
-A simple implementation of
-.BR strncpy ()
-might be:
-.PP
-.in +4n
-.EX
-char *
-strncpy(char *dest, const char *src, size_t n)
-{
-    bzero(dest, n);
-    memccpy(dest, src, \(aq\e0\(aq, n);
-
-    return dest;
-}
-.EE
-.in
-.PP
-The use of
-.BR strncpy ()
-is to copy a C string to a fixed-length buffer
-while ensuring that unused bytes in the destination buffer are zeroed out
-(perhaps to prevent information leaks if the buffer is to be
-written to media or transmitted to another process via an
-interprocess communication technique).
-But
-.BR stpncpy (3)
-is better for this purpose,
-since it detects truncation.
-See BUGS below.
-.SH RETURN VALUE
-The
-.BR strncpy ()
-function returns a pointer to
-the destination buffer
-.IR dest .
-.SH ATTRIBUTES
-For an explanation of the terms used in this section, see
-.BR attributes (7).
-.ad l
-.nh
-.TS
-allbox;
-lbx lb lb
-l l l.
-Interface	Attribute	Value
-T{
-.BR strncpy ()
-T}	Thread safety	MT-Safe
-.TE
-.hy
-.ad
-.sp 1
-.SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
-.SH BUGS
-.BR strncpy ()
-has a misleading name.
-It doesn't produce a (null-terminated) string;
-and it should never be used for producing a string.
-.PP
-It can't detect truncation.
-It's probably better to explicitly call
-.BR bzero (3)
-and
-.BR memccpy (3),
-or
-.BR stpncpy (3)
-since they allow detecting truncation.
-.SH SEE ALSO
-.BR bzero (3),
-.BR memccpy (3),
-.BR stpncpy (3),
-.BR string (3),
-.BR wcsncpy (3)
+.so man3/stpncpy.3
-- 
2.39.0

