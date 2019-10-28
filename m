Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 53CB1E70F2
	for <lists+linux-man@lfdr.de>; Mon, 28 Oct 2019 13:08:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388802AbfJ1MIc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Oct 2019 08:08:32 -0400
Received: from 5.mo68.mail-out.ovh.net ([46.105.62.179]:35077 "EHLO
        5.mo68.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730055AbfJ1MIc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Oct 2019 08:08:32 -0400
X-Greylist: delayed 4193 seconds by postgrey-1.27 at vger.kernel.org; Mon, 28 Oct 2019 08:08:31 EDT
Received: from player716.ha.ovh.net (unknown [10.109.159.132])
        by mo68.mail-out.ovh.net (Postfix) with ESMTP id D848314818A
        for <linux-man@vger.kernel.org>; Mon, 28 Oct 2019 11:50:59 +0100 (CET)
Received: from jwilk.net (user-5-173-40-107.play-internet.pl [5.173.40.107])
        (Authenticated sender: jwilk@jwilk.net)
        by player716.ha.ovh.net (Postfix) with ESMTPSA id 2687EB6882EE;
        Mon, 28 Oct 2019 10:50:57 +0000 (UTC)
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] clone.2: include clone3 in NAME section.
Date:   Mon, 28 Oct 2019 11:50:54 +0100
Message-Id: <20191028105054.6447-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 14416866832470628221
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrleelgddvudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecu
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/clone.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/clone.2 b/man2/clone.2
index c4afdf449..7d1106604 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -41,7 +41,7 @@
 .\"
 .TH CLONE 2 2019-08-02 "Linux" "Linux Programmer's Manual"
 .SH NAME
-clone, __clone2 \- create a child process
+clone, __clone2, clone3 \- create a child process
 .SH SYNOPSIS
 .nf
 /* Prototype for the glibc wrapper function */
-- 
2.24.0.rc1

