Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A70E4255E40
	for <lists+linux-man@lfdr.de>; Fri, 28 Aug 2020 17:55:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726800AbgH1Pzq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Aug 2020 11:55:46 -0400
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:60829 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728268AbgH1Pzn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Aug 2020 11:55:43 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.179])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 4E0305BA2070;
        Fri, 28 Aug 2020 17:55:41 +0200 (CEST)
Received: from jwilk.net (37.59.142.105) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Fri, 28 Aug
 2020 17:55:40 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-105G006777d6de7-0454-422a-b20e-5b724b2072a8,
                    34BFFB665D4BB2C84E189F0774D569240976174F) smtp.auth=jwilk@jwilk.net
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] Changes.old: tfix
Date:   Fri, 28 Aug 2020 17:55:37 +0200
Message-ID: <20200828155537.1917-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.105]
X-ClientProxiedBy: DAG8EX1.mxp6.local (172.16.2.71) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: c014efbc-7b9f-439e-8cda-38ca037a9a62
X-Ovh-Tracer-Id: 2953516933025552349
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedruddvkedguddvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepvdehjeejffejjedvkeehheejieelhffftdduteefheeukeeuiedvudehveehfefhnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Remove duplicated words.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 Changes.old | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Changes.old b/Changes.old
index fd66a5152..23df1cd06 100644
--- a/Changes.old
+++ b/Changes.old
@@ -51924,11 +51924,11 @@ Newly documented interfaces in existing pages
 prctl.2
     Dave Martin
         Add SVE prctls (arm64)
-            Add documentation for the the PR_SVE_SET_VL and PR_SVE_GET_VL
+            Add documentation for the PR_SVE_SET_VL and PR_SVE_GET_VL
             prctls added in Linux 4.15 for arm64.
     Dave Martin  [Catalin Marinas]
         Add tagged address ABI control prctls (arm64)
-            Add documentation for the the PR_SET_TAGGED_ADDR_CTRL and
+            Add documentation for the PR_SET_TAGGED_ADDR_CTRL and
             PR_GET_TAGGED_ADDR_CTRL prctls added in Linux 5.4 for arm64.
 
 setns.2
-- 
2.28.0

