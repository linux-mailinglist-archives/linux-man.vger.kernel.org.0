Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71AA63316B8
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:55:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230517AbhCHSyn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231220AbhCHSyP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:15 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4D32C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:14 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id d139-20020a1c1d910000b029010b895cb6f2so4441274wmd.5
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bHLgot04ZhQA3vEfbkin/yswvck+oCV4NRicxuEVRKQ=;
        b=LCZeICGWeyIL7tZ78Jr65Xq+hITEcL6m2NtS3WCIe6/QKnOs/0VXjjVMDUEmJF67i7
         65EAz+84qTafAuJ8bMmKKQ/PQ1kKGInKsIol5XBZZWLWKPLLJqO3XjcOy/tYKRK5qrp8
         huy5TZei1tKZyJomFaB7xwN7vAHAHFfwCXiCUlHzFqLITUNespeE1Jo1wUtPcTUAU5Ho
         42zMkJ7AXjI1vMIWAeUyC/p0dEbU2UBghIn9oJlagutYtiHY78fnx/YIQ91+ds74Fj5C
         BKrCZqhHZH+N7rQ/G+HSw6Zh9B5EjDE1bcYJVbzvLysuH6gQ8NiogOhMtUs+GfXcy4Sf
         HgqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bHLgot04ZhQA3vEfbkin/yswvck+oCV4NRicxuEVRKQ=;
        b=Mz2fBQgIWWnwC1Yn79IsSx5ZPO5gqaGN5d4wOpRNYYoQh+tHHS92EfO1TcCjR6OIFb
         7ECSP4xUcWcm+vgDOLpkluiK4g7l93nXRimbhTNyxnAEVg00OCwa6/XPOBcvGJ23Vk1i
         2wLCHfRV+OgCrOdZ+hfveMxAB1hTRd3lxjIgZJkGRoz13xYYYRk6/X3jQA2NpTWcllk5
         FPtiSwvViKIfXA5O9CqjNSmX2sU6Pg1zQvocxR5FcRhO44xcrSUErOz9tdsqkeY7ogo0
         perixDsVbW6Huukn8rq4DeOvUDRzOC51zdlDWPNaMOkKPRm4Iz3CTl5ruE9urAz0uK3p
         90eA==
X-Gm-Message-State: AOAM531ROpK58a43tjqimq/PFX+NA2fCdvAc+sx9OD4KiAq0W1yB+9b9
        9yfa2xDOdvdfnaejUJZjn1BSRrtKc2I=
X-Google-Smtp-Source: ABdhPJyNVt2pd/f//KVnUmNNNSL/jWuZ77jZTzGKUPkmXAcE+Kuj5LtCUTbU2L45NLEla0x8IndNqw==
X-Received: by 2002:a1c:4e12:: with SMTP id g18mr218071wmh.56.1615229653510;
        Mon, 08 Mar 2021 10:54:13 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:13 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 07/23] pthread_getattr_default_np.3: SYNOPSIS: Add missing 'const'
Date:   Mon,  8 Mar 2021 19:53:16 +0100
Message-Id: <20210308185331.242176-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'const' in pthread_setattr_default_np().
Let's use it here too.

.../glibc$ grep_glibc_prototype pthread_setattr_default_np
sysdeps/nptl/pthread.h:406:
extern int pthread_setattr_default_np (const pthread_attr_t *__attr)
     __THROW __nonnull ((1));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/pthread_getattr_default_np.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/pthread_getattr_default_np.3 b/man3/pthread_getattr_default_np.3
index ad2a92f52..6a24006bf 100644
--- a/man3/pthread_getattr_default_np.3
+++ b/man3/pthread_getattr_default_np.3
@@ -32,7 +32,7 @@ get or set default thread-creation attributes
 .B #include <pthread.h>
 .PP
 .BI "int pthread_getattr_default_np(pthread_attr_t *" attr );
-.BI "int pthread_setattr_default_np(pthread_attr_t *" attr );
+.BI "int pthread_setattr_default_np(const pthread_attr_t *" attr );
 .PP
 Compile and link with \fI\-pthread\fP.
 .fi
-- 
2.30.1

