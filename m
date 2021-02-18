Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 643D631F1AE
	for <lists+linux-man@lfdr.de>; Thu, 18 Feb 2021 22:26:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229720AbhBRVZp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Feb 2021 16:25:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229954AbhBRVZl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Feb 2021 16:25:41 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 360EFC061788
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 13:25:01 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id u14so4532724wri.3
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 13:25:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BVFUHN0gLvvk3Ff9UduPeKJz8vLqyXCvPRAU9Snpcyg=;
        b=MP9QH3lgIx4KN5gp2XF44bD5JqMNtZcrnCqOrnXq3zXol+Gq1kGMqHZj18ZUW8Gfdg
         sDVv1W24NzXRkkSU3ZoZkkdtPWVtngxj3QjTMjQehUei8nmW8X2LwpybWc5Skgk1LwH3
         wGEqqkxaS558NdrSnePKyvdEBJ+HJU6SdSEm+Ah9qCiMJFQmeaaGCJCb/AWIEBnul57e
         KTSYT6MMYE+bdUU+L/6WnlhkteNCKpVEV0YJDv3ell6KfRu0UlvqM1RpQGbU8Vq/5tlO
         FbCCDI3fhkLnAL1+fCWiD0cyhKdsgvTqce2GlnoHCQXU8qwAM8MCqJvRYMDp1JyxZBCU
         mCOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BVFUHN0gLvvk3Ff9UduPeKJz8vLqyXCvPRAU9Snpcyg=;
        b=Cx5/Y3CHSqhmWqZtdyuaGsdg+fbCZZglRt5D4versbvURopA7l1tVJwkGj3IT8oL04
         54IevhdmFvgMWyeU7PMPzG5AzIQhzaZnuOcORyd9/Tz7ABXwfV2C92UFYzT6hYDwP8/C
         Ei5RkZsQcPAkJzc4s4FgNGSG9sxPqhVSFDbrb0VBMW8q9MC4H9xrhy9ZGfQWZ4ACms4s
         p56pZZjD9KQwqAjbOxA70L/pl7UJSeUOYyNdq4HECtkZFB1YuKry0i8uc61Q7ipMr2VK
         e3JEQO2/qelurPK4oLLGVJR/Ydi42nifQILPXcR0wMtC7WJJfPI6EsTS9gGBeK09B1RE
         hcxQ==
X-Gm-Message-State: AOAM531Lc6ySGYvOngdXu35aIOpkvC3l1POdtrlhuF2KXqRKmhTqS9C5
        iyi2BoVrV7NAJWLEEk9ZQFk=
X-Google-Smtp-Source: ABdhPJyK201C19q+o6cLCqq782yD1jmwt+2+WNUwEWSJGe3iuZ6dJI1oMPHonMwpz/5FAznGIiD/bg==
X-Received: by 2002:adf:a703:: with SMTP id c3mr5916498wrd.379.1613683499811;
        Thu, 18 Feb 2021 13:24:59 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id s11sm7870940wme.22.2021.02.18.13.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Feb 2021 13:24:59 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 4/6] exit.3: SYNOPSIS: Use 'noreturn' in prototypes
Date:   Thu, 18 Feb 2021 22:23:57 +0100
Message-Id: <20210218212358.246072-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210218212358.246072-1-alx.manpages@gmail.com>
References: <20210218212358.246072-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that exit() shall not return.
Glibc uses __attribute__((__noreturn__)).
Let's use standard C11 'noreturn' in the manual page.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/exit.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/exit.3 b/man3/exit.3
index 50eec7821..3e38a32a6 100644
--- a/man3/exit.3
+++ b/man3/exit.3
@@ -33,7 +33,7 @@ exit \- cause normal process termination
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "void exit(int " status );
+.BI "noreturn void exit(int " status );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1.721.g45526154a5

