Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1F7E017BC11
	for <lists+linux-man@lfdr.de>; Fri,  6 Mar 2020 12:48:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726256AbgCFLs1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Mar 2020 06:48:27 -0500
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:49317 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726185AbgCFLs1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Mar 2020 06:48:27 -0500
Received: from mxplan6.mail.ovh.net (unknown [10.109.156.21])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 9B1122509EC2;
        Fri,  6 Mar 2020 12:41:07 +0100 (CET)
Received: from jwilk.net (37.59.142.104) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Fri, 6 Mar 2020
 12:41:06 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 2/3] semctl.2: tfix
Date:   Fri, 6 Mar 2020 12:41:03 +0100
Message-ID: <20200306114104.1179-2-jwilk@jwilk.net>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306114104.1179-1-jwilk@jwilk.net>
References: <20200306114104.1179-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.104]
X-ClientProxiedBy: DAG6EX2.mxp6.local (172.16.2.52) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 40f8e9e8-fcd8-435b-8b37-97166e79e29b
X-Ovh-Tracer-Id: 3950501300291491805
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudduvddgfeegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgjfhgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/semctl.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/semctl.2 b/man2/semctl.2
index bd8bc39bc..ac073110c 100644
--- a/man2/semctl.2
+++ b/man2/semctl.2
@@ -371,7 +371,7 @@ The calling process must have alter (write) permission on
 the semaphore set.
 .TP
 .B SETVAL
-Set the the semaphore value
+Set the semaphore value
 .BR ( semval )
 to
 .I arg.val
-- 
2.25.1

