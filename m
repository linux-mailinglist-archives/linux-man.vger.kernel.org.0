Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 99DFF3D967F
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231126AbhG1UUQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229878AbhG1UUQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:16 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C53EC061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:14 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id o5-20020a1c4d050000b02901fc3a62af78so5240344wmh.3
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=C4U+CIaZpd00B1oK066Mqqcu9kols3mtbmi6YUKGJno=;
        b=MhFTFSGJ1kXTvlimR1X92KWNg6FdFh881UiPtb1vrpWEqmjtne6g34HIOAzDFOBEwP
         3K49s+VeEsw5v3CwhxMUX9H8lbfb8MU3S5x9/4gpxJus3LvTa6DLv1gdSqMdqtiiNCue
         wQ73BQrIxrgnIm5PyNHYOYvcnrJb+fWhpBhxOyltWqtsBje9T+Y3P6st1xCJhctN++6c
         J/RNPMHsUV5tfNCTGHwU2iBRVTFFOTmTwy9/Td6tD5vTL4abI6fLv0JEaMlm4RvgtdF0
         r4wVpd3XlXiqFUoF4vX1L9l8C+eHzdUnxgjiliDyQ39CJ1evLAjIcsd0a9LECJbQdw91
         asaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=C4U+CIaZpd00B1oK066Mqqcu9kols3mtbmi6YUKGJno=;
        b=g59OMdQToVpxxnoRLpdwvDVaD4ANwLqU62PtWTGPYjZZrhXYzemoR5IQ8Xrl4TXS0S
         D5rE1zv5S3k1Ckr6+skEU6qV2s80Mkr2fHaRw/Jfs9fqarzvY1EMsgneSTonVxeffyJd
         /UOYo5KS4Fvi0xGfc678AKwLAv5C2SDsIk6pgsYzf+ElOLmL292USlLb3nVyb1iBNFfc
         4g3KB2L786MEl0kmzWWEKBUqXOhq5pmGqlPhsg7Pt0SPzxkingbgkG5PxosTG9N8PG9q
         l6kiI6UxnU2GjgjQvS7VEnYkhwylpusYi4aycXBBd46rciDkk3x2HGPuVdZTBHyMh4r4
         RGIA==
X-Gm-Message-State: AOAM530kLPeln/X969tAXS6JpCR/H5kHw+S4gibj1jLl3claQqykZj9p
        jY/s7WpCCEMWAgDN8WLifps=
X-Google-Smtp-Source: ABdhPJzdK0pJD7kSbFypwOCpnEG2g0xj8fKno42t8AVkkpa5pBM4pZlXk/4WdVAXosH2LqQG2N9JYA==
X-Received: by 2002:a05:600c:1c89:: with SMTP id k9mr1319377wms.78.1627503612772;
        Wed, 28 Jul 2021 13:20:12 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:12 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 00/32] Patches from others
Date:   Wed, 28 Jul 2021 22:19:36 +0200
Message-Id: <20210728202008.3158-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Here is a patch set including patches from others, patches of mine fixing
bug reports of others, tweaks to others' patches, and small patches of mine.

I resent in this patch set all the patches that I sent a few weeks ago,
so you can ignore any older threads of mine.

Cheers,

Alex

--


Alejandro Colomar (11):
  readv.2: Minor tweaks to Will's patch
  vdso.7: Remove outdated limitation for powerpc
  vdso.7: Add y2038 compliant gettime for ppc/32
  posixoptions.7: Fix legacy functions list (s/getcwd/getwd/)
  printf.3: wfix
  futex.2: Minor tweaks to Kurt's patch
  capabilities.7: Minor tweaks to Kir's patch
  seccomp_unotify.2: Minor tweaks to Rodrigo's patch
  strstr.3: Add special case for empty needle
  sigaction.2: Apply minor tweaks to Peter's patch
  strlen.3, wcslen.3: Add recommendations for safer variants

Dan Robertson (1):
  man2/fallocate.2: tfix documentation of shared blocks

Jakub Wilk (3):
  seccomp_unotify.2: tfix
  proc.5: tfix
  scripts/bash_aliases: tfix

Kir Kolyshkin (3):
  capabilities.7: tfix
  user_namespaces.7: fix a ref
  capabilities.7, user_namespaces.7: describe CAP_SETFCAP

Kurt Kanzenbach (1):
  futex.2: Document FUTEX_LOCK_PI2

Peter Collingbourne (1):
  sigaction.2: Document SA_EXPOSE_TAGBITS and the flag support detection
    protocol

Richard Palethorpe (1):
  wait.2: Add ESRCH for when pid == INT_MIN

Rodrigo Campos (1):
  seccomp_unotify.2: Add doc for SECCOMP_ADDFD_FLAG_SEND

Sagar Patel (1):
  tkill.2: tfix

Shawn Landden (1):
  execve.2: Fix absolute/relative pathname

Thomas Voss (1):
  Various pages: Consistently use '*argv[]'

Viet Than (1):
  time.2: wfix regarding year-2038

Will Manley (1):
  readv2: Note preadv2(..., RWF_NOWAIT) bug in BUGS section

kXuan (1):
  recv.2: tfix

Štěpán Němec (2):
  path_resolution.7: tfix
  namespaces.7: fix confusion caused by text reorganization

наб (2):
  ascii.7: add vertical rule to separate the two columns
  pipe.7: also mention writev(2) in atomicity sexion

 man2/bpf.2                |   2 +-
 man2/copy_file_range.2    |   2 +-
 man2/execve.2             |   9 ++-
 man2/fallocate.2          |   2 +-
 man2/futex.2              | 110 +++++++++++++++++++++----------
 man2/membarrier.2         |   4 +-
 man2/perf_event_open.2    |   2 +-
 man2/readv.2              |  11 +++-
 man2/recv.2               |   2 +-
 man2/seccomp.2            |   2 +-
 man2/seccomp_unotify.2    |  30 ++++++++-
 man2/sigaction.2          | 133 ++++++++++++++++++++++++++++++++++++++
 man2/time.2               |   2 +-
 man2/tkill.2              |   2 +-
 man2/wait.2               |   9 +++
 man3/bsearch.3            |   2 +-
 man3/getopt.3             |   2 +-
 man3/getsubopt.3          |   2 +-
 man3/printf.3             |   2 +-
 man3/pthread_setname_np.3 |   2 +-
 man3/strlen.3             |   6 ++
 man3/strstr.3             |   8 +++
 man3/wcslen.3             |   9 ++-
 man3/wordexp.3            |   2 +-
 man5/proc.5               |   2 +-
 man7/ascii.7              |   2 +-
 man7/capabilities.7       |   9 ++-
 man7/fanotify.7           |   2 +-
 man7/namespaces.7         |   4 +-
 man7/path_resolution.7    |   2 +-
 man7/pipe.7               |   2 +
 man7/posixoptions.7       |   2 +-
 man7/user_namespaces.7    |   8 ++-
 man7/vdso.7               |  27 +-------
 scripts/bash_aliases      |   2 +-
 35 files changed, 330 insertions(+), 89 deletions(-)

-- 
2.32.0

