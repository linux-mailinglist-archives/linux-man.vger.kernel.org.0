Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9212C400FF8
	for <lists+linux-man@lfdr.de>; Sun,  5 Sep 2021 15:26:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229759AbhIEN05 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Sep 2021 09:26:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229566AbhIEN05 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Sep 2021 09:26:57 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA918C061575
        for <linux-man@vger.kernel.org>; Sun,  5 Sep 2021 06:25:53 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id u16so5649166wrn.5
        for <linux-man@vger.kernel.org>; Sun, 05 Sep 2021 06:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KnOQik7cX0RKAg8aLnh6b2D++QAvbfBqCYJoqiGX6jQ=;
        b=fouZgBwQSReNRfe2YUIlH0gkJcjUkMZAVAWvdmpTBnZSjS3sk5raReokZtH/qvF7vn
         2xKXEnycpFi7K4dg41662Ewr9+8zN7asDIiuGN7EZ6ifB48mIhsMePIiHdX6wMU/FxFk
         GAAKlxF3KPi3TX4cTedi4KIR2FdOfmc2eDzbLP3bsOX1fZDlRdJZKEYd9ttwAUVQ9No4
         zkm/i3HiJuLeEhIfh7WvnAf5GrxLEnmoLPnutcsj6+hyR3eq7FHxBgRl4U22hzGQ/IHf
         wsh/PQ+8aD4ag4sPwbIWp6F+41TmncDakh6pRylVw2Chm+UEHMcXAoGUv/KLxeIsqcZ0
         Jk2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KnOQik7cX0RKAg8aLnh6b2D++QAvbfBqCYJoqiGX6jQ=;
        b=NFp5nJloCmsxaH4G7LLcjOr6H2V7J6hFPt3BECyYTvR32xvH/+RW7vHeN2UtHiTlNF
         tdkLimaqRYcAfgzXwB31BHnD7gafvjqzWxPtTWh57Za2hojZDt5bCF9QopBb6PAD37xl
         FOGXbbphDmy2+Z3tqSnyi4n5eUcSJixd0KiuZCUHr7yMuop6+grQ4wwyh0OV8rwQTckv
         RHePO77BeJ/Bc2tznd2ymsrfUpR4UJywhbpg3UeEcELWPaLcsGUNnaMRB3SxjMamwUb2
         L9EU3hdlzP+5RgwocC6xmiX1XevdI6I5mRBgi9/n9AiXWrCG/Y3IuCEoMX1zqjTqO7WY
         JWVA==
X-Gm-Message-State: AOAM531ARwp63ofBTSGp731pYpEq/dlmX8c7v57KS92pn1F0GA8aEMBd
        NPo+wDUORGePoUD1bEtKGEE=
X-Google-Smtp-Source: ABdhPJyHYMhA1Z316Dm59xZvmJ2wHrKlgz80ekZllVvnYsOuv49H7PjAQ1WnYiFOw9URqdnsiJPNjA==
X-Received: by 2002:adf:ec81:: with SMTP id z1mr8284483wrn.181.1630848352087;
        Sun, 05 Sep 2021 06:25:52 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id l124sm4608586wml.8.2021.09.05.06.25.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 06:25:51 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jilayne Lovejoy <opensource@jilayne.com>,
        Alexios Zavras <alexios.zavras@intel.com>,
        Richard Fontana <rfontana@redhat.com>
