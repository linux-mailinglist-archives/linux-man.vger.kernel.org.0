Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EB82120F68
	for <lists+linux-man@lfdr.de>; Thu, 16 May 2019 21:56:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726901AbfEPT4P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 May 2019 15:56:15 -0400
Received: from 3.mo68.mail-out.ovh.net ([46.105.58.60]:47640 "EHLO
        3.mo68.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726519AbfEPT4P (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 May 2019 15:56:15 -0400
Received: from player771.ha.ovh.net (unknown [10.109.159.159])
        by mo68.mail-out.ovh.net (Postfix) with ESMTP id 4A54112CB90
        for <linux-man@vger.kernel.org>; Thu, 16 May 2019 21:39:23 +0200 (CEST)
Received: from jwilk.net (ip-5-172-255-49.free.aero2.net.pl [5.172.255.49])
        (Authenticated sender: jwilk@jwilk.net)
        by player771.ha.ovh.net (Postfix) with ESMTPSA id 671B35D933A6;
        Thu, 16 May 2019 19:39:20 +0000 (UTC)
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] Changes.old: tfix
Date:   Thu, 16 May 2019 21:39:17 +0200
Message-Id: <20190516193917.3682-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 13576945502265333629
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddruddttddgudefjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecu
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Remove duplicated word.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 Changes.old | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Changes.old b/Changes.old
index 6f48d5bea..008d80c58 100644
--- a/Changes.old
+++ b/Changes.old
@@ -49305,7 +49305,7 @@ setfsuid.2
     Michael Kerrisk
         Rewrite for improved clarity and to hint history more explicitly
             The current text reads somewhat clumsily. Rewrite it to introduce
-            the eUID and fsUID in parallel, and more clearly hint at the the
+            the eUID and fsUID in parallel, and more clearly hint at the
             historical rationale for the fsUID, which is detailed lower in
             the page.
 
-- 
2.20.1

