Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 35043400FFA
	for <lists+linux-man@lfdr.de>; Sun,  5 Sep 2021 15:26:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232464AbhIEN1A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Sep 2021 09:27:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229566AbhIEN07 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Sep 2021 09:26:59 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C309C061575
        for <linux-man@vger.kernel.org>; Sun,  5 Sep 2021 06:25:56 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id z4so5633343wrr.6
        for <linux-man@vger.kernel.org>; Sun, 05 Sep 2021 06:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Hj6ZcCyKASXeUvS9uGfGJlRoYBEU+e7Gz5fxxGnpNSY=;
        b=k6wDxqUSXLD/pk6Zmb+Ei4XK26ZZQ+0NegxapB2nHD+CXGirdsDFkbybEWdVdCNr5R
         7B9S81BdyYqh3Xt9VxDm13GVrjLR3gQ8h2uNJk/Yrm3g/36WfCmxhp7gz74YnKiJHCxT
         8jmg7ZPBrqDQXzEPidsw3o4pDIBGf9MzUp7KTddG36TpeRMz0OAQzR+aBOqCpjdOFMxJ
         AvJjdlQPx8Ls7vBmmDypkYT4tTWP08F/f9ChvPuPmldNBXmFePMNtNtxovhswGLxKRzX
         hmxiUDwtrSlip7SIxo5U5HeVPPy0BB8oxNYrgvi+ZxXTdPXlN8JI7bRg+sNmaGC/Xqlm
         8ACQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Hj6ZcCyKASXeUvS9uGfGJlRoYBEU+e7Gz5fxxGnpNSY=;
        b=plQV6BvKikKp3kjkk4ox/dY3qIFZtxnyO9BzlD+YldYf4BGXzyff7bwDlvfWds9plO
         fwSGAJ6EpNrGtog1WgJ7R587b05KsCpclb/z558bwIXcHKcmWZsppgjDUuZ867auy086
         Ye+XMinl4PNUCd94kBdmGklSh80XyuTO1dNYkuOGRtj3LmSALFi/91td94gEXMxyIY0I
         tay1tbkFOv4hGLO2iFNr9xbof/mXz4+gNdRpWPGFKSMYK6Lsbs5M0S2qhwWJ/sOnljIm
         Kvwwm6w8Tuw78Bwe/XKnr94P7X92BkQ+0++QJR3ZdHP0SPLF3xEQPjRDUSDb7nQ5GRpi
         VNHA==
X-Gm-Message-State: AOAM531FfpCZC38l5rhmG5WuGOzACDaTHsnN3+ZCFXGpERZefEDtcrQW
        /2m5J189hxLDFqMPmvwISH0=
X-Google-Smtp-Source: ABdhPJxzM52WAoC/hNqwS6GuS+xUWbjvOPccDSmxyP9uyYY68NGyoRVsXRPruiBJROldy/Dph5BxVw==
X-Received: by 2002:adf:9d4b:: with SMTP id o11mr8294851wre.29.1630848354632;
        Sun, 05 Sep 2021 06:25:54 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id l124sm4608586wml.8.2021.09.05.06.25.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 06:25:54 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jilayne Lovejoy <opensource@jilayne.com>,
        Alexios Zavras <alexios.zavras@intel.com>,
        Richard Fontana <rfontana@redhat.com>
