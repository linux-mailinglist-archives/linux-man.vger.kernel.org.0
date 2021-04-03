Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8C4A353553
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:41:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236707AbhDCTlw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:41:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231658AbhDCTlw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:41:52 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E064C0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:41:49 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id u5-20020a7bcb050000b029010e9316b9d5so3802031wmj.2
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=n6NQljeifzObYAimd/mHaMftDdhocyqwN9rXklsxEmM=;
        b=vHLRlt0JTOLJUg5mTB7CQhvXQUEGpUQihjQCg12My9R2ZUC2Vl83FQF3GQcBvEJzUx
         psgMBzouLM257FpuZRXcDdotyYk0pWlgF3KLgrobK1drWALiXC+Cv9v+nMc2z1UfkLYQ
         7Fdw6KrfDkzzGNj0aS91uLGYGGfIJ7dMzsbWQ2odQjaNzERrYvi2XXyEQvvFqCauZ85Q
         QyiGo/V2Y2kJT8qHCdjoZEwilDSKg8CKatRNtRPDjAlkjOjsZcTUMn/ztqXCpKRQVlna
         cEh5oOR+JkAtl9g7GrWvNdnY81WKvDoBzP5SIElDUbBbJrycZIPoZpurLII3nZkAqi4v
         eTjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=n6NQljeifzObYAimd/mHaMftDdhocyqwN9rXklsxEmM=;
        b=nw1T2kno5lYm4qdBZGJP44kang6xozfKKYfERxXh+BymM1OYI3QRJt938bMF4x7N2y
         oRf6NV6VZfMZaLaMoiG2WBfDRbrvVgPdq87i7IFAffAihOI806u9b0ow2s2TuO0K/MJt
         539+FyTdVKrMtNE/6zc0iYD4xnxlSugyXgqnTSci62aLSHOVt1IdqLHS5PgcnWhZIb00
         CiUCsVor9nNxfoSqqJS3pJSjHvX6H7UU3q5rQ2ZSLr5MhE1LdYr0b9YMa/NxOdYNluE+
         R4eOp5MdkQzKiQsdT4cAliuTwxmeDas8o138CPDlp6G54fi+2CkxI6ZAMkDwJjJWiRCe
         E4QQ==
X-Gm-Message-State: AOAM531iKe07XAAje5sqMVjap8dcPydduUGJFuyrwtrxDtoAI2HLhNbM
        w7Hq4kER/1QBJp023JBFxuOTNYdWCTo=
X-Google-Smtp-Source: ABdhPJw0cemLU4WP1NVoyiFtAC77R9mmgJhXr9XWuzZZIIrNhO5JH5ddyDbBXj04xrpoTwkFsgE1Rw==
X-Received: by 2002:a7b:c003:: with SMTP id c3mr3781456wmb.59.1617478907906;
        Sat, 03 Apr 2021 12:41:47 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:41:47 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 00/35] SYNOPSIS: Use syscall(SYS_...); and fix '#include's
Date:   Sat,  3 Apr 2021 21:39:52 +0200
Message-Id: <20210403194026.102818-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

I cleaned up the includes (add missing ones, remove unneeded ones,
...), explained why each of them is needed (except for the one
providing the prototype), a few ffixes, and changed prototypes to
use syscall() when there's no wrapper.

I thought of adding a new section 'LIBRARY', as in FreeBSD's
manual pages, instead of assuming glibc, and having non-standard
clarifications in NOTES for non-glibc functions; but that would be
for a future patch-set after this one.

I highly doubt that I can finish this before 5.12, so maybe you
prefer to start a new branch to not release 5.12 with a mix of
styles...; up to you :-)

I didn't separate the syscall() changes from the #include changes,
because in most cases one implies the other, so I considered this
as a SYNOPSIS general improvement.

Cheers,

Alex


