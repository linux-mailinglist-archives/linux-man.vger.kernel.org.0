Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 834826036CB
	for <lists+linux-man@lfdr.de>; Wed, 19 Oct 2022 01:51:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229622AbiJRXvN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 19:51:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229742AbiJRXvM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 19:51:12 -0400
Received: from mail-oo1-xc49.google.com (mail-oo1-xc49.google.com [IPv6:2607:f8b0:4864:20::c49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 024F2CD5F9
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 16:51:11 -0700 (PDT)
Received: by mail-oo1-xc49.google.com with SMTP id q19-20020a056820029300b00476b35bd302so6759506ood.22
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 16:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UemkWnYNzX2G5RZp/3AbBJukQzg9bD1s0f4MZJKggRU=;
        b=mmvBeWPKKL3MlOOcZOddsoReojSh0/yOLXhQwgl52bi+uq44YGG7O6XRIzr9lJb2e1
         iYVIsdwb/Z4vsaq1o7doyGWHepwD7gVdbCDwWQBaCGWseQsJXz5iZSSPd5zeP+p8XJ+e
         SbA2Xcw29uRUGvIcBz5rLlL1seLKmjSPiC8mpWFTAqJ4kMHiDNpjT1ugUlVH+78XxqKj
         UqsCC4Ppb9TjnjBLQQ1j3ZaTvEfsrffQ49WLKZvOOz4d+nI8Cco77mM5R/vY8ZtLkhVP
         1n1Ed9QgKYBQX0eMsdhjNBkDJ+WlOaxowRcJGLzLE4EOvSoXWGbE4jL7nwJgDcohyed1
         Vvbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UemkWnYNzX2G5RZp/3AbBJukQzg9bD1s0f4MZJKggRU=;
        b=fJo3DbEDRzEgFrhhlvc0ctEZHKQgJjY5LDE5e1HiDzVUlTv7CJohyZ3yvJ6ZE6rovk
         FMq1MdJrKKgCPg4Jqz6dpntgGI1wOTD82TlGEKd9GnJotzPdOYizNYW0xowz4csfZDUk
         wm6Gyw2M4s1vu3KaekgDlg8dgWUrVSHBei0zACjtl0iUz5QQ2cS+Svt2WeHGab1Oc7nS
         8txM+M/lzeHveDXloXfBplPZ5WsrYq1V5YaQo371nbjWVLPs/mORmiOULqeUeIMlf9/7
         MEDVDOlzrBY1obdBylQW5iCSKUmrm8F9mqy1E/eoha7+bElb1HkvXy3I4ApDEWKFqXuw
         QiSA==
X-Gm-Message-State: ACrzQf0oZLeDZ3Fjed4LwR5BFuQ8n/r53q6Yv7HZFw8TLhwlWR5qH73f
        xAUcK7gCNBg5qd7YNC4Z21COG6dx/IZa
X-Google-Smtp-Source: AMsMyM4vn/VD5UrAJIYb9/9Ki8oNaZLAj7JQ0TAMtAAcxUXakalot4Yk2JPdeVU+ajGCX24Y2Lq9WYSgBPEK
X-Received: from zokeefe3.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:1b6])
 (user=zokeefe job=sendgmr) by 2002:a17:90b:4a09:b0:20d:5b67:1496 with SMTP id
 kk9-20020a17090b4a0900b0020d5b671496mr41114816pjb.67.1666137060675; Tue, 18
 Oct 2022 16:51:00 -0700 (PDT)
Date:   Tue, 18 Oct 2022 16:50:47 -0700
Mime-Version: 1.0
X-Mailer: git-send-email 2.38.0.413.g74048e4d9e-goog
Message-ID: <20221018235051.152548-1-zokeefe@google.com>
Subject: [PATCH man-pages v2 0/4] Add MADV_COLLAPSE documentation
From:   Zach OKeefe <zokeefe@google.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, "Zach O'Keefe" <zokeefe@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Zach O'Keefe <zokeefe@google.com>

v2 Forward

Changes from v1[1]:

- All patches have seen some reformatting and/or typo corrections
  (Alex Colomar).
- Patch 3 has had the commit description reworded to reflect that this commit
  is a "fix" rather than an "update" (Alex Colomar).
- Rebased on man-pages-6.01

[1] https://lore.kernel.org/linux-man/20221017175523.2048887-1-zokeefe@google.com/T/#m8e9e94ed52c99e7cf4969bd992492359c59a0faa

----------------------------------------------

Hey Alex / Michael,

This series adds MADV_COLLAPSE (expected for Linux 6.1) documentation to
madvise(2) and process_madvise(2).  A few prerequisite patches are included to
fix up existing MADV_HUGEPAGE and process_madvise(2) documentation, as well as
add some additional clarity for madvise(2) "advice" probing.

Series applies on man-pages-6.00, and I've attempted to use semantic newlines,
though I can't claim I've made the right choices everywhere for long clauses.

Thanks,
Zach

Zach O'Keefe (4):
  madvise.2: update THP file/shmem documentation for +5.4
  madvise.2: document reliable probe for advice support
  process_madvise.2: CAP_SYS_ADMIN cleanup
  madvise.2: add documentation for MADV_COLLAPSE

 man2/madvise.2         | 133 +++++++++++++++++++++++++++++++++++++++--
 man2/process_madvise.2 |  13 +++-
 2 files changed, 140 insertions(+), 6 deletions(-)

-- 
2.38.0.413.g74048e4d9e-goog

