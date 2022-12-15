Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFD2A64D4A3
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 01:27:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229808AbiLOA1F (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 19:27:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229939AbiLOA1B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 19:27:01 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A2BF2CE00
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 16:27:00 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id v7so12684046wmn.0
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 16:27:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dzcQcm0P/T9m5g3YHVY0i6j4/ojcBuKj1oq/wNqoaQ8=;
        b=DDeA1TVblrHM2WtKErZ2Mbvr2XmE1OtEQ4FWYmG+j/8jSFMIpQSJ3FDz3KZKJhS4Yl
         9UfGtXLS9O4akAUjxwARQYaf9FMOq+v9L4y2v+TnId5WLDzt04ncQAQgRX3nstHzr453
         0D9VAaWrH/jh5zNmmMIOdiSxlPtL9pyOvdw5b/s757VZpt+OCxDOnHU8NpevINMSzBfw
         9gz/mUIaVZ1tygxiwMG7TD9M5PP7heBCjDuGPMls6YIVMIYk7cJeptYRuULvnXZJX8dR
         STB/883cOBsX1KcF4iWWXmGm8OsfUFis+70XMrObZkBrdgb+60eV2iO2uUX6EnAjjE5y
         GbHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dzcQcm0P/T9m5g3YHVY0i6j4/ojcBuKj1oq/wNqoaQ8=;
        b=OH4bzUWOvUYzjPJYEqsXMQW6V94hDsa4w3CDfnpxs37Fk0kTsHYk/jmJzF33l1vQhC
         0AWyeVXmQc1ZmY8JPL454hcnbNuslZCRpN54UERmoCACEvuBCp3VUQkjHKOwrQzlj+je
         5hl8kDdBQyMEsN7y5V5qX2T1LaE1uN89YCzYoy7wWsRvvzvTEiH9FhIcWaB88X8O2h2D
         s27kqnFzCV8lRd1jp2m1oic5SC/GQiWWs3MImsxrtHv0EGH0jYU1xHEIH+vihKiN1XF2
         3iaX9wrPYknTouGaMLvp3sygRHci8817iBaHP/7DVxS+GRTJ6oq4xAZD0SoAwp0M1e3s
         3QOw==
X-Gm-Message-State: ANoB5plCxmjJgKkUhgFUvqc3u1Bkr6I3IQmPd1eBfetqoqhVGs9SE3RJ
        cgs4qgR9Iz4yOCsqG6OuGVb89KrrsEk=
X-Google-Smtp-Source: AA0mqf6h4lKZIZAA3SXjDUARffPi1ZR52BlBCVMTOSdQ8KU507jBtBUHqiYqlyRmLbH0TJC9hAhMJA==
X-Received: by 2002:a05:600c:354d:b0:3d0:85b5:33d3 with SMTP id i13-20020a05600c354d00b003d085b533d3mr20015148wmq.16.1671064019118;
        Wed, 14 Dec 2022 16:26:59 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id j41-20020a05600c1c2900b003b4ff30e566sm13511901wms.3.2022.12.14.16.26.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Dec 2022 16:26:58 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        Jakub Wilk <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
        Iker Pedrosa <ipedrosa@redhat.com>,
        Andrew Pinski <pinskia@gmail.com>
Subject: [PATCH v5 5/5] strncat.3: Rewrite to be consistent with string_copy.7.
Date:   Thu, 15 Dec 2022 01:26:48 +0100
Message-Id: <20221215002648.35111-6-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221214161719.12862-1-alx@kernel.org>
References: <20221214161719.12862-1-alx@kernel.org>
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
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/strncat.3 | 147 +++++++++++++++----------------------------------
 1 file changed, 45 insertions(+), 102 deletions(-)

diff --git a/man3/strncat.3 b/man3/strncat.3
index 6e4bf6d78..108a9c450 100644
--- a/man3/strncat.3
+++ b/man3/strncat.3
@@ -4,7 +4,7 @@
 .\"
 .TH strncat 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strncat \- concatenate an unterminated string into a string
+strncat \- concatenate a null-padded character sequence into a string
 .SH LIBRARY
 Standard C library
 .RI ( libc ", " \-lc )
@@ -12,53 +12,39 @@ .SH SYNOPSIS
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
+The programmer is responsible for allocating a buffer large enough, that is,
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
+    char  *end;
 
-    cat = dest + strlen(dest);
-    len = strnlen(src, n);
-    memcpy(cat, src, len);
-    cat[len] = \(aq\e0\(aq;
+    len = strnlen(src, sz);
+    end = dst + strlen(dst);
+    end = mempcpy(end, src, len);
+    *end = \(aq\e0\(aq;
 
-    return dest;
+    return dst;
 }
 .EE
 .in
 .SH RETURN VALUE
 .BR strncat ()
-returns a pointer to the resulting string
+returns
 .IR dest .
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
@@ -79,93 +65,50 @@ .SH ATTRIBUTES
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
 .\" SRC BEGIN (strncpy.c)
 .EX
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
 
-#define nitems(arr)  (sizeof((arr)) / sizeof((arr)[0]))
-
 int
 main(void)
 {
-    char pre[4] = "pre.";
-    char *post = ".post";
-    char *src = "some_long_body.post";
-    char dest[100];
+    char    buf[BUFSIZ];
+    size_t  len;
 
-    dest[0] = \(aq\e0\(aq;
-    strncat(dest, pre, nitems(pre));
-    strncat(dest, src, strlen(src) \- strlen(post));
+    buf[0] = \(aq\e0\(aq;  // There's no 'cpy' function to this 'cat'.
+    strncat(buf, "Hello XXX", 6);
+    strncat(buf, "world", 42);
+    strncat(buf, "!", 1);
+    len = strlen(buf);
+
+    printf("[len = %zu]: ", len);
+    puts(buf);  // "Hello world!"
 
-    puts(dest);  // "pre.some_long_body"
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
2.38.1

