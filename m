Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A12676081A9
	for <lists+linux-man@lfdr.de>; Sat, 22 Oct 2022 00:33:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229756AbiJUWdN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Oct 2022 18:33:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229800AbiJUWdL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Oct 2022 18:33:11 -0400
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com [IPv6:2607:f8b0:4864:20::1049])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45BBF2AD302
        for <linux-man@vger.kernel.org>; Fri, 21 Oct 2022 15:33:10 -0700 (PDT)
Received: by mail-pj1-x1049.google.com with SMTP id lk10-20020a17090b33ca00b0020da9954852so4854022pjb.1
        for <linux-man@vger.kernel.org>; Fri, 21 Oct 2022 15:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=U0OIuEMEH9l5Q4HWoUr/Nw3rsnosYMHa/wX8hbZgkkw=;
        b=JXsccLmPazbvY3yz9+j3ZKkjoBa44lMTGr8eiX+NClbNa0yF2NBetRRu84BAcVRe/x
         9t3B54C1LGV7/LV50TfmjO/rTK55KPNW7UTrbsryCTpWnNu1Dn1/oxcRNgCFkuAHZwdy
         EfU9h8nrpqPfW4DMYqQ/cXKqwF5ytvQ8WlL6GAmHjDb8J0GpP2KWCkjFDRKX5WLR7Wtn
         GU0gIrRFGJOfTEnhxOqAgUbTPMIw/ik5nozjHAbraNoR5K8PwH9Tm0hb0JEFfzMCcVgy
         SY2gVp/tFLBl3FuHooYGBu9Uc7Lw2GwwgIaNBhmIP09+2B3GwCLCSKpK4IR6vOCbZqEZ
         7asg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U0OIuEMEH9l5Q4HWoUr/Nw3rsnosYMHa/wX8hbZgkkw=;
        b=cFz7szTU0vyVEfabwfcZBwbEPs7AnXwQe1JZTbqp+dM1fAnsFH0Rg+ddloP72+u7X8
         MkJR6oFsretnCzFhkG04gkGoFO/z54oPVNBPeahXqn/KIiUY/rtc+/4BwO94dkhXIlBi
         Mw+xkFivw4wA0a5wg1X6uMAJJQAYYCDKNHtEq8mx9IJIfLOKTS6ofpigFGTEWXfWkJNm
         SmRqDc45OZPEQYPVaFC5o5ApGrbpILFvec1Bt6ic2u4Rd35YFG4s/52PxTPn+dbe3fbi
         zKczlJ66HtOJ91fdzuM5blt6TItxGF9flOlixRIrOeu4YM5yobXZq/6YvNL4iHX7565a
         Qekg==
X-Gm-Message-State: ACrzQf0m6WfCShl020scmfJwGA5ZxnmtM4PGuzN+wGQiviu8GVAkQYoC
        rElXChRL9hOSgzhCu9WljeNo3vAVxQr9
X-Google-Smtp-Source: AMsMyM58m85HwYhFr2aPduoBomosb1foVa1mHjB4uYv9qsL8Wv+mXx84drIDAE7IDbSXc1/8lBwymKRDMU19
X-Received: from zokeefe3.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:1b6])
 (user=zokeefe job=sendgmr) by 2002:a17:902:eb83:b0:185:46b7:7de3 with SMTP id
 q3-20020a170902eb8300b0018546b77de3mr21284859plg.19.1666391589698; Fri, 21
 Oct 2022 15:33:09 -0700 (PDT)
Date:   Fri, 21 Oct 2022 15:32:56 -0700
Mime-Version: 1.0
X-Mailer: git-send-email 2.38.0.135.g90850a2211-goog
Message-ID: <20221021223300.3675201-1-zokeefe@google.com>
Subject: [PATCH man-pages v3 0/4] Add MADV_COLLAPSE documentation
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

v3 Forward

Changes from v2[1]:

- Patch 3 adds a NOTES section that records the security
  requirements when process_madvise(2) syscall was added in Linux 5.10
  (Alex Colomar).
- Patch 3 also corrects documented
  PTRACE_MODE_READ_REALCREDS ptrace mode for process_madvise(2).

[1] https://lore.kernel.org/linux-man/20221018235051.152548-1-zokeefe@google.com/

----------------------------------------------

v2 Forward

Changes from v1[2]:

- All patches have seen some reformatting and/or typo corrections
  (Alex Colomar).
- Patch 3 has had the commit description reworded to reflect that this commit
  is a "fix" rather than an "update" (Alex Colomar).
- Rebased on man-pages-6.01

[2] https://lore.kernel.org/linux-man/20221017175523.2048887-1-zokeefe@google.com/T/#m8e9e94ed52c99e7cf4969bd992492359c59a0faa

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
  process_madvise.2: fix capability and ptrace requirements
  madvise.2: add documentation for MADV_COLLAPSE

 man2/madvise.2         | 133 +++++++++++++++++++++++++++++++++++++++--
 man2/process_madvise.2 |  31 ++++++++--
 2 files changed, 155 insertions(+), 9 deletions(-)

-- 
2.38.0.135.g90850a2211-goog

