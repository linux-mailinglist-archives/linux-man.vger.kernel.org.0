Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11BC92C16CB
	for <lists+linux-man@lfdr.de>; Mon, 23 Nov 2020 21:50:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728989AbgKWUfO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Nov 2020 15:35:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728869AbgKWUfO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Nov 2020 15:35:14 -0500
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02A01C0613CF;
        Mon, 23 Nov 2020 12:35:14 -0800 (PST)
Received: by mail-wm1-x342.google.com with SMTP id p22so578697wmg.3;
        Mon, 23 Nov 2020 12:35:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bC9Xwb1/XxVmdsfGziSMeZlvPwZj+jolzd/dm7uTUlc=;
        b=OzOFTXEHW1TQzhe01fKPHiR0s/gh753elR0C5EjsHjW1Oxq8uIdK8/t30UEAFE2goG
         xp3UcpgZRnrbw7Ztfo7ThzeuCnWOOT9tjwT7o2qHYKIoIwebt03ukEnJBGaudPUvH/V6
         zAyJQ4FcDJkxC4jiYeBXabCI/waF+hcCflK0QoNgERdwDctD8IhFF3q3R+svrNbJwcAJ
         GZu12ycIieLF/Pmcu7kHeOK/Qv3NVypkplxGXZxzi0fJau1dU1SUhf0KOl9NjqzcrAqt
         lrHrlhy/BPcSpLu/3DviKMXhqIruykTapNiVHHMJtL1YMaICmXOTOUwI9v/mnz9uyRlG
         zp3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bC9Xwb1/XxVmdsfGziSMeZlvPwZj+jolzd/dm7uTUlc=;
        b=e/98/hYqOsaUqgSHtYBtWL+abM3u+7zO3klUsxM5CFfXLcJojiT6Wdd4SOCMGBBbaa
         7wKWrRDEKkV5dEWyF/Zdx8mDO056Ny+MZP/CyftSiqGuArwkz4cIdEz3es6YoDUBsTse
         tU0tyqrqzmi+BzfENPL5bLgFZ379i2JMI4RdX4+NoBeIC1sdlw5AbBAeKhUhqEVyWWob
         b44Tq/rPdmj8WytYScb0QDGpKJFTNu0b1Vc9S95Z166sRZ6ZFqxQO2nECfG3zR8kivoa
         N1P+sDTpbGWdtp11uqMROsPeRkFkLeqVTAAgiVmLMVkwAX5hhIqZ6bb9PSaL+rB7RKNw
         n/Sw==
X-Gm-Message-State: AOAM530C6jLZeVl5/myzVB9fhoBcr1BycVGzsdK6wROJE4kOmwTRkk+M
        oQG3R99EHoJmsQbWKsUEPgc=
X-Google-Smtp-Source: ABdhPJwooiUEBegF5xcGkpWf8RQbVJB670XGFbeN+pGN/iWhUo2GDcSHb1Rwh/eh0QI/brhmWbUKTw==
X-Received: by 2002:a1c:6a0d:: with SMTP id f13mr675303wmc.172.1606163712822;
        Mon, 23 Nov 2020 12:35:12 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id j8sm21282828wrx.11.2020.11.23.12.35.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2020 12:35:12 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: [PATCH] restart_syscall.2: SYNOPSIS: Fix restart_syscall() return type
Date:   Mon, 23 Nov 2020 21:34:46 +0100
Message-Id: <20201123203445.5491-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The Linux kernel uses 'long' instead of 'int' for the return type.
As glibc provides no wrapper, use the same types the kernel uses.

$ grep -rn 'SYSCALL_DEFINE.*(restart_syscall'
kernel/signal.c:2891:SYSCALL_DEFINE0(restart_syscall)

$ sed -n 2891,2895p kernel/signal.c
SYSCALL_DEFINE0(restart_syscall)
{
	struct restart_block *restart = &current->restart_block;
	return restart->fn(restart);
}

$ grep -rn 'struct restart_block {'
include/linux/restart_block.h:25:struct restart_block {

$ sed -n 25,56p include/linux/restart_block.h
struct restart_block {
	long (*fn)(struct restart_block *);
	union {
		/* For futex_wait and futex_wait_requeue_pi */
		struct {
			u32 __user *uaddr;
			u32 val;
			u32 flags;
			u32 bitset;
			u64 time;
			u32 __user *uaddr2;
		} futex;
		/* For nanosleep */
		struct {
			clockid_t clockid;
			enum timespec_type type;
			union {
				struct __kernel_timespec __user *rmtp;
				struct old_timespec32 __user *compat_rmtp;
			};
			u64 expires;
		} nanosleep;
		/* For poll */
		struct {
			struct pollfd __user *ufds;
			int nfds;
			int has_timeout;
			unsigned long tv_sec;
			unsigned long tv_nsec;
		} poll;
	};
};

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/restart_syscall.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/restart_syscall.2 b/man2/restart_syscall.2
index e7d96bd4d..21cc2df1d 100644
--- a/man2/restart_syscall.2
+++ b/man2/restart_syscall.2
@@ -34,7 +34,7 @@
 .SH NAME
 restart_syscall \- restart a system call after interruption by a stop signal
 .SH SYNOPSIS
-.B int restart_syscall(void);
+.B long restart_syscall(void);
 .PP
 .IR Note :
 There is no glibc wrapper for this system call; see NOTES.
-- 
2.29.2