Subject: [RFC v3 3/9] Many pages: [GPL-2.0-or-later] Use SPDX markings
Date:   Sun,  5 Sep 2021 15:25:36 +0200
Message-Id: <20210905132542.245236-4-alx.manpages@gmail.com>
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
 man7/armscii-8.7            | 24 ++---------------------
 man7/ascii.7                | 24 ++---------------------
 man7/attributes.7           | 24 +++--------------------
 man7/bootparam.7            | 24 ++---------------------
 man7/charsets.7             | 12 +++---------
 man7/cp1251.7               | 24 ++---------------------
 man7/cp1252.7               | 24 ++---------------------
 man7/environ.7              | 39 +++++++++----------------------------
 man7/epoll.7                | 21 ++------------------
 man7/glob.7                 | 24 ++---------------------
 man7/intro.7                | 27 +++----------------------
 man7/iso_8859-1.7           | 25 +++---------------------
 man7/iso_8859-10.7          | 24 ++---------------------
 man7/iso_8859-11.7          | 26 +++----------------------
 man7/iso_8859-13.7          | 24 ++---------------------
 man7/iso_8859-14.7          | 24 ++---------------------
 man7/iso_8859-15.7          | 26 +++----------------------
 man7/iso_8859-16.7          | 24 ++---------------------
 man7/iso_8859-2.7           | 27 ++++---------------------
 man7/iso_8859-3.7           | 24 ++---------------------
 man7/iso_8859-4.7           | 24 ++---------------------
 man7/iso_8859-5.7           | 24 ++---------------------
 man7/iso_8859-6.7           | 24 ++---------------------
 man7/iso_8859-7.7           | 24 ++---------------------
 man7/iso_8859-8.7           | 24 ++---------------------
 man7/iso_8859-9.7           | 24 ++---------------------
 man7/kernel_lockdown.7      | 12 +++---------
 man7/keyrings.7             | 13 ++++---------
 man7/koi8-r.7               | 24 ++---------------------
 man7/koi8-u.7               | 24 ++---------------------
 man7/persistent-keyring.7   | 11 +++--------
 man7/posixoptions.7         | 24 ++---------------------
 man7/process-keyring.7      | 11 +++--------
 man7/sched.7                | 35 +++++++--------------------------
 man7/session-keyring.7      | 11 +++--------
 man7/sock_diag.7            | 25 +++---------------------
 man7/spufs.7                | 19 ++----------------
 man7/standards.7            | 24 ++---------------------
 man7/thread-keyring.7       | 11 +++--------
 man7/unicode.7              | 24 ++---------------------
 man7/user-keyring.7         | 11 +++--------
 man7/user-session-keyring.7 | 11 +++--------
 man7/utf-8.7                | 24 ++---------------------
 man7/xattr.7                | 29 +++------------------------
 man8/iconvconfig.8          | 24 ++---------------------
 man8/intro.8                | 27 +++----------------------
 man8/ldconfig.8             | 21 ++++----------------
 man8/nscd.8                 | 20 +++----------------
 48 files changed, 131 insertions(+), 939 deletions(-)

diff --git a/man7/armscii-8.7 b/man7/armscii-8.7
index 2dcf074f1..f60b7e3c4 100644
--- a/man7/armscii-8.7
+++ b/man7/armscii-8.7
@@ -1,25 +1,5 @@
-.\" Copyright 2009  Lefteris Dimitroulakis <edimitro at tee.gr>
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
+.\" SPDX-FileCopyrightText: 2009, Lefteris Dimitroulakis <edimitro at tee.gr>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH ARMSCII-8 7 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/ascii.7 b/man7/ascii.7
index 053b13809..db772c229 100644
--- a/man7/ascii.7
+++ b/man7/ascii.7
@@ -1,25 +1,5 @@
-.\" Copyright (c) 1993 Michael Haardt (michael@moria.de)
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
 .\" Created  1993-04-02 by Michael Haardt (michael@moria.de)
 .\" Modified 1993-07-24 by Rik Faith (faith@cs.unc.edu)
diff --git a/man7/attributes.7 b/man7/attributes.7
index 580ebfe86..d60926e41 100644
--- a/man7/attributes.7
+++ b/man7/attributes.7
@@ -1,26 +1,8 @@
-.\" Copyright (c) 2014, Red Hat, Inc
+.\" SPDX-FileCopyrightText: 2014, Red Hat, Inc
+.\" SPDX-License-Identifier: GPL-2.0-or-later
+.\"
 .\"     Written by Alexandre Oliva <aoliva@redhat.com>
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
 .TH ATTRIBUTES 7 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 attributes \- POSIX safety concepts
diff --git a/man7/bootparam.7 b/man7/bootparam.7
index d3cb9357e..d21bc6810 100644
--- a/man7/bootparam.7
+++ b/man7/bootparam.7
@@ -1,25 +1,5 @@
-.\" Copyright (c) 1995,1997 Paul Gortmaker and Andries Brouwer
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
+.\" SPDX-FileCopyrightText: 1995, 1997, Paul Gortmaker and Andries Brouwer
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" This man page written 950814 by aeb, based on Paul Gortmaker's HOWTO
 .\" (dated v1.0.1, 15/08/95).
diff --git a/man7/charsets.7 b/man7/charsets.7
index 1e28ef361..522ab909d 100644
--- a/man7/charsets.7
+++ b/man7/charsets.7
@@ -1,12 +1,6 @@
-.\" Copyright (c) 1996 Eric S. Raymond <esr@thyrsus.com>
-.\" and Copyright (c) Andries Brouwer <aeb@cwi.nl>
-.\"
-.\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
-.\" This is free documentation; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of
-.\" the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1996, Eric S. Raymond <esr@thyrsus.com>
+.\" SPDX-FileCopyrightText: 1996, Andries Brouwer <aeb@cwi.nl>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" This is combined from many sources, including notes by aeb and
 .\" research by esr.  Portions derive from a writeup by Roman Czyborra.
