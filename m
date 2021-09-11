Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F2F9440793F
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232310AbhIKQCl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:02:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230489AbhIKQCl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:02:41 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 684B7C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:28 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id n5so7323322wro.12
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+64qaKY0sobE3hO1qD5lIzM73n/sNXj+J/SclAcR4cA=;
        b=mcjTFW/KwC1ujBy93NeRMf1KjFh8mHnRxk9U3Q1dP2jQHcY+dEa8VQ1PP61SPNIGyZ
         Dy/R4HOzX8Kqc9z3i7Afw2d6M3idHs1Jwa7DwwK7SisCLyxrHLw9a0eGNQHBLERYLEWX
         djpheH4/lICOKDBlKPOADOxTwvJsOnXvAkbj9PGPaV3zaO7WxxpOKWJr3XScynFmmKnR
         xwP/1V2SM8RzgOvKtmRkCnA8FARJkvGl28QFUMOnKy2O4AAL96VQEpDeQT2blu+Ayfar
         +CtXnFj48oohvmJSkjgZAIGy8gIDgKdiZpcjWq9LgOx5aDidKwfRf4co1D8OXl8NH9MK
         lN8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+64qaKY0sobE3hO1qD5lIzM73n/sNXj+J/SclAcR4cA=;
        b=n8mGu4NaLtVEIjoUine3HZDsDQP28r8sNAY+fXc4GNQ0tJOn39bRfkFGh7Sz0TRODG
         mjr1Rfnj33tkWZJ05v+B9Oy4e8mTcCHYrTPW/6vBvWIAziz8kIBlVSBJwa6INbaqJzTL
         1Or67UABJNewPNHTUs+9Dwr6JvvsWkTNl8NRSfqyMP5Hiv7nK2omNv69yBgQUwqQ6/CA
         HGg5+PT+vif28+Rtz5JM4+SIsXDnn8+/JEZFaWiD5JXDQdRBXQw1eMroUECtPnGu8+Oq
         MZbevKErTGghJPLl5hn7HaD+WYc0jrsq1VZufxOENRfPgIiVnGcgle6HnYMkgdg8TqhX
         l7rQ==
X-Gm-Message-State: AOAM532tRf8cSJBaaH/o9NT+Xgr3yPkU7uN3RuKQjg2IP6nDH6VdpYmW
        pUiBCio7ik2CpFwvEnyLZUI=
X-Google-Smtp-Source: ABdhPJwE4k4PBntDy9gvDe5KAaZBnlJg5EZTEyUXyRyyOrkKt3vz22StHonhL7i+RQ4H5olYvrDIYQ==
X-Received: by 2002:a05:6000:18c2:: with SMTP id w2mr3638341wrq.282.1631376087013;
        Sat, 11 Sep 2021 09:01:27 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:26 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 00/45] Add LIBRARY section (based on FreeBSD manual pages)
Date:   Sat, 11 Sep 2021 18:00:33 +0200
Message-Id: <20210911160117.552617-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Here's a first patch set adding a new LIBRARY section
to man2 and man3 pages (I started with man2).

It is based on (mostly cloned from) FreeBSD's man pages,
as I liked that section from them.

It normalizes the information we had in comments in
NOTES or SYNOPSIS or DESCRIPTION.
Or in most pages we didn't even have it, as we assume that 'cc' already
handles '-lc' by deafult.

Patch 20/45 was removed on purpose due to a mistake.

Cheers,

Alex





Alejandro Colomar (45):
  _exit.2: Add LIBRARY section
  keyctl.2: Add LIBRARY section
  gamma.3: Add LIBRARY section
  request_key.2: Add LIBRARY section
  write.2: Add LIBRARY section
  wait4.2: Add LIBRARY section
  wait.2: Add LIBRARY section
  vmsplice.2: Add LIBRARY section
  vm86.2: Add LIBRARY section
  vhangup.2: Add LIBRARY section
  vfork.2: Add LIBRARY section
  utimensat.2: Add LIBRARY section
  utime.2: Add LIBRARY section
  ustat.2: Add LIBRARY section
  userfaultfd.2: Add LIBRARY section
  unshare.2: Add LIBRARY section
  uname.2: Add LIBRARY section
  umount.2: Add LIBRARY section
  tkill.2: Add LIBRARY section
  unlink.2: Add LIBRARY section
  umask.2: Add LIBRARY section
  truncate.2: Add LIBRARY section
  timer_getoverrun.2: Add LIBRARY section
  timerfd_create.2: Add LIBRARY section
  timer_delete.2: Add LIBRARY section
  timer_create.2: Add LIBRARY section
  time.2: Add LIBRARY section
  tee.2: Add LIBRARY section
  syslog.2: Add LIBRARY section
  sysinfo.2: Add LIBRARY section
  syscall.2: Add LIBRARY section
  sync_file_range.2: Add LIBRARY section
  sync.2: Add LIBRARY section
  symlink.2: Add LIBRARY section
  swapon.2: Add LIBRARY section
  subpage_prot.2: Add LIBRARY section
  statx.2: Add LIBRARY section
  stat.2: Add LIBRARY section
  spu_run.2: Add LIBRARY section
  spu_create.2: Add LIBRARY section
  splice.2: Add LIBRARY section
  socketpair.2: Add LIBRARY section
  socketcall.2: Add LIBRARY section
  sigwaitinfo.2: Add LIBRARY section

 man2/_exit.2            |  3 +++
 man2/keyctl.2           |  9 +++++++--
 man2/request_key.2      | 18 ++++--------------
 man2/sigwaitinfo.2      |  3 +++
 man2/socketcall.2       |  3 +++
 man2/socketpair.2       |  3 +++
 man2/splice.2           |  3 +++
 man2/spu_create.2       |  3 +++
 man2/spu_run.2          |  3 +++
 man2/stat.2             |  3 +++
 man2/statx.2            |  3 +++
 man2/subpage_prot.2     |  3 +++
 man2/swapon.2           |  3 +++
 man2/symlink.2          |  3 +++
 man2/sync.2             |  3 +++
 man2/sync_file_range.2  |  3 +++
 man2/syscall.2          |  3 +++
 man2/sysinfo.2          |  3 +++
 man2/syslog.2           |  3 +++
 man2/tee.2              |  3 +++
 man2/time.2             |  3 +++
 man2/timer_create.2     |  5 +++--
 man2/timer_delete.2     |  5 +++--
 man2/timer_getoverrun.2 |  5 +++--
 man2/timer_settime.2    |  5 +++--
 man2/timerfd_create.2   |  3 +++
 man2/times.2            |  3 +++
 man2/tkill.2            |  3 +++
 man2/truncate.2         |  3 +++
 man2/umask.2            |  3 +++
 man2/umount.2           |  3 +++
 man2/uname.2            |  3 +++
 man2/unlink.2           |  3 +++
 man2/unshare.2          |  3 +++
 man2/userfaultfd.2      |  3 +++
 man2/ustat.2            |  3 +++
 man2/utime.2            |  3 +++
 man2/utimensat.2        |  3 +++
 man2/vfork.2            |  3 +++
 man2/vhangup.2          |  3 +++
 man2/vm86.2             |  3 +++
 man2/vmsplice.2         |  3 +++
 man2/wait.2             |  3 +++
 man2/wait4.2            |  3 +++
 man2/write.2            |  3 +++
 man3/gamma.3            |  5 +++--
 46 files changed, 143 insertions(+), 26 deletions(-)

-- 
2.33.0

