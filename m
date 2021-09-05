Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B073400FFE
	for <lists+linux-man@lfdr.de>; Sun,  5 Sep 2021 15:26:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233827AbhIEN1F (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Sep 2021 09:27:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232542AbhIEN1F (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Sep 2021 09:27:05 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A88B0C061757
        for <linux-man@vger.kernel.org>; Sun,  5 Sep 2021 06:26:01 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id z9-20020a7bc149000000b002e8861aff59so3029886wmi.0
        for <linux-man@vger.kernel.org>; Sun, 05 Sep 2021 06:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EXiI6lhl6gfCrUR0my6cvK5Bd+1G71rDy7oK0eyr4o8=;
        b=Ah8dM7u7Di2yxwg1xF1FZAu9zuMSR2ec5+46tnDhuWs1YRscuwyFBOXs/Hqkw2B0Hd
         GfR2JvETM0H4f/CWAws5wYcy6ThPz/TKtoqRrC8mBrOrs7/yw+p1V9oEAuBwkZmYETFE
         jQtAN+p4TpWaTwJTUejUVjuGVSDEFTZ/xwnCXJxi5zgfa2T7lwdpX2AdnIGgs5IfYATS
         D6Ewh7KMuU3zKpDRsxbz5EbsxlnmyUqim6Kgg+ia8tH4D1ip92yyF8lgmnuxajcB/JEP
         adX3i2NPD4iv53U8HEix5OgCm/Lq8bJQ1HucRygOQpCnoCMAYc9TXfqEN19VpG8GAbDm
         Pr6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EXiI6lhl6gfCrUR0my6cvK5Bd+1G71rDy7oK0eyr4o8=;
        b=Vz1X7cs76QkNYpZHh5MGcGVpZAkhPIxEzjNjyP39sdmlquWGQIjlKtqjnRuZe6qH41
         SeH64K/MrGRsgJr2nR1IvuECjwMt/+g0/anNSuRT0ALP24T5LnZ6Y1xWvNSI51MXcrPX
         fjpl1L6REOdLhsphpy++kGHKIX+llRSDpnIh/NAbNOAsZQQapdnkhGATGMtpdGB5P1FD
         wk3BlsMmBRXwkNUw+WG2fPN+W8SXLHrEd60Vy16Uh3wjFsE93j4prHjZ3/xBeMVRnI3E
         zXw2TFmaQf9t6SNMr5ejF+g0lCJFN/8vpyxv8nLHdyDoNMJjo2E8enQef18v3oW6ErJY
         zs6Q==
X-Gm-Message-State: AOAM533Xf2Ps4JzcyvjRs1aWIL7MMIjoJfsVInKPvT/TgfQLVjNRIHdm
        Gaufr0HPJQVCZcoiItfCblc=
X-Google-Smtp-Source: ABdhPJxC8bcFekZ0MsjtbOiK+IkmceyZdWVbNXP6lXDRg06qTmw1oD0AbknWfc7prg79okpcOU6d1A==
X-Received: by 2002:a7b:c7cc:: with SMTP id z12mr7202303wmk.108.1630848359974;
        Sun, 05 Sep 2021 06:25:59 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id l124sm4608586wml.8.2021.09.05.06.25.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 06:25:59 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jilayne Lovejoy <opensource@jilayne.com>,
        Alexios Zavras <alexios.zavras@intel.com>,
        Richard Fontana <rfontana@redhat.com>
Subject: [RFC v3 9/9] Many pages: [Verbatim-man-pages] Use SPDX markings
Date:   Sun,  5 Sep 2021 15:25:42 +0200
Message-Id: <20210905132542.245236-10-alx.manpages@gmail.com>
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
 man7/address_families.7    | 27 +++------------------------
 man7/aio.7                 | 25 ++-----------------------
 man7/capabilities.7        | 25 ++-----------------------
 man7/cgroup_namespaces.7   | 26 ++------------------------
 man7/cgroups.7             | 27 +++------------------------
 man7/credentials.7         | 25 ++-----------------------
 man7/fanotify.7            | 26 +++-----------------------
 man7/feature_test_macros.7 | 25 ++-----------------------
 man7/hier.7                | 31 ++-----------------------------
 man7/inode.7               | 25 ++-----------------------
 man7/inotify.7             | 27 +++------------------------
 man7/ipc_namespaces.7      | 26 ++------------------------
 man7/libc.7                | 26 ++------------------------
 man7/locale.7              | 27 +++------------------------
 man7/man-pages.7           | 29 ++++-------------------------
 man7/man.7                 | 27 +++------------------------
 man7/math_error.7          | 26 ++------------------------
 man7/mount_namespaces.7    | 26 ++------------------------
 man7/mq_overview.7         | 25 ++-----------------------
 man7/namespaces.7          | 28 +++-------------------------
 man7/network_namespaces.7  | 26 ++------------------------
 man7/nptl.7                | 26 ++------------------------
 man7/numa.7                | 31 ++++---------------------------
 man7/path_resolution.7     | 25 ++-----------------------
 man7/pid_namespaces.7      | 28 +++-------------------------
 man7/pipe.7                | 25 ++-----------------------
 man7/pkeys.7               | 25 ++-----------------------
 man7/pthreads.7            | 25 ++-----------------------
 man7/pty.7                 | 25 ++-----------------------
 man7/random.7              | 31 +++++--------------------------
 man7/rtld-audit.7          | 26 ++------------------------
 man7/sem_overview.7        | 25 ++-----------------------
 man7/shm_overview.7        | 26 ++------------------------
 man7/sigevent.7            | 27 +++------------------------
 man7/signal-safety.7       | 25 ++-----------------------
 man7/signal.7              | 30 ++++--------------------------
 man7/suffixes.7            | 25 ++-----------------------
 man7/system_data_types.7   | 28 +++-------------------------
 man7/sysvipc.7             | 25 ++-----------------------
 man7/termio.7              | 25 ++-----------------------
 man7/time.7                | 25 ++-----------------------
 man7/time_namespaces.7     | 26 ++------------------------
 man7/udplite.7             | 25 ++-----------------------
 man7/units.7               | 25 ++-----------------------
 man7/uri.7                 | 26 +++-----------------------
 man7/user_namespaces.7     | 28 +++-------------------------
 man7/uts_namespaces.7      | 26 ++------------------------
 man7/vsock.7               | 25 ++-----------------------
 48 files changed, 117 insertions(+), 1147 deletions(-)

diff --git a/man7/address_families.7 b/man7/address_families.7
index 3e535e66d..87b2733c1 100644
--- a/man7/address_families.7
+++ b/man7/address_families.7
@@ -1,27 +1,6 @@
-.\" Copyright (c) 2018 by Eugene Syromyatnikov <evgsyr@gmail.com>,
-.\" and Copyright (c) 2018 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2018, Eugene Syromyatnikov <evgsyr@gmail.com>
+.\" SPDX-FileCopyrightText: 2018, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH ADDRESS_FAMILIES 7 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/aio.7 b/man7/aio.7
index 72287be06..de882446c 100644
--- a/man7/aio.7
+++ b/man7/aio.7
@@ -1,26 +1,5 @@
-.\" Copyright (c) 2010 by Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2010, by Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH AIO 7 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/capabilities.7 b/man7/capabilities.7
index c65524496..ed21d753d 100644
--- a/man7/capabilities.7
+++ b/man7/capabilities.7
@@ -1,26 +1,5 @@
-.\" Copyright (c) 2002 by Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .\" 6 Aug 2002 - Initial Creation
 .\" Modified 2003-05-23, Michael Kerrisk, <mtk.manpages@gmail.com>
diff --git a/man7/cgroup_namespaces.7 b/man7/cgroup_namespaces.7
index 7cb1b1fa7..9d8cd9cff 100644
--- a/man7/cgroup_namespaces.7
+++ b/man7/cgroup_namespaces.7
@@ -1,27 +1,5 @@
-.\" Copyright (c) 2016 by Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
-.\"
+.\" SPDX-FileCopyrightText: 2016, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH CGROUP_NAMESPACES 7 2020-11-01 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/cgroups.7 b/man7/cgroups.7
index 7a7db3344..8c470c5d3 100644
--- a/man7/cgroups.7
+++ b/man7/cgroups.7
@@ -1,27 +1,6 @@
-.\" Copyright (C) 2015 Serge Hallyn <serge@hallyn.com>
-.\" and Copyright (C) 2016, 2017 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2015, Serge Hallyn <serge@hallyn.com>
+.\" SPDX-FileCopyrightText: 2016, 2017, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH CGROUPS 7 2021-08-27 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/credentials.7 b/man7/credentials.7
index f2acf4cfc..e7b7d540d 100644
--- a/man7/credentials.7
+++ b/man7/credentials.7
@@ -1,26 +1,5 @@
-.\" Copyright (c) 2007 by Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2007, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .\" 2007-06-13 Creation
 .\"
diff --git a/man7/fanotify.7 b/man7/fanotify.7
index 9c66c24f0..00fed4e57 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -1,27 +1,7 @@
-.\" Copyright (C) 2013, Heinrich Schuchardt <xypron.glpk@gmx.de>
-.\" and Copyright (C) 2014, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-FileCopyrightText: 2013, Heinrich Schuchardt <xypron.glpk@gmx.de>
+.\" SPDX-FileCopyrightText: 2014, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of
-.\" this manual under the conditions for verbatim copying, provided that
-.\" the entire resulting derived work is distributed under the terms of
-.\" a permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume.
-.\" no responsibility for errors or omissions, or for damages resulting.
-.\" from the use of the information contained herein.  The author(s) may.
-.\" not have taken the same level of care in the production of this.
-.\" manual, which is licensed free of charge, as they might when working.
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
 .TH FANOTIFY 7 2021-08-27 "Linux" "Linux Programmer's Manual"
 .SH NAME
 fanotify \- monitoring filesystem events
diff --git a/man7/feature_test_macros.7 b/man7/feature_test_macros.7
index 77362ed23..0758df896 100644
--- a/man7/feature_test_macros.7
+++ b/man7/feature_test_macros.7
@@ -1,26 +1,5 @@
-.\" This manpage is Copyright (C) 2006, Michael Kerrisk
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2006, Michael Kerrisk
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH FEATURE_TEST_MACROS 7 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/hier.7 b/man7/hier.7
index 32184e9ca..e9951e25a 100644
--- a/man7/hier.7
+++ b/man7/hier.7
@@ -1,33 +1,6 @@
-.\" Copyright (c) 1993 by Thomas Koenig (ig25@rz.uni-karlsruhe.de)
+.\" SPDX-FileCopyrightText: 1993, Thomas Koenig <ig25@rz.uni-karlsruhe.de>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
-.\"
-.\" Modified Sun Jul 25 11:05:58 1993 by Rik Faith (faith@cs.unc.edu)
-.\" Modified Sat Feb 10 16:18:03 1996 by Urs Thuermann (urs@isnogud.escape.de)
-.\" Modified Mon Jun 16 20:02:00 1997 by Nicolás Lichtmaier <nick@debian.org>
-.\" Modified Mon Feb  6 16:41:00 1999 by Nicolás Lichtmaier <nick@debian.org>
-.\" Modified Tue Feb  8 16:46:45 2000 by Chris Pepper <pepper@tgg.com>
-.\" Modified Fri Sep  7 20:32:45 2001 by Tammy Fox <tfox@redhat.com>
 .TH HIER 7 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 hier \- description of the filesystem hierarchy
diff --git a/man7/inode.7 b/man7/inode.7
index e70178b9f..8259f9315 100644
--- a/man7/inode.7
+++ b/man7/inode.7
@@ -1,26 +1,5 @@
-.\" Copyright (c) 2017 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2017, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH INODE 7 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/inotify.7 b/man7/inotify.7
index 547ceed5d..051d103e4 100644
--- a/man7/inotify.7
+++ b/man7/inotify.7
@@ -1,27 +1,6 @@
-.\" Copyright (C) 2006, 2014 Michael Kerrisk <mtk.manpages@gmail.com>
-.\" Copyright (C) 2014 Heinrich Schuchardt <xypron.glpk@gmx.de>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2006, 2014, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-FileCopyrightText: 2014, Heinrich Schuchardt <xypron.glpk@gmx.de>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH INOTIFY 7 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/ipc_namespaces.7 b/man7/ipc_namespaces.7
index 4402b2b97..a2c10b861 100644
--- a/man7/ipc_namespaces.7
+++ b/man7/ipc_namespaces.7
@@ -1,27 +1,5 @@
-.\" Copyright (c) 2019 by Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
-.\"
+.\" SPDX-FileCopyrightText: 2019, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH IPC_NAMESPACES 7 2019-08-02 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/libc.7 b/man7/libc.7
index 2809a97ce..e931f6954 100644
--- a/man7/libc.7
+++ b/man7/libc.7
@@ -1,27 +1,5 @@
-.\" Copyright (c) 2009 Linux Foundation, written by Michael Kerrisk
-.\"     <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2009, Linux Foundation, written by Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH LIBC 7 2016-12-12 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/locale.7 b/man7/locale.7
index 2959c4ff7..c0f4afcbf 100644
--- a/man7/locale.7
+++ b/man7/locale.7
@@ -1,27 +1,6 @@
-.\" Copyright (c) 1993 by Thomas Koenig (ig25@rz.uni-karlsruhe.de)
-.\" and Copyright (C) 2014 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1993, Thomas Koenig <ig25@rz.uni-karlsruhe.de>
+.\" SPDX-FileCopyrightText: 2014, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .\" Modified Sat Jul 24 17:28:34 1993 by Rik Faith <faith@cs.unc.edu>
 .\" Modified Sun Jun 01 17:16:34 1997 by Jochen Hein
diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 96c3deb20..6ef61b210 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -1,28 +1,7 @@
-.\" (C) Copyright 1992-1999 Rickard E. Faith and David A. Wheeler
-.\" (faith@cs.unc.edu and dwheeler@ida.org)
-.\" and (C) Copyright 2007 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1992-1999, Rickard E. Faith <faith@cs.unc.edu>
+.\" SPDX-FileCopyrightText: 1992-1999, David A. Wheeler <dwheeler@ida.org>
+.\" SPDX-FileCopyrightText: 2007, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .\" 2007-05-30 created by mtk, using text from old man.7 plus
 .\" rewrites and additional text.
diff --git a/man7/man.7 b/man7/man.7
index edabde45c..26b0b4931 100644
--- a/man7/man.7
+++ b/man7/man.7
@@ -1,27 +1,6 @@
-.\" (C) Copyright 1992-1999 Rickard E. Faith and David A. Wheeler
-.\" (faith@cs.unc.edu and dwheeler@ida.org)
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1992-1999, Rickard E. Faith <faith@cs.unc.edu>
+.\" SPDX-FileCopyrightText: 1992-1999, David A. Wheeler <dwheeler@ida.org>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .\" Modified Sun Jul 25 11:06:05 1993 by Rik Faith (faith@cs.unc.edu)
 .\" Modified Sat Jun  8 00:39:52 1996 by aeb
diff --git a/man7/math_error.7 b/man7/math_error.7
index b0e9e0444..ff9db14ad 100644
--- a/man7/math_error.7
+++ b/man7/math_error.7
@@ -1,27 +1,5 @@
-.\" Copyright (c) 2008, Linux Foundation, written by Michael Kerrisk
-.\"     <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2008, Linux Foundation, written by Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH MATH_ERROR 7 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/mount_namespaces.7 b/man7/mount_namespaces.7
index 7725b341f..2e15c8dfb 100644
--- a/man7/mount_namespaces.7
+++ b/man7/mount_namespaces.7
@@ -1,27 +1,5 @@
-.\" Copyright (c) 2016, 2019, 2021 by Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
-.\"
+.\" SPDX-FileCopyrightText: 2016, 2019, 2021, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH MOUNT_NAMESPACES 7 2021-08-27 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/mq_overview.7 b/man7/mq_overview.7
index f48fb708c..0a61f5a00 100644
--- a/man7/mq_overview.7
+++ b/man7/mq_overview.7
@@ -1,26 +1,5 @@
-.\" Copyright (C) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2006, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH MQ_OVERVIEW 7 2020-06-09 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/namespaces.7 b/man7/namespaces.7
index 13891b4e6..81beecb9b 100644
--- a/man7/namespaces.7
+++ b/man7/namespaces.7
@@ -1,28 +1,6 @@
-.\" Copyright (c) 2013, 2016, 2017 by Michael Kerrisk <mtk.manpages@gmail.com>
-.\" and Copyright (c) 2012 by Eric W. Biederman <ebiederm@xmission.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
-.\"
+.\" SPDX-FileCopyrightText: 2013, 2016, 2017, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-FileCopyrightText: 2012, Eric W. Biederman <ebiederm@xmission.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH NAMESPACES 7 2021-08-27 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/network_namespaces.7 b/man7/network_namespaces.7
index aa1b04589..2a2b7e71f 100644
--- a/man7/network_namespaces.7
+++ b/man7/network_namespaces.7
@@ -1,27 +1,5 @@
-.\" Copyright (c) 2017 by Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
-.\"
+.\" SPDX-FileCopyrightText: 2017, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH NETWORK_NAMESPACES 7 2020-06-09 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/nptl.7 b/man7/nptl.7
index 0133c0a10..54aaa9801 100644
--- a/man7/nptl.7
+++ b/man7/nptl.7
@@ -1,27 +1,5 @@
-.\" Copyright (c) 2015 by Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
-.\"
+.\" SPDX-FileCopyrightText: 2015, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH NPTL 7 2015-08-08 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/numa.7 b/man7/numa.7
index dbe0217a4..07e897f06 100644
--- a/man7/numa.7
+++ b/man7/numa.7
@@ -1,30 +1,7 @@
-.\" Copyright (c) 2008, Linux Foundation, written by Michael Kerrisk
-.\"     <mtk.manpages@gmail.com>
-.\" and Copyright 2003,2004 Andi Kleen, SuSE Labs.
-.\" numa_maps material Copyright (c) 2005 Silicon Graphics Incorporated.
-.\"     Christoph Lameter, <cl@linux-foundation.org>.
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2008, Linux Foundation, written by Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-FileCopyrightText: 2003, 2004, Andi Kleen, SuSE Labs.
+.\" SPDX-FileCopyrightText: 2005, Silicon Graphics Incorporated. Christoph Lameter, <cl@linux-foundation.org>.
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH NUMA 7 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/path_resolution.7 b/man7/path_resolution.7
index 0edc7e2c5..a63bb45ff 100644
--- a/man7/path_resolution.7
+++ b/man7/path_resolution.7
@@ -1,26 +1,5 @@
-.\" Copyright (C) 2003 Andries Brouwer (aeb@cwi.nl)
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2003, Andries Brouwer <aeb@cwi.nl>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH PATH_RESOLUTION 7 2021-08-27 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/pid_namespaces.7 b/man7/pid_namespaces.7
index f99b9abbc..447f2f762 100644
--- a/man7/pid_namespaces.7
+++ b/man7/pid_namespaces.7
@@ -1,28 +1,6 @@
-.\" Copyright (c) 2013 by Michael Kerrisk <mtk.manpages@gmail.com>
-.\" and Copyright (c) 2012 by Eric W. Biederman <ebiederm@xmission.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
-.\"
+.\" SPDX-FileCopyrightText: 2013, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-FileCopyrightText: 2012, Eric W. Biederman <ebiederm@xmission.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH PID_NAMESPACES 7 2020-11-01 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/pipe.7 b/man7/pipe.7
index bf93cafbf..cf807bb85 100644
--- a/man7/pipe.7
+++ b/man7/pipe.7
@@ -1,26 +1,5 @@
-.\" Copyright (C) 2005 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2005, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH PIPE 7 2021-08-27 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/pkeys.7 b/man7/pkeys.7
index 73ddcdc43..f17d36974 100644
--- a/man7/pkeys.7
+++ b/man7/pkeys.7
@@ -1,26 +1,5 @@
-.\" Copyright (C) 2016 Intel Corporation
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2016, Intel Corporation
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH PKEYS 7 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/pthreads.7 b/man7/pthreads.7
index 6f4f6e763..3e7538c75 100644
--- a/man7/pthreads.7
+++ b/man7/pthreads.7
@@ -1,26 +1,5 @@
-.\" Copyright (c) 2005 by Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2005, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH PTHREADS 7  2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/pty.7 b/man7/pty.7
index bef36643b..9827cf229 100644
--- a/man7/pty.7
+++ b/man7/pty.7
@@ -1,26 +1,5 @@
-.\" Copyright (C) 2005 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2005, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH PTY 7 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/random.7 b/man7/random.7
index a5c0ef972..a1509cbff 100644
--- a/man7/random.7
+++ b/man7/random.7
@@ -1,29 +1,8 @@
-.\" Copyright (C) 2008, George Spelvin <linux@horizon.com>,
-.\" and Copyright (C) 2008, Matt Mackall <mpm@selenic.com>
-.\" and Copyright (C) 2016, Laurent Georget <laurent.georget@supelec.fr>
-.\" and Copyright (C) 2016, Nikos Mavrogiannopoulos <nmav@redhat.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of
-.\" this manual under the conditions for verbatim copying, provided that
-.\" the entire resulting derived work is distributed under the terms of
-.\" a permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume.
-.\" no responsibility for errors or omissions, or for damages resulting.
-.\" from the use of the information contained herein.  The author(s) may.
-.\" not have taken the same level of care in the production of this.
-.\" manual, which is licensed free of charge, as they might when working.
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2008, George Spelvin <linux@horizon.com>
+.\" SPDX-FileCopyrightText: 2008, Matt Mackall <mpm@selenic.com>
+.\" SPDX-FileCopyrightText: 2016, Laurent Georget <laurent.georget@supelec.fr>
+.\" SPDX-FileCopyrightText: 2016, Nikos Mavrogiannopoulos <nmav@redhat.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .\" The following web page is quite informative:
 .\" http://www.2uo.de/myths-about-urandom/
diff --git a/man7/rtld-audit.7 b/man7/rtld-audit.7
index d719f7e19..f1d6a34c7 100644
--- a/man7/rtld-audit.7
+++ b/man7/rtld-audit.7
@@ -1,27 +1,5 @@
-.\" Copyright (c) 2009 Linux Foundation, written by Michael Kerrisk
-.\"     <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2009, Linux Foundation, written by Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .\" 2009-01-12, mtk, Created
 .\"
diff --git a/man7/sem_overview.7 b/man7/sem_overview.7
index 97ccf144c..12a93a14f 100644
--- a/man7/sem_overview.7
+++ b/man7/sem_overview.7
@@ -1,26 +1,5 @@
-.\" Copyright (C) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2006, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH SEM_OVERVIEW 7 2020-06-09 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/shm_overview.7 b/man7/shm_overview.7
index 60e7b71d3..8665b40d0 100644
--- a/man7/shm_overview.7
+++ b/man7/shm_overview.7
@@ -1,27 +1,5 @@
-.\" Copyright (C) 2008, Linux Foundation, written by Michael Kerrisk
-.\" <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2008, Linux Foundation, written by Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH SHM_OVERVIEW 7 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/sigevent.7 b/man7/sigevent.7
index 601e76413..93c246625 100644
--- a/man7/sigevent.7
+++ b/man7/sigevent.7
@@ -1,27 +1,6 @@
-.\" Copyright (C) 2006, 2010 Michael Kerrisk <mtk.manpages@gmail.com>
-.\" Copyright (C) 2009 Petr Baudis <pasky@suse.cz>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2006, 2010, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-FileCopyrightText: 2009, Petr Baudis <pasky@suse.cz>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH SIGEVENT 7 2021-03-22 "GNU" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/signal-safety.7 b/man7/signal-safety.7
index 9e8cd3fea..ce5a6966a 100644
--- a/man7/signal-safety.7
+++ b/man7/signal-safety.7
@@ -1,26 +1,5 @@
-.\" Copyright (c) 2016 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2016, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH SIGNAL-SAFETY 7  2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/signal.7 b/man7/signal.7
index bc3155605..93deced53 100644
--- a/man7/signal.7
+++ b/man7/signal.7
@@ -1,29 +1,7 @@
-.\" Copyright (c) 1993 by Thomas Koenig (ig25@rz.uni-karlsruhe.de)
-.\" and Copyright (c) 2002, 2006, 2020 by Michael Kerrisk <mtk.manpages@gmail.com>
-.\" and Copyright (c) 2008 Linux Foundation, written by Michael Kerrisk
-.\"     <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1993, Thomas Koenig <ig25@rz.uni-karlsruhe.de>
+.\" SPDX-FileCopyrightText: 2002, 2006, 2020, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-FileCopyrightText: 2008, Linux Foundation, written by Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .\" Modified Sat Jul 24 17:34:08 1993 by Rik Faith (faith@cs.unc.edu)
 .\" Modified Sun Jan  7 01:41:27 1996 by Andries Brouwer (aeb@cwi.nl)
diff --git a/man7/suffixes.7 b/man7/suffixes.7
index bb3b0dd7f..9b5cccee2 100644
--- a/man7/suffixes.7
+++ b/man7/suffixes.7
@@ -1,26 +1,5 @@
-.\" Copyright (c) 1993 by Thomas Koenig (ig25@rz.uni-karlsruhe.de)
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1993, Thomas Koenig <ig25@rz.uni-karlsruhe.de>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .\" Modified Sat Jul 24 17:35:15 1993 by Rik Faith <faith@cs.unc.edu>
 .\" Modified Sun Feb 19 22:02:32 1995 by Rik Faith <faith@cs.unc.edu>
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index d117b1d2b..c277b09a4 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1,28 +1,6 @@
-.\" Copyright (c) 2020 by Alejandro Colomar <colomar.6.4.3@gmail.com>
-.\" and Copyright (c) 2020 by Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
-.\"
+.\" SPDX-FileCopyrightText: 2020, Alejandro Colomar <colomar.6.4.3@gmail.com>
+.\" SPDX-FileCopyrightText: 2020, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH SYSTEM_DATA_TYPES 7 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/sysvipc.7 b/man7/sysvipc.7
index 78ddd27f6..fca390956 100644
--- a/man7/sysvipc.7
+++ b/man7/sysvipc.7
@@ -1,26 +1,5 @@
-.\" Copyright 2020 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2020, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH SVIPC 7 2020-04-11 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/termio.7 b/man7/termio.7
index bbc0204c8..99392a03d 100644
--- a/man7/termio.7
+++ b/man7/termio.7
@@ -1,26 +1,5 @@
-.\" Copyright (c) 2006 by Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2006, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .\" 28 Dec 2006 - Initial Creation
 .\"
diff --git a/man7/time.7 b/man7/time.7
index 830da7ea8..50efa87d7 100644
--- a/man7/time.7
+++ b/man7/time.7
@@ -1,26 +1,5 @@
-.\" Copyright (c) 2006 by Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2006, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .\" 2008-06-24, mtk: added some details about where jiffies come into
 .\"     play; added section on high-resolution timers.
diff --git a/man7/time_namespaces.7 b/man7/time_namespaces.7
index a6e4d20b5..99306d406 100644
--- a/man7/time_namespaces.7
+++ b/man7/time_namespaces.7
@@ -1,27 +1,5 @@
-.\" Copyright (c) 2020 by Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
-.\"
+.\" SPDX-FileCopyrightText: 2020, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH TIME_NAMESPACES 7 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/udplite.7 b/man7/udplite.7
index 8d45ec231..b5bc3f660 100644
--- a/man7/udplite.7
+++ b/man7/udplite.7
@@ -1,26 +1,5 @@
-.\" Copyright (c) 2008 by Gerrit Renker <gerrit@erg.abdn.ac.uk>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2008, Gerrit Renker <gerrit@erg.abdn.ac.uk>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .\" $Id: udplite.7,v 1.12 2008/07/23 15:22:22 gerrit Exp gerrit $
 .\"
diff --git a/man7/units.7 b/man7/units.7
index 7c1c1a6a0..a2575f52a 100644
--- a/man7/units.7
+++ b/man7/units.7
@@ -1,26 +1,5 @@
-.\" Copyright (C) 2001 Andries Brouwer <aeb@cwi.nl>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2001, Andries Brouwer <aeb@cwi.nl>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH UNITS 7 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/uri.7 b/man7/uri.7
index 30647eb4f..0904b8671 100644
--- a/man7/uri.7
+++ b/man7/uri.7
@@ -1,26 +1,6 @@
-.\" (C) Copyright 1999-2000 David A. Wheeler (dwheeler@dwheeler.com)
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1998, The Internet Society.  All rights reserved.
+.\" SPDX-FileCopyrightText: 1999-2000, David A. Wheeler <dwheeler@dwheeler.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .\" Fragments of this document are directly derived from IETF standards.
 .\" For those fragments which are directly derived from such standards,
diff --git a/man7/user_namespaces.7 b/man7/user_namespaces.7
index f25246d08..31fef3fe5 100644
--- a/man7/user_namespaces.7
+++ b/man7/user_namespaces.7
@@ -1,28 +1,6 @@
-.\" Copyright (c) 2013, 2014 by Michael Kerrisk <mtk.manpages@gmail.com>
-.\" and Copyright (c) 2012, 2014 by Eric W. Biederman <ebiederm@xmission.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
-.\"
+.\" SPDX-FileCopyrightText: 2013, 2014, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-FileCopyrightText: 2012, 2014, Eric W. Biederman <ebiederm@xmission.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH USER_NAMESPACES 7 2021-08-27 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/uts_namespaces.7 b/man7/uts_namespaces.7
index 3b30b6b3f..2eeea7a83 100644
--- a/man7/uts_namespaces.7
+++ b/man7/uts_namespaces.7
@@ -1,27 +1,5 @@
-.\" Copyright (c) 2019 by Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
-.\"
+.\" SPDX-FileCopyrightText: 2019, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH UTS_NAMESPACES 7 2019-11-19 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/vsock.7 b/man7/vsock.7
index 83066f525..2d9fed164 100644
--- a/man7/vsock.7
+++ b/man7/vsock.7
@@ -1,26 +1,5 @@
-.\" Copyright (C) 2018, Stefan Hajnoczi <stefanha@redhat.com>
-.\"
-.\" %%%LICENSE_START(VERBATIM)
-.\" Permission is granted to make and distribute verbatim copies of this
-.\" manual provided the copyright notice and this permission notice are
-.\" preserved on all copies.
-.\"
-.\" Permission is granted to copy and distribute modified versions of this
-.\" manual under the conditions for verbatim copying, provided that the
-.\" entire resulting derived work is distributed under the terms of a
-.\" permission notice identical to this one.
-.\"
-.\" Since the Linux kernel and libraries are constantly changing, this
-.\" manual page may be incorrect or out-of-date.  The author(s) assume no
-.\" responsibility for errors or omissions, or for damages resulting from
-.\" the use of the information contained herein.  The author(s) may not
-.\" have taken the same level of care in the production of this manual,
-.\" which is licensed free of charge, as they might when working
-.\" professionally.
-.\"
-.\" Formatted or processed versions of this manual, if unaccompanied by
-.\" the source, must acknowledge the copyright and authors of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2018, Stefan Hajnoczi <stefanha@redhat.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH VSOCK 7 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
-- 
2.33.0

