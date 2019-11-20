Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 781E010470A
	for <lists+linux-man@lfdr.de>; Thu, 21 Nov 2019 00:40:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726540AbfKTXkH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Nov 2019 18:40:07 -0500
Received: from emeralfel.rulingia.com.au ([52.64.96.81]:15865 "EHLO
        fort.rulingia.com.au" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725878AbfKTXkH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Nov 2019 18:40:07 -0500
X-Greylist: delayed 325 seconds by postgrey-1.27 at vger.kernel.org; Wed, 20 Nov 2019 18:40:06 EST
Received: from alyzon.rulingia.com.au (125-63-26-198.ip4.superloop.com [125.63.26.198])
        by fort.rulingia.com.au (Postfix) with ESMTPSA id 5B00E2110B7;
        Thu, 21 Nov 2019 10:34:40 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rulingia.com.au;
        s=mail; t=1574292880;
        bh=pxefOyexI6HVFgJ1AU1vOpxjhjR/n7pzD03P1cEIFF4=;
        h=From:To:Cc:Subject:Date;
        b=N335/6MEuyD61f8bNYXkMAC7BZnXR7xXdqd6SBdhBwO/rrqWU1jE4Ypyzbl76D+QV
         CSLaX97EQDzPaqIBouQ7/nd+1I6djnjJ8xByW/7kpSAkKOrTdUF1pj+87IRZ81ayHU
         iW34RNOQG5fTDQuhrav5UjvHhLc+alW1LfNW+76M=
Received: by alyzon.rulingia.com.au (Postfix, from userid 1000)
        id 970C911DCC3; Thu, 21 Nov 2019 10:34:39 +1100 (AEDT)
From:   Jashank Jeremy <jashank@rulingia.com.au>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] strtok.3: tfix
Date:   Thu, 21 Nov 2019 10:34:39 +1100
Message-Id: <20191120233439.50980-1-jashank@rulingia.com.au>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man3/strtok.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/strtok.3 b/man3/strtok.3
index 3bb578004..933a7b96c 100644
--- a/man3/strtok.3
+++ b/man3/strtok.3
@@ -131,7 +131,7 @@ and then a null pointer.
 .PP
 The
 .BR strtok_r ()
-function is a reentrant version
+function is a reentrant version of
 .BR strtok ().
 The
 .I saveptr
-- 
2.22.0

