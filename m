Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 23642E88C2
	for <lists+linux-man@lfdr.de>; Tue, 29 Oct 2019 13:51:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388008AbfJ2Mvr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Oct 2019 08:51:47 -0400
Received: from iota.tcarey.uk ([138.68.159.189]:46312 "EHLO iota.tcarey.uk"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729253AbfJ2Mvr (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 29 Oct 2019 08:51:47 -0400
Received: from kappa (va185104.shef.ac.uk [143.167.185.104])
        by iota.tcarey.uk (Postfix) with ESMTPSA id C488C2311E;
        Tue, 29 Oct 2019 12:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tcarey.uk; s=iota;
        t=1572353505; bh=Tg4ICty8+BJMpFXXuIkyRHHOW6z5iNAwFDDIHb0zuSM=;
        h=Date:From:To:Cc:Subject:From;
        b=sfyExtPrTGkVTRZekVotJPTYZ3wiYfL0r5JtaFgo4dkQoAYZn54TCaWh4KacQx1V3
         hs581MvkbEIlGlZW4iL2jVpX2ovSZTLAHrwqCrMFFy+yGaD64yN0mgI5dYuDKA46nI
         1ptUp5Da0tIVOPigTP0K1px9RkEpf8wkZKi8WN8m0hicnaMdza/Bl2oM9otL1M3LEZ
         nqhKlLsra3LzsWA48Ot4cquyXeQHm8K9KokGq24BFN5U5Tm0k+7PvLd+JQvC6xpMO6
         bKDsD2SguMT+yaG+nuCWE+ji91Ih6aYHMwZewVkeA3bxUniXF3zQlucN64EZXbcagm
         O6cBssGQD4V4A==
Date:   Tue, 29 Oct 2019 12:51:44 +0000
From:   Torin Carey <torin@tcarey.uk>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] unix.7: tfix
Message-ID: <20191029125142.GA17313@kappa>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

In the given example, the second recvmsg(2) call should receive four bytes,
as the third sendmsg(2) call only sends four.
---
 man7/unix.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/unix.7 b/man7/unix.7
index a9d54c8c0..bdd5091d1 100644
--- a/man7/unix.7
+++ b/man7/unix.7
@@ -566,7 +566,7 @@ The first call will receive five bytes of data,
 along with the ancillary data sent by the second
 .BR sendmsg (2)
 call.
-The next call will receive the remaining five bytes of data.
+The next call will receive the remaining four bytes of data.
 .PP
 If the space allocated for receiving incoming ancillary data is too small
 then the ancillary data is truncated to the number of headers
-- 
2.20.1

