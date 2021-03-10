Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0619F3346C3
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229950AbhCJScf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232387AbhCJScI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:08 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC96CC061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:07 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id w7so7727050wmb.5
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ONv0Si/7CZKpk5KEhJauGZ9kHUHz5Ol5zYAOS5zL8k8=;
        b=uJgkR99/e1nNZAQcRag7eavMRY0YyT8FJ/gHWhnpN8AOk1LCzBXxtM152n6ccwFYyp
         MD28+bFr1H4QC9FVq/S0b2nGAi11O34t1jbyu1vl5nbs2G4nlrhMCpiAa5kRmHkItx21
         R8+7Gf6EVuu7vh2AeZnFTLxz+T6+XqTbpvwahu3NJWJhayBrfAHbIaxGy54fBBuX/egD
         8BUQIloIQ03zXBZIGQlVwc7rJJmeAXil4+SvDsAdfW9BHclC1Ouv/mgQbrycL+zcAyLx
         W0L6iCwrHuZYDlD6Gfml1+pOwX+RIn3zUU6i/PefuUa9ae4Y3lx3AAEkrSdnlbNJJTIO
         1Gtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ONv0Si/7CZKpk5KEhJauGZ9kHUHz5Ol5zYAOS5zL8k8=;
        b=rPfS+U9fLQ/Wo011CN/3cIBDzoSjpVcBlIGC5pZk6m4Ro8lWtExontSjL/MYjkaeom
         JIRk6yBTgmmlnqbXLuBJoeVHtEL4EtLPk5zGnnKvUXlqWSSQlWpk4QG8Yl5n/Xu8emGY
         EzUByY81f7+DanA93xhR0nHTDrwQxb4nVs4MXCrrXN7qE6I4O6ErFa0LAYjYQT24y9Nk
         Yncr4DR7bwFt4tvKyHLu0bOt+A/FzfkkA4hs+pBQ6evChOKPATxya6zF8GBQkqfe8iBp
         DTlbtlN3rLs4HE4CcfzZXrOUsl7ES/ojD1cnf/yVSzAuxgBMMf7x/7XTLV9lK4snUhhm
         HWMQ==
X-Gm-Message-State: AOAM531GFhHOimGdIVsq/mZK1rdbJqCXgrgdXveOM4ABUuGdFhVrf07M
        WvymgM30FyeeBz/i5XScM0A=
X-Google-Smtp-Source: ABdhPJzHMhOrT6e10mgi+wR7/H9jjJdZdGVrVlofcndJf/HrZycUl1ibGh1z9KqfLvYjPUpuX/x3qA==
X-Received: by 2002:a1c:7fc9:: with SMTP id a192mr4499806wmd.15.1615401126585;
        Wed, 10 Mar 2021 10:32:06 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:06 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: [PATCH 00/24] man3: SYNOPSIS: Use 'restrict' in prototypes (batch 5)
Date:   Wed, 10 Mar 2021 19:31:26 +0100
Message-Id: <20210310183149.194717-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This fixes up til trunc.3 (I didn't send you scanf.3
in this patch set because I did in my mom's computer and forgot to push).

When you come back and merge all of the pending patches, I'll send/resend
anything that's not in sync anyway.
So don't worry about missing some of them.

Kind regards,

Alex

Alejandro Colomar (24):
  sem_getvalue.3: SYNOPSIS: Use 'restrict' in prototypes
  sem_wait.3: SYNOPSIS: Use 'restrict' in prototypes
  setaliasent.3: SYNOPSIS: Use 'restrict' in prototypes
  setbuf.3: SYNOPSIS: Use 'restrict' in prototypes
  setbuf.3: SYNOPSIS: Use 'restrict' in prototypes
  setnetgrent.3: SYNOPSIS: Use 'restrict' in prototypes
  sigwait.3: SYNOPSIS: Use 'restrict' in prototypes
  statvfs.3: SYNOPSIS: Use 'restrict' in prototypes
  stpcpy.3: SYNOPSIS: Use 'restrict' in prototypes
  stpncpy.3: SYNOPSIS: Use 'restrict' in prototypes
  strcat.3: SYNOPSIS: Use 'restrict' in prototypes
  strcpy.3: SYNOPSIS: Use 'restrict' in prototypes
  strfmon.3: SYNOPSIS: Use 'restrict' in prototypes
  strftime.3: SYNOPSIS: Use 'restrict' in prototypes
  string.3: SYNOPSIS: Use 'restrict' in prototypes
  string.3: SYNOPSIS: Use 'restrict' in prototypes
  strptime.3: SYNOPSIS: Use 'restrict' in prototypes
  strsep.3: SYNOPSIS: Use 'restrict' in prototypes
  strtod.3: SYNOPSIS: Use 'restrict' in prototypes
  strtoimax.3: SYNOPSIS: Use 'restrict' in prototypes
  strtok.3: SYNOPSIS: Use 'restrict' in prototypes
  strtol.3, strtoul.3: SYNOPSIS: Use 'restrict' in prototypes
  strxfrm.3: SYNOPSIS: Use 'restrict' in prototypes
  swab.3: SYNOPSIS: Use 'restrict' in prototypes

 man3/sem_getvalue.3 |  2 +-
 man3/sem_wait.3     |  3 ++-
 man3/setaliasent.3  | 13 +++++++------
 man3/setbuf.3       |  9 +++++----
 man3/setnetgrent.3  | 12 +++++++-----
 man3/sigwait.3      |  2 +-
 man3/statvfs.3      |  3 ++-
 man3/stpcpy.3       |  2 +-
 man3/stpncpy.3      |  3 ++-
 man3/strcat.3       |  5 +++--
 man3/strcpy.3       |  5 +++--
 man3/strfmon.3      |  7 ++++---
 man3/strftime.3     |  5 +++--
 man3/string.3       | 21 ++++++++++++---------
 man3/strptime.3     |  3 ++-
 man3/strsep.3       |  2 +-
 man3/strtod.3       |  7 ++++---
 man3/strtoimax.3    |  6 ++++--
 man3/strtok.3       |  5 +++--
 man3/strtol.3       |  7 ++++---
 man3/strtoul.3      |  8 ++++----
 man3/strxfrm.3      |  3 ++-
 man3/swab.3         |  3 ++-
 23 files changed, 79 insertions(+), 57 deletions(-)

-- 
2.30.1.721.g45526154a5

