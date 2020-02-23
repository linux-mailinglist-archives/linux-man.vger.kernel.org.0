Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B8988169A4F
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2020 22:41:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727156AbgBWVlo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Feb 2020 16:41:44 -0500
Received: from outpost.hi.is ([130.208.165.166]:35962 "EHLO outpost.hi.is"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726678AbgBWVlo (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 23 Feb 2020 16:41:44 -0500
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by outpost.hi.is (8.14.7/8.14.7) with ESMTP id 01NLU4kF001065
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2020 21:30:04 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 outpost.hi.is 01NLU4kF001065
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 01NLU16f022889
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sun, 23 Feb 2020 21:30:01 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 01NLU16f022889
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 01NLU164002148;
        Sun, 23 Feb 2020 21:30:01 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 01NLU12V002147;
        Sun, 23 Feb 2020 21:30:01 GMT
Date:   Sun, 23 Feb 2020 21:30:01 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man5/elf.5: srcfix: Correct the misuse of two-fonts macros
Message-ID: <20200223213001.GA1982@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Changes are based on the latest (23th Februar 2020) revision of my
local git repository.

  Correct the misuse of a two-font macro, which function is to

1) use the first font for each odd numbered argument and the second
font for all others.

2) join the arguments without an intervening space.

  There is no change in the output.

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man5/elf.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/elf.5 b/man5/elf.5
index f32df19e8..ffaca8549 100644
--- a/man5/elf.5
+++ b/man5/elf.5
@@ -2145,7 +2145,7 @@ The extensions for
 .IR e_phnum ,
 .I e_shnum
 and
-.IR e_shstrndx
+.I e_shstrndx
 respectively are
 Linux extensions.
 Sun, BSD and AMD64 also support them; for further information,
-- 
2.25.0
