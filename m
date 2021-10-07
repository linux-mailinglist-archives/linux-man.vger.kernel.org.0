Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DCB39424FDD
	for <lists+linux-man@lfdr.de>; Thu,  7 Oct 2021 11:15:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240509AbhJGJRm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 7 Oct 2021 05:17:42 -0400
Received: from smtpout3.mo529.mail-out.ovh.net ([46.105.54.81]:57357 "EHLO
        smtpout3.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S240504AbhJGJRm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 7 Oct 2021 05:17:42 -0400
X-Greylist: delayed 388 seconds by postgrey-1.27 at vger.kernel.org; Thu, 07 Oct 2021 05:17:41 EDT
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.149])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id B06C1C2D8F54;
        Thu,  7 Oct 2021 11:09:17 +0200 (CEST)
Received: from jwilk.net (37.59.142.106) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Thu, 7 Oct
 2021 11:09:16 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-106R0069da50acc-498d-4a62-9c9b-61971c8b4976,
                    3FBD16EB892736AF3B0553D918050AAA46B74386) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.138
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] tzset.3: ffix
Date:   Thu, 7 Oct 2021 11:09:14 +0200
Message-ID: <20211007090914.8318-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.106]
X-ClientProxiedBy: DAG4EX2.mxp6.local (172.16.2.32) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 9b04400b-7116-4da6-8338-733883e7974d
X-Ovh-Tracer-Id: 13347824872957990877
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrudelkedguddvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepvdehjeejffejjedvkeehheejieelhffftdduteefheeukeeuiedvudehveehfefhnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Use \- for minus sign

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man3/tzset.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/tzset.3 b/man3/tzset.3
index c80da53f8..694cd0ea9 100644
--- a/man3/tzset.3
+++ b/man3/tzset.3
@@ -111,7 +111,7 @@ There are no spaces in the specification.
 The \fIstd\fP string specifies an abbreviation for the timezone and must be
 three or more alphabetic characters.
 When enclosed between the less-than (<) and greater-than (>) signs, the
-characters set is expanded to include the plus (+) sign, the minus (-)
+characters set is expanded to include the plus (+) sign, the minus (\-)
 sign, and digits.
 The \fIoffset\fP string immediately
 follows \fIstd\fP and specifies the time value to be added to the local
-- 
2.33.0

