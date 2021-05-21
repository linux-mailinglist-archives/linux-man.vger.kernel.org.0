Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2A9B38D1E7
	for <lists+linux-man@lfdr.de>; Sat, 22 May 2021 01:26:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229952AbhEUX1Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 19:27:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229937AbhEUX1X (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 May 2021 19:27:23 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18C71C061574
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 16:25:59 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id o127so11917630wmo.4
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 16:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L3HaiuV5FA6T7jwBru+c0uAHWt+ofRfQy8yGyIb7B0Y=;
        b=RlgbuiiHrdbJgPs+1BqM42t4V04VQxjJ9+GaUuA7Jx/I8XgYjJ1mp4wBPDYlqx7cJM
         fDECBkBBO7TkXD9aQk78s6D6r3xAkwvLaiASnWhfRupIjIBzLrAyge7BG4DxdE98ReYo
         gw3kijHhlhtV/+Usuvfogu6yIr7f/HnKoLwl7XHovAr9G1jdIvBKDXSKCUxMKlqGulAm
         GEgIT6JDh0/maRD3XzPyfN60a+wzIruXl/k4wvps6sHmEF4JMVk7gmx4RceTakRqF5hM
         0PLvr8ALG63K4RwcLtVCjmCwQjmYsI0pSQvB40ekKJFl8sXph2CUqoXqDc3qWqaRvbha
         l4Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L3HaiuV5FA6T7jwBru+c0uAHWt+ofRfQy8yGyIb7B0Y=;
        b=SiWnumGT87S26irgwWMqYPcxKH7T/5ITFl9LOwgQ67OrQK84knDYj2XV2I8HWlb4El
         1cnmdqiSQhDCQvaNJbRzl3TruH7kNUkGqgncmRo2NPErjFd3vZVJ2ddGsMw0OQfJRtSe
         UAXmfoGmM8YuD61HJJAS6FU/6dR4fKNqdD3PnvCznL9/5tai8kLVgKLG1MENMo32vmrZ
         7y77N7vBzbDmnphgppN9xt/IvxSHbBI4Ai8W+t+erVwqJb6+AUufe3oTRvZPuERfayA+
         66//eNEW5CBelTai64Sx9VZ8ED0GOmTmA7yxdPU+q+1KBwumOzOil+yR+hxTbiG1ip3I
         t6Ag==
X-Gm-Message-State: AOAM531kAnw+3GDOB8tP1ckNl7qhiucDCnpArRcdhjejyZeAHf81+p6+
        yf4yfDU1NjbQ6Q/gTfzENbw=
X-Google-Smtp-Source: ABdhPJwZ542PfLquZ9r86RSnanT/6f5nAoWNtQyfhnhyxNWHxhr6JKTC75A5+ZR9mHYGR6C0WaVC1A==
X-Received: by 2002:a05:600c:4f0f:: with SMTP id l15mr10978556wmq.143.1621639557718;
        Fri, 21 May 2021 16:25:57 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id z12sm1150639wmc.5.2021.05.21.16.25.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 16:25:57 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 00/10] man2: SYNOPSIS: Use syscall, and fix includes.
Date:   Sat, 22 May 2021 01:25:44 +0200
Message-Id: <20210521232553.161080-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Almost finished these:
$ man_lsfunc man2 | sed -n '/socketcall/,$p' | wc -l
67
$ man_lsfunc man2 | wc -l
401
$

A remainder for myself of commands needed to do this:

.../man-pages$ man_section man2 SYNOPSIS 'CONFORMING TO' NOTES \
               | sed -n '/SOCKETCALL/,$p' \
               | sponge | less;


.../glibc$ man_lsfunc ../../linux/man-pages/man2 \
           | while read -r syscall; do \
                   echo "=============================  ${syscall}"; \
                   grep_glibc_prototype ${syscall}; \
           done \
           | sed -e 's/\bextern //' -e 's/\b_*//g' \
           | sed -n '/socketcall/,$p' \
           | sponge | less;

Kind regards,

Alex


Alejandro Colomar (10):
  open.2: Remove unused <sys/stat.h>
  rt_sigqueueinfo.2: Use syscall(SYS_...); for system calls without a
    wrapper
  seccomp.2: Document why each header is needed
	(not sending this one; already sent last week)
	<https://lore.kernel.org/linux-man/20210515182254.186607-1-alx.manpages@gmail.com/T/#u>
  seccomp.2: Use syscall(SYS_...); for system calls without a wrapper
	(depends on the previous one)
  set_thread_area.2: Use syscall(SYS_...); for system calls without a
    wrapper
  set_tid_address.2: Use syscall(SYS_...); for system calls without a
    wrapper
  sgetmask.2: Use syscall(SYS_...); for system calls without a wrapper
  shmop.2: Remove unused include
  sigprocmask.2: Use syscall(SYS_...); for raw system calls
  socketcall.2: Use syscall(SYS_...); for system calls without a wrapper

 man2/open.2            |  1 -
 man2/rt_sigqueueinfo.2 | 11 ++++++++---
 man2/seccomp.2         | 24 +++++++++++++-----------
 man2/set_thread_area.2 | 24 ++++++++++++------------
 man2/set_tid_address.2 | 13 +++++++------
 man2/sgetmask.2        | 15 ++++++++-------
 man2/shmop.2           |  1 -
 man2/sigprocmask.2     |  8 ++++++--
 man2/socketcall.2      | 15 ++++++++-------
 9 files changed, 62 insertions(+), 50 deletions(-)

-- 
2.31.1

