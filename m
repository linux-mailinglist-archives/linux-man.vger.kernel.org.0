Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D104631AE76
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 00:12:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229720AbhBMXMD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 18:12:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229716AbhBMXMC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 18:12:02 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 476BEC061793
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:45 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id g6so4210321wrs.11
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lwuHNEezFD2wxVCOjueEpT6XVBYQiTxhi5fSrm+UPcc=;
        b=ZhsgXp6uCia/+KuHgfhkUtG2a/0M+AVnfI0FoUG0EFh1d4N7hSLODTC1TplajhQXgm
         bhS7Empq8EWO5CzBJis1IMFVHa4JXJ4aZkJeQFeTWP0M7UTQ2s7VAQm5vAnLKeiNUJps
         D12k+aC7j1CJnERf3yHqDULGWHyWSnf/HqEKkMCOTkzPaD0DJp49wvgfDkABS9kDxDIv
         sQ0MBWgN64tZBRRGIiurlOznfqD2t4ukXYWEtlNSr18+2/DqMfL7zMyZgl4mZJO91G/+
         L0DbOHcQETdVMBNNFaNolL5H3OnlhsDx5p5PKm8BJ3OBdn3TISuzP/Pn26+9g+g3eEXA
         i2Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lwuHNEezFD2wxVCOjueEpT6XVBYQiTxhi5fSrm+UPcc=;
        b=AagRpj7u/UPuJvQzy2Y6/ATqtrRKaJ7bt1JqCdzNJY0vNQ44kl/e5/PWGCcPcILYfr
         lO7ip4f/iI1IaPS2Lwz3nELHefN3FJwBQUzv6jinCJMcx0ntUGFStdzCrifeAjIN5/EP
         cTPZwkhgjok22g0z9wigDetr71xpCtKCzRjc3pYH2L+xtBTNrhJqQvw9cux9DB0EMgJM
         mKUZjpk8djjFIY8FGgqvlhpcMHgA8rd9wBq94eeulWlfKLmxE7c9WgtWvzl7edIJ/cBK
         cnQC2BoaNMOAdQpWGvgcBJtEJB0cJkQzc08YydfGrr4iEmjIR2emCnknL3JCCF0sa5hV
         JblQ==
X-Gm-Message-State: AOAM532Cc80p08105YjZ/hAqtB10Fv2VJCgndtVBLMJGBMYNPxPrRcKd
        D31hGbgUpvae3sG1xiOb/5Q=
X-Google-Smtp-Source: ABdhPJwy/RnfEjyesiJUKZrfirJbdKwhOyMIG9I5UQXc4Bd3MjGNZ5WYosVPzt3giQKcGvb7M1JBvA==
X-Received: by 2002:adf:f389:: with SMTP id m9mr11168954wro.406.1613257844139;
        Sat, 13 Feb 2021 15:10:44 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 64sm21011878wrc.50.2021.02.13.15.10.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Feb 2021 15:10:43 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 08/14] sigaltstack.2: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 14 Feb 2021 00:10:18 +0100
Message-Id: <20210213231024.440020-9-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210213231024.440020-1-alx.manpages@gmail.com>
References: <20210213231024.440020-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that the parameters of sigaltstack()
shall be 'restrict'.  Glibc uses 'restrict' too.
Let's use it here too.

......

.../glibc$ grep_glibc_prototype sigaltstack
signal/signal.h:320:
extern int sigaltstack (const stack_t *__restrict __ss,
			stack_t *__restrict __oss) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/sigaltstack.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/sigaltstack.2 b/man2/sigaltstack.2
index d78873d89..62284dbec 100644
--- a/man2/sigaltstack.2
+++ b/man2/sigaltstack.2
@@ -30,7 +30,8 @@ sigaltstack \- set and/or get signal stack context
 .nf
 .B #include <signal.h>
 .PP
-.BI "int sigaltstack(const stack_t *" ss ", stack_t *" old_ss );
+.BI "int sigaltstack(const stack_t *restrict " ss \
+", stack_t *restrict " old_ss );
 .fi
 .PP
 .RS -4
-- 
2.30.0

