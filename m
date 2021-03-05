Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9492732F6E0
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229882AbhCEXvj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229919AbhCEXvY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:24 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F751C06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:24 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id u187so2664920wmg.4
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=braMiz+RmjCWbXkO3k2735BiRuyVPf15QOPaEoS+Fho=;
        b=n12WAO5SvEfQS2Hm8v5hzcPZ6T07rammN1ufE8lsOGA5lyt8NkEXihR/iCU2p//lFY
         ahm7WGXU9b3KJC9Ruurw8hxhGOvEWozqeRtKWKcNUQK+nNpfAn6ALejQzmyqDN9PO/HK
         8LYsIaWpCKqOvSaCkwJRpaVvR2FXQ2IYp7Yx3ofiU8JhbpIIQDVSuvwYwdYgZ1BXYxWA
         X51ibiiuMtm/ZkJiB4JQkOevZ92TcaQFzxKl8f5O0K2u8EUhGfoqYp3tgw2sAdzdBk2a
         6RUZKrmQlDDNsxi7/WlR9z229PHIYelb/WSZD2cV68snJ1sDpEVo+oemOeUhum7uXKKk
         ejzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=braMiz+RmjCWbXkO3k2735BiRuyVPf15QOPaEoS+Fho=;
        b=BJKo6uqeCvuoMAsk9Cf7sxrKlUNoTsV/zOIvYlMHfZ+aI/FYVz00CJAzmmwwWV9q09
         Ak1/vwQzbljUBT8BnwQZ9hV+wtJdZWXxuyq92HB42FCB8GzS/s2BIo65nlG/cIDPUpIk
         Fzu3gmSHVTytYM3QX4IvlPALzT7X/5yMaNmqSNw9+Ssec6NQbSjmcQ3b7Qq748Kdr0Jq
         XPmfqYh/M/YOfpjMIoRaR20M0lbT/dwwKRk+VNV4rJ8YP2h5zkvMRtbEHz2v9UGeT1CT
         UaMPWVugNyRSBtsKWlkp/KkzqxerDmjwER83eBhT94qOZbRDUSpXchU4UuNbhdZQIogI
         iGxg==
X-Gm-Message-State: AOAM533jW69VOPa7q4sI2KgU02XPOJMF3hEKfI5tbcQDudGX9cDiDtWV
        aklHYXa1LkzLHp99tsCqYCc=
X-Google-Smtp-Source: ABdhPJzdr3BunYszFDoiRGIJOZ0gyejPrAy1obzsPz2fvOO2a/xKIKOStDvY2W/L0iajxWUGesrwig==
X-Received: by 2002:a05:600c:2204:: with SMTP id z4mr11423399wml.31.1614988282973;
        Fri, 05 Mar 2021 15:51:22 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:22 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 09/22] malloc_hook.3: SYNOPSIS: Use 'volatile' in prototypes
Date:   Sat,  6 Mar 2021 00:50:53 +0100
Message-Id: <20210305235105.177359-10-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'volatile' in __malloc_hook, __realloc_hook,
__memalign_hook, __free_hook, and __after_morecore_hook.
Let's use it here too.

.../glibc$ find * -type f \
  |grep '\.h$' \
  |xargs pcregrep -Mn '(?s)\b__malloc_hook\b.*?;';
malloc/malloc.h:168:
extern void *(*__MALLOC_HOOK_VOLATILE __malloc_hook)(size_t __size,
                                                     const void *)
__MALLOC_DEPRECATED;
.../glibc$ find * -type f \
  |grep '\.h$' \
  |xargs pcregrep -Mn '(?s)\b__realloc_hook\b.*?;';
malloc/malloc.h:171:
extern void *(*__MALLOC_HOOK_VOLATILE __realloc_hook)(void *__ptr,
                                                      size_t __size,
                                                      const void *)
__MALLOC_DEPRECATED;
.../glibc$ find * -type f \
 |grep '\.h$' \
 |xargs pcregrep -Mn '(?s)\b__memalign_hook\b.*?;';
malloc/malloc.h:175:
extern void *(*__MALLOC_HOOK_VOLATILE __memalign_hook)(size_t __alignment,
                                                       size_t __size,
                                                       const void *)
__MALLOC_DEPRECATED;
.../glibc$ find * -type f \
  |grep '\.h$' \
  |xargs pcregrep -Mn '(?s)\b__free_hook\b.*?;';
malloc/malloc.h:165:
extern void (*__MALLOC_HOOK_VOLATILE __free_hook) (void *__ptr,
                                                   const void *)
__MALLOC_DEPRECATED;
.../glibc$ find * -type f \
  |grep '\.h$' \
  |xargs pcregrep -Mn '(?s)\*\w*\s*\b__malloc_initialize_hook\b.*?;';
malloc/malloc-hooks.h:22:
void (*__malloc_initialize_hook) (void);
.../glibc$ find * -type f \
  |grep '\.h$' \
  |xargs pcregrep -Mn '(?s)\*\w*\s*\b__after_morecore_hook\b.*?;';
malloc/malloc.h:179:
extern void (*__MALLOC_HOOK_VOLATILE __after_morecore_hook) (void)
  __MALLOC_DEPRECATED;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/malloc_hook.3 | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/man3/malloc_hook.3 b/man3/malloc_hook.3
index 7f1e35043..74c493c83 100644
--- a/man3/malloc_hook.3
+++ b/man3/malloc_hook.3
@@ -16,19 +16,19 @@ __after_morecore_hook \- malloc debugging variables
 .nf
 .B "#include <malloc.h>"
 .PP
-.BI "void *(*__malloc_hook)(size_t " size ", const void *" caller );
+.BI "void *(*volatile __malloc_hook)(size_t " size ", const void *" caller );
 .PP
-.BI "void *(*__realloc_hook)(void *" ptr ", size_t " size \
+.BI "void *(*volatile __realloc_hook)(void *" ptr ", size_t " size \
 ", const void *" caller );
 .PP
-.BI "void *(*__memalign_hook)(size_t " alignment ", size_t " size ,
+.BI "void *(*volatile __memalign_hook)(size_t " alignment ", size_t " size ,
 .BI "                         const void *" caller );
 .PP
-.BI "void (*__free_hook)(void *" ptr ", const void *" caller );
+.BI "void (*volatile __free_hook)(void *" ptr ", const void *" caller );
 .PP
 .B "void (*__malloc_initialize_hook)(void);"
 .PP
-.B "void (*__after_morecore_hook)(void);"
+.B "void (*volatile __after_morecore_hook)(void);"
 .fi
 .SH DESCRIPTION
 The GNU C library lets you modify the behavior of
-- 
2.30.1.721.g45526154a5

