Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5FEA82E2109
	for <lists+linux-man@lfdr.de>; Wed, 23 Dec 2020 20:50:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728222AbgLWTsM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Dec 2020 14:48:12 -0500
Received: from 9.mo51.mail-out.ovh.net ([46.105.48.137]:33146 "EHLO
        9.mo51.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728075AbgLWTsM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Dec 2020 14:48:12 -0500
X-Greylist: delayed 1008 seconds by postgrey-1.27 at vger.kernel.org; Wed, 23 Dec 2020 14:48:11 EST
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.25])
        by mo51.mail-out.ovh.net (Postfix) with ESMTPS id CD3F2249C06;
        Wed, 23 Dec 2020 20:30:38 +0100 (CET)
Received: from jwilk.net (37.59.142.96) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Wed, 23 Dec
 2020 20:30:37 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-96R001ef1b21ec-f043-485e-922b-65911ad7c6a1,
                    A52BA6BD936B9B6465AEB870C134438BA02787E0) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.48.134
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 2/4] cgroups.7: tfix
Date:   Wed, 23 Dec 2020 20:30:31 +0100
Message-ID: <20201223193033.1012-2-jwilk@jwilk.net>
X-Mailer: git-send-email 2.30.0.rc1
In-Reply-To: <20201223193033.1012-1-jwilk@jwilk.net>
References: <20201223193033.1012-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.96]
X-ClientProxiedBy: DAG9EX2.mxp6.local (172.16.2.82) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: bc5eb4bc-d7e1-465c-9da5-1111707483b6
X-Ovh-Tracer-Id: 11159356929874909149
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrvddtjedguddviecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffojghfggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeulefftddufefggeehjeetgfevvdeljeehheegkedtkeetfeetgfffueetudffkeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man7/cgroups.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/cgroups.7 b/man7/cgroups.7
index 0d525d91f..f6e7a8d8f 100644
--- a/man7/cgroups.7
+++ b/man7/cgroups.7
@@ -1123,7 +1123,7 @@ mount \-t cgroup2 \-o remount,nsdelegate \e
 .EE
 .in
 .\"
-.\" ALternatively, we could boot the kernel with the options:
+.\" Alternatively, we could boot the kernel with the options:
 .\"
 .\"    cgroup_no_v1=all systemd.legacy_systemd_cgroup_controller
 .\"
-- 
2.30.0.rc1

