Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41A34264320
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 12:01:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730336AbgIJKBG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 06:01:06 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:43443 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1730353AbgIJJx7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 05:53:59 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.143.123])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id D27375988023;
        Thu, 10 Sep 2020 11:53:19 +0200 (CEST)
Received: from jwilk.net (37.59.142.103) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Thu, 10 Sep
 2020 11:53:19 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-103G0058beaaa9c-fc69-477a-a2ed-ac8a1c26c000,
                    8F7114C7C57A6E0A3E47E03C6DA49EEB42B2DE26) smtp.auth=jwilk@jwilk.net
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] dlopen.3, gnu_get_libc_version.3: tfix
Date:   Thu, 10 Sep 2020 11:53:17 +0200
Message-ID: <20200910095317.5224-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.103]
X-ClientProxiedBy: DAG2EX2.mxp6.local (172.16.2.12) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: a8a3aa42-06bb-496d-a32d-4945d257e0e9
X-Ovh-Tracer-Id: 17838476651826370525
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrudehjedgudegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepvdehjeejffejjedvkeehheejieelhffftdduteefheeukeeuiedvudehveehfefhnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Escape hyphens.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man3/dlopen.3               | 2 +-
 man3/gnu_get_libc_version.3 | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/dlopen.3 b/man3/dlopen.3
index ec8df1b58..a66945ac4 100644
--- a/man3/dlopen.3
+++ b/man3/dlopen.3
@@ -567,7 +567,7 @@ $ \fB./a.out\fP
 #include <stdio.h>
 #include <stdlib.h>
 #include <dlfcn.h>
-#include <gnu/lib-names.h>  /* Defines LIBM_SO (which will be a
+#include <gnu/lib\-names.h>  /* Defines LIBM_SO (which will be a
                                string such as "libm.so.6") */
 int
 main(void)
diff --git a/man3/gnu_get_libc_version.3 b/man3/gnu_get_libc_version.3
index 4aa9fe752..e5728195f 100644
--- a/man3/gnu_get_libc_version.3
+++ b/man3/gnu_get_libc_version.3
@@ -74,7 +74,7 @@ GNU libc release: stable
 .SS Program source
 \&
 .EX
-#include <gnu/libc-version.h>
+#include <gnu/libc\-version.h>
 #include <stdlib.h>
 #include <stdio.h>
 
-- 
2.28.0

