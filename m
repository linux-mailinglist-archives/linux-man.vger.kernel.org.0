Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5525A15DAF7
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2020 16:29:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387616AbgBNP3B convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Fri, 14 Feb 2020 10:29:01 -0500
Received: from us-smtp-2.mimecast.com ([205.139.110.61]:53210 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S2387398AbgBNP3B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Feb 2020 10:29:01 -0500
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-166-3eye0dwuPae6OOV-CjRT6g-1; Fri, 14 Feb 2020 10:28:58 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CA29610753F4;
        Fri, 14 Feb 2020 15:28:57 +0000 (UTC)
Received: from asgard.redhat.com (ovpn-112-64.ams2.redhat.com [10.36.112.64])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 9967D5DA7D;
        Fri, 14 Feb 2020 15:28:56 +0000 (UTC)
Date:   Fri, 14 Feb 2020 16:28:54 +0100
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] strftime.3: ffix
Message-ID: <b7ec330b0328781791b4d85962cebfd674fd652b.1581693625.git.evgsyr@gmail.com>
References: <cover.1581693624.git.evgsyr@gmail.com>
MIME-Version: 1.0
In-Reply-To: <cover.1581693624.git.evgsyr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: 3eye0dwuPae6OOV-CjRT6g-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: 8BIT
Content-Disposition: inline
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* man3/strftime.3 (%s): Format "mktime" with .B and not .I.

Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
---
 man3/strftime.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/strftime.3 b/man3/strftime.3
index d6e6e34..62b77bf 100644
--- a/man3/strftime.3
+++ b/man3/strftime.3
@@ -255,7 +255,7 @@ below.
 .B %s
 The number of seconds since the Epoch, 1970-01-01 00:00:00 +0000 (UTC). (TZ)
 (Calculated from
-.IR mktime(tm) .)
+.BR mktime ( \fItm\fR ).)
 .TP
 .B %S
 The second as a decimal number (range 00 to 60).
-- 
2.1.4

