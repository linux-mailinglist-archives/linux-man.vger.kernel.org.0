Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7163822574B
	for <lists+linux-man@lfdr.de>; Mon, 20 Jul 2020 07:59:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726017AbgGTF7b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Jul 2020 01:59:31 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:42463 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725805AbgGTF7b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Jul 2020 01:59:31 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.118])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 7E6A44777044;
        Mon, 20 Jul 2020 07:59:29 +0200 (CEST)
Received: from jwilk.net (37.59.142.98) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3; Mon, 20 Jul
 2020 07:59:28 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-98R002f67c814e-d7af-48c7-b4fc-788262811d7b,AF8CF44B929B90A6AE2E96008DECA72944AC5276) smtp.auth=jwilk@jwilk.net
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] proc.5: tfix
Date:   Mon, 20 Jul 2020 07:59:27 +0200
Message-ID: <20200720055927.4775-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.28.0.rc1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.98]
X-ClientProxiedBy: DAG2EX2.mxp6.local (172.16.2.12) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 15484838-f6d3-4474-a431-0715e369d595
X-Ovh-Tracer-Id: 3657204373653936093
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrgedvgddutddvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepvdehjeejffejjedvkeehheejieelhffftdduteefheeukeeuiedvudehveehfefhnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man5/proc.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/proc.5 b/man5/proc.5
index 0dbc05228..4cffd9718 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -1395,7 +1395,7 @@ is shown unescaped except for newline characters, which are replaced
 with an octal escape sequence.
 As a result, it is not possible to determine whether the original
 pathname contained a newline character or the literal
-.I \ee012
+.I \e012
 character sequence.
 .IP
 If the mapping is file-backed and the file has been deleted, the string
-- 
2.28.0.rc1

