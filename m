Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F3956036CA
	for <lists+linux-man@lfdr.de>; Wed, 19 Oct 2022 01:51:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229697AbiJRXvN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 19:51:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229622AbiJRXvM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 19:51:12 -0400
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com [IPv6:2607:f8b0:4864:20::649])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE575A2A90
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 16:51:10 -0700 (PDT)
Received: by mail-pl1-x649.google.com with SMTP id k16-20020a170902c41000b00184987e3d09so10774528plk.21
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 16:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wa2g3vVRf9EsfQ4YJX+6nAuXP5rzS4A1qWB6UcnBf+U=;
        b=cahjfRHFbQveHoBBGFhmb9H7O6gdo1yNeIEY7sByptjQK8btNk2zV99SWYIi8+N7WC
         NUEG5L3MbI2MrIydRkT/evDo+uxczlj0rKW6kfRIhSM05xVfrdDeqQsllbSACG1HXqQZ
         /RKXTJrT0BntcQ8HHL5VucJYJTWsiEH2eoSo9RX66v4K3IzbZMmtFQvr2dP+qufvV4PD
         gEocUnJJcrN91bhRDYHGlQGH/7g2NPptyVBjzTSRBLIA1RVBByV1fhGywGOeDDEY/O43
         dT5iQHWbqy4TkkSQQ2pevngYdp1enoJ0RncXwCPEZUabBM7vy/qYOFASZjTw9/z8kRiE
         DhBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Wa2g3vVRf9EsfQ4YJX+6nAuXP5rzS4A1qWB6UcnBf+U=;
        b=kPI9SjUOa/fiLS8k59DtBlF+Nn+zFEMes+uvXljIiBUvyGe5ePFo97FE0OOjPQyijm
         tIOVM+UMXEbZ5iMVtzdPeqgHKvqpR1/4N7u3bsPe7X2jU+tuj2rUVPMPodoIi3Sn49kw
         mnsQuYHaViRkeDMGKPNJZkbvoGYkE30e/uKLIxc4y4CWpPXIGkEiIWXTyxC3TT3nwwnP
         1fRKoaECf3NqVFnNyi+p1A9ofVVdhgHWNSBIKY9Nrz1yh4zWgbg4rChjI9XwW18elnbs
         h1UBU5qXfjnoozTDHCcul+et4Nye3O+hyRdq8HHqCpVRHDkvHNERyHQdbpkNd9UI3mLJ
         wNCA==
X-Gm-Message-State: ACrzQf08pQbbwYo5JbNO/0hzoD3upRav2wptPl1s63nOGJMWi6993G4M
        VavvVRFC5n+KqZ6p35VVRAnW9+Gvysxn
X-Google-Smtp-Source: AMsMyM5xVpx73tkBDwDIZ3grYpYv2TxLSc3VjInsqis+R6Uih/QybkKKk5f4nUNXrHpKSyTf1ldljkjjhmTj
X-Received: from zokeefe3.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:1b6])
 (user=zokeefe job=sendgmr) by 2002:a17:90a:f284:b0:20d:8287:9342 with SMTP id
 fs4-20020a17090af28400b0020d82879342mr6438846pjb.25.1666137070059; Tue, 18
 Oct 2022 16:51:10 -0700 (PDT)
Date:   Tue, 18 Oct 2022 16:50:51 -0700
In-Reply-To: <20221018235051.152548-1-zokeefe@google.com>
Mime-Version: 1.0
References: <20221018235051.152548-1-zokeefe@google.com>
X-Mailer: git-send-email 2.38.0.413.g74048e4d9e-goog
Message-ID: <20221018235051.152548-5-zokeefe@google.com>
Subject: [PATCH man-pages v2 4/4] madvise.2: add documentation for MADV_COLLAPSE
From:   Zach OKeefe <zokeefe@google.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, "Zach O'Keefe" <zokeefe@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

Link: https://lore.kernel.org/linux-mm/20220922224046.1143204-1-zokeefe@goo=
gle.com/
Link: https://lore.kernel.org/linux-mm/20220706235936.2197195-1-zokeefe@goo=
gle.com/
Signed-off-by: Zach O'Keefe <zokeefe@google.com>
---
 man2/madvise.2         | 90 +++++++++++++++++++++++++++++++++++++++++-
 man2/process_madvise.2 | 10 +++++
 2 files changed, 98 insertions(+), 2 deletions(-)

diff --git a/man2/madvise.2 b/man2/madvise.2
index df3413cc8..b03fc731d 100644
--- a/man2/madvise.2
+++ b/man2/madvise.2
@@ -385,9 +385,10 @@ set (see
 .BR prctl (2) ).
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
@@ -400,6 +401,81 @@ and
 .I length
 will not be backed by transparent hugepages.
 .TP
+.BR MADV_COLLAPSE " (since Linux 6.1)"
+.\" commit 7d8faaf155454f8798ec56404faca29a82689c77
+.\" commit 34488399fa08faaf664743fa54b271eb6f9e1321
+Perform a best-effort synchronous collapse of the native pages mapped by t=
he
+memory range into Transparent Huge Pages (THPs).
+.B MADV_COLLAPSE
+operates on the current state of memory of the calling process and makes n=
o
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
+the semantics of the collapse over each VMA is independent from the others=
.
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
+.BR MADV_COLLAPSE
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
+.BR MADV_COLLAPSE
+also ignores
+.B huge=3D
+tmpfs mount when operating on tmpfs files.
+Allocation for the new hugepage may enter direct reclaim and/or compaction=
,
+regardless of VMA flags
+(though
+.BR VM_NOHUGEPAGE
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
+Note that this doesn=E2=80=99t guarantee anything about other possible map=
pings of
+the memory.
+Also note that many failures might have occurred since the operation may
+continue to collapse in the event collapse of a single hugepage-sized/alig=
ned
+region fails.
+.TP
 .BR MADV_DONTDUMP " (since Linux 3.4)"
 .\" commit 909af768e88867016f427264ae39d27a57b6a8ed
 .\" commit accb61fe7bb0f5c2a4102239e4981650f9048519
@@ -619,6 +695,11 @@ A kernel resource was temporarily unavailable.
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
@@ -716,6 +797,11 @@ maximum resident set size.
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
index 7bee1a098..900210106 100644
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
@@ -170,6 +174,12 @@ The caller does not have permission to access the addr=
ess space of the process
 .TP
 .B ESRCH
 The target process does not exist (i.e., it has terminated and been waited=
 on).
+.PP
+See
+.BR madvise (2)
+for
+.IR advice -specific
+errors.
 .SH VERSIONS
 This system call first appeared in Linux 5.10.
 .\" commit ecb8ac8b1f146915aa6b96449b66dd48984caacc
--=20
2.38.0.413.g74048e4d9e-goog