diff --git a/man7/cp1251.7 b/man7/cp1251.7
index 597dee768..82b7d0c6b 100644
--- a/man7/cp1251.7
+++ b/man7/cp1251.7
@@ -1,25 +1,5 @@
-.\" Copyright 2009    Lefteris Dimitroulakis (edimitro@tee.gr)
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
+.\" SPDX-FileCopyrightText: 2009, Lefteris Dimitroulakis <edimitro@tee.gr>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH CP1251 7 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/cp1252.7 b/man7/cp1252.7
index 5139f2b8d..0bdc27279 100644
--- a/man7/cp1252.7
+++ b/man7/cp1252.7
@@ -1,25 +1,5 @@
-.\" Copyright 2014 (C) Marko Myllynen <myllynen@redhat.com>
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
 .TH CP1252 7 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/environ.7 b/man7/environ.7
index 220a7c0b6..13fabfea3 100644
--- a/man7/environ.7
+++ b/man7/environ.7
@@ -1,34 +1,13 @@
-.\" Copyright (c) 1993 Michael Haardt (michael@moria.de),
-.\"   Fri Apr  2 11:32:09 MET DST 1993
-.\" and Andries Brouwer (aeb@cwi.nl), Fri Feb 14 21:47:50 1997.
+.\" SPDX-FileCopyrightText: 1993, Michael Haardt <michael@moria.de>
+.\" SPDX-FileCopyrightText: 1997, Andries Brouwer <aeb@cwi.nl>
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
-.\" Modified Sun Jul 25 10:45:30 1993 by Rik Faith (faith@cs.unc.edu)
-.\" Modified Sun Jul 21 21:25:26 1996 by Andries Brouwer (aeb@cwi.nl)
-.\" Modified Mon Oct 21 17:47:19 1996 by Eric S. Raymond (esr@thyrsus.com)
-.\" Modified Wed Aug 27 20:28:58 1997 by Nicolás Lichtmaier (nick@debian.org)
-.\" Modified Mon Sep 21 00:00:26 1998 by Andries Brouwer (aeb@cwi.nl)
-.\" Modified Wed Jan 24 06:37:24 2001 by Eric S. Raymond (esr@thyrsus.com)
+.\" Modified Sun Jul 25 10:45:30 1993 by Rik Faith <faith@cs.unc.edu>
+.\" Modified Sun Jul 21 21:25:26 1996 by Andries Brouwer <aeb@cwi.nl>
+.\" Modified Mon Oct 21 17:47:19 1996 by Eric S. Raymond <esr@thyrsus.com>
+.\" Modified Wed Aug 27 20:28:58 1997 by Nicolás Lichtmaier <nick@debian.org>
+.\" Modified Mon Sep 21 00:00:26 1998 by Andries Brouwer <aeb@cwi.nl>
+.\" Modified Wed Jan 24 06:37:24 2001 by Eric S. Raymond <esr@thyrsus.com>
 .\" Modified Thu Dec 13 23:53:27 2001 by Martin Schulze <joey@infodrom.org>
 .\"
 .TH ENVIRON 7 2021-03-22 "Linux" "Linux Programmer's Manual"
diff --git a/man7/epoll.7 b/man7/epoll.7
index c10e73a7c..5626090e4 100644
--- a/man7/epoll.7
+++ b/man7/epoll.7
@@ -1,22 +1,5 @@
-.\"  Copyright (C) 2003  Davide Libenzi
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
-.\"
-.\"  Davide Libenzi <davidel@xmailserver.org>
+.\" SPDX-FileCopyrightText: 2003, Davide Libenzi <davidel@xmailserver.org>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH EPOLL 7 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/glob.7 b/man7/glob.7
index 2b173e46d..c092a78d2 100644
--- a/man7/glob.7
+++ b/man7/glob.7
@@ -1,25 +1,5 @@
-.\" Copyright (c) 1998 Andries Brouwer
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
+.\" SPDX-FileCopyrightText: 1998, Andries Brouwer
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 2003-08-24 fix for / by John Kristoff + joey
 .\"
diff --git a/man7/intro.7 b/man7/intro.7
index 636e7551e..2ffef88d0 100644
--- a/man7/intro.7
+++ b/man7/intro.7
@@ -1,30 +1,9 @@
-.\" Copyright (c) 1993 Michael Haardt
-.\" (michael@moria.de), Fri Apr 2 11:32:09 MET DST
-.\" 1993
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
 .\" Modified by Thomas Koenig (ig25@rz.uni-karlsruhe.de) 24 Apr 1993
 .\" Modified Sat Jul 24 17:28:08 1993 by Rik Faith (faith@cs.unc.edu)
+.\"
 .TH INTRO 7  2007-10-23 "Linux" "Linux Programmer's Manual"
 .SH NAME
 intro \- introduction to overview and miscellany section
diff --git a/man7/iso_8859-1.7 b/man7/iso_8859-1.7
index 96a4bfa33..dd6c2381a 100644
--- a/man7/iso_8859-1.7
+++ b/man7/iso_8859-1.7
@@ -1,28 +1,9 @@
-.\" Copyright 1993-1995 Daniel Quinlan (quinlan@yggdrasil.com)
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
+.\" SPDX-FileCopyrightText: 1993-1995, Daniel Quinlan <quinlan@yggdrasil.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Slightly rearranged, aeb, 950713
 .\" Updated, dpo, 990531
