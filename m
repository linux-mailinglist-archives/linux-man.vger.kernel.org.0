Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 407E1407383
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 00:47:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231340AbhIJWse (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 18:48:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230210AbhIJWsd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 18:48:33 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14F60C061574
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:22 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 196-20020a1c04cd000000b002fa489ffe1fso2478089wme.4
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=efSDrw+VozFdRcbu22uhwOH1h8aZ87ngSVdMOc5WZ88=;
        b=Bl8LUYrWfKLbeIAUjTxJN6PXT43CQq6W0go/kiMjz8N1bAboi2UdETJwjGC5sqhNC6
         SC22lh2nUjvJvQOlZanT/05n/D8CD8mcZv02rC7LWEb/haVNsSSGok26ETQdj6Qg7i9q
         joU5OAi/4R5d7P+RoAtV3y0sxvAXNMu3dK1SLzkw+ns2O1qm8Umn+lgli5iYfcMBe4aO
         BrFlgtnQXfxpbgJE8zxPEAuq6zfd2fXYfi5JypNNscejgU4KCEVNw7n8HNpNJAOUdYiq
         7H3LM2lsVAhDT3NGUNV4g35zzWPMUz2GMQ9Uj6SPUHpVTgjxpeMedOek/P8ZxJs2Qy9l
         VLLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=efSDrw+VozFdRcbu22uhwOH1h8aZ87ngSVdMOc5WZ88=;
        b=KFGX/wwkrrJM5323Xq5bOzHjJl0876nadeiIKRAzCQpT/j4cyu4FNi9fRdTOC4yVHd
         z8UEGVNFWiDLe2D3peKyfWe3/dNSXRABlXrHtaIcUjZka7EkfMP9fSjoOY2k822AAEsS
         SjEc96S9DtoSnsWbFx+hCLzUR6OhUOcktEWjlJnq5lilCL2JFODKaFd/LjV3PwcvQecx
         HPWCYchSsH3aQtiZfGcPAk4BphOca2JuQU2wQKzsxGgraDljG8y3ul/MokkxYfvnyP4A
         dR5siVwbJpgsG3s+845RO1UFIcRwFet8ommSfwIfm9kJ9+QMEF8xKWRSlydZE+3TLeTj
         ZxdQ==
X-Gm-Message-State: AOAM5321iVA9DaqEj0tXQA0DeXv6mbjchtWssxb+sCLYau2FxzreZjqS
        HYfzF7NWFXJKGBR2WjTQ7ao=
X-Google-Smtp-Source: ABdhPJxLlwLed0cxk4Ad8TakjUZ5Nil8FLGC++yK/ZZ59GWP+KbVZDagM7t7+lre6fiuLhHqGVkbSg==
X-Received: by 2002:a1c:a505:: with SMTP id o5mr42661wme.32.1631314040679;
        Fri, 10 Sep 2021 15:47:20 -0700 (PDT)
Received: from sqli.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k18sm15520wmi.25.2021.09.10.15.47.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Sep 2021 15:47:19 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 00/15] Patches from others
Date:   Sat, 11 Sep 2021 00:47:01 +0200
Message-Id: <20210910224717.499502-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Here's a patch set with some important fixes, additions, and clarifications.

Cheers,

Alex


Alejandro Colomar (7):
  memfd_secret.2: Minor tweaks to Mike's patch
  ioctl_tty.2: Minor tweaks to Pali's patch
  process_madvise.2: Minor tweaks to Zhangkui's patch
  process_madvise.2: ffix
  clone.2: ERRORS: Add EACCESS with CLONE_INTO_CGROUP + clone3
  veth.4: tfix
  termios.3: srcfix

Greg Banks (1):
  nscd.conf.5: describe reloading, clarifications

Jakub Wilk (1):
  futex.2: tfix

Mike Rapoport (1):
  memfd_secret.2: add NOTES section ...

Pali Rohár (3):
  termios.3: CIBAUD and IBSHIFT are implemented on Linux, just
    unsupported by glibc
  ioctl_tty.2: Add example how to get or set baudrate on the serial port
  ioctl_tty.2: Fix information about header include file

zhangkui (1):
  process_madvise.2: Add MADV_WILLNEED to process_madvise()

Štěpán Němec (1):
  veth.4: tfix

 man2/clone.2           |  10 ++++
 man2/futex.2           |   2 +-
 man2/ioctl_tty.2       | 119 +++++++++++++++++++++++++++++++++++-
 man2/memfd_secret.2    |  59 ++++++++++++++++++
 man2/process_madvise.2 |  12 ++--
 man3/termios.3         | 133 +++++++++++++++++++++++++----------------
 man4/veth.4            |   2 +-
 man5/nscd.conf.5       | 115 ++++++++++++++++++++++++++++++++++-
 8 files changed, 390 insertions(+), 62 deletions(-)

-- 
2.33.0

