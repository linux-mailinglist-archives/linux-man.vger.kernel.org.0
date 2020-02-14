Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C18A715DB2A
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2020 16:39:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729498AbgBNPjR convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Fri, 14 Feb 2020 10:39:17 -0500
Received: from us-smtp-1.mimecast.com ([205.139.110.61]:28799 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1729439AbgBNPjQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Feb 2020 10:39:16 -0500
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-86-6Bjj3A2MPE-0vgxF8IHnpQ-1; Fri, 14 Feb 2020 10:39:12 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 40B0C8017CC;
        Fri, 14 Feb 2020 15:39:11 +0000 (UTC)
Received: from asgard.redhat.com (ovpn-112-64.ams2.redhat.com [10.36.112.64])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 62AEF5C1C3;
        Fri, 14 Feb 2020 15:39:10 +0000 (UTC)
Date:   Fri, 14 Feb 2020 16:39:08 +0100
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] syscalls.2: ffix (trying to fit the table into 80 columns)
Message-ID: <20200214153908.GA22244@asgard.redhat.com>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: 6Bjj3A2MPE-0vgxF8IHnpQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: 8BIT
Content-Disposition: inline
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* man2/syscalls.2 (.SH DESCRIPTION) <\fBgetdtablesize\fP(2)>: Remove "since
Linux 2.0" part for the osf_getdtablesize note, as syscall is generally
available since Linux 2.0; add line break after the word "as".
(.SH DESCRIPTION) <\fBpwrite\fP(2)>: Add line breaks.
(.SH DESCRIPTION) <\fBvm86old\fP(2)>: Add a line break after "in".

Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
---
 man2/syscalls.2 | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/man2/syscalls.2 b/man2/syscalls.2
index 637ad2c..22ec394 100644
--- a/man2/syscalls.2
+++ b/man2/syscalls.2
@@ -335,7 +335,8 @@ T}
 \fBgetdtablesize\fP(2)	2.0	T{
 SPARC (removed in 2.6.26),
 .br
-available since Linux 2.0 on Alpha as
+available on Alpha as
+.br
 \fBosf_getdtablesize\fP(2)
 T}
 \fBgetegid\fP(2)	1.0
@@ -569,10 +570,15 @@ T}
 .\" Implements \fBpselect\fP(2)
 \fBptrace\fP(2)	1.0
 \fBpwrite\fP(2)		T{
-Used for \fBpwrite64\fP(2) on AVR32
-(port removed in Linux 4.12)
-and Blackfin (port removed
-in Linux 4.17)
+Used for \fBpwrite64\fP(2)
+.br
+on AVR32
+(port removed
+.br
+in Linux 4.12)
+and Blackfin
+.br
+(port removed in Linux 4.17)
 T}
 \fBpwrite64\fP(2)		T{
 Added as "pwrite" in 2.2;
@@ -823,6 +829,7 @@ T}
 \fBvhangup\fP(2)	1.0
 \fBvm86old\fP(2)	1.0	T{
 Was "vm86"; renamed in
+.br
 2.0.28/2.2
 T}
 \fBvm86\fP(2)	2.0.28; 2.2
-- 
2.1.4