+.\"
 .TH ISO_8859-1 7 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
 iso_8859-1 \- ISO 8859-1 character set encoded in octal, decimal,
diff --git a/man7/iso_8859-10.7 b/man7/iso_8859-10.7
index 197a6e0f0..ceaa576ea 100644
--- a/man7/iso_8859-10.7
+++ b/man7/iso_8859-10.7
@@ -1,25 +1,5 @@
-.\" Copyright 2009    Lefteris Dimitroulakis (edimitro@tee.gr)
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
+.\" SPDX-FileCopyrightText: 2009, Lefteris Dimitroulakis <edimitro@tee.gr>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH ISO_8859-10 7 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/iso_8859-11.7 b/man7/iso_8859-11.7
index 9a74afe08..e6a80e759 100644
--- a/man7/iso_8859-11.7
+++ b/man7/iso_8859-11.7
@@ -1,27 +1,7 @@
-.\" Copyright 2009 Lefteris Dimitroulakis <edimitro at tee.gr>
+.\" SPDX-FileCopyrightText: 2009, Lefteris Dimitroulakis <edimitro at tee.gr>
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
-.\"Thanomsub Noppaburana <donga.nb@gmail.com> made valuable suggestions.
+.\" Thanomsub Noppaburana <donga.nb@gmail.com> made valuable suggestions.
 .\"
 .TH ISO_8859-11 7 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/iso_8859-13.7 b/man7/iso_8859-13.7
index 5c7db7ca2..d2d36bec6 100644
--- a/man7/iso_8859-13.7
+++ b/man7/iso_8859-13.7
@@ -1,25 +1,5 @@
-.\" Copyright 2009   Lefteris Dimitroulakis (edimitro@tee.gr)
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
+.\" SPDX-FileCopyrightText: 2009, Lefteris Dimitroulakis <edimitro@tee.gr>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH ISO_8859-13 7 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/iso_8859-14.7 b/man7/iso_8859-14.7
index 7c0e09910..25136bba5 100644
--- a/man7/iso_8859-14.7
+++ b/man7/iso_8859-14.7
@@ -1,25 +1,5 @@
-.\" Copyright 2009   Lefteris Dimitroulakis (edimitro@tee.gr)
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
+.\" SPDX-FileCopyrightText: 2009, Lefteris Dimitroulakis <edimitro@tee.gr>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH ISO_8859-14 7 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/iso_8859-15.7 b/man7/iso_8859-15.7
index c3dbdb2df..2ab5cafb2 100644
--- a/man7/iso_8859-15.7
+++ b/man7/iso_8859-15.7
@@ -1,26 +1,6 @@
-.\" Copyright 1993-1995 Daniel Quinlan (quinlan@yggdrasil.com)
-.\" Copyright 1999      Dimitri Papadopoulos (dpo@club-internet.fr)
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
+.\" SPDX-FileCopyrightText: 1993-1995, Daniel Quinlan <quinlan@yggdrasil.com>
+.\" SPDX-FileCopyrightText: 1999, Dimitri Papadopoulos <dpo@club-internet.fr>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH ISO_8859-15 7 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/iso_8859-16.7 b/man7/iso_8859-16.7
index e0ce33a5d..1b985d59c 100644
--- a/man7/iso_8859-16.7
+++ b/man7/iso_8859-16.7
@@ -1,25 +1,5 @@
-.\" Copyright 2002 Ionel Mugurel Ciobîcă (IMCiobica@netscape.net)
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
+.\" SPDX-FileCopyrightText: 2002, Ionel Mugurel Ciobîcă <IMCiobica@netscape.net>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH ISO_8859-16 7 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/iso_8859-2.7 b/man7/iso_8859-2.7
index 1e00d8bae..8af975164 100644
--- a/man7/iso_8859-2.7
+++ b/man7/iso_8859-2.7
@@ -1,29 +1,10 @@
-.\" Copyright 1999 Roman Maurer (roman.maurer@hermes.si)
-.\" Copyright 1993-1995 Daniel Quinlan (quinlan@yggdrasil.com)
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
+.\" SPDX-FileCopyrightText: 1999, Roman Maurer <roman.maurer@hermes.si>
+.\" SPDX-FileCopyrightText: 1993-1995, Daniel Quinlan <quinlan@yggdrasil.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Slightly rearranged, aeb, 950713
 .\" Updated, dpo, 990531
+.\"
 .TH ISO_8859-2 7 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
 iso_8859-2 \- ISO 8859-2 character set encoded in octal, decimal,
