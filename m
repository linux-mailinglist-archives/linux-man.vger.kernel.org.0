Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 667FB324122
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 17:05:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231815AbhBXPm2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Feb 2021 10:42:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237229AbhBXOs5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Feb 2021 09:48:57 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3EC8C06121F
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:43:56 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id w11so2119193wrr.10
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:43:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YPIw+Ti+MmL7QJ49iCQL8RczSYBIls/uYGzpmyhKgCU=;
        b=qOlklqtPe9cxWpry3KDC+zMK0lVd+Ph+nOdN8xVTt+h0O7YCbDCcwo37Yb728k2Qb7
         8FFlA2LtZCB5GK6qLw3NmytccBasrjUbocGge7aqM1sSJYsAqg7wgHGQpLg0YNq68bx+
         QN1mfk47S6LvGNpgRBJSDpJLDTK5tHBC+lIuOCuE6inXCvYvZv4AJ7Jl0Tam2JtyQS6d
         RumcUb24CAkQ/v5Qw+0wnWk7DU0ZsT6d/z1VQs4SZXplfdXEXbnUIfMny2XsumluAd09
         95/9pNHQywa7bOrDd6boHNIHdPQby4g22Y+PRZa6W/uByj5uaQx0d8oSdN6DA4S5xA2v
         hsQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YPIw+Ti+MmL7QJ49iCQL8RczSYBIls/uYGzpmyhKgCU=;
        b=WAVpL023UVOj1MwRLJcZw+rjo9W4fzZWH1aUxOJS9URcMgRdUIny9yVV82ovs6s/a3
         /pJrAcPtjSXbVc4+AeT80J6oLtkhtm9FibSlL8oV/lWi4ORJ38cNqsimoLD7nSzVyDvQ
         PscEI/ezh0yiNfKnAWDLapG+zDkqCKHOHVZ3a2WivCWF39J01ak+8YuGox1t5I1MTpyr
         gZ7lUYA3ASGZxLHy5eFcDgtxSF+hVKwz+rF3w897ac1JxyJxTh7HMe4A2TFLo2Tw3G+/
         Nij1fj1nUQ1AX4w2VgrX6BBGicmirtc5hel6CGtrYCX2qqGyYJebcHwoZtdKWeMuOu5L
         7rpw==
X-Gm-Message-State: AOAM530NGVic1Jf9veR9EZEXyZ5ZKiNb2aIwZTcv9pf8xz2taFhG21pm
        EKvs/RIcL9gRt9qDAQHWdZo=
X-Google-Smtp-Source: ABdhPJwkPHrxh2mXaCG3ZG6XKdQJZqCCohKUF7jZUP7fTBHhSg6GhM3B3ZBtfAOB4pUV6sWkYGbKpg==
X-Received: by 2002:adf:9226:: with SMTP id 35mr32367891wrj.408.1614177835549;
        Wed, 24 Feb 2021 06:43:55 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id a5sm3990676wrs.35.2021.02.24.06.43.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 06:43:54 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: [PATCH 00/20] man3: SYNOPSIS: Use 'restrict' in prototypes (batch 1)
Date:   Wed, 24 Feb 2021 15:42:51 +0100
Message-Id: <20210224144310.140649-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

This are the first pages of man3 with 'restrict'.
I'm sending you these already, becuase otherwise I'd accumulate
too many patches in the end.

I have fixed from the first page until ftw.3.

Spin off:
	I found different terms for parameters that refer to a same thing
	in different functions (usually a '[const] char *'):
	 - filename
	 - file
	 - path
	 - pathname
	 - Maybe others; I don't know

	For 'FILE *' we have more or less the same,
	although this one is much more standard (>90% use 'stream'):
	 - stream
	 - streamp
	 - s
	 - fp
	 - file
	 - filehandle
	 - A few others in specific cases

	What would you do about it?

Thanks,

Alex

---

I'll copy here the commands again to find them easily next time.

For reading the man_pages SYNOPSIS:

.../linux/man-pages$ man_section man2 SYNOPSIS |less;

For reading the glibc prototypes:

.../gnu/glibc$ man_lsfunc ../../linux/man-pages/man2 \
  |while read -r syscall; do
          echo "=============================  ${syscall}";
          grep_glibc_prototype ${syscall};
  done \
  |sed -e 's/\bextern //' -e 's/\b_*//g' \
  |less;

---
Alejandro Colomar (20):
  argz_add.3: SYNOPSIS: Use 'restrict' in prototypes
  asprintf.3: SYNOPSIS: Use 'restrict' in prototypes
  memccpy.3: SYNOPSIS: Use 'restrict' in prototypes
  memcpy.3: SYNOPSIS: Use 'restrict' in prototypes
  crypt.3: SYNOPSIS: Use 'restrict' in prototypes
  ctime.3: SYNOPSIS: Use 'restrict' in prototypes
  ctime.3: SYNOPSIS: Use 'restrict' in prototypes
  dlinfo.3: SYNOPSIS: Use 'restrict' in prototypes
  dlsym.3: SYNOPSIS: Use 'restrict' in prototypes; add missing 'const'
    too
  drand48_r.3: SYNOPSIS: Use 'restrict' in prototypes
  ecvt_r.3: SYNOPSIS: Use 'restrict' in prototypes
  ecvt.3: SYNOPSIS: Use 'restrict' in prototypes
  envz_add.3: SYNOPSIS: Use 'restrict' in prototypes
  fgetc.3: SYNOPSIS: Use 'restrict' in prototypes
  fgetws.3: SYNOPSIS: Use 'restrict' in prototypes
  fopencookie.3: SYNOPSIS: Use 'restrict' in prototypes
  fopen.3: SYNOPSIS: Use 'restrict' in prototypes
  fputws.3: SYNOPSIS: Use 'restrict' in prototypes
  fread.3: SYNOPSIS: Use 'restrict' in prototypes
  fseek.3: SYNOPSIS: Use 'restrict' in prototypes

 man3/argz_add.3    | 41 +++++++++++++++++++++++------------------
 man3/asprintf.3    |  5 +++--
 man3/crypt.3       |  2 +-
 man3/ctime.3       | 16 ++++++++++++----
 man3/dlinfo.3      |  3 ++-
 man3/dlsym.3       |  5 +++--
 man3/drand48_r.3   | 22 ++++++++++++++--------
 man3/ecvt.3        |  6 ++++--
 man3/ecvt_r.3      | 18 ++++++++++--------
 man3/envz_add.3    | 25 +++++++++++++------------
 man3/fgetc.3       |  2 +-
 man3/fgetws.3      |  3 ++-
 man3/fopen.3       |  7 +++++--
 man3/fopencookie.3 |  2 +-
 man3/fputws.3      |  2 +-
 man3/fread.3       |  9 +++++----
 man3/fseek.3       |  2 +-
 man3/memccpy.3     |  3 ++-
 man3/memcpy.3      |  3 ++-
 19 files changed, 105 insertions(+), 71 deletions(-)

-- 
2.30.1.721.g45526154a5

