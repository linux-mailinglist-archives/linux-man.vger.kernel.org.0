Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 368B864D4A4
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 01:27:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229619AbiLOA1G (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 19:27:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229914AbiLOA1B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 19:27:01 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB5B22C647
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 16:26:58 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id ay8-20020a05600c1e0800b003d0808d2826so3512781wmb.1
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 16:26:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UwY2GDvjrKuaDJcHou6nStsWAYR8ec70Hkt00hd/YAw=;
        b=j4vD36QQAL7VV3lhSQLsI4HPr2ccthFvE60VEz2aPYIxBNeTyYKlRc2FDGk0H0aU5r
         s79ZoPiSjRJIgz8DKMSuegstQHvoQEIUH94g9hXVuEdVz6F5QIXKeo/kFdPvYXv91MWf
         BgZOOCY6MTwCZNAgYiSXBCxLd64qh6ix/HSTP68adInNm17AbGlIG4oJ/22GwO3LIN1u
         LUECYA/BXAE58aOB9VQU7HBv/V5TnMCeoam9FFbCDlebmjFk/kpWVt4AtKsFD+iykn54
         d/kEwUylALe0TVFgGaSNqqwCMhcb+5//T4TKRWXZDFui2SC0cwW/hSWKWbUSwGSKkZKF
         Alsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UwY2GDvjrKuaDJcHou6nStsWAYR8ec70Hkt00hd/YAw=;
        b=yqtBtsW8c+ouxxU/pHXxrY2CzmVhvo5Wvx2fuE942/OSNiNI0G5cKNiwVaC7DSphBw
         hAYgrb/6PiRyT8kBJg9Sg/lpnYcjUAzFYdK8aaStWBwllli9X/MlVMNLUx1dSBr8rKXo
         lGQGDeJ98K98O+v/uIf6EVkkF5gIP2QFNrJ1g4848O7x56Rfylle3y5XPEpLw5asA+pJ
         vrJ5ChRoXSg7oYlZWSns8EfEBh8488WIrY9Lag6GmSF0Y5pDQYjmnvDqvasbP2B5IK/f
         MLPbyDZZZE5QlMWzic2TaZtykqAM2gtSK4Zk8hEUJKtJdVJOBVMEIrZmceZzdyoB6T9x
         /4XQ==
X-Gm-Message-State: ANoB5pnNo9k7XV60pL120Q9ue4LsahJz6lTg6NRWo34UNrZf6eYI9vxr
        w6DvUZoBTuQ2ukjnVdT/0OlS9furEqg=
X-Google-Smtp-Source: AA0mqf4fSlmMuOAe/7QxqiQT15Z3H1sjVpoSSMfFXZQQBTla2o+n+YdsA2uR6o6Zw/4kAxlGeGmIXA==
X-Received: by 2002:a7b:c30e:0:b0:3cf:7397:c768 with SMTP id k14-20020a7bc30e000000b003cf7397c768mr20567761wmj.30.1671064017326;
        Wed, 14 Dec 2022 16:26:57 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id j41-20020a05600c1c2900b003b4ff30e566sm13511901wms.3.2022.12.14.16.26.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Dec 2022 16:26:57 -0800 (PST)
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
Subject: [PATCH v5 3/5] stpcpy.3, strcpy.3, strcat.3: Document in a single page
Date:   Thu, 15 Dec 2022 01:26:46 +0100
Message-Id: <20221215002648.35111-4-alx@kernel.org>
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

Rewrite to be consistent with the new string_copy.7 page.

Cc: Martin Sebor <msebor@redhat.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Cc: Jakub Wilk <jwilk@jwilk.net>
Cc: Serge Hallyn <serge@hallyn.com>
Cc: Iker Pedrosa <ipedrosa@redhat.com>
Cc: Andrew Pinski <pinskia@gmail.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/stpcpy.3 |  13 ---
 man3/strcat.3 | 161 +----------------------------------
 man3/strcpy.3 | 226 +++++++++++++++++++++++++++++++-------------------
 3 files changed, 143 insertions(+), 257 deletions(-)

diff --git a/man3/stpcpy.3 b/man3/stpcpy.3
index 5770790fc..d01c0239b 100644
--- a/man3/stpcpy.3
+++ b/man3/stpcpy.3
@@ -14,19 +14,6 @@ .SH SYNOPSIS
 .PP
 .BI "char *stpcpy(char *restrict " dest ", const char *restrict " src );
 .fi