diff --git a/man7/iso_8859-3.7 b/man7/iso_8859-3.7
index 1ee0a7ce9..c09dbca70 100644
--- a/man7/iso_8859-3.7
+++ b/man7/iso_8859-3.7
@@ -1,25 +1,5 @@
-.\" Copyright 2009  Lefteris Dimitroulakis (edimitro@tee.gr)
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
+.\" SPDX-FileCopyrightText: 2009, Lefteris Dimitroulakis <edimitro@tee.gr>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH ISO_8859-3 7 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/iso_8859-4.7 b/man7/iso_8859-4.7
index 652d0a55d..afda6af6c 100644
--- a/man7/iso_8859-4.7
+++ b/man7/iso_8859-4.7
@@ -1,25 +1,5 @@
-.\" Copyright 2009  Lefteris Dimitroulakis (edimitro@tee.gr)
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
+.\" SPDX-FileCopyrightText: 2009, Lefteris Dimitroulakis <edimitro@tee.gr>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH ISO_8859-4 7 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/iso_8859-5.7 b/man7/iso_8859-5.7
index ffd728245..917e97bf1 100644
--- a/man7/iso_8859-5.7
+++ b/man7/iso_8859-5.7
@@ -1,25 +1,5 @@
-.\" Copyright 2009   Lefteris Dimitroulakis (edimitro@tee.gr)
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
+.\" SPDX-FileCopyrightText: 2009, Lefteris Dimitroulakis <edimitro@tee.gr>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH ISO_8859-5 7 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/iso_8859-6.7 b/man7/iso_8859-6.7
index 8775a44b8..26a774f44 100644
--- a/man7/iso_8859-6.7
+++ b/man7/iso_8859-6.7
@@ -1,25 +1,5 @@
-.\" Copyright 2009  Lefteris Dimitroulakis (edimitro@tee.gr)
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
+.\" SPDX-FileCopyrightText: 2009, Lefteris Dimitroulakis <edimitro@tee.gr>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH ISO_8859-6 7 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/iso_8859-7.7 b/man7/iso_8859-7.7
index e12bb0b17..6110a16e7 100644
--- a/man7/iso_8859-7.7
+++ b/man7/iso_8859-7.7
@@ -1,25 +1,5 @@
-.\" Copyright 1999      Dimitri Papadopoulos (dpo@club-internet.fr)
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
+.\" SPDX-FileCopyrightText: 1999, Dimitri Papadopoulos <dpo@club-internet.fr>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH ISO_8859-7 7 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/iso_8859-8.7 b/man7/iso_8859-8.7
index 5bf17240a..708bb4186 100644
--- a/man7/iso_8859-8.7
+++ b/man7/iso_8859-8.7
@@ -1,25 +1,5 @@
-.\" Copyright 2009   Lefteris Dimitroulakis (edimitro@tee.gr)
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
+.\" SPDX-FileCopyrightText: 2009, Lefteris Dimitroulakis <edimitro@tee.gr>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Eli Zaretskii <eliz@gnu.org> made valuable suggestions
 .\"
diff --git a/man7/iso_8859-9.7 b/man7/iso_8859-9.7
index 223fa8042..ef849adfb 100644
--- a/man7/iso_8859-9.7
+++ b/man7/iso_8859-9.7
@@ -1,25 +1,5 @@
-.\" Copyright 2002      Dimitri Papadopoulos (dpo@club-internet.fr)
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
+.\" SPDX-FileCopyrightText: 2002, Dimitri Papadopoulos <dpo@club-internet.fr>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH ISO_8859-9 7 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/kernel_lockdown.7 b/man7/kernel_lockdown.7
index 07ab82921..383b4bb4e 100644
--- a/man7/kernel_lockdown.7
+++ b/man7/kernel_lockdown.7
@@ -1,13 +1,7 @@
+.\" SPDX-FileCopyrightText: 2017, Red Hat, Inc.
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" Copyright (C) 2017 Red Hat, Inc. All Rights Reserved.
-.\" Written by David Howells (dhowells@redhat.com)
-.\"
-.\" %%%LICENSE_START(GPLv2+_SW_ONEPARA)
-.\" This program is free software; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License
-.\" as published by the Free Software Foundation; either version
-.\" 2 of the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" Written by David Howells <dhowells@redhat.com>
 .\"
 .TH KERNEL_LOCKDOWN 7 2021-06-20 Linux "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/keyrings.7 b/man7/keyrings.7
index 831f511e3..d46bce30d 100644
--- a/man7/keyrings.7
+++ b/man7/keyrings.7
@@ -1,13 +1,8 @@
-.\" Copyright (C) 2014 Red Hat, Inc. All Rights Reserved.
-.\" Written by David Howells (dhowells@redhat.com)
-.\" and Copyright (C) 2016 Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-FileCopyrightText: 2014, Red Hat, Inc.
+.\" SPDX-FileCopyrightText: 2016, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" %%%LICENSE_START(GPLv2+_SW_ONEPARA)
-.\" This program is free software; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License
-.\" as published by the Free Software Foundation; either version
-.\" 2 of the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" Written by David Howells <dhowells@redhat.com>
 .\"
 .TH KEYRINGS 7 2021-03-22 Linux "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/koi8-r.7 b/man7/koi8-r.7
