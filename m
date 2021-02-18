Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E790D31F1AD
	for <lists+linux-man@lfdr.de>; Thu, 18 Feb 2021 22:26:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229762AbhBRVZo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Feb 2021 16:25:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229946AbhBRVZk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Feb 2021 16:25:40 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F5A4C061786
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 13:25:00 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id n8so4487563wrm.10
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 13:25:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=udyjExnjlL3BbxoZCKLjAe8BPpzwi6BGCjr+BVgNHT8=;
        b=Mgfh6mgKNf4LdxRNgX5HQ2eeuS3WhjE/0LWESSX+DVuiPfu8T9wam+lpH+uQBRR188
         ufBWuqoF+9vh+bGT+Rc7iVTTzbgjb+lnOI0elnAcy8w7Q4zgoPsw805x9u55ls+PGPXg
         EEvssWJdSVIdgTSlIusT6ES9x6o+PQYbQk5A5JDqXHtLrkdbVLDISkuJyHowXQcaMwGl
         ksza9lIQxUmxKBULVz0ggVtOeeLFkLMYoZFdnBEVyiePDzMaml0KY/KwNzB7boeZu1Tx
         u7YXcNpQqd6mbl+mS59yK67UZSLb5M5ZjF8G+Q1g9B412RIzUjRm3xo6sKvKdRABoGog
         IWsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=udyjExnjlL3BbxoZCKLjAe8BPpzwi6BGCjr+BVgNHT8=;
        b=owqXXvfTnQtvWtqp1ntDkbWUUErZdYRzmbm/ToIu0AOBd+LaTP89vrwoYDIwOt0H6s
         EVotBa/E5IbzEbWA1dgBRqMCVBMJBqhVkY1gR6wPtCmEqzlqgOGmLHRQZp+E86Ym0SeG
         mzeireDXmfPYDY1JtlG57bIAu0/mOkKcJqsS95Q1NxWQHjT1c4N+4r0I+zMRibJhJL1W
         MxeGQwscq5zUsCYv4+jj1f52AtvbIykioEn+R5OlF7rujuEzYYsnwHhmpIeZN0T7IE3K
         rZGQMgxllCgZk0pfk2LiZqT5cra796sjuGK8YEho6m9m/cZfZ+ZpFnsW/9rz9Cw8cSQZ
         UDLA==
X-Gm-Message-State: AOAM531ujJe7EKA8fcPKJZMKBr7m1rbToL3X4kFPq58IaVHX1W9jrMv1
        LkRInkeZxK7FQT0gdSgoPV0=
X-Google-Smtp-Source: ABdhPJxX0wr7zHMF6KXr3QDXlwyAQh5Y1UEu1IbHNo7qgsmECZOxRPVwRMnlfUgi8c4GAOB8QSuX4w==
X-Received: by 2002:adf:9c8a:: with SMTP id d10mr6211492wre.266.1613683499076;
        Thu, 18 Feb 2021 13:24:59 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id s11sm7870940wme.22.2021.02.18.13.24.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Feb 2021 13:24:58 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 3/6] err.3: SYNOPSIS: Use 'noreturn' in prototypes
Date:   Thu, 18 Feb 2021 22:23:56 +0100
Message-Id: <20210218212358.246072-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210218212358.246072-1-alx.manpages@gmail.com>
References: <20210218212358.246072-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Glibc uses __attribute__((__noreturn__)) for [v]err[x]().
These functions never return.
Let's use standard C11 'noreturn' in the manual page.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/err.3 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man3/err.3 b/man3/err.3
index 128afde6a..a4d4eb620 100644
--- a/man3/err.3
+++ b/man3/err.3
@@ -43,16 +43,16 @@ err, verr, errx, verrx, warn, vwarn, warnx, vwarnx \- formatted error messages
 .nf
 .B #include <err.h>
 .PP
-.BI "void err(int " eval ", const char *" fmt ", ...);"
-.BI "void errx(int " eval ", const char *" fmt ", ...);"
+.BI "noreturn void err(int " eval ", const char *" fmt ", ...);"
+.BI "noreturn void errx(int " eval ", const char *" fmt ", ...);"
 .PP
 .BI "void warn(const char *" fmt ", ...);"
 .BI "void warnx(const char *" fmt ", ...);"
 .PP
 .B #include <stdarg.h>
 .PP
-.BI "void verr(int " eval ", const char *" fmt ", va_list " args );
-.BI "void verrx(int " eval ", const char *" fmt ", va_list " args );
+.BI "noreturn void verr(int " eval ", const char *" fmt ", va_list " args );
+.BI "noreturn void verrx(int " eval ", const char *" fmt ", va_list " args );
 .PP
 .BI "void vwarn(const char *" fmt ", va_list " args );
 .BI "void vwarnx(const char *" fmt ", va_list " args );
-- 
2.30.1.721.g45526154a5

