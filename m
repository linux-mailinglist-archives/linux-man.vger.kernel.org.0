Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 299DC3A4D94
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:31:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229819AbhFLIdt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:33:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229584AbhFLIds (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:33:48 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32ADDC061574
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:31:49 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id n7so2341361wri.3
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hmGiBCcbupnZeOFLsMufJp6NGmECvvECIiqzGf3+vyA=;
        b=GzP0FSAwNBJsh+V9Ms6koPuP3GWefq/1P1m1AuIh6+n5AfT5wSIV7gUyQYp1CWNYlZ
         QxTBjkbiLBrDufsWC/ir61EEMA7YQneonKWp1qlA/Oiwdfj1zqGeUpK/xpfgL6cg4k1R
         O6HhjBiiafq+0irICRBTHcLuJxIsnlvLkAoCtbu7zE6fCleTNwFsak8mFZ3ZEjdleSKy
         Wwy2hc5m+nmRsNMLSCu5oESTe94PFUPrTyPPYhGy5uEZ//2l0+KrtFadR2HU6MpiQLEG
         s/+t3/e+8HBXGiU/kX797EnxkV7R7qk5Ku2hhak6NtZm62utAcU6RUfMSn0mAN8fwFWq
         +Mzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hmGiBCcbupnZeOFLsMufJp6NGmECvvECIiqzGf3+vyA=;
        b=FXSQOBTxmNH8CFtV2wytHhmD2e9oilV8kpSICokbHUlGwZKL2HgUaCRv1884DYHZMf
         5qJseYPoihgvMxiw+rztcNfelsd0qBQF4Q8xSlq4gIgjaTwd/J1hXiGToYHw+DbfHSH6
         iS27e4HLTo+wELX42thxT88zqxTMiYYXBn9rehFBMdRPlSPkVeTc30AFotD2gDngZI3D
         E4gIodrr4DLldxcVSwqW5Radd3RInr6aBImVPDPs19mvIxpHXAUYXn3hP26R1U4+0YS9
         qu45qSrktANqa6pgzPw/iqMxTuE5xTl2+LXYCuJtCdWvweJNbVkbeHWjjhJLwGjAWih0
         ihlg==
X-Gm-Message-State: AOAM531KDdL88fu1g6j1q7T2hCZqiNyW5x3uHRLYOpQM6XLYJgEj4ZDk
        gd0VDjpYYIGY2ZswzLtrwZLTxNodbcA=
X-Google-Smtp-Source: ABdhPJyK//AecFssO8g/dnw4d5ZASjCTQS1bZABQpBKyX1wGMsoQRPcY/AjjmZ1kEQNxVQFa5vg1Bw==
X-Received: by 2002:a5d:54c8:: with SMTP id x8mr8343126wrv.109.1623486707835;
        Sat, 12 Jun 2021 01:31:47 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.31.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:31:47 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 00/28] SYNPOSIS: Use syscall() and fix includes
Date:   Sat, 12 Jun 2021 10:31:17 +0200
Message-Id: <20210612083145.12485-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

This is the last batch.  It includes the changes to seccomp.2, as you can see.
Actually, they are a resend of the last ones.  I found out that all of the
versions I sent you are identical...

Cheers,

Alex


Alejandro Colomar (28):
  seccomp.2: Document why each header is needed
  seccomp.2: Use syscall(SYS_...); for system calls without a wrapper
  spu_create.2: Remove <sys/types.h>
  spu_create.2: Use syscall(SYS_...), for system calls without a wrapper
  pipe.2: SYNOPSIS: Fix incorrect prototype
  spu_run.2: Use syscall(SYS_...), for system calls without a wrapper
  stat.2: SYNOPSIS: Fix includes
  statx.2: SYNOPSIS: Fix includes
  subpage_prot.2: Use syscall(SYS_...); for system calls without a
    wrapper
  swapon.2: SYNOPSIS: Fix includes
  symlink.2: ffix
  syscall.2: wfix + ffix
  syslog.2: Use syscall(SYS_...); for raw system calls
  timer_create.2: SYNOPSIS: Document why more than one header is needed
  s390_guarded_storage.2: tfix
  s390_runtime_instr.2: tfix
  s390_sthyi.2: tfix
  tkill.2: Use syscall(SYS_...); for system calls without a wrapper; fix
    includes too
  truncate.2: Remove <sys/types.h>
  umask.2: Remove <sys/types.h>
  unlink.2: ffix
  userfaultfd.2: Remove unused includes
  userfaultfd.2: Use syscall(SYS_...); for system calls without a
    wrapper; fix includes too
  utime.2: SYNOPSIS: Fix includes
  utimensat.2: ffix
  vmsplice.2: Remove unneeded include
  wait.2: Remove <sys/types.h>
  wait4.2: SYNOPSIS: Remove includes

 man2/pipe.2                 |  2 +-
 man2/s390_guarded_storage.2 |  2 +-
 man2/s390_runtime_instr.2   |  2 +-
 man2/s390_sthyi.2           |  2 +-
 man2/seccomp.2              | 24 +++++++++++++-----------
 man2/spu_create.2           | 19 ++++++++++---------
 man2/spu_run.2              | 12 +++++++-----
 man2/stat.2                 |  3 +--
 man2/statx.2                |  3 +--
 man2/subpage_prot.2         | 15 +++++++++------
 man2/swapon.2               |  1 -
 man2/symlink.2              |  2 +-
 man2/syscall.2              |  2 +-
 man2/syslog.2               |  8 ++++++--
 man2/timer_create.2         |  2 +-
 man2/tkill.2                | 22 +++++++++++++---------
 man2/truncate.2             |  1 -
 man2/umask.2                |  1 -
 man2/unlink.2               |  2 +-
 man2/userfaultfd.2          | 15 ++++++++-------
 man2/utime.2                |  1 -
 man2/utimensat.2            |  2 +-
 man2/vmsplice.2             |  1 -
 man2/wait.2                 |  1 -
 man2/wait4.2                |  3 ---
 25 files changed, 77 insertions(+), 71 deletions(-)

-- 
2.32.0

