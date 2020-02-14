Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DF12B15DAF6
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2020 16:29:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387629AbgBNP3B convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Fri, 14 Feb 2020 10:29:01 -0500
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:45593 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S2387621AbgBNP3B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Feb 2020 10:29:01 -0500
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-259-o9Q5-KeuM6KRMvs5CaE7Zw-1; Fri, 14 Feb 2020 10:28:56 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2BDB5800D4E;
        Fri, 14 Feb 2020 15:28:54 +0000 (UTC)
Received: from asgard.redhat.com (ovpn-112-64.ams2.redhat.com [10.36.112.64])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id E861919C4F;
        Fri, 14 Feb 2020 15:28:52 +0000 (UTC)
Date:   Fri, 14 Feb 2020 16:28:50 +0100
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] nl_langinfo.3: document era-related locale elements
Message-ID: <75355e111c4f5bb5f2f0034b0aa02eae71b9cc0b.1581693625.git.evgsyr@gmail.com>
References: <cover.1581693624.git.evgsyr@gmail.com>
MIME-Version: 1.0
In-Reply-To: <cover.1581693624.git.evgsyr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: o9Q5-KeuM6KRMvs5CaE7Zw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: 8BIT
Content-Disposition: inline
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Information is mostly taken from POSIX[1], GNU C Library documentation[2],
glibc strftime implementation[3], and Japanese locale definition[4].

[1] https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap07.html#tag_07_03_05_02
[2] https://www.gnu.org/software/libc/manual/html_node/The-Elegant-and-Fast-Way.html
[3] https://sourceware.org/git/?p=glibc.git;a=blob;f=time/strftime_l.c
[4] https://sourceware.org/git/?p=glibc.git;a=blob;f=localedata/locales/ja_JP

* man3/nl_langinfo.3 (.SH DESCRIPTION): Add information about ERA,
ERA_D_T_FMT, ERA_D_FMT, and ERA_T_FMT locale elements.

Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
---
 man3/nl_langinfo.3 | 84 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 84 insertions(+)

diff --git a/man3/nl_langinfo.3 b/man3/nl_langinfo.3
index e16b094..3c4541a 100644
--- a/man3/nl_langinfo.3
+++ b/man3/nl_langinfo.3
@@ -119,6 +119,90 @@ to represent a time in a.m. or p.m. notation a locale-specific way
 .RB ( %r
 conversion specification).
 .TP
+.BR ERA \ (LC_TIME)
+Return era description, that contains information how years are counted
+and displayed for each era in a locale.
+Each era description segment shall have the format:
+.RS
+.IP
+.IR direction : offset : start_date : end_date : era_name : era_format
+.RE
+.IP
+according to the definitions below:
+.RS
+.TP 12
+.I direction
+Either a
+.RB \[dq] + "\[dq] or a \[dq]" - \[dq]
+character.
+The
+.RB \[dq] + \[dq]
+means that years increase from the
+.I start_date
+towards the
+.IR end_date ,
+.RB \[dq] - \[dq]
+means the opposite.
+.TP
+.I offset
+The epoch year of the
+.IR start_date .
+.TP
+.I start_date
+A date in the form
+.IR yyyy / mm / dd ,
+where
+.IR yyyy ", " mm ", and " dd
+are the year, month, and day numbers respectively of the start of the era.
+.TP
+.I end_date
+The ending date of the era, in the same format as the
+.IR start_date ,
+or one of the two special values
+.RB \[dq] -* \[dq]
+(minus infinity) or
+.RB \[dq] +* \[dq]
+(plus infinity).
+.TP
+.I era_name
+The name of the era, corresponding to the
+.B %EC
+.BR strftime (3)
+conversion specification.
+.TP
+.I era_format
+The format of the year in the era, corresponding to the
+.B %EY
+.BR strftime (3)
+conversion specification.
+.RE
+.IP
+Era description segments are separated by semicolons.
+Most locales do not define this value.
+Examples of locales that do define this value are the Japanese and the Thai
+locales.
+.TP
+.BR ERA_D_T_FMT \ (LC_TIME)
+Return a string that can be used as a format string for
+.BR strftime (3)
+for alternative representation of time and date in a locale-specific way
+.RB ( %Ec
+conversion specification).
+.TP
+.BR ERA_D_FMT \ (LC_TIME)
+Return a string that can be used as a format string for
+.BR strftime (3)
+for alternative representation of a date in a locale-specific way
+.RB ( %Ex
+conversion specification).
+.TP
+.BR ERA_T_FMT \ (LC_TIME)
+Return a string that can be used as a format string for
+.BR strftime (3)
+for alternative representation of a time in a locale-specific way
+.RB ( %EX
+conversion specification).
+.TP
 .BR DAY_ "{1\(en7} (LC_TIME)"
 Return name of the \fIn\fP-th day of the week. [Warning: this follows
 the US convention DAY_1 = Sunday, not the international convention
-- 
2.1.4

