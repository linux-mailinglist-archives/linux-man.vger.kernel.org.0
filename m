Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B289651496
	for <lists+linux-man@lfdr.de>; Mon, 19 Dec 2022 22:02:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232556AbiLSVCl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Dec 2022 16:02:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232577AbiLSVCi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Dec 2022 16:02:38 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FAF5A1A6
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 13:02:37 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id m5-20020a7bca45000000b003d2fbab35c6so7386898wml.4
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 13:02:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EzYgMbgu5xt7GA+1rTGsw0ABzGTTYl/XCUq60V3DV1k=;
        b=cz2LyJUBva3k+2PbghNPsBQesCWasEKKJYlg5Tmj8mQQpt9i/NVvaQOvzNt/2p31sv
         DazVnxZsbIXL1YLkp7AyXwfB+btgsslygBx42jau7Qdu/Yh/ju5Ba4wFQHTX1PCs9x8Q
         B6jI1qu4F8dFRw/EQgvQDZZa6xwjtFHMyHEyy4M5st96dI8cV9EZwPupD7Ha3874xctt
         G2x1MfWcw16IwMDroGT08ePt+zyC4dYteGKFqKVC/nlyQso/cl2pdyiqUrt48c1KAqOB
         r0GwVKYBVcn/VP0e6jN45yKPDl4A6p8jdFJ6jiv74+9el/lsUKwzXh3nVgUKjg3UDHdH
         XWhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EzYgMbgu5xt7GA+1rTGsw0ABzGTTYl/XCUq60V3DV1k=;
        b=kgH9SBTOINMpXgjoCmrPYV2rHMblTL5DwOHF/GwOOKnX+slnU5rQAQa8VvySSSANO+
         lflNivUkmUchQxUO0OFoskAbyyS7+tWBPly6RqdFCGWvsGJr5bHaB+NeD/tUd024PHJX
         IFRpi+DrbXJw8bC98cbjl/in3zLbSg/nSzvHYNWhua2z4f20jto3cwCZdadvARiP5Zwz
         Xr69lt2igFPr3s9J0yjLMJlXpInD115TMJkFRnmHT8NxaogY0nv9ZE7hKfas72PbLSR9
         zG49sctFk8N4Yb4aAS+qV4wTc6BQFhSIK+MjsZsTn7ZEzITz8gK64hXgcjaCkQ61iya/
         gd9g==
X-Gm-Message-State: ANoB5pkSvh7bSInZZ+Bnt1829epn9c8GIRMgO0poIDBBX04JbWETEVzN
        3gyZ4Mnuugj1fQia26AnPxE60U//Kv8=
X-Google-Smtp-Source: AA0mqf5HmIrikWSrYsQDNNgDb/7YhxbFVpNMJJt41Ue7Wcg7Zof8prc7E+0JVpZ1XWnqSVKxCGYzJg==
X-Received: by 2002:a05:600c:908:b0:3d2:3761:b717 with SMTP id m8-20020a05600c090800b003d23761b717mr18050425wmp.37.1671483756088;
        Mon, 19 Dec 2022 13:02:36 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k11-20020a5d6d4b000000b0022584c82c80sm10888516wri.19.2022.12.19.13.02.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 13:02:35 -0800 (PST)
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
Subject: [PATCH v6 5/5] strncat.3: Rewrite to be consistent with string_copy.7.
Date:   Mon, 19 Dec 2022 22:02:09 +0100
Message-Id: <20221219210208.10860-6-alx@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221215002648.35111-1-alx@kernel.org>
References: <20221215002648.35111-1-alx@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
 man3/strncat.3 | 157 ++++++++++++++++++-------------------------------
 1 file changed, 57 insertions(+), 100 deletions(-)

diff --git a/man3/strncat.3 b/man3/strncat.3
index 6e4bf6d78..45fe0575c 100644
--- a/man3/strncat.3
+++ b/man3/strncat.3
@@ -1,10 +1,11 @@
+'\" t
 .\" Copyright 2022 Alejandro Colomar <alx@kernel.org>
 .\"
 .\" SPDX-License-Identifier: Linux-man-pages-copyleft
 .\"
 .TH strncat 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strncat \- concatenate an unterminated string into a string
+strncat \- concatenate a null-padded character sequence into a string
 .SH LIBRARY
 Standard C library
 .RI ( libc ", " \-lc )
@@ -12,54 +13,41 @@ .SH SYNOPSIS
 .nf
 .B #include <string.h>
 .PP
-.BI "char *strncat(char " dest "[restrict strlen(." dest ") + ." n " + 1],"
-.BI "              const char " src "[restrict ." n ],
-.BI "              size_t " n );
+.BI "char *strncat(char *restrict " dst ", const char " src "[restrict ." sz ],
+.BI "               size_t " sz );
 .fi
 .SH DESCRIPTION
-.IR Note :
-This is probably not the function you want to use.
-For string concatenation with truncation, see
-.BR strlcat (3bsd).
-For copying or concatenating a string into a fixed-length buffer
-with zeroing of the rest, see
-.BR stpncpy (3).
-.PP
-.BR strncat ()
-appends at most
-.I n
-characters of
-.I src
-to the end of
+This function catenates the input character sequence
+contained in a null-padded fixed-width buffer,
+into a string at the buffer pointed to by
 .IR dst .
