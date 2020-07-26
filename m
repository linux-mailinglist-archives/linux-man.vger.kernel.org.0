Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8ABB622DC47
	for <lists+linux-man@lfdr.de>; Sun, 26 Jul 2020 08:23:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725789AbgGZGXs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 26 Jul 2020 02:23:48 -0400
Received: from smtp.gentoo.org ([140.211.166.183]:54288 "EHLO smtp.gentoo.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725298AbgGZGXs (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 26 Jul 2020 02:23:48 -0400
Received: from vapier.lan (localhost [127.0.0.1])
        by smtp.gentoo.org (Postfix) with ESMTP id 7E60C34F177;
        Sun, 26 Jul 2020 06:23:43 +0000 (UTC)
From:   Mike Frysinger <vapier@gentoo.org>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] [rfc] drop "coding: UTF-8" header
Date:   Sun, 26 Jul 2020 02:23:40 -0400
Message-Id: <20200726062340.28800-1-vapier@gentoo.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=8bit
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Mike Frysinger <vapier@chromium.org>

This header is used inconsistently -- man pages are UTF-8 encoded
but not setting this marker.  It's only respected by the man-db
package, and seems a bit anachronistic at this point when UTF-8
is the standard default nowadays.

Signed-off-by: Mike Frysinger <vapier@gentoo.org>
---
 man1/iconv.1                | 2 --
 man3/mbstowcs.3             | 1 -
 man3/newlocale.3            | 1 -
 man5/locale.5               | 1 -
 man7/armscii-8.7            | 1 -
 man7/charsets.7             | 1 -
 man7/cp1251.7               | 1 -
 man7/cp1252.7               | 1 -
 man7/iso_8859-1.7           | 1 -
 man7/iso_8859-10.7          | 1 -
 man7/iso_8859-11.7          | 1 -
 man7/iso_8859-13.7          | 1 -
 man7/iso_8859-14.7          | 1 -
 man7/iso_8859-15.7          | 1 -
 man7/iso_8859-16.7          | 1 -
 man7/iso_8859-2.7           | 1 -
 man7/iso_8859-3.7           | 1 -
 man7/iso_8859-4.7           | 1 -
 man7/iso_8859-5.7           | 1 -
 man7/iso_8859-6.7           | 1 -
 man7/iso_8859-7.7           | 1 -
 man7/iso_8859-8.7           | 1 -
 man7/iso_8859-9.7           | 1 -
 man7/koi8-r.7               | 1 -
 man7/koi8-u.7               | 1 -
 man8/iconvconfig.8          | 2 --
 scripts/convert_to_utf_8.sh | 2 +-
 27 files changed, 1 insertion(+), 29 deletions(-)

diff --git a/man1/iconv.1 b/man1/iconv.1
index 3649e6dbe12e..8207e1cea3d6 100644
--- a/man1/iconv.1
+++ b/man1/iconv.1
@@ -1,5 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
-.\"
 .\" Copyright (C) 2014 Marko Myllynen <myllynen@redhat.com>
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/man3/mbstowcs.3 b/man3/mbstowcs.3
index f92ab681c56f..cf650506eb80 100644
--- a/man3/mbstowcs.3
+++ b/man3/mbstowcs.3
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
 .\" and Copyright 2014 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
diff --git a/man3/newlocale.3 b/man3/newlocale.3
index 2d71f1a8cf51..86b961fc628d 100644
--- a/man3/newlocale.3
+++ b/man3/newlocale.3
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright (C) 2014 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man5/locale.5 b/man5/locale.5
index 85e548bc17f3..f6b63da9d956 100644
--- a/man5/locale.5
+++ b/man5/locale.5
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright (C) 1994  Jochen Hein (Hein@Student.TU-Clausthal.de)
 .\" Copyright (C) 2008  Petr Baudis (pasky@suse.cz)
 .\" Copyright (C) 2014 Michael Kerrisk <mtk@manpages@gmail.com>
diff --git a/man7/armscii-8.7 b/man7/armscii-8.7
index 94c51e3680c0..163c81d5b27f 100644
--- a/man7/armscii-8.7
+++ b/man7/armscii-8.7
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright 2009  Lefteris Dimitroulakis <edimitro at tee.gr>
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/man7/charsets.7 b/man7/charsets.7
index 439ea7343708..79d1c1442238 100644
--- a/man7/charsets.7
+++ b/man7/charsets.7
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright (c) 1996 Eric S. Raymond <esr@thyrsus.com>
 .\" and Copyright (c) Andries Brouwer <aeb@cwi.nl>
 .\"
