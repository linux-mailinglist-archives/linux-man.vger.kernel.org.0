Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 146473346D9
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233291AbhCJScj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233354AbhCJScY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:24 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B197C061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:24 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id c76-20020a1c9a4f0000b029010c94499aedso11698773wme.0
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JYCOkSOGLwQwA9jccVOYx44poVBVY/7h2jsH9a+VRto=;
        b=TDYGcV3GGoIwa0cfDb2w2++1jeq6arDp2FAG2AMvbBoZt4Ao79jMpkmAIGAgLaoMXP
         9LE6zni4cFYlESzU0DJTgAYtdnYHzkC1vmUxOcinEd4e49FPcQCroi4xCCwJG75AM/sm
         MTPkLCTS4DrTnUEngqSYZ1glhwsoiPYDoabG0xIIxooYplP1N2HVuTMjkqJwYiYgxoun
         rh3FSdZyT5Ggt2EOe0JkaPzKq+YSDyZx+VFfQcvqU5FAl/oA60xkhUSCRO6Xg7vafcQ9
         XD26rRYeCSjC0iirPoOcbo44Vp1Z6rTPKB1a6AaH2XMZp+bUQYtiowLn/2muUIsetR88
         1cng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JYCOkSOGLwQwA9jccVOYx44poVBVY/7h2jsH9a+VRto=;
        b=B1ojy0RfeURvpYsVdtPtZtFftssiSelW6qVpZxqypDic8nlVLFo2RqoIt5rY4z9jHG
         +BZivYeXj0rHhP6f5dOHn73w2SMgwR7pV4oIY802PbDhoJ0Jc+nqf6drp9QX3AklnmVd
         oVtlkbYejPo0HUJs0NqLZYGzvAmFAVuPe38yO1485ibZTWQm6rl6EtjgQUwfctvENpuQ
         mz5pDpR8EFCz7LnOhF9npfF7hz3O4VEsCCrtyiMokWZGNweCFhM1uhSGGETbTpt97ENu
         AHPhnNlfFMcJPtb51QCPRoA5MBHKbQ1GgNnl3d4MNNl46T1KVprklLxoNVq2zKrkBiJI
         hdXQ==
X-Gm-Message-State: AOAM532dCuZeCg5BLVJe9yKXKu1kkcRS+94FdF5R9KnBBaeU/ixUN/cV
        oC4JqvYGg+H74WsAE1CnZVwYg3U6lXH/Zw==
X-Google-Smtp-Source: ABdhPJwdB3UOMO++7YcoqGzMe2hTp0pI4rvVttM3MFQeNo9K/PFCPhbQ2ziE6L4T7U63g+XMMwfekw==
X-Received: by 2002:a05:600c:4292:: with SMTP id v18mr4604546wmc.23.1615401142847;
        Wed, 10 Mar 2021 10:32:22 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:22 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 20/24] strtoimax.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:46 +0100
Message-Id: <20210310183149.194717-21-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in strtoimax(), strtoumax().
Let's use it here too.

.../glibc$ grep_glibc_prototype strtoimax
stdlib/inttypes.h:297:
extern intmax_t strtoimax (const char *__restrict __nptr,
			   char **__restrict __endptr, int __base) __THROW;
.../glibc$ grep_glibc_prototype strtoumax
stdlib/inttypes.h:301:
extern uintmax_t strtoumax (const char *__restrict __nptr,
			    char ** __restrict __endptr, int __base) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/strtoimax.3 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man3/strtoimax.3 b/man3/strtoimax.3
index 9acaa1244..6c14c6ac8 100644
--- a/man3/strtoimax.3
+++ b/man3/strtoimax.3
@@ -28,8 +28,10 @@ strtoimax, strtoumax \- convert string to integer
 .nf
 .B #include <inttypes.h>
 .PP
-.BI "intmax_t strtoimax(const char *" nptr ", char **" endptr ", int " base );
-.BI "uintmax_t strtoumax(const char *" nptr ", char **" endptr ", int " base );
+.BI "intmax_t strtoimax(const char *restrict " nptr ", char **restrict " endptr ,
+.BI "                   int " base );
+.BI "uintmax_t strtoumax(const char *restrict " nptr ", char **restrict " endptr ,
+.BI "                   int " base );
 .fi
 .SH DESCRIPTION
 These functions are just like
-- 
2.30.1.721.g45526154a5

