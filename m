Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2264E2C7233
	for <lists+linux-man@lfdr.de>; Sat, 28 Nov 2020 23:06:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387848AbgK1VuY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 28 Nov 2020 16:50:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730138AbgK1Sh7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 28 Nov 2020 13:37:59 -0500
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 378A9C02A190;
        Sat, 28 Nov 2020 04:39:57 -0800 (PST)
Received: by mail-wm1-x342.google.com with SMTP id u10so3233609wmm.0;
        Sat, 28 Nov 2020 04:39:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=B3Vf9XYn//Fj5v4zXe+KRqjMj3t6Oew9GGBwAujZoyk=;
        b=bnsf08Oj9hx8+v7iJPMuj5mv4FEH7MXsr3ol5Cbt7gbyaJ7ie/vZdCzhJX0vqZE+DV
         Z0CjZmYpwPQymQsa7t/wEOV0BuAPGK5+plybf7IsKJPGhA46CKzH2TK0iR9PVCuTQpft
         txKUQ/WA4b/g9ELUs4cQcQkTbIwRmMDikDyOolIwUHUnMB2YEc0h2iFgbXugV44jjsrQ
         PY+OfEks6BTCh5cSUzcr/K87Vgt+8lfyqkLoUaLKBZZ1MevJNRkr433QOvgaMGuiqMTL
         tvyU5Sesa1B9hHsz7OMgSQCBMiPiBQrnAJ8WsrULwwDOWc6v8xK11JXfucZCs9q7wieA
         wrPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=B3Vf9XYn//Fj5v4zXe+KRqjMj3t6Oew9GGBwAujZoyk=;
        b=iVpmPEdAinD4Hu2Wy0rBS/LWHm7IKvVXtD6VP3yWXb/tBBlgbcXsIQlj4BFgwMVObq
         1605GMGWm19U2p5nYNXszNWuAbgC0KDnIQVLXM1hd1zU38MJ3SjFbvpR8APP3ij/8wgk
         Z8v0BTqzcfU28VlflCI6tjKop9twd2NkUvYAAYH2cgYA8OKEwX7mogmQ4cfQyWEXARER
         opnpPRZKZreNAStGdija3kctrz3K28HkApVZcZssfLecrqayazUxbqMoH7aeUe2w7krT
         NZFmu0r3KCfDw6lzOMDVlVS/Tcbb6FlyAKsS7KKupE+T8jhJpOCtiIRlhFybPz4COdna
         IGyQ==
X-Gm-Message-State: AOAM53295fEIBPZ1OGtaSwpkRIi26IDPOiMIp94/DfyhRIOh+u6p3Ny7
        ETdGUOR8H/e+uy74AWEm+s4=
X-Google-Smtp-Source: ABdhPJzBGFVCgjC1d/RIgLo0FZh3GOX+UyzrsNUJcNUxRkxwNbLpRRVDbNafzbG3zL7SwGtg695+7g==
X-Received: by 2002:a7b:cb84:: with SMTP id m4mr14143078wmi.157.1606567195862;
        Sat, 28 Nov 2020 04:39:55 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id s4sm19887591wro.10.2020.11.28.04.39.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Nov 2020 04:39:55 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Thomas Gleixner <tglx@linutronix.de>,
        Ingo Molnar <mingo@redhat.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Darren Hart <dvhart@infradead.org>,
        linux-kernel@vger.kernel.org, linux-man@vger.kernel.org
Subject: [PATCH] futex: Change 'utime' parameter to be 'const ... *'
Date:   Sat, 28 Nov 2020 13:39:46 +0100
Message-Id: <20201128123945.4592-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

futex(2) says that 'utime' is a pointer to 'const'.
The implementation doesn't use 'const';
however, it _never_ modifies the contents of utime.

- futex() either uses 'utime' as a pointer to struct or as a 'u32'.

- In case it's used as a 'u32', it makes a copy of it,
  and of course it is not dereferenced.

- In case it's used as a 'struct __kernel_timespec __user *',
  the pointer is not dereferenced inside the futex() definition,
  and it is only passed to a function: get_timespec64(),
  which accepts a 'const struct __kernel_timespec __user *'.

context:
........

[[
FUTEX(2)               Linux Programmer's Manual              FUTEX(2)

NAME
       futex - fast user-space locking

SYNOPSIS
       #include <linux/futex.h>
       #include <stdint.h>
       #include <sys/time.h>

       long futex(uint32_t *uaddr, int futex_op, uint32_t val,
                 const struct timespec *timeout,   /* or: uint32_t val2 */
                 uint32_t *uaddr2, uint32_t val3);

       Note:  There  is  no  glibc  wrapper  for this system call; see
       NOTES.
]]

$ sed -n '/SYSCALL_DEFINE.(futex\>/,/^}/p' linux/kernel/futex.c
SYSCALL_DEFINE6(futex, u32 __user *, uaddr, int, op, u32, val,
		struct __kernel_timespec __user *, utime, u32 __user *, uaddr2,
		u32, val3)
{
	struct timespec64 ts;
	ktime_t t, *tp = NULL;
	u32 val2 = 0;
	int cmd = op & FUTEX_CMD_MASK;

	if (utime && (cmd == FUTEX_WAIT || cmd == FUTEX_LOCK_PI ||
		      cmd == FUTEX_WAIT_BITSET ||
		      cmd == FUTEX_WAIT_REQUEUE_PI)) {
		if (unlikely(should_fail_futex(!(op & FUTEX_PRIVATE_FLAG))))
			return -EFAULT;
		if (get_timespec64(&ts, utime))
			return -EFAULT;
		if (!timespec64_valid(&ts))
			return -EINVAL;

		t = timespec64_to_ktime(ts);
		if (cmd == FUTEX_WAIT)
			t = ktime_add_safe(ktime_get(), t);
		else if (!(op & FUTEX_CLOCK_REALTIME))
			t = timens_ktime_to_host(CLOCK_MONOTONIC, t);
		tp = &t;
	}
	/*
	 * requeue parameter in 'utime' if cmd == FUTEX_*_REQUEUE_*.
	 * number of waiters to wake in 'utime' if cmd == FUTEX_WAKE_OP.
	 */
	if (cmd == FUTEX_REQUEUE || cmd == FUTEX_CMP_REQUEUE ||
	    cmd == FUTEX_CMP_REQUEUE_PI || cmd == FUTEX_WAKE_OP)
		val2 = (u32) (unsigned long) utime;

	return do_futex(uaddr, op, val, tp, uaddr2, val2, val3);
}

$ sed -n '/get_timespec64(/,/;/p' linux/include/linux/time.h
int get_timespec64(struct timespec64 *ts,
		const struct __kernel_timespec __user *uts);

...

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hello Thomas & Ingo,

I'm sorry I couldn't test the change in my computers,
as there is a bug since Linux 5.7 where I can't boot
(https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=974166).

Alex

 kernel/futex.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/kernel/futex.c b/kernel/futex.c
index 00259c7e288e..28577c7d2805 100644
--- a/kernel/futex.c
+++ b/kernel/futex.c
@@ -3792,8 +3792,8 @@ long do_futex(u32 __user *uaddr, int op, u32 val, ktime_t *timeout,
 
 
 SYSCALL_DEFINE6(futex, u32 __user *, uaddr, int, op, u32, val,
-		struct __kernel_timespec __user *, utime, u32 __user *, uaddr2,
-		u32, val3)
+		const struct __kernel_timespec __user *, utime,
+		u32 __user *, uaddr2, u32, val3)
 {
 	struct timespec64 ts;
 	ktime_t t, *tp = NULL;
-- 
2.29.2