diff --git a/man7/cp1251.7 b/man7/cp1251.7
index 382de42c8510..fdc1af847300 100644
--- a/man7/cp1251.7
+++ b/man7/cp1251.7
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright 2009    Lefteris Dimitroulakis (edimitro@tee.gr)
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/man7/cp1252.7 b/man7/cp1252.7
index 07ac84bf5d19..759a4061d0bb 100644
--- a/man7/cp1252.7
+++ b/man7/cp1252.7
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright 2014 (C) Marko Myllynen <myllynen@redhat.com>
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/man7/iso_8859-1.7 b/man7/iso_8859-1.7
index 202768231f51..8c57bcfbc3eb 100644
--- a/man7/iso_8859-1.7
+++ b/man7/iso_8859-1.7
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright 1993-1995 Daniel Quinlan (quinlan@yggdrasil.com)
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/man7/iso_8859-10.7 b/man7/iso_8859-10.7
index 82c8eeda5f7f..02f89221cdb0 100644
--- a/man7/iso_8859-10.7
+++ b/man7/iso_8859-10.7
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright 2009    Lefteris Dimitroulakis (edimitro@tee.gr)
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/man7/iso_8859-11.7 b/man7/iso_8859-11.7
index 073ddc65771e..afc931b00e98 100644
--- a/man7/iso_8859-11.7
+++ b/man7/iso_8859-11.7
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright 2009 Lefteris Dimitroulakis <edimitro at tee.gr>
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/man7/iso_8859-13.7 b/man7/iso_8859-13.7
index 06de48839aa8..6a5304b11a51 100644
--- a/man7/iso_8859-13.7
+++ b/man7/iso_8859-13.7
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright 2009   Lefteris Dimitroulakis (edimitro@tee.gr)
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/man7/iso_8859-14.7 b/man7/iso_8859-14.7
index 592bd0838e05..cb39a9e915fd 100644
--- a/man7/iso_8859-14.7
+++ b/man7/iso_8859-14.7
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright 2009   Lefteris Dimitroulakis (edimitro@tee.gr)
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/man7/iso_8859-15.7 b/man7/iso_8859-15.7
index 5e71a41aae60..9946b0bc266f 100644
--- a/man7/iso_8859-15.7
+++ b/man7/iso_8859-15.7
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright 1993-1995 Daniel Quinlan (quinlan@yggdrasil.com)
 .\" Copyright 1999      Dimitri Papadopoulos (dpo@club-internet.fr)
 .\"
diff --git a/man7/iso_8859-16.7 b/man7/iso_8859-16.7
index 8d9b5a259586..5bf518279b07 100644
--- a/man7/iso_8859-16.7
+++ b/man7/iso_8859-16.7
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright 2002 Ionel Mugurel Ciobîcă (IMCiobica@netscape.net)
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/man7/iso_8859-2.7 b/man7/iso_8859-2.7
index 095f0612d0ca..a9e478b58d66 100644
--- a/man7/iso_8859-2.7
+++ b/man7/iso_8859-2.7
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright 1999 Roman Maurer (roman.maurer@hermes.si)
 .\" Copyright 1993-1995 Daniel Quinlan (quinlan@yggdrasil.com)
 .\"
diff --git a/man7/iso_8859-3.7 b/man7/iso_8859-3.7
index 5f2605852f3d..b9e00fd10ed9 100644
--- a/man7/iso_8859-3.7
+++ b/man7/iso_8859-3.7
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright 2009  Lefteris Dimitroulakis (edimitro@tee.gr)
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/man7/iso_8859-4.7 b/man7/iso_8859-4.7
index 6eefaef93989..4ef5c0e05a44 100644
--- a/man7/iso_8859-4.7
+++ b/man7/iso_8859-4.7
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright 2009  Lefteris Dimitroulakis (edimitro@tee.gr)
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/man7/iso_8859-5.7 b/man7/iso_8859-5.7
index 7e3c8cec1087..1396b36de92e 100644
--- a/man7/iso_8859-5.7
+++ b/man7/iso_8859-5.7
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright 2009   Lefteris Dimitroulakis (edimitro@tee.gr)
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/man7/iso_8859-6.7 b/man7/iso_8859-6.7
index 5e1608a2e342..d2c5aea085d5 100644
--- a/man7/iso_8859-6.7
+++ b/man7/iso_8859-6.7
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright 2009  Lefteris Dimitroulakis (edimitro@tee.gr)
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/man7/iso_8859-7.7 b/man7/iso_8859-7.7
index f59570888089..97bb728d803b 100644
--- a/man7/iso_8859-7.7
+++ b/man7/iso_8859-7.7
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright 1999      Dimitri Papadopoulos (dpo@club-internet.fr)
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/man7/iso_8859-8.7 b/man7/iso_8859-8.7
index b7e1c5f7b53a..bdfaa571cad7 100644
--- a/man7/iso_8859-8.7
+++ b/man7/iso_8859-8.7
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright 2009   Lefteris Dimitroulakis (edimitro@tee.gr)
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/man7/iso_8859-9.7 b/man7/iso_8859-9.7
index b97efc29cf15..705971e454c9 100644
--- a/man7/iso_8859-9.7
+++ b/man7/iso_8859-9.7
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright 2002      Dimitri Papadopoulos (dpo@club-internet.fr)
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/man7/koi8-r.7 b/man7/koi8-r.7
index 7ee9e2927d42..7d1977eb3832 100644
--- a/man7/koi8-r.7
+++ b/man7/koi8-r.7
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright 2001      Alexey Mahotkin <alexm@hsys.msk.ru>
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/man7/koi8-u.7 b/man7/koi8-u.7
index 0c56e949f3e4..987918724d7f 100644
--- a/man7/koi8-u.7
+++ b/man7/koi8-u.7
@@ -1,4 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
 .\" Copyright 2009  Lefteris Dimitroulakis <edimitro at tee.gr>
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/man8/iconvconfig.8 b/man8/iconvconfig.8
index 2cc3536f4c11..b572829659b5 100644
--- a/man8/iconvconfig.8
+++ b/man8/iconvconfig.8
@@ -1,5 +1,3 @@
-'\" t -*- coding: UTF-8 -*-
-.\"
 .\" Copyright (C) 2014 Marko Myllynen <myllynen@redhat.com>
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/scripts/convert_to_utf_8.sh b/scripts/convert_to_utf_8.sh
index b8a5e83baee1..28f5a72cf8c7 100755
--- a/scripts/convert_to_utf_8.sh
+++ b/scripts/convert_to_utf_8.sh
@@ -33,7 +33,7 @@ fi
 out_dir="$1"
 shift
 
-enc_line="'\\\" t -*- coding: UTF-8 -*-"
+enc_line=""
 
 for f in "$@"; do
     enc=$(file -bi "$f" | cut -d = -f 2)
-- 
2.26.2

