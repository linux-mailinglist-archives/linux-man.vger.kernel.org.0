Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D855F400FFD
	for <lists+linux-man@lfdr.de>; Sun,  5 Sep 2021 15:26:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232890AbhIEN1E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Sep 2021 09:27:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232542AbhIEN1E (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Sep 2021 09:27:04 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A993CC061575
        for <linux-man@vger.kernel.org>; Sun,  5 Sep 2021 06:26:00 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id u9so5633638wrg.8
        for <linux-man@vger.kernel.org>; Sun, 05 Sep 2021 06:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZHyCxV1qylQsjPviBbsZOg9KxgtpTVWlhAFaxSlM58g=;
        b=JZ8fWUxrsPhdne/Lw0Hms4Qdi/nyucYHF+n018YMo9h/khEEcC6Adh9u5MJD4/C2aH
         pMTeCWsdq765+CnXoZWo95MON+p3HGUIVii6Z7G9H83zSXF9VR/1k8Tq9kbq9JWK141F
         NE//d5qNYYaAdAnDmPjajo2V56VB+03v8V5n+RIQfJw2eERhFd764HkBnRVkbhiC877a
         2TuQnuFfn0yx34TCJudxRtviTF+2xVwRABDKCNglVbkq9WhjRavyan2Y/B1mDZKNWMj0
         9GsjOGaRJsfFtGiUnjKr/yxDRN7/3S9dFvhgwSl+K3Nh0RxqpCrgdm5QJm5Inb7h6ei+
         ovBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZHyCxV1qylQsjPviBbsZOg9KxgtpTVWlhAFaxSlM58g=;
        b=nmQxd3rc0SCSoLwciAmfS3bAj/G0eU/P86ZKuLCTJNyoTjz5tIG5dlH/4PqyQWQn3b
         qqTqeY+9SxR8Eq6yGdRXN3CZDdkl8lWCK88Sb96gU2ZGH5B+SvyfdCDDIo6l2fNEZ7xI
         FOcPAW+lVf0NOqc6d0MZFPadrzMsRe+hJM+frB4lVjDsMSlTtjkOblwigFDeEC0wm/ek
         WFQv6ruDH8xjUgiFtMQLNwwGBHoaN8UVT1aXWgcLSwAvQszODKdTOqZ1yHEphDVe1upF
         6iJct5mSOq5jU02hZt+49ywoixbNCtS8sCpwkIYOHVJXMJHGCgYN+ufB9/e8RwN3McpM
         2GNg==
X-Gm-Message-State: AOAM532UqgHQ6W2rgy2Eno0TRniLuwVqrqBKbfkXFOeo2AcKoWm4gvkQ
        wNUWBjnm7sG5hYjKcYLjjrE=
X-Google-Smtp-Source: ABdhPJxfONBm79z892TI2NUWFG/Iw1AV0WSy8h5Wtg+yJRYYRkMYXVx+eGx7xkAkSSWonii6FYzT5g==
X-Received: by 2002:adf:dc8a:: with SMTP id r10mr8516923wrj.371.1630848358587;
        Sun, 05 Sep 2021 06:25:58 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id l124sm4608586wml.8.2021.09.05.06.25.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 06:25:58 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [RFC v3 8/9] Many pages: [Verbatim-man-pages] Use SPDX markings
Date:   Sun,  5 Sep 2021 15:25:41 +0200
Message-Id: <20210905132542.245236-9-alx.manpages@gmail.com>
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
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man1/intro.1    | 25 ++-----------------------
 man1/locale.1   | 25 ++-----------------------
 man1/pldd.1     | 25 ++-----------------------
 man1/sprof.1    | 25 ++-----------------------
 man4/cpuid.4    | 26 +++-----------------------
 man4/full.4     | 26 +++-----------------------
 man4/fuse.4     | 26 +++-----------------------
 man4/initrd.4   | 26 +++-----------------------
 man4/mouse.4    | 26 +++-----------------------
 man4/msr.4      | 26 +++-----------------------
 man4/sd.4       | 26 ++------------------------
 man4/st.4       | 26 +++-----------------------
 man5/acct.5     | 25 ++-----------------------
 man5/core.5     | 25 ++-----------------------
 man5/services.5 | 28 +++-------------------------
 man5/slabinfo.5 | 27 +++------------------------
 man5/sysfs.5    | 25 ++-----------------------
 man5/tmpfs.5    | 25 ++-----------------------
 man8/sln.8      | 25 ++-----------------------
 19 files changed, 47 insertions(+), 441 deletions(-)

diff --git a/man1/intro.1 b/man1/intro.1
index 9bf7190df..0ec6cd279 100644
--- a/man1/intro.1
+++ b/man1/intro.1
@@ -1,26 +1,5 @@
-.\" Copyright (c) 2002 Andries Brouwer <aeb@cwi.nl>
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
+.\" SPDX-FileCopyrightText: 2002, Andries Brouwer <aeb@cwi.nl>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH INTRO 1 2020-08-13 "Linux" "Linux User's Manual"
 .SH NAME
diff --git a/man1/locale.1 b/man1/locale.1
index cd3161d26..1cfd89b34 100644
--- a/man1/locale.1
+++ b/man1/locale.1
@@ -1,26 +1,5 @@
-.\" Copyright (C) 2014 Michael Kerrisk <mtk.manpages@gmail.com>
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
+.\" SPDX-FileCopyrightText: 2014, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH LOCALE 1 2021-03-22 "Linux" "Linux User Manual"
 .SH NAME
diff --git a/man1/pldd.1 b/man1/pldd.1
index 627afead9..15b4f595a 100644
--- a/man1/pldd.1
+++ b/man1/pldd.1
@@ -1,26 +1,5 @@
-.\" Copyright (C) 2014 Michael Kerrisk <mtk.manpages@gmail.com>
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
+.\" SPDX-FileCopyrightText: 2014, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH PLDD 1 2020-11-01 "GNU" "Linux User Manual"
 .SH NAME
diff --git a/man1/sprof.1 b/man1/sprof.1
index c8e14c20f..3dcd852bc 100644
--- a/man1/sprof.1
+++ b/man1/sprof.1
@@ -1,26 +1,5 @@
-.\" Copyright (C) 2014 Michael Kerrisk <mtk.manpages@gmail.com>
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
+.\" SPDX-FileCopyrightText: 2014, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH SPROF 1 2020-11-01 "Linux" "Linux User Manual"
 .SH NAME
diff --git a/man4/cpuid.4 b/man4/cpuid.4
index 0180ff8cf..c342dd845 100644
--- a/man4/cpuid.4
+++ b/man4/cpuid.4
@@ -1,27 +1,7 @@
-.\" Copyright (c) 2009 Intel Corporation, Author Andi Kleen
-.\" Description based on comments in arch/x86/kernel/cpuid.c
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
+.\" SPDX-FileCopyrightText: 2009, Intel Corporation, Author Andi Kleen
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
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
+.\" Description based on comments in arch/x86/kernel/cpuid.c
 .\"
 .TH CPUID 4 2019-08-02 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man4/full.4 b/man4/full.4
index eba35a7df..fec008207 100644
--- a/man4/full.4
+++ b/man4/full.4
@@ -1,28 +1,8 @@
-.\" This man-page is Copyright (C) 1997 John S. Kallal
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
+.\" SPDX-FileCopyrightText: 1997, John S. Kallal
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .\" correction, aeb, 970825
+.\"
 .TH FULL 4 2019-03-06 "Linux" "Linux Programmer's Manual"
 .SH NAME
 full \- always full device
diff --git a/man4/fuse.4 b/man4/fuse.4
index f5bba89cc..cb463bbd6 100644
--- a/man4/fuse.4
+++ b/man4/fuse.4
@@ -1,27 +1,7 @@
-.\" Copyright (c) 2016 Julia Computing Inc, Keno Fischer
-.\" Description based on include/uapi/fuse.h and code in fs/fuse
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
+.\" SPDX-FileCopyrightText: 2016, Julia Computing Inc, Keno Fischer
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
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
+.\" Description based on include/uapi/fuse.h and code in fs/fuse
 .\"
 .TH FUSE 4 2018-02-02 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man4/initrd.4 b/man4/initrd.4
index 15f596cb1..c82f8fe97 100644
--- a/man4/initrd.4
+++ b/man4/initrd.4
@@ -1,26 +1,5 @@
-.\" This man-page is Copyright (C) 1997 John S. Kallal
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
-.\" the source, must acknowledge the copyright and author(s) of this work.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1997, John S. Kallal <kallal@voicenet.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .\" If the you wish to distribute versions of this work under other
 .\" conditions than the above, please contact the author(s) at the following
@@ -32,6 +11,7 @@
 .\"	phone: (302)654-5478
 .\"
 .\" $Id: initrd.4,v 0.9 1997/11/07 05:05:32 kallal Exp kallal $
+.\"
 .TH INITRD 4 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 initrd \- boot loader initialized RAM disk
diff --git a/man4/mouse.4 b/man4/mouse.4
index 7faa328b0..d67b26e0c 100644
--- a/man4/mouse.4
+++ b/man4/mouse.4
@@ -1,27 +1,7 @@
-.\" This manpage is Copyright (C) 1996 Michael Haardt.
-.\" Updates Nov 1998, Andries Brouwer
+.\" SPDX-FileCopyrightText: 1996, Michael Haardt.
+.\" SPDX-FileCopyrightText: 1998, Andries Brouwer
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
 .TH MOUSE 4 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
 mouse \- serial mouse interface
diff --git a/man4/msr.4 b/man4/msr.4
index 7d5132d66..3164f2b8f 100644
--- a/man4/msr.4
+++ b/man4/msr.4
@@ -1,27 +1,7 @@
-.\" Copyright (c) 2009 Intel Corporation, Author Andi Kleen
-.\" Some sentences copied from comments in arch/x86/kernel/msr.c
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
+.\" SPDX-FileCopyrightText: 2009, Intel Corporation, Author Andi Kleen
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
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
+.\" Some sentences copied from comments in arch/x86/kernel/msr.c
 .\"
 .TH MSR 4 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man4/sd.4 b/man4/sd.4
index b80396c47..8cda190db 100644
--- a/man4/sd.4
+++ b/man4/sd.4
@@ -1,27 +1,5 @@
-.\" sd.4
-.\" Copyright 1992 Rickard E. Faith (faith@cs.unc.edu)
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
+.\" SPDX-FileCopyrightText: 1992, Rickard E. Faith <faith@cs.unc.edu>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH SD 4 2017-09-15 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man4/st.4 b/man4/st.4
index e300eb45c..c064beaa0 100644
--- a/man4/st.4
+++ b/man4/st.4
@@ -1,27 +1,7 @@
-.\" Copyright 1995 Robert K. Nichols (Robert.K.Nichols@att.com)
-.\" Copyright 1999-2005 Kai Mäkisara (Kai.Makisara@kolumbus.fi)
+.\" SPDX-FileCopyrightText: 1995, Robert K. Nichols <Robert.K.Nichols@att.com>
+.\" SPDX-FileCopyrightText: 1999-2005, Kai Mäkisara <Kai.Makisara@kolumbus.fi>
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
 .TH ST 4  2020-04-11 "Linux" "Linux Programmer's Manual"
 .SH NAME
 st \- SCSI tape device
diff --git a/man5/acct.5 b/man5/acct.5
index e02cc6ef3..9b8fac860 100644
--- a/man5/acct.5
+++ b/man5/acct.5
@@ -1,26 +1,5 @@
-.\" Copyright (C) 2008, Michael Kerrisk <mtk.manpages@gmail.com>
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
+.\" SPDX-FileCopyrightText: 2008, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH ACCT 5 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man5/core.5 b/man5/core.5
index f1766a3c6..195bed408 100644
--- a/man5/core.5
+++ b/man5/core.5
@@ -1,26 +1,5 @@
-.\" Copyright (c) 2006, 2008 by Michael Kerrisk <mtk.manpages@gmail.com>
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
+.\" SPDX-FileCopyrightText: 2006, 2008, by Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH CORE 5 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man5/services.5 b/man5/services.5
index bc63dc4c6..ca2aec429 100644
--- a/man5/services.5
+++ b/man5/services.5
@@ -1,28 +1,6 @@
-.\" This manpage is Copyright (C) 1996 Austin Donnelly <and1000@cam.ac.uk>,
-.\" with additional material Copyright (c) 1995 Martin Schulze
-.\"     <joey@infodrom.north.de>
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
+.\" SPDX-FileCopyrightText: 1996, Austin Donnelly <and1000@cam.ac.uk>,
+.\" SPDX-FileCopyrightText: 1995, Martin Schulze <joey@infodrom.north.de>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .\"   This manpage was made by merging two independently written manpages,
 .\"   one written by Martin Schulze (18 Oct 95), the other written by
diff --git a/man5/slabinfo.5 b/man5/slabinfo.5
index b4ae61945..551df1093 100644
--- a/man5/slabinfo.5
+++ b/man5/slabinfo.5
@@ -1,27 +1,6 @@
-.\" Copyright (c) 2001 Andreas Dilger (adilger@turbolinux.com)
-.\" and Copyright (c) 2017 Michael Kerrisk <mtk.manpages@gmail.com>
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
+.\" SPDX-FileCopyrightText: 2001, Andreas Dilger <adilger@turbolinux.com>
+.\" SPDX-FileCopyrightText: 2017, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH SLABINFO 5 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man5/sysfs.5 b/man5/sysfs.5
index ff4a34918..779ae01fe 100644
--- a/man5/sysfs.5
+++ b/man5/sysfs.5
@@ -1,26 +1,5 @@
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
+.\" SPDX-FileCopyrightText: 2017, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH SYSFS 5 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man5/tmpfs.5 b/man5/tmpfs.5
index eb3996151..c25a57d6a 100644
--- a/man5/tmpfs.5
+++ b/man5/tmpfs.5
@@ -1,26 +1,5 @@
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
+.\" SPDX-FileCopyrightText: 2016, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH TMPFS 5 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man8/sln.8 b/man8/sln.8
index 341cf9afb..0a2f04844 100644
--- a/man8/sln.8
+++ b/man8/sln.8
@@ -1,26 +1,5 @@
-.\" Copyright (c) 2013 by Michael Kerrisk <mtk.manpages@gmail.com>
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
+.\" SPDX-FileCopyrightText: 2013, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: Verbatim-man-pages
 .\"
 .TH SLN 8 2021-03-22 "GNU" "Linux Programmer's Manual"
 .SH NAME
-- 
2.33.0

