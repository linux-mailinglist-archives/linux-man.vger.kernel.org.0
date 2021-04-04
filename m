Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09D333537E0
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229693AbhDDL7j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbhDDL7i (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:38 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E062C061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:34 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id k8so8610763wrc.3
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5bat/qEhWP8DyU/MoVqBwcSwFez0/rWAZXAS2ba+qYM=;
        b=TV/88Lz3DNooUt11R8glpbfch8DIp4wcv0k0F5DFW/PQ5tdR3HgVY/a6jcIki57gi+
         mwj/vUFBB6Z1RhYFCKLWrsdwmBMZtjmK/GgFD3qDHfyp98FMVY/80slL+tuvt9DCKkj3
         shgCsVasduKFbk4jCNWqUewaAwiYc2yzYmKN/6c7BAifJAzNyETWT6WFf3fDd7RcDNbB
         /65rv+3FSTa/NazL23IG6ZxCgPu/5EJL2jtQ3dqlCQn6p/JeUx3ysxggpG1P/GG0JWb7
         G6FjyJnb9tei+yCL2ukDkaYft/N2GvhXyYrR8P6v6TqBPuIouR2IZRLuSrxUc1KbomX9
         JLTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5bat/qEhWP8DyU/MoVqBwcSwFez0/rWAZXAS2ba+qYM=;
        b=JziJSskMWVa6ZLt4mDUflI5oslHzA9n81tgKQHJkemW1Hlah8gTh7QKpp+2oKOkX6+
         113AdUzB/eiRgLrZU+T+osy93D1F9v68krz0bAHaMHoBEThaZAuSixeAmr6iGjblGJpe
         z6LAazqBziujK5zvJ07WOdGfXi4VAtu3cqiz9Xq6BKzPD2IxmgKrwlo4VtmcKOzphAY2
         qHz19C9Zcu8k3YKcy30jf/9qrKJZr4AIyVH9S0vt9sKtzdVtEL0bVet5ivsMcErJMkCQ
         Rtr3b2pTXMi9dmo8aCcVpn3xUQXVgq1EWJVTpiXdQR+kHKxffH8d0nfi+7VIEwv7yQIM
         JV7Q==
X-Gm-Message-State: AOAM531KvBjwK8Gtx1G9RPAQnJgGaPEmjEhsp0xJBXtZHgP4PX6zDZlH
        Eo0GJ8GLl1EETBeinj/SKQM=
X-Google-Smtp-Source: ABdhPJxgbZlTDwuTX+acqk+xIb661ajSxwwq0N0wEBC9uT5v1/VwSr5/6HKfKeIYKAnkDIKLOkYrBA==
X-Received: by 2002:a5d:424c:: with SMTP id s12mr25041943wrr.161.1617537573066;
        Sun, 04 Apr 2021 04:59:33 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:32 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 00/35] SYNOPSIS: Use syscall(SYS_...); and fix '#include's
Date:   Sun,  4 Apr 2021 13:58:13 +0200
Message-Id: <20210404115847.78166-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


v5:
	- ffix 29/35, 32/35, and 35/35.  The rest are identical to v4.


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
 man2/ioctl_fat.2           |  5 ++--
 man2/ioctl_ficlonerange.2  |  2 +-
 man2/ioctl_fideduperange.2 |  3 ++-
 man2/ioctl_fslabel.2       |  4 +--
 man2/ioctl_getfsmap.2      |  5 ++--
 man3/sockaddr.3            |  1 +
 man3/socklen_t.3           |  1 +
 man7/system_data_types.7   | 53 ++++++++++++++++++++++++++++++++++++++
 30 files changed, 156 insertions(+), 147 deletions(-)
 create mode 100644 man3/sockaddr.3
 create mode 100644 man3/socklen_t.3

-- 
2.31.0

