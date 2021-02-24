Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9F2E324135
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 17:05:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235915AbhBXPoN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Feb 2021 10:44:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238368AbhBXOvU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Feb 2021 09:51:20 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13C9FC061A27
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:07 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id t15so2110553wrx.13
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=12WQi5UTdmyb542H7yJ6iDxlQVns1qvnW7L2OCXdcVU=;
        b=JmHA4jy7dKf9BzBjxjWQsf/N0WWAqWh+HETtgOEUf6kFDu93WD2w9Fw9mQ/btKZz9O
         Q5X4bsTxxPUf080u1gKzGN/bhkZQX9LUsl8RmFaRCOYKzSeL0t3PLhd4A/4f4c5rjR0o
         CEHJO0ADgn8IEMyswjqlpg65eRpyU1DvstwZfKOMJfjZJ7KD37yphCAtTolB03XCtCUa
         mw5ttbe3IapHyRgCwxxQYjAmGH5Utq6OtQPQtZwQPuWMkNUh2bbTxcBQeLiTW27/Jk5N
         lnGHcIzC4kl+tHzcZiVAATHFHYHqH9GTIPbC3ZtsCGBOeAJKlQ5oqmwHryGs0kAtiP46
         X+NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=12WQi5UTdmyb542H7yJ6iDxlQVns1qvnW7L2OCXdcVU=;
        b=OxDQhVQyPlrmp3Hi9yX7Cu6KZseRrTu3l+0VkhuZQiiJusAhfHhcNqFgbHDgkN7D76
         46xN27nEzcRrS8Pz3+ylCUc1TJCrBnLIrRnvF3e06OpRajcoZPU8d5TAayj0oGF9F1D6
         50xSNZhyH9Xc6RLVfXevcY2VK3qENQK4W38JwRV+RG0tYuUHm8F9ZGfBeYolVIIdSAEw
         X5WxiIdbLVJgh1e1nGXhj/BlmCNp6pS3zLkuCcyqarWuGVQF4q4o2HfGdrWZhxXGH/PF
         O9ekfiOllGhpf2egdcKk+9P51NEyxwrBnYJF7fwUDmjyXYtebk+2KOuPqHH2Ifw+l4YD
         3uzw==
X-Gm-Message-State: AOAM530KlpxT0zJdoaftT9/TPyrguEihZ0rG1Bx22IUYgdycHcO3zT+9
        p+z+HR2sds0rNhI0RrLdAwE=
X-Google-Smtp-Source: ABdhPJxhVYVjmxYvu14DktjXyvQY8IRQQxnpZY0gvRTs/9OwAiopsttk7ShUi5rqplyouzT34l/J5Q==
X-Received: by 2002:adf:9226:: with SMTP id 35mr32368551wrj.408.1614177845922;
        Wed, 24 Feb 2021 06:44:05 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id a5sm3990676wrs.35.2021.02.24.06.44.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 06:44:05 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 14/20] fgetc.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 24 Feb 2021 15:43:05 +0100
Message-Id: <20210224144310.140649-15-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210224144310.140649-1-alx.manpages@gmail.com>
References: <20210224144310.140649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in fgets().
Let's use it here too.

glibc:
libio/stdio.h:568:
char *fgets (char *restrict s, int n, FILE *restrict stream)
     wur attr_access ((write_only__, 1, 2));

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/fgetc.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/fgetc.3 b/man3/fgetc.3
index 5e0ded168..1aa419935 100644
--- a/man3/fgetc.3
+++ b/man3/fgetc.3
@@ -35,7 +35,7 @@ fgetc, fgets, getc, getchar, ungetc \- input of characters and strings
 .BI "int getc(FILE *" stream );
 .B "int getchar(void);"
 .PP
-.BI "char *fgets(char *" "s" ", int " "size" ", FILE *" "stream" );
+.BI "char *fgets(char *restrict " s ", int " size ", FILE *restrict " stream );
 .PP
 .BI "int ungetc(int " c ", FILE *" stream );
 .fi
-- 
2.30.1.721.g45526154a5

