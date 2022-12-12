Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D86E364A32D
	for <lists+linux-man@lfdr.de>; Mon, 12 Dec 2022 15:24:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232259AbiLLOY1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Dec 2022 09:24:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231194AbiLLOY0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Dec 2022 09:24:26 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D99411470
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 06:24:24 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id h11so12230248wrw.13
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 06:24:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ud3Qy6A84+6bbSnIDRpG8cR3xLsZ9ZdTdyXbvEbhVfI=;
        b=XKZM/7UVCIWxATdg7HJcLgsXNQb8tXkFX7nu1mWXaLjh06aVc+g+XQazG0+Yh2GgDQ
         LH1zC6Kt4wmjDo2qxk1N38a8zBLmsgyv9T1kyhygZS0Hx7CXsUBq3XFOzHSma383qe5P
         BE0n1r0SRUwYiQod4xdVZ2+nF2jRIwz3xLoZgicVmtX47wYrd9CLnZo+p8JFT3srFpe8
         6QW/g2GbshTJRALr/htmyc8v1Ub5UmaHkWOZh5dLTSSI2QsOPI40+NdVXutBMvEAnd/z
         GJI9DZzbAIsIEtPv2rpaiHMuESQvdb592X1Iuwi+TW06S/xowcLrSfxt5FUbnWXtN+Ad
         GZWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ud3Qy6A84+6bbSnIDRpG8cR3xLsZ9ZdTdyXbvEbhVfI=;
        b=3BhT+BlhjuLI7idcMpjnKsKkaF/MfERymUach0L6V6i3Fi8dENAdALhS2RVQopjg8U
         al3vS82SAZMCX4erDmYT/AqUBRhDyptc5v+lZXfMHNm3anHs0tMfu2dktseHgsNqVOy8
         QcbFTzUXbq058Myko1WLunKBJJBUzj7yReTPxzYRj+kIy7UJ3gMpQUe2u1SYKspzEQr3
         juorXhXxw3sm+Ws0jhU5Ni8Sig+6JaRWlJdsQZxz2DDKORxrshZslLi1Zt+yOA/LoVub
         tUweG3ZDsg3oChkAI/A17nXqPv73WNqM6w4Y+TafnBu+50Keg7BnkAZWh1EzuEjDFcOz
         2nxQ==
X-Gm-Message-State: ANoB5pnzyCtiJmDe8DW4NhJ9bZ6YasaEhTpnfUdgytHzusk9ZkDyh7lw
        9XKKd82vp8T3EhFet8X3YGJFu1aB/Qo=
X-Google-Smtp-Source: AA0mqf5kVPrWb8U1rbQ1sGdntY2ScoCy0+hk66tLmWCmF3KdDeNJTIiQ4RsuX8B7pXqNHypDwVcPtw==
X-Received: by 2002:adf:e283:0:b0:241:63d8:6741 with SMTP id v3-20020adfe283000000b0024163d86741mr9821698wri.9.1670855062952;
        Mon, 12 Dec 2022 06:24:22 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id j18-20020a5d5652000000b002427bfd17b6sm10802902wrw.63.2022.12.12.06.24.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Dec 2022 06:24:22 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>
Subject: [PATCH 2/3] stpcpy.3, stpncpy.3, strcat.3, strncat.3, strncpy.3: Transform the old pages into links to strcpy(3)
Date:   Mon, 12 Dec 2022 15:24:17 +0100
Message-Id: <20221212142418.27615-2-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <176225b0-4b0e-698b-b79e-f8ed78b4cf8c@gmail.com>
References: <176225b0-4b0e-698b-b79e-f8ed78b4cf8c@gmail.com>
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

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/stpcpy.3  | 115 +--------------------------------
 man3/stpncpy.3 | 123 +----------------------------------
 man3/strcat.3  | 161 +--------------------------------------------
 man3/strncat.3 | 172 +------------------------------------------------
 man3/strncpy.3 | 130 +------------------------------------
 5 files changed, 5 insertions(+), 696 deletions(-)

