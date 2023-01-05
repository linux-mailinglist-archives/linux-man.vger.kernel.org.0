Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34C0465F3EF
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 19:46:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232268AbjAESqa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 13:46:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234467AbjAESq0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 13:46:26 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 415B55E089
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 10:46:25 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id i17-20020a05600c355100b003d99434b1cfso2042522wmq.1
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 10:46:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8qGETN16PKwBQIQys7WOodlRuu45oJafwcx25tH0lFQ=;
        b=giEeWozlLxgE/B3rwHPh+EZR9ofA+XdUolEZVGO2PC+k3eYT56Tdz+EfKSkCDz7Nvi
         j1WL+PNFGbkv+j4WjWNHlO0Y37z/JOMiafJI4pntVM6l8zb7q/k43lmD4sh4WnNYNIrG
         6THdkMF4ZMseKnzj9lxARPMj1k0PcV2OEsg5XpdV6bm85i89yDs35+l6ocvSrU81Zhmz
         T5HXGR/+r0l33aNX7Q31aBRnL5G6/Yy/Ulp+l41c1AnbKHoqzyXCGpu3SAHbZ1YzwMFX
         xNWzlgAeF8LRYA7UcYJOtcaWQu28B+4jDViWCPuii6TAMWsVUkshiGgNvfTsRUA16fTz
         kg3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8qGETN16PKwBQIQys7WOodlRuu45oJafwcx25tH0lFQ=;
        b=Uys2u301di2u5Z3/7bDkkxzIxW/IVPrpUnDWAVMT8NOvfPgekE6y70lvRPKNpgWTpP
         6s0dWrCgnZPCA8Tc+OyUA56Hn2qsI9Y9tGtZT5OqKkb/aI45NUBmpXGbbvLHn8UcLHnZ
         4b9r6zUJnjf4KCm6YrLeyNPvYvY+v37jJOeJcYaLbCfLKtsmywlnW0TIcgT4cC6LMfH+
         va3UeIyxhUQhHHfNdYGNmjPM/6aLzA9w89AZkUhp6BrxeIH6TRYk1FdzeXXUJkvCIJ/A
         7wsAuGNQkS6nCIKmrXpjk3lkEgZrDhwWgGy0Vh5BXZYtt5Fm+iG5a+IjAdIzxnS0IS/p
         05bA==
X-Gm-Message-State: AFqh2kr1Pz0ItXGfuPIhwA94pXi6Hx+Xp5wmSYRM/ieQbOjjaEPI3IjI
        i5/t94zpKTAbvcK7X5NkOiM=
X-Google-Smtp-Source: AMrXdXs/eF4YY8bZuBX21GdE8ilwKBrYPuvzo0/bmYizstnZ/V3xi5YKWP1PMWGbp8vQNcA7YdgTZg==
X-Received: by 2002:a7b:cd99:0:b0:3d3:5506:1bac with SMTP id y25-20020a7bcd99000000b003d355061bacmr37786533wmj.30.1672944383734;
        Thu, 05 Jan 2023 10:46:23 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id bg24-20020a05600c3c9800b003cfa3a12660sm9406283wmb.1.2023.01.05.10.46.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 10:46:23 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>
Subject: [PATCH] index.3, memchr.3, strchr.3, string.3, strpbrk.3, strsep.3, strspn.3, strstr.3, strtok.3: Deprecate index(3) and rindex(3)
Date:   Thu,  5 Jan 2023 19:44:47 +0100
Message-Id: <20230105184446.10141-1-alx@kernel.org>
X-Mailer: git-send-email 2.39.0
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

They are identical to strchr(3) and strrchr(3).  Use those.

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi Branden,

I prepared this in response to your messages regarding index(3) and
rindex(3).  These functions are wasting manual page real estate, and are
just confusing users.  Be concise in that these are just aliases for
str[r]chr(3), and let readers open strchr(3) for the details.

Cheers,

