Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E846A15DAFE
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2020 16:31:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729380AbgBNPbx convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Fri, 14 Feb 2020 10:31:53 -0500
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:22119 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1729294AbgBNPbx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Feb 2020 10:31:53 -0500
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-302-l4k7BCSeMamiL-wOfPrd6w-1; Fri, 14 Feb 2020 10:31:48 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DE9E08017CC;
        Fri, 14 Feb 2020 15:31:47 +0000 (UTC)
Received: from asgard.redhat.com (ovpn-112-64.ams2.redhat.com [10.36.112.64])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id D7BF35C1C3;
        Fri, 14 Feb 2020 15:31:46 +0000 (UTC)
Date:   Fri, 14 Feb 2020 16:31:44 +0100
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] filesystems.5: tfix
Message-ID: <20200214153144.GA12549@asgard.redhat.com>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: l4k7BCSeMamiL-wOfPrd6w-1
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
 man5/filesystems.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/filesystems.5 b/man5/filesystems.5
index 51c757d..4882810 100644
--- a/man5/filesystems.5
+++ b/man5/filesystems.5
@@ -61,7 +61,7 @@ it; see
 and
 .BR mount (8).
 .PP
-iThe following list provides a
+The following list provides a
 short description of the available or historically available
 filesystems in the Linux kernel.
 See the kernel documentation for a comprehensive
-- 
2.1.4

