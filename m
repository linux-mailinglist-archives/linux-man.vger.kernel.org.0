Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E6A2353559
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:41:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236744AbhDCTl5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:41:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236736AbhDCTl5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:41:57 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08E83C06178C
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:41:54 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id o6so985873wmq.3
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jk79jF3k9E6vfPguSO5Yh2Y/ohCtW/UIxIkavyhEbp4=;
        b=ipARhetk1UjuY73VB/UUK5eZVenTIX7q+H3rYeY+mnmzvvLtEgHt4fZuxi1e0Tr1V9
         nt6dGx6degYOAyZTTrPZ+ZVyB8vcNryiWA+WzsnhsPGS9EVCSotWRagB92btCaMYsU8S
         sZWwxzvMU+p/kh8qokss75sBcSenJT9psLWXyNO2lzM5tUpLms2aG02gQeSaet38kGG3
         7QDI0gkBYWbQPHsQMCmHfDb/KRWHiQhlLY0L1Sk4VtliEpYwdeB+5ID4xmMbLJCc9/Xj
         boz85gG7KWNpAbj/BlXBzKdyHcOyFiZPjep7burbA+dbhabxaVQKxrQeemmRAfc/n4fW
         6DMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jk79jF3k9E6vfPguSO5Yh2Y/ohCtW/UIxIkavyhEbp4=;
        b=tGXJEPQPGaOPnJrGS8M/6O20v62k1euO98N25o1niRP9y8oh4gUyvQlZpkTp2wRwco
         RyQKidImnSsweuyKr6sHVKNpaSjo+AhSSSO2QZk7BHAYfzvoWDsrdSgeLx/bhZR5sAUD
         j8fnNC7uftI66hyELZo2AdNzbBTgatIN+GfPqTHSDOB/Z5zQFp/atj/DIWGLmKtJ2ov3
         G/+6aRu5n5Mrgxgu53XziFJdhHjIHtGDyEi7R7UcRrhpYTNWPiLsTd2xRlY8Bdbt8Jz5
         6BHKj53Tui/ZIP2amuyCIO8UmYMq0rmpWMD60L/QjbMPrPi6lcCuJXSUf5LONxDroWKq
         weng==
X-Gm-Message-State: AOAM533A5CW97QtdqrVGtJ7Lh4Se/+kCvVNPLXaQ55FR2eutAOFSiWI9
        hzkuDppn7VWW3pqo+W27bRAeoBbQrxg=
X-Google-Smtp-Source: ABdhPJyFVIQn2jzxrp1/6EMdsF49N+BVsdmjjw40pxO936y010MAccvndvd6uNxHgCNn5BriydZWIA==
X-Received: by 2002:a1c:43c6:: with SMTP id q189mr18285900wma.80.1617478912846;
        Sat, 03 Apr 2021 12:41:52 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.41.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:41:52 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 07/35] alloc_hugepages.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat,  3 Apr 2021 21:39:59 +0200
Message-Id: <20210403194026.102818-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The page didn't specify includes, and the syscalls are extint, so
instead of adding incomplete information about includes, just
leave it without any includes.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/alloc_hugepages.2 | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/man2/alloc_hugepages.2 b/man2/alloc_hugepages.2
index 07193c542..cc76fc495 100644
--- a/man2/alloc_hugepages.2
+++ b/man2/alloc_hugepages.2
@@ -27,11 +27,12 @@
 alloc_hugepages, free_hugepages \- allocate or free huge pages
 .SH SYNOPSIS
 .nf
-.BI "void *alloc_hugepages(int " key ", void *" addr ", size_t " len ,
-.BI "                      int " prot ", int " flag );
+.BI "void *syscall(SYS_alloc_hugepages, int " key ", void *" addr \
+", size_t " len ,
+.BI "              int " prot ", int " flag );
 .\" asmlinkage unsigned long sys_alloc_hugepages(int key, unsigned long addr,
 .\" unsigned long len, int prot, int flag);
-.BI "int free_hugepages(void *" addr );
+.BI "int syscall(SYS_free_hugepages, void *" addr );
 .\" asmlinkage int sys_free_hugepages(unsigned long addr);
 .fi
 .SH DESCRIPTION
-- 
2.31.0