-.PP
-.RS -4
-Feature Test Macro Requirements for glibc (see
-.BR feature_test_macros (7)):
-.RE
-.PP
-.BR stpcpy ():
-.nf
-    Since glibc 2.10:
-        _POSIX_C_SOURCE >= 200809L
-    Before glibc 2.10:
-        _GNU_SOURCE
-.fi
 .SH DESCRIPTION
 The
 .BR stpcpy ()
diff --git a/man3/strcat.3 b/man3/strcat.3
index 277e5b1e4..ff7476a84 100644
--- a/man3/strcat.3
+++ b/man3/strcat.3
@@ -1,160 +1 @@
-.\" Copyright 1993 David Metcalfe (david@prism.demon.co.uk)
-.\"
-.\" SPDX-License-Identifier: Linux-man-pages-copyleft
-.\"
-.\" References consulted:
-.\"     Linux libc source code
-.\"     Lewine's _POSIX Programmer's Guide_ (O'Reilly & Associates, 1991)
-.\"     386BSD man pages
-.\" Modified Sat Jul 24 18:11:47 1993 by Rik Faith (faith@cs.unc.edu)
-.\" 2007-06-15, Marc Boyer <marc.boyer@enseeiht.fr> + mtk
-.\"     Improve discussion of strncat().
-.TH strcat 3 (date) "Linux man-pages (unreleased)"
-.SH NAME
-strcat \- concatenate two strings
-.SH LIBRARY
-Standard C library
-.RI ( libc ", " \-lc )
-.SH SYNOPSIS
-.nf
-.B #include <string.h>
-.PP
-.BI "char *strcat(char *restrict " dest ", const char *restrict " src );
-.fi
-.SH DESCRIPTION
-The
-.BR strcat ()
-function appends the
-.I src
-string to the
-.I dest
-string,
-overwriting the terminating null byte (\(aq\e0\(aq) at the end of
-.IR dest ,
-and then adds a terminating null byte.
-The strings may not overlap, and the
-.I dest
-string must have
-enough space for the result.
-If
-.I dest
-is not large enough, program behavior is unpredictable;
-.IR "buffer overruns are a favorite avenue for attacking secure programs" .
-.SH RETURN VALUE
-The
-.BR strcat ()
-function returns a pointer to the resulting string
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
-.BR strcat (),
-.BR strncat ()
-T}	Thread safety	MT-Safe
-.TE
-.hy
-.ad
-.sp 1
-.SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
-.SH NOTES
-Some systems (the BSDs, Solaris, and others) provide the following function:
-.PP
-.in +4n
-.EX
-size_t strlcat(char *dest, const char *src, size_t size);
-.EE
-.in
-.PP
-This function appends the null-terminated string
-.I src
-to the string
-.IR dest ,
-copying at most
-.I size\-strlen(dest)\-1
-from
-.IR src ,
-and adds a terminating null byte to the result,
-.I unless
-.I size
-is less than
-.IR strlen(dest) .
-This function fixes the buffer overrun problem of
-.BR strcat (),
-but the caller must still handle the possibility of data loss if
-.I size
-is too small.
-The function returns the length of the string
-.BR strlcat ()
-tried to create; if the return value is greater than or equal to
-.IR size ,
-data loss occurred.
-If data loss matters, the caller
-.I must
-either check the arguments before the call, or test the function return value.
-.BR strlcat ()
-is not present in glibc and is not standardized by POSIX,
-.\" https://lwn.net/Articles/506530/
-but is available on Linux via the
-.I libbsd
-library.
-.\"
-.SH EXAMPLES
-Because
-.BR strcat ()
-must find the null byte that terminates the string
-.I dest
-using a search that starts at the beginning of the string,
-the execution time of this function
-scales according to the length of the string
-.IR dest .
-This can be demonstrated by running the program below.
-(If the goal is to concatenate many strings to one target,
-then manually copying the bytes from each source string
-while maintaining a pointer to the end of the target string
-will provide better performance.)
-.\"
-.SS Program source
-\&
-.\" SRC BEGIN (strcat.c)
-.EX
-#include <stdint.h>
-#include <stdio.h>
-#include <string.h>
-#include <time.h>
-
-int
-main(void)
-{
-#define LIM 4000000
-    char p[LIM + 1];    /* +1 for terminating null byte */
-    time_t base;
-
-    base = time(NULL);
-    p[0] = \(aq\e0\(aq;
-
-    for (unsigned int j = 0; j < LIM; j++) {
-        if ((j % 10000) == 0)
-            printf("%u %jd\en", j, (intmax_t) (time(NULL) \- base));
-        strcat(p, "a");
-    }
-}
-.EE
-.\" SRC END
-.SH SEE ALSO
-.BR bcopy (3),
-.BR memccpy (3),
-.BR memcpy (3),
-.BR strcpy (3),
-.BR string (3),
-.BR strlcat (3bsd),
-.BR wcscat (3),
-.BR wcsncat (3)
+.so man3/strcpy.3
diff --git a/man3/strcpy.3 b/man3/strcpy.3
index 74c3180ae..424648c46 100644
--- a/man3/strcpy.3
+++ b/man3/strcpy.3
@@ -1,20 +1,10 @@
-.\" Copyright (C) 1993 David Metcalfe (david@prism.demon.co.uk)
+.\" Copyright 2022 Alejandro Colomar <alx@kernel.org>
 .\"
 .\" SPDX-License-Identifier: Linux-man-pages-copyleft
 .\"
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
 .TH strcpy 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strcpy \- copy a string
+strcpy \- copy or catenate a string
 .SH LIBRARY
 Standard C library
 .RI ( libc ", " \-lc )
@@ -22,26 +12,87 @@ .SH SYNOPSIS
 .nf
 .B #include <string.h>
 .PP
-.BI "char *strcpy(char *restrict " dest ", const char *restrict " src );
+.BI "char *stpcpy(char *restrict " dst ", const char *restrict " src );
+.BI "char *strcpy(char *restrict " dst ", const char *restrict " src );
+.BI "char *strcat(char *restrict " dst ", const char *restrict " src );
+.fi
+.PP
+.RS -4
+Feature Test Macro Requirements for glibc (see
+.BR feature_test_macros (7)):
+.RE
+.PP
+.BR stpcpy ():
+.nf
+    Since glibc 2.10:
+        _POSIX_C_SOURCE >= 200809L
+    Before glibc 2.10:
+        _GNU_SOURCE
 .fi
 .SH DESCRIPTION
