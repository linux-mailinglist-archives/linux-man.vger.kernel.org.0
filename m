Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0947B642C4B
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 16:52:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230050AbiLEPwl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 10:52:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232258AbiLEPwk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 10:52:40 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2371D2DDF
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 07:52:39 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id bs21so19268693wrb.4
        for <linux-man@vger.kernel.org>; Mon, 05 Dec 2022 07:52:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cgJoOWOesR718Szj00hCIz9f/B28g41C4V3QcLG26oY=;
        b=DtUhtGScX9PxVBWHYYxcVuMNDXQDCQBvWlauyEfp7OL5T6TtTVG1fMS5PozB1Q5HOi
         xigrb5i0w8p01XviFERnvYMJWN7wbV84OwSyh4ngxyvLyz8d86Ol7MyOjkW7hfzvhvq3
         LkO723q4tASgdUjZWVdpDQiNJMKjJFudL+z4ActF+uf87k7BsVE2pkBWl4SxONiOktxW
         8hIWfMqZgQ8UXYUKshs/jguz9+hTXoIJBb2FhYUuYgb+PI+djP4dP5Bo+Ur6nL2nxrm1
         TrtHM6x36OG+Di17BqTKR84YoWv8TRjpT3St5Ml7KMyf+H5G12Ru2T5XgNY09DpMNyy4
         VFYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cgJoOWOesR718Szj00hCIz9f/B28g41C4V3QcLG26oY=;
        b=DzlyIuYbqf9drsA5gJZv99ZCBKcb4c1kSkpLC/SlMZCZPgCoRf/tywjl743NXaUNN7
         iG7/9O2M8I4kYRViih8M/u+hTA1q3VgKOUzjnyR9D49vqL1d+ChdHZeED9RgDAhYrsWy
         mncE6+PARh0ChN8DDmH4TpFfCbkMjR8YIxjeg0IKFXWqk3pcZZwlRA38mmgB7cjsjy2x
         UUoLJVS+om7Wq7rjEJCexIF2voRy5lBf2dihPkb/ADAHrsyN7wVDW0y0Up1KYicLK2oQ
         yT2TMjLwB9AzH9yimGc1In2K6oZaqlgOshLoliXj+PIhbUqS+RiqmAuwC44v0ptGlxOf
         dWFw==
X-Gm-Message-State: ANoB5pmEcwWxboqqwxiXi8/d4qJitgH4fPV4GavBEUJ2o/6JGuKYAllt
        H14U7Z2MG0dectdPiTjTXTcRZn/3DmI=
X-Google-Smtp-Source: AA0mqf4l0SNXZtpajgXwUxchWm4V1/5icoRQNMHLoWO8leA16zFa7+LqJRFblDdOYwi7YBXIrpPFxA==
X-Received: by 2002:a05:6000:1f11:b0:242:1c3b:7132 with SMTP id bv17-20020a0560001f1100b002421c3b7132mr19787320wrb.569.1670255557568;
        Mon, 05 Dec 2022 07:52:37 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id l28-20020a05600c1d1c00b003c6b7f5567csm29582614wms.0.2022.12.05.07.52.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Dec 2022 07:52:37 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        pkg-shadow-devel@alioth-lists.debian.net, libc-alpha@sourceware.org
Subject: [PATCH] strcat.3, strncat.3: RIP strncat(3)
Date:   Mon,  5 Dec 2022 16:49:05 +0100
Message-Id: <20221205154904.15321-1-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
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

Never use this function.  Really.

Cc: <pkg-shadow-devel@alioth-lists.debian.net>
Cc: <libc-alpha@sourceware.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi!

To shadow-utils readers, I've seen there are a few uses of strncat(3) in
shadow-utils.  I'll review my current PR about string handling to also
address this issue.

To glibc readers, please bury this function deep down as if it were
radioactive waste.

Cheers,

Alex


 man3/strcat.3  | 75 +++-------------------------------------
 man3/strncat.3 | 92 +++++++++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 95 insertions(+), 72 deletions(-)

diff --git a/man3/strcat.3 b/man3/strcat.3
index 61d3e54f1..277e5b1e4 100644
--- a/man3/strcat.3
+++ b/man3/strcat.3
@@ -11,7 +11,7 @@
 .\"     Improve discussion of strncat().
 .TH strcat 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-strcat, strncat \- concatenate two strings
+strcat \- concatenate two strings
 .SH LIBRARY
 Standard C library
 .RI ( libc ", " \-lc )
@@ -20,8 +20,6 @@ .SH SYNOPSIS
 .B #include <string.h>
 .PP
 .BI "char *strcat(char *restrict " dest ", const char *restrict " src );
-.BI "char *strncat(char " dest "[restrict strlen(." dest ") + strnlen(." n ") + 1],"
-.BI "              const char " src "[restrict ." n "], size_t " n );
 .fi
 .SH DESCRIPTION
 The
