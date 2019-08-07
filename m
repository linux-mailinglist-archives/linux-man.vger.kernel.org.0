Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 808D484B48
	for <lists+linux-man@lfdr.de>; Wed,  7 Aug 2019 14:17:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727096AbfHGMRV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Aug 2019 08:17:21 -0400
Received: from mx1.redhat.com ([209.132.183.28]:37718 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726773AbfHGMRV (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 7 Aug 2019 08:17:21 -0400
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 90093F0D03;
        Wed,  7 Aug 2019 12:17:21 +0000 (UTC)
Received: from unused-4-132.brq.redhat.com (unknown [10.43.2.25])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id E4CA1600C6;
        Wed,  7 Aug 2019 12:17:20 +0000 (UTC)
Message-ID: <6b42e1b7643304db9de9586858919eb2ae465703.camel@redhat.com>
Subject: [PATCH] resolv.conf.5: update information about search list
From:   Nikola =?ISO-8859-1?Q?Forr=F3?= <nforro@redhat.com>
Reply-To: nforro@redhat.com
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Date:   Wed, 07 Aug 2019 14:17:19 +0200
Organization: Red Hat
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Wed, 07 Aug 2019 12:17:21 +0000 (UTC)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reference:
https://sourceware.org/git/?p=glibc.git;a=commitdiff;h=3f853f22c87f0b671c0366eb290919719fa56c0e

Signed-off-by: Nikola Forró <nforro@redhat.com>
---
 man5/resolv.conf.5 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
index 57f0a13df..c500864d1 100644
--- a/man5/resolv.conf.5
+++ b/man5/resolv.conf.5
@@ -104,8 +104,10 @@ traffic if the servers for the listed domains are not local,
 and that queries will time out if no server is available
 for one of the domains.
 .IP
-The search list is currently limited to six domains
+In glibc 2.25 and earlier, the search list is limited to six domains
 with a total of 256 characters.
+.\" commit 3f853f22c87f0b671c0366eb290919719fa56c0e
+Since glibc 2.26, the search list is unlimited.
 .TP
 \fBsortlist\fP
 This option allows addresses returned by
-- 
2.21.0


