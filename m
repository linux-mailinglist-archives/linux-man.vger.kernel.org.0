Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5ABBF21167D
	for <lists+linux-man@lfdr.de>; Thu,  2 Jul 2020 01:12:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726395AbgGAXMW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Jul 2020 19:12:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726312AbgGAXMV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Jul 2020 19:12:21 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BBE5C08C5C1
        for <linux-man@vger.kernel.org>; Wed,  1 Jul 2020 16:12:20 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 061NCIu4022545
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Wed, 1 Jul 2020 23:12:18 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 061NCIu4022545
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 061NCIgk028055;
        Wed, 1 Jul 2020 23:12:18 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 061NCIHg028054;
        Wed, 1 Jul 2020 23:12:18 GMT
Date:   Wed, 1 Jul 2020 23:12:18 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man5/*: ffix, change '-' to '\-' for options
Message-ID: <20200701231218.GA28014@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Change '-' to '\-' for the prefix of names to indicate an option.

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man5/tmpfs.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/tmpfs.5 b/man5/tmpfs.5
index 3d7fbaec5..2669317ea 100644
--- a/man5/tmpfs.5
+++ b/man5/tmpfs.5
@@ -40,7 +40,7 @@ via a command such as the following:
 .PP
 .in +4n
 .EX
-$ sudo mount \-t tmpfs -o size=10M tmpfs /mnt/mytmpfs
+$ sudo mount \-t tmpfs \-o size=10M tmpfs /mnt/mytmpfs
 .EE
 .in
 .PP
-- 
2.27.0
