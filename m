Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4CBE31F1AB
	for <lists+linux-man@lfdr.de>; Thu, 18 Feb 2021 22:26:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229480AbhBRVZl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Feb 2021 16:25:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229620AbhBRVZj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Feb 2021 16:25:39 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3211C061756
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 13:24:58 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id n4so4555510wrx.1
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 13:24:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=th0eEfcJ3ZFUsfRO4XdxHkxvC/wTJjx9ssSjyAkEER4=;
        b=qG7oLeSrCuMUqaZbkcvUdaa1qK527X7MhybzsQfvtlZLiJ91uL+bo680iHQf++acam
         jmNz0hY9bPx9Un6fOL0kGWB09rFSGVF2NihEeioi0MIqpf7DGsoY4a007FtZPlQrGgCf
         +9ApQTNZPK3qu2M7fw2R/g64svLgyiRqzIgqxoXQrGCTFvINx5iuWRvIjUIfPdRmGrSt
         /8SW9V0RUztv7wUIgI4sOlZpZdCwKkW0UQsKHnl9Asw6464KegX83Z/x6KkzcD3krNhh
         BC8WR3uy5/3OmMQ5XjgUpf5df+srkNdTLBtWN+Ihr+s0CAve7AG9mnJVQvqSBuAg/igb
         JhgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=th0eEfcJ3ZFUsfRO4XdxHkxvC/wTJjx9ssSjyAkEER4=;
        b=EQwkkFWEHQ4NPeLLyQPHJTI+jWs05K6p8FvUwZs5j0SsVr5cCFQqJWIcQikm9ygmNy
         tpM6nYD5qjx+8iFReNCvOFc5HK+CAVU631bQ51868B0cuovNu88rn/gMj3I4al2XeNG7
         tbsLg/f7eQNjKqDehinsxHzciF+FYNLmeYV8NM1J8Qu9xi2dpbmjM+F8ksQKYyk2tLhd
         YSEUPkWhBQPE5hR3KwFbipL5jn/uSfcPy5s3KSE/DBeNf+x3Sed9S4QjvUHQoYhTHO38
         tUdAvwMfH7RPduBiKHc9E6me617mFB1KyWe4YmCxua6MLO3VAZQlkhDBeItn6rE6hayO
         1lJw==
X-Gm-Message-State: AOAM530z+oW6WhtFzdlg7nokoOfR3x7bSkhkIuN04S4MHgEMxbrFCWtQ
        W9pITNDgzvUIyJ0oJC/SInQ=
X-Google-Smtp-Source: ABdhPJy7JOPrE0/syiE9XRL9CRS4qkBhDKGzFshQdq2RxfWeHG6Yyq6BDV20GRT+dU12qZII+/SqeQ==
X-Received: by 2002:a5d:6403:: with SMTP id z3mr3211799wru.391.1613683497582;
        Thu, 18 Feb 2021 13:24:57 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id s11sm7870940wme.22.2021.02.18.13.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Feb 2021 13:24:57 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 1/6] abort.3: SYNOPSIS: Use 'noreturn' in prototypes
Date:   Thu, 18 Feb 2021 22:23:54 +0100
Message-Id: <20210218212358.246072-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210218212358.246072-1-alx.manpages@gmail.com>
References: <20210218212358.246072-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that abort() shall not return.
Glibc uses __attribute__((__noreturn__)).
Let's use standard C11 'noreturn' in the manual page.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/abort.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/abort.3 b/man3/abort.3
index 71d555841..b33d23ad1 100644
--- a/man3/abort.3
+++ b/man3/abort.3
@@ -38,7 +38,7 @@ abort \- cause abnormal process termination
 .nf
 .B #include <stdlib.h>
 .PP
-.B void abort(void);
+.B noreturn void abort(void);
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1.721.g45526154a5

