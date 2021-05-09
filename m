Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AB1A377866
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 22:20:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229977AbhEIUVJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 16:21:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230032AbhEIUVJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 16:21:09 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93D3FC061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 13:20:04 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id t18so14447657wry.1
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 13:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7LEORuvKQ3wjweMFUBriDWwF+B6jEL2tbRqlB9YQsxQ=;
        b=GV29abp1arfdz82baVruR2e2TV5g8PhGMywm6ETwZFSpmyqYvLIg8eX4t6RCfM1ZwD
         z9D+66/mxtv9vbbJNtnbUq/ve+RHTuuhrOJWVqBHtuDG7PMf281BWs/xXqa1UhZvwjAe
         E1hwoq4XnUsRCs2EUCimrYUz11g4p3VE0+k6klpkSdi6WiWnFPepanCNsjaO5lN337OX
         4RC2CeBKpiUlnijflaz9VXjZpVMWMYLL5s0LKkH+M2ojrllJ3+exRh3Ux/qyfd+yXCyK
         2gjqntSwfT+22LH9KJ3pnC2gY6660Sxa3rWSNN16FarMh3CpOX4TuiYypQ3gtT2+K8I0
         nISg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7LEORuvKQ3wjweMFUBriDWwF+B6jEL2tbRqlB9YQsxQ=;
        b=PNhMI6Mf/fAevw/EtEvf/zGdCJgmvKDt55ez2J+ReOTU4Iiz7XCQ6L9xGNkHPcBDdk
         7pZBTZzXlCFMjGRqj4g0FeQtUfhu7H3/o7di+1sUOqijURRONmLwcImodvsX+Ss/TaSF
         DIRv1jkU50vQlRQ0w7HO1ZVoY6JQAJVPnvOF769g39sDXR8ddOUn9VPorwTWJ/c19u63
         42v2gqkyz2UOMNtYSdLf177NJCsAfZc86WrnVSvOKOXB8avJ5d0Klp1wN8QU/UN9cI99
         tkkOgr/zFzbyYz8QtVbQ/CLh8DShoNzGqBgq8wcB2e/AxvW85oJnUWNFB1OQmOePN6xn
         oC+A==
X-Gm-Message-State: AOAM5307k7GlT66/6jQGI8UPUqv2A9CwcXn0hrCjs6FO9YZF//ij9knL
        QC/L3ezsapaZxguWGiLjnR3Kbz/peQJMGg==
X-Google-Smtp-Source: ABdhPJxhnjbd/dapH9sV42lmLBdrfEg6/dzhigEbER2cxNJ6CMJyQfsAjxjc2511hUyQucYA4YmDZg==
X-Received: by 2002:a5d:6a52:: with SMTP id t18mr27553229wrw.361.1620591603349;
        Sun, 09 May 2021 13:20:03 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b10sm22591346wrr.27.2021.05.09.13.20.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 13:20:03 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 00/17] Patches from others
Date:   Sun,  9 May 2021 22:19:33 +0200
Message-Id: <20210509201949.90495-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Hello Michael,

These are the patches that I have merged from others.

Cheers,

Alex

---

Akihiro Motoki (4):
  move_pages.2: ffix
  semctl.2: ffix
  fanotify.7: ffix
  signalfd.2: tfix

Alejandro Colomar (3):
  setbuf.3: tfix
  sigwaitinfo.2: tfix
  getopt.3: Minor tweaks to James' patch

Aurelien Aptel (1):
  flock.2: add CIFS details

Borislav Petkov (1):
  sigaltstack.2: tfix

Dmitry V. Levin (2):
  move_pages.2: ffix
  ptrace.2: mention PTRACE_GET_SYSCALL_INFO in RETURN VALUE section

Jakub Wilk (2):
  Changes.old: tfix
  exit_group.2, getunwind.2: tfix

James O. D. Hunt (1):
  getopt.3: Clarify behaviour

Johannes Berg (1):
  clone.2: tfix

Vishwajith K (1):
  shmop.2: tfix

Štěpán Němec (1):
  execve.2: tfix

 Changes.old        |  6 +++---
 man2/clone.2       |  2 +-
 man2/execve.2      |  2 +-
 man2/exit_group.2  |  2 +-
 man2/flock.2       | 25 +++++++++++++++++++++++++
 man2/getunwind.2   |  2 +-
 man2/move_pages.2  |  3 ++-
 man2/ptrace.2      |  7 +++++--
 man2/semctl.2      |  2 +-
 man2/shmop.2       |  4 ++--
 man2/sigaltstack.2 |  2 +-
 man2/signalfd.2    |  2 +-
 man2/sigwaitinfo.2 |  2 +-
 man3/getopt.3      | 23 +++++++++++++++++++++++
 man3/setbuf.3      |  2 +-
 man7/fanotify.7    |  2 +-
 16 files changed, 70 insertions(+), 18 deletions(-)

-- 
2.31.1

