Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2893326FCC
	for <lists+linux-man@lfdr.de>; Sun, 28 Feb 2021 01:51:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230040AbhB1Aup (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Feb 2021 19:50:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230153AbhB1Auo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Feb 2021 19:50:44 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64E11C0617A9
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:25 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id n4so9581851wmq.3
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MxkD4a6rylrGp5JIkAA92kF0tWAH9d5pd5HaxqyitoA=;
        b=FycoRKfB2rvowwQGnAhgUiJlebdjhb8UmxcJqEbma9222Us0nYZPU0U6bktJm0LkLw
         DfLn4WiTOwqx/Zk6HPmVwQxf0De0VpNetdbRyP1Gb/aLrIH0/KjjWab4oFFLUFZBvmMZ
         WHA/AnyY0G5/Yyg7PeznZwSjon5Y22xS3Q27oUflikZsGvzLMPxRo2EF6CJU6zNO4fMX
         6//Bbf4JlCLOq1l8nfj/Y/wEIF3qkAwBB2FuyJEwRh/FVgtlvO3EasltW2eruMf4QDJj
         idtKy3XKKzGVaphNSOZwjd1L72kMoMXatdnSLs68tE96POEwVTuU0Bi/Utx+24Si6ynH
         PITg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MxkD4a6rylrGp5JIkAA92kF0tWAH9d5pd5HaxqyitoA=;
        b=YB7dMa58cFAPnbdu5Ti949IIcjvXcH4G/xzdy25DW9Rl1FVrL3Man8864gz2ROyyEq
         e6f+UxXhTSl+PWygQPrvCF1H+kmsmMfKJ0CMY6v195tEq1eXwxRtQk7oi/Zv60thqv8J
         sG66hGZdog8DKLNRm+CFwiuX2cXthp4UltWpfNCd9/dBvfQMqJQL6M7Q4WCqCqNG4hLt
         MvwUQBoBhnTBMAEulcXkrjF5HHZSFYRmwWQ5aiIztA4zxZaoxGgLqpkNCnVUNly5196l
         4lCvVc25V0Uhmu2w3eS340zfYsUuClk7ElZx6W1VbsHdRlDKogWTspgpCa8yqM9WbHZd
         ZtVg==
X-Gm-Message-State: AOAM530clP84VN+Fx/Z4tS8him35QWF/wVmbg7P9UoS6r9xjOiJk84vY
        TvVlWD4lUTXOxUcSFz39wps=
X-Google-Smtp-Source: ABdhPJz2NIAfHvcT6UIuqXaAxUOAhqUgXLi/oyWfXM/zMr7tDdjolMCMu8k8GeT/+EhXANAkuqlvhQ==
X-Received: by 2002:a7b:cb01:: with SMTP id u1mr9319991wmj.149.1614473364274;
        Sat, 27 Feb 2021 16:49:24 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id o14sm18212145wri.48.2021.02.27.16.49.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Feb 2021 16:49:24 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 08/14] getline.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 28 Feb 2021 01:48:12 +0100
Message-Id: <20210228004817.122463-9-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210228004817.122463-1-alx.manpages@gmail.com>
References: <20210228004817.122463-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in getline(), getdelim().
Let's use it here too.

.../glibc$ grep_glibc_prototype getline
libio/stdio.h:621:
extern __ssize_t getline (char **__restrict __lineptr,
                          size_t *__restrict __n,
                          FILE *__restrict __stream) __wur;
.../glibc$ grep_glibc_prototype getdelim
libio/stdio.h:611:
extern __ssize_t getdelim (char **__restrict __lineptr,
                           size_t *__restrict __n, int __delimiter,
                           FILE *__restrict __stream) __wur;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getline.3 | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/man3/getline.3 b/man3/getline.3
index 25930dbf9..182a8ca85 100644
--- a/man3/getline.3
+++ b/man3/getline.3
@@ -30,9 +30,10 @@ getline, getdelim \- delimited string input
 .nf
 .B #include <stdio.h>
 .PP
-.BI "ssize_t getline(char **" lineptr ", size_t *" n ", FILE *" stream );
-.BI "ssize_t getdelim(char **" lineptr ", size_t *" n ", int " delim \
-", FILE *" stream );
+.BI "ssize_t getline(char **restrict " lineptr ", size_t *restrict " n ,
+.BI "                FILE *restrict " stream );
+.BI "ssize_t getdelim(char **restrict " lineptr ", size_t *restrict " n ,
+.BI "                int " delim ", FILE *restrict " stream );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

