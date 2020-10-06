Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7691284FC1
	for <lists+linux-man@lfdr.de>; Tue,  6 Oct 2020 18:22:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725947AbgJFQWu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Oct 2020 12:22:50 -0400
Received: from p3plsmtpa07-05.prod.phx3.secureserver.net ([173.201.192.234]:53779
        "EHLO p3plsmtpa07-05.prod.phx3.secureserver.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725925AbgJFQWu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Oct 2020 12:22:50 -0400
X-Greylist: delayed 438 seconds by postgrey-1.27 at vger.kernel.org; Tue, 06 Oct 2020 12:22:50 EDT
Received: from cryptic.localdomain ([136.37.146.167])
        by :SMTPAUTH: with ESMTPA
        id PpcZkMlBmls90PpchkOhXJ; Tue, 06 Oct 2020 09:15:32 -0700
X-CMAE-Analysis: v=2.3 cv=QfEYQfTv c=1 sm=1 tr=0
 a=TsmjI60m2QFRQgApcU2BKg==:117 a=TsmjI60m2QFRQgApcU2BKg==:17 a=D19gQVrFAAAA:8
 a=NbHB2C0EAAAA:8 a=-rtPxCz8oH_RphZWKCsA:9 a=JZBxSqCIBzwA:10
 a=W4TVW4IDbPiebHqcZpNg:22
X-SECURESERVER-ACCT: nate@karstens.us
From:   Nate Karstens <nate.karstens@garmin.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        willy@infradead.org, Nate Karstens <nate.karstens@garmin.com>
Subject: [PATCH] system.3: Indicate MT-Unsafe
Date:   Tue,  6 Oct 2020 11:15:20 -0500
Message-Id: <20201006161520.975-1-nate.karstens@garmin.com>
X-Mailer: git-send-email 2.17.1
X-CMAE-Envelope: MS4wfP8A/TaHl6m5zBhZr2REc5pGsH/UYyZ+FNMFRcyY4Wec7MVZMX/fDJ5k5me6Se9i0/iK5zJPzF+KZ1FFyXSZrtDkYrxQUNReECPA0F7y4klSSDsmkUp/
 zToKv4wZ3ezAubf5YnXX/bfKzlS6vPvvOt86VOwY/gib4n649RksAtVk25GqS62DtRAY5aYzGw3ZNWoSpYfSCaeXfI+1+w/brWWwfSzRyh4UN2JrDCAK1a+I
 m1D1CKI14kds2bvPpoYNCkz4YSblWJkcXZbfzGSJBptl48rD8dvyebIBUNHCEX3puKkVu1BcleeGC40zLnMxT2aB55aTYNxfUAj8+wKE1NI=
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The fact that system(3) does not support pthread_atfork(3) also means
that it is not thread safe. See the discussion for the proposal of a
close-on-fork flag in the 2020 April and May timeframe, especially:

https://lkml.org/lkml/2020/5/15/1067

Signed-off-by: Nate Karstens <nate.karstens@garmin.com>
---
 man3/system.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/system.3 b/man3/system.3
index aef40417a..8730fabd3 100644
--- a/man3/system.3
+++ b/man3/system.3
@@ -127,7 +127,7 @@ l l l.
 Interface	Attribute	Value
 T{
 .BR system ()
-T}	Thread safety	MT-Safe
+T}	Thread safety	MT-Unsafe
 .TE
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, C89, C99.
-- 
2.17.1