Subject: [RFC v3 5/9] Many pages: [GPL-2.0-or-later] Use SPDX markings
Date:   Sun,  5 Sep 2021 15:25:38 +0200
Message-Id: <20210905132542.245236-6-alx.manpages@gmail.com>
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
 man1/getent.1        | 26 +++-----------------------
 man1/iconv.1         | 24 ++----------------------
 man1/localedef.1     | 30 +++++-------------------------
 man1/memusage.1      | 25 +++----------------------
 man1/memusagestat.1  | 23 ++---------------------
 man1/mtrace.1        | 23 ++---------------------
 man3/MB_CUR_MAX.3    | 10 ++--------
 man3/aio_cancel.3    | 24 ++----------------------
 man3/aio_error.3     | 24 ++----------------------
 man3/aio_fsync.3     | 24 ++----------------------
 man3/aio_read.3      | 24 ++----------------------
 man3/aio_return.3    | 24 ++----------------------
 man3/aio_suspend.3   | 26 +++-----------------------
 man3/aio_write.3     | 24 ++----------------------
 man3/btowc.3         | 10 ++--------
 man3/cfree.3         | 24 ++----------------------
 man3/crypt.3         | 27 +++------------------------
 man3/dlerror.3       | 26 +++-----------------------
 man3/dlopen.3        | 29 +++++------------------------
 man3/dlsym.3         | 26 +++-----------------------
 man3/encrypt.3       | 25 ++-----------------------
 man3/errno.3         | 24 ++----------------------
 man3/iconv.3         | 10 ++--------
 man3/wcscpy.3        | 10 ++--------
 man4/console_codes.4 | 20 ++------------------
 man4/dsp56k.4        | 26 ++------------------------
 man4/fd.4            | 28 ++++------------------------
 man4/hd.4            | 25 ++-----------------------
 man4/intro.4         | 26 +++-----------------------
 man4/lirc.4          | 25 +++----------------------
 man4/loop.4          | 27 +++------------------------
 man4/lp.4            | 26 +++-----------------------
 man4/mem.4           | 26 +++-----------------------
 man4/null.4          | 26 +++-----------------------
 man4/ram.4           | 26 +++-----------------------
 man4/random.4        | 10 ++--------
 man4/rtc.4           | 25 ++-----------------------
 man4/sk98lin.4       | 27 ++-------------------------
 man4/tty.4           | 27 +++------------------------
 man4/ttyS.4          | 26 +++-----------------------
 man4/vcs.4           | 27 +++------------------------
 man4/veth.4          | 29 +++--------------------------
 42 files changed, 109 insertions(+), 885 deletions(-)

diff --git a/man1/getent.1 b/man1/getent.1
index 4822c2c12..56bc7edd7 100644
--- a/man1/getent.1
+++ b/man1/getent.1
@@ -1,26 +1,6 @@
-.\" Copyright (c) 2011, Mark R. Bannister <cambridge@users.sourceforge.net>
-.\" Copyright (c) 2015, Robin H. Johnson <robbat2@gentoo.org>
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
+.\" SPDX-FileCopyrightText: 2011, Mark R. Bannister <cambridge@users.sourceforge.net>
+.\" SPDX-FileCopyrightText: 2015, Robin H. Johnson <robbat2@gentoo.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH GETENT 1 2021-03-22 "Linux" "User Commands"
 .SH NAME
diff --git a/man1/iconv.1 b/man1/iconv.1
index 2aae3a8ff..424514789 100644
--- a/man1/iconv.1
+++ b/man1/iconv.1
@@ -1,25 +1,5 @@
-.\" Copyright (C) 2014 Marko Myllynen <myllynen@redhat.com>
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
+.\" SPDX-FileCopyrightText: 2014, Marko Myllynen <myllynen@redhat.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH ICONV 1 2021-08-27 "GNU" "Linux User Manual"
 .SH NAME
diff --git a/man1/localedef.1 b/man1/localedef.1
index 3b9f8adf1..53864bf3f 100644
--- a/man1/localedef.1
+++ b/man1/localedef.1
@@ -1,28 +1,8 @@
-.\" Copyright (C) 2001 Richard Braakman
-.\" Copyright (C) 2004 Alastair McKinstry
-.\" Copyright (C) 2005 Lars Wirzenius
-.\" Copyright (C) 2014 Marko Myllynen
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
+.\" SPDX-FileCopyrightText: 2001, Richard Braakman
+.\" SPDX-FileCopyrightText: 2004, Alastair McKinstry
+.\" SPDX-FileCopyrightText: 2005, Lars Wirzenius
+.\" SPDX-FileCopyrightText: 2014, Marko Myllynen
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" This manual page was initially written by Richard Braakman
 .\" on behalf of the Debian GNU/Linux Project and anyone else
