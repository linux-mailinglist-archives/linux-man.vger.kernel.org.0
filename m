Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DAA58400FF9
	for <lists+linux-man@lfdr.de>; Sun,  5 Sep 2021 15:26:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232037AbhIEN07 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Sep 2021 09:26:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229566AbhIEN06 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Sep 2021 09:26:58 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37032C061575
        for <linux-man@vger.kernel.org>; Sun,  5 Sep 2021 06:25:55 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id n5so5624185wro.12
        for <linux-man@vger.kernel.org>; Sun, 05 Sep 2021 06:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MJQsvfNtQD0zgwdKEvV7kQ1GOrVH5Y+TSuhpfiTibR0=;
        b=aVYyiqIUp/8sN2V0lqT3TRoHRP1KIsWmGKER8cWwJq2czgiUe5CQVlgwAKlL20nyi5
         UAkFiitLsTYdHhsgqK1jaom57VYHE3WnTWhf8eCCHyTldSVd3sbEOmLI4F2Rlx5EQPyS
         kd64yQCXzRnQ2v8ZmQV5VUDP1ApoV7X0eVN8Q5FsnOFvchYDqBelWdVG+5uDUCZySbZ4
         76vdDpK39J7Gm+qFgXqT1IsOe5wDTDo2Zen9dnQnQyrEK9BcZi1e9Y6P6OORMYXEk/OC
         AcPHRa7+TwZxXcQ/sNZ6UocY1Zglo54dQZM0DLEICYKXhhaDKOLI96xtCC38Su+1lPuQ
         9zEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MJQsvfNtQD0zgwdKEvV7kQ1GOrVH5Y+TSuhpfiTibR0=;
        b=V8C75jX3PyIA/5nDeO3ndice1jMKXLcPJb2KLG8se1un7H8AuEzlTtcvPLFxQY0gqF
         /naH//RqAY/LN+46EwVOpbatzSYRTkj7yq1bfqNhLks9FEiA5DctmOfsCBAErvfbZezl
         vRcbHV7J/llXpD81AJYi3vGJnl2eGXpQHJBfdUC70204Mh43IYssNUrMRiurbPQToHsN
         xXliiC/NhdWEbhuDCfGg0dekJ+3ZRZ/oESqzwyepv+XPJ2lIWxXPIS3UCzeo3l66viFV
         KwBT8awBC6S87rV84C9ecBK8gdIl9v116UmGqT4qqOzvw04RjcoKU4CHK4KByPQFvBDx
         ds2Q==
X-Gm-Message-State: AOAM530+i8fdEZ368zT6v8YMOMAvohRvh28rVBt4+OFm4AzguDvXg1Ko
        GYMILKw/TE6ZIWtPPTRk2pk=
X-Google-Smtp-Source: ABdhPJziIVPeopRL0QmEZrs3xZINfbhUNcLnVv7f5Dt9kwecMMIeWtW7X8aUWlfMyOtHUHDeYLA47A==
X-Received: by 2002:a5d:4b86:: with SMTP id b6mr2305832wrt.404.1630848353415;
        Sun, 05 Sep 2021 06:25:53 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id l124sm4608586wml.8.2021.09.05.06.25.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 06:25:52 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jilayne Lovejoy <opensource@jilayne.com>,
        Alexios Zavras <alexios.zavras@intel.com>,
        Richard Fontana <rfontana@redhat.com>
