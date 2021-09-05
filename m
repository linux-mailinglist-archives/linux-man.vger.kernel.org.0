Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6563400FFC
	for <lists+linux-man@lfdr.de>; Sun,  5 Sep 2021 15:26:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229566AbhIEN1D (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Sep 2021 09:27:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232890AbhIEN1D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Sep 2021 09:27:03 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63A05C061757
        for <linux-man@vger.kernel.org>; Sun,  5 Sep 2021 06:25:59 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id u26-20020a05600c441a00b002f66b2d8603so2986668wmn.4
        for <linux-man@vger.kernel.org>; Sun, 05 Sep 2021 06:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XkML/lETbxW3D89thjL6HvIAr64ImAm3o4LOCYwbD7E=;
        b=NYv57vnE62a2kuNBKI5otjL5PhCcwHVvYFP/MPrri4kMGy8qhNjoaWvUrqgUd8oXhf
         pplNGj/G5GAlnMkfbYth0mqtgASB8Ar14rpbWO98FjfGqVo0tdPJNEwhukbwjru7v/oy
         NHzIu1ghlcucl1WPjH2c4PIoq61+qlAJL2ebt0biuT3dutihIySYb+svIclgh+fzBg8Q
         GMybvkKHLgU9QCL90VYvxlzxgFXURqOTiDr4U1aqZDNT7hkF0vGvTHA0o49infoiDosx
         fQ8UcMjWm6hoLbmIFTDUitNIbNCK9QFZ3ffkS5E8/z8HitGXjPNZ0dUQtVmQnNkyiCwl
         dzYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XkML/lETbxW3D89thjL6HvIAr64ImAm3o4LOCYwbD7E=;
        b=YntjGaau0j/L+rqtfuxUIA5vak7XEjDGCJJyJb8QVEYfaYoHKsAJpTy7GUbv4nkQ0g
         nnZRxecpvifCxcLNnKeYIMheau4oTw6VsM2u1gfeDZInO4q58jMRe/CqqRpn14rV1ZjR
         ks/8skI97P0pTeuZ049xpQxhY6todrxYeqdGo34stIuQ4Y51ms1s4zbt2WstfulIgXVn
         H+4xv+ndReSZr3tLghPSiGLcO40F9MoZCDBEKpYfA6mvXAlzQ3gWfS+cNfMD/iibrfc1
         eLAJ93geYEoFKSLYdWPl9XWIM1Wbkn56VMX5XDu6sZY238TtSrjBmGXhb0v/oUQsy6PD
         mOCg==
X-Gm-Message-State: AOAM533weq6neDlnNOODA+3Dr6RjlnaESLNR55JF0yd5ep6Wg4Y2Vgur
        7CSyst3jpW/abvpan+0YbCA=
X-Google-Smtp-Source: ABdhPJwELyM8Ly2SAlnPOU4cap/oi9KmJ9W6cN3vQUk9A3y3jr+n9q5yBLlpW1EUVFruqn15V5OKFg==
X-Received: by 2002:a1c:3b05:: with SMTP id i5mr7320093wma.136.1630848357582;
        Sun, 05 Sep 2021 06:25:57 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id l124sm4608586wml.8.2021.09.05.06.25.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 06:25:57 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jilayne Lovejoy <opensource@jilayne.com>,
        Alexios Zavras <alexios.zavras@intel.com>,
        Richard Fontana <rfontana@redhat.com>
Subject: [RFC v3 7/9] Many pages: [GPL-2.0-or-later] Use SPDX markings
Date:   Sun,  5 Sep 2021 15:25:40 +0200
Message-Id: <20210905132542.245236-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210905132542.245236-1-alx.manpages@gmail.com>
References: <20210905132542.245236-1-alx.manpages@gmail.com>
MIME-Version: 1.0
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
 man2/_syscall.2               | 25 ++-----------------------
 man2/acct.2                   | 26 ++------------------------
 man2/add_key.2                | 13 ++++---------
 man2/adjtimex.2               | 26 +++-----------------------
 man2/bdflush.2                | 24 ++----------------------
 man2/brk.2                    | 27 +++------------------------
 man2/cacheflush.2             | 25 +++----------------------
 man2/epoll_create.2           | 22 +++-------------------
 man2/epoll_ctl.2              | 22 +++-------------------
 man2/epoll_wait.2             | 22 +++-------------------
 man2/eventfd.2                | 21 +++------------------
 man2/getsid.2                 | 27 ++++-----------------------
 man2/getxattr.2               | 26 +++-----------------------
 man2/inotify_add_watch.2      | 26 +++-----------------------
 man2/inotify_init.2           | 26 +++-----------------------
 man2/inotify_rm_watch.2       | 24 ++----------------------
 man2/ioctl_console.2          | 26 +++-----------------------
 man2/ioctl_ficlonerange.2     | 23 ++---------------------
 man2/ioctl_fideduperange.2    | 23 ++---------------------
 man2/ioctl_fslabel.2          | 23 ++---------------------
 man2/ioctl_getfsmap.2         | 23 ++---------------------
 man2/ioperm.2                 | 26 ++------------------------
 man2/ioprio_set.2             | 19 ++-----------------
 man2/ipc.2                    | 25 +++----------------------
 man2/listxattr.2              | 28 ++++------------------------
 man2/memfd_create.2           | 22 +++-------------------
 man2/memfd_secret.2           | 25 +++++--------------------
 man2/mlock.2                  | 27 ++++-----------------------
 man2/modify_ldt.2             | 26 +++-----------------------
 man2/mremap.2                 | 24 ++----------------------
 man2/nanosleep.2              | 28 ++++------------------------
 man2/outb.2                   | 26 ++------------------------
 man2/perf_event_open.2        | 24 ++----------------------
 man2/ptrace.2                 | 32 +++++---------------------------
 man2/removexattr.2            | 26 +++-----------------------
 man2/request_key.2            | 13 ++++---------
 man2/s390_pci_mmio_write.2    | 25 +++----------------------
 man2/s390_runtime_instr.2     | 25 +++----------------------
 man2/s390_sthyi.2             | 25 +++----------------------
 man2/sched_get_priority_max.2 | 24 ++----------------------
 man2/sched_rr_get_interval.2  | 24 ++----------------------
 man2/sched_setaffinity.2      | 26 +++-----------------------
 man2/sched_setparam.2         | 24 ++----------------------
 man2/sched_yield.2            | 24 ++----------------------
 man2/setsid.2                 | 27 +++------------------------
 man2/setxattr.2               | 26 +++-----------------------
 man2/signalfd.2               | 21 +++------------------
 man2/socketcall.2             | 25 +++----------------------
 man2/spu_create.2             | 19 ++-----------------
 man2/spu_run.2                | 19 ++-----------------
 man2/timerfd_create.2         | 19 ++-----------------
 man2/unimplemented.2          | 24 ++----------------------
 52 files changed, 145 insertions(+), 1103 deletions(-)

diff --git a/man2/_syscall.2 b/man2/_syscall.2
index 55ea51337..7846ec81c 100644
--- a/man2/_syscall.2
+++ b/man2/_syscall.2
@@ -1,26 +1,5 @@
-.\" Copyright (c) 1993 Michael Haardt (michael@moria.de),
-.\"   Fri Apr  2 11:32:09 MET DST 1993
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
 .\" Tue Jul  6 12:42:46 MDT 1993 <dminer@nyx.cs.du.edu>
 .\" Added "Calling Directly" and supporting paragraphs
diff --git a/man2/acct.2 b/man2/acct.2
index 87353354d..1ccda5217 100644
--- a/man2/acct.2
+++ b/man2/acct.2
@@ -1,27 +1,5 @@
-.\" Copyright (c) 1993 Michael Haardt
-.\" (michael@moria.de),
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
 .\" Modified 1993-07-22 by Rik Faith <faith@cs.unc.edu>
 .\" Modified 1993-08-10 by Alan Cox <iiitac@pyramid.swansea.ac.uk>
diff --git a/man2/add_key.2 b/man2/add_key.2
index 2638aed43..d3b7ff8f7 100644
--- a/man2/add_key.2
+++ b/man2/add_key.2
@@ -1,13 +1,8 @@
-.\" Copyright (C) 2006 Red Hat, Inc. All Rights Reserved.
-.\"     Written by David Howells (dhowells@redhat.com)
-.\" and Copyright (C) 2016 Michael Kerrisk <mtk.man-pages@gmail.com>
+.\" SPDX-FileCopyrightText: 2006, Red Hat, Inc.
+.\" SPDX-FileCopyrightText: 2016, Michael Kerrisk <mtk.man-pages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" %%%LICENSE_START(GPLv2+_SW_ONEPARA)
-.\" This program is free software; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License
-.\" as published by the Free Software Foundation; either version
-.\" 2 of the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\"     Written by David Howells (dhowells@redhat.com)
 .\"
 .TH ADD_KEY 2 2021-08-27 Linux "Linux Key Management Calls"
 .SH NAME
diff --git a/man2/adjtimex.2 b/man2/adjtimex.2
index 2745407f3..23f870ee2 100644
--- a/man2/adjtimex.2
+++ b/man2/adjtimex.2
@@ -1,26 +1,6 @@
-.\" Copyright (c) 1995 Michael Chastain (mec@shell.portal.com), 15 April 1995.
-.\" and Copyright (C) 2014, 2016 Michael Kerrisk <mtk.manpages@gmail.com>
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
+.\" SPDX-FileCopyrightText: 1995, Michael Chastain <mec@shell.portal.com>
+.\" SPDX-FileCopyrightText: 2014, 2016, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Modified 1997-01-31 by Eric S. Raymond <esr@thyrsus.com>
 .\" Modified 1997-07-30 by Paul Slootman <paul@wurtel.demon.nl>
diff --git a/man2/bdflush.2 b/man2/bdflush.2
index 710da7b18..7b479b395 100644
--- a/man2/bdflush.2
+++ b/man2/bdflush.2
@@ -1,25 +1,5 @@
-.\" Copyright (c) 1995 Michael Chastain (mec@shell.portal.com), 15 April 1995.
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
+.\" SPDX-FileCopyrightText: 1995, Michael Chastain <mec@shell.portal.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Modified 1997-01-31 by Eric S. Raymond <esr@thyrsus.com>
 .\" Modified 2004-06-17 by Michael Kerrisk <mtk.manpages@gmail.com>
diff --git a/man2/brk.2 b/man2/brk.2
index 786844d46..098996008 100644
--- a/man2/brk.2
+++ b/man2/brk.2
@@ -1,27 +1,6 @@
-.\" Copyright (c) 1993 Michael Haardt, (michael@moria.de)
-.\" and Copyright 2006, 2008, Michael Kerrisk <tmk.manpages@gmail.com>
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
+.\" SPDX-FileCopyrightText: 1993, Michael Haardt, <michael@moria.de>
+.\" SPDX-FileCopyrightText: 2006, 2008, Michael Kerrisk <tmk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Modified Wed Jul 21 19:52:58 1993 by Rik Faith <faith@cs.unc.edu>
 .\" Modified Sun Aug 21 17:40:38 1994 by Rik Faith <faith@cs.unc.edu>
diff --git a/man2/cacheflush.2 b/man2/cacheflush.2
index cdeeffea1..1741b9439 100644
--- a/man2/cacheflush.2
+++ b/man2/cacheflush.2
@@ -1,26 +1,7 @@
-.\" Written by Ralf Baechle (ralf@waldorf-gmbh.de),
-.\" Copyright (c) 1994, 1995 Waldorf GMBH
+.\" SPDX-FileCopyrightText: 1994, 1995, Waldorf GMBH
+.\" SPDX-License-Identifier: GPL-2.0-or-later
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
+.\" Written by Ralf Baechle <ralf@waldorf-gmbh.de>
 .\"
 .TH CACHEFLUSH 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/epoll_create.2 b/man2/epoll_create.2
index 0a5e0981e..d8a6d9ab4 100644
--- a/man2/epoll_create.2
+++ b/man2/epoll_create.2
@@ -1,22 +1,6 @@
-.\"  Copyright (C) 2003  Davide Libenzi
-.\" and Copyright 2008, 2009, 2012 Michael Kerrisk <tk.manpages@gmail.com>
-.\"  Davide Libenzi <davidel@xmailserver.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_SW_3_PARA)
-.\"  This program is free software; you can redistribute it and/or modify
-.\"  it under the terms of the GNU General Public License as published by
-.\"  the Free Software Foundation; either version 2 of the License, or
-.\"  (at your option) any later version.
-.\"
-.\"  This program is distributed in the hope that it will be useful,
-.\"  but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\"  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\"  GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2003, Davide Libenzi <davidel@xmailserver.org>
+.\" SPDX-FileCopyrightText: 2008, 2009, 2012, Michael Kerrisk <tk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Modified 2004-06-17 by Michael Kerrisk <mtk.manpages@gmail.com>
 .\" Modified 2005-04-04 by Marko Kohtala <marko.kohtala@gmail.com>
diff --git a/man2/epoll_ctl.2 b/man2/epoll_ctl.2
index ec31cac72..a74c26925 100644
--- a/man2/epoll_ctl.2
+++ b/man2/epoll_ctl.2
@@ -1,22 +1,6 @@
-.\"  Copyright (C) 2003  Davide Libenzi
-.\"  Davide Libenzi <davidel@xmailserver.org>
-.\" and Copyright 2009, 2014, 2016, 2018, 2019 Michael Kerrisk <tk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPLv2+_SW_3_PARA)
-.\"  This program is free software; you can redistribute it and/or modify
-.\"  it under the terms of the GNU General Public License as published by
-.\"  the Free Software Foundation; either version 2 of the License, or
-.\"  (at your option) any later version.
-.\"
-.\"  This program is distributed in the hope that it will be useful,
-.\"  but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\"  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\"  GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2003, Davide Libenzi <davidel@xmailserver.org>
+.\" SPDX-FileCopyrightText: 2009, 2014, 2016, 2018, 2019, Michael Kerrisk <tk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH EPOLL_CTL 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/epoll_wait.2 b/man2/epoll_wait.2
index 69c79d6ec..137692187 100644
--- a/man2/epoll_wait.2
+++ b/man2/epoll_wait.2
@@ -1,22 +1,6 @@
-.\"  Copyright (C) 2003  Davide Libenzi
-.\"  Davide Libenzi <davidel@xmailserver.org>
-.\" and Copyright 2007, 2012, 2014, 2018 Michael Kerrisk <tk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPLv2+_SW_3_PARA)
-.\"  This program is free software; you can redistribute it and/or modify
-.\"  it under the terms of the GNU General Public License as published by
-.\"  the Free Software Foundation; either version 2 of the License, or
-.\"  (at your option) any later version.
-.\"
-.\"  This program is distributed in the hope that it will be useful,
-.\"  but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\"  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\"  GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2003, Davide Libenzi <davidel@xmailserver.org>
+.\" SPDX-FileCopyrightText: 2007, 2012, 2014, 2018, Michael Kerrisk <tk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 2007-04-30: mtk, Added description of epoll_pwait()
 .\"
diff --git a/man2/eventfd.2 b/man2/eventfd.2
index 6e2d0a99a..7493e8f0f 100644
--- a/man2/eventfd.2
+++ b/man2/eventfd.2
@@ -1,21 +1,6 @@
-.\" Copyright (C) 2008 Michael Kerrisk <mtk.manpages@gmail.com>
-.\" starting from a version by Davide Libenzi <davidel@xmailserver.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_SW_3_PARA)
-.\" This program is free software; you can redistribute it and/or modify
-.\" it under the terms of the GNU General Public License as published by
-.\" the Free Software Foundation; either version 2 of the License, or
-.\" (at your option) any later version.
-.\"
-.\" This program is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Davide Libenzi <davidel@xmailserver.org>
+.\" SPDX-FileCopyrightText: 2008, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 2008-10-10, mtk: describe eventfd2(), and EFD_NONBLOCK and EFD_CLOEXEC
 .\"
diff --git a/man2/getsid.2 b/man2/getsid.2
index d94f5b9b0..42423b96b 100644
--- a/man2/getsid.2
+++ b/man2/getsid.2
@@ -1,29 +1,10 @@
-.\" Copyright (C) 1996 Andries Brouwer (aeb@cwi.nl)
-.\" and Copyright (C) 2016 Michael Kerrisk <mtk.manpages@gmail.com>
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
+.\" SPDX-FileCopyrightText: 1996, Andries Brouwer <aeb@cwi.nl>
+.\" SPDX-FileCopyrightText: 2016, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Modified Thu Oct 31 14:18:40 1996 by Eric S. Raymond <esr@y\thyrsus.com>
 .\" Modified 2001-12-17, aeb
+.\"
 .TH GETSID 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 getsid \- get session ID
diff --git a/man2/getxattr.2 b/man2/getxattr.2
index 15f0f9b4a..923f9c315 100644
--- a/man2/getxattr.2
+++ b/man2/getxattr.2
@@ -1,26 +1,6 @@
-.\" Copyright (C) Andreas Gruenbacher, February 2001
-.\" Copyright (C) Silicon Graphics Inc, September 2001
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
+.\" SPDX-FileCopyrightText: 2001, Andreas Gruenbacher
+.\" SPDX-FileCopyrightText: 2001, Silicon Graphics Inc
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH GETXATTR 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/inotify_add_watch.2 b/man2/inotify_add_watch.2
index bea4f1b2c..61661cb48 100644
--- a/man2/inotify_add_watch.2
+++ b/man2/inotify_add_watch.2
@@ -1,26 +1,6 @@
-.\" Copyright (C) 2005 Robert Love
-.\" and Copyright, 2006 Michael Kerrisk
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
+.\" SPDX-FileCopyrightText: 2005, Robert Love
+.\" SPDX-FileCopyrightText: 2006, Michael Kerrisk
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 2005-07-19 Robert Love <rlove@rlove.org> - initial version
 .\" 2006-02-07 mtk, various changes
diff --git a/man2/inotify_init.2 b/man2/inotify_init.2
index b166fdd43..383015a2d 100644
--- a/man2/inotify_init.2
+++ b/man2/inotify_init.2
@@ -1,26 +1,6 @@
-.\" Copyright (C) 2005 Robert Love
-.\" and Copyright (C) 2008, Michael Kerrisk <mtk.manpages@gmail.com>
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
+.\" SPDX-FileCopyrightText: 2005, Robert Love
+.\" SPDX-FileCopyrightText: 2008, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 2005-07-19 Robert Love <rlove@rlove.org> - initial version
 .\" 2006-02-07 mtk, minor changes
diff --git a/man2/inotify_rm_watch.2 b/man2/inotify_rm_watch.2
index bbb7d99e3..8db6792c4 100644
--- a/man2/inotify_rm_watch.2
+++ b/man2/inotify_rm_watch.2
@@ -1,25 +1,5 @@
-.\" Copyright (C) 2005 Robert Love
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
+.\" SPDX-FileCopyrightText: 2005, Robert Love
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 2005-07-19 Robert Love <rlove@rlove.org> - initial version
 .\" 2006-02-07 mtk, minor changes
diff --git a/man2/ioctl_console.2 b/man2/ioctl_console.2
index e1f63d8a3..7d23c7342 100644
--- a/man2/ioctl_console.2
+++ b/man2/ioctl_console.2
@@ -1,30 +1,10 @@
-.\" Copyright (c) 1995 Jim Van Zandt <jrv@vanzandt.mv.com> and aeb
-.\" Sun Feb 26 11:46:23 MET 1995
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
+.\" SPDX-FileCopyrightText: 1995, Jim Van Zandt <jrv@vanzandt.mv.com> and aeb
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Modified, Sun Feb 26 15:04:20 1995, faith@cs.unc.edu
 .\" Modified, Thu Apr 20 22:08:17 1995, jrv@vanzandt.mv.com
 .\" Modified, Mon Sep 18 22:32:47 1995, hpa@storm.net (H. Peter Anvin)
+.\"
 .\" FIXME The following are not documented:
 .\"     KDFONTOP (since 2.1.111)
 .\"     KDGKBDIACRUC (since 2.6.24)
diff --git a/man2/ioctl_ficlonerange.2 b/man2/ioctl_ficlonerange.2
index 75ab14bc4..907917183 100644
--- a/man2/ioctl_ficlonerange.2
+++ b/man2/ioctl_ficlonerange.2
@@ -1,25 +1,6 @@
-.\" Copyright (c) 2016, Oracle.  All rights reserved.
+.\" SPDX-FileCopyrightText: 2016, Oracle
+.\" SPDX-License-Identifier: GPL-2.0-or-later
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
 .TH IOCTL_FICLONERANGE 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 ioctl_ficlonerange, ioctl_ficlone \- share some the data of one file with another file
diff --git a/man2/ioctl_fideduperange.2 b/man2/ioctl_fideduperange.2
index 226e68258..afbcda25f 100644
--- a/man2/ioctl_fideduperange.2
+++ b/man2/ioctl_fideduperange.2
@@ -1,25 +1,6 @@
-.\" Copyright (c) 2016, Oracle.  All rights reserved.
+.\" SPDX-FileCopyrightText: 2016, Oracle
+.\" SPDX-License-Identifier: GPL-2.0-or-later
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
 .TH IOCTL_FIDEDUPERANGE 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 ioctl_fideduperange \- share some the data of one file with another file
diff --git a/man2/ioctl_fslabel.2 b/man2/ioctl_fslabel.2
index df4baecfd..3635710d2 100644
--- a/man2/ioctl_fslabel.2
+++ b/man2/ioctl_fslabel.2
@@ -1,25 +1,6 @@
-.\" Copyright (c) 2018, Red Hat, Inc.  All rights reserved.
+.\" SPDX-FileCopyrightText: 2018, Red Hat, Inc.
+.\" SPDX-License-Identifier: GPL-2.0-or-later
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
 .TH IOCTL_FSLABEL 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 ioctl_fslabel \- get or set a filesystem label
diff --git a/man2/ioctl_getfsmap.2 b/man2/ioctl_getfsmap.2
index 8feb6843f..6d97cf23c 100644
--- a/man2/ioctl_getfsmap.2
+++ b/man2/ioctl_getfsmap.2
@@ -1,25 +1,6 @@
-.\" Copyright (c) 2017, Oracle.  All rights reserved.
+.\" SPDX-FileCopyrightText: 2017, Oracle
+.\" SPDX-License-Identifier: GPL-2.0-or-later
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
 .TH IOCTL_GETFSMAP 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 ioctl_getfsmap \- retrieve the physical layout of the filesystem
diff --git a/man2/ioperm.2 b/man2/ioperm.2
index 7d4a4690a..f1f612a60 100644
--- a/man2/ioperm.2
+++ b/man2/ioperm.2
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
 .\" Modified Sat Jul 24 15:12:05 1993 by Rik Faith <faith@cs.unc.edu>
 .\" Modified Tue Aug  1 16:27    1995 by Jochen Karrer
diff --git a/man2/ioprio_set.2 b/man2/ioprio_set.2
index ac0c1bf80..6fd502126 100644
--- a/man2/ioprio_set.2
+++ b/man2/ioprio_set.2
@@ -1,20 +1,5 @@
-.\" Copyright (c) International Business Machines orp., 2006
-.\"
-.\" %%%LICENSE_START(GPLv2+_SW_3_PARA)
-.\" This program is free software; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" This program is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
-.\" the GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2006, International Business Machines corp.
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" HISTORY:
 .\" 2006-04-27, created by Eduardo M. Fleury <efleury@br.ibm.com>
diff --git a/man2/ipc.2 b/man2/ipc.2
index 4ce29ca69..983d6fb97 100644
--- a/man2/ipc.2
+++ b/man2/ipc.2
@@ -1,27 +1,8 @@
-.\" Copyright (c) 1995 Michael Chastain (mec@shell.portal.com), 15 April 1995.
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
+.\" SPDX-FileCopyrightText: 1995, Michael Chastain <mec@shell.portal.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Modified Tue Oct 22 08:11:14 EDT 1996 by Eric S. Raymond <esr@thyrsus.com>
+.\"
 .TH IPC 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 ipc \- System V IPC system calls
diff --git a/man2/listxattr.2 b/man2/listxattr.2
index 18d008e04..f03afad41 100644
--- a/man2/listxattr.2
+++ b/man2/listxattr.2
@@ -1,27 +1,7 @@
-.\" Copyright (C) Andreas Gruenbacher, February 2001
-.\" Copyright (C) Silicon Graphics Inc, September 2001
-.\" Copyright (C) 2015 Heinrich Schuchardt <xypron.glpk@gmx.de>
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
+.\" SPDX-FileCopyrightText: 2001, Andreas Gruenbacher
+.\" SPDX-FileCopyrightText: 2001, Silicon Graphics Inc
+.\" SPDX-FileCopyrightText: 2015, Heinrich Schuchardt <xypron.glpk@gmx.de>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH LISTXATTR 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/memfd_create.2 b/man2/memfd_create.2
index 89e9c4136..4bf54d959 100644
--- a/man2/memfd_create.2
+++ b/man2/memfd_create.2
@@ -1,22 +1,6 @@
-.\" Copyright (C) 2014 Michael Kerrisk <mtk.manpages@gmail.com>
-.\" and Copyright (C) 2014 David Herrmann <dh.herrmann@gmail.com>
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
+.\" SPDX-FileCopyrightText: 2014, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-FileCopyrightText: 2014, David Herrmann <dh.herrmann@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH MEMFD_CREATE 2 2021-03-22 Linux "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/memfd_secret.2 b/man2/memfd_secret.2
index f3380818e..4a6874a38 100644
--- a/man2/memfd_secret.2
+++ b/man2/memfd_secret.2
@@ -1,26 +1,11 @@
-.\" Copyright (c) 2021, IBM Corporation.
+.\" SPDX-FileCopyrightText: 2014, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-FileCopyrightText: 2014, David Herrmann <dh.herrmann@gmail.com>
+.\" SPDX-FileCopyrightText: 2021, IBM Corporation.
+.\" SPDX-License-Identifier: GPL-2.0-or-later
+.\"
 .\" Written by Mike Rapoport <rppt@linux.ibm.com>
 .\"
 .\" Based on memfd_create(2) man page
-.\" Copyright (C) 2014 Michael Kerrisk <mtk.manpages@gmail.com>
-.\" and Copyright (C) 2014 David Herrmann <dh.herrmann@gmail.com>
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
 .\"
 .TH MEMFD_SECRET 2 2020-08-02 Linux "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/mlock.2 b/man2/mlock.2
index d5e226580..1991c192f 100644
--- a/man2/mlock.2
+++ b/man2/mlock.2
@@ -1,27 +1,8 @@
-.\" Copyright (C) Michael Kerrisk, 2004
-.\"	using some material drawn from earlier man pages
-.\"	written by Thomas Kuhn, Copyright 1996
+.\" SPDX-FileCopyrightText: 1996, Thomas Kuhn
+.\" SPDX-FileCopyrightText: 2004, Michael Kerrisk
+.\" SPDX-License-Identifier: GPL-2.0-or-later
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
+.\"	using some material drawn from earlier man pages written by Thomas Kuhn
 .\"
 .TH MLOCK 2 2021-08-27 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/modify_ldt.2 b/man2/modify_ldt.2
index b67a67690..b95890be4 100644
--- a/man2/modify_ldt.2
+++ b/man2/modify_ldt.2
@@ -1,26 +1,6 @@
-.\" Copyright (c) 1995 Michael Chastain (mec@duracef.shout.net), 22 July 1995.
-.\" Copyright (c) 2015 Andrew Lutomirski
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
+.\" SPDX-FileCopyrightText: 1995, Michael Chastain <mec@duracef.shout.net>
+.\" SPDX-FileCopyrightText: 2015, Andrew Lutomirski
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH MODIFY_LDT 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/mremap.2 b/man2/mremap.2
index 3ed0c0c0a..c9375711d 100644
--- a/man2/mremap.2
+++ b/man2/mremap.2
@@ -1,25 +1,5 @@
-.\" Copyright (c) 1996 Tom Bjorkholm <tomb@mydata.se>
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
+.\" SPDX-FileCopyrightText: 1996, Tom Bjorkholm <tomb@mydata.se>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 1996-04-11 Tom Bjorkholm <tomb@mydata.se>
 .\"            First version written (1.3.86)
diff --git a/man2/nanosleep.2 b/man2/nanosleep.2
index 89d8577db..4b925906f 100644
--- a/man2/nanosleep.2
+++ b/man2/nanosleep.2
@@ -1,27 +1,6 @@
-.\" Copyright (C) Markus Kuhn, 1996
-.\" and Copyright (C) Linux Foundation, 2008, written by Michael Kerrisk
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
+.\" SPDX-FileCopyrightText: 1996, Markus Kuhn
+.\" SPDX-FileCopyrightText: 2008, Linux Foundation, written by Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 1996-04-10  Markus Kuhn <mskuhn@cip.informatik.uni-erlangen.de>
 .\"             First version written
@@ -31,6 +10,7 @@
 .\"     NOTES: describe case where clock_nanosleep() can be preferable.
 .\"     NOTES: describe CLOCK_REALTIME versus CLOCK_NANOSLEEP
 .\"     Replace crufty discussion of HZ with a pointer to time(7).
+.\"
 .TH NANOSLEEP 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 nanosleep \- high-resolution sleep
diff --git a/man2/outb.2 b/man2/outb.2
index 63a749e9f..2b88a20e1 100644
--- a/man2/outb.2
+++ b/man2/outb.2
@@ -1,27 +1,5 @@
-.\" Copyright (c) 1995 Paul Gortmaker
-.\" (gpg109@rsphy1.anu.edu.au)
-.\" Wed Nov 29 10:58:54 EST 1995
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
+.\" SPDX-FileCopyrightText: 1995, Paul Gortmaker <gpg109@rsphy1.anu.edu.au>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH OUTB 2 2020-11-01 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index 81c1b10f2..d860f4705 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -1,25 +1,5 @@
-.\" Copyright (c) 2012, Vincent Weaver
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
+.\" SPDX-FileCopyrightText: 2012, Vincent Weaver
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" This document is based on the perf_event.h header file, the
 .\" tools/perf/design.txt file, and a lot of bitter experience.
diff --git a/man2/ptrace.2 b/man2/ptrace.2
index ffaf8db0d..e5a73a6e6 100644
--- a/man2/ptrace.2
+++ b/man2/ptrace.2
@@ -1,35 +1,13 @@
-.\" Copyright (c) 1993 Michael Haardt <michael@moria.de>
-.\" Fri Apr  2 11:32:09 MET DST 1993
+.\" SPDX-FileCopyrightText: 1993, Michael Haardt <michael@moria.de>
+.\" SPDX-FileCopyrightText: 1999, Mike Coleman <mkc@acm.org>
+.\" SPDX-FileCopyrightText: 2011, Denys Vlasenko <vda.linux@googlemail.com>
+.\" SPDX-FileCopyrightText: 2015, 2016, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" and changes Copyright (C) 1999 Mike Coleman (mkc@acm.org)
 .\" -- major revision to fully document ptrace semantics per recent Linux
 .\"    kernel (2.2.10) and glibc (2.1.2)
 .\" Sun Nov  7 03:18:35 CST 1999
 .\"
-.\" and Copyright (c) 2011, Denys Vlasenko <vda.linux@googlemail.com>
-.\" and Copyright (c) 2015, 2016, Michael Kerrisk <mtk.manpages@gmail.com>
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
-.\"
 .\" Modified Fri Jul 23 23:47:18 1993 by Rik Faith <faith@cs.unc.edu>
 .\" Modified Fri Jan 31 16:46:30 1997 by Eric S. Raymond <esr@thyrsus.com>
 .\" Modified Thu Oct  7 17:28:49 1999 by Andries Brouwer <aeb@cwi.nl>
diff --git a/man2/removexattr.2 b/man2/removexattr.2
index 52e2ddacb..67217ba6f 100644
--- a/man2/removexattr.2
+++ b/man2/removexattr.2
@@ -1,26 +1,6 @@
-.\" Copyright (C) Andreas Gruenbacher, February 2001
-.\" Copyright (C) Silicon Graphics Inc, September 2001
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
+.\" SPDX-FileCopyrightText: 2001, Andreas Gruenbacher
+.\" SPDX-FileCopyrightText: 2001, Silicon Graphics Inc
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH REMOVEXATTR 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/request_key.2 b/man2/request_key.2
index 145aff506..d9582c740 100644
--- a/man2/request_key.2
+++ b/man2/request_key.2
@@ -1,13 +1,8 @@
-.\" Copyright (C) 2006 Red Hat, Inc. All Rights Reserved.
-.\"     Written by David Howells (dhowells@redhat.com)
-.\" and Copyright (C) 2016 Michael Kerrisk <mtk.man-pages@gmail.com>
+.\" SPDX-FileCopyrightText: 2006, Red Hat, Inc.
+.\" SPDX-FileCopyrightText: 2016, Michael Kerrisk <mtk.man-pages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" %%%LICENSE_START(GPLv2+_SW_ONEPARA)
-.\" This program is free software; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License
-.\" as published by the Free Software Foundation; either version
-.\" 2 of the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\"     Written by David Howells (dhowells@redhat.com)
 .\"
 .TH REQUEST_KEY 2 2021-08-27 Linux "Linux Key Management Calls"
 .SH NAME
diff --git a/man2/s390_pci_mmio_write.2 b/man2/s390_pci_mmio_write.2
index 4e34889db..4e4744b72 100644
--- a/man2/s390_pci_mmio_write.2
+++ b/man2/s390_pci_mmio_write.2
@@ -1,26 +1,7 @@
-.\" Copyright (c) IBM Corp. 2015
-.\" Author: Alexey Ishchuk <aishchuk@linux.vnet.ibm.com>
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
+.\" SPDX-FileCopyrightText: 2015, IBM Corp.
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" Author: Alexey Ishchuk <aishchuk@linux.vnet.ibm.com>
 .\"
 .TH S390_PCI_MMIO_WRITE 2 2021-03-22 "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/s390_runtime_instr.2 b/man2/s390_runtime_instr.2
index a043cfd9a..9fb12c130 100644
--- a/man2/s390_runtime_instr.2
+++ b/man2/s390_runtime_instr.2
@@ -1,26 +1,7 @@
-.\" Copyright (c) IBM Corp. 2012
-.\" Author: Jan Glauber <jang@linux.vnet.ibm.com>
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
+.\" SPDX-FileCopyrightText: 2012, IBM Corp.
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" Author: Jan Glauber <jang@linux.vnet.ibm.com>
 .\"
 .TH S390_RUNTIME_INSTR 2 2021-03-22 "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/s390_sthyi.2 b/man2/s390_sthyi.2
index 58e3230a9..4148e3ffc 100644
--- a/man2/s390_sthyi.2
+++ b/man2/s390_sthyi.2
@@ -1,26 +1,7 @@
-.\" Copyright IBM Corp. 2017
-.\" Author: QingFeng Hao <haoqf@linux.vnet.ibm.com>
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
+.\" SPDX-FileCopyrightText: 2017, IBM Corp.
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" This manual is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" Author: QingFeng Hao <haoqf@linux.vnet.ibm.com>
 .\"
 .TH S390_STHYI 2 2021-03-22 "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/sched_get_priority_max.2 b/man2/sched_get_priority_max.2
index 2afd88681..51a0ba888 100644
--- a/man2/sched_get_priority_max.2
+++ b/man2/sched_get_priority_max.2
@@ -1,25 +1,5 @@
-.\" Copyright (C) Tom Bjorkholm & Markus Kuhn, 1996
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
+.\" SPDX-FileCopyrightText: 1996, Tom Bjorkholm & Markus Kuhn
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 1996-04-01 Tom Bjorkholm <tomb@mydata.se>
 .\"            First version written
diff --git a/man2/sched_rr_get_interval.2 b/man2/sched_rr_get_interval.2
index 93db938df..726319dde 100644
--- a/man2/sched_rr_get_interval.2
+++ b/man2/sched_rr_get_interval.2
@@ -1,25 +1,5 @@
-.\" Copyright (C) Tom Bjorkholm & Markus Kuhn, 1996
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
+.\" SPDX-FileCopyrightText: 1996, Tom Bjorkholm & Markus Kuhn
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 1996-04-01 Tom Bjorkholm <tomb@mydata.se>
 .\"            First version written
diff --git a/man2/sched_setaffinity.2 b/man2/sched_setaffinity.2
index ac7631746..fa5076fb6 100644
--- a/man2/sched_setaffinity.2
+++ b/man2/sched_setaffinity.2
@@ -1,26 +1,6 @@
-.\" Copyright (C) 2002 Robert Love
-.\" and Copyright (C) 2006, 2015 Michael Kerrisk
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
+.\" SPDX-FileCopyrightText: 2002, Robert Love
+.\" SPDX-FileCopyrightText: 2006, 2015, Michael Kerrisk
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 2002-11-19 Robert Love <rml@tech9.net> - initial version
 .\" 2004-04-20 mtk - fixed description of return value
diff --git a/man2/sched_setparam.2 b/man2/sched_setparam.2
index 3974645ff..774a0c321 100644
--- a/man2/sched_setparam.2
+++ b/man2/sched_setparam.2
@@ -1,25 +1,5 @@
-.\" Copyright (C) Tom Bjorkholm & Markus Kuhn, 1996
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
+.\" SPDX-FileCopyrightText: 1996, Tom Bjorkholm & Markus Kuhn
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 1996-04-01 Tom Bjorkholm <tomb@mydata.se>
 .\"            First version written
diff --git a/man2/sched_yield.2 b/man2/sched_yield.2
index 2a335d53c..230e6b104 100644
--- a/man2/sched_yield.2
+++ b/man2/sched_yield.2
@@ -1,25 +1,5 @@
-.\" Copyright (C) Tom Bjorkholm & Markus Kuhn, 1996
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
+.\" SPDX-FileCopyrightText: 1996, Tom Bjorkholm & Markus Kuhn
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 1996-04-01 Tom Bjorkholm <tomb@mydata.se>
 .\"            First version written
diff --git a/man2/setsid.2 b/man2/setsid.2
index b41d28384..cff2d0782 100644
--- a/man2/setsid.2
+++ b/man2/setsid.2
@@ -1,27 +1,6 @@
-.\" Copyright Michael Haardt (michael@cantor.informatik.rwth-aachen.de)
-.\"     Sat Aug 27 20:43:50 MET DST 1994
-.\" and Copyright (C) 2014, Michael Kerrisk <mtk.manpages@gmail.com>
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
+.\" SPDX-FileCopyrightText: 1994, Michael Haardt <michael@cantor.informatik.rwth-aachen.de>
+.\" SPDX-FileCopyrightText: 2014, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Modified Sun Sep 11 19:19:05 1994 <faith@cs.unc.edu>
 .\" Modified Mon Mar 25 10:19:00 1996 <aeb@cwi.nl> (merged a few
diff --git a/man2/setxattr.2 b/man2/setxattr.2
index 2d3a5a436..6b0a301ec 100644
--- a/man2/setxattr.2
+++ b/man2/setxattr.2
@@ -1,26 +1,6 @@
-.\" Copyright (C) Andreas Gruenbacher, February 2001
-.\" Copyright (C) Silicon Graphics Inc, September 2001
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
+.\" SPDX-FileCopyrightText: 2001, Andreas Gruenbacher
+.\" SPDX-FileCopyrightText: 2001, Silicon Graphics Inc
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH SETXATTR 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/signalfd.2 b/man2/signalfd.2
index 102679c0d..882151ce9 100644
--- a/man2/signalfd.2
+++ b/man2/signalfd.2
@@ -1,21 +1,6 @@
-.\" Copyright (C) 2008 Michael Kerrisk <mtk.manpages@gmail.com>
-.\" starting from a version by Davide Libenzi <davidel@xmailserver.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_SW_3_PARA)
-.\" This program is free software; you can redistribute it and/or modify
-.\" it under the terms of the GNU General Public License as published by
-.\" the Free Software Foundation; either version 2 of the License, or
-.\" (at your option) any later version.
-.\"
-.\" This program is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Davide Libenzi <davidel@xmailserver.org>
+.\" SPDX-FileCopyrightText: 2008, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH SIGNALFD 2 2021-03-22 Linux "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/socketcall.2 b/man2/socketcall.2
index b39f61039..921ceb8e7 100644
--- a/man2/socketcall.2
+++ b/man2/socketcall.2
@@ -1,27 +1,8 @@
-.\" Copyright (c) 1995 Michael Chastain (mec@shell.portal.com), 15 April 1995.
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
+.\" SPDX-FileCopyrightText: 1995, Michael Chastain <mec@shell.portal.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Modified Tue Oct 22 22:11:53 1996 by Eric S. Raymond <esr@thyrsus.com>
+.\"
 .TH SOCKETCALL 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 socketcall \- socket system calls
diff --git a/man2/spu_create.2 b/man2/spu_create.2
index 746a86ed6..41e09fa6a 100644
--- a/man2/spu_create.2
+++ b/man2/spu_create.2
@@ -1,20 +1,5 @@
-.\" Copyright (c) International Business Machines Corp., 2006
-.\"
-.\" %%%LICENSE_START(GPLv2+_SW_3_PARA)
-.\" This program is free software; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" This program is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
-.\" the GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2006, International Business Machines Corp.
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" HISTORY:
 .\" 2005-09-28, created by Arnd Bergmann <arndb@de.ibm.com>
diff --git a/man2/spu_run.2 b/man2/spu_run.2
index d5fdc2280..c93721c0b 100644
--- a/man2/spu_run.2
+++ b/man2/spu_run.2
@@ -1,20 +1,5 @@
-.\" Copyright (c) International Business Machines Corp., 2006
-.\"
-.\" %%%LICENSE_START(GPLv2+_SW_3_PARA)
-.\" This program is free software; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\"
-.\" This program is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
-.\" the GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2006, International Business Machines Corp.
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" HISTORY:
 .\" 2005-09-28, created by Arnd Bergmann <arndb@de.ibm.com>
diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
index 65fdfcc45..686f4d2b6 100644
--- a/man2/timerfd_create.2
+++ b/man2/timerfd_create.2
@@ -1,20 +1,5 @@
-.\" Copyright (C) 2008 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPLv2+_SW_3_PARA)
-.\" This program is free software; you can redistribute it and/or modify
-.\" it under the terms of the GNU General Public License as published by
-.\" the Free Software Foundation; either version 2 of the License, or
-.\" (at your option) any later version.
-.\"
-.\" This program is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2008, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH TIMERFD_CREATE 2 2021-03-22 Linux "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/unimplemented.2 b/man2/unimplemented.2
index 299c6f9e0..d49b1e018 100644
--- a/man2/unimplemented.2
+++ b/man2/unimplemented.2
@@ -1,25 +1,5 @@
-.\" Copyright 1995 Michael Chastain (mec@shell.portal.com), 15 April 1995.
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
+.\" SPDX-FileCopyrightText: 1995, Michael Chastain <mec@shell.portal.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Updated, aeb, 980612
 .\"
-- 
2.33.0

