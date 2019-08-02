Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0AECC80307
	for <lists+linux-man@lfdr.de>; Sat,  3 Aug 2019 01:03:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389142AbfHBXD3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Aug 2019 19:03:29 -0400
Received: from 2.mo178.mail-out.ovh.net ([46.105.39.61]:40796 "EHLO
        2.mo178.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730372AbfHBXD3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Aug 2019 19:03:29 -0400
X-Greylist: delayed 2400 seconds by postgrey-1.27 at vger.kernel.org; Fri, 02 Aug 2019 19:03:28 EDT
Received: from player690.ha.ovh.net (unknown [10.108.42.66])
        by mo178.mail-out.ovh.net (Postfix) with ESMTP id 2E0E47401E
        for <linux-man@vger.kernel.org>; Fri,  2 Aug 2019 23:47:02 +0200 (CEST)
Received: from jwilk.net (user-5-173-59-145.play-internet.pl [5.173.59.145])
        (Authenticated sender: jwilk@jwilk.net)
        by player690.ha.ovh.net (Postfix) with ESMTPSA id 760798760EE7;
        Fri,  2 Aug 2019 21:46:59 +0000 (UTC)
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] proc.5: tfix
Date:   Fri,  2 Aug 2019 23:46:55 +0200
Message-Id: <20190802214656.5468-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.23.0.rc0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 12634285804792174461
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddruddttddgtdehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenuc
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man5/proc.5 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man5/proc.5 b/man5/proc.5
index 5461eb285..dd05db6c6 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -2648,12 +2648,12 @@ and
 .BR signal (7)).
 .IP *
 .IR SigBlk ", " SigIgn ", " SigCgt :
-Masks (expressed in hexadeximal)
+Masks (expressed in hexadecimal)
 indicating signals being blocked, ignored, and caught (see
 .BR signal (7)).
 .IP *
 .IR CapInh ", " CapPrm ", " CapEff :
-Masks (expressed in hexadeximal)
+Masks (expressed in hexadecimal)
 of capabilities enabled in inheritable, permitted, and effective sets
 (see
 .BR capabilities (7)).
-- 
2.23.0.rc0