diff --git a/man1/memusage.1 b/man1/memusage.1
index 4949755b8..93c1d34d0 100644
--- a/man1/memusage.1
+++ b/man1/memusage.1
@@ -1,26 +1,7 @@
-.\" Copyright (c) 2013, Peter Schiffer <pschiffe@redhat.com>
-.\" and Copyright (C) 2014, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-FileCopyrightText: 2013, Peter Schiffer <pschiffe@redhat.com>
+.\" SPDX-FileCopyrightText: 2014, Michael Kerrisk <mtk.manpages@gmail.com>
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
 .TH MEMUSAGE 1 2021-03-22 "GNU" "Linux user manual"
 .SH NAME
 memusage \- profile memory usage of a program
diff --git a/man1/memusagestat.1 b/man1/memusagestat.1
index a922eb517..c7a5d18bb 100644
--- a/man1/memusagestat.1
+++ b/man1/memusagestat.1
@@ -1,25 +1,6 @@
-.\" Copyright (c) 2013, Peter Schiffer <pschiffe@redhat.com>
+.\" SPDX-FileCopyrightText: 2013, Peter Schiffer <pschiffe@redhat.com>
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
 .TH MEMUSAGESTAT 1 2021-03-22 "GNU" "Linux programmer's manual"
 .SH NAME
 memusagestat \- generate graphic from memory profiling data
diff --git a/man1/mtrace.1 b/man1/mtrace.1
index 3a6e7b9c0..9dea70257 100644
--- a/man1/mtrace.1
+++ b/man1/mtrace.1
@@ -1,25 +1,6 @@
-.\" Copyright (c) 2013, Peter Schiffer (pschiffe@redhat.com)
+.\" SPDX-FileCopyrightText: 2013, Peter Schiffer <pschiffe@redhat.com>
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
 .TH MTRACE 1 2021-03-22 "GNU" "Linux user manual"
 .SH NAME
 mtrace \- interpret the malloc trace log
diff --git a/man3/MB_CUR_MAX.3 b/man3/MB_CUR_MAX.3
index c06bac9ed..06910a9b8 100644
--- a/man3/MB_CUR_MAX.3
+++ b/man3/MB_CUR_MAX.3
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
diff --git a/man3/aio_cancel.3 b/man3/aio_cancel.3
index 676454abe..a131da295 100644
--- a/man3/aio_cancel.3
+++ b/man3/aio_cancel.3
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
 .TH AIO_CANCEL 3 2021-03-22  "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/aio_error.3 b/man3/aio_error.3
index 441575c45..6312b73f1 100644
--- a/man3/aio_error.3
+++ b/man3/aio_error.3
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
 .TH AIO_ERROR 3 2021-03-22  "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/aio_fsync.3 b/man3/aio_fsync.3
index 27be9cfd7..0f1efb9d2 100644
--- a/man3/aio_fsync.3
+++ b/man3/aio_fsync.3
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
 .TH AIO_FSYNC 3 2021-03-22  "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/aio_read.3 b/man3/aio_read.3
index c1025a0cd..16a309cb3 100644
--- a/man3/aio_read.3
+++ b/man3/aio_read.3
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
 .TH AIO_READ 3 2021-03-22  "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/aio_return.3 b/man3/aio_return.3
index f92a665c5..e79d42f74 100644
--- a/man3/aio_return.3
+++ b/man3/aio_return.3
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
 .TH AIO_RETURN 3 2021-03-22  "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/aio_suspend.3 b/man3/aio_suspend.3
