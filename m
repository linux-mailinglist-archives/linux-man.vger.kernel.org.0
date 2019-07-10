Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 76FF964C5A
	for <lists+linux-man@lfdr.de>; Wed, 10 Jul 2019 20:43:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727222AbfGJSnh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Jul 2019 14:43:37 -0400
Received: from 10.mo4.mail-out.ovh.net ([188.165.33.109]:52530 "EHLO
        10.mo4.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727973AbfGJSnf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Jul 2019 14:43:35 -0400
X-Greylist: delayed 4539 seconds by postgrey-1.27 at vger.kernel.org; Wed, 10 Jul 2019 14:43:34 EDT
Received: from player787.ha.ovh.net (unknown [10.109.146.211])
        by mo4.mail-out.ovh.net (Postfix) with ESMTP id 4BCFB1FB9EF
        for <linux-man@vger.kernel.org>; Wed, 10 Jul 2019 19:27:54 +0200 (CEST)
Received: from jwilk.net (ip-5-172-255-35.free.aero2.net.pl [5.172.255.35])
        (Authenticated sender: jwilk@jwilk.net)
        by player787.ha.ovh.net (Postfix) with ESMTPSA id 0BD427E5AA08;
        Wed, 10 Jul 2019 17:27:50 +0000 (UTC)
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] execve.2: tfix
Date:   Wed, 10 Jul 2019 19:27:49 +0200
Message-Id: <20190710172749.9569-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 2313161361562523517
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrgeeigdduudehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenuc
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/execve.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/execve.2 b/man2/execve.2
index 840562e38..0266adc54 100644
--- a/man2/execve.2
+++ b/man2/execve.2
@@ -325,7 +325,7 @@ will be invoked with the following arguments:
 .PP
 where
 .I pathname
-is te absolute pathname of the file specified as the first argument of
+is the absolute pathname of the file specified as the first argument of
 .BR execve (),
 and
 .I arg...
-- 
2.22.0

