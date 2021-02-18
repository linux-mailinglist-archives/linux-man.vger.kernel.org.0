Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D53BD31F1AF
	for <lists+linux-man@lfdr.de>; Thu, 18 Feb 2021 22:26:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229958AbhBRV0V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Feb 2021 16:26:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229946AbhBRV0U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Feb 2021 16:26:20 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3188C06178A
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 13:25:01 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id t15so4451309wrx.13
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 13:25:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=o7qyi/FJvo6QiFXoxq4Rv75oWdZha7mErr8ndoxkVjU=;
        b=sc4fRvyqKDDVWtZoaFrKOK+2HYS9gEnvW5pTsM+glP/VG/DxgemGTGMYaOLUFCYlcZ
         eLKU46TBQ9fTXsFonuELlPpbZcAH7Ep6wz/6fIlR3RT9jhS9L5nz6SB65WDaG7P2wYA1
         k49nrNq9JDRj1Zej+Y3dndRVD3UkAzic6hDtPwhEx3P0bDK3dGrABn9KQo/Ggep2QFsU
         FzgxDeOVdzdctMbdmw/trQHPuEf0JJ9ey+0JJ2gL5Za+pPAHjqblvFtIt8RTNG8liGBM
         GJkaYCCvY9lDAN9pO+V7zpac/7sokUY4iwnkFhq0It6dCDpEkmsRHYqWWeJcT728JYVB
         8BHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=o7qyi/FJvo6QiFXoxq4Rv75oWdZha7mErr8ndoxkVjU=;
        b=Djr6n8c/N4cerHKxBV5KiUriSpmjTiZJgJg3pYcpy05DnuUV+ngT9FIbRFfR3USX6z
         Or3usJlVQfdpkEvmvhJ4zzAoHv/ttLhEpC0zlxwrMR4sbdtn0+PcxI/XGaPfYIIobNVy
         Kcsu8vlGz9NgBDoc4YhDjYjHCoi91SNcfPRvyDXA8nsGwjYjGmFg3iGkZA9U60d64DRl
         UvZpsHI+cJyZtz0yNK9nURleX8h1Pmpo2UYXaB056nP7N6oZZYfQd5xtx2gmWl+pBMlK
         4vpnu9qzhlDDG0cw6c31fN2PJNkSIh7+2FDsXD8rTf4vg2nocGth0ZUKWv+nMwCqOFyz
         MWUQ==
X-Gm-Message-State: AOAM531k6fKUszhZlLqUid5B64Jdv8H1YUZfBPL4gjRhRUnfSni5x8MA
        IdNvgUQYz4PNRfYZosLvn70=
X-Google-Smtp-Source: ABdhPJww0Dqlef/P4D2LIvxN0c1jk0tNA6rBxe+adhqiCpaApU7k4O52QPhcxm94SoxMaVXWPuJAlA==
X-Received: by 2002:adf:b350:: with SMTP id k16mr5998920wrd.190.1613683500552;
        Thu, 18 Feb 2021 13:25:00 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id s11sm7870940wme.22.2021.02.18.13.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Feb 2021 13:25:00 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 5/6] pthread_exit.3: SYNOPSIS: Use 'noreturn' in prototypes
Date:   Thu, 18 Feb 2021 22:23:58 +0100
Message-Id: <20210218212358.246072-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210218212358.246072-1-alx.manpages@gmail.com>
References: <20210218212358.246072-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that pthread_exit() shall not return.
Glibc uses __attribute__((__noreturn__)).
Let's use standard C11 'noreturn' in the manual page.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/pthread_exit.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/pthread_exit.3 b/man3/pthread_exit.3
index 60879f07c..de9f9abcf 100644
--- a/man3/pthread_exit.3
+++ b/man3/pthread_exit.3
@@ -30,7 +30,7 @@ pthread_exit \- terminate calling thread
 .nf
 .B #include <pthread.h>
 .PP
-.BI "void pthread_exit(void *" retval );
+.BI "noreturn void pthread_exit(void *" retval );
 .PP
 Compile and link with \fI\-pthread\fP.
 .fi
-- 
2.30.1.721.g45526154a5