index d82f6bc89..974914d53 100644
--- a/man3/aio_suspend.3
+++ b/man3/aio_suspend.3
@@ -1,26 +1,6 @@
-.\" Copyright (c) 2003 Andries Brouwer (aeb@cwi.nl)
-.\" and Copyright (C) 2010 Michael Kerrisk <mtk.manpages@gmail.com>
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
+.\" SPDX-FileCopyrightText: 2010, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH AIO_SUSPEND 3 2021-03-22  "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/aio_write.3 b/man3/aio_write.3
index c712adc70..6bca7019f 100644
--- a/man3/aio_write.3
+++ b/man3/aio_write.3
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
 .TH AIO_WRITE 3 2021-03-22  "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/btowc.3 b/man3/btowc.3
index 97a6240ab..d7ecc5b84 100644
--- a/man3/btowc.3
+++ b/man3/btowc.3
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
diff --git a/man3/cfree.3 b/man3/cfree.3
index 12301bd3c..56b0eff3b 100644
--- a/man3/cfree.3
+++ b/man3/cfree.3
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
 .TH CFREE 3 2021-03-22  "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/crypt.3 b/man3/crypt.3
index c972e61f0..f125daea1 100644
--- a/man3/crypt.3
+++ b/man3/crypt.3
@@ -1,28 +1,7 @@
-.\" Michael Haardt (michael@cantor.informatik.rwth.aachen.de)
-.\"     Sat Sep  3 22:00:30 MET DST 1994
+.\" SPDX-FileCopyrightText: 1994, Michael Haardt <michael@cantor.informatik.rwth.aachen.de>
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
-.\"
-.\" Sun Feb 19 21:32:25 1995, faith@cs.unc.edu edited details away
+.\" Sun Feb 19 21:32:25 1995, <faith@cs.unc.edu> edited details away
 .\"
 .\" TO DO: This manual page should go more into detail how DES is perturbed,
 .\" which string will be encrypted, and what determines the repetition factor.
diff --git a/man3/dlerror.3 b/man3/dlerror.3
index 8f6736a2c..64f5f90e9 100644
--- a/man3/dlerror.3
+++ b/man3/dlerror.3
@@ -1,26 +1,6 @@
-.\" Copyright 1995 Yggdrasil Computing, Incorporated.
-.\" and Copyright 2015 Michael Kerrisk <mtk.manpages@gmail.com>
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
+.\" SPDX-FileCopyrightText: 1995, Yggdrasil Computing, Incorporated.
+.\" SPDX-FileCopyrightText: 2015, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH DLERROR 3 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/dlopen.3 b/man3/dlopen.3
index a9bfb0d86..6716ea140 100644
--- a/man3/dlopen.3
+++ b/man3/dlopen.3
@@ -1,28 +1,9 @@
-.\" Copyright 1995 Yggdrasil Computing, Incorporated.
-.\" written by Adam J. Richter (adam@yggdrasil.com),
-.\" with typesetting help from Daniel Quinlan (quinlan@yggdrasil.com).
-.\" and Copyright 2003, 2015 Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-FileCopyrightText: 1995, Yggdrasil Computing, Incorporated.
+.\" SPDX-FileCopyrightText: 2003, 2015, Michael Kerrisk <mtk.manpages@gmail.com>
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
+.\" Written by Adam J. Richter <adam@yggdrasil.com>
+.\" with typesetting help from Daniel Quinlan <quinlan@yggdrasil.com>
 .\"
 .\" Modified by David A. Wheeler <dwheeler@dwheeler.com> 2000-11-28.
 .\" Applied patch by Terran Melconian, aeb, 2001-12-14.
