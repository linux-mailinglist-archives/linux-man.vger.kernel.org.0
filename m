Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D55F533A052
	for <lists+linux-man@lfdr.de>; Sat, 13 Mar 2021 20:26:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234410AbhCMT00 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Mar 2021 14:26:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230412AbhCMTZw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Mar 2021 14:25:52 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F1F0C061574;
        Sat, 13 Mar 2021 11:25:50 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id b2-20020a7bc2420000b029010be1081172so17104326wmj.1;
        Sat, 13 Mar 2021 11:25:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CAnCKokfugMQMVlPR7FqG87BFEfs/Ys2g8rlIPJJGeY=;
        b=KN/mMePr5A7sE3rQF8SU9GZ3EuhGkpNw6dly85UOkQ1q4DyypsV/vC4W6Ch/nSFAWC
         Rd1aRmCEd3OKiJxN+8iQatM2mKmV9S9K2YCdWr+vNguA36ae4gdIJOXoU5vkFQ+TJAI2
         8bLeVRnM5H4yiKRfENsTHRCsh7KxS+MW2F7HYaWEGr/UcPqsPfouhpB7g6YltGwZ70BZ
         vRMkWOdCtoSFKG09BZ4xSdGVp3W4gA/1CqVUJ8k4FzoTCFx/Krxycv5cSflvt2elkj6n
         t20wu2As+tbzrkaU0JPOfTURNJnEdzO9GNsmPLGxYWuK0mHHtEpSJPRsAsYc0peYLc1B
         zNfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CAnCKokfugMQMVlPR7FqG87BFEfs/Ys2g8rlIPJJGeY=;
        b=KA/aspWekacXyM+j8rpHbc1OtrKsWu6mZxvPD+N8EyI2hdRPYZQQxz3w61haEJ1dQt
         FaoW1VkJyxYVjUf/JkoVp/9Xd+tm2GvGE0CZws03iXNKc001lWII658kz5CXHZ883t/M
         1KN7A8nzhtriZOnrD3KoIa5LGDDqMOccRw134f9LD/ZxIOSllfWZd8glx5jV93SIKhpU
         LhVYaUH2wgfdbJzOiUkajDulSOge7wiMbthcSoP14Pgg3kRu6BFZzy0k0t6tJ3WArCZF
         p9rdRwbZCG3+5A4e/HzEfDjdSf+HsWi+g9gWAlM8xwLHqT3u+BJ/lMJ353ygvzl1ekcN
         VXPg==
X-Gm-Message-State: AOAM531w83/0ZtsB+vjvXoaBripTl8XdEPadJ0MPICtrvxs4vjBTZHLj
        r/uKJ1C4o2vCVb2iB9iFXSM=
X-Google-Smtp-Source: ABdhPJxG8KOIEvVKG4eB9U0FVzJCZGU9nAKTEjxWA6g43YtKcra1puo6yEbjNar48rhrVTAepUXjdg==
X-Received: by 2002:a05:600c:2204:: with SMTP id z4mr19580701wml.31.1615663548914;
        Sat, 13 Mar 2021 11:25:48 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id j136sm7670964wmj.35.2021.03.13.11.25.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 11:25:48 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: [RFC v3 00/17] man2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 13 Mar 2021 20:25:10 +0100
Message-Id: <20210313192526.350200-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210214133907.157320-1-alx.manpages@gmail.com>
References: <20210214133907.157320-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

This draft is more polished than my inital idea.

I changed only those functions without a wrapper.
If we decide later to do something different, we'll see.

Any thoughts?

Cheers,

Alex

P.S.: [RFC v3 15/17] doesn't exist :)

Alejandro Colomar (17):
  access.2: Use syscall(SYS_...); for system calls without a wrapper
  alloc_hugepages.2: Use syscall(SYS_...); for system calls without a
    wrapper
  arch_prctl.2: Use syscall(SYS_...); for system calls without a wrapper
  arch_prctl.2: SYNOPSIS: Remove unused includes
  capget.2: Use syscall(SYS_...); for system calls without a wrapper
  clone.2: Use syscall(SYS_...); for system calls without a wrapper
  delete_module.2: wfix
  epoll_wait.2: Use syscall(SYS_...); for system calls without a wrapper
  execveat.2: Use syscall(SYS_...); for system calls without a wrapper
  exit_group.2: Use syscall(SYS_...); for system calls without a wrapper
  futex.2: Use syscall(SYS_...); for system calls without a wrapper
  getdents.2: Use syscall(SYS_...); for system calls without a wrapper
  getunwind.2: Use syscall(SYS_...); for system calls without a wrapper
  get_robust_list.2: Use syscall(SYS_...); for system calls without a
    wrapper
  init_module.2: Use syscall(SYS_...); for system calls without a
    wrapper
  ioprio_set.2: Use syscall(SYS_...); for system calls without a wrapper

 man2/access.2          | 11 ++++++++---
 man2/alloc_hugepages.2 |  7 ++++---
 man2/arch_prctl.2      | 15 +++++----------
 man2/capget.2          | 18 ++++++++----------
 man2/clone.2           | 16 +++++-----------
 man2/delete_module.2   |  2 +-
 man2/epoll_wait.2      | 32 +++++++++++++++++++-------------
 man2/execveat.2        | 13 ++++---------
 man2/exit_group.2      |  5 +++--
 man2/futex.2           | 19 +++++++------------
 man2/get_robust_list.2 | 20 ++++++++------------
 man2/getdents.2        | 12 ++++++++----
 man2/getunwind.2       | 14 ++++----------
 man2/init_module.2     | 21 ++++++++++++---------
 man2/ioprio_set.2      | 14 ++++++--------
 15 files changed, 102 insertions(+), 117 deletions(-)

-- 
2.30.2