Subject: [RFC v3 4/9] Many pages: [GPL-2.0-or-later] Use SPDX markings
Date:   Sun,  5 Sep 2021 15:25:37 +0200
Message-Id: <20210905132542.245236-5-alx.manpages@gmail.com>
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
 man5/charmap.5       | 19 ++-----------------
 man5/filesystems.5   | 24 ++----------------------
 man5/ftpusers.5      | 19 ++-----------------
 man5/group.5         | 26 +++-----------------------
 man5/host.conf.5     | 26 ++++----------------------
 man5/hosts.5         | 24 ++----------------------
 man5/intro.5         | 28 ++++------------------------
 man5/issue.5         | 26 +++-----------------------
 man5/locale.5        | 23 ++++-------------------
 man5/motd.5          | 26 +++-----------------------
 man5/networks.5      | 24 ++----------------------
 man5/nologin.5       | 28 ++++------------------------
 man5/nscd.conf.5     | 20 +++-----------------
 man5/nsswitch.conf.5 | 26 +++-----------------------
 man5/passwd.5        | 34 +++++++---------------------------
 man5/proc.5          | 36 +++++++-----------------------------
 man5/protocols.5     | 24 ++----------------------
 man5/repertoiremap.5 | 22 ++--------------------
 man5/securetty.5     | 26 +++-----------------------
 man5/shells.5        | 26 +++-----------------------
 man5/termcap.5       | 26 +++-----------------------
 man5/ttytype.5       | 29 ++++-------------------------
 man5/utmp.5          | 28 ++++------------------------
 man6/intro.6         | 26 +++-----------------------
 24 files changed, 79 insertions(+), 537 deletions(-)

diff --git a/man5/charmap.5 b/man5/charmap.5
index 04aeaa538..54cf1350a 100644
--- a/man5/charmap.5
+++ b/man5/charmap.5
@@ -1,20 +1,5 @@
-.\" Copyright (C) 1994  Jochen Hein (Hein@Student.TU-Clausthal.de)
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
+.\" SPDX-FileCopyrightText: 1994, Jochen Hein <Hein@Student.TU-Clausthal.de>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH CHARMAP 5 2020-06-09 "GNU" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man5/filesystems.5 b/man5/filesystems.5
index aa7d74740..3c014a92b 100644
--- a/man5/filesystems.5
+++ b/man5/filesystems.5
@@ -1,25 +1,5 @@
-.\" Copyright 1996 Daniel Quinlan (Daniel.Quinlan@linux.org)
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
+.\" SPDX-FileCopyrightText: 1996, Daniel Quinlan <Daniel.Quinlan@linux.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 2007-12-14 mtk Added Reiserfs, XFS, JFS.
 .\"
diff --git a/man5/ftpusers.5 b/man5/ftpusers.5
index 4f81ef727..1f37570d1 100644
--- a/man5/ftpusers.5
+++ b/man5/ftpusers.5
@@ -1,20 +1,5 @@
-.\" Copyright (c) 2000 Christoph J. Thompson <obituary@linuxbe.org>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_MISC)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
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
+.\" SPDX-FileCopyrightText: 2000, Christoph J. Thompson <obituary@linuxbe.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH FTPUSERS 5 2000-08-27 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man5/group.5 b/man5/group.5
index 5cb3a9132..bd625ca87 100644
--- a/man5/group.5
+++ b/man5/group.5
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
+.\" Modified Sat Jul 24 17:06:03 1993 by Rik Faith <faith@cs.unc.edu>
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
-.\" Modified Sat Jul 24 17:06:03 1993 by Rik Faith (faith@cs.unc.edu)
 .TH GROUP 5 2020-04-11 "Linux" "Linux Programmer's Manual"
 .SH NAME
 group \- user group file
diff --git a/man5/host.conf.5 b/man5/host.conf.5
index fb9398e77..65aae0ec0 100644
--- a/man5/host.conf.5
+++ b/man5/host.conf.5
@@ -1,28 +1,10 @@
-.\" Copyright (c) 1997 Martin Schulze (joey@infodrom.north.de)
-.\" Much of the text is copied from the manpage of resolv+(8).
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
+.\" SPDX-FileCopyrightText: 1997, Martin Schulze <joey@infodrom.north.de>
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
+.\" Much of the text is copied from the manpage of resolv+(8).
 .\"
 .\" 2003-08-23 Martin Schulze <joey@infodrom.org> Updated according to glibc 2.3.2