Alex

 man3/index.3   | 61 ++++++++++----------------------------------------
 man3/memchr.3  |  2 --
 man3/strchr.3  |  2 --
 man3/string.3  | 14 ++++--------
 man3/strpbrk.3 |  2 --
 man3/strsep.3  |  2 --
 man3/strspn.3  |  2 --
 man3/strstr.3  |  2 --
 man3/strtok.3  |  2 --
 9 files changed, 16 insertions(+), 73 deletions(-)

diff --git a/man3/index.3 b/man3/index.3
index 24ba04baa..a0aa5b78a 100644
--- a/man3/index.3
+++ b/man3/index.3
@@ -1,14 +1,8 @@
 '\" t
-.\" Copyright 1993 David Metcalfe (david@prism.demon.co.uk)
+.\" Copyright 2022 Alejandro Colomar <alx@kernel.org>
 .\"
 .\" SPDX-License-Identifier: Linux-man-pages-copyleft
 .\"
-.\" References consulted:
-.\"     Linux libc source code
-.\"     Lewine's _POSIX Programmer's Guide_ (O'Reilly & Associates, 1991)
-.\"     386BSD man pages
-.\" Modified Mon Apr 12 12:54:34 1993, David Metcalfe
-.\" Modified Sat Jul 24 19:13:52 1993, Rik Faith (faith@cs.unc.edu)
 .TH index 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
 index, rindex \- locate character in string
@@ -19,47 +13,23 @@ .SH SYNOPSIS
 .nf
 .B #include <strings.h>
 .PP
-.BI "char *index(const char *" s ", int " c );
-.BI "char *rindex(const char *" s ", int " c );
+.BI "[[deprecated]] char *index(const char *" s ", int " c );
+.BI "[[deprecated]] char *rindex(const char *" s ", int " c );
 .fi
 .SH DESCRIPTION
-The
 .BR index ()
-function returns a pointer to the first occurrence
-of the character \fIc\fP in the string \fIs\fP.
+is identical to
+.BR strchr (3).
 .PP
-The
 .BR rindex ()
-function returns a pointer to the last occurrence
-of the character \fIc\fP in the string \fIs\fP.
+is identical to
+.BR strrchr (3).
 .PP
-The terminating null byte (\(aq\e0\(aq) is considered to be a part of the
-strings.
-.SH RETURN VALUE
-The
-.BR index ()
+Use
+.BR strchr (3)
 and
-.BR rindex ()
-functions return a pointer to
-the matched character or NULL if the character is not found.
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
-.BR index (),
-.BR rindex ()
-T}	Thread safety	MT-Safe
-.TE
-.hy
-.ad
-.sp 1
+.BR strrchr (3)
+instead of these functions.
 .SH STANDARDS
 4.3BSD; marked as LEGACY in POSIX.1-2001.
 POSIX.1-2008 removes the specifications of
@@ -72,12 +42,5 @@ .SH STANDARDS
 .BR strrchr (3)
 instead.
 .SH SEE ALSO
-.BR memchr (3),
 .BR strchr (3),
-.BR string (3),
-.BR strpbrk (3),
-.BR strrchr (3),
-.BR strsep (3),
-.BR strspn (3),
-.BR strstr (3),
-.BR strtok (3)
+.BR strrchr (3)
diff --git a/man3/memchr.3 b/man3/memchr.3
index 10bc35b9d..68873964e 100644
--- a/man3/memchr.3
+++ b/man3/memchr.3
@@ -137,9 +137,7 @@ .SH STANDARDS
 .SH SEE ALSO
 .BR bstring (3),
 .BR ffs (3),
-.BR index (3),
 .BR memmem (3),
-.BR rindex (3),
 .BR strchr (3),
 .BR strpbrk (3),
 .BR strrchr (3),
diff --git a/man3/strchr.3 b/man3/strchr.3
index 6686e6fee..bbdf33a77 100644
--- a/man3/strchr.3
+++ b/man3/strchr.3
@@ -112,9 +112,7 @@ .SH STANDARDS
 .BR strchrnul ()
 is a GNU extension.
 .SH SEE ALSO
-.BR index (3),
 .BR memchr (3),
-.BR rindex (3),
 .BR string (3),
 .BR strlen (3),
 .BR strpbrk (3),
diff --git a/man3/string.3 b/man3/string.3
index 0bd16a0bd..298f57e83 100644
--- a/man3/string.3
+++ b/man3/string.3
@@ -37,16 +37,12 @@ .SH SYNOPSIS
 ignoring case.
 .TP
 .BI "char *index(const char *" s ", int " c );
