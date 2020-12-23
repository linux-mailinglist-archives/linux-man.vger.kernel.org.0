Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48CAF2E20E7
	for <lists+linux-man@lfdr.de>; Wed, 23 Dec 2020 20:31:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728506AbgLWTbW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Dec 2020 14:31:22 -0500
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:36249 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728395AbgLWTbW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Dec 2020 14:31:22 -0500
Received: from mxplan6.mail.ovh.net (unknown [10.109.146.239])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id B14157CF314E;
        Wed, 23 Dec 2020 20:30:40 +0100 (CET)
Received: from jwilk.net (37.59.142.95) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Wed, 23 Dec
 2020 20:30:39 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-95G001afa2caab-ef79-4185-a38b-8f4ec23c167c,
                    A52BA6BD936B9B6465AEB870C134438BA02787E0) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.48.134
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 3/4] ftime.3: tfix
Date:   Wed, 23 Dec 2020 20:30:32 +0100
Message-ID: <20201223193033.1012-3-jwilk@jwilk.net>
X-Mailer: git-send-email 2.30.0.rc1
In-Reply-To: <20201223193033.1012-1-jwilk@jwilk.net>
References: <20201223193033.1012-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.95]
X-ClientProxiedBy: DAG8EX1.mxp6.local (172.16.2.71) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 9c056f57-2c72-4bdd-ba29-7cb79f84f4e9
X-Ovh-Tracer-Id: 11159919878243866589
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrvddtjedguddviecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffojghfggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeulefftddufefggeehjeetgfevvdeljeehheegkedtkeetfeetgfffueetudffkeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man3/ftime.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/ftime.3 b/man3/ftime.3
index fa28daccd..658ed300c 100644
--- a/man3/ftime.3
+++ b/man3/ftime.3
@@ -80,7 +80,7 @@ function and the
 .I <sys/timeb.h>
 header have been removed.
 To support old binaries,
-glibc contines to provide a compatibility symbol for
+glibc continues to provide a compatibility symbol for
 applications linked against glibc 2.32 and earlier.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
-- 
2.30.0.rc1