+.\"
 .TH HOST.CONF 5 2019-03-06 "Linux" "Linux System Administration"
 .SH NAME
 host.conf \- resolver configuration file
diff --git a/man5/hosts.5 b/man5/hosts.5
index eaa34ef87..4dc73d060 100644
--- a/man5/hosts.5
+++ b/man5/hosts.5
@@ -1,25 +1,5 @@
-.\" Copyright (c) 2000 Manoj Srivastava <srivasta@debian.org>
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
+.\" SPDX-FileCopyrightText: 2000, Manoj Srivastava <srivasta@debian.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Minor polishing, aeb
 .\" Modified, 2002-06-16, Mike Coleman
diff --git a/man5/intro.5 b/man5/intro.5
index 702efa520..6cbb7f646 100644
--- a/man5/intro.5
+++ b/man5/intro.5
@@ -1,29 +1,9 @@
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
+.\" Modified Sat Jul 24 17:06:52 1993 by Rik Faith <faith@cs.unc.edu>
+.\" Modified Sun Jan 14 00:34:09 1996 by Andries Brouwer <aeb@cwi.nl>
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
-.\" Modified Sat Jul 24 17:06:52 1993 by Rik Faith (faith@cs.unc.edu)
-.\" Modified Sun Jan 14 00:34:09 1996 by Andries Brouwer (aeb@cwi.nl)
 .TH INTRO 5 2017-03-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
 intro \- introduction to file formats and filesystems
diff --git a/man5/issue.5 b/man5/issue.5
index 897eba137..6ae404c22 100644
--- a/man5/issue.5
+++ b/man5/issue.5
@@ -1,29 +1,9 @@
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
 .\" Modified Sun Jul 25 11:06:22 1993 by Rik Faith <faith@cs.unc.edu>
 .\" Modified Mon Oct 21 17:47:19 EDT 1996 by Eric S. Raymond <esr@thyrsus.com>
+.\"
 .TH ISSUE 5 1993-07-24 "Linux" "Linux Programmer's Manual"
 .SH NAME
 issue \- prelogin message and identification file
diff --git a/man5/locale.5 b/man5/locale.5
index 26ffef99a..f4b2c3006 100644
--- a/man5/locale.5
+++ b/man5/locale.5
@@ -1,22 +1,7 @@
-.\" Copyright (C) 1994  Jochen Hein (Hein@Student.TU-Clausthal.de)
-.\" Copyright (C) 2008  Petr Baudis (pasky@suse.cz)
-.\" Copyright (C) 2014 Michael Kerrisk <mtk@manpages@gmail.com>
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
+.\" SPDX-FileCopyrightText: 1994, Jochen Hein <Hein@Student.TU-Clausthal.de>
+.\" SPDX-FileCopyrightText: 2008, Petr Baudis <pasky@suse.cz>
+.\" SPDX-FileCopyrightText: 2014, Michael Kerrisk <mtk@manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 2008-06-17 Petr Baudis <pasky@suse.cz>
 .\"     LC_TIME: Describe first_weekday and first_workday
diff --git a/man5/motd.5 b/man5/motd.5
index 839c1c346..81187c5a2 100644
--- a/man5/motd.5
+++ b/man5/motd.5
@@ -1,29 +1,9 @@
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
 .\" Modified Sat Jul 24 17:08:16 1993 by Rik Faith <faith@cs.unc.edu>
 .\" Modified Mon Oct 21 17:47:19 EDT 1996 by Eric S. Raymond <esr@thyrsus.com>
+.\"
 .TH MOTD 5 1992-12-29 "Linux" "Linux Programmer's Manual"
 .SH NAME
 motd \- message of the day