index d995860f2..09f1f02d5 100644
--- a/man7/koi8-r.7
+++ b/man7/koi8-r.7
@@ -1,25 +1,5 @@
-.\" Copyright 2001      Alexey Mahotkin <alexm@hsys.msk.ru>
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
+.\" SPDX-FileCopyrightText: 2001, Alexey Mahotkin <alexm@hsys.msk.ru>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH KOI8-R 7 2020-08-13 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/koi8-u.7 b/man7/koi8-u.7
index 2e8c79e43..4f9ec8a86 100644
--- a/man7/koi8-u.7
+++ b/man7/koi8-u.7
@@ -1,25 +1,5 @@
-.\" Copyright 2009  Lefteris Dimitroulakis <edimitro at tee.gr>
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
+.\" SPDX-FileCopyrightText: 2009, Lefteris Dimitroulakis <edimitro at tee.gr>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 2009-01-15, mtk, Some edits
 .\"
diff --git a/man7/persistent-keyring.7 b/man7/persistent-keyring.7
index 48b81bc90..3f43173b1 100644
--- a/man7/persistent-keyring.7
+++ b/man7/persistent-keyring.7
@@ -1,12 +1,7 @@
-.\" Copyright (C) 2014 Red Hat, Inc. All Rights Reserved.
-.\" Written by David Howells (dhowells@redhat.com)
+.\" SPDX-FileCopyrightText: 2014, Red Hat, Inc.
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" %%%LICENSE_START(GPLv2+_SW_ONEPARA)
-.\" This program is free software; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License
-.\" as published by the Free Software Foundation; either version
-.\" 2 of the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" Written by David Howells (dhowells@redhat.com)
 .\"
 .TH PERSISTENT-KEYRING 7 2020-08-13 Linux "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/posixoptions.7 b/man7/posixoptions.7
index 6ff6fda20..2549a510e 100644
--- a/man7/posixoptions.7
+++ b/man7/posixoptions.7
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
 .TH POSIXOPTIONS 7 2021-08-27 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/process-keyring.7 b/man7/process-keyring.7
index b586e4954..4a19f0c3d 100644
--- a/man7/process-keyring.7
+++ b/man7/process-keyring.7
@@ -1,12 +1,7 @@
-.\" Copyright (C) 2014 Red Hat, Inc. All Rights Reserved.
-.\" Written by David Howells (dhowells@redhat.com)
+.\" SPDX-FileCopyrightText: 2014, Red Hat, Inc.
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" %%%LICENSE_START(GPLv2+_SW_ONEPARA)
-.\" This program is free software; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License
-.\" as published by the Free Software Foundation; either version
-.\" 2 of the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" Written by David Howells (dhowells@redhat.com)
 .\"
 .TH PROCESS-KEYRING 7 2020-08-13 Linux "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/sched.7 b/man7/sched.7
index fcc68a34f..8a7fe8cc3 100644
--- a/man7/sched.7
+++ b/man7/sched.7
@@ -1,31 +1,10 @@
-.\" Copyright (C) 2014 Michael Kerrisk <mtk.manpages@gmail.com>
-.\" and Copyright (C) 2014 Peter Zijlstra <peterz@infradead.org>
-.\" and Copyright (C) 2014 Juri Lelli <juri.lelli@gmail.com>
-.\" Various pieces from the old sched_setscheduler(2) page
-.\" 	Copyright (C) Tom Bjorkholm, Markus Kuhn & David A. Wheeler 1996-1999
-.\" 	and Copyright (C) 2007 Carsten Emde <Carsten.Emde@osadl.org>
-.\" 	and Copyright (C) 2008 Michael Kerrisk <mtk.manpages@gmail.com>
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
+.\" SPDX-FileCopyrightText: 1996-1999, Tom Bjorkholm, Markus Kuhn & David A. Wheeler
+.\" SPDX-FileCopyrightText: 2007, Carsten Emde <Carsten.Emde@osadl.org>
+.\" SPDX-FileCopyrightText: 2008, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-FileCopyrightText: 2014, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-FileCopyrightText: 2014, Peter Zijlstra <peterz@infradead.org>
+.\" SPDX-FileCopyrightText: 2014, Juri Lelli <juri.lelli@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Worth looking at: http://rt.wiki.kernel.org/index.php
 .\"