-Return a pointer to the first occurrence of the character
-.I c
-in the string
-.IR s .
+Alias for
+.BR strchr (3).
 .TP
 .BI "char *rindex(const char *" s ", int " c );
-Return a pointer to the last occurrence of the character
-.I c
-in the string
-.IR s .
+Alias for
+.BR strrchr (3).
 .TP
 .B #include <string.h>
 .TP
@@ -204,8 +200,6 @@ .SH DESCRIPTION
 See the individual man pages for descriptions of each function.
 .SH SEE ALSO
 .BR bstring (3),
-.BR index (3),
-.BR rindex (3),
 .BR stpcpy (3),
 .BR strcasecmp (3),
 .BR strcat (3),
diff --git a/man3/strpbrk.3 b/man3/strpbrk.3
index f459ee1ee..cb84aeca4 100644
--- a/man3/strpbrk.3
+++ b/man3/strpbrk.3
@@ -57,9 +57,7 @@ .SH ATTRIBUTES
 .SH STANDARDS
 POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
 .SH SEE ALSO
-.BR index (3),
 .BR memchr (3),
-.BR rindex (3),
 .BR strchr (3),
 .BR string (3),
 .BR strsep (3),
diff --git a/man3/strsep.3 b/man3/strsep.3
index 0eb95b8a7..c3e584343 100644
--- a/man3/strsep.3
+++ b/man3/strsep.3
@@ -154,9 +154,7 @@ .SS Program source
 .EE
 .\" SRC END
 .SH SEE ALSO
-.BR index (3),
 .BR memchr (3),
-.BR rindex (3),
 .BR strchr (3),
 .BR string (3),
 .BR strpbrk (3),
diff --git a/man3/strspn.3 b/man3/strspn.3
index e584ca257..34d2f1a6a 100644
--- a/man3/strspn.3
+++ b/man3/strspn.3
@@ -75,9 +75,7 @@ .SH ATTRIBUTES
 .SH STANDARDS
 POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
 .SH SEE ALSO
-.BR index (3),
 .BR memchr (3),
-.BR rindex (3),
 .BR strchr (3),
 .BR string (3),
 .BR strpbrk (3),
diff --git a/man3/strstr.3 b/man3/strstr.3
index 879e51cef..5e7122390 100644
--- a/man3/strstr.3
+++ b/man3/strstr.3
@@ -80,10 +80,8 @@ .SH STANDARDS
 .BR strcasestr ()
 function is a nonstandard extension.
 .SH SEE ALSO
-.BR index (3),
 .BR memchr (3),
 .BR memmem (3),
-.BR rindex (3),
 .BR strcasecmp (3),
 .BR strchr (3),
 .BR string (3),
diff --git a/man3/strtok.3 b/man3/strtok.3
index 80c189064..437072563 100644
--- a/man3/strtok.3
+++ b/man3/strtok.3
@@ -272,9 +272,7 @@ .SS Program source
 can be found in
 .BR getaddrinfo_a (3).
 .SH SEE ALSO
-.BR index (3),
 .BR memchr (3),
-.BR rindex (3),
 .BR strchr (3),
 .BR string (3),
 .BR strpbrk (3),
-- 
2.39.0

