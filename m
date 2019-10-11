Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 163A6D4966
	for <lists+linux-man@lfdr.de>; Fri, 11 Oct 2019 22:44:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726705AbfJKUov (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Oct 2019 16:44:51 -0400
Received: from 4.mo173.mail-out.ovh.net ([46.105.34.219]:46186 "EHLO
        4.mo173.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726354AbfJKUov (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Oct 2019 16:44:51 -0400
X-Greylist: delayed 1193 seconds by postgrey-1.27 at vger.kernel.org; Fri, 11 Oct 2019 16:44:50 EDT
Received: from player746.ha.ovh.net (unknown [10.109.159.140])
        by mo173.mail-out.ovh.net (Postfix) with ESMTP id C8EA310E3E9
        for <linux-man@vger.kernel.org>; Fri, 11 Oct 2019 22:24:55 +0200 (CEST)
Received: from jwilk.net (user-5-173-40-116.play-internet.pl [5.173.40.116])
        (Authenticated sender: jwilk@jwilk.net)
        by player746.ha.ovh.net (Postfix) with ESMTPSA id 0FF87AF8560A;
        Fri, 11 Oct 2019 20:24:52 +0000 (UTC)
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] strptime.3: tfix
Date:   Fri, 11 Oct 2019 22:24:50 +0200
Message-Id: <20191011202450.2067-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 16507662959519258493
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrieehgdduhedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenuc
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Escape hyphens.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man3/strptime.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/strptime.3 b/man3/strptime.3
index 6a82b04f4..29366339e 100644
--- a/man3/strptime.3
+++ b/man3/strptime.3
@@ -142,7 +142,7 @@ to non-Americans, especially since
 .B %d/%m/%y
 is widely used in Europe.
 The ISO 8601 standard format is
-.BR %Y-%m-%d .)
+.BR %Y\-%m\-%d .)
 .TP
 .B %H
 The hour (0\(en23).
@@ -362,7 +362,7 @@ This leads to
 .TP
 .B %F
 Equivalent to
-.BR %Y-%m-%d ,
+.BR %Y\-%m\-%d ,
 the ISO 8601 date format.
 .TP
 .B %g
-- 
2.23.0

