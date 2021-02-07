Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE3B331245B
	for <lists+linux-man@lfdr.de>; Sun,  7 Feb 2021 13:48:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229609AbhBGMr4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 7 Feb 2021 07:47:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbhBGMrz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 7 Feb 2021 07:47:55 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19C57C061756
        for <linux-man@vger.kernel.org>; Sun,  7 Feb 2021 04:47:15 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id m13so13738448wro.12
        for <linux-man@vger.kernel.org>; Sun, 07 Feb 2021 04:47:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=b57W89tA9xzaH0VgMiRuBgV5u6SIKfPkrvfSv++KQuA=;
        b=Ht5T1jfs57uhsI54dVnGJtevvhIp4x4LCZXSkCYsreLlANju4rd5hN4qEkmGyGunEv
         cfULX5ABLye5T7QmgroR/hld4ojrYyacxVbweAEyBuGmZ9ZW1hCPYvZAQvOL9KB8ZxuK
         o7mNiiUVxixADXRxzr2/M4GAIPv1GXZnyr2H++GEaO35wvM15HKhCaxLeVzTAuRBt6Gd
         FJGcHKKw7bbMDiFH+EPUstYKrp6aUXFot0Nm9DSZ6p9ZlHxNLXf0jCZ1ODHS5lqoSah0
         62+foZKUlfu+KSpts3e+CnuWxlguSqTDpISWWne3sjSdb2t7KlsJ7MFdgyeam2NHylba
         jKTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=b57W89tA9xzaH0VgMiRuBgV5u6SIKfPkrvfSv++KQuA=;
        b=rJdazn7YbgKbIQQQrJ5Z/NlLJ96ykKCE/v3KbQ6O5UoAJ8tSkH3DAXWNTMTY7W0CDH
         aUqK0dTdFT9qOm5ugFnzOEnnKhSJFX+LgA3N7MAcB2r2TZlM9Y/f+0aOCsFINMgc1yo1
         EA6P5qywhzLlnZ3vvfkzKMLcNiJAL8t37u7bngLjd5oHYSplEHVc2hiRCcqrD0mMdkpZ
         d3KtmvLQkts38dlfBR2egkh0A/yzRv16iYk7nh7GzbemBV5zvPhtzB9z5Do9CLUIKoei
         HroFWWLj8EZULep9Ir7QfdSRagGlT0o8AM8BIGE3M4wEH0bCXWvdSJQtCil4ugUPgEvM
         A4UA==
X-Gm-Message-State: AOAM532Qv4RJynSefw7PIY9EF+jIRn4xXdAqWLHuqPVKssAwTzr/zRXv
        9oKua3xMVy0PZ5CB6QIzIjFUcdqNqAg=
X-Google-Smtp-Source: ABdhPJwAWWOSWsCwB9BWUvliAxXkJjg5uTNVGwYp3Ium5aQkZO00bKRQnM4tZ27khbvIXnbwCnysuw==
X-Received: by 2002:adf:dcd2:: with SMTP id x18mr2138673wrm.355.1612702033817;
        Sun, 07 Feb 2021 04:47:13 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id s4sm20767195wrt.85.2021.02.07.04.47.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Feb 2021 04:47:13 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v2] mlock.2: mlock2(): Fix prototype parameter types
Date:   Sun,  7 Feb 2021 13:46:12 +0100
Message-Id: <20210207124611.201122-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210204111732.194599-1-alx.manpages@gmail.com>
References: <20210204111732.194599-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The documented prototype for mlock2() was a mix of the
glibc wrapper prototype and the kernel syscall prototype.
Let's document the glibc wrapper prototype, which is shown below.

......

.../glibc$ grep_glibc_prototype mlock2
sysdeps/unix/sysv/linux/bits/mman-shared.h:55:
int mlock2 (const void *__addr, size_t __length, unsigned int __flags) __THROW;
.../glibc$

function grep_glibc_prototype()
{
	if ! [ -v 1 ]; then
		>&2 echo "Usage: ${FUNCNAME[0]} <func>";
		return ${EX_USAGE};
	fi

	find * -type f \
	|grep '\.h$' \
	|sort -V \
	|xargs pcregrep -Mn \
	  "(?s)^[^\s#][\w\s]+\s+\**${1}\s*\([\w\s()[\]*,]*?(...)?\)[\w\s()]*;" \
	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
}

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/mlock.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/mlock.2 b/man2/mlock.2
index 2822df7cf..f48d632c4 100644
--- a/man2/mlock.2
+++ b/man2/mlock.2
@@ -31,7 +31,7 @@ mlock, mlock2, munlock, mlockall, munlockall \- lock and unlock memory
 .B #include <sys/mman.h>
 .PP
 .BI "int mlock(const void *" addr ", size_t " len );
-.BI "int mlock2(const void *" addr ", size_t " len ", int " flags );
+.BI "int mlock2(const void *" addr ", size_t " len ", unsigned int " flags );
 .BI "int munlock(const void *" addr ", size_t " len );
 .PP
 .BI "int mlockall(int " flags );
-- 
2.30.0

