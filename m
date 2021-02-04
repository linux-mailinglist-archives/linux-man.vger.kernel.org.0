Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7014730F1F1
	for <lists+linux-man@lfdr.de>; Thu,  4 Feb 2021 12:22:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235754AbhBDLTG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Feb 2021 06:19:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235607AbhBDLSW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Feb 2021 06:18:22 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 017AFC0613D6
        for <linux-man@vger.kernel.org>; Thu,  4 Feb 2021 03:17:42 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id c127so2639109wmf.5
        for <linux-man@vger.kernel.org>; Thu, 04 Feb 2021 03:17:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=m2Nh4wy6H4f7XsK8R15suGd+a8wv1BZ+LKt/hFuPwjc=;
        b=MI7EHQL/mU8lsr1aDAoWVP+709PzxVY7a4+UBhHFIQuCr/y29ibs3uFvsF3vKFZZQY
         FODvJy9Y5LjGtwt/nvV6UkePsw4wFUhpUEyJHtnj5LFicL9H+GQR1+9w3O1+CVUjqRY9
         8vbYQHbdgNm8IY8SYdWu7fOqbUM7nw/kHk65jQQ+o+X0GKXPY0y7tSd1B+6zY71U13ct
         R3X295NT/wqPYnv6yZ0c+CQKqnemwP6C/9mJMfzJJ3Zty27M8SQUvyefhWSdhqD4+TKE
         W2cq84NYN9xAtJGjb0TdkI32J0QlvPoCqJQTy4J0ifV0+CBygN9GBHDca+AkQsQ3kLmK
         Ee2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=m2Nh4wy6H4f7XsK8R15suGd+a8wv1BZ+LKt/hFuPwjc=;
        b=KNsNQmoORVVozG18YhcACni9rNeJpBpGs/5zdz5XaDY2aZiYbqPtiacxpgERfnNPX3
         wgzZDGhlIXLBahardqpW1BlIJ5Iitb/qaIGaYVtOObC2dMNUt32v6QmjdGXxBdSLo7Sk
         FI3n6HLdK42rjBfMxHA0mh+qlbL4+KYZDKuL7DBcu2RjkmImQCVDX7h3izB/0B81a4FP
         ez2dvCecC4DD4VhHnjMZSUB8OUqht2OZekWDA4wnOwqgsg2fguWMsbwGADAEcCm/plpE
         eu5A1mngWsw9yU/+5JVskN5G1kEorf6jKvYWoj3P1MzXSzTjHtm5vajFp7tSDHINA4f1
         Z2sg==
X-Gm-Message-State: AOAM5331QUJas/mSR+ae66mvmf4k7gZvBaoqGbC9Y6F36bRHOLaHUwsa
        +NaJN5ePJLKonbBrMSh7J/I=
X-Google-Smtp-Source: ABdhPJxvC6vwm9vTfIVqQ13zCRDqzMTIp7XCzkLyR+kTfNJEs1jhiXJIh8g0L0AZDLVkGdUFcS/4wA==
X-Received: by 2002:a1c:b1c3:: with SMTP id a186mr7075117wmf.8.1612437460809;
        Thu, 04 Feb 2021 03:17:40 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id i6sm6999712wrs.71.2021.02.04.03.17.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 03:17:40 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] mlock.2: mlock2(): Fix prototype parameter types
Date:   Thu,  4 Feb 2021 12:17:33 +0100
Message-Id: <20210204111732.194599-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

.../glibc$ grep_syscall_wrapper mlock2
sysdeps/unix/sysv/linux/bits/mman-shared.h:55:
int mlock2 (const void *__addr, size_t __length, unsigned int __flags) __THROW;
.../glibc$

function grep_syscall_wrapper()
{
	if ! [ -v 1 ]; then
		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
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

