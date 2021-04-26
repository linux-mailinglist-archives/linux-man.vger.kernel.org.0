Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F151A36BD17
	for <lists+linux-man@lfdr.de>; Tue, 27 Apr 2021 04:05:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231354AbhD0CGW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Apr 2021 22:06:22 -0400
Received: from 4.mo52.mail-out.ovh.net ([178.33.43.201]:39893 "EHLO
        4.mo52.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231128AbhD0CGW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Apr 2021 22:06:22 -0400
X-Greylist: delayed 25643 seconds by postgrey-1.27 at vger.kernel.org; Mon, 26 Apr 2021 22:06:21 EDT
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.179])
        by mo52.mail-out.ovh.net (Postfix) with ESMTPS id 48C8A25FE42;
        Mon, 26 Apr 2021 20:58:15 +0200 (CEST)
Received: from jwilk.net (37.59.142.103) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4; Mon, 26 Apr
 2021 20:58:14 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-103G0056e8b8ffd-47a5-4c08-98cb-ef575da27379,
                    A2578E59CEF3D64DBCA5434119CDB31290CB7365) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.49.50
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 1/2] Changes.old: tfix
Date:   Mon, 26 Apr 2021 20:58:12 +0200
Message-ID: <20210426185813.3952-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [37.59.142.103]
X-ClientProxiedBy: DAG5EX2.mxp6.local (172.16.2.42) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 153416b9-152c-4ef5-831e-ec9fc35e0b3b
X-Ovh-Tracer-Id: 956733446355539933
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrvddukedgudeffecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffogggtgfhisehtkeertdertdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeevtdegjeekvdeileetiefgiedvhfffuefgjeffffektdfhkeffjedtheehkefffeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtfeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 Changes.old | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Changes.old b/Changes.old
index f863583b1..067fce382 100644
--- a/Changes.old
+++ b/Changes.old
@@ -53581,7 +53581,7 @@ Various pages
             Generally, place '||' at start of a line, rather than the end of
             the previous line.
 
-            Rationale: this placement clearly indicates that that each piece
+            Rationale: this placement clearly indicates that each piece
             is an alternative.
 
 Various pages
@@ -54119,7 +54119,7 @@ system.3
 environ.7
     Bastien Roucariès
         Reorder the text
-            Move the the text describing how to set environment variable before
+            Move the text describing how to set environment variable before
             the list(s) of variables in order to improve readability.
     Bastien Roucariès
         Document convention of string in environ
@@ -54152,7 +54152,7 @@ man-pages.7
     Michael Kerrisk
         Add a FORMATTING AND WORDING CONVENTIONS section
             In man-pages-5.11, a large number of pages were edited to achieve
-            greater consistency in the SYNOPIS, RETURN VALUE and ATTRIBUTES
+            greater consistency in the SYNOPSIS, RETURN VALUE and ATTRIBUTES
             sections. To avoid future inconsistencies, try to capture some of
             the preferred conventions in text in man-pages(7).
     Michael Kerrisk
-- 
2.31.1

