Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 807703346CF
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233065AbhCJSch (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233135AbhCJScP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:15 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B3CCC061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:15 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id u16so24429721wrt.1
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1ZZr1EvO5ui5u7KR0jLKyoq5CbBvdVKAFwtMZjteMFg=;
        b=ptTMyudjtEcrzxidMAe8Apavqn/q8Thno+LN8y5SAB/tawCHNq30VuW/kg9qTrQuXu
         zbPWDPGBcBa6sSwDSkGKUwjScmCtoHcKiudTQoMMSNKgOxFAESoPhtPQ3EAdxbgf6Wmz
         NoN2qthhxHX29bX/uKQGRWQSnuvd1kO/riFjnLIQqFYXxLpTydMw/9GspwZfO//T8jrZ
         4h0YoQlkAG+31VE8FdodcS89oKkymzOykGD7cQJVkgJrRnxGpAk7aMz2C/anO3Vf2fra
         6jNQoM4V4mmdRAy0aUktFoIKE74O9hNHG6Q+zMHlf7vC6tCdU8ENl/X5VDNTaOY3S5Tk
         e8Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1ZZr1EvO5ui5u7KR0jLKyoq5CbBvdVKAFwtMZjteMFg=;
        b=YwgX5+tQrmov8ZTvilnD99STZy+BPWkiNIjOsTM95KxsuEa+qnP99jYqbXfY5KZ8pV
         mNxsEp7o/hu6Z8qsNVGOQ8Si7EK+XOIC1nkPlEeoggOubnkWQQ/3YrMdJIMN646Fnp6e
         X5yrgXPFRQPAA1+krQ1XPCQtzXQvHVdJ04wFGIY18A10swYg62/JGfnSgjuAIkdmh+VC
         kkmsLfLqY+M9HjA5/jmpyPrFeEdu+0lQx7q2nXD7ejSApSG5ie+yuwAxZuJO/nYS1Vxs
         x8y7XtB15enx+sFvU4GKUz2wLf0g8xg6e2W7iuTaRXrlQ24TLZFTbONYME9b4EW8N2Km
         OVcQ==
X-Gm-Message-State: AOAM530lFk73uBDuC/RqWIQ9XIVVjXFJYhlgr7FQi/urDFF4Kzf1IP6M
        XhkR1oUn/juiIa51HbBBhWE=
X-Google-Smtp-Source: ABdhPJwajoDtAelXDKdDDU9KBMJut0J2vvSbN6AWCg3BYqlg2Tl5lff/egchlgXvFCjQ8PU6fvAFZw==
X-Received: by 2002:a5d:6610:: with SMTP id n16mr4767194wru.399.1615401133870;
        Wed, 10 Mar 2021 10:32:13 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:13 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 09/24] stpcpy.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:35 +0100
Message-Id: <20210310183149.194717-10-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in stpcpy().
Let's use it here too.

.../glibc$ grep_glibc_prototype stpcpy
string/string.h:475:
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/stpcpy.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/stpcpy.3 b/man3/stpcpy.3
index 448b53955..e978dfb3e 100644
--- a/man3/stpcpy.3
+++ b/man3/stpcpy.3
@@ -29,7 +29,7 @@ stpcpy \- copy a string returning a pointer to its end
 .nf
 .B #include <string.h>
 .PP
-.BI "char *stpcpy(char *" dest ", const char *" src );
+.BI "char *stpcpy(char *restrict " dest ", const char *restrict " src );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

