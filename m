Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 396E115DAFF
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2020 16:32:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729392AbgBNPcL convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Fri, 14 Feb 2020 10:32:11 -0500
Received: from us-smtp-1.mimecast.com ([207.211.31.81]:31123 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1729294AbgBNPcL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Feb 2020 10:32:11 -0500
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-61-57OrQqqTOF6xHq7Kx87Y8w-1; Fri, 14 Feb 2020 10:32:02 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ED198107B7D7;
        Fri, 14 Feb 2020 15:32:00 +0000 (UTC)
Received: from asgard.redhat.com (ovpn-112-64.ams2.redhat.com [10.36.112.64])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id D0A87867F0;
        Fri, 14 Feb 2020 15:31:59 +0000 (UTC)
Date:   Fri, 14 Feb 2020 16:31:57 +0100
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] syscalls.2: tfix
Message-ID: <20200214153157.GA12782@asgard.redhat.com>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: 57OrQqqTOF6xHq7Kx87Y8w-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: 8BIT
Content-Disposition: inline
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
---
 man2/syscalls.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/syscalls.2 b/man2/syscalls.2
index 02662c0..637ad2c 100644
--- a/man2/syscalls.2
+++ b/man2/syscalls.2
@@ -577,7 +577,7 @@ T}
 \fBpwrite64\fP(2)		T{
 Added as "pwrite" in 2.2;
 .br
-renamed "pwrite64" in 2.6
+renamed to "pwrite64" in 2.6
 T}
 \fBpwritev\fP(2)	2.6.30
 \fBpwritev2\fP(2)	4.6
-- 
2.1.4

