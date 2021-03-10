Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 024343346DB
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233495AbhCJScj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232958AbhCJSc1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:27 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 007B8C061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:26 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id l22so7744759wme.1
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Rg/uisPDWdJXJiNctQ2c56fF8wJdfkaJ9RGAuxYwaxo=;
        b=sp/9HmrtBA2XSzO3lKZ+EUnevZcJKRTPIW88IfWTtxgvwNc31rfkpkK/yGrDq4KxDB
         RTdtmDH62Y2lMRy+DTrgkHURybNk60FhbRVwI1IhCRp9o/20K57kB4ySfBp/TDXHf6Hf
         /CGh2CFBZ0xHUXn27gZaiytT9hm45qybAds7is6SmRWuHFGNUgEu1AH6kNkmu/SI3L+m
         hSw76TgUwjrJh4OTu4RiHssm9ycalSO8yUxuyVRf+/H3yKAw8jsJUNH4/ka/76Xf2y3G
         Lh0k9Qdcg+T8Om4zoyRnrnmZDi+vpgTyThv1SwivFyPg75Zmz0EtGv7xuc51v8mkAzf1
         0VoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Rg/uisPDWdJXJiNctQ2c56fF8wJdfkaJ9RGAuxYwaxo=;
        b=ImF26bOmB40nyc/b0wHttfmHOAS+V7qr62t8X37tmWpPlM98pd1QM/xZZ79FO9HYk1
         geLsozt4/AT9HQK8eNZpcv2YpG2yjzi2NPvufA8jHs1g7GMO50G639R1UucJiYr0Cx56
         w9Wt6cXoEjai9dQ6oe6DX1j3OxIqf37xkhadcfvBCAp9deERWwXV3wbcocNaPk87u0F5
         qgtKwGiv+ZN4ZFuAS+axBlyhw6feMEoJIQtS4thJa/pLrFKkUYq23UmaTgVemjws5Zvw
         diCDq/PX4sNHILML2Fi0cif9bSgl8Z3dHGTJ1qUx+9u1x9Hm8Baav7DDuuFvqJnH0BY2
         Z5uQ==
X-Gm-Message-State: AOAM5303kNYecAj46RxdN+FeCr1NfKf+GIYPEWzEoYZ59TOYgSa6Kkmq
        K/U4DKOnY6btCklZiU5q+FU=
X-Google-Smtp-Source: ABdhPJxopxsG2u7B6bq3QJ1OnVYjZf7Em0oJZWvF38k0IrIAXQpoEyHihjutR/gxP63NXWqqkZBMuw==
X-Received: by 2002:a1c:2288:: with SMTP id i130mr4623952wmi.62.1615401145785;
        Wed, 10 Mar 2021 10:32:25 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:25 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 24/24] swab.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:50 +0100
Message-Id: <20210310183149.194717-25-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in swab().
Let's use it here too.

.../glibc$ grep_glibc_prototype swab
posix/unistd.h:1147:
extern void swab (const void *__restrict __from, void *__restrict __to,
		  ssize_t __n) __THROW __nonnull ((1, 2))
    __attr_access ((__read_only__, 1, 3))
    __attr_access ((__write_only__, 2, 3));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/swab.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/swab.3 b/man3/swab.3
index b68d698d7..700d2d5f4 100644
--- a/man3/swab.3
+++ b/man3/swab.3
@@ -36,7 +36,8 @@ swab \- swap adjacent bytes
 .BR "#define _XOPEN_SOURCE" "       /* See feature_test_macros(7) */"
 .B #include <unistd.h>
 .PP
-.BI "void swab(const void *" from ", void *" to ", ssize_t " n );
+.BI "void swab(const void *restrict " from ", void *restrict " to \
+", ssize_t " n );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1.721.g45526154a5

