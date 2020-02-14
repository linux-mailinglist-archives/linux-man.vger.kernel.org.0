Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0ABD015DAF4
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2020 16:29:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387600AbgBNP26 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Fri, 14 Feb 2020 10:28:58 -0500
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:33073 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S2387398AbgBNP26 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Feb 2020 10:28:58 -0500
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-404-lz9ofj4YPx21-FnTP0GmDw-1; Fri, 14 Feb 2020 10:28:51 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 59ACF8010D0;
        Fri, 14 Feb 2020 15:28:50 +0000 (UTC)
Received: from asgard.redhat.com (ovpn-112-64.ams2.redhat.com [10.36.112.64])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 6FB765C1C3;
        Fri, 14 Feb 2020 15:28:49 +0000 (UTC)
Date:   Fri, 14 Feb 2020 16:28:47 +0100
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] nl_langinfo.3: add information about AM/PM time format
 locale elements
Message-ID: <a456ce1e9483a914e1c2a9fde126de0130fd578c.1581693625.git.evgsyr@gmail.com>
References: <cover.1581693624.git.evgsyr@gmail.com>
MIME-Version: 1.0
In-Reply-To: <cover.1581693624.git.evgsyr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: lz9ofj4YPx21-FnTP0GmDw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: 8BIT
Content-Disposition: inline
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* man3/nl_langinfo.3 (.SH DESCRIPTION): Add description for AM_STR,
PM_STR, T_FMT_AMPM locale elements.

Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
---
 man3/nl_langinfo.3 | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/man3/nl_langinfo.3 b/man3/nl_langinfo.3
index ecc1954..e16b094 100644
--- a/man3/nl_langinfo.3
+++ b/man3/nl_langinfo.3
@@ -96,6 +96,29 @@ to represent a time in a locale-specific way
 .RB ( %X
 conversion specification).
 .TP
+.BR AM_STR \ (LC_TIME)
+Return a string that represents affix for ante meridiem (before noon, "AM")
+time.
+(Used in
+.B %p
+.BR strftime (3)
+conversion specification.)
+.TP
+.BR PM_STR \ (LC_TIME)
+Return a string that represents affix for post meridiem (before midnight, "PM")
+time.
+(Used in
+.B %p
+.BR strftime (3)
+conversion specification.)
+.TP
+.BR T_FMT_AMPM \ (LC_TIME)
+Return a string that can be used as a format string for
+.BR strftime (3)
+to represent a time in a.m. or p.m. notation a locale-specific way
+.RB ( %r
+conversion specification).
+.TP
 .BR DAY_ "{1\(en7} (LC_TIME)"
 Return name of the \fIn\fP-th day of the week. [Warning: this follows
 the US convention DAY_1 = Sunday, not the international convention
-- 
2.1.4

