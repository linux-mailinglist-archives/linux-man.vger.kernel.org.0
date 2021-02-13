Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 831D331AE6A
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 00:11:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229694AbhBMXLO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 18:11:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229690AbhBMXLN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 18:11:13 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCF04C061574
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:32 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id i9so3724925wmq.1
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=C5inQSCdjMP1h276ukBmug4QKcyvwS4CCyrbfHZYM2o=;
        b=UMRFuY5m/2eZOKvUQrFqv8xZxWo5hoH0WKwxJTUUNnxJAgJHWylT8PHKHGNKRWjfKe
         0oxT/JPM03Ael4Fk9Fl+qgZRsUe4aUDCuO4eEyRblrdd/1cTr9c3Gqi9kkfMyKtpluyq
         Hqh0Pj0O6jXZCRVOObEcFg4UUBm8gowJP0SnmuOtdEm4EX3f6TdXf/2CZpM8cMDY8dO0
         7WpS39Hlgmtp5LymqZI6yne6UooGDmIKrKr+ljMXSL1mC/ZH8bVnbmkELbkfPmxwrIe4
         sN7JJeFpHjEkFkuKu4gvW8jRAdm49xEoB8h8MBnTE2BXABB5sXDXMCnE7jJ+Vo0k6y8F
         Tcbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=C5inQSCdjMP1h276ukBmug4QKcyvwS4CCyrbfHZYM2o=;
        b=GoNEniVbFMBuAMSoRc7Y1Tv8A2PjEdOiQpZATwF285mH9LLl4oofVqt8Vs0MHq+cKQ
         n0Z7xZB3CgQchrfYD59iLILXS1lnGMXiCuHTOpqlSml9Xf2P2KYt3rg7DqZ5fmBjUB73
         IF6tmoH5bCe349d7MTLp4CTMKgUewaUEIcj7A3PbcDzctvW83rF/IbhCVxK3LilJDf2n
         8MAxSNQ4ZpJ+xuDAo8ywasFxCRqxt3tixdp0FiVfN8vF8uIPNpAS4Vgp1zm/K6cHrrnd
         M4WMZRa/mQrEzYtrA3hX62tDGFYI2Ee5xHfPoaqKlc2Esvk4N3rHlcaLPvP0mjktk3CT
         5UnQ==
X-Gm-Message-State: AOAM531WToI+wVX/5aM8FOKPqlGm41coEY/63SMa/wcEivKHvgQe5XdH
        LiCNiymGtdiXIz4mpXpxxKk=
X-Google-Smtp-Source: ABdhPJxiZti9GF40xja49zjGZmkDuJc0dRM2SNajvsXRW8Gb8oLEVJuEnOPz9E3R+Q+7cIH3uuLRKw==
X-Received: by 2002:a1c:720d:: with SMTP id n13mr8040998wmc.103.1613257831582;
        Sat, 13 Feb 2021 15:10:31 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 64sm21011878wrc.50.2021.02.13.15.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Feb 2021 15:10:31 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: [PATCH 00/14] man2: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 14 Feb 2021 00:10:10 +0100
Message-Id: <20210213231024.440020-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael

This patch set fixes man2 to add 'restrict' to the functions that use it.

Cheers,

Alex

---
Alejandro Colomar (14):
  accept.2: SYNOPSIS: Use 'restrict' in prototypes
  getpeername.2: SYNOPSIS: Use 'restrict' in prototypes
  getsockopt.2: SYNOPSIS: Use 'restrict' in prototypes
  readlink.2: SYNOPSIS: Use 'restrict' in prototypes
  recv.2: SYNOPSIS: Use 'restrict' in prototypes
  select.2: SYNOPSIS: Use 'restrict' in prototypes
  sigaction.2: SYNOPSIS: Use 'restrict' in prototypes
  sigaltstack.2: SYNOPSIS: Use 'restrict' in prototypes
  sigprocmask.2: SYNOPSIS: Use 'restrict' in prototypes
  sigwaitinfo.2: SYNOPSIS: Use 'restrict' in prototypes
  statx.2: SYNOPSIS: Use 'restrict' in prototypes
  stat.2: SYNOPSIS: Use 'restrict' in prototypes
  timer_create.2: SYNOPSIS: Use 'restrict' in prototypes
  timer_settime.2: SYNOPSIS: Use 'restrict' in prototypes

 man2/accept.2        |  7 ++++---
 man2/getpeername.2   |  4 ++--
 man2/getsockopt.2    |  2 +-
 man2/readlink.2      |  8 ++++----
 man2/recv.2          |  6 ++++--
 man2/select.2        | 12 +++++++-----
 man2/sigaction.2     |  4 ++--
 man2/sigaltstack.2   |  3 ++-
 man2/sigprocmask.2   |  3 ++-
 man2/sigwaitinfo.2   |  8 +++++---
 man2/stat.2          | 11 ++++++-----
 man2/statx.2         |  4 ++--
 man2/timer_create.2  |  4 ++--
 man2/timer_settime.2 |  4 ++--
 14 files changed, 45 insertions(+), 35 deletions(-)

-- 
2.30.0

