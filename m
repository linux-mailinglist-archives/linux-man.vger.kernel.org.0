Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A50D21A06D
	for <lists+linux-man@lfdr.de>; Thu,  9 Jul 2020 15:03:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726347AbgGINDh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Jul 2020 09:03:37 -0400
Received: from us-smtp-1.mimecast.com ([207.211.31.81]:49811 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726320AbgGINDh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Jul 2020 09:03:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1594299816;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=vUBSNwmsRqGMPG0Mft+PLiQMFI3j8iZKllcslO2P0fE=;
        b=LZA+fNA+EQR40MDXN2GNVdNJI6ftEyi7mgMySqMvo9n0RToThc6amF3Hk/opa2BdNGt67S
        2DAsQ5eXv6xte2ocG5Y+NBcdFENrPjddVBG4hWZuZMCboyPvlY8wDa1z7CR7jTDv4jm5pL
        W33e2okB5iFH4kzMGlQ/CRuFSfl8O3c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-51-IcAxf2ysO3Okiq33MMXTvA-1; Thu, 09 Jul 2020 09:03:32 -0400
X-MC-Unique: IcAxf2ysO3Okiq33MMXTvA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EA6821081;
        Thu,  9 Jul 2020 13:03:31 +0000 (UTC)
Received: from cicero.redhat.com (unknown [10.33.36.5])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id C211779CE8;
        Thu,  9 Jul 2020 13:03:23 +0000 (UTC)
From:   Andrew Price <anprice@redhat.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, cluster-devel@redhat.com
Subject: [PATCH] lseek.2: List gfs2 support for SEEK_HOLE/SEEK_DATA
Date:   Thu,  9 Jul 2020 14:03:17 +0100
Message-Id: <20200709130317.582038-1-anprice@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Andrew Price <anprice@redhat.com>
---
 man2/lseek.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/lseek.2 b/man2/lseek.2
index a20b10431..22de446fc 100644
--- a/man2/lseek.2
+++ b/man2/lseek.2
@@ -182,6 +182,9 @@ NFS (since Linux 3.18)
 .IP *
 FUSE (since Linux 4.5)
 .\" commit 0b5da8db145bfd44266ac964a2636a0cf8d7c286
+.IP *
+GFS2 (since Linux 4.15)
+.\" commit 3a27411cb4bc3ce31db228e3569ad01b462a4310
 .SH RETURN VALUE
 Upon successful completion,
 .BR lseek ()
-- 
2.26.2

