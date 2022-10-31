Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B7996140F8
	for <lists+linux-man@lfdr.de>; Mon, 31 Oct 2022 23:55:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229515AbiJaWzI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Oct 2022 18:55:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbiJaWzH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Oct 2022 18:55:07 -0400
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com [IPv6:2607:f8b0:4864:20::549])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E255F2DC2
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 15:55:05 -0700 (PDT)
Received: by mail-pg1-x549.google.com with SMTP id l63-20020a639142000000b0046f5bbb7372so6555012pge.23
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 15:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Pg+xL7E0FmNb+fSsngtcNmlxh4IoSu46Tj7r+x/30zI=;
        b=bCPEhXW5lKh6HpBcUB7SxXERsOTjotM5uKY8FHtBtBItOdNpLjuQsFl2Tcy0g/KyeN
         k0sj2l5Hq0iMu5v65t02SMVr1nrCNMPtFkmqpMHWoa4pU2t2SETbpf5CLo6F5MTvQ1hy
         GV/b0TomMWrEyNznhggMcec2A6cz3oE0yvQ65mjeC11x27/1/p6HxmY5f+qckdeqhNRC
         Z7WN45kfMw4/brucZCBN5QuUIYnudEQGj4KbmXqJLAk0WiZjvq0l/7qKeHDY1t0F5OR4
         5KnR+7eLCl6GQ10Mde5En7QjR/pXGxQw+6hsYihNfY+Nsu0scpBbTVgHs8yip+DV7Yya
         yjFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Pg+xL7E0FmNb+fSsngtcNmlxh4IoSu46Tj7r+x/30zI=;
        b=Cb6iPycFFfQFZtfsrmiremSpLkXWdan8wOmz5yeOkrupR+1pD9onpO82Z2I4ZHo9Ky
         jZjwDXQjMIeRC8g9pe8aSECt9Q4SgzwgQmFo13bdXPH1esAHiT8CKKj8xAKQxYu9OG2f
         RqRSgZ+iLs0+cMtYWOILTvMupL8eN51bU1jP2VgHdXDcVfjjDE9xPp53CF4xrfaqcQH8
         iCi52R+zefOU93tExLKMWvGxH/FljqvXyPHWyOpLBQpH8XTkBUY7V1WmD14RTHRxrlOQ
         TcD2MEI/g0ezM9qFq5X70YGI/zp7qOum5b41SyTP6BPoJZz18/JJJWdRTP8T6qmwD/IV
         OKjg==
X-Gm-Message-State: ACrzQf2dh56DKLHjqVkNQ5+LcChe7gdQR3B/jJxL5vgKng6k1IX35Cdp
        shfms23K5cBQ6lVZMTpZ06asXCoUNq1o
X-Google-Smtp-Source: AMsMyM55hMdxqQ3Q5DcmLdMof3Omdk6IqkNNBkeefwDCdj99zthFccBLFVIgDncWUHx5EYcsXTpwTTVL3x8B
X-Received: from zokeefe3.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:1b6])
 (user=zokeefe job=sendgmr) by 2002:a05:6a00:b50:b0:56d:a232:6d9b with SMTP id
 p16-20020a056a000b5000b0056da2326d9bmr3928903pfo.26.1667256905408; Mon, 31
 Oct 2022 15:55:05 -0700 (PDT)
Date:   Mon, 31 Oct 2022 15:55:00 -0700
Mime-Version: 1.0
X-Mailer: git-send-email 2.38.1.273.g43a17bfeac-goog
Message-ID: <20221031225500.3994542-1-zokeefe@google.com>
Subject: [PATCH man-pages v4] madvise.2: add documentation for MADV_COLLAPSE
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

