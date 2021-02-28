Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D4D8A326FC4
	for <lists+linux-man@lfdr.de>; Sun, 28 Feb 2021 01:50:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230155AbhB1AuB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Feb 2021 19:50:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230060AbhB1AuA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Feb 2021 19:50:00 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B30BC06174A
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:20 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id 7so12291272wrz.0
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WqcYx/s1vAHztnCVbnt9y1PGCOuanq4tuyyTN3W9zCw=;
        b=U/NPPw8/PZmdpH7oaJQe96jXbfWbLeMZPLh2UNcC9v/l+4GNueEx2HeG9LwQ0tjV3F
         g43KLT3PpaDFwpUY0VzCLek3RQ1iu++Jx6uB4M322iB1V6sC+kBFps6Ld5XNz2JzFjzq
         lDdyXSgSspC2jxyGpPlRmFYWp5ff8c/V6sQI36m6ISxt8sFK68xKv4QBGse2qZUqZaR0
         v5cgZE0+tkT8tjPKbA4r6p+Lat5F9vXHZyMksv3iWoV64C1SPjD7jwt3Nvr1ql1RH5Tf
         T5HE3oieW25rpAaDmuV+suxSMdWP7IMat1gxdBLn9vElud3AhvSvU6KIf4xPnUmQHqf3
         YyWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WqcYx/s1vAHztnCVbnt9y1PGCOuanq4tuyyTN3W9zCw=;
        b=gUm1qZPmxstOcVn/endz/man6o53lLpEQYciu+qvnh+RZ9CwBZwrAR7KEcRGtgkLRf
         +0R5RIBMPKYTG5NLAhpH7231uh2lcYvWAJSxpvU/OWDC5ugitJr7vgX5dhjYf+BUusKc
         VhlPDruWkXoa9ZL5594kJ60SmWpz5fxSfNlHwVYGSt2AgKyPAgigAF8o6kbZihK6dqAr
         /szE6m9Xcl8a4KcRlhtIvgnZBPCu5KolPx8/PLm/0zfY3eSqRPhEHPXxl7OIQiWgFcuZ
         uamLF8flCcZq60THE5PDpCc0bIQuVBSBIsUKQPutOTLWQylJJo0EjcHN3mzk7mMo7t3b
         FVAA==
X-Gm-Message-State: AOAM530DW7mxCIbz8z7uK7nPpQg/Efm3PxY6FB5TxeHn3su6BnS4Ue/Y
        95tkvXXKlPmIVI5aEibmV3KmRQQVdrMKUQ==
X-Google-Smtp-Source: ABdhPJwRicqO2J5YcpOGyEyNYcxh1Qj4ZuikgRKTzMXwLW4obH4bRhXl1GdTyqloPLLQBhBspvl33g==
X-Received: by 2002:adf:c14a:: with SMTP id w10mr9840699wre.282.1614473358761;
        Sat, 27 Feb 2021 16:49:18 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id o14sm18212145wri.48.2021.02.27.16.49.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Feb 2021 16:49:18 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: [PATCH 00/14] man3: SYNOPSIS: Use 'restrict' in prototypes (batch 2)
Date:   Sun, 28 Feb 2021 01:48:04 +0100
Message-Id: <20210228004817.122463-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey Michael,

This is the second batch of pages in man3 that use 'restrict'.

I have already checked until getrpcport.3.

---

A few functions to automate the commit messages:

For functions that are restrict in POSIX and glibc:

function gitcommit_rp()
{
	local commafuncs="$(echo $@ |sed -e 's/\> \</(), /g' -e 's/$/()/')";
	local msg="\
$(man_gitstaged): SYNOPSIS: Use 'restrict' in prototypes

Both POSIX and glibc use 'restrict' in ${commafuncs}.
Let's use it here too.

$(echo "$@" \
  |xargs -n1 bash -c \
    'echo ".../glibc$ grep_glibc_prototype $@"; \
     echo "$(cd ~/src/gnu/glibc && grep_glibc_prototype $@)"' _)
.../glibc$";

	git commit -sm "$msg";
}

For functions that are restrict in glibc:

function gitcommit_rg()
{
	local commafuncs="$(echo $@ |sed -e 's/\> \</(), /g' -e 's/$/()/')";
	local msg="\
$(man_gitstaged): SYNOPSIS: Use 'restrict' in prototypes

glibc uses 'restrict' in ${commafuncs}.
Let's use it here too.

$(echo "$@" \
  |xargs -n1 bash -c \
    'echo ".../glibc$ grep_glibc_prototype $@"; \
     echo "$(cd ~/src/gnu/glibc && grep_glibc_prototype $@)"' _)
.../glibc$";

	git commit -sm "$msg";
}

---
Alejandro Colomar (14):
  getaddrinfo.3: SYNOPSIS: Use 'restrict' in prototypes
  getaddrinfo_a.3: SYNOPSIS: Use 'restrict' in prototypes
  getdate.3: SYNOPSIS: Use 'restrict' in prototypes
  getdirentries.3: SYNOPSIS: Use 'restrict' in prototypes
  getgrent_r.3: SYNOPSIS: Use 'restrict' in prototypes
  getgrnam.3: SYNOPSIS: Use 'restrict' in prototypes
  gethostbyname.3: SYNOPSIS: Use 'restrict' in prototypes
  getline.3: SYNOPSIS: Use 'restrict' in prototypes
  getmntent.3: SYNOPSIS: Use 'restrict' in prototypes
  getnameinfo.3: SYNOPSIS: Use 'restrict' in prototypes
  getnetent_r.3: SYNOPSIS: Use 'restrict' in prototypes
  getprotoent_r.3: SYNOPSIS: Use 'restrict' in prototypes
  getpwent_r.3: SYNOPSIS: Use 'restrict' in prototypes
  getpwnam.3: SYNOPSIS: Use 'restrict' in prototypes

 man3/getaddrinfo.3   | 11 ++++++-----
 man3/getaddrinfo_a.3 | 12 ++++++------
 man3/getdate.3       |  2 +-
 man3/getdirentries.3 |  4 ++--
 man3/getgrent_r.3    | 10 ++++++----
 man3/getgrnam.3      | 11 +++++++----
 man3/gethostbyname.3 | 31 ++++++++++++++++++++-----------
 man3/getline.3       |  7 ++++---
 man3/getmntent.3     |  8 +++++---
 man3/getnameinfo.3   |  8 +++++---
 man3/getnetent_r.3   | 23 +++++++++++++----------
 man3/getprotoent_r.3 | 17 ++++++++++-------
 man3/getpwent_r.3    | 11 +++++++----
 man3/getpwnam.3      | 11 +++++++----
 14 files changed, 99 insertions(+), 67 deletions(-)

-- 
2.30.1.721.g45526154a5