diff --git a/man3/dlsym.3 b/man3/dlsym.3
index c6ddec332..ffea91e49 100644
--- a/man3/dlsym.3
+++ b/man3/dlsym.3
@@ -1,26 +1,6 @@
-.\" Copyright 1995 Yggdrasil Computing, Incorporated.
-.\" and Copyright 2003, 2015 Michael Kerrisk <mtk.manpages@gmail.com>
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
+.\" SPDX-FileCopyrightText: 1995, Yggdrasil Computing, Incorporated.
+.\" SPDX-FileCopyrightText: 2003, 2015, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH DLSYM 3 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/encrypt.3 b/man3/encrypt.3
index b4be7f3e0..803c0a55f 100644
--- a/man3/encrypt.3
+++ b/man3/encrypt.3
@@ -1,26 +1,5 @@
-.\" Copyright 2000 Nicolás Lichtmaier <nick@debian.org>
-.\" Created 2000-07-22 00:52-0300
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
+.\" SPDX-FileCopyrightText: 2000, Nicolás Lichtmaier <nick@debian.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Modified 2002-07-23 19:21:35 CEST 2002 Walter Harms
 .\" <walter.harms@informatik.uni-oldenburg.de>
diff --git a/man3/errno.3 b/man3/errno.3
index 020340027..e15ea4182 100644
--- a/man3/errno.3
+++ b/man3/errno.3
@@ -1,25 +1,5 @@
-.\" Copyright (c) 1996 Andries Brouwer (aeb@cwi.nl)
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
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 5 Oct 2002, Modified by Michael Kerrisk <mtk.manpages@gmail.com>
 .\" 	Updated for POSIX.1 2001
diff --git a/man3/iconv.3 b/man3/iconv.3
index c40d674ae..451c4e635 100644
--- a/man3/iconv.3
+++ b/man3/iconv.3
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
diff --git a/man3/wcscpy.3 b/man3/wcscpy.3
index ee850a7de..7a0ada3fa 100644
--- a/man3/wcscpy.3
+++ b/man3/wcscpy.3
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
diff --git a/man4/console_codes.4 b/man4/console_codes.4
index d549b76a9..7de3c6451 100644
--- a/man4/console_codes.4
+++ b/man4/console_codes.4
@@ -1,21 +1,5 @@
-.\" Copyright (c) 1996 Andries Brouwer <aeb@cwi.nl>, Mon Oct 31 22:13:04 1996
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
-.\"
-.\" This is combined from many sources.
-.\" For Linux, the definitive source is of course console.c.
-.\" About vt100-like escape sequences in general there are
-.\" the ISO 6429 and ISO 2022 norms, the descriptions of
-.\" an actual vt100, and the xterm docs (ctlseqs.ms).
-.\" Substantial portions of this text are derived from a write-up
-.\" by Eric S. Raymond <esr@thyrsus.com>.
-.\"
-.\" Tiny correction, aeb, 961107.
+.\" SPDX-FileCopyrightText: 1996, Andries Brouwer <aeb@cwi.nl>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 2006-05-27, Several corrections - Thomas E. Dickey
 .\"
diff --git a/man4/dsp56k.4 b/man4/dsp56k.4
index 65c2b4786..707013052 100644
--- a/man4/dsp56k.4
+++ b/man4/dsp56k.4
@@ -1,27 +1,5 @@
-.\" Copyright (c) 2000 lars brinkhoff <lars@nocrew.org>
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
-.\" Modified, Thu Jan 27 19:16:19 CET 2000, lars@nocrew.org
+.\" SPDX-FileCopyrightText: 2000, lars brinkhoff <lars@nocrew.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH DSP56K 4 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man4/fd.4 b/man4/fd.4
index d9969fce0..2e5998476 100644
--- a/man4/fd.4
+++ b/man4/fd.4
@@ -1,28 +1,8 @@
-.\" Copyright (c) 1993 Michael Haardt (michael@cantor.informatik.rwth-aachen.de)
-.\" and 1994,1995 Alain Knaff (Alain.Knaff@imag.fr)
+.\" SPDX-FileCopyrightText: 1993, Michael Haardt <michael@cantor.informatik.rwth-aachen.de>
+.\" SPDX-FileCopyrightText: 1994, 1995, Alain Knaff <Alain.Knaff@imag.fr>
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
-.\"
-.\" Modified, Sun Feb 26 15:00:02 1995, faith@cs.unc.edu
+.\" Modified, Sun Feb 26 15:00:02 1995, <faith@cs.unc.edu>
 .\"
 .TH FD 4 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man4/hd.4 b/man4/hd.4