diff --git a/man7/session-keyring.7 b/man7/session-keyring.7
index a7340f90c..32fe33fbc 100644
--- a/man7/session-keyring.7
+++ b/man7/session-keyring.7
@@ -1,12 +1,7 @@
-.\" Copyright (C) 2014 Red Hat, Inc. All Rights Reserved.
-.\" Written by David Howells (dhowells@redhat.com)
+.\" SPDX-FileCopyrightText: 2014, Red Hat, Inc.
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" %%%LICENSE_START(GPLv2+_SW_ONEPARA)
-.\" This program is free software; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License
-.\" as published by the Free Software Foundation; either version
-.\" 2 of the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" Written by David Howells (dhowells@redhat.com)
 .\"
 .TH SESSION-KEYRING 7 2021-03-22 Linux "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/sock_diag.7 b/man7/sock_diag.7
index cccd73264..e4cb8d01f 100644
--- a/man7/sock_diag.7
+++ b/man7/sock_diag.7
@@ -1,26 +1,7 @@
-.\" Copyright (c) 2016 Pavel Emelyanov <xemul@virtuozzo.com>
-.\" Copyright (c) 2016 Dmitry V. Levin <ldv@altlinux.org>
+.\" SPDX-FileCopyrightText: 2016, Pavel Emelyanov <xemul@virtuozzo.com>
+.\" SPDX-FileCopyrightText: 2016, Dmitry V. Levin <ldv@altlinux.org>
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
 .TH SOCK_DIAG 7 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 sock_diag \- obtaining information about sockets
diff --git a/man7/spufs.7 b/man7/spufs.7
index f79f1fe43..736378a97 100644
--- a/man7/spufs.7
+++ b/man7/spufs.7
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
 .\" 2005-09-28, created by Arnd Bergmann <arndb@de.ibm.com>,
diff --git a/man7/standards.7 b/man7/standards.7
index e1d8bd56f..916917fd5 100644
--- a/man7/standards.7
+++ b/man7/standards.7
@@ -1,25 +1,5 @@
-.\" Copyright (c) 2006, Michael Kerrisk <mtk.manpages@gmail.com>
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
+.\" SPDX-FileCopyrightText: 2006, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH STANDARDS 7 2020-11-01 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/thread-keyring.7 b/man7/thread-keyring.7
index 81a6ab33d..9a95dfa87 100644
--- a/man7/thread-keyring.7
+++ b/man7/thread-keyring.7
@@ -1,12 +1,7 @@
-.\" Copyright (C) 2014 Red Hat, Inc. All Rights Reserved.
-.\" Written by David Howells (dhowells@redhat.com)
+.\" SPDX-FileCopyrightText: 2014, Red Hat, Inc.
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" %%%LICENSE_START(GPLv2+_SW_ONEPARA)
-.\" This program is free software; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License
-.\" as published by the Free Software Foundation; either version
-.\" 2 of the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" Written by David Howells (dhowells@redhat.com)
 .\"
 .TH THREAD-KEYRING 7 2020-08-13 Linux "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/unicode.7 b/man7/unicode.7
index fdf02edb2..50a640cfc 100644
--- a/man7/unicode.7
+++ b/man7/unicode.7
@@ -1,25 +1,5 @@
-.\" Copyright (C) Markus Kuhn, 1995, 2001
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
+.\" SPDX-FileCopyrightText: 1995, 2001, Markus Kuhn
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 1995-11-26  Markus Kuhn <mskuhn@cip.informatik.uni-erlangen.de>
 .\"      First version written
diff --git a/man7/user-keyring.7 b/man7/user-keyring.7
index 4b249d60d..8943ffda1 100644
--- a/man7/user-keyring.7
+++ b/man7/user-keyring.7
@@ -1,12 +1,7 @@
-.\" Copyright (C) 2014 Red Hat, Inc. All Rights Reserved.
-.\" Written by David Howells (dhowells@redhat.com)
+.\" SPDX-FileCopyrightText: 2014, Red Hat, Inc.
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" %%%LICENSE_START(GPLv2+_SW_ONEPARA)
-.\" This program is free software; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License
-.\" as published by the Free Software Foundation; either version
-.\" 2 of the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" Written by David Howells (dhowells@redhat.com)
 .\"
 .TH USER-KEYRING 7 2020-08-13 Linux "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/user-session-keyring.7 b/man7/user-session-keyring.7
index 22560bd19..72894a4ee 100644
--- a/man7/user-session-keyring.7
+++ b/man7/user-session-keyring.7
@@ -1,12 +1,7 @@
-.\" Copyright (C) 2014 Red Hat, Inc. All Rights Reserved.
-.\" Written by David Howells (dhowells@redhat.com)
+.\" SPDX-FileCopyrightText: 2014, Red Hat, Inc.
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" %%%LICENSE_START(GPLv2+_SW_ONEPARA)
-.\" This program is free software; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License
-.\" as published by the Free Software Foundation; either version
-.\" 2 of the License, or (at your option) any later version.
-.\" %%%LICENSE_END
+.\" Written by David Howells (dhowells@redhat.com)
 .\"
 .TH USER-SESSION-KEYRING 7 2020-08-13 Linux "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/utf-8.7 b/man7/utf-8.7
