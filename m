Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21723651494
	for <lists+linux-man@lfdr.de>; Mon, 19 Dec 2022 22:02:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232496AbiLSVCj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Dec 2022 16:02:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229690AbiLSVCh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Dec 2022 16:02:37 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B44C695AF
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 13:02:35 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id a17so8754971wrt.11
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 13:02:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c7ytSXCyPLtDKFouDJooZU0AcHwZXvnTj5iE1LNH9dk=;
        b=UzRpdEj9jDUkIBpjRElKUljI4qXXrH3trPbY1zjWckeH1rCJblY/UyPNSupXnq8uds
         QLOvTDnKui3NK+5irMovvZFMBOAI83C4r2rBJUIV1K6zeDBpFKJKnSDpvo1dLEMxH1sA
         gy5bICCjK+yXRjzfiDbKGTMUFvDjRaTJ5O7fFs2TVU6pXB8aEjtl0XThx4Vd9JtxTVRI
         sDtNM9rDrTPe8PPxCVV2bXu56TyQaiDfhFSMj+q4N1pAaTudGZwiGfG8RY0NUsJIWxVP
         EkNGSQKHr7u8m5hpHs8h6dh6I+sA8AUDCijNT7pFDnAl7tJTswYVqB8ODg+xg7GTFcYT
         i9zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c7ytSXCyPLtDKFouDJooZU0AcHwZXvnTj5iE1LNH9dk=;
        b=5DrkdxWeCd3A10h+3LtEGQT8yGeytC0hkV0qVfZoA99inFMkWtnpv21vYOLqS/moPD
         +U/0C4f5tmGe1q77lkk2OCsnKGWrW7EdjZDj4J2abk/LMwYkvCCh7MYiXQn+gBudfx96
         YKM32E/0Cd2Ewlba+P5Vi0UmCOxgxGkiLpLZOc0m6GWPcN9zijX6ajBcEikgDRGw4Z8L
         tacKJN9OCdZh7exoYsg6vK2z5smEEyTMaBYEFBf7RuMCoSHh4DM3pYGUieB5AE/9zCzy
         wDXRqYmrfyhcJ8n42zkGB2qimRFjAO0OBMy+12Y/eF02ntM70Gh4i7PA2+gHUXIhbFBN
         lRbg==
X-Gm-Message-State: ANoB5pme/0+dTo1oTObR21ky6Ht3ZCs0KoJTMuK5yV07FoBbqy1bE4KT
        EHr0JjiFehaRVtdJu3p2X/taUviXNT8=
X-Google-Smtp-Source: AA0mqf7idOnOqLF0FVfU6ukn6zXJX631HMZOPO+P6QL/Z+t+H9P4YPiSX/w3/q9c52s0VFIJF1gPug==
X-Received: by 2002:adf:ec03:0:b0:242:844a:835d with SMTP id x3-20020adfec03000000b00242844a835dmr27358331wrn.65.1671483754199;
        Mon, 19 Dec 2022 13:02:34 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k11-20020a5d6d4b000000b0022584c82c80sm10888516wri.19.2022.12.19.13.02.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 13:02:33 -0800 (PST)
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
Subject: [PATCH v6 3/5] stpcpy.3, strcpy.3, strcat.3: Document in a single page
Date:   Mon, 19 Dec 2022 22:02:07 +0100
Message-Id: <20221219210208.10860-4-alx@kernel.org>
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
 man3/stpcpy.3 | 116 +------------------------
 man3/strcat.3 | 162 +---------------------------------
 man3/strcpy.3 | 234 ++++++++++++++++++++++++++++++++------------------
 3 files changed, 152 insertions(+), 360 deletions(-)