diff --git a/man5/networks.5 b/man5/networks.5
index d7f7a4ffc..0f2702da9 100644
--- a/man5/networks.5
+++ b/man5/networks.5
@@ -1,25 +1,5 @@
-.\" Copyright (c) 2001 Martin Schulze <joey@infodrom.org>
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
+.\" SPDX-FileCopyrightText: 2001, Martin Schulze <joey@infodrom.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 2008-09-04, mtk, taken from Debian downstream, with a few light edits
 .\"
diff --git a/man5/nologin.5 b/man5/nologin.5
index 58fe77bee..c84b47038 100644
--- a/man5/nologin.5
+++ b/man5/nologin.5
@@ -1,29 +1,9 @@
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
+.\" Modified Sun Jul 25 11:06:34 1993 by Rik Faith <faith@cs.unc.edu>
+.\" Corrected Mon Oct 21 17:47:19 EDT 1996 by Eric S. Raymond <esr@thyrsus.com>
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
-.\" Modified Sun Jul 25 11:06:34 1993 by Rik Faith (faith@cs.unc.edu)
-.\" Corrected Mon Oct 21 17:47:19 EDT 1996 by Eric S. Raymond (esr@thyrsus.com)
 .TH NOLOGIN 5 2017-09-15 "Linux" "Linux Programmer's Manual"
 .SH NAME
 nologin \- prevent unprivileged users from logging into the system
diff --git a/man5/nscd.conf.5 b/man5/nscd.conf.5
index 7356bf7c2..431f2c272 100644
--- a/man5/nscd.conf.5
+++ b/man5/nscd.conf.5
@@ -1,21 +1,7 @@
-.\" Copyright (c) 1999, 2000 SuSE GmbH Nuernberg, Germany
-.\" Author: Thorsten Kukuk <kukuk@suse.de>
-.\"
-.\" %%%LICENSE_START(GPLv2+_SW_3_PARA)
-.\" This program is free software; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of the
-.\" License, or (at your option) any later version.
+.\" SPDX-FileCopyrightText: 1999, 2000, SuSE GmbH Nuernberg, Germany
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" This program is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-.\" General Public License for more details.
-.\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" Author: Thorsten Kukuk <kukuk@suse.de>
 .\"
 .TH NSCD.CONF 5 2020-12-21 "GNU" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man5/nsswitch.conf.5 b/man5/nsswitch.conf.5
index f9e253fe5..f241bdfdf 100644
--- a/man5/nsswitch.conf.5
+++ b/man5/nsswitch.conf.5
@@ -1,26 +1,6 @@
-.\" Copyright (c) 1998, 1999 Thorsten Kukuk (kukuk@vt.uni-paderborn.de)
-.\" Copyright (c) 2011, Mark R. Bannister <cambridge@users.sourceforge.net>
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
+.\" SPDX-FileCopyrightText: 1998, 1999, Thorsten Kukuk <kukuk@vt.uni-paderborn.de>
+.\" SPDX-FileCopyrightText: 2011, Mark R. Bannister <cambridge@users.sourceforge.net>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH NSSWITCH.CONF 5 2017-05-03 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man5/passwd.5 b/man5/passwd.5
index 469d29260..f5f443a80 100644
--- a/man5/passwd.5
+++ b/man5/passwd.5
@@ -1,32 +1,12 @@
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
-.\" Modified Sun Jul 25 10:46:28 1993 by Rik Faith (faith@cs.unc.edu)
-.\" Modified Sun Aug 21 18:12:27 1994 by Rik Faith (faith@cs.unc.edu)
-.\" Modified Sun Jun 18 01:53:57 1995 by Andries Brouwer (aeb@cwi.nl)
+.\" Modified Sun Jul 25 10:46:28 1993 by Rik Faith <faith@cs.unc.edu>
+.\" Modified Sun Aug 21 18:12:27 1994 by Rik Faith <faith@cs.unc.edu>
+.\" Modified Sun Jun 18 01:53:57 1995 by Andries Brouwer <aeb@cwi.nl>
 .\" Modified Mon Jan  5 20:24:40 MET 1998 by Michael Haardt
