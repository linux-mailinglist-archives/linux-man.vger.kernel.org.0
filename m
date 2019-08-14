Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B92898E0EF
	for <lists+linux-man@lfdr.de>; Thu, 15 Aug 2019 00:41:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728742AbfHNWlN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Aug 2019 18:41:13 -0400
Received: from inpost.hi.is ([130.208.165.62]:56790 "EHLO inpost.hi.is"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725895AbfHNWlN (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 14 Aug 2019 18:41:13 -0400
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id x7EMfAvI013330
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Wed, 14 Aug 2019 22:41:11 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is x7EMfAvI013330
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id x7EMfAH3013762;
        Wed, 14 Aug 2019 22:41:10 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id x7EMfAPx013761;
        Wed, 14 Aug 2019 22:41:10 GMT
Date:   Wed, 14 Aug 2019 22:41:10 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man8/ld.so.8: srcfix: Correct the misuse of a two-font macro
Message-ID: <20190814224110.GA13717@rhi.hi.is>
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

  Changes are based on the latest (day month year UTC) revision of my
local git repository.

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man8/ld.so.8 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man8/ld.so.8 b/man8/ld.so.8
index f94053f77..c0816be7c 100644
--- a/man8/ld.so.8
+++ b/man8/ld.so.8
@@ -199,13 +199,13 @@ The objects in
 .I list
 are delimited by colons or spaces.
 The objects are preloaded as explained in the description of the
-.BR LD_PRELOAD
+.B LD_PRELOAD
 environment variable below.
 .IP
 By contrast with
 .BR LD_PRELOAD ,
 the
-.BR \-\-preload
+.B \-\-preload
 option provides a way to perform preloading for a single executable
 without affecting preloading performed in any child process that executes
 a new program.
@@ -389,7 +389,7 @@ and these are handled in the following order:
 .RS
 .IP (1) 4
 The
-.BR LD_PRELOAD
+.B LD_PRELOAD
 environment variable.
 .IP (2)
 The
-- 
2.23.0.rc1
