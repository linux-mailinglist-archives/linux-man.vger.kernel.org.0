Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 954603537E8
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230307AbhDDL7o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230366AbhDDL7n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:43 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 086CCC0613E6
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:39 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id k8so8610871wrc.3
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jk79jF3k9E6vfPguSO5Yh2Y/ohCtW/UIxIkavyhEbp4=;
        b=DcrpK/lR44ouhKmMeljlaxBWI3cFHkFvQ+4nUJh7Sst5HiL4heobjxgrRGRgQBnjvQ
         5nfNcKLngd83JXcWj2aOXhL+gxZjPwZlM0gTUeyJCTSh671DeTcrx1ISrawGM9bYKejy
         CltQplE4cokxJyu/5WTZ6Rmmc2EQARgppvFvGwM5JRlXDaTcj/ebMQEC1gKmxo1xZwli
         91jnBp6loBxmu5dRXF3oopmkHEEcScAyApTb+lbbWEfhtsf5XRav1b0WapCgdDxJZGtx
         7u6WSMUsy0kUGwzFRyNxtUKxBFescCpd7JWGyFDAKjY3jzw3p4H354weW4Cd2IKPEFP/
         TJuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jk79jF3k9E6vfPguSO5Yh2Y/ohCtW/UIxIkavyhEbp4=;
        b=DZ3n+TzlWkTbgMBEqScUex4Fr6MZ3dErhj9weETK7B06IfzfqwCiTA/DP77FJnLeQp
         EBCzC2JcTZZlMy36rOQLyanInFkggHgNnM7D+UF7PtAFdmJPl8zrKVxhNlmGVnaPHPT8
         LMuJQd8MZ/jwUkWgtTNrO4VqUrJTrM7Xx+hf3u8eaVqU//h98On2NX6fBwGacdQ3EhZj
         uBllB+twCOrLEyIJD0oAzGiYkJZ2moT3bd1CiLHWF5HxQSgM/Ipw0GZorDQ5tYuHIjsp
         5uGKdd/ZspU9/RApnPXj/kXgZE7eEjNTFhKehWBjQFnO6/v7ZxyW4XoNM1PtRvAqHDY/
         LpiQ==
X-Gm-Message-State: AOAM532mNQ81A6QPg75llNFVM20309chEE6QFehwnCkntGI8IpsmOTjh
        1wjOH3TcKPrre3kyljAjW1hEjIbwQOc=
X-Google-Smtp-Source: ABdhPJzCuQ5x+/u9Yu5Xmdr88Krcd32mAkrwfGti6ynE9poooQJkFXYDsjSWwOncRgU/X7woVEaW/g==
X-Received: by 2002:a5d:65ca:: with SMTP id e10mr1281426wrw.331.1617537577828;
        Sun, 04 Apr 2021 04:59:37 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:37 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 07/35] alloc_hugepages.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sun,  4 Apr 2021 13:58:20 +0200
Message-Id: <20210404115847.78166-8-alx.manpages@gmail.com>
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

