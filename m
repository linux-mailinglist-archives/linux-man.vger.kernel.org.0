Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B571715DAFB
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2020 16:29:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387515AbgBNP3N convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Fri, 14 Feb 2020 10:29:13 -0500
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:33793 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S2387398AbgBNP3N (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Feb 2020 10:29:13 -0500
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-20-DaD0SFeiPd-FEY9CM3ssiQ-1; Fri, 14 Feb 2020 10:29:09 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 707B4107ACC9;
        Fri, 14 Feb 2020 15:29:08 +0000 (UTC)
Received: from asgard.redhat.com (ovpn-112-64.ams2.redhat.com [10.36.112.64])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 94BD75DA7D;
        Fri, 14 Feb 2020 15:29:07 +0000 (UTC)
Date:   Fri, 14 Feb 2020 16:29:05 +0100
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] strftime.3: expand %E and %O description
Message-ID: <f33bd2ea6821cdc89d1f6aa798641137d9ce62e0.1581693625.git.evgsyr@gmail.com>
References: <cover.1581693624.git.evgsyr@gmail.com>
MIME-Version: 1.0
In-Reply-To: <cover.1581693624.git.evgsyr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: DaD0SFeiPd-FEY9CM3ssiQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: 8BIT
Content-Disposition: inline
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* man3/strftime.3 (%C): Descibe the meaning of %EC conversion
specification.
(%E): Mention the concept of "era" in description.
(%O): Mention that alternative format is related to numeric
representation.
(%y): Describe the meaning of %Ey conversion specification.
(%Y): Describe the meaning of %EY conversion specification.
(.SH DESCRIPTION): Mention that the behaviour of %E modifier is governed
by ERA locale element and provide ja_JP locale as an example.

Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
---
 man3/strftime.3 | 29 ++++++++++++++++++++++++++---
 1 file changed, 26 insertions(+), 3 deletions(-)

diff --git a/man3/strftime.3 b/man3/strftime.3
index 20ba057..bdbea68 100644
--- a/man3/strftime.3
+++ b/man3/strftime.3
@@ -143,6 +143,9 @@ conversion specification.)
 .TP
 .B %C
 The century number (year/100) as a 2-digit integer. (SU)
+(The
+.B %EC
+conversion specification corresponds to the name of the era.)
 (Calculated from
 .IR tm_year .)
 .TP
@@ -170,7 +173,7 @@ zero is replaced by a space. (SU)
 .IR tm_mday .)
 .TP
 .B %E
-Modifier: use alternative format, see below. (SU)
+Modifier: use alternative ("era-based") format, see below. (SU)
 .TP
 .B %F
 Equivalent to
@@ -253,7 +256,7 @@ The minute as a decimal number (range 00 to 59).
 A newline character. (SU)
 .TP
 .B %O
-Modifier: use alternative format, see below. (SU)
+Modifier: use alternative numeric symbols, see below. (SU)
 .TP
 .B %p
 Either "AM" or "PM" according to the given time value, or the
@@ -400,11 +403,20 @@ conversion specification.)
 .TP
 .B %y
 The year as a decimal number without a century (range 00 to 99).
+(The
+.B %Ey
+conversion specification corresponds to the year since the beginning of the era
+denoted by
+.B %EC
+conversion specification.)
 (Calculated from
 .IR tm_year )
 .TP
 .B %Y
 The year as a decimal number including the century.
+(The
+.B %EY
+conversion specification corresponds to the full alternative year representation.)
 (Calculated from
 .IR tm_year )
 .TP
@@ -463,7 +475,18 @@ where the effect of the
 .B O
 modifier is to use
 alternative numeric symbols (say, roman numerals), and that of the
-E modifier is to use a locale-dependent alternative representation.
+.B E
+modifier is to use a locale-dependent alternative representation.
+The rules governing date representation with the
+.B E
+modifier can be obtained by supplying
+.B ERA
+as an argument to a
+.BR nl_langinfo (3)
+library call.
+One example of such alternative forms is Japanese era calendar scheme in the
+.B ja_JP
+glibc locale.
 .SH RETURN VALUE
 Provided that the result string,
 including the terminating null byte, does not exceed
-- 
2.1.4

