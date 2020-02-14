Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 74D1515DAF5
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2020 16:29:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387605AbgBNP27 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Fri, 14 Feb 2020 10:28:59 -0500
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:22607 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S2387398AbgBNP27 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Feb 2020 10:28:59 -0500
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-87-dI98rRfHOvWNihxRf9PbDw-1; Fri, 14 Feb 2020 10:28:48 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EC5F2189F76D;
        Fri, 14 Feb 2020 15:28:46 +0000 (UTC)
Received: from asgard.redhat.com (ovpn-112-64.ams2.redhat.com [10.36.112.64])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id C1F405DA7D;
        Fri, 14 Feb 2020 15:28:45 +0000 (UTC)
Date:   Fri, 14 Feb 2020 16:28:43 +0100
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] nl_langinfo.3: mention the respective strftime conversion
 specifications
Message-ID: <d36e8402f69fc6d8b58d5441cc767a168bb3a155.1581693625.git.evgsyr@gmail.com>
References: <cover.1581693624.git.evgsyr@gmail.com>
MIME-Version: 1.0
In-Reply-To: <cover.1581693624.git.evgsyr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: dI98rRfHOvWNihxRf9PbDw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Content-Disposition: inline
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* man3/nl_langinfo.3 (D_T_FMT, D_FMT, T_FMT, DAY_{1–7}, ABDAY_{1–7},
MON_{1–12}, ABMON_{1–12}): Mention the respective strftime(3) conversion
specifications.

Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
---
 man3/nl_langinfo.3 | 28 +++++++++++++++++++++++++---
 1 file changed, 25 insertions(+), 3 deletions(-)

diff --git a/man3/nl_langinfo.3 b/man3/nl_langinfo.3
index 8c0742f..ecc1954 100644
--- a/man3/nl_langinfo.3
+++ b/man3/nl_langinfo.3
@@ -78,31 +78,53 @@ try "locale \-m" (see
 .BR D_T_FMT \ (LC_TIME)
 Return a string that can be used as a format string for
 .BR strftime (3)
-to represent time and date in a locale-specific way.
+to represent time and date in a locale-specific way
+.RB ( %c
+conversion specification).
 .TP
 .BR D_FMT \ (LC_TIME)
 Return a string that can be used as a format string for
 .BR strftime (3)
-to represent a date in a locale-specific way.
+to represent a date in a locale-specific way
+.RB ( %x
+conversion specification).
 .TP
 .BR T_FMT \ (LC_TIME)
 Return a string that can be used as a format string for
 .BR strftime (3)
-to represent a time in a locale-specific way.
+to represent a time in a locale-specific way
+.RB ( %X
+conversion specification).
 .TP
 .BR DAY_ "{1\(en7} (LC_TIME)"
 Return name of the \fIn\fP-th day of the week. [Warning: this follows
 the US convention DAY_1 = Sunday, not the international convention
 (ISO 8601) that Monday is the first day of the week.]
+(Used in
+.B %A
+.BR strftime (3)
+conversion specification.)
 .TP
 .BR ABDAY_ "{1\(en7} (LC_TIME)"
 Return abbreviated name of the \fIn\fP-th day of the week.
+(Used in
+.B %a
+.BR strftime (3)
+conversion specification.)
 .TP
 .BR MON_ "{1\(en12} (LC_TIME)"
 Return name of the \fIn\fP-th month.
+(Used in
+.B %B
+.BR strftime (3)
+conversion specification.)
 .TP
 .BR ABMON_ "{1\(en12} (LC_TIME)"
 Return abbreviated name of the \fIn\fP-th month.
+(Used in
+.B %b
+.BR strftime (3)
+conversion specification.)
 .TP
 .BR RADIXCHAR \ (LC_NUMERIC)
 Return radix character (decimal dot, decimal comma, etc.).
-- 
2.1.4