@@ -42,73 +40,10 @@ .SH DESCRIPTION
 .I dest
 is not large enough, program behavior is unpredictable;
 .IR "buffer overruns are a favorite avenue for attacking secure programs" .
-.PP
-The
-.BR strncat ()
-function is similar, except that
-.IP \(bu 3
-it will use at most
-.I n
-bytes from
-.IR src ;
-and
-.IP \(bu
-.I src
-does not need to be null-terminated if it contains
-.I n
-or more bytes.
-.PP
-As with
-.BR strcat (),
-the resulting string in
-.I dest
-is always null-terminated.
-.PP
-If
-.I src
-contains
-.I n
-or more bytes,
-.BR strncat ()
-writes
-.I n+1
-bytes to
-.I dest
-.RI ( n
-from
-.I src
-plus the terminating null byte).
-Therefore, the size of
-.I dest
-must be at least
-.IR "strlen(dest)+n+1" .
-.PP
-A simple implementation of
-.BR strncat ()
-might be:
-.PP
-.in +4n
-.EX
-char *
-strncat(char *dest, const char *src, size_t n)
-{
-    size_t dest_len = strlen(dest);
-    size_t i;
-
-    for (i = 0 ; i < n && src[i] != \(aq\e0\(aq ; i++)
-        dest[dest_len + i] = src[i];
-    dest[dest_len + i] = \(aq\e0\(aq;
-
-    return dest;
-}
-.EE
-.in
 .SH RETURN VALUE
 The
 .BR strcat ()
-and
-.BR strncat ()
-functions return a pointer to the resulting string
+function returns a pointer to the resulting string
 .IR dest .
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
@@ -175,12 +110,10 @@ .SH NOTES
 .SH EXAMPLES
 Because
 .BR strcat ()
-and
-.BR strncat ()
 must find the null byte that terminates the string
 .I dest
 using a search that starts at the beginning of the string,
-the execution time of these functions
+the execution time of this function
 scales according to the length of the string
 .IR dest .
 This can be demonstrated by running the program below.
@@ -222,6 +155,6 @@ .SH SEE ALSO
 .BR memcpy (3),
 .BR strcpy (3),
 .BR string (3),
-.BR strncpy (3),
+.BR strlcat (3bsd),
 .BR wcscat (3),
 .BR wcsncat (3)
diff --git a/man3/strncat.3 b/man3/strncat.3
index dc3a1ca1c..fefd68c84 100644
--- a/man3/strncat.3
+++ b/man3/strncat.3
@@ -1 +1,91 @@
-.so man3/strcat.3
+.\" Copyright 2022 Alejandro Colomar <alx@kernel.org>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH strncat 3 (date) "Linux man-pages (unreleased)"
+.SH NAME
+strncat \- concatenate two strings
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " \-lc )
+.SH SYNOPSIS
+.nf
+.B #include <string.h>
+.PP
+.B [[deprecated]]
+.BI "char *strncat(char " dest "[restrict strlen(." dest ") + strnlen(." n ") + 1],"
+.BI "              const char " src "[restrict ." n ],
+.BI "              size_t " n );
+.fi
+.SH DESCRIPTION
+.BI Note: " Never use this function."
+.PP
+For safe string concatenation, see
+.BR strlcat (3bsd).
+For copying or concatenating a string into a fixed-length buffer
+with zeroing of the rest, see
+.BR stpncpy (3).
+.PP
+.BR strncat ()
+appends at most
+.I n
+characters of
+.I src
+to the end of
+.IR dst .
+It always terminates with a null character the string placed in
+.IR dest .
+.PP
+A simple implementation of
+.BR strncat ()
+might be:
+.PP
+.in +4n
+.EX
+char *
+strncat(char *dest, const char *src, size_t n)
+{
+    return memcpy(dest + strlen(dest), src, strnlen(src, n));
+}
+.EE
+.in
+.SH RETURN VALUE
+.BR strncat ()
+returns a pointer to the resulting string
+.IR dest .
+.SH ATTRIBUTES
+For an explanation of the terms used in this section, see
+.BR attributes (7).
+.ad l
+.nh
+.TS
+allbox;
+lbx lb lb
+l l l.
+Interface	Attribute	Value
+T{
+.BR strncat ()
+T}	Thread safety	MT-Safe
+.TE
+.hy
+.ad
+.sp 1
+.SH STANDARDS
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
+.SH BUGS
+All.
+Seriously,
+there's no use case for this function.
+.PP
+It has a
+.I very
+misleading name.
+This function has no relationship with
+.BR strncpy (3).
+.PP
+Since it doesn't know the size of the destination buffer,
+this function can easily write past the end of the array,
+being an open door to all kinds of crackers.
+.SH SEE ALSO
+.BR strcpy (3),
+.BR string (3)
-- 
2.38.1