-It always terminates with a null character the string placed in
-.IR dest .
+The programmer is responsible for allocating a destination buffer large enough,
+that is,
+.IR "strlen(dst) + strnlen(src, sz) + 1" .
 .PP
-An implementation of
-.BR strncat ()
-might be:
+An implementation of this function might be:
 .PP
 .in +4n
 .EX
 char *
-strncat(char *dest, const char *src, size_t n)
+strncat(char *restrict dst, const char *restrict src, size_t sz)
 {
-    char    *cat;
-    size_t  len;
+    int   len;
+    char  *p;
 
-    cat = dest + strlen(dest);
-    len = strnlen(src, n);
-    memcpy(cat, src, len);
-    cat[len] = \(aq\e0\(aq;
+    len = strnlen(src, sz);
+    p = dst + strlen(dst);
+    p = mempcpy(p, src, len);
+    *p = \(aq\e0\(aq;
 
-    return dest;
+    return dst;
 }
 .EE
 .in
 .SH RETURN VALUE
 .BR strncat ()
-returns a pointer to the resulting string
-.IR dest .
+returns
+.IR dst .
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
@@ -79,65 +67,25 @@ .SH ATTRIBUTES
 .sp 1
 .SH STANDARDS
 POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
-.SH NOTES
-.SS ustr2stpe()
-You may want to write your own function similar to
-.BR strncpy (),
-with the following improvements:
-.IP \(bu 3
-Copy, instead of concatenating.
-There's no equivalent of
-.BR strncat ()
-that copies instead of concatenating.
-.IP \(bu
-Allow chaining the function,
-by returning a suitable pointer.
-Copy chaining is faster than concatenating.
-.IP \(bu
-Don't check for null characters in the middle of the unterminated string.
-If the string is terminated, this function should not be used.
-If the string is unterminated, it is unnecessary.
-.IP \(bu
-A name that tells what it does:
-Copy from an
-.IR u nterminated
-.IR str ing
-to a
-.IR st ring,
-and return a
-.IR p ointer
-to its end.
-.PP
-.in +4n
-.EX
-/* This code is in the public domain.
- *
- * char *ustr2stp(char dst[restrict .n+1],
- *                const char src[restrict .n],
- *                size_t len);
- */
-char *
-ustr2stp(char *restrict dst, const char *restrict src, size_t len)
-{
-    memcpy(dst, src, len);
-    dst[len] = \(aq\e0\(aq;
-
-    return dst + len;
-}
-.EE
-.in
 .SH CAVEATS
-This function doesn't know the size of the destination buffer,
-so it can overrun the buffer if the programmer wasn't careful enough.
-.SH BUGS
-.BR strncat (3)
-has a misleading name;
-it has no relationship with
+The name of this function is confusing.
+This function has no relation to
 .BR strncpy (3).
+.PP
+If the destination buffer is not large enough,
+the behavior is undefined.
+See
+.B _FORTIFY_SOURCE
+in
+.BR feature_test_macros (7).
+.SH BUGS
+This function can be very inefficient.
+Read about
+.UR https://www.joelonsoftware.com/\:2001/12/11/\:back\-to\-basics/
+Shlemiel the painter
+.UE .
 .SH EXAMPLES
-The following program creates a string
-from a concatenation of unterminated strings.
-.\" SRC BEGIN (strncpy.c)
+.\" SRC BEGIN (strncat.c)
 .EX
 #include <stdio.h>
 #include <stdlib.h>
@@ -148,24 +96,33 @@ .SH EXAMPLES
 int
 main(void)
 {
-    char pre[4] = "pre.";
-    char *post = ".post";
-    char *src = "some_long_body.post";
-    char dest[100];
+    size_t  maxsize;
 
-    dest[0] = \(aq\e0\(aq;
+    // Null-padded fixed-width character sequences
+    char    pre[4] = "pre.";
+    char    new_post[50] = ".foo.bar";
+
+    // Strings
+    char    post[] = ".post";
+    char    src[] = "some_long_body.post";
+    char    *dest;
+
+    maxsize = nitems(pre) + strlen(src) \- strlen(post) +
+              nitems(new_post) + 1;
+    dest = malloc(sizeof(*dest) * maxsize);
+
+    dest[0] = \(aq\e0\(aq;  // There's no 'cpy' function to this 'cat'.
     strncat(dest, pre, nitems(pre));
     strncat(dest, src, strlen(src) \- strlen(post));
+    strncat(dest, new_post, nitems(new_post));
 
-    puts(dest);  // "pre.some_long_body"
+    puts(dest);  // "pre.some_long_body.foo.bar"
+    free(dest);
     exit(EXIT_SUCCESS);
 }
 .EE
 .\" SRC END
 .in
 .SH SEE ALSO
-.BR memccpy (3),
-.BR memcpy (3),
-.BR mempcpy (3),
-.BR strcpy (3),
-.BR string (3)
+.BR string (3),
+.BR string_copy (3)
-- 
2.39.0

