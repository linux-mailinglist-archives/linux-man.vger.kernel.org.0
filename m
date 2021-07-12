Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD9BB3C624A
	for <lists+linux-man@lfdr.de>; Mon, 12 Jul 2021 19:58:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232912AbhGLSAx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Jul 2021 14:00:53 -0400
Received: from 8.mo52.mail-out.ovh.net ([46.105.37.156]:52869 "EHLO
        8.mo52.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233424AbhGLSAx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Jul 2021 14:00:53 -0400
X-Greylist: delayed 2400 seconds by postgrey-1.27 at vger.kernel.org; Mon, 12 Jul 2021 14:00:52 EDT
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.7])
        by mo52.mail-out.ovh.net (Postfix) with ESMTPS id 2E8E9286142;
        Mon, 12 Jul 2021 18:40:30 +0200 (CEST)
Received: from jwilk.net (37.59.142.96) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.8; Mon, 12 Jul
 2021 18:40:29 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-96R00195b6f87c-7e1d-4804-ab41-243cb956b8b9,
                    5C274AFC0EEBB6A3AE8BBE403DAD1BA76CA38561) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 37.30.17.216
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] wcstok.3: Fix type mismatch in the example
Date:   Mon, 12 Jul 2021 18:40:26 +0200
Message-ID: <20210712164026.4204-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.96]
X-ClientProxiedBy: DAG2EX2.mxp6.local (172.16.2.12) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 4b91e615-258f-470b-a127-20da3cff4440
X-Ovh-Tracer-Id: 8105916382074296285
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddruddvgddutddvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepvdehjeejffejjedvkeehheejieelhffftdduteefheeukeeuiedvudehveehfefhnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man3/wcstok.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/wcstok.3 b/man3/wcstok.3
index 401411d98..af642ca46 100644
--- a/man3/wcstok.3
+++ b/man3/wcstok.3
@@ -108,9 +108,9 @@ The following code loops over the tokens contained in a wide-character string.
 wchar_t *wcs = ...;
 wchar_t *token;
 wchar_t *state;
-for (token = wcstok(wcs, " \et\en", &state);
+for (token = wcstok(wcs, L" \et\en", &state);
     token != NULL;
-    token = wcstok(NULL, " \et\en", &state)) {
+    token = wcstok(NULL, L" \et\en", &state)) {
     ...
 }
 .EE
-- 
2.32.0

