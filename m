Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 851B8265EF9
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 13:47:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725821AbgIKLpj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 07:45:39 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:50543 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725788AbgIKLp3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 07:45:29 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.95])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 7C2BB59FF812;
        Fri, 11 Sep 2020 13:44:49 +0200 (CEST)
Received: from jwilk.net (37.59.142.104) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Fri, 11 Sep
 2020 13:44:48 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-104R005865d3b83-7a45-4973-ba3e-d393a4e49612,
                    64F61387685633508F748727C5F6338E347AD249) smtp.auth=jwilk@jwilk.net
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] bswap.3: Use strtoull() for parsing 64-bit numbers
Date:   Fri, 11 Sep 2020 13:44:46 +0200
Message-ID: <20200911114446.3971-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.104]
X-ClientProxiedBy: DAG7EX1.mxp6.local (172.16.2.61) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 26e50108-fd20-4a5c-b8e1-fd5ba9153040
X-Ovh-Tracer-Id: 7147494087101700061
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrudehledggeejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepvdehjeejffejjedvkeehheejieelhffftdduteefheeukeeuiedvudehveehfefhnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Before, on 32-bit systems:

    $ ./a.out 0x0123456789abcdef
    0xffffffff ==> 0xffffffff00000000

After:

    $ ./a.out 0x0123456789abcdef
    0x123456789abcdef ==> 0xefcdab8967452301

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man3/bswap.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/bswap.3 b/man3/bswap.3
index 412e1702f..ce847580a 100644
--- a/man3/bswap.3
+++ b/man3/bswap.3
@@ -72,7 +72,7 @@ main(int argc, char *argv[])
         exit(EXIT_FAILURE);
     }
 
-    x = strtoul(argv[1], NULL, 0);
+    x = strtoull(argv[1], NULL, 0);
     printf("0x%" PRIx64 " ==> 0x%" PRIx64 "\en", x, bswap_64(x));
 
     exit(EXIT_SUCCESS);
-- 
2.28.0

