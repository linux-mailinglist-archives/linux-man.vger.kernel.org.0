Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8618A31AEE1
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 05:31:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229615AbhBNEbm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 23:31:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229575AbhBNEbk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 23:31:40 -0500
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9C80C061574
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 20:31:00 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id s15so1895528plr.9
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 20:31:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
        h=subject:date:message-id:mime-version:content-transfer-encoding:cc
         :from:to;
        bh=LdJshrT4Y8QM/Gg6F4cMw6FvOY+boqE9l2chLOTpTdg=;
        b=Rtoa/d+l1JCLU+YPM+34L0FdyRtGgUdTfIkgy5Vh/Eu1eVi29K/hVcbPtznO9HxpuE
         +KQwoQRuquq4pmXQRuJlCRUnQlSrAdlh9G80f9xnwhzAYG+qqkywSx3gq7U/U/1wtXiA
         q143l136w411JplHcYs+L43KaDIKgMCfU33vG94tGf2bS1OqEiuWHtzCW6OSoSiAfPXe
         0gqly6H16p/dl7muMViXc5I3hoLZ5d29LpQ4lFG8DIVvklA4qdhHfP1Gtiv20fjQvCRW
         nEJsQ1QQoImSha6bB2b2bxCQ1+MTUKSntzI2uD11aYfjhBYxjp0Ht591Cxga0fWY+QMO
         1isw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:date:message-id:mime-version
         :content-transfer-encoding:cc:from:to;
        bh=LdJshrT4Y8QM/Gg6F4cMw6FvOY+boqE9l2chLOTpTdg=;
        b=tk394a0RxO2A6OiPKsEjQcwaL67KW21BwQw7Dl7IpHhqUZV7qBoIVWbKyhgeIJF3ol
         2yJnvdcKO8kkdBuzHDiy0mRfensIaLco/zn7mdO+ZR3B606fQ/SwkzmPDGy8t/yLfHia
         OCThVCZZ3CoDUzi7u7qNKVmcIzKZ81qUHHYAPqqRI27/deRA/k/qDowuC7dofw9DBEBN
         lIxg90TYHsWDLdjKLxsNiFfiIAo4726L3DIeG9RRx289jTzR/M1R+wNpPJSg+pa3CnVi
         If7uMFioQVXQftCuURxXKi1ueFejXgYxC8tRsX7ISslhERux3/CA1R5AkpQ7uRhYf9VG
         7Bvw==
X-Gm-Message-State: AOAM532zSXlOTjAOyJVbVqd80ACsOe9tHc5UTJUM2la5T949hB2Bz3Et
        vwROGQBRhoDkVzhFNOyyA62Dj8t0x6xFQtTh
X-Google-Smtp-Source: ABdhPJx2Sc96tt+MyGKt2KyHg3FZFetexaxKZAmWSppiXsoVXYI7XdMpJ+RyjJCQia3YXQ0Cg5CA/w==
X-Received: by 2002:a17:90b:1b4a:: with SMTP id nv10mr9668744pjb.169.1613277059472;
        Sat, 13 Feb 2021 20:30:59 -0800 (PST)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id v1sm13977151pga.63.2021.02.13.20.30.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Feb 2021 20:30:58 -0800 (PST)
Subject: [PATCH] execve.2: Correctly the versions of Linux that don't have ARG_MAX argv/envp size
Date:   Sat, 13 Feb 2021 20:29:09 -0800
Message-Id: <20210214042909.18146-1-palmer@dabbelt.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc:     linux-man@vger.kernel.org,
        Palmer Dabbelt <palmerdabbelt@google.com>
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     alx.manpages@gmail.com, mtk.manpages@gmail.com
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Palmer Dabbelt <palmerdabbelt@google.com>

I just happened upon this inconsistent text while reading `man 2 execve`.  The
code in question landed in 2.6.23 as b6a2fea39318 ("mm: variable length
argument support").

Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 man2/execve.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/execve.2 b/man2/execve.2
index eb3d37e32..639e3b4b9 100644
--- a/man2/execve.2
+++ b/man2/execve.2
@@ -431,7 +431,7 @@ so that, even when
 .BR RLIMIT_STACK
 is set very low,
 applications are guaranteed to have at least as much argument and
-environment space as was provided by Linux 2.6.23 and earlier.
+environment space as was provided by Linux 2.6.22 and earlier.
 (This guarantee was not provided in Linux 2.6.23 and 2.6.24.)
 Additionally, the limit per string is 32 pages (the kernel constant
 .BR MAX_ARG_STRLEN ),
-- 
2.20.1

