Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BB1CD65754
	for <lists+linux-man@lfdr.de>; Thu, 11 Jul 2019 14:53:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728469AbfGKMxf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Jul 2019 08:53:35 -0400
Received: from mx1.redhat.com ([209.132.183.28]:48378 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728327AbfGKMxf (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 11 Jul 2019 08:53:35 -0400
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 1F2DB308FC23;
        Thu, 11 Jul 2019 12:53:35 +0000 (UTC)
Received: from ovpn-204-129.brq.redhat.com (ovpn-204-129.brq.redhat.com [10.40.204.129])
        by smtp.corp.redhat.com (Postfix) with ESMTP id 2B24E60A98;
        Thu, 11 Jul 2019 12:53:31 +0000 (UTC)
From:   Michal Sekletar <msekleta@redhat.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Michal Sekletar <msekleta@redhat.com>,
        Oleg Nesterov <oleg@redhat.com>,
        Lennart Poettering <lennart@poettering.net>
Subject: [PATCH] signal.7: clarify that siginfo_t isn't changed on coalescing
Date:   Thu, 11 Jul 2019 14:53:24 +0200
Message-Id: <20190711125324.4740-1-msekleta@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]); Thu, 11 Jul 2019 12:53:35 +0000 (UTC)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Cc: Oleg Nesterov <oleg@redhat.com>
Cc: Lennart Poettering <lennart@poettering.net>

Signed-off-by: Michal Sekletar <msekleta@redhat.com>
---
 man7/signal.7 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man7/signal.7 b/man7/signal.7
index 0501fefc5..14c846699 100644
--- a/man7/signal.7
+++ b/man7/signal.7
@@ -426,6 +426,11 @@ Real-time signals are distinguished by the following:
 Multiple instances of real-time signals can be queued.
 By contrast, if multiple instances of a standard signal are delivered
 while that signal is currently blocked, then only one instance is queued.
+Note that the
+.I siginfo_t
+structure associated with the signal already in queue is not overwritten
+on arrival of subsequent instances of the same signal hence the process would
+receive metadata associated with the first instance of the signal.
 .IP 2. 4
 If the signal is sent using
 .BR sigqueue (3),
-- 
2.21.0

