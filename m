Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 869EDD4D1E
	for <lists+linux-man@lfdr.de>; Sat, 12 Oct 2019 07:13:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726671AbfJLFNr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Oct 2019 01:13:47 -0400
Received: from 3.mo5.mail-out.ovh.net ([46.105.40.108]:55807 "EHLO
        3.mo5.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726177AbfJLFNr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Oct 2019 01:13:47 -0400
X-Greylist: delayed 27602 seconds by postgrey-1.27 at vger.kernel.org; Sat, 12 Oct 2019 01:13:46 EDT
Received: from player718.ha.ovh.net (unknown [10.108.35.131])
        by mo5.mail-out.ovh.net (Postfix) with ESMTP id ECD172529F7
        for <linux-man@vger.kernel.org>; Fri, 11 Oct 2019 22:58:17 +0200 (CEST)
Received: from jwilk.net (user-5-173-40-116.play-internet.pl [5.173.40.116])
        (Authenticated sender: jwilk@jwilk.net)
        by player718.ha.ovh.net (Postfix) with ESMTPSA id 15F84ACE3FAF;
        Fri, 11 Oct 2019 20:58:15 +0000 (UTC)
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] mount_namespaces.7: tfix
Date:   Fri, 11 Oct 2019 22:58:11 +0200
Message-Id: <20191011205811.3214-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 17071175864565421949
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrieehgdduheejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenuc
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Remove duplicated word.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man7/mount_namespaces.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/mount_namespaces.7 b/man7/mount_namespaces.7
index 2447e3067..5c5d3f6c0 100644
--- a/man7/mount_namespaces.7
+++ b/man7/mount_namespaces.7
@@ -1097,7 +1097,7 @@ An application that creates a new mount namespace directly using
 or
 .BR unshare (2)
 may desire to prevent propagation of mount events to other mount namespaces
-(as is is done by
+(as is done by
 .BR unshare (1)).
 This can be done by changing the propagation type of
 mount points in the new namespace to either
-- 
2.23.0