index 8f49a4c59..9ae8e52ca 100644
--- a/man4/hd.4
+++ b/man4/hd.4
@@ -1,26 +1,5 @@
-.\" Copyright (c) 1993 Michael Haardt (michael@moria.de),
-.\"     Fri Apr  2 11:32:09 MET DST 1993
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
 .\" Modified Sat Jul 24 16:56:20 1993 by Rik Faith <faith@cs.unc.edu>
 .\" Modified Mon Oct 21 21:38:51 1996 by Eric S. Raymond <esr@thyrsus.com>
diff --git a/man4/intro.4 b/man4/intro.4
index d0ef0c6fd..934bc28a4 100644
--- a/man4/intro.4
+++ b/man4/intro.4
@@ -1,28 +1,8 @@
-.\" Copyright (c) 1993 Michael Haardt (michael@moria.de),
-.\"     Fri Apr  2 11:32:09 MET DST 1993
+.\" SPDX-FileCopyrightText: 1993, Michael Haardt <michael@moria.de>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
+.\" Modified Sat Jul 24 16:57:14 1993 by Rik Faith <faith@cs.unc.edu>
 .\"
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
-.\" Modified Sat Jul 24 16:57:14 1993 by Rik Faith (faith@cs.unc.edu)
 .TH INTRO 4 2017-09-15 "Linux" "Linux Programmer's Manual"
 .SH NAME
 intro \- introduction to special files
diff --git a/man4/lirc.4 b/man4/lirc.4
index 8bc8a95cf..cc8874049 100644
--- a/man4/lirc.4
+++ b/man4/lirc.4
@@ -1,26 +1,7 @@
-.\" Copyright (c) 2015-2016, Alec Leamas
-.\" Copyright (c) 2018, Sean Young <sean@mess.org>
+.\" SPDX-FileCopyrightText: 2015-2016, Alec Leamas
+.\" SPDX-FileCopyrightText: 2018, Sean Young <sean@mess.org>
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
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
-.\" GNU General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
 .TH LIRC 4 2019-03-06 "Linux" "Linux Programmer's Manual"
 .SH NAME
 lirc \- lirc devices
diff --git a/man4/loop.4 b/man4/loop.4
index a9eee63e0..ed579bc05 100644
--- a/man4/loop.4
+++ b/man4/loop.4
@@ -1,27 +1,6 @@
-.\" Copyright 2002 Urs Thuermann (urs@isnogud.escape.de)
-.\" and Copyright 2015 Michael Kerrisk <mtk.manpages@gmail.com>
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
-.\" License along with this manual; if not, write to the Free
-.\" Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111,
-.\" USA.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Urs Thuermann (urs@isnogud.escape.de)
+.\" SPDX-FileCopyrightText: 2015, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH LOOP 4 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man4/lp.4 b/man4/lp.4
index 8e89e5079..4529dcdf9 100644
--- a/man4/lp.4
+++ b/man4/lp.4
@@ -1,28 +1,8 @@
-.\" Copyright (c) Michael Haardt (michael@cantor.informatik.rwth-aachen.de),
-.\"     Sun Jan 15 19:16:33 1995
+.\" SPDX-FileCopyrightText: Michael Haardt <michael@cantor.informatik.rwth-aachen.de>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
+.\" Modified, Sun Feb 26 15:02:58 1995, <faith@cs.unc.edu>
 .\"
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
-.\" Modified, Sun Feb 26 15:02:58 1995, faith@cs.unc.edu
 .TH LP 4 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 lp \- line printer devices