Alejandro Colomar (35):
  system_data_types.7: Add 'struct sockaddr'
  sockaddr.3: New link to system_data_types(7)
  system_data_types.7: Add 'socklen_t'
  socklen_t.3: New link to system_data_types(7)
  access.2: Use syscall(SYS_...); for system calls without a wrapper
  add_key.2: Remove unused include
  alloc_hugepages.2: Use syscall(SYS_...); for system calls without a
    wrapper
  arch_prctl.2: Use syscall(SYS_...); for system calls without a wrapper
  arch_prctl.2: SYNOPSIS: Remove unused includes
  capget.2: Use syscall(SYS_...); for system calls without a wrapper
  clone.2: Use syscall(SYS_...); for system calls without a wrapper
  delete_module.2: Add missing include
  dup.2: SYNOPSIS: Use consistent comments through pages
  execveat.2: Use syscall(SYS_...); for system calls without a wrapper
  exit_group.2: Use 'noreturn' in prototypes
  exit_group.2: Use syscall(SYS_...); for system calls without a wrapper
  fanotify_init.2: Add comment: why more than one include is needed
  fcntl.2: Remove unused include
  futex.2: Use syscall(SYS_...); for system calls without a wrapper
  futimesat.2: ffix
  getdents.2: Use syscall(SYS_...); for system calls without a wrapper
  getpriority.2: Remove unused include
  getrlimit.2, getrusage.2: Remove unused include
  getunwind.2: Use syscall(SYS_...); for system calls without a wrapper
  get_robust_list.2: Use syscall(SYS_...); for system calls without a
    wrapper
  delete_module.2: Use syscall(SYS_...); for system calls without a
    wrapper
  init_module.2: Use syscall(SYS_...); for system calls without a
    wrapper
  io_cancel.2: Use syscall(SYS_...); for system calls without a wrapper
  ioctl_fat.2: Make clear why is each header exactly needed.
  ioctl_fat.2: ffix
  ioctl_ficlonerange.2: Make clear why is each header exactly needed.
  ioctl_fideduperange.2: Make clear why exactly is each header needed
  ioctl_fslabel.2: ffix
  ioctl_fslabel.2: Make clear why exactly is each header needed
  ioctl_getfsmap.2: Make clear why exactly is each header needed

 man2/access.2              | 11 +++++---
 man2/add_key.2             |  1 -
 man2/alloc_hugepages.2     |  7 ++---
 man2/arch_prctl.2          | 15 ++++-------
 man2/capget.2              | 20 +++++++-------
 man2/clone.2               | 17 +++++-------
 man2/delete_module.2       |  9 ++++---
 man2/dup.2                 |  2 +-
 man2/execveat.2            | 14 ++++------
 man2/exit_group.2          |  5 ++--
 man2/fanotify_init.2       |  2 +-
 man2/fcntl.2               |  1 -
 man2/futex.2               | 19 +++++---------
 man2/futimesat.2           |  2 +-
 man2/get_robust_list.2     | 19 ++++++--------
 man2/getdents.2            | 12 ++++++---
 man2/getpriority.2         | 13 ----------
 man2/getrlimit.2           |  1 -
 man2/getrusage.2           |  9 -------
 man2/getunwind.2           | 14 +++-------
 man2/init_module.2         | 20 ++++++--------
 man2/io_cancel.2           | 16 +++++-------
 man2/ioctl_fat.2           |  7 ++---
 man2/ioctl_ficlonerange.2  |  2 +-
 man2/ioctl_fideduperange.2 |  3 ++-
 man2/ioctl_fslabel.2       |  4 +--
 man2/ioctl_getfsmap.2      |  4 +--
 man3/sockaddr.3            |  1 +
 man3/socklen_t.3           |  1 +
 man7/system_data_types.7   | 53 ++++++++++++++++++++++++++++++++++++++
 30 files changed, 156 insertions(+), 148 deletions(-)
 create mode 100644 man3/sockaddr.3
 create mode 100644 man3/socklen_t.3

-- 
2.31.0

