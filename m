Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 845BC32DA90
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 20:49:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231734AbhCDTtH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Mar 2021 14:49:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231255AbhCDTsq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Mar 2021 14:48:46 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2A6EC061574
        for <linux-man@vger.kernel.org>; Thu,  4 Mar 2021 11:48:05 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id k66so10849529wmf.1
        for <linux-man@vger.kernel.org>; Thu, 04 Mar 2021 11:48:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1hQkoDfbSIdVgOU/Sd2EwzsscbUsImiOzy+OECzLLBM=;
        b=K7bd7Y1RL9tqAaTIPtfv4dx44l4VDARX2bj8Pkga8u8wuyMwR9rybwQiLP4BqY7X4A
         +Kg/QTauYi+Bb2ryDfbU9HYVj49bjSUTK/FXTldyAVkeeGGwxbVpZCCWBx2bfGPOMsI/
         cEFkCbShcZHAAUjIfy+/ypYZAYUIvuiSlN0Fg2SUQwKcUD8oFyk25t4dPvMaV923o08G
         1IvH7uhUqkl/YtYS6jacZ+XDT0fkFIYYu5VkH6BeE/6v04O1Wyv6LmX0JUBkJ1+ceueW
         P0CwUC/fk6Ant0O5118nKJjXpyxdhldWCHayRyblAWBE3jvvgn7wGgysQT8E48W8u+o8
         5X/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1hQkoDfbSIdVgOU/Sd2EwzsscbUsImiOzy+OECzLLBM=;
        b=qCOXRXUL+8cy+cEvt/8OvA+OREz4VBnVaGx0aQY/NSkAUXJ7zYfaZ+k+i54nyq78W6
         pUumSMXeCfGjM0joQbNeJY1/GHlV1IbYz2Je5z8ltTQshM+q3nBZEuMOi/mkshbzdG2m
         w9IuWUoA3hyyKsEmeZS3UE5L23EKwqp5WhidVrO0fJrcibRv7CQ/OJKCmvaGRms26OTY
         QnGuufPTbfglpTMfHsEbcDL2OvQaAvltJiYCOZWsIKA5KGaRsJAuI6Cohfuh5f9LpfNJ
         HO6OQl23PjEdBPX7vXTGWQbuY5o1RVAIZ9KaYrK2Gc+JZtQF2CRK1B92lJNcDSWN6DRJ
         5xsg==
X-Gm-Message-State: AOAM532fUekvgJTe5o7WvnnNeQXAdnXlXWggenrvns45NAeFWvaHIVt8
        2kfXuAUhZb/L+JQ8438XcMl9Cw2DoRSw/Q==
X-Google-Smtp-Source: ABdhPJwvPmYaRCDgobJSGCvZhotznEQvDp0OTDBKOT1ZAeGQRWLF8vaYDNhdX264mN2ZWF2rGha0zw==
X-Received: by 2002:a7b:cbcd:: with SMTP id n13mr5442836wmi.112.1614887284660;
        Thu, 04 Mar 2021 11:48:04 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id z188sm763787wme.32.2021.03.04.11.48.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Mar 2021 11:48:04 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] makecontext.3: Fix function declarator with empty parentheses.
Date:   Thu,  4 Mar 2021 20:45:35 +0100
Message-Id: <20210304194534.130735-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'void (*f)(void)' for makecontext()'s second parameter.

C11 marked function declarators with empty parentheses as
obsolescent:


>   6.11.6  Function declarators
> 1 The use of function declarators with empty parentheses (not
>   prototype-format parametertype declarators) is an obsolescent
>   feature.


Let's use the correct syntax by explicitly using '(void)'.

.../glibc$ grep_glibc_prototype makecontext
stdlib/ucontext.h:51:
extern void makecontext (ucontext_t *__ucp, void (*__func) (void),
			 int __argc, ...) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/makecontext.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/makecontext.3 b/man3/makecontext.3
index 83720dd2c..ac9afcf69 100644
--- a/man3/makecontext.3
+++ b/man3/makecontext.3
@@ -32,7 +32,8 @@ makecontext, swapcontext \- manipulate user context
 .nf
 .B #include <ucontext.h>
 .PP
-.BI "void makecontext(ucontext_t *" ucp ", void (*" func ")(), int " argc ", ...);"
+.BI "void makecontext(ucontext_t *" ucp ", void (*" func ")(void), int " argc \
+", ...);"
 .BI "int swapcontext(ucontext_t *" oucp ", const ucontext_t *" ucp );
 .fi
 .SH DESCRIPTION
-- 
2.30.1.721.g45526154a5

