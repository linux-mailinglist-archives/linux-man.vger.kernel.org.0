Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4ABCE15DAFA
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2020 16:29:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387467AbgBNP3L convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Fri, 14 Feb 2020 10:29:11 -0500
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:37034 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S2387398AbgBNP3L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Feb 2020 10:29:11 -0500
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-280-6840BZl7Mh6tbpO0jAoodg-1; Fri, 14 Feb 2020 10:29:06 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3B5B48014CA;
        Fri, 14 Feb 2020 15:29:05 +0000 (UTC)
Received: from asgard.redhat.com (ovpn-112-64.ams2.redhat.com [10.36.112.64])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 16D0890F46;
        Fri, 14 Feb 2020 15:29:03 +0000 (UTC)
Date:   Fri, 14 Feb 2020 16:29:01 +0100
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] strftime.3: refer to the relevant nl_langinfo items
Message-ID: <564214d230e0b42e93d938560ff61bb74c2c44b2.1581693625.git.evgsyr@gmail.com>
References: <cover.1581693624.git.evgsyr@gmail.com>
MIME-Version: 1.0
In-Reply-To: <cover.1581693624.git.evgsyr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: 6840BZl7Mh6tbpO0jAoodg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: 8BIT
Content-Disposition: inline
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

As it wasn't clear before where this kind of information can be
obtained from.

* man3/strftime.3 (%a, %A, %b, %B, %c, %p, %r, %x, %X): Add information
about the locale elements that can be used to retrieve the relevant
information using nl_langinfo() library call.

Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
---
 man3/strftime.3 | 65 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/man3/strftime.3 b/man3/strftime.3
index dd7dec7..20ba057 100644
--- a/man3/strftime.3
+++ b/man3/strftime.3
@@ -89,24 +89,55 @@ structure are also shown.
 The abbreviated name of the day of the week according to the current locale.
 (Calculated from
 .IR tm_wday .)
+(The specific names used in the current locale can be obtained by calling
+.BR nl_langinfo (3)
+library call with
+.BR ABDAY_ { 1 \(en 7 }
+as an argument.)
 .TP
 .B %A
 The full name of the day of the week according to the current locale.
 (Calculated from
 .IR tm_wday .)
+(The specific names used in the current locale can be obtained by calling
+.BR nl_langinfo (3)
+library call with
+.BR DAY_ { 1 \(en 7 }
+as an argument.)
 .TP
 .B %b
 The abbreviated month name according to the current locale.
 (Calculated from
 .IR tm_mon .)
+(The specific names used in the current locale can be obtained by calling
+.BR nl_langinfo (3)
+library call with
+.BR ABMON_ { 1 \(en 12 }
+as an argument.)
 .TP
 .B %B
 The full month name according to the current locale.
 (Calculated from
 .IR tm_mon .)
+(The specific names used in the current locale can be obtained by calling
+.BR nl_langinfo (3)
+library call with
+.BR MON_ { 1 \(en 12 }
+as an argument.)
 .TP
 .B %c
 The preferred date and time representation for the current locale.
+(The specific format used in the current locale can be obtained by calling
+.BR nl_langinfo (3)
+library call with
+.B D_T_FMT
+as an argument for the
+.B %c
+conversion specification, and with
+.B ERA_D_T_FMT
+for the
+.B %Ec
+conversion specification.)
 (In the POSIX locale this is equivalent to
 .BR "%a %b %e %H:%M:%S %Y" .)
 .TP
@@ -230,6 +261,12 @@ corresponding strings for the current locale.
 Noon is treated as "PM" and midnight as "AM".
 (Calculated from
 .IR tm_hour .)
+(The specific string representations used for "AM" and "PM"
+in the current locale can be obtained by calling
+.BR nl_langinfo (3)
+library call with
+.BR AM_STR " and " PM_STR ,
+respectively.)
 .TP
 .B %P
 Like
@@ -243,6 +280,11 @@ string for the current locale.
 .B %r
 The time in a.m. or p.m. notation.
 (SU)
+(The specific format used in the current locale can be obtained by calling
+.BR nl_langinfo (3)
+library call with
+.B T_FMT_AMPM
+as an argument.)
 (In the POSIX locale this is equivalent to
 .BR "%I:%M:%S %p" .)
 .TP
@@ -326,11 +368,33 @@ and
 .TP
 .B %x
 The preferred date representation for the current locale without the time.
+(The specific format used in the current locale can be obtained by calling
+.BR nl_langinfo (3)
+library call with
+.B D_FMT
+as an argument for the
+.B %x
+conversion specification, and with
+.B ERA_D_FMT
+for the
+.B %Ex
+conversion specification.)
 (In the POSIX locale this is equivalent to
 .BR %m/%d/%y .)
 .TP
 .B %X
 The preferred time representation for the current locale without the date.
+(The specific format used in the current locale can be obtained by calling
+.BR nl_langinfo (3)
+library call with
+.B T_FMT
+as an argument for the
+.B %X
+conversion specification, and with
+.B ERA_T_FMT
+for the
+.B %EX
+conversion specification.)
 (In the POSIX locale this is equivalent to
 .BR %H:%M:%S .)
 .TP
@@ -657,6 +721,7 @@ main(int argc, char *argv[])
 .BR date (1),
 .BR time (2),
 .BR ctime (3),
+.BR nl_langinfo (3),
 .BR setlocale (3),
 .BR sprintf (3),
 .BR strptime (3)
-- 
2.1.4

