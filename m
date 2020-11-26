Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16EDC2C5C10
	for <lists+linux-man@lfdr.de>; Thu, 26 Nov 2020 19:33:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404774AbgKZSdA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Nov 2020 13:33:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404602AbgKZSc7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Nov 2020 13:32:59 -0500
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88CE5C0613D4;
        Thu, 26 Nov 2020 10:32:59 -0800 (PST)
Received: by mail-wr1-x443.google.com with SMTP id u12so3172912wrt.0;
        Thu, 26 Nov 2020 10:32:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7cZCiALn4GJqHzNqDKlifV68xUBXU8LxQqalNm8a74Q=;
        b=GaczG3HNqZ5n6imR2eAlF9HW8yxsnUUc4KNKKgFHYushZohgKdUMbYzG3IzkRYvhJ8
         rr92EfUET+0POqZKZ2E9yikelklaLLRtXEQckbv1dTcIboRABEtupsZ1wLaT9jVQa4WA
         d9oep7nYCfyMZbKexG5ySmLyWFT9UsBORWtH3Y6M1+I+QJB9GGZSmqMY9PGA3iRr/cO5
         Rw5SEIr+QWk78VsWgglwMJnfToWh1EQPXF1OsY+HL/24vr32wWpzY+LJTtJ+ti51t8G+
         azcG4EOm163eKAe9ARk9gPglnog3fHJ/GvGjaKpXtqvQKfjfz0XuRrPo/l8QX+56xn7p
         rsHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7cZCiALn4GJqHzNqDKlifV68xUBXU8LxQqalNm8a74Q=;
        b=IAphICTweWJ4EUMvN/A3JPeLDGQuRVNHSRqQJAFsmjwJX+NKUIroio/0z5gPp5NNyR
         SgapkR78gQpUG0pokDIjhJGTeLYTRGJKPl6k0TrRz0MPzEqB/yzsbAwkomWHyeVkjBHz
         LiyjzJpeLbk/QlyX8pdmj8uLlPViVsD0RcPleCjNC+auvgL+Ct/OGeZ8Xsj3U9YpgTxr
         5onRTau0eD3ypxWZVz5ek8IlKozatZs2tHJi9wo08zmeWd/H74HxZ1tRbeFkSUcehPCp
         muUNGSyDBb8SdnSTAHqNhSckcV2yQwiqwnrN7cz2O0BhAQwbqB0sM4IMNnraUoa046CU
         VJaA==
X-Gm-Message-State: AOAM533RMmatceYZrlZ2hIg5pyZUMxL6/p6xOz7nprpr8sSm5waiCM4b
        Te75vEt7vtD3Tct+IxMO/gs=
X-Google-Smtp-Source: ABdhPJzm+O2pvi81h4AJb1UcuzEc7HRpbSvdlPI31Yx3lsMR1p3jMvfHRgf1pRqabIHTBHwUwwan3w==
X-Received: by 2002:a5d:4f92:: with SMTP id d18mr5574341wru.118.1606415578364;
        Thu, 26 Nov 2020 10:32:58 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 90sm10523810wra.95.2020.11.26.10.32.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2020 10:32:57 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] spu_create.2: Clarify that one of the prototypes is the current one
Date:   Thu, 26 Nov 2020 19:32:12 +0100
Message-Id: <20201126183211.21857-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The current Linux kernel only provides a definition of 'spu_create()'.
It has 4 parameters, the last being 'int neighbor_fd'.

Before Linux 2.6.23, there was an older prototype,
which didn't have this last parameter.

Move that old prototype to VERSIONS,
and keep the current one in SYNOPSIS.

......

$ grep -rn "SYSCALL_DEFINE.(spu_create"
arch/powerpc/platforms/cell/spu_syscalls.c:56:
SYSCALL_DEFINE4(spu_create, const char __user *, name, unsigned int, flags,

$ sed -n 56,/^}/p arch/powerpc/platforms/cell/spu_syscalls.c
SYSCALL_DEFINE4(spu_create, const char __user *, name, unsigned int, flags,
	umode_t, mode, int, neighbor_fd)
{
	long ret;
	struct spufs_calls *calls;

	calls = spufs_calls_get();
	if (!calls)
		return -ENOSYS;

	if (flags & SPU_CREATE_AFFINITY_SPU) {
		struct fd neighbor = fdget(neighbor_fd);
		ret = -EBADF;
		if (neighbor.file) {
			ret = calls->create_thread(name, flags, mode, neighbor.file);
			fdput(neighbor);
		}
	} else
		ret = calls->create_thread(name, flags, mode, NULL);

	spufs_calls_put(calls);
	return ret;
}

$ git blame arch/powerpc/platforms/cell/spu_syscalls.c -L 56,/\)/
1bc94226d5c64 (Al Viro 2011-07-26 16:50:23 -0400 56)
SYSCALL_DEFINE4(spu_create, const char __user *, name, unsigned int, flags,
1bc94226d5c64 (Al Viro 2011-07-26 16:50:23 -0400 57)
   umode_t, mode, int, neighbor_fd)

$ git checkout 1bc94226d5c64~1
$ git blame arch/powerpc/platforms/cell/spu_syscalls.c -L /spu_create/,/\)/
67207b9664a8d (Arnd Bergmann 2005-11-15 15:53:48 -0500 68)
asmlinkage long sys_spu_create(const char __user *name,
8e68e2f248332 (Arnd Bergmann 2007-07-20 21:39:47 +0200 69)
             unsigned int flags, mode_t mode, int neighbor_fd)

$ git checkout 8e68e2f248332~1
$ git blame arch/powerpc/platforms/cell/spu_syscalls.c -L /spu_create/,/\)/
67207b9664a8d (Arnd Bergmann 2005-11-15 15:53:48 -0500 36)
asmlinkage long sys_spu_create(const char __user *name,
67207b9664a8d (Arnd Bergmann 2005-11-15 15:53:48 -0500 37)
             unsigned int flags, mode_t mode)

$ git describe --contains 8e68e2f248332
v2.6.23-rc1~195^2~7

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/spu_create.2 | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/man2/spu_create.2 b/man2/spu_create.2
index 4e6f5d730..3eeafee56 100644
--- a/man2/spu_create.2
+++ b/man2/spu_create.2
@@ -30,9 +30,8 @@ spu_create \- create a new spu context
 .B #include <sys/types.h>
 .B #include <sys/spu.h>
 .PP
-.BI "int spu_create(const char *" pathname ", int " flags ", mode_t " mode ");"
-.BI "int spu_create(const char *" pathname ", int " flags ", mode_t " mode ","
-.BI "               int " neighbor_fd ");"
+.BI "int spu_create(const char *" pathname ", int " flags ", mode_t " mode ,
+.BI "               int " neighbor_fd );
 .fi
 .PP
 .IR Note :
@@ -247,6 +246,17 @@ By convention, it gets mounted in
 The
 .BR spu_create ()
 system call was added to Linux in kernel 2.6.16.
+.PP
+.\" commit 8e68e2f248332a9c3fd4f08258f488c209bd3e0c
+Before Linux 2.6.23, the prototype for
+.BR spu_create ()
+was:
+.PP
+.in +4n
+.EX
+.BI "int spu_create(const char *" pathname ", int " flags ", mode_t " mode );
+.EE
+.in
 .SH CONFORMING TO
 This call is Linux-specific and implemented only on the PowerPC
 architecture.
-- 
2.29.2

