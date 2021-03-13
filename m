Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 641EC33A051
	for <lists+linux-man@lfdr.de>; Sat, 13 Mar 2021 20:26:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234415AbhCMT01 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Mar 2021 14:26:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231329AbhCMTZw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Mar 2021 14:25:52 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C503CC061763;
        Sat, 13 Mar 2021 11:25:51 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id t5-20020a1c77050000b029010e62cea9deso17084627wmi.0;
        Sat, 13 Mar 2021 11:25:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=53imOT5BnpvRZ4s95euPtzvtcokyK77zLaPlARMABdo=;
        b=Lmr9+lHdyb1ZIt3HssHU+WXxrSFQCt35iHbnBrlJHEfgNYggsvKt9NeXYNNkGNbdHO
         lrlhb1XoaTwfRLtpqpuHsQrvt4jSWwS604jbMgY//gTU7AHZCfs1l1WWk8Z0lisJ8NIi
         UMxt/P9c+3eRI+sUMH4RK2qdZjDgXsNh43+DaUwlQATf8Vb7baxR9xdQ7pQh/CYOlx5h
         Y+PJvXBmGoH8MLAwuOQx31WEcnuk+QYESgUa5drH0yq0AcS5u7Z9jpdtcFEV31D6e/MS
         Q/fKBjcOH1taOezMjhCQ8t//93hk0dTAXWIXhrWc7LOP6Xmf8drNuW3RvqUW7qZJw95m
         wlVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=53imOT5BnpvRZ4s95euPtzvtcokyK77zLaPlARMABdo=;
        b=G3VZn0t4UZyTL8KH9hZ2aTV5ZaB03v69usCgXGyR2aztysMpASp4HgsK+dbHzeXPoa
         7SVwTELKpX7eFbn9ExTXpbZph1A8AXW87VSQb3B3TK3dpzZFtuHdQ2K0S2aUc/ldcXgi
         KPI0UHYUnFip7OMnpa7E6Gd8DgVGXoS3iLzaSi0Oq4MK7xCX8Br2O6Z0oPdd2xDxiT5b
         PFigSCkfogIzElO4wlbSXKCCDVxxxrSi+wskZryv0K2XUhjJv95Gnyb9Rf98cMyGHGXE
         TfPU9S4gGzI85t1fiA3ZQ9R81/o0EuCQ/3ApNiipiSSxu5onXV17XGqNEMS+OmzxB4tb
         pPXQ==
X-Gm-Message-State: AOAM533acjPpc2/PHmjCpOoQBSCOCjeG1Qre7qkBq1dRqSzQ3C2ePBDU
        +jdjAbydK1wXARox3oiWzF4=
X-Google-Smtp-Source: ABdhPJxhiKSAKHH3iakfudvWPUYRMNwr2C7nWlPajnCaqXmkd2bz3HxTZOSV1DShl9gnoFJQuRljGA==
X-Received: by 2002:a7b:c396:: with SMTP id s22mr18682288wmj.38.1615663550550;
        Sat, 13 Mar 2021 11:25:50 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id j136sm7670964wmj.35.2021.03.13.11.25.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 11:25:50 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: [RFC v3 02/17] alloc_hugepages.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 13 Mar 2021 20:25:12 +0100
Message-Id: <20210313192526.350200-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210214133907.157320-1-alx.manpages@gmail.com>
References: <20210214133907.157320-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/alloc_hugepages.2 | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/man2/alloc_hugepages.2 b/man2/alloc_hugepages.2
index 623eeab6e..a3a157725 100644
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
2.30.2

