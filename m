Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 045DB17BC10
	for <lists+linux-man@lfdr.de>; Fri,  6 Mar 2020 12:48:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726212AbgCFLsY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Mar 2020 06:48:24 -0500
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:46449 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726185AbgCFLsX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Mar 2020 06:48:23 -0500
X-Greylist: delayed 436 seconds by postgrey-1.27 at vger.kernel.org; Fri, 06 Mar 2020 06:48:23 EST
Received: from mxplan6.mail.ovh.net (unknown [10.109.156.217])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id E7FF72509EBA;
        Fri,  6 Mar 2020 12:41:05 +0100 (CET)
Received: from jwilk.net (37.59.142.100) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Fri, 6 Mar 2020
 12:41:05 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 1/3] Changes.old: tfix
Date:   Fri, 6 Mar 2020 12:41:02 +0100
Message-ID: <20200306114104.1179-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.100]
X-ClientProxiedBy: DAG9EX2.mxp6.local (172.16.2.82) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 3c571860-79ad-455f-9983-eee6187d8903
X-Ovh-Tracer-Id: 3949938350723618781
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudduvddgfeegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutddtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 Changes.old | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Changes.old b/Changes.old
index c870270ee..8c9d78f85 100644
--- a/Changes.old
+++ b/Changes.old
@@ -15250,7 +15250,7 @@ sigwaitinfo.2
 
     Michael Kerrisk
         These interfaces have per-thread semantics
-            The page was previously fuzzy about whether the these interfaces
+            The page was previously fuzzy about whether these interfaces
             have process-wide or per-thread semantics.  (E.g., now the
             page states that the calling *thread* (not process) is suspended
             until the signal is delivered.)
-- 
2.25.1

