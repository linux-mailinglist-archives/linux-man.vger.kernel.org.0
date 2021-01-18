Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DCACF2F9CBE
	for <lists+linux-man@lfdr.de>; Mon, 18 Jan 2021 11:36:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388878AbhARKV3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jan 2021 05:21:29 -0500
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:45337 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2388376AbhARJJw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jan 2021 04:09:52 -0500
Received: from mxplan6.mail.ovh.net (unknown [10.109.146.28])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 4B44C7C7F48A;
        Mon, 18 Jan 2021 10:09:05 +0100 (CET)
Received: from jwilk.net (37.59.142.97) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Mon, 18 Jan
 2021 10:08:49 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-97G0022ebfb57a-ede2-4efd-b094-fe86292e3510,
                    30D6792FA97DA8DABAA366C5D1D6D327A489FDAC) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.73
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 2/2] semget.2, shm_open.3: tfix
Date:   Mon, 18 Jan 2021 10:08:11 +0100
Message-ID: <20210118090811.6495-2-jwilk@jwilk.net>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210118090811.6495-1-jwilk@jwilk.net>
References: <20210118090811.6495-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.97]
X-ClientProxiedBy: DAG5EX1.mxp6.local (172.16.2.41) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: fbf92154-4493-47d2-a383-3fa00dbf0621
X-Ovh-Tracer-Id: 5778399798530987997
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrtdekgddtudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffojghfggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeulefftddufefggeehjeetgfevvdeljeehheegkedtkeetfeetgfffueetudffkeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/semget.2   | 2 +-
 man3/shm_open.3 | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/semget.2 b/man2/semget.2
index a8fed15e6..445ac0249 100644
--- a/man2/semget.2
+++ b/man2/semget.2
@@ -155,7 +155,7 @@ If the semaphore set already exists, the permissions are
 verified.
 .\" and a check is made to see if it is marked for destruction.
 .SH RETURN VALUE
-On sucess,
+On success,
 .BR semget ()
 returns the semaphore set identifier (a nonnegative integer).
 On failure, \-1 is returned, and
diff --git a/man3/shm_open.3 b/man3/shm_open.3
index 80d1eae17..9b06335d2 100644
--- a/man3/shm_open.3
+++ b/man3/shm_open.3
@@ -170,7 +170,7 @@ was specified, in which case a new, distinct object is created).
 On success,
 .BR shm_open ()
 returns a file descriptor (a nonnegative integer).
-On sucess,
+On success,
 .BR shm_unlink ()
 returns 0.
 On failure, both functions return \-1 and set
-- 
2.30.0

