Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CFC2231244F
	for <lists+linux-man@lfdr.de>; Sun,  7 Feb 2021 13:39:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229608AbhBGMix (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 7 Feb 2021 07:38:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbhBGMiw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 7 Feb 2021 07:38:52 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 244C9C06174A;
        Sun,  7 Feb 2021 04:38:12 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id a1so13778492wrq.6;
        Sun, 07 Feb 2021 04:38:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=C26+q7ZBz/jgdIg8nwaovUn/U2ZT8m0YTPBwzXn+4ko=;
        b=XWKYzz2oKpwBUyf23wwHnSosWHXFATZFKAe6nq+sCLPk/JTtSdjvUjzmchxAb9zUPT
         +e8FhatC8b1739dA53l9s+sTI6jcapflIlhVYyGNvf/X5P55a3gXYj1MjnbgOFWr9+GW
         l5bCUAN8KsmDOkPMMxjySU4Mn/i7Krlre/rnz/Mn8sf5PdIqTsT500ve7zvnx0gcH89U
         1rk+Sq7CJENO/SZ9n9+zdsNa9W/NShb+BffpxzlOWs1OzYwyXmA4PT6BIsFVacG11SXJ
         onICq0jfO67kXvc5e4dNd2DYFuFsPHmvS6OPDQiJbAp0r3EuevGeGKOOkyHhBSkQiK43
         GleQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=C26+q7ZBz/jgdIg8nwaovUn/U2ZT8m0YTPBwzXn+4ko=;
        b=Rm+3fIIVzh4hdLfqLLZXT0iZJnyfaUaQT5+Qn0o0aDhvxo1jicfPhyJA82YpQ3qupy
         +pXMSoVyWD2VsE/C7l6RQlQ1HnV7C31FaK/tSvKZpuH6ukYCIykE6OGlTDGKOVHBgjsC
         Ql1IfzQ+/GS06fYHdgbYa0RsEyUNw7IXCkHntTFUg/IS7HFRDHPK0AeDbwqjKQp0dB4/
         5XGoD6exHS69QOb9vP8UJ/NVI0J3xpN89y9xLfttbsN3oU+RJxYU5IHLhxfFVIZP40Ts
         nvP9q6f25JFSkbdTX3MFuSGZx1xyNJumpxdq/1sNfPF20nrVXqmmXd33lciUNhK13KqK
         vYTg==
X-Gm-Message-State: AOAM531wdhz1Aovh+UvoicR6NmYamobpc3bsh0x7P1qqFhYEyVeoTKAs
        dWmLHuC2jSahuV81Y0E/8VL6ZgiH2og=
X-Google-Smtp-Source: ABdhPJzHRgmxHHKqsSsMr8UyxTHP1zbQ5CdwcpasRW2sgnstLtJZgQWd0cBj7bQ4Yd8L2H65soXroA==
X-Received: by 2002:a5d:53c3:: with SMTP id a3mr14466405wrw.43.1612701490901;
        Sun, 07 Feb 2021 04:38:10 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id r13sm16844657wmh.9.2021.02.07.04.38.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Feb 2021 04:38:10 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] ipc.2: Fix prototype parameter types
Date:   Sun,  7 Feb 2021 13:36:55 +0100
Message-Id: <20210207123654.187829-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210204093051.184049-1-alx.manpages@gmail.com>
References: <20210204093051.184049-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The types for some of the parameters are incorrect
(different than the kernel).  Fix them.
Below are shown the types that the kernel uses.

......

.../linux$ grep_syscall ipc
ipc/syscall.c:110:
SYSCALL_DEFINE6(ipc, unsigned int, call, int, first, unsigned long, second,
		unsigned long, third, void __user *, ptr, long, fifth)
ipc/syscall.c:205:
COMPAT_SYSCALL_DEFINE6(ipc, u32, call, int, first, int, second,
	u32, third, compat_uptr_t, ptr, u32, fifth)
include/linux/compat.h:874:
asmlinkage long compat_sys_ipc(u32, int, int, u32, compat_uptr_t, u32);
include/linux/syscalls.h:1221:
asmlinkage long sys_ipc(unsigned int call, int first, unsigned long second,
		unsigned long third, void __user *ptr, long fifth);
.../linux$

function grep_syscall()
{
	if ! [ -v 1 ]; then
		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
		return ${EX_USAGE};
	fi

	find * -type f \
	|grep '\.c$' \
	|sort -V \
	|xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?\)" \
	|sed -E 's/^[^:]+:[0-9]+:/&\n/';

	find * -type f \
	|grep '\.[ch]$' \
	|sort -V \
	|xargs pcregrep -Mn "(?s)^asmlinkage\s+[\w\s]+\**sys_${1}\s*\(.*?\)" \
	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
}

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ipc.2 | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/man2/ipc.2 b/man2/ipc.2
index 6589ffae6..a36e895a2 100644
--- a/man2/ipc.2
+++ b/man2/ipc.2
@@ -27,9 +27,8 @@
 ipc \- System V IPC system calls
 .SH SYNOPSIS
 .nf
-.BI "int ipc(unsigned int " call ", int " first ", int " second \
-", int " third ,
-.BI "        void *" ptr ", long " fifth );
+.BI "int ipc(unsigned int " call ", int " first ", unsigned long " second ,
+.BI "        unsigned long " third ", void *" ptr ", long " fifth );
 .fi
 .PP
 .IR Note :
-- 
2.30.0