Linux 6.1 introduced MADV_COLLAPSE in upstream commit 7d8faaf15545
("mm/madvise: introduce MADV_COLLAPSE sync hugepage collapse") and
upstream commit 34488399fa08 ("mm/madvise: add file and shmem support to
MADV_COLLAPSE").  Update the man-pages for madvise(2) and
process_madvise(2).

Link: https://lore.kernel.org/linux-mm/20220922224046.1143204-1-zokeefe@google.com/
Link: https://lore.kernel.org/linux-mm/20220706235936.2197195-1-zokeefe@google.com/
Signed-off-by: Zach O'Keefe <zokeefe@google.com>
---

v3[1] -> v4
- Rebased to latest master
- (Alejandro Colomar) Fixed weird, non-ascii chars: e2 80 99 -> "'"
- (Alejandro Colomar) Replaced .BR with .B directive when the entire
  line was bold (no non-bold part)

[1] https://lore.kernel.org/linux-man/bb3b5c3c-3966-ea1a-6d84-4f7f3afa37ca@gmail.com/T/#u

 man2/madvise           |  0
 man2/madvise.2         | 90 +++++++++++++++++++++++++++++++++++++++++-
 man2/process_madvise.2 | 10 +++++
 3 files changed, 98 insertions(+), 2 deletions(-)
 create mode 100644 man2/madvise

diff --git a/man2/madvise b/man2/madvise
new file mode 100644
index 000000000..e69de29bb
diff --git a/man2/madvise.2 b/man2/madvise.2
index edf805740..dca42c7d6 100644
--- a/man2/madvise.2
+++ b/man2/madvise.2
@@ -386,9 +386,10 @@ set (see
 .BR prctl (2)).
 .IP
 The
-.B MADV_HUGEPAGE
+.BR MADV_HUGEPAGE ,
+.BR MADV_NOHUGEPAGE ,
 and
-.B MADV_NOHUGEPAGE
+.B MADV_COLLAPSE
 operations are available only if the kernel was configured with
 .B CONFIG_TRANSPARENT_HUGEPAGE
 and file/shmem memory is only supported if the kernel was configured with
@@ -401,6 +402,81 @@ and
 .I length
 will not be backed by transparent hugepages.
 .TP
+.BR MADV_COLLAPSE " (since Linux 6.1)"
+.\" commit 7d8faaf155454f8798ec56404faca29a82689c77
+.\" commit 34488399fa08faaf664743fa54b271eb6f9e1321
+Perform a best-effort synchronous collapse of the native pages mapped by the
+memory range into Transparent Huge Pages (THPs).
+.B MADV_COLLAPSE
+operates on the current state of memory of the calling process and makes no
+persistent changes or guarantees on how pages will be mapped,
+constructed,
+or faulted in the future.
+.IP
+.B MADV_COLLAPSE
+supports private anonymous pages (see
+.BR mmap (2)),
+shmem pages,
+and file-backed pages.
+See
+.B MADV_HUGEPAGE
+for general information on memory requirements for THP.
+If the range provided spans multiple VMAs,
+the semantics of the collapse over each VMA is independent from the others.
+If collapse of a given huge page-aligned/sized region fails,
+the operation may continue to attempt collapsing the remainder of the
+specified memory.
+.B MADV_COLLAPSE
+will automatically clamp the provided range to be hugepage-aligned.
+.IP
+All non-resident pages covered by the range will first be
+swapped/faulted-in,
+before being copied onto a freshly allocated hugepage.
+If the native pages compose the same PTE-mapped hugepage,
+and are suitably aligned,
+allocation of a new hugepage may be elided and collapse may happen
+in-place.
+Unmapped pages will have their data directly initialized to 0 in the new
+hugepage.
+However,
+for every eligible hugepage-aligned/sized region to be collapsed,
+at least one page must currently be backed by physical memory.
+.IP
+.B MADV_COLLAPSE
+is independent of any sysfs
+(see
+.BR sysfs (5))
+setting under
+.IR /sys/kernel/mm/transparent_hugepage ,
+both in terms of determining THP eligibility,
+and allocation semantics.
+See Linux kernel source file
+.I Documentation/admin\-guide/mm/transhuge.rst
+for more information.
+.B MADV_COLLAPSE
+also ignores
+.B huge=
+tmpfs mount when operating on tmpfs files.
+Allocation for the new hugepage may enter direct reclaim and/or compaction,
+regardless of VMA flags
+(though
+.B VM_NOHUGEPAGE
+is still respected).
+.IP
+When the system has multiple NUMA nodes,
+the hugepage will be allocated from the node providing the most native
+pages.
+.IP
+If all hugepage-sized/aligned regions covered by the provided range were
+either successfully collapsed,
+or were already PMD-mapped THPs,
+this operation will be deemed successful.
+Note that this doesn't guarantee anything about other possible mappings of
+the memory.
+Also note that many failures might have occurred since the operation may
+continue to collapse in the event collapse of a single hugepage-sized/aligned
+region fails.
+.TP
 .BR MADV_DONTDUMP " (since Linux 3.4)"
 .\" commit 909af768e88867016f427264ae39d27a57b6a8ed
 .\" commit accb61fe7bb0f5c2a4102239e4981650f9048519
@@ -620,6 +696,11 @@ A kernel resource was temporarily unavailable.
 .B EBADF
 The map exists, but the area maps something that isn't a file.
 .TP
+.B EBUSY
+(for
+.BR MADV_COLLAPSE )
+Could not charge hugepage to cgroup: cgroup limit exceeded.
+.TP
 .B EFAULT
 .I advice
 is
@@ -717,6 +798,11 @@ maximum resident set size.
 Not enough memory: paging in failed.
 .TP
 .B ENOMEM
+(for
+.BR MADV_COLLAPSE )
+Not enough memory: could not allocate hugepage.
+.TP
+.B ENOMEM
 Addresses in the specified range are not currently
 mapped, or are outside the address space of the process.
 .TP
diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
index ac98850a9..92878286b 100644
--- a/man2/process_madvise.2
+++ b/man2/process_madvise.2
@@ -73,6 +73,10 @@ argument is one of the following values:
 See
 .BR madvise (2).
 .TP
+.B MADV_COLLAPSE
+See
+.BR madvise (2).
+.TP
 .B MADV_PAGEOUT
 See
 .BR madvise (2).
@@ -173,6 +177,12 @@ The caller does not have permission to access the address space of the process
 .TP
 .B ESRCH
 The target process does not exist (i.e., it has terminated and been waited on).
+.PP
+See
+.BR madvise (2)
+for
+.IR advice -specific
+errors.
 .SH VERSIONS
 This system call first appeared in Linux 5.10.
 .\" commit ecb8ac8b1f146915aa6b96449b66dd48984caacc
-- 
2.38.1.273.g43a17bfeac-goog

