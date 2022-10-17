Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11DC96015D1
	for <lists+linux-man@lfdr.de>; Mon, 17 Oct 2022 19:55:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230328AbiJQRzg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Oct 2022 13:55:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230437AbiJQRzf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Oct 2022 13:55:35 -0400
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com [IPv6:2607:f8b0:4864:20::104a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B18753A54
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 10:55:33 -0700 (PDT)
Received: by mail-pj1-x104a.google.com with SMTP id 88-20020a17090a09e100b00208c35d9452so5735031pjo.6
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 10:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9okyg4TxaGr0Wo6DVcaSxPtBJAbQVCSpwbsXFn49vpU=;
        b=B/VP0B1nCEzdRoZcax9PTsCLDH3r24qt1iRdmWvlrjLxQiOXj1wr/rxqCDqOfAg0LP
         RWgqWFyjeWxAU4jyMvEfxNxWKpD2/OwsMoCi4bYF6NJ1wV8xOkzUaxpZRXJniqwzEYy7
         q34Q3d8W6kCaGDW0tMvh2CG6UISW2Rv9X8zeq0raUo09xB40yc2BWT7jqngEG372WL/X
         FuI+uOEYAClitf4iL9KGoEpqbU17OQq2A1bNvABB6zE+/j54qNtaUZZgp0IvUshSdvZA
         IEDpXOJfebXqIrY1aB+WYo8mlr3yvG88m8JMNPs+e6H6kkQODDq7UdLDvIM51qQLgRvd
         V53g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9okyg4TxaGr0Wo6DVcaSxPtBJAbQVCSpwbsXFn49vpU=;
        b=RFfqzfAhTtWWh/3pQSnUPm+OAyhJ+ff/aJagcDWBRjlVzKwI4Cqm4SCaFt7WHnMN3d
         /ch7Fnd3ovqWUczGOz3qg3uRu1Hlm1Tvkyq73kDCAgJ/nZcN34XuzrYC5HtgRVk4Dd7P
         34G+J/2miutFNt8G3EumWEo4IFEC/E6onY7WC2ud/y9r6T3EST5of71J+tdE6PdVh7BG
         BA65jpEDjUNmNIo7TcR34w7p/Hot03bnV1yJGrQK1m4gtJZJ0m+O/9VY7QaH8Fh2qXUx
         Rscy7ay0FW7DZY1UCkxAllGd+ORoTlqnRbLdY+dTsby67dmqJAU/s8HrhoQ3gmttvQCi
         u6wQ==
X-Gm-Message-State: ACrzQf0q0KLk2iqN9O98JR0s0YrmkRf+brbPRJIgeDq4DSKmUHxR3BdX
        y8dS1S12awVoJOEN+GxHSOsj6zyPVxVa
X-Google-Smtp-Source: AMsMyM5NJSC69gJSADJnOqqIrSWtoQccfj+i9MuTgOiBs2sxbicoi9Z8TRpTa2gEOrozU3pDLyI30ziWkuQg
X-Received: from zokeefe3.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:1b6])
 (user=zokeefe job=sendgmr) by 2002:a17:90b:1c06:b0:20a:f070:9f3c with SMTP id
 oc6-20020a17090b1c0600b0020af0709f3cmr15227035pjb.151.1666029332618; Mon, 17
 Oct 2022 10:55:32 -0700 (PDT)
Date:   Mon, 17 Oct 2022 10:55:23 -0700
In-Reply-To: <20221017175523.2048887-1-zokeefe@google.com>
Mime-Version: 1.0
References: <20221017175523.2048887-1-zokeefe@google.com>
X-Mailer: git-send-email 2.38.0.413.g74048e4d9e-goog
Message-ID: <20221017175523.2048887-5-zokeefe@google.com>
Subject: [PATCH man-pages 4/4] madvise.2: add documentation for MADV_COLLAPSE
From:   Zach OKeefe <zokeefe@google.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org
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
 man2/madvise.2         | 91 +++++++++++++++++++++++++++++++++++++++++-
 man2/process_madvise.2 | 10 +++++
 2 files changed, 99 insertions(+), 2 deletions(-)

diff --git a/man2/madvise.2 b/man2/madvise.2
index adfe24c24..7da44fac4 100644
--- a/man2/madvise.2
+++ b/man2/madvise.2
@@ -384,9 +384,10 @@ set (see
 .BR prctl (2) ).
 .IP
 The
-.B MADV_HUGEPAGE
-and
+.BR MADV_HUGEPAGE ,
 .B MADV_NOHUGEPAGE
+and
+.B MADV_COLLAPSE
 operations are available only if the kernel was configured with
 .B CONFIG_TRANSPARENT_HUGEPAGE
 and file/shmem memory is only supported if the kernel was configured with
@@ -399,6 +400,82 @@ and
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
+shmem-backed pages
+(including tmpfs (see
+.BR tmpfs (5)),
+and file-backed pages. See
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
+.BR sysfs (5) )
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
@@ -618,6 +695,11 @@ A kernel resource was temporarily unavailable.
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
@@ -715,6 +797,11 @@ maximum resident set size.
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

