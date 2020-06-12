Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CF4C1F723E
	for <lists+linux-man@lfdr.de>; Fri, 12 Jun 2020 04:34:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726321AbgFLCeY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Jun 2020 22:34:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726305AbgFLCeY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Jun 2020 22:34:24 -0400
X-Greylist: delayed 703 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 11 Jun 2020 19:34:23 PDT
Received: from outpost.hi.is (outpost.hi.is [IPv6:2a00:c88:4000:1650::165:166])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5BCBC03E96F
        for <linux-man@vger.kernel.org>; Thu, 11 Jun 2020 19:34:23 -0700 (PDT)
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by outpost.hi.is (8.14.7/8.14.7) with ESMTP id 05C2MfFx014125
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
        for <linux-man@vger.kernel.org>; Fri, 12 Jun 2020 02:22:41 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 outpost.hi.is 05C2MfFx014125
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 05C2MWDe028324
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Fri, 12 Jun 2020 02:22:32 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 05C2MWDe028324
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 05C2MVgC014616;
        Fri, 12 Jun 2020 02:22:31 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 05C2MVrs014615;
        Fri, 12 Jun 2020 02:22:31 GMT
Date:   Fri, 12 Jun 2020 02:22:31 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] time.1: ffix: correct a three-fonts line in SYNOPSIS
Message-ID: <20200612022231.GA14582@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  The current version shows the square brackets, '[' and ']', in
boldface.

  Use the '\c' escape sequence (function) to join the output of two
macros.

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man1/time.1 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man1/time.1 b/man1/time.1
index d9a9717e0..f274aa9d8 100644
--- a/man1/time.1
+++ b/man1/time.1
@@ -10,7 +10,8 @@
 .SH NAME
 time \- time a simple command or give resource usage
 .SH SYNOPSIS
-.BI "time [" options "] " command " [" arguments... "] "
+.B time \c
+.RI [ options ] " command " [ arguments... ]
 .SH DESCRIPTION
 The
 .B time
-- 
2.26.2