diff --git a/man4/mem.4 b/man4/mem.4
index 6ff0121ae..a511b3ae8 100644
--- a/man4/mem.4
+++ b/man4/mem.4
@@ -1,28 +1,8 @@
-.\" Copyright (c) 1993 Michael Haardt (michael@moria.de),
-.\"     Fri Apr  2 11:32:09 MET DST 1993
+.\" SPDX-FileCopyrightText: 1993, Michael Haardt <michael@moria.de>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
+.\" Modified Sat Jul 24 16:59:10 1993 by Rik Faith <faith@cs.unc.edu>
 .\"
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
-.\" Modified Sat Jul 24 16:59:10 1993 by Rik Faith (faith@cs.unc.edu)
 .TH MEM 4 2015-01-02 "Linux" "Linux Programmer's Manual"
 .SH NAME
 mem, kmem, port \- system memory, kernel memory and system ports
diff --git a/man4/null.4 b/man4/null.4
index 871d7ea4e..a040a597b 100644
--- a/man4/null.4
+++ b/man4/null.4
@@ -1,28 +1,8 @@
-.\" Copyright (c) 1993 Michael Haardt (michael@moria.de),
-.\"     Fri Apr  2 11:32:09 MET DST 1993
+.\" SPDX-FileCopyrightText: 1993, Michael Haardt <michael@moria.de>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
+.\" Modified Sat Jul 24 17:00:12 1993 by Rik Faith <faith@cs.unc.edu>
 .\"
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
-.\" Modified Sat Jul 24 17:00:12 1993 by Rik Faith (faith@cs.unc.edu)
 .TH NULL 4 2015-07-23 "Linux" "Linux Programmer's Manual"
 .SH NAME
 null, zero \- data sink
diff --git a/man4/ram.4 b/man4/ram.4
index adb393d29..736dfc5e9 100644
--- a/man4/ram.4
+++ b/man4/ram.4
@@ -1,28 +1,8 @@
-.\" Copyright (c) 1993 Michael Haardt (michael@moria.de),
-.\"     Fri Apr  2 11:32:09 MET DST 1993
+.\" SPDX-FileCopyrightText: 1993, Michael Haardt <michael@moria.de>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
+.\" Modified Sat Jul 24 17:01:11 1993 by Rik Faith <faith@cs.unc.edu>
 .\"
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
-.\" Modified Sat Jul 24 17:01:11 1993 by Rik Faith (faith@cs.unc.edu)
 .TH RAM 4 1992-11-21 "Linux" "Linux Programmer's Manual"
 .SH NAME
 ram \- ram disk device
diff --git a/man4/random.4 b/man4/random.4
index 5d23ec8ea..b89c8fbc3 100644
--- a/man4/random.4
+++ b/man4/random.4
@@ -1,11 +1,5 @@
-.\" Copyright (c) 1997 John S. Kallal (kallal@voicenet.com)
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1997, John S. Kallal <kallal@voicenet.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Some changes by tytso and aeb.
 .\"
diff --git a/man4/rtc.4 b/man4/rtc.4
index 12c5e0cfe..bc6e1d929 100644
--- a/man4/rtc.4
+++ b/man4/rtc.4
@@ -1,26 +1,5 @@
-.\" rtc.4
-.\" Copyright 2002 Urs Thuermann (urs@isnogud.escape.de)
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
+.\" SPDX-FileCopyrightText: 2002, Urs Thuermann <urs@isnogud.escape.de>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" $Id: rtc.4,v 1.4 2005/12/05 17:19:49 urs Exp $
 .\"