diff --git a/man3/stpcpy.3 b/man3/stpcpy.3
index 42751d356..ff7476a84 100644
--- a/man3/stpcpy.3
+++ b/man3/stpcpy.3
@@ -1,115 +1 @@
-'\" t
-.\" Copyright 1995 James R. Van Zandt <jrv@vanzandt.mv.com>
-.\"
-.\" SPDX-License-Identifier: Linux-man-pages-copyleft
-.\"
-.TH stpcpy 3 (date) "Linux man-pages (unreleased)"
-.SH NAME
-stpcpy \- copy a string returning a pointer to its end
-.SH LIBRARY
-Standard C library
-.RI ( libc ", " \-lc )
-.SH SYNOPSIS
-.nf
-.B #include <string.h>
-.PP
-.BI "char *stpcpy(char *restrict " dest ", const char *restrict " src );
-.fi
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
-.SH DESCRIPTION
-The
-.BR stpcpy ()
-function copies the string pointed to by
-.I src
-(including the terminating null byte (\(aq\e0\(aq)) to the array pointed to by
-.IR dest .
-The strings may not overlap, and the destination string
-.I dest
-must be large enough to receive the copy.
-.SH RETURN VALUE
-.BR stpcpy ()
-returns a pointer to the
-.B end
-of the string
-.I dest
-(that is, the address of the terminating null byte)
-rather than the beginning.
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
-.BR stpcpy ()
-T}	Thread safety	MT-Safe
-.TE
-.hy
-.ad
-.sp 1
-.SH STANDARDS
-This function was added to POSIX.1-2008.
-Before that, it was not part of
-the C or POSIX.1 standards, nor customary on UNIX systems.
-It first appeared at least as early as 1986,
-in the Lattice C AmigaDOS compiler,
-then in the GNU fileutils and GNU textutils in 1989,
-and in the GNU C library by 1992.
-It is also present on the BSDs.
-.SH BUGS
-This function may overrun the buffer
-.IR dest .
-.SH EXAMPLES
-For example, this program uses
-.BR stpcpy ()
-to concatenate
-.B foo
-and
-.B bar
-to produce
-.BR foobar ,
-which it then prints.
-.PP
-.\" SRC BEGIN (stpcpy.c)
-.EX
-#define _GNU_SOURCE
-#include <stdio.h>
-#include <string.h>
-
-int
-main(void)
-{
-    char buffer[20];
-    char *to = buffer;
-
-    to = stpcpy(to, "foo");
-    to = stpcpy(to, "bar");
-    printf("%s\en", buffer);
-}
-.EE
-.\" SRC END
-.SH SEE ALSO
-.BR bcopy (3),
-.BR memccpy (3),
-.BR memcpy (3),
-.BR memmove (3),
-.BR stpncpy (3),
-.BR strcpy (3),
-.BR string (3),
-.BR wcpcpy (3)
+.so man3/strcpy.3
diff --git a/man3/strcat.3 b/man3/strcat.3
index 90b9d260d..ff7476a84 100644
--- a/man3/strcat.3
+++ b/man3/strcat.3
@@ -1,161 +1 @@
-'\" t
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
index 685a8e77a..ba6820dab 100644
--- a/man3/strcpy.3
+++ b/man3/strcpy.3
@@ -1,21 +1,11 @@
 '\" t
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
+stpcpy, strcpy, strcat \- copy or catenate a string
 .SH LIBRARY
 Standard C library
 .RI ( libc ", " \-lc )
@@ -23,27 +13,89 @@ .SH SYNOPSIS
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
+The programmer is responsible for allocating a destination buffer large enough,
+that is,
+.IR "strlen(src) + 1" .
+For the difference between the two functions, see RETURN VALUE.
+.TP
+.BR strcat ()
+This function catenates the string pointed to by
+.IR src ,
+after the string pointed to by
+.I dst
+(overwriting its terminating null byte).
+The programmer is responsible for allocating a destination buffer large enough,
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
+    char  *p;
+
+    p = mempcpy(dst, src, strlen(src));
+    *p = \(aq\e0\(aq;
+
+    return p;
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
+a pointer to the terminating null byte of the copied string.
+.TP
 .BR strcpy ()
-function returns a pointer to
-the destination string
-.IR dest .
+.TQ
+.BR strcat ()
+These functions return
+.IR dst .
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
@@ -55,73 +107,87 @@ .SH ATTRIBUTES
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
+If the destination buffer is not large enough,
+the behavior is undefined.
+See
+.B _FORTIFY_SOURCE
+in
+.BR feature_test_macros (7).
+.PP
+.BR strcat ()
+can be very inefficient.
+Read about
+.UR https://www.joelonsoftware.com/\:2001/12/11/\:back\-to\-basics/
+Shlemiel the painter
+.UE .
+.SH EXAMPLES
+.\" SRC BEGIN (strcpy.c)
 .EX
-size_t strlcpy(char *dest, const char *src, size_t size);
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+
+int
+main(void)
+{
+    char    *p;
+    char    *buf1;
+    char    *buf2;
+    size_t  len, maxsize;
+
+    maxsize = strlen("Hello ") + strlen("world") + strlen("!") + 1;
+    buf1 = malloc(sizeof(*buf1) * maxsize);
+    buf2 = malloc(sizeof(*buf2) * maxsize);
+
+    p = buf1;
+    p = stpcpy(p, "Hello ");
+    p = stpcpy(p, "world");
+    p = stpcpy(p, "!");
+    len = p \- buf1;
+
+    printf("[len = %zu]: ", len);
+    puts(buf1);  // "Hello world!"
+    free(buf1);
+
+    strcpy(buf2, "Hello ");
+    strcat(buf2, "world");
+    strcat(buf2, "!");
+    len = strlen(buf2);
+
+    printf("[len = %zu]: ", len);
+    puts(buf2);  // "Hello world!"
+    free(buf2);
+
+    exit(EXIT_SUCCESS);
+}
 .EE
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
-.SH BUGS
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
+.\" SRC END
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
2.39.0