-.\"  (michael@cantor.informatik.rwth-aachen.de)
+.\"  <michael@cantor.informatik.rwth-aachen.de>
+.\"
 .TH PASSWD 5 2018-04-30 "Linux" "Linux Programmer's Manual"
 .SH NAME
 passwd \- password file
diff --git a/man5/proc.5 b/man5/proc.5
index c6684620e..f290121e8 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -1,34 +1,12 @@
-.\" Copyright (C) 1994, 1995 by Daniel Quinlan (quinlan@yggdrasil.com)
-.\" and Copyright (C) 2002-2008,2017 Michael Kerrisk <mtk.manpages@gmail.com>
-.\" with networking additions from Alan Cox (A.Cox@swansea.ac.uk)
-.\" and scsi additions from Michael Neuffer (neuffer@mail.uni-mainz.de)
-.\" and sysctl additions from Andries Brouwer (aeb@cwi.nl)
-.\" and System V IPC (as well as various other) additions from
-.\" Michael Kerrisk <mtk.manpages@gmail.com>
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
+.\" SPDX-FileCopyrightText: 1994, 1995, Daniel Quinlan <quinlan@yggdrasil.com>
+.\" SPDX-FileCopyrightText: 2002-2008, 2017, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-FileCopyrightText: Alan Cox <A.Cox@swansea.ac.uk> (networking)
+.\" SPDX-FileCopyrightText: Michael Neuffer <neuffer@mail.uni-mainz.de> (scsi)
+.\" SPDX-FileCopyrightText: Andries Brouwer <aeb@cwi.nl> (sysctl)
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Modified 1995-05-17 by faith@cs.unc.edu
-.\" Minor changes by aeb and Marty Leisner (leisner@sdsp.mc.xerox.com).
+.\" Minor changes by aeb and Marty Leisner <leisner@sdsp.mc.xerox.com>.
 .\" Modified 1996-04-13, 1996-07-22 by aeb@cwi.nl
 .\" Modified 2001-12-16 by rwhron@earthlink.net
 .\" Modified 2002-07-13 by jbelton@shaw.ca
diff --git a/man5/protocols.5 b/man5/protocols.5
index 24110c55e..6fdf33776 100644
--- a/man5/protocols.5
+++ b/man5/protocols.5
@@ -1,25 +1,5 @@
-.\" Copyright (c) 1995 Martin Schulze <joey@infodrom.north.de>
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
+.\" SPDX-FileCopyrightText: 1995, Martin Schulze <joey@infodrom.north.de>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 1995-10-18  Martin Schulze  <joey@infodrom.north.de>
 .\"	* first released
diff --git a/man5/repertoiremap.5 b/man5/repertoiremap.5
index 06d4814d5..70af9d22c 100644
--- a/man5/repertoiremap.5
+++ b/man5/repertoiremap.5
@@ -1,23 +1,5 @@
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
+.\" SPDX-FileCopyrightText: Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH REPERTOIREMAP 5 2020-06-09 "GNU" "Linux User Manual"
 .SH NAME
diff --git a/man5/securetty.5 b/man5/securetty.5
index e64090fe8..9cdc4b9c7 100644
--- a/man5/securetty.5
+++ b/man5/securetty.5
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
+.\" Modified Sun Jul 25 11:06:27 1993 by Rik Faith <faith@cs.unc.edu>
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
-.\" Modified Sun Jul 25 11:06:27 1993 by Rik Faith (faith@cs.unc.edu)
 .TH SECURETTY 5 2020-06-09 "Linux" "Linux Programmer's Manual"
 .SH NAME
 securetty \- list of terminals on which root is allowed to login
