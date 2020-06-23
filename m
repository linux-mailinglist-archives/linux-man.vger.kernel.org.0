Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7954320689B
	for <lists+linux-man@lfdr.de>; Wed, 24 Jun 2020 01:46:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387514AbgFWXqN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Jun 2020 19:46:13 -0400
Received: from gateway36.websitewelcome.com ([192.185.201.2]:35484 "EHLO
        gateway36.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1731990AbgFWXqN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Jun 2020 19:46:13 -0400
X-Greylist: delayed 1501 seconds by postgrey-1.27 at vger.kernel.org; Tue, 23 Jun 2020 19:46:13 EDT
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
        by gateway36.websitewelcome.com (Postfix) with ESMTP id 42F1540C13029
        for <linux-man@vger.kernel.org>; Tue, 23 Jun 2020 17:21:11 -0500 (CDT)
Received: from gator3278.hostgator.com ([198.57.247.242])
        by cmsmtp with SMTP
        id nrtJjZTlaSxZVnrtJjivrJ; Tue, 23 Jun 2020 17:59:45 -0500
X-Authority-Reason: nr=8
Received: from 89-69-237-178.dynamic.chello.pl ([89.69.237.178]:49926 helo=comp.lan)
        by gator3278.hostgator.com with esmtpa (Exim 4.93)
        (envelope-from <arkadiusz@drabczyk.org>)
        id 1jnrtI-000rdm-Cw; Tue, 23 Jun 2020 17:59:44 -0500
From:   Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] ld.so.8: Explain than empty entry in LD_LIBRARY_PATH means cwd
Date:   Wed, 24 Jun 2020 00:59:10 +0200
Message-Id: <20200623225910.1008-1-arkadiusz@drabczyk.org>
X-Mailer: git-send-email 2.9.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3278.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - drabczyk.org
X-BWhitelist: no
X-Source-IP: 89.69.237.178
X-Source-L: No
X-Exim-ID: 1jnrtI-000rdm-Cw
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-69-237-178.dynamic.chello.pl (comp.lan) [89.69.237.178]:49926
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 2
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

If this was ever going to change the test case is very simple:

/tmp $ touch libc.so.6
/tmp $ LD_LIBRARY_PATH=: sh
sh: error while loading shared libraries: libc.so.6: file too short

Signed-off-by: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
---
 man8/ld.so.8 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man8/ld.so.8 b/man8/ld.so.8
index 9034612..2e98b7f 100644
--- a/man8/ld.so.8
+++ b/man8/ld.so.8
@@ -319,6 +319,7 @@ A list of directories in which to search for
 ELF libraries at execution time.
 The items in the list are separated by either colons or semicolons,
 and there is no support for escaping either separator.
+A zero-length directory name indicates the current working directory.
 .IP
 This variable is ignored in secure-execution mode.
 .IP
-- 
2.9.0

