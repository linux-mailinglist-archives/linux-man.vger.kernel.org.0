Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38DEB37968B
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232102AbhEJR5I (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231827AbhEJR5I (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:08 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69C00C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:02 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id h4so17508294wrt.12
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qtL5V/SEFLwFzfyp8nQ8Gs6MzQRj4Vr2z6nayYWpGhE=;
        b=nFQxjyeO/XDGkHg355c2bmMpu7FvpUOMTzPD//d7z5xUuyGcoya4qQlPZhAdZJD7RJ
         lZ03HjdU+33kD5rV0CDH7/p6pMAlTrDidzux+YRa31MFIPAhDxvviYJ87kltKX2/7akS
         A17gBdxStXJTLvAiDOkecJDSFiVeMEHqP71dj0QCUX/1qv3ZpK+OjJBhCzDADwuWbntL
         DzjwGW7aIsytqvy3UlqbKvZWIr5KauUqQLQ96RuXFYbwVIB0aFp8vFjOlT2ZCgIGYjA1
         0nHvBgpPihJZsuWakf4InVSug8hIzK+mLOhy0rj6kI5M3+nYc2tN9nEBaaoBd/ATRLtB
         2FnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qtL5V/SEFLwFzfyp8nQ8Gs6MzQRj4Vr2z6nayYWpGhE=;
        b=uKCnIVufI0FbUAP0j0qvmUZjWp3VGQGyEyVAQ2FZm58l2hfabI2HDwtJboQer7Bpdq
         1H9toGjbkxe4NjU3gdgZzk3y7CSZAZInemNYHHXqwa8BnXqkqTMqGRMPbm5wac7fjxcK
         BBMt6mHC8gc/Fdd1OYaIDGEXriArKz5cYsN4OyM1slGgXAaaGSYGGFtwm3h2PTzLv/l3
         dsjJ2COUa8lB1kYyDOg6YzYfu/cnd4O21qP9o4eZvSsPVcog0uSL/bad5BFKKLzdD5Gk
         3ycIIMNIrmxbQWkFsGxxVtvDqmQ7sTIlaQoL1m8D+DL7lE2X5IjdX8IoladEpf5/6bUH
         kQHw==
X-Gm-Message-State: AOAM531e+CbcRn4yUGeRSMYwHLvpG/kycts4shcLU3K7DbThVkGTLVFF
        BxMsHOqTJ8+iEAsOOkvz4X0=
X-Google-Smtp-Source: ABdhPJwFBvKx80I7gKF3D4OQbtfEqQIcGtBCIDM7SE/2mxDj6ky1WaCob7Hjod9i/jwHIUY0rb5+pA==
X-Received: by 2002:a5d:6e06:: with SMTP id h6mr32047089wrz.201.1620669361156;
        Mon, 10 May 2021 10:56:01 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.55.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:00 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 00/39] man2: SYNOPSIS: Fix headers, use syscall(), and other fixes
Date:   Mon, 10 May 2021 19:55:08 +0200
Message-Id: <20210510175546.28445-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Hi Michael,

This is the second set of SYNOPSIS fixes, mostly about fixing the includes,
giving reasons why they are being included, and using syscall(SYS_...) when
needed.  Other minor fixes that I have noticed while doing this are also
included in this set.

After this set, about a 60% of man2 will be fixed.

As with the previous patch set, please review thoroughly.  I might have
overlooked something.  It looks good, but it's been a long time...

I must notice that there are a few discrepancies (see the last mails there):
<https://lore.kernel.org/linux-man/3d6feff0-f65b-f086-aa2a-be21ff90ccfe@gmail.com/T/#u>.

Cheers,

Alex



Alejandro Colomar (39):
  futex.2: Use syscall(SYS_...); for system calls without a wrapper
  getdents.2: Use syscall(SYS_...); for system calls without a wrapper
  ioctl_tty.2: Fix includes
  ioctl_userfaultfd.2: SYNOPSIS: Add <linux/userfaultfd.h>
  io_destroy.2: Use syscall(SYS_...); for system calls without a wrapper
  io_getevents.2: Use syscall(SYS_...); for system calls without a
    wrapper
  ioperm.2: Remove obvious comment
  ioprio_set.2: Use syscall(SYS_...); for system calls without a wrapper
  ipc.2: Use syscall(SYS_...); for system calls without a wrapper
  ipc.2: Add needed include
  kcmp.2: Use syscall(SYS_...); for system calls without a wrapper
  kcmp.2: tfix
  kexec_load.2: Use syscall(SYS_...); for system calls without a wrapper
  scripts/bash_aliases: man_lsfunc(): Extract syscall name from
    syscall(SYS_...)
  keyctl.2: Use syscall(SYS_...); for system calls without a glibc
    wrapper
  link.2: ffix
  llseek.2: Use syscall(SYS_...); for system calls without a wrapper
  lookup_dcookie.2: Use syscall(SYS_...); for system calls without a
    wrapper
  membarrier.2: Use syscall(SYS_...); for system calls without a wrapper
  mincore.2: Remove unused include
  mknod.2: Remove unused includes
  mmap2.2: Use syscall(SYS_...); for system calls without a wrapper
  modify_ldt.2: Use syscall(SYS_...); for system calls without a wrapper
  mq_getsetattr.2: Use syscall(SYS_...); for system calls without a
    wrapper
  alloc_hugepages.2, arch_prctl.2, capget.2, clone.2, delete_module.2,
    exit_group.2, get_robust_list.2, getunwind.2, init_module.2: Add
    note about the use of syscall(2)
  open.2: Remove unused <sys/stat.h>
  openat2.2: Use syscall(SYS_...); for system calls without a wrapper;
    fix includes too
  perf_event_open.2: Use syscall(SYS_...); for system calls without a
    wrapper
  pidfd_getfd.2: Use syscall(SYS_...); for system calls without a
    wrapper
  pidfd_open.2: Use syscall(SYS_...); for system calls without a wrapper
  pidfd_send_signal.2: Use syscall(SYS_...); for system calls without a
    wrapper. Fix includes too
  pipe.2: wfix
  pivot_root.2: Use syscall(SYS_...); for system calls without a wrapper
  poll.2: Remove <signal.h>
  process_madvise.2: Use syscall(SYS_...); for system calls without a
    wrapper. Fix includes too.
  quotactl.2: Better detail why <xfs/xqm.h> is included
  readdir.2: Use syscall(SYS_...); for system calls without a wrapper
  readlink.2: ffix
  reboot.2: Use syscall(SYS_...); for system calls without a wrapper

 man2/alloc_hugepages.2   |  5 +++++
 man2/arch_prctl.2        |  6 ++++++
 man2/capget.2            |  5 +++++
 man2/clone.2             |  6 ++++++
 man2/delete_module.2     |  6 ++++++
 man2/exit_group.2        |  6 ++++++
 man2/futex.2             | 21 +++++++++++----------
 man2/get_robust_list.2   |  5 +++++
 man2/getdents.2          | 20 +++++++++++++++-----
 man2/getunwind.2         |  6 ++++++
 man2/init_module.2       |  5 +++++
 man2/io_destroy.2        | 16 +++++++++-------
 man2/io_getevents.2      | 21 +++++++++++----------
 man2/ioctl_tty.2         |  6 +++---
 man2/ioctl_userfaultfd.2 |  1 +
 man2/ioperm.2            |  2 +-
 man2/ioprio_set.2        | 15 +++++++++------
 man2/ipc.2               | 19 ++++++++++++-------
 man2/kcmp.2              | 18 ++++++++++--------
 man2/kexec_load.2        | 24 +++++++++++++-----------
 man2/keyctl.2            | 17 +++++++----------
 man2/link.2              |  2 +-
 man2/llseek.2            | 13 +++++++------
 man2/lookup_dcookie.2    | 14 +++++++++-----
 man2/membarrier.2        | 16 ++++++++++------
 man2/mincore.2           |  1 -
 man2/mknod.2             |  2 --
 man2/mmap2.2             | 10 ++++++----
 man2/modify_ldt.2        | 15 ++++++++++-----
 man2/mq_getsetattr.2     | 15 ++++++---------
 man2/open.2              |  1 -
 man2/openat2.2           | 20 +++++++++++---------
 man2/perf_event_open.2   | 21 +++++++++++----------
 man2/pidfd_getfd.2       | 14 +++++++++-----
 man2/pidfd_open.2        | 13 ++++++++-----
 man2/pidfd_send_signal.2 | 16 ++++++++++------
 man2/pipe.2              |  4 ++--
 man2/pivot_root.2        | 14 +++++++++-----
 man2/poll.2              |  3 +--
 man2/process_madvise.2   | 20 ++++++++++++--------
 man2/quotactl.2          |  4 +++-
 man2/readdir.2           | 12 +++++++-----
 man2/readlink.2          |  2 +-
 man2/reboot.2            | 12 +++++++-----
 scripts/bash_aliases     |  1 +
 45 files changed, 293 insertions(+), 182 deletions(-)

-- 
2.31.1