diff --git a/man5/shells.5 b/man5/shells.5
index bcb80615d..29610a682 100644
--- a/man5/shells.5
+++ b/man5/shells.5
@@ -1,30 +1,10 @@
-.\" Copyright (c) 1993 Michael Haardt (michael@moria.de),
-.\"     Thu May 20 20:45:48 MET DST 1993
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
 .\" Modified Sat Jul 24 17:11:07 1993 by Rik Faith (faith@cs.unc.edu)
 .\" Modified Sun Nov 21 10:49:38 1993 by Michael Haardt
 .\" Modified Sun Feb 26 15:09:15 1995 by Rik Faith (faith@cs.unc.edu)
+.\"
 .TH SHELLS 5 2020-06-09 "" "Linux Programmer's Manual"
 .SH NAME
 shells \- pathnames of valid login shells
diff --git a/man5/termcap.5 b/man5/termcap.5
index c6f35d3b4..fff78da50 100644
--- a/man5/termcap.5
+++ b/man5/termcap.5
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
 .\" Modified formatting Sat Jul 24 17:13:38 1993, Rik Faith (faith@cs.unc.edu)
 .\" Modified (extensions and corrections)
@@ -28,6 +7,7 @@
 .\"   If mistakes in the capabilities are found, please send a bug report to:
 .\"   michael@moria.de
 .\" Modified Mon Oct 21 17:47:19 EDT 1996 by Eric S. Raymond (esr@thyrsus.com)
+.\"
 .TH TERMCAP 5 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
 termcap \- terminal capability database
diff --git a/man5/ttytype.5 b/man5/ttytype.5
index 88a19443c..f8a3da3be 100644
--- a/man5/ttytype.5
+++ b/man5/ttytype.5
@@ -1,31 +1,10 @@
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
 .\" Modified Sat Jul 24 17:17:50 1993 by Rik Faith <faith@cs.unc.edu>
 .\" Modified Thu Oct 19 21:25:21 MET 1995 by Martin Schulze <joey@infodrom.north.de>
-.\" Modified Mon Oct 21 17:47:19 EDT 1996 by Eric S. Raymond
-.\" <esr@thyrsus.com>xk
+.\" Modified Mon Oct 21 17:47:19 EDT 1996 by Eric S. Raymond <esr@thyrsus.com>
+.\"
 .TH TTYTYPE 5 2020-06-09 "Linux" "Linux Programmer's Manual"
 .SH NAME
 ttytype \- terminal device to default terminal type mapping
diff --git a/man5/utmp.5 b/man5/utmp.5
index 3f608c98c..7e9f00ab8 100644
--- a/man5/utmp.5
+++ b/man5/utmp.5
@@ -1,32 +1,12 @@
-.\" Copyright (c) 1993 Michael Haardt (michael@cantor.informatik.rwth-aachen.de),
-.\" Fri Apr  2 11:32:09 MET DST 1993
+.\" SPDX-FileCopyrightText: 1993, Michael Haardt <michael@cantor.informatik.rwth-aachen.de>
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
-.\" Modified 1993-07-25 by Rik Faith (faith@cs.unc.edu)
+.\" Modified 1993-07-25 by Rik Faith <faith@cs.unc.edu>
 .\" Modified 1995-02-26 by Michael Haardt
 .\" Modified 1996-07-20 by Michael Haardt
 .\" Modified 1997-07-02 by Nicolás Lichtmaier <nick@debian.org>
 .\" Modified 2004-10-31 by aeb, following Gwenole Beauchesne
+.\"
 .TH UTMP 5 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 utmp, wtmp \- login records
diff --git a/man6/intro.6 b/man6/intro.6
index 1f3dc5c26..cb7124f8a 100644
--- a/man6/intro.6
+++ b/man6/intro.6
@@ -1,28 +1,8 @@
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
 .\" Modified Sat Jul 24 17:19:57 1993 by Rik Faith (faith@cs.unc.edu)
+.\"
 .TH INTRO 6 2007-10-23 "Linux" "Linux Programmer's Manual"
 .SH NAME
 intro \- introduction to games
-- 
2.33.0

