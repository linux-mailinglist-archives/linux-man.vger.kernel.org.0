Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A401A64D4A5
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 01:27:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229881AbiLOA1H (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 19:27:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229938AbiLOA1B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 19:27:01 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4E3D14D13
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 16:26:59 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id ay14-20020a05600c1e0e00b003cf6ab34b61so658125wmb.2
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 16:26:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ig4cw9KUxcMyF/NOWhrYRlkXMdyTkw1eniORMEaDsgk=;
        b=ftsji0M44weRB6SgR77xbOYVzhj1dvTSI1OieOdlZ9QzGCYOc8WpsIDynJO/2iwC6r
         HGeWstApdbmjN/J9F7+7wxRknHNfawQXfQjpIQMywoMBtviElfq+UPorGWOL6U9d5lV8
         00Z58Uwn/GVJbOnAnCeyNOlieLjfZ195BG9lLrTJI4Hto2rWLc+c5FW4CAS4URtDXFm5
         iIUFI/3RBidD9Uzyz1q1562KNwm0cfU3qvD7zXoVcM25313Vd0q8+e82v6lDPOfTkp2n
         a0nuWhdnxNIADmDL48m8rmXTrk0XD1nKWE4LlLw2vfVxdt36fY3PSBj5sG9XLxCV6AZD
         826g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ig4cw9KUxcMyF/NOWhrYRlkXMdyTkw1eniORMEaDsgk=;
        b=1IGP3xAz+TqNVpvXhqsI4N9oZut5j0jOEVgtOUwoZiBTCObGTbv4mEGiKmOP/x0DpW
         jqOi5jRHbgS0Qxw0GRbwdpI5ZDznC220is2VcqRkFbOsrT10UttbeETyLIr8Um8POMux
         Jpy0Q2Rz5n6vyNxJf/VRx76FgxA/ZKtdyGUSJaXY6SPuiAIUZoj/jScBXq2lGKUSiRIQ
         VkYCDL4hw4ZyQMbJflhFlugnv5/LUxn12Ij1DDyIrS4erhSM9xVCQz0Osh7qdh7xh/se
         L5r+pVPUSiPiOe8MZ0AHx2MQXuxoXp8ZBeItCb63dfUHCosbT+1mMlckqll7oG2W2ji7
         fRgQ==
X-Gm-Message-State: ANoB5pkFStWr1V/uTpUjSGXIoLrLPqaa2w/an+OgAyffIFigeFk30a+D
        Bz71BTbYdu/kpw2MtEetqwpUQoYkYAQ=
X-Google-Smtp-Source: AA0mqf6X240hUHOXHlC1UPiP/8caacCfYf8DzDAEvI6/xGn14dsaLCQqkTpCrhZ1ON1RJPYurWfCQg==
X-Received: by 2002:a05:600c:1e18:b0:3d2:26e1:bd45 with SMTP id ay24-20020a05600c1e1800b003d226e1bd45mr13618852wmb.29.1671064018221;
        Wed, 14 Dec 2022 16:26:58 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id j41-20020a05600c1c2900b003b4ff30e566sm13511901wms.3.2022.12.14.16.26.57
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
Subject: [PATCH v5 4/5] stpncpy.3, strncpy.3: Document in a single page
Date:   Thu, 15 Dec 2022 01:26:47 +0100
Message-Id: <20221215002648.35111-5-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221214161719.12862-1-alx@kernel.org>
References: <20221214161719.12862-1-alx@kernel.org>
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
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/stpncpy.3 | 163 +++++++++++++++++++++++++++++--------------------
 man3/strncpy.3 | 130 +--------------------------------------
 2 files changed, 99 insertions(+), 194 deletions(-)

diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
index 0a62e3055..ab69be8ec 100644
--- a/man3/stpncpy.3
+++ b/man3/stpncpy.3
@@ -1,15 +1,13 @@
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
@@ -17,9 +15,12 @@ .SH SYNOPSIS
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
@@ -35,67 +36,44 @@ .SH SYNOPSIS
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
+into a null-padded character sequence at the fixed-width buffer pointer to by
+.IR dst .
+If the destination buffer,
+limited by its size,
+isn't large enough to hold the copy,
+the resulting character sequence is truncated.
+They only differ in the return value.
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
@@ -107,16 +85,71 @@ .SH ATTRIBUTES
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
+Truncation should be determined by
+comparing the length of the input string
+with the size of the destination buffer.
+.PP
+If you're going to use this function in chained calls,
+it would be useful to develop a similar function that accepts
+a pointer to one past the end of the destination buffer instead of its size.
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
+    char    *end;
+    char    buf1[20];
+    char    buf2[20];
+    size_t  len;
+
+    if (sizeof(buf1) < strlen("Hello world!"))
+        warnx("stpncpy: truncating character sequence");
+    end = stpncpy(buf1, "Hello world!", sizeof(buf1));
+    len = end \- buf1;
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
2.38.1