diff --git a/man4/sk98lin.4 b/man4/sk98lin.4
index 7fb91a5b4..5582d3491 100644
--- a/man4/sk98lin.4
+++ b/man4/sk98lin.4
@@ -1,28 +1,5 @@
-.\" (C)Copyright 1999-2003 Marvell(R) -- linux@syskonnect.de
-.\" sk98lin.4 1.1 2003/12/17 10:03:18
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
-.\" License along with this manual;if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
-.\"
-.\" This manpage can be viewed using `groff -Tascii -man sk98lin.4 | less`
+.\" SPDX-FileCopyrightText: 1999-2003, Marvell(R) -- linux@syskonnect.de
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH SK98LIN 4 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man4/tty.4 b/man4/tty.4
index d4edbdbb0..8e1daad4b 100644
--- a/man4/tty.4
+++ b/man4/tty.4
@@ -1,28 +1,7 @@
-.\" Copyright (c) 1993 Michael Haardt (michael@moria.de),
-.\"     Fri Apr  2 11:32:09 MET DST 1993
+.\" SPDX-FileCopyrightText: 1993, Michael Haardt <michael@moria.de>
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
-.\"
-.\" Modified 1993-07-24 by Rik Faith (faith@cs.unc.edu)
+.\" Modified 1993-07-24 by Rik Faith <faith@cs.unc.edu>
 .\" Modified 2003-04-07 by Michael Kerrisk
 .\"
 .TH TTY 4 2019-03-06 "Linux" "Linux Programmer's Manual"
diff --git a/man4/ttyS.4 b/man4/ttyS.4
index 9043f2564..174b070ad 100644
--- a/man4/ttyS.4
+++ b/man4/ttyS.4
@@ -1,28 +1,8 @@
-.\" Copyright (c) 1993 Michael Haardt (michael@moria.de),
-.\"     Fri Apr  2 11:32:09 MET DST 1993
+.\" SPDX-FileCopyrightText: 1993, Michael Haardt <michael@moria.de>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
+.\" Modified Sat Jul 24 17:03:24 1993 by Rik Faith <faith@cs.unc.edu>
 .\"
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
-.\" Modified Sat Jul 24 17:03:24 1993 by Rik Faith (faith@cs.unc.edu)
 .TH TTYS 4 1992-12-19 "Linux" "Linux Programmer's Manual"
 .SH NAME
 ttyS \- serial terminal lines
diff --git a/man4/vcs.4 b/man4/vcs.4
index 827798130..12bf6e737 100644
--- a/man4/vcs.4
+++ b/man4/vcs.4
@@ -1,31 +1,10 @@
-.\" Copyright (c) 1995 James R. Van Zandt <jrv@vanzandt.mv.com>
-.\" Sat Feb 18 09:11:07 EST 1995
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
+.\" SPDX-FileCopyrightText: 1995, James R. Van Zandt <jrv@vanzandt.mv.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Modified, Sun Feb 26 15:08:05 1995, faith@cs.unc.edu
 .\" 2007-12-17, Samuel Thibault <samuel.thibault@ens-lyon.org>:
 .\"     document the VT_GETHIFONTMASK ioctl
-.\" "
+.\"
 .TH VCS 4 2020-11-01 "Linux" "Linux Programmer's Manual"
 .SH NAME
 vcs, vcsa \- virtual console memory
diff --git a/man4/veth.4 b/man4/veth.4
index b2d5a2fc7..d8ee92ca3 100644
--- a/man4/veth.4
+++ b/man4/veth.4
@@ -1,29 +1,6 @@
-.\" Copyright (c) 2012 Tomáš Pospíšek (tpo_deb@sourcepole.ch),
-.\"     Fri, 03 Nov 2012 22:35:33 +0100
-.\" and Copyright (c) 2012 Eric W. Biederman <ebiederm@xmission.com>
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
-.\" License along with this manual; if not, write to the Free
-.\" Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111,
-.\" USA.
-.\" %%%LICENSE_END
-.\"
+.\" SPDX-FileCopyrightText: 2012, Tomáš Pospíšek <tpo_deb@sourcepole.ch>
+.\" SPDX-FileCopyrightText: 2012, Eric W. Biederman <ebiederm@xmission.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH VETH 4 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
-- 
2.33.0

