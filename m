Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DAA0400FFB
	for <lists+linux-man@lfdr.de>; Sun,  5 Sep 2021 15:26:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233765AbhIEN1D (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Sep 2021 09:27:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229566AbhIEN1C (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Sep 2021 09:27:02 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5EC9C061575
        for <linux-man@vger.kernel.org>; Sun,  5 Sep 2021 06:25:57 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id n5so5624298wro.12
        for <linux-man@vger.kernel.org>; Sun, 05 Sep 2021 06:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=16ML9g59+osTIz8NYE445DGuLSqC7eI4Hgjp6wAKXag=;
        b=q3uG8JTkRCXynnFLU7/GS7L732wBEreSTaR6KTpuUlUBQ+e3uiqR2OUOoLGt4hdJ0S
         bfAX9IkOreZpGqWMx1bjjoi90lCZoMx2pQFzYJxkMYzQppQzgh3K38vvKRex7dsHKDTg
         06fsTxFJjera9Vw3Wa0GdyTfnwHq3NREvTci90DYTaQe1GdRJq1Ty7dbJn8j0PJeaLBg
         tqhKmN3dz99RaVcTBEerSVvpLkHXGyqA5G69mebEuPucpkhKOr7NUeRgThKfO1Wjnf2n
         Zhjn6e0hdj8bQ373W7nyknNTrFNkz2Bf2mx791JXA0EElKsdAt3r7y+5zZ6Rpsuw7KC9
         G4WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=16ML9g59+osTIz8NYE445DGuLSqC7eI4Hgjp6wAKXag=;
        b=rBY2GvpCimnd6vXpFaWdvXeMdbD2Q9NH903Uw/7cdULXn2kHSslxTA3nssr+npBWJf
         RBBbcSynWU3niZUP9S9yCAAeZVyYo5zJNviYpvChURQgawngpZ+6Y09aRiQmXwZ/w16P
         RqIUpqRU0b5g52p4Zezh0SjUnTQI0pBXjeKfWcGZJmJD6aXHX0ZknRIcANNmbNejq4Ek
         ekrpu+TFq5UzgOEEFCJ4jvs/iFKxdGIKfDU46JHCywNdzWYtbpFnQ9G2I/zqE++//9r4
         O5NxC5aRwZ49stW7Ca1FIsW7GoczoMa84Ud88TnHulC+EwXlaplmcDtHOldkWnrV9alr
         RTzg==
X-Gm-Message-State: AOAM5312sxOWC4KX6CA+Pf7i0sOp6KJ/Wh4XE7ApUWZQPVR4+I0pM4GL
        LTmqf7Y/FLUC+WWtUop6zTs=
X-Google-Smtp-Source: ABdhPJyZHu0tH3spLesTWMxTbXn5p984qK+rYnySav7FYh89e+wgpTFY7vz57G6mTOYVE9Tb8C7mgw==
X-Received: by 2002:a05:6000:362:: with SMTP id f2mr8468497wrf.197.1630848355978;
        Sun, 05 Sep 2021 06:25:55 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id l124sm4608586wml.8.2021.09.05.06.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 06:25:55 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jilayne Lovejoy <opensource@jilayne.com>,
        Alexios Zavras <alexios.zavras@intel.com>,
        Richard Fontana <rfontana@redhat.com>
Subject: [RFC v3 6/9] Many pages: [GPL-2.0-or-later] Use SPDX markings
Date:   Sun,  5 Sep 2021 15:25:39 +0200
Message-Id: <20210905132542.245236-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210905132542.245236-1-alx.manpages@gmail.com>
References: <20210905132542.245236-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

To simplify understanding which license applies to each file,
let's use SPDX markings, which are simple, informative, and
commonly used in many projects.
Let's also follow REUSE <https://reuse.software/> conventions.

Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Jilayne Lovejoy <opensource@jilayne.com>
Cc: Alexios Zavras <alexios.zavras@intel.com>
Cc: Richard Fontana <rfontana@redhat.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/MB_LEN_MAX.3    | 10 ++--------
 man3/fenv.3          | 24 ++----------------------
 man3/fgetwc.3        | 11 +++--------
 man3/fgetws.3        | 11 +++--------
 man3/fputwc.3        | 10 ++--------
 man3/fputws.3        | 10 ++--------
 man3/ftime.3         | 26 ++------------------------
 man3/ftw.3           | 30 +++++-------------------------
 man3/fwide.3         | 10 ++--------
 man3/getgrent_r.3    | 24 ++----------------------
 man3/getpass.3       | 24 ++----------------------
 man3/getpwent_r.3    | 24 ++----------------------
 man3/getutent.3      | 24 ++----------------------
 man3/getwchar.3      | 10 ++--------
 man3/hsearch.3       | 27 +++------------------------
 man3/iconv_close.3   | 10 ++--------
 man3/iconv_open.3    | 10 ++--------
 man3/iswalnum.3      | 10 ++--------
 man3/iswalpha.3      | 10 ++--------
 man3/iswblank.3      | 10 ++--------
 man3/iswcntrl.3      | 10 ++--------
 man3/iswctype.3      | 10 ++--------
 man3/iswdigit.3      | 10 ++--------
 man3/iswgraph.3      | 10 ++--------
 man3/iswlower.3      | 10 ++--------
 man3/iswprint.3      | 10 ++--------
 man3/iswpunct.3      | 10 ++--------
 man3/iswspace.3      | 10 ++--------
 man3/iswupper.3      | 10 ++--------
 man3/iswxdigit.3     | 10 ++--------
 man3/lio_listio.3    | 24 ++----------------------
 man3/lockf.3         | 25 ++-----------------------
 man3/login.3         | 26 +++-----------------------
 man3/mblen.3         | 10 ++--------
 man3/mbrlen.3        | 10 ++--------
 man3/mbrtowc.3       | 10 ++--------
 man3/mbsinit.3       | 10 ++--------
 man3/mbsnrtowcs.3    | 10 ++--------
 man3/mbsrtowcs.3     | 10 ++--------
 man3/mbstowcs.3      | 12 +++---------
 man3/mbtowc.3        | 10 ++--------
 man3/nl_langinfo.3   | 14 ++++----------
 man3/perror.3        | 29 ++++-------------------------
 man3/posix_madvise.3 | 20 ++------------------
 man3/printf.3        | 24 ++----------------------
 man3/putwchar.3      | 10 ++--------
 man3/setjmp.3        | 24 ++----------------------
 man3/stpncpy.3       | 10 ++--------
 man3/strfmon.3       | 24 ++----------------------
 man3/strnlen.3       | 10 ++--------
 man3/strtoimax.3     | 24 ++----------------------
 man3/termios.3       | 27 +++------------------------
 man3/towctrans.3     | 10 ++--------
 man3/towlower.3      | 12 +++---------
 man3/towupper.3      | 11 +++--------
 man3/ttyname.3       | 24 ++----------------------
 man3/ualarm.3        | 24 ++----------------------
 man3/ungetwc.3       | 10 ++--------
 man3/updwtmp.3       | 25 ++-----------------------
 man3/wcpcpy.3        | 10 ++--------
 man3/wcpncpy.3       | 10 ++--------
 man3/wcrtomb.3       | 10 ++--------
 man3/wcscasecmp.3    | 10 ++--------
 man3/wcscat.3        | 10 ++--------
 man3/wcschr.3        | 10 ++--------
 man3/wcscmp.3        | 10 ++--------
 man3/wcscspn.3       | 10 ++--------
 man3/wcsdup.3        | 10 ++--------
 man3/wcslen.3        | 10 ++--------
 man3/wcsncasecmp.3   | 10 ++--------
 man3/wcsncat.3       | 10 ++--------
 man3/wcsncmp.3       | 10 ++--------
 man3/wcsncpy.3       | 10 ++--------
 man3/wcsnlen.3       | 10 ++--------
 man3/wcsnrtombs.3    | 10 ++--------
 man3/wcspbrk.3       | 10 ++--------
 man3/wcsrchr.3       | 10 ++--------
 man3/wcsrtombs.3     | 10 ++--------
 man3/wcsspn.3        | 10 ++--------
 man3/wcsstr.3        | 10 ++--------
 man3/wcstoimax.3     | 24 ++----------------------
 man3/wcstok.3        | 10 ++--------
 man3/wcstombs.3      | 10 ++--------
 man3/wcswidth.3      | 10 ++--------
 man3/wctob.3         | 10 ++--------
 man3/wctomb.3        | 10 ++--------
 man3/wctrans.3       | 10 ++--------
 man3/wctype.3        | 10 ++--------
 man3/wcwidth.3       | 10 ++--------
 man3/wmemchr.3       | 10 ++--------
 man3/wmemcmp.3       | 10 ++--------
 man3/wmemcpy.3       | 10 ++--------
 man3/wmemmove.3      | 10 ++--------
 man3/wmemset.3       | 10 ++--------
 man3/wordexp.3       | 24 ++----------------------
 man3/wprintf.3       | 10 ++--------
 96 files changed, 207 insertions(+), 1105 deletions(-)

diff --git a/man3/MB_LEN_MAX.3 b/man3/MB_LEN_MAX.3
index 462679809..6d492dd02 100644
--- a/man3/MB_LEN_MAX.3
+++ b/man3/MB_LEN_MAX.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/fenv.3 b/man3/fenv.3
index 426b468e2..5ebf63296 100644
--- a/man3/fenv.3
+++ b/man3/fenv.3
@@ -1,25 +1,5 @@
-.\" Copyright (c) 2000 Andries Brouwer (aeb@cwi.nl)
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2000, Andries Brouwer <aeb@cwi.nl>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 2000-08-14 added GNU additions from Andreas Jaeger
 .\" 2000-12-05 some changes inspired by acahalan's remarks
diff --git a/man3/fgetwc.3 b/man3/fgetwc.3
index ac5ee5963..38ca32de1 100644
--- a/man3/fgetwc.3
+++ b/man3/fgetwc.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
@@ -15,6 +9,7 @@
 .\"   ISO/IEC 9899:1999
 .\"
 .\" Modified Tue Oct 16 23:18:40 BST 2001 by John Levon <moz@compsoc.man.ac.uk>
+.\"
 .TH FGETWC 3  2021-03-22 "GNU" "Linux Programmer's Manual"
 .SH NAME
 fgetwc, getwc \- read a wide character from a FILE stream
diff --git a/man3/fgetws.3 b/man3/fgetws.3
index cfd78b6bb..d8c93e20c 100644
--- a/man3/fgetws.3
+++ b/man3/fgetws.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
@@ -15,6 +9,7 @@
 .\"   ISO/IEC 9899:1999
 .\"
 .\" Modified Tue Oct 16 23:18:40 BST 2001 by John Levon <moz@compsoc.man.ac.uk>
+.\"
 .TH FGETWS 3  2021-03-22 "GNU" "Linux Programmer's Manual"
 .SH NAME
 fgetws \- read a wide-character string from a FILE stream
diff --git a/man3/fputwc.3 b/man3/fputwc.3
index 2f947110c..aef0de230 100644
--- a/man3/fputwc.3
+++ b/man3/fputwc.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/fputws.3 b/man3/fputws.3
index 775cd310f..0b9e4f59e 100644
--- a/man3/fputws.3
+++ b/man3/fputws.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/ftime.3 b/man3/ftime.3
index 8c336e0a3..672918ecc 100644
--- a/man3/ftime.3
+++ b/man3/ftime.3
@@ -1,27 +1,5 @@
-.\" Copyright (c) 1993 Michael Haardt
-.\" (michael@moria.de)
-.\" Fri Apr  2 11:32:09 MET DST 1993
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1993, Michael Haardt <michael@moria.de>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Modified Sat Jul 24 14:23:14 1993 by Rik Faith (faith@cs.unc.edu)
 .\" Modified Sun Oct 18 17:31:43 1998 by Andries Brouwer (aeb@cwi.nl)
diff --git a/man3/ftw.3 b/man3/ftw.3
index bc4e87d22..e5ebb7285 100644
--- a/man3/ftw.3
+++ b/man3/ftw.3
@@ -1,28 +1,8 @@
-.\" Copyright (c) 1993 Michael Haardt (michael@moria.de)
-.\" and copyright (c) 1999 Andries Brouwer (aeb@cwi.nl)
-.\" and copyright (c) 2006 Justin Pryzby <justinpryzby@users.sf.net>
-.\" and copyright (c) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1993, Michael Haardt <michael@moria.de>
+.\" SPDX-FileCopyrightText: 1999, Andries Brouwer <aeb@cwi.nl>
+.\" SPDX-FileCopyrightText: 2006, Justin Pryzby <justinpryzby@users.sf.net>
+.\" SPDX-FileCopyrightText: 2006, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Modified Sun Jul 25 11:02:22 1993 by Rik Faith (faith@cs.unc.edu)
 .\" 2006-05-24, Justin Pryzby <justinpryzby@users.sf.net>
diff --git a/man3/fwide.3 b/man3/fwide.3
index b6e7d4df2..b4b42d881 100644
--- a/man3/fwide.3
+++ b/man3/fwide.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/getgrent_r.3 b/man3/getgrent_r.3
index 8c9f6c011..0a6016e12 100644
--- a/man3/getgrent_r.3
+++ b/man3/getgrent_r.3
@@ -1,25 +1,5 @@
-.\" Copyright (c) 2003 Andries Brouwer (aeb@cwi.nl)
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2003, Andries Brouwer <aeb@cwi.nl>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH GETGRENT_R 3 2021-03-22 "GNU" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/getpass.3 b/man3/getpass.3
index fa2031544..683cdb08b 100644
--- a/man3/getpass.3
+++ b/man3/getpass.3
@@ -1,25 +1,5 @@
-.\" Copyright (c) 2000 Andries Brouwer (aeb@cwi.nl)
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2000, Andries Brouwer <aeb@cwi.nl>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH GETPASS 3  2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/getpwent_r.3 b/man3/getpwent_r.3
index 3c90a9b7b..d72ffd51e 100644
--- a/man3/getpwent_r.3
+++ b/man3/getpwent_r.3
@@ -1,25 +1,5 @@
-.\" Copyright (c) 2003 Andries Brouwer (aeb@cwi.nl)
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2003, Andries Brouwer <aeb@cwi.nl>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH GETPWENT_R 3 2021-03-22 "GNU" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/getutent.3 b/man3/getutent.3
index f6e866b47..88ed21589 100644
--- a/man3/getutent.3
+++ b/man3/getutent.3
@@ -1,25 +1,5 @@
-.\" Copyright 1995 Mark D. Roth (roth@uiuc.edu)
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1995, Mark D. Roth <roth@uiuc.edu>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"     Linux libc source code
diff --git a/man3/getwchar.3 b/man3/getwchar.3
index 91381ccf1..d6e541dcc 100644
--- a/man3/getwchar.3
+++ b/man3/getwchar.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/hsearch.3 b/man3/hsearch.3
index 1db018617..89b844af8 100644
--- a/man3/hsearch.3
+++ b/man3/hsearch.3
@@ -1,27 +1,6 @@
-.\" Copyright 1993 Ulrich Drepper (drepper@karlsruhe.gmd.de)
-.\" and Copyright 2008, Linux Foundation, written by Michael Kerrisk
-.\"     <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1993, Ulrich Drepper <drepper@karlsruhe.gmd.de>
+.\" SPDX-FileCopyrightText: 2008, Linux Foundation, written by Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"     SunOS 4.1.1 man pages
diff --git a/man3/iconv_close.3 b/man3/iconv_close.3
index ebd71b2fc..89d4d2698 100644
--- a/man3/iconv_close.3
+++ b/man3/iconv_close.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/iconv_open.3 b/man3/iconv_open.3
index 0a1b8a69a..3184de6af 100644
--- a/man3/iconv_open.3
+++ b/man3/iconv_open.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/iswalnum.3 b/man3/iswalnum.3
index bee307a57..dfb10ac47 100644
--- a/man3/iswalnum.3
+++ b/man3/iswalnum.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/iswalpha.3 b/man3/iswalpha.3
index a5fdfb5bd..cd6b52baf 100644
--- a/man3/iswalpha.3
+++ b/man3/iswalpha.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/iswblank.3 b/man3/iswblank.3
index d1430cc41..5fcbb8c41 100644
--- a/man3/iswblank.3
+++ b/man3/iswblank.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/iswcntrl.3 b/man3/iswcntrl.3
index 4e4736a8d..81dbd1588 100644
--- a/man3/iswcntrl.3
+++ b/man3/iswcntrl.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/iswctype.3 b/man3/iswctype.3
index 4a5586ce5..cb925c790 100644
--- a/man3/iswctype.3
+++ b/man3/iswctype.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/iswdigit.3 b/man3/iswdigit.3
index c9224826b..c0e9877c8 100644
--- a/man3/iswdigit.3
+++ b/man3/iswdigit.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/iswgraph.3 b/man3/iswgraph.3
index ad80bf647..3132d51f4 100644
--- a/man3/iswgraph.3
+++ b/man3/iswgraph.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/iswlower.3 b/man3/iswlower.3
index 8bf718b6e..31a655e84 100644
--- a/man3/iswlower.3
+++ b/man3/iswlower.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/iswprint.3 b/man3/iswprint.3
index 0b689c237..a84ee3b42 100644
--- a/man3/iswprint.3
+++ b/man3/iswprint.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/iswpunct.3 b/man3/iswpunct.3
index e90d7bbb8..d73055c6e 100644
--- a/man3/iswpunct.3
+++ b/man3/iswpunct.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/iswspace.3 b/man3/iswspace.3
index 5c3089b75..5f0956f4f 100644
--- a/man3/iswspace.3
+++ b/man3/iswspace.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/iswupper.3 b/man3/iswupper.3
index bc043043e..513270932 100644
--- a/man3/iswupper.3
+++ b/man3/iswupper.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/iswxdigit.3 b/man3/iswxdigit.3
index c6f6a94ba..6e455f7da 100644
--- a/man3/iswxdigit.3
+++ b/man3/iswxdigit.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/lio_listio.3 b/man3/lio_listio.3
index 2522baae1..4ea7de0cc 100644
--- a/man3/lio_listio.3
+++ b/man3/lio_listio.3
@@ -1,25 +1,5 @@
-.\" Copyright (C) 2010, Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2010, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH LIO_LISTIO  3 2021-03-22  "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/lockf.3 b/man3/lockf.3
index b0599d570..cd36d19ca 100644
--- a/man3/lockf.3
+++ b/man3/lockf.3
@@ -1,26 +1,5 @@
-.\" Copyright 1997 Nicolás Lichtmaier <nick@debian.org>
-.\" Created Thu Aug  7 00:44:00 ART 1997
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1997, Nicolás Lichtmaier <nick@debian.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Added section stuff, aeb, 2002-04-22.
 .\" Corrected include file, drepper, 2003-06-15.
diff --git a/man3/login.3 b/man3/login.3
index b840ad6be..63d01c36a 100644
--- a/man3/login.3
+++ b/man3/login.3
@@ -1,26 +1,6 @@
-.\" Derived from text written by Martin Schulze (or taken from glibc.info)
-.\" and text written by Paul Thompson - both copyright 2002.
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Martin Schultze
+.\" SPDX-FileCopyrightText: 2002, Paul Thompson
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH LOGIN 3 2021-03-22 "GNU" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/mblen.3 b/man3/mblen.3
index f95a9531e..957f696c4 100644
--- a/man3/mblen.3
+++ b/man3/mblen.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/mbrlen.3 b/man3/mbrlen.3
index 6a83be700..3186ec33b 100644
--- a/man3/mbrlen.3
+++ b/man3/mbrlen.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/mbrtowc.3 b/man3/mbrtowc.3
index db178d4e6..8266f08d6 100644
--- a/man3/mbrtowc.3
+++ b/man3/mbrtowc.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/mbsinit.3 b/man3/mbsinit.3
index b78212c90..761481d3b 100644
--- a/man3/mbsinit.3
+++ b/man3/mbsinit.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/mbsnrtowcs.3 b/man3/mbsnrtowcs.3
index 94880ebd7..066050653 100644
--- a/man3/mbsnrtowcs.3
+++ b/man3/mbsnrtowcs.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/mbsrtowcs.3 b/man3/mbsrtowcs.3
index b07fa2bfb..7b62d746c 100644
--- a/man3/mbsrtowcs.3
+++ b/man3/mbsrtowcs.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/mbstowcs.3 b/man3/mbstowcs.3
index 503f5f75b..43831c6ca 100644
--- a/man3/mbstowcs.3
+++ b/man3/mbstowcs.3
@@ -1,12 +1,6 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\" and Copyright 2014 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-FileCopyrightText: 2014, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/mbtowc.3 b/man3/mbtowc.3
index ff637555b..e006f5bac 100644
--- a/man3/mbtowc.3
+++ b/man3/mbtowc.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/nl_langinfo.3 b/man3/nl_langinfo.3
index c0c47aae2..7a474bcd8 100644
--- a/man3/nl_langinfo.3
+++ b/man3/nl_langinfo.3
@@ -1,13 +1,7 @@
-.\" Copyright (c) 2001 Markus Kuhn <mkuhn@acm.org>
-.\" and Copyright (c) 2015 Sam Varshavchik <mrsam@courier-mta.com>
-.\" and Copyright (c) 2015 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2001, Markus Kuhn <mkuhn@acm.org>
+.\" SPDX-FileCopyrightText: 2015, Sam Varshavchik <mrsam@courier-mta.com>
+.\" SPDX-FileCopyrightText: 2015, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 manual
diff --git a/man3/perror.3 b/man3/perror.3
index e3eec1da3..ad82ef1c0 100644
--- a/man3/perror.3
+++ b/man3/perror.3
@@ -1,28 +1,7 @@
-.\" Copyright (c) 1994 Michael Haardt (michael@moria.de), 1994-06-04
-.\" Copyright (c) 1995 Michael Haardt
-.\"      (michael@cantor.informatik.rwth-aachen.de), 1995-03-16
-.\" Copyright (c) 1996 Andries Brouwer (aeb@cwi.nl), 1996-01-13
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1994, Michael Haardt <michael@moria.de>
+.\" SPDX-FileCopyrightText: 1995, Michael Haardt <michael@cantor.informatik.rwth-aachen.de>
+.\" SPDX-FileCopyrightText: 1996, Andries Brouwer <aeb@cwi.nl>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 1996-01-13 aeb: merged in some text contributed by Melvin Smith
 .\"   (msmith@falcon.mercer.peachnet.edu) and various other changes.
diff --git a/man3/posix_madvise.3 b/man3/posix_madvise.3
index 6ec992aed..975d07e07 100644
--- a/man3/posix_madvise.3
+++ b/man3/posix_madvise.3
@@ -1,21 +1,5 @@
-.\" Copyright (C) 2015 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPLv2+)
-.\"
-.\" This program is free software; you can redistribute it and/or modify
-.\" it under the terms of the GNU General Public License as published by
-.\" the Free Software Foundation; either version 2 of the License, or
-.\" (at your option) any later version.
-.\"
-.\" This program is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2015, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH POSIX_MADVISE 3 2021-03-22 Linux "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/printf.3 b/man3/printf.3
index 4fa1f11f3..6bc129be0 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -1,4 +1,5 @@
-.\" Copyright (c) 1999 Andries Brouwer (aeb@cwi.nl)
+.\" SPDX-FileCopyrightText: 1999, Andries Brouwer <aeb@cwi.nl>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Earlier versions of this page influenced the present text.
 .\" It was derived from a Berkeley page with version
@@ -6,27 +7,6 @@
 .\" converted for Linux by faith@cs.unc.edu, updated by
 .\" Helmut.Geyer@iwr.uni-heidelberg.de, agulbra@troll.no and Bruno Haible.
 .\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
-.\"
 .\" 1999-11-25 aeb - Rewritten, using SUSv2 and C99.
 .\" 2000-07-26 jsm28@hermes.cam.ac.uk - three small fixes
 .\" 2000-10-16 jsm28@hermes.cam.ac.uk - more fixes
diff --git a/man3/putwchar.3 b/man3/putwchar.3
index 215fcd8cc..d1949f4e6 100644
--- a/man3/putwchar.3
+++ b/man3/putwchar.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/setjmp.3 b/man3/setjmp.3
index aa4a4aab1..64396df51 100644
--- a/man3/setjmp.3
+++ b/man3/setjmp.3
@@ -1,25 +1,5 @@
-.\" Copyright (C) 2016 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2016, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH SETJMP 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
index 65501bf8d..f278b5f2e 100644
--- a/man3/stpncpy.3
+++ b/man3/stpncpy.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/strfmon.3 b/man3/strfmon.3
index 0f6a5c2c8..6c7517319 100644
--- a/man3/strfmon.3
+++ b/man3/strfmon.3
@@ -1,25 +1,5 @@
-.\" Copyright (c) 2000 Andries Brouwer (aeb@cwi.nl)
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2000, Andries Brouwer <aeb@cwi.nl>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH STRFMON 3  2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/strnlen.3 b/man3/strnlen.3
index 09e9c19b7..25e24b62f 100644
--- a/man3/strnlen.3
+++ b/man3/strnlen.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/strtoimax.3 b/man3/strtoimax.3
index a1b0c2b39..93c1e692e 100644
--- a/man3/strtoimax.3
+++ b/man3/strtoimax.3
@@ -1,25 +1,5 @@
-.\" Copyright (c) 2003 Andries Brouwer (aeb@cwi.nl)
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2003, Andries Brouwer <aeb@cwi.nl>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH STRTOIMAX 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/termios.3 b/man3/termios.3
index c11937458..a5c1254a6 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -1,27 +1,6 @@
-.\" Copyright (c) 1993 Michael Haardt (michael@moria.de)
-.\" Fri Apr  2 11:32:09 MET DST 1993
-.\" Copyright (c) 2006-2015, Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1993, Michael Haardt <michael@moria.de>
+.\" SPDX-FileCopyrightText: 2006-2015, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Modified 1993-07-24 by Rik Faith <faith@cs.unc.edu>
 .\" Modified 1995-02-25 by Jim Van Zandt <jrv@vanzandt.mv.com>
diff --git a/man3/towctrans.3 b/man3/towctrans.3
index 0cad3f631..b23c26e4c 100644
--- a/man3/towctrans.3
+++ b/man3/towctrans.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/towlower.3 b/man3/towlower.3
index 95fca112c..8c9a57511 100644
--- a/man3/towlower.3
+++ b/man3/towlower.3
@@ -1,12 +1,6 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\" and Copyright (C) 2014 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-FileCopyrightText: 2014, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/towupper.3 b/man3/towupper.3
index 3934f6e23..74709d577 100644
--- a/man3/towupper.3
+++ b/man3/towupper.3
@@ -1,11 +1,6 @@
-.\" and Copyright (C) 2014 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-FileCopyrightText: 2014, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/ttyname.3 b/man3/ttyname.3
index a3e8112bd..ed683af03 100644
--- a/man3/ttyname.3
+++ b/man3/ttyname.3
@@ -1,25 +1,5 @@
-.\" Copyright (c) 1995 Jim Van Zandt <jrv@vanzandt.mv.com>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1995, Jim Van Zandt <jrv@vanzandt.mv.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Modified 2001-12-13, Martin Schulze <joey@infodrom.org>
 .\" Added ttyname_r, aeb, 2002-07-20
diff --git a/man3/ualarm.3 b/man3/ualarm.3
index 3b8f50b8a..d070871b2 100644
--- a/man3/ualarm.3
+++ b/man3/ualarm.3
@@ -1,25 +1,5 @@
-.\" Copyright (c) 2003 Andries Brouwer (aeb@cwi.nl)
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2003, Andries Brouwer <aeb@cwi.nl>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH UALARM 3  2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/ungetwc.3 b/man3/ungetwc.3
index 149171260..7824b45df 100644
--- a/man3/ungetwc.3
+++ b/man3/ungetwc.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/updwtmp.3 b/man3/updwtmp.3
index a67bd40ca..4a0bda3b2 100644
--- a/man3/updwtmp.3
+++ b/man3/updwtmp.3
@@ -1,26 +1,5 @@
-.\" Copyright 1997 Nicolás Lichtmaier <nick@debian.org>
-.\" Created Wed Jul  2 23:27:34 ART 1997
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1997, Nicolás Lichtmaier <nick@debian.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Added info on availability, aeb, 971207
 .\" Added -lutil remark, 030718
diff --git a/man3/wcpcpy.3 b/man3/wcpcpy.3
index 38cca5b38..a4bcccb14 100644
--- a/man3/wcpcpy.3
+++ b/man3/wcpcpy.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcpncpy.3 b/man3/wcpncpy.3
index 099a49611..71126c1a8 100644
--- a/man3/wcpncpy.3
+++ b/man3/wcpncpy.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcrtomb.3 b/man3/wcrtomb.3
index 522ce823d..c28430b79 100644
--- a/man3/wcrtomb.3
+++ b/man3/wcrtomb.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcscasecmp.3 b/man3/wcscasecmp.3
index f0a71a84b..8ebb14ae2 100644
--- a/man3/wcscasecmp.3
+++ b/man3/wcscasecmp.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcscat.3 b/man3/wcscat.3
index ee3606b59..8d8416390 100644
--- a/man3/wcscat.3
+++ b/man3/wcscat.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcschr.3 b/man3/wcschr.3
index 243a2297e..2063c7178 100644
--- a/man3/wcschr.3
+++ b/man3/wcschr.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcscmp.3 b/man3/wcscmp.3
index 2ce075791..dd4d050fd 100644
--- a/man3/wcscmp.3
+++ b/man3/wcscmp.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcscspn.3 b/man3/wcscspn.3
index 2830c4030..7b8e4ae2c 100644
--- a/man3/wcscspn.3
+++ b/man3/wcscspn.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcsdup.3 b/man3/wcsdup.3
index 3cacd7585..25c74d082 100644
--- a/man3/wcsdup.3
+++ b/man3/wcsdup.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcslen.3 b/man3/wcslen.3
index fd9634376..352251254 100644
--- a/man3/wcslen.3
+++ b/man3/wcslen.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcsncasecmp.3 b/man3/wcsncasecmp.3
index 0d4cb24c4..3df772d6b 100644
--- a/man3/wcsncasecmp.3
+++ b/man3/wcsncasecmp.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcsncat.3 b/man3/wcsncat.3
index 86595bb0a..7f4bf6834 100644
--- a/man3/wcsncat.3
+++ b/man3/wcsncat.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcsncmp.3 b/man3/wcsncmp.3
index d65dff847..a6cde641d 100644
--- a/man3/wcsncmp.3
+++ b/man3/wcsncmp.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcsncpy.3 b/man3/wcsncpy.3
index 9fbd0ce87..c733c928d 100644
--- a/man3/wcsncpy.3
+++ b/man3/wcsncpy.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcsnlen.3 b/man3/wcsnlen.3
index 87f0e999f..4ea416328 100644
--- a/man3/wcsnlen.3
+++ b/man3/wcsnlen.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcsnrtombs.3 b/man3/wcsnrtombs.3
index 9e129b0b5..b23058c0e 100644
--- a/man3/wcsnrtombs.3
+++ b/man3/wcsnrtombs.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcspbrk.3 b/man3/wcspbrk.3
index 52e605f81..5523adbff 100644
--- a/man3/wcspbrk.3
+++ b/man3/wcspbrk.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcsrchr.3 b/man3/wcsrchr.3
index 420f79db6..c974f0a18 100644
--- a/man3/wcsrchr.3
+++ b/man3/wcsrchr.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcsrtombs.3 b/man3/wcsrtombs.3
index c906b01ca..88db866b8 100644
--- a/man3/wcsrtombs.3
+++ b/man3/wcsrtombs.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcsspn.3 b/man3/wcsspn.3
index 77084e8c8..6705523c4 100644
--- a/man3/wcsspn.3
+++ b/man3/wcsspn.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcsstr.3 b/man3/wcsstr.3
index 4f330ab5f..26c980624 100644
--- a/man3/wcsstr.3
+++ b/man3/wcsstr.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcstoimax.3 b/man3/wcstoimax.3
index d65a4275b..050fee66f 100644
--- a/man3/wcstoimax.3
+++ b/man3/wcstoimax.3
@@ -1,25 +1,5 @@
-.\" Copyright (c) 2003 Andries Brouwer (aeb@cwi.nl)
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2003, Andries Brouwer <aeb@cwi.nl>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH WCSTOIMAX 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/wcstok.3 b/man3/wcstok.3
index 9fa1e3c41..39e82ce7b 100644
--- a/man3/wcstok.3
+++ b/man3/wcstok.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcstombs.3 b/man3/wcstombs.3
index 04c01aacd..d2273904f 100644
--- a/man3/wcstombs.3
+++ b/man3/wcstombs.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcswidth.3 b/man3/wcswidth.3
index ec98cd631..509ee05bb 100644
--- a/man3/wcswidth.3
+++ b/man3/wcswidth.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wctob.3 b/man3/wctob.3
index 1a3837383..09cb03aa5 100644
--- a/man3/wctob.3
+++ b/man3/wctob.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wctomb.3 b/man3/wctomb.3
index 430443142..ae8d817bd 100644
--- a/man3/wctomb.3
+++ b/man3/wctomb.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wctrans.3 b/man3/wctrans.3
index 77fb9b504..ea493e482 100644
--- a/man3/wctrans.3
+++ b/man3/wctrans.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wctype.3 b/man3/wctype.3
index 0a92f2cc9..b70a87cb3 100644
--- a/man3/wctype.3
+++ b/man3/wctype.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wcwidth.3 b/man3/wcwidth.3
index 7e2f11c6b..e61aeafe8 100644
--- a/man3/wcwidth.3
+++ b/man3/wcwidth.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wmemchr.3 b/man3/wmemchr.3
index d865ef3ef..21b8bf4a8 100644
--- a/man3/wmemchr.3
+++ b/man3/wmemchr.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wmemcmp.3 b/man3/wmemcmp.3
index b3a305d0a..cfbff6d13 100644
--- a/man3/wmemcmp.3
+++ b/man3/wmemcmp.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wmemcpy.3 b/man3/wmemcpy.3
index cf801153b..450f053ef 100644
--- a/man3/wmemcpy.3
+++ b/man3/wmemcpy.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wmemmove.3 b/man3/wmemmove.3
index b83a476ec..7b0d45541 100644
--- a/man3/wmemmove.3
+++ b/man3/wmemmove.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wmemset.3 b/man3/wmemset.3
index 21ec6d97a..b864c799e 100644
--- a/man3/wmemset.3
+++ b/man3/wmemset.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
diff --git a/man3/wordexp.3 b/man3/wordexp.3
index 716b8334e..6b04e5f7d 100644
--- a/man3/wordexp.3
+++ b/man3/wordexp.3
@@ -1,25 +1,5 @@
-.\" Copyright (c) 2003 Andries Brouwer (aeb@cwi.nl)
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" The GNU General Public License's references to "object code"
-.\" and "executables" are to be interpreted as the output of any
-.\" document formatting or typesetting system, including
-.\" intermediate and printed output.
-.\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2003, Andries Brouwer <aeb@cwi.nl>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH WORDEXP 3 2021-08-27  "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/wprintf.3 b/man3/wprintf.3
index dee9fb8b1..6f1fb7f50 100644
--- a/man3/wprintf.3
+++ b/man3/wprintf.3
@@ -1,11 +1,5 @@
-.\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Bruno Haible <haible@clisp.cons.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" References consulted:
 .\"   GNU glibc-2 source code and manual
-- 
2.33.0