diff --git a/man3/stpcpy.3 b/man3/stpcpy.3
index 5770790fc..ff7476a84 100644
--- a/man3/stpcpy.3
+++ b/man3/stpcpy.3
@@ -1,114 +1 @@
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
diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
index 0a62e3055..ff7476a84 100644
--- a/man3/stpncpy.3
+++ b/man3/stpncpy.3
@@ -1,122 +1 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\" Copyright (c) 2022 Alejandro Colomar <alx@kernel.org>
-.\"
-.\" SPDX-License-Identifier: GPL-2.0-or-later
-.\"
-.\" References consulted:
-.\"   GNU glibc-2 source code and manual
-.\"
-.\" Corrected, aeb, 990824
-.TH stpncpy 3 (date) "Linux man-pages (unreleased)"
-.SH NAME
-stpncpy \- copy string into a fixed-length buffer and zero the rest of it
-.SH LIBRARY
-Standard C library
-.RI ( libc ", " \-lc )
-.SH SYNOPSIS
-.nf
-.B #include <string.h>
-.PP
-.BI "char *stpncpy(char " dest "[restrict ." n "], \
-const char " src "[restrict ." n ],
-.BI "              size_t " n );
-.fi
-.PP
-.RS -4
-Feature Test Macro Requirements for glibc (see
-.BR feature_test_macros (7)):
-.RE
-.PP
-.BR stpncpy ():
-.nf
-    Since glibc 2.10:
-        _POSIX_C_SOURCE >= 200809L
-    Before glibc 2.10:
-        _GNU_SOURCE
-.fi
-.SH DESCRIPTION
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
-.I src
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
-.PP
-A simple implementation of
-.BR strncpy ()
-might be:
-.PP
-.in +4n
-.EX
-char *
-stpncpy(char *dest, const char *src, size_t n)
-{
-    char  *p
-
-    bzero(dest, n);
-    p = memccpy(dest, src, \(aq\e0\(aq, n);
-    if (p == NULL)
-        return dest + n;
-
-    return p - 1;
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
-.SH RETURN VALUE
-.BR stpncpy ()
-returns a pointer to the terminating null byte
-in
-.IR dest ,
-or, if
-.I dest
-is not null-terminated,
-.IR dest + n
-(that is, a pointer to one-past-the-end of the array).
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
-.BR stpncpy ()
-T}	Thread safety	MT-Safe
-.TE
-.hy
-.ad
-.sp 1
-.SH STANDARDS
-This function was added to POSIX.1-2008.
-Before that, it was a GNU extension.
-It first appeared in glibc 1.07 in 1993.
-.SH SEE ALSO
-.BR strlcpy (3bsd)
-.BR wcpncpy (3)
+.so man3/strcpy.3
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
diff --git a/man3/strncat.3 b/man3/strncat.3
index 6e4bf6d78..ff7476a84 100644
--- a/man3/strncat.3
+++ b/man3/strncat.3
@@ -1,171 +1 @@
-.\" Copyright 2022 Alejandro Colomar <alx@kernel.org>
-.\"
-.\" SPDX-License-Identifier: Linux-man-pages-copyleft
-.\"
-.TH strncat 3 (date) "Linux man-pages (unreleased)"
-.SH NAME
-strncat \- concatenate an unterminated string into a string
-.SH LIBRARY
-Standard C library
-.RI ( libc ", " \-lc )
-.SH SYNOPSIS
-.nf
-.B #include <string.h>
-.PP
-.BI "char *strncat(char " dest "[restrict strlen(." dest ") + ." n " + 1],"
-.BI "              const char " src "[restrict ." n ],
-.BI "              size_t " n );
-.fi
-.SH DESCRIPTION
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
-.IR dst .
-It always terminates with a null character the string placed in
-.IR dest .
-.PP
-An implementation of
-.BR strncat ()
-might be:
-.PP
-.in +4n
-.EX
-char *
-strncat(char *dest, const char *src, size_t n)
-{
-    char    *cat;
-    size_t  len;
-
-    cat = dest + strlen(dest);
-    len = strnlen(src, n);
-    memcpy(cat, src, len);
-    cat[len] = \(aq\e0\(aq;
-
-    return dest;
-}
-.EE
-.in
-.SH RETURN VALUE
-.BR strncat ()
-returns a pointer to the resulting string
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
-.BR strncat ()
-T}	Thread safety	MT-Safe
-.TE
-.hy
-.ad
-.sp 1
-.SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
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
-.SH CAVEATS
-This function doesn't know the size of the destination buffer,
-so it can overrun the buffer if the programmer wasn't careful enough.
-.SH BUGS
-.BR strncat (3)
-has a misleading name;
-it has no relationship with
-.BR strncpy (3).
-.SH EXAMPLES
-The following program creates a string
-from a concatenation of unterminated strings.
-.\" SRC BEGIN (strncpy.c)
-.EX
-#include <stdio.h>
-#include <stdlib.h>
-#include <string.h>
-
-#define nitems(arr)  (sizeof((arr)) / sizeof((arr)[0]))
-
-int
-main(void)
-{
-    char pre[4] = "pre.";
-    char *post = ".post";
-    char *src = "some_long_body.post";
-    char dest[100];
-
-    dest[0] = \(aq\e0\(aq;
-    strncat(dest, pre, nitems(pre));
-    strncat(dest, src, strlen(src) \- strlen(post));
-
-    puts(dest);  // "pre.some_long_body"
-    exit(EXIT_SUCCESS);
-}
-.EE
-.\" SRC END
-.in
-.SH SEE ALSO
-.BR memccpy (3),
-.BR memcpy (3),
-.BR mempcpy (3),
-.BR strcpy (3),
-.BR string (3)
+.so man3/strcpy.3
diff --git a/man3/strncpy.3 b/man3/strncpy.3
index e2ffc683f..ff7476a84 100644
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
+.so man3/strcpy.3
-- 
2.38.1

