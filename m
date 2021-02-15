Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17DFE31BA2D
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 14:20:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230265AbhBONTA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 08:19:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230222AbhBONS6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 08:18:58 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8B9BC061574
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 05:18:16 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id z63so4018947wmg.4
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 05:18:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ASSEmdGknOwzsT3nkJ4bbbjT15+LwEKCUgXaFQdJdU0=;
        b=pJWcT/6jxQz/XWiXbFi3tP9kLkZw4MfhDQqJL/45189ORIisIUGQMi1nhI7ODskK9t
         7aUIXUZtrdnUs6SueQPM8mSdelH1vl36TNQYRScDajlpsHwpR0aSzv8GBvAZ9C3TFyU7
         Q+PIvD787G/byq2Zp5wC9vg1t1sNvuLoQNj3YVljybxcUwoXvYuB9MPUDJLCqGMkm4uS
         wDlfgDCJHcNa9JCrpbzyAyNpo0sM4pEIKcvOpqUL0nLnPcMT4tbN01C3ttZCYMHU2kTJ
         SRVCma7mIgfRYmzHJ/q/dvtuJHZ/ZES0UZO0cCxAQcrWkIqndHReyQoHxV08dADfOB9G
         driw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ASSEmdGknOwzsT3nkJ4bbbjT15+LwEKCUgXaFQdJdU0=;
        b=YYiPnmrNuhIM5Z7SR6/r+N7LdF93/wp92a9R94GYRR4LmIbG6apU75/2dtnLUCoas5
         GdhudOxc3d2RESZgyNN2qSOVI4VAF5Rp2vK/JpR2Tqez0S/OAerHbLKleIHZY6+QW3rb
         TiehifDzirEbEWswwGr7gEYKBqsdiFr2+6A+eAk44D7pfxum+ZHPsi9c0AuIumF5Yoie
         PrCpCMqig+Lulqe3JhmvEgNqbp92y0fWxAx5yrtMyl5JHvzYbdCJL5nxiCvHSGuP7o1I
         6hnTzkk9m2jzABDj9Dx/xKDh/pmlWLWJ6C2gjJ5CU+ao7X3WZo8huVXpBGl7No5UFoMH
         H3MQ==
X-Gm-Message-State: AOAM530SKXWOfe8Y12Txf4vYuuX9CTYNGDcu/L66wOSUVcwh6l5oH4Y4
        huTBziw4HjHUUaSrT41ciew=
X-Google-Smtp-Source: ABdhPJyEgzA2MdlUypU2tugMHo1Uzmnvw7HJc4QPkNOBzX7O/YLY6XOZ6mWHqYKpsYq9C6SXPtYf/A==
X-Received: by 2002:a7b:ce17:: with SMTP id m23mr14364789wmc.80.1613395095790;
        Mon, 15 Feb 2021 05:18:15 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id d15sm19309504wru.80.2021.02.15.05.18.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 05:18:15 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] spu_run.2: SYNOPSIS: Fix prototype parameter types
Date:   Mon, 15 Feb 2021 14:15:22 +0100
Message-Id: <20210215131522.450666-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The 2nd and 3rd parameters of spu_run() use 'uint32_t *'.  Fix it.

......

.../linux$ grep_syscall spu_run
arch/powerpc/platforms/cell/spu_syscalls.c:80:
SYSCALL_DEFINE3(spu_run,int, fd, __u32 __user *, unpc, __u32 __user *, ustatus)
include/linux/syscalls.h:1034:
asmlinkage long sys_spu_run(int fd, __u32 __user *unpc,
				 __u32 __user *ustatus);
.../linux$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/spu_run.2 | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/man2/spu_run.2 b/man2/spu_run.2
index fb1879759..8b2a64ebb 100644
--- a/man2/spu_run.2
+++ b/man2/spu_run.2
@@ -30,8 +30,7 @@ spu_run \- execute an SPU context
 .nf
 .B #include <sys/spu.h>
 .PP
-.BI "int spu_run(int " fd ", unsigned int *" npc \
-", unsigned int *" event ");"
+.BI "int spu_run(int " fd ", uint32_t *" npc ", uint32_t *" event );
 .fi
 .PP
 .IR Note :
-- 
2.30.0