index ec93affca..1becec861 100644
--- a/man7/utf-8.7
+++ b/man7/utf-8.7
@@ -1,25 +1,5 @@
-.\" Copyright (C) Markus Kuhn, 1996, 2001
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
+.\" SPDX-FileCopyrightText: 1996, 2001, Markus Kuhn
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" 1995-11-26  Markus Kuhn <mskuhn@cip.informatik.uni-erlangen.de>
 .\"      First version written
diff --git a/man7/xattr.7 b/man7/xattr.7
index 92ffbe36b..4631c2ccd 100644
--- a/man7/xattr.7
+++ b/man7/xattr.7
@@ -1,29 +1,6 @@
-.\" Extended attributes manual page
-.\"
-.\" Copyright (C) 2000, 2002, 2007  Andreas Gruenbacher <agruen@suse.de>
-.\" Copyright (C) 2001, 2002, 2004, 2007 Silicon Graphics, Inc.
-.\" All rights reserved.
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
-.\" License along with this manual.  If not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2000, 2002, 2007, Andreas Gruenbacher <agruen@suse.de>
+.\" SPDX-FileCopyrightText: 2001, 2002, 2004, 2007, Silicon Graphics, Inc.
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .TH XATTR 7 2020-06-09 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man8/iconvconfig.8 b/man8/iconvconfig.8
index 794879124..383e15e53 100644
--- a/man8/iconvconfig.8
+++ b/man8/iconvconfig.8
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
 .TH ICONVCONFIG 8 2021-08-27 "GNU" "Linux System Administration"
 .SH NAME
diff --git a/man8/intro.8 b/man8/intro.8
index d83e78d43..b511df8f0 100644
--- a/man8/intro.8
+++ b/man8/intro.8
@@ -1,27 +1,6 @@
-.\" Copyright (c) 1993 Michael Haardt (michael@moria.de),
-.\"         Fri Apr  2 11:32:09 MET DST 1993
-.\" and Copyright (C) 2007 Michael Kerrisk <mtk.manpages@gmail.com>
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
+.\" SPDX-FileCopyrightText: 2007, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
 .\" Modified Sat Jul 24 17:35:48 1993 by Rik Faith (faith@cs.unc.edu)
 .\" 2007-10-23 mtk: minor rewrites, and added paragraph on exit status
diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
index 4b639b0d7..58bede2c8 100644
--- a/man8/ldconfig.8
+++ b/man8/ldconfig.8
@@ -1,24 +1,11 @@
-.\" Copyright 1999 SuSE GmbH Nuernberg, Germany
-.\" Author: Thorsten Kukuk <kukuk@suse.de>
-.\"
-.\" %%%LICENSE_START(GPLv2+_SW_3_PARA)
-.\" This program is free software; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of the
-.\" License, or (at your option) any later version.
-.\"
-.\" This program is distributed in the hope that it will be useful,
-.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
-.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-.\" General Public License for more details.
+.\" SPDX-FileCopyrightText: 1999, SuSE GmbH Nuernberg, Germany
+.\" SPDX-License-Identifier: GPL-2.0-or-later
 .\"
-.\" You should have received a copy of the GNU General Public
-.\" License along with this manual; if not, see
-.\" <http://www.gnu.org/licenses/>.
-.\" %%%LICENSE_END
+.\" Author: Thorsten Kukuk <kukuk@suse.de>
 .\"
 .\" Modified, 6 May 2002, Michael Kerrisk, <mtk.manpages@gmail.com>
 .\"   Change listed order of /usr/lib and /lib
+.\"
 .TH LDCONFIG 8 2021-03-22 "GNU" "Linux Programmer's Manual"
 .SH NAME
 ldconfig \- configure dynamic linker run-time bindings
diff --git a/man8/nscd.8 b/man8/nscd.8
index 8ddc538d3..b9e0d78ff 100644
--- a/man8/nscd.8
+++ b/man8/nscd.8
@@ -1,21 +1,7 @@
-.\" Copyright 1999 SuSE GmbH Nuernberg, Germany
-.\" Author: Thorsten Kukuk <kukuk@suse.de>
-.\"
-.\" %%%LICENSE_START(GPLv2+_SW_3_PARA)
-.\" This program is free software; you can redistribute it and/or
-.\" modify it under the terms of the GNU General Public License as
-.\" published by the Free Software Foundation; either version 2 of the
-.\" License, or (at your option) any later version.
+.\" SPDX-FileCopyrightText: 1999, SuSE GmbH Nuernberg, Germany
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
 .\" 2008-12-05 Petr Baudis <pasky@suse.cz>
 .\"	Rewrite the NOTES section to reflect modern reality
-- 
2.33.0