-The
+.TP
+.BR stpcpy ()
+.TQ
 .BR strcpy ()
-function copies the string pointed to by
+These functions copy the string pointed to by
 .IR src ,
-including the terminating null byte (\(aq\e0\(aq),
-to the buffer pointed to by
-.IR dest .
-The strings may not overlap, and the destination string
-.I dest
-must be large enough to receive the copy.
-.I Beware of buffer overruns!
-(See BUGS.)
+into a string
+at the buffer pointed to by
+.IR dst .
+The programmer is responsible for allocating a buffer large enough,
+that is,
+.IR "strlen(src) + 1" .
+They only differ in the return value.
+.TP
+.BR strcat ()
+This function catenates the string pointed to by
+.IR src ,
+at the end of the string pointed to by
+.IR dst .
+The programmer is responsible for allocating a buffer large enough,
+that is,
+.IR "strlen(dst) + strlen(src) + 1" .
+.PP
+An implementation of these functions might be:
+.PP
+.in +4n
+.EX
+char *
+stpcpy(char *restrict dst, const char *restrict src)
+{
+    char  *end;
+
+    end = mempcpy(dst, src, strlen(src));
+    *end = \(aq\e0\(aq;
+
+    return end;
+}
+
+char *
+strcpy(char *restrict dst, const char *restrict src)
+{
+    stpcpy(dst, src);
+    return dst;
+}
+
+char *
+strcat(char *restrict dst, const char *restrict src)
+{
+    stpcpy(dst + strlen(dst), src);
+    return dst;
+}
+.EE
+.in
 .SH RETURN VALUE
-The
+.TP
+.BR stpcpy ()
+This function returns
+a pointer to the terminating null byte at the end of the copied string.
+.TP
 .BR strcpy ()
-function returns a pointer to
-the destination string
+.TQ
+.BR strcat ()
+These functions return
 .IR dest .
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
@@ -54,73 +105,80 @@ .SH ATTRIBUTES
 l l l.
 Interface	Attribute	Value
 T{
-.BR strcpy ()
+.BR stpcpy (),
+.BR strcpy (),
+.BR strcat ()
 T}	Thread safety	MT-Safe
 .TE
 .hy
 .ad
 .sp 1
 .SH STANDARDS
+.TP
+.BR stpcpy ()
+POSIX.1-2008.
+.TP
+.BR strcpy ()
+.TQ
+.BR strcat ()
 POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
-.SH NOTES
-.SS strlcpy()
-Some systems (the BSDs, Solaris, and others) provide the following function:
+.SH CAVEATS
+The strings
+.I src
+and
+.I dst
+may not overlap.
 .PP
-.in +4n
-.EX
-size_t strlcpy(char *dest, const char *src, size_t size);
-.EE
-.in
-.PP
-.\" http://static.usenix.org/event/usenix99/full_papers/millert/millert_html/index.html
-.\"     "strlcpy and strlcat - consistent, safe, string copy and concatenation"
-.\"     1999 USENIX Annual Technical Conference
-This function is similar to
-.BR strcpy (),
-but it copies at most
-.I size\-1
-bytes to
-.IR dest ,
-truncating the string as necessary.
-It always adds a terminating null byte.
-This function fixes some of the problems of
-.BR strcpy ()
-but the caller must still handle the possibility of data loss if
-.I size
-is too small.
-The return value of the function is the length of
-.IR src ,
-which allows truncation to be easily detected:
-if the return value is greater than or equal to
-.IR size ,
-truncation occurred.
-If loss of data matters, the caller
-.I must
-either check the arguments before the call,
-or test the function return value.
-.BR strlcpy ()
-is not present in glibc and is not standardized by POSIX,
-.\" https://lwn.net/Articles/506530/
-but is available on Linux via the
-.I libbsd
-library.
+If the destination buffer is not large enough,
+the behavior is undefined.
+See
+.B _FORTIFY_SOURCE
+in
+.BR feature_test_macros (7).
 .SH BUGS
-If the destination string of a
-.BR strcpy ()
-is not large enough, then anything might happen.
-Overflowing fixed-length string buffers is a favorite cracker technique
-for taking complete control of the machine.
-Any time a program reads or copies data into a buffer,
-the program first needs to check that there's enough space.
-This may be unnecessary if you can show that overflow is impossible,
-but be careful: programs can get changed over time,
-in ways that may make the impossible possible.
+.TP
+.BR strcat ()
+This function can be very inefficient.
+Read about
+.UR https://www.joelonsoftware.com/\:2001/12/11/\:back\-to\-basics/
+Shlemiel the painter
+.UE .
+.SH EXAMPLES
+.EX
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+
+int
+main(void)
+{
+    char    *p;
+    char    buf1[BUFSIZ];
+    char    buf2[BUFSIZ];
+    size_t  len;
+
+    p = buf1;
+    p = stpcpy(p, "Hello ");
+    p = stpcpy(p, "world");
+    p = stpcpy(p, "!");
+    len = p \- buf1;
+
+    printf("[len = %zu]: ", len);
+    puts(buf1);  // "Hello world!"
+
+    strcpy(buf2, "Hello ");
+    strcat(buf2, "world");
+    strcat(buf2, "!");
+    len = strlen(buf2);
+
+    printf("[len = %zu]: ", len);
+    puts(buf2);  // "Hello world!"
+
+    exit(EXIT_SUCCESS);
+}
+.EE
 .SH SEE ALSO
-.BR bcopy (3),
-.BR memccpy (3),
-.BR memcpy (3),
-.BR memmove (3),
-.BR stpcpy (3),
 .BR strdup (3),
 .BR string (3),
-.BR wcscpy (3)
+.BR wcscpy (3),
+.BR string_copy (7)
-- 
2.38.1

