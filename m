Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 26C599CFA7
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2019 14:29:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731702AbfHZM3l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Aug 2019 08:29:41 -0400
Received: from 2.mo1.mail-out.ovh.net ([178.32.119.250]:54580 "EHLO
        2.mo1.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731737AbfHZM3l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Aug 2019 08:29:41 -0400
X-Greylist: delayed 2401 seconds by postgrey-1.27 at vger.kernel.org; Mon, 26 Aug 2019 08:29:40 EDT
Received: from player750.ha.ovh.net (unknown [10.109.143.18])
        by mo1.mail-out.ovh.net (Postfix) with ESMTP id 69FE018C8CA
        for <linux-man@vger.kernel.org>; Mon, 26 Aug 2019 13:12:00 +0200 (CEST)
Received: from jwilk.net (user-5-173-51-112.play-internet.pl [5.173.51.112])
        (Authenticated sender: jwilk@jwilk.net)
        by player750.ha.ovh.net (Postfix) with ESMTPSA id 9F1E1935F14F;
        Mon, 26 Aug 2019 11:11:57 +0000 (UTC)
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] gethostname.2: wfix
Date:   Mon, 26 Aug 2019 13:11:55 +0200
Message-Id: <20190826111155.9223-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 13726971665431189373
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrudehgedgfeekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenuc
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/gethostname.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/gethostname.2 b/man2/gethostname.2
index 4659337cc..5d6c20b0b 100644
--- a/man2/gethostname.2
+++ b/man2/gethostname.2
@@ -68,7 +68,7 @@ _BSD_SOURCE || _XOPEN_SOURCE\ >=\ 500
 .ad
 .SH DESCRIPTION
 These system calls are used to access or to change the hostname of the
-current processor.
+current machine.
 .PP
 .BR sethostname ()
 sets the hostname to the value given in the character array
-- 
2.23.0

