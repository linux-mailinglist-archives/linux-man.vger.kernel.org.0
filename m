Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EFB87326FD1
	for <lists+linux-man@lfdr.de>; Sun, 28 Feb 2021 01:51:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230194AbhB1Aun (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Feb 2021 19:50:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230153AbhB1Aum (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Feb 2021 19:50:42 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7275C061793
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:22 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id l22so727182wme.1
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FixLbOhgK5wIJDgk/4Q+2cv9wagoAqhe2NOAOg5XQ7s=;
        b=jmZQJKELBGL2fUsU8K0Z1PE2uFtgZShewvxFK5ih0Nn1K1sB/TZYiXnKTDo634wq6R
         UblwbI3ovvfX4j+cL6V4kDPkY+/I5R52cnPm2Ifa8ysxzPcGVuRT+OKdHsPin8vycrLq
         k6cFhWBMhn274i2kffrS5vuklSOPje4RQu770zpR8mKTfczuTDfdUm6WJ/Odi65dyev3
         TnS5mBbMzTdRqPnO0rVFQcR2u7rrf/tW4KdTf7jZMTudvB0LMZpqn3Al72w3hfoJyPFK
         TDfogm7IYmlzb6iTeD+kOAV9KA14tkR6FqKj11qdrIBOI1t7U9UealQFWJt3ZRrbEYG9
         UYTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FixLbOhgK5wIJDgk/4Q+2cv9wagoAqhe2NOAOg5XQ7s=;
        b=mueUoOTYoGV1y4/q9oO1qYOo8gTmWcy4KfZ/wV7wGvW93Kt4qliwdPLdLLa0/q/Hx/
         aD9NvQ9L2QFZx9jYGPWBDQIy9m6VVZadDdOLzKN4wlyYKrrgMhOQRGtHWB4oiJaJjzK6
         FUzy74H4bfQrZmxLBtOIgv5pT5TkDwvW/JiLgJt9/HTNQUjivpOh938Ez8m1dxxl4JXM
         T84iS8+pEZHRGAltLqGKjgwbXbYu7qHSCj2KsPaqz0C7Giz6Q3MsX6lRS+OkqQaxDJCe
         m4k5DiaO25hcBAhY+MJJF0Azrm7qvhHyARBIsq5i78lPV/G93l6z2wSrE5t8AvGngXai
         kd+w==
X-Gm-Message-State: AOAM533pxzsDZdfgwWSb3vpCIz5hFnw6aCULK8JC1WCQsh6tAFGBaA7+
        M5iDFP8ht/DbOmU656MV4To=
X-Google-Smtp-Source: ABdhPJwidQwhlNrr0ppsgs4y3J3gPKb7f6XFX9gggeJsbjw3Lzas9DYKHvFtilvtbzud2kOZTBBxdg==
X-Received: by 2002:a7b:c5d0:: with SMTP id n16mr9075013wmk.27.1614473361533;
        Sat, 27 Feb 2021 16:49:21 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id o14sm18212145wri.48.2021.02.27.16.49.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Feb 2021 16:49:21 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 04/14] getdirentries.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 28 Feb 2021 01:48:08 +0100
Message-Id: <20210228004817.122463-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210228004817.122463-1-alx.manpages@gmail.com>
References: <20210228004817.122463-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in getdirentries().
Let's use it here too.

.../glibc$ grep_glibc_prototype getdirentries
dirent/dirent.h:353:
extern __ssize_t getdirentries (int __fd, char *__restrict __buf,
				size_t __nbytes,
				__off_t *__restrict __basep)
     __THROW __nonnull ((2, 4));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getdirentries.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/getdirentries.3 b/man3/getdirentries.3
index 0deff6371..9bba3cc4b 100644
--- a/man3/getdirentries.3
+++ b/man3/getdirentries.3
@@ -31,8 +31,8 @@ getdirentries \- get directory entries in a filesystem-independent format
 .nf
 .B #include <dirent.h>
 .PP
-.BI "ssize_t getdirentries(int " fd ", char *" buf ", size_t " nbytes ,
-.BI "                      off_t *" basep );
+.BI "ssize_t getdirentries(int " fd ", char *restrict " buf ", size_t " nbytes ,
+.BI "                      off_t *restrict " basep );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

