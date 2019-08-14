Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A7F4F8DFA7
	for <lists+linux-man@lfdr.de>; Wed, 14 Aug 2019 23:15:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727516AbfHNVPc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Aug 2019 17:15:32 -0400
Received: from inpost.hi.is ([130.208.165.62]:56040 "EHLO inpost.hi.is"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726704AbfHNVPb (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 14 Aug 2019 17:15:31 -0400
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id x7ELFROW012758
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Wed, 14 Aug 2019 21:15:27 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is x7ELFROW012758
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id x7ELFRed009953;
        Wed, 14 Aug 2019 21:15:27 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id x7ELFRwB009952;
        Wed, 14 Aug 2019 21:15:27 GMT
Date:   Wed, 14 Aug 2019 21:15:27 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man5/elf.5: srcfix: Fix the misuse of a two-font macro
Message-ID: <20190814211527.GA9921@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Correct the misuse of a two-font macro, which function is to

1) use the first font for the odd numbered arguments and the second
font for the even numbered arguments

2) join the arguments without an intervening space.

  Changes are based on the latest (14th August 2019 UTC) revision of my
local git repository.

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man5/elf.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/elf.5 b/man5/elf.5
index bc39b1058..2a31457f3 100644
--- a/man5/elf.5
+++ b/man5/elf.5
@@ -786,7 +786,7 @@ A text segment commonly has the flags
 and
 .BR PF_R .
 A data segment commonly has
-.BR PF_W
+.B PF_W
 and
 .BR PF_R .
 .TP
-- 
2.23.0.rc1
