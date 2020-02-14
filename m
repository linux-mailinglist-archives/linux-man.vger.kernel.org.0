Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D4DED15DAF9
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2020 16:29:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387508AbgBNP3F convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Fri, 14 Feb 2020 10:29:05 -0500
Received: from us-smtp-1.mimecast.com ([205.139.110.61]:46221 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S2387398AbgBNP3F (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Feb 2020 10:29:05 -0500
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-86-zRmsfPjbP2K_CRID84p3gg-1; Fri, 14 Feb 2020 10:29:02 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7696C107ACCC;
        Fri, 14 Feb 2020 15:29:01 +0000 (UTC)
Received: from asgard.redhat.com (ovpn-112-64.ams2.redhat.com [10.36.112.64])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 681FC10027A3;
        Fri, 14 Feb 2020 15:29:00 +0000 (UTC)
Date:   Fri, 14 Feb 2020 16:28:58 +0100
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] strftime.3: consistently document fall-back format string
Message-ID: <00f5f714c73adf931d1b331a7f3724e4a0683c18.1581693625.git.evgsyr@gmail.com>
References: <cover.1581693624.git.evgsyr@gmail.com>
MIME-Version: 1.0
In-Reply-To: <cover.1581693624.git.evgsyr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: zRmsfPjbP2K_CRID84p3gg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: 8BIT
Content-Disposition: inline
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The information is taken from POSIX[1] and the implementations[2][3][4].

[1] https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap07.html#tag_07_03_05_03
[2] https://sourceware.org/git/?p=glibc.git;a=blob;f=time/strftime_l.c
[3] https://git.musl-libc.org/cgit/musl/tree/src/locale/langinfo.c#n15
[4] https://git.uclibc.org/uClibc/tree/libc/misc/locale/locale.c#n992

* man3/strftime.3 (%c, %x, %X): Add information about fall-back format.
(%r): Move it behind SU comment.

Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
---
 man3/strftime.3 | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/man3/strftime.3 b/man3/strftime.3
index 62b77bf..dd7dec7 100644
--- a/man3/strftime.3
+++ b/man3/strftime.3
@@ -107,6 +107,8 @@ The full month name according to the current locale.
 .TP
 .B %c
 The preferred date and time representation for the current locale.
+(In the POSIX locale this is equivalent to
+.BR "%a %b %e %H:%M:%S %Y" .)
 .TP
 .B %C
 The century number (year/100) as a 2-digit integer. (SU)
@@ -240,9 +242,9 @@ string for the current locale.
 .TP
 .B %r
 The time in a.m. or p.m. notation.
-In the POSIX locale this is equivalent to
-.BR "%I:%M:%S %p" .
 (SU)
+(In the POSIX locale this is equivalent to
+.BR "%I:%M:%S %p" .)
 .TP
 .B %R
 The time in 24-hour notation
@@ -324,9 +326,13 @@ and
 .TP
 .B %x
 The preferred date representation for the current locale without the time.
+(In the POSIX locale this is equivalent to
+.BR %m/%d/%y .)
 .TP
 .B %X
 The preferred time representation for the current locale without the date.
+(In the POSIX locale this is equivalent to
+.BR %H:%M:%S .)
 .TP
 .B %y
 The year as a decimal number without a century (range 00 to 99).
-- 
2.1.4

