Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD9E032F6DE
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229701AbhCEXvi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229813AbhCEXvS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:18 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EA1FC06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:18 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id 124-20020a1c00820000b029010b871409cfso254417wma.4
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6PT7vriHQS0EVj3o09yovnwOZKM/iDM6QcQOYGGTtO8=;
        b=bzYK9uD43v85rFZHzTsUjXma2hD5zT7rW6mq3S268YyGQmmpPdHqJ1nSzJwV9+o9fu
         D5Fzbibta/i2Qm1vokV94+fClvkB0GWl1sL2NxyEWYQ9pI9Rh9UpD3LPz7So1bqGKYo2
         kJw9dP2wqULHWRwQg+QuJXspLc5ssILwcJh+bUi90z4tEopX80Yw1xz2qx6FJW37DolP
         OqkAz6syeZ6ToqZDFXbhPXclmnv7//lwjfyEyr1UwcOovXBH+AlH630IhuZaLss/fAvj
         u+NDzjr0d9QLAXm+j0gzBVXkLDn9V0V/6P1mplPkM7e/ep/uKrS+do0Pe9gIXALUsUk2
         8QUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6PT7vriHQS0EVj3o09yovnwOZKM/iDM6QcQOYGGTtO8=;
        b=OzgaQleEtk8WcAATfj8e0Mo0xAbTUjXZ/zD11ByNSOqgxd2Lh5WbPtbfVu5AHhudrQ
         z1ah9cJC7/3FJpBW4JWscu1NxM1xYI+GE+1pDqvbd++mZExDhucFUNNyNpRixrGBS+UM
         uUbtpdOq5VR6he6o3fWAasmCN4FrSgRYUkS/cIygr++k4SwDxEB+QlAW5vpZIvukBZcK
         LxHLH9gPg/9u2CdAb703Rskt78Yk/6cBO5HhMIvnlt9CpECmNhsFBXjluvuDMB63AX5c
         X3Y3RImuiIYnNdHmWmoofuQUerZ1Q6hPJDLJUqbpf4jp/+IIDDaLmn8cvFXpAJwi5lTQ
         dYxw==
X-Gm-Message-State: AOAM531xzKIVzmjokylNCy/+zEPNF20XQ/+fS2PUyIdoTo8J6H5zirOO
        SzXD9UgpQ2zJaRpQcBr1hiJnGldfTKXVqw==
X-Google-Smtp-Source: ABdhPJzss1PpGIXfC5S4X6pWomqvTHZfDHFWxze2AvicD8oxB/gs3y0sFMGDcWDgbiL2oRSx6h7qEg==
X-Received: by 2002:a1c:5f54:: with SMTP id t81mr6229334wmb.84.1614988277295;
        Fri, 05 Mar 2021 15:51:17 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:17 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 03/22] glob.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sat,  6 Mar 2021 00:50:47 +0100
Message-Id: <20210305235105.177359-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in glob().
Let's use it here too.

.../glibc$ grep_glibc_prototype glob
posix/glob.h:146:
extern int glob (const char *__restrict __pattern, int __flags,
		 int (*__errfunc) (const char *, int),
		 glob_t *__restrict __pglob) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/glob.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/glob.3 b/man3/glob.3
index 94e668e0d..be41fec13 100644
--- a/man3/glob.3
+++ b/man3/glob.3
@@ -38,9 +38,9 @@ glob, globfree \- find pathnames matching a pattern, free memory from glob()
 .nf
 .B #include <glob.h>
 .PP
-.BI "int glob(const char *" pattern ", int " flags ,
+.BI "int glob(const char *restrict " pattern ", int " flags ,
 .BI "         int (*" errfunc ")(const char *" epath ", int " eerrno ),
-.BI "         glob_t *" pglob );
+.BI "         glob_t *restrict " pglob );
 .BI "void globfree(glob_t *" pglob );
 .fi
 .SH DESCRIPTION
-- 
2.30.1.721.g45526154a5

