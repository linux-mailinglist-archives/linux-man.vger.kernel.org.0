Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBF516081AA
	for <lists+linux-man@lfdr.de>; Sat, 22 Oct 2022 00:33:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229800AbiJUWdN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Oct 2022 18:33:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229958AbiJUWdN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Oct 2022 18:33:13 -0400
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56EB92AD300
        for <linux-man@vger.kernel.org>; Fri, 21 Oct 2022 15:33:12 -0700 (PDT)
Received: by mail-yb1-xb49.google.com with SMTP id o4-20020a258d84000000b006bcfc1aafbdso4442480ybl.14
        for <linux-man@vger.kernel.org>; Fri, 21 Oct 2022 15:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=UQIfOxRnlwRRwhWBO+p+5sf8htyV9CkZvkGFbADgqo4=;
        b=J8FQd3gsTR8s3Po46QnUbCcF1zAKwjsTF/q7AFSouetX0+G+1Rfi/UFIUWZtP/VMtN
         y3vQUPhUC20FPxpkNLVEO3vP7gT1h66wqxxc9sDsxETC8t43yuzQ4reM0O9cZmObc4o6
         aCRFjf4SohxTnroY4G0CsJ2PNj1Oy3HkWR6BLfTijl8BT3+vdpul5wIZKx92L4VQploK
         X8Ufy8HlNlL3R9o1thXcAWA+jZc+Uxf6FqqRTTsnwiIC/r2BUuOkcOOy9vzzUeCE9c4D
         yiIabya8h9uONz0LytMhFHj2UGgqyWryZqcwCJfO3rWd9KJVsC9v9QwYeRvrgY/Px+On
         WHPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UQIfOxRnlwRRwhWBO+p+5sf8htyV9CkZvkGFbADgqo4=;
        b=x70cckTN6scfMPlgvn/ieJBDUSX/U1+K+7UXTpLZFpAP5mNJpJw+EKGuaFNd7OtFv0
         qcC5WJzo9rwkWFrcQbVltqd7t4b8vBsjaVQuTUuGGNzRom7BaS7yrdz4wO53ogPH5wL0
         qUAJzH3QI+v+0oUg/o6DRrRl7jkR9fXKx5LK/UJE7P//0jr70oUJUNr/oiS91NjGHqw7
         DG0GjXCJsERbORukU1Y0NXLpZ+BkDoIxFV58bJc3oq6zWWpHa5zQsVdLrKkXTfwg7wbO
         vHVghubAKROkBp/XwNesSxlRWTMgT4I8S3K+4xXpGpvi2JyCZa4FgcQmAEBJRlbguhiS
         G5Ow==
X-Gm-Message-State: ACrzQf0zTZ6cfSwZUUm+cEKC6BuYL2bFRnfjKljC7xdnHUuKy4MYY7o+
        zk8WAjenwE+ESAxta/qaH7fkYhvPsrpY
X-Google-Smtp-Source: AMsMyM48OQoNtRhgvDbQpBn956ebPCd9YP3ElWOp9cq6UrF7FeGGnbi2A4XkVoszNMT0+oU5sO9aXZ0xI340
X-Received: from zokeefe3.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:1b6])
 (user=zokeefe job=sendgmr) by 2002:a05:6902:1209:b0:6bc:7da1:cd9b with SMTP
 id s9-20020a056902120900b006bc7da1cd9bmr18950874ybu.0.1666391591620; Fri, 21
 Oct 2022 15:33:11 -0700 (PDT)
Date:   Fri, 21 Oct 2022 15:32:57 -0700
In-Reply-To: <20221021223300.3675201-1-zokeefe@google.com>
Mime-Version: 1.0
References: <20221021223300.3675201-1-zokeefe@google.com>
X-Mailer: git-send-email 2.38.0.135.g90850a2211-goog
Message-ID: <20221021223300.3675201-2-zokeefe@google.com>
Subject: [PATCH man-pages v3 1/4] madvise.2: update THP file/shmem
 documentation for +5.4
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

Since Linux 5.4, Transparent Huge Pages now support both file-backed
memory and shmem memory. Update MADV_HUGEPAGE advice description to
reflect this.

Additionally, expand the description of requirements for memory to be
considered eligible for THP: alignment / mapping requirements, VMA
flags, prctl(2) settings, inode status, etc.

Signed-off-by: Zach O'Keefe <zokeefe@google.com>
---
 man2/madvise.2 | 38 +++++++++++++++++++++++++++++++++++---
 1 file changed, 35 insertions(+), 3 deletions(-)

diff --git a/man2/madvise.2 b/man2/madvise.2
index 81cce56af..64f788ace 100644
--- a/man2/madvise.2
+++ b/man2/madvise.2
@@ -320,8 +320,6 @@ Enable Transparent Huge Pages (THP) for pages in the range specified by
 .I addr
 and
 .IR length .
-Currently, Transparent Huge Pages work only with private anonymous pages (see
-.BR mmap (2)).
 The kernel will regularly scan the areas marked as huge page candidates
 to replace them with huge pages.
 The kernel will also allocate huge pages directly when the region is
@@ -354,12 +352,46 @@ an access pattern that the developer knows in advance won't risk
 to increase the memory footprint of the application when transparent
 hugepages are enabled.
 .IP
+.\" commit 99cb0dbd47a15d395bf3faa78dc122bc5efe3fc0
+Since Linux 5.4,
+automatic scan of eligible areas and replacement by huge pages works with
+private anonymous pages (see
+.BR mmap (2)),
+shmem pages,
+and file-backed pages.
+For all memory types,
+memory may only be replaced by huge pages on hugepage-aligned boundaries.
+For file-mapped memory \(em including tmpfs (see
+.BR tmpfs (2))
+\(em the mapping must also be naturally hugepage-aligned within the file.
+Additionally,
+for file-backed,
+non-tmpfs memory,
+the file must not be open for write and the mapping must be executable.
+.IP
+The VMA must not be marked
+.BR VM_NOHUGEPAGE ,
+.BR VM_HUGETLB ,
+.BR VM_IO ,
+.BR VM_DONTEXPAND ,
+.BR VM_MIXEDMAP ,
+or
+.BR VM_PFNMAP ,
+nor can it be stack memory or backed by a DAX-enabled device
+(unless the DAX device is hot-plugged as System RAM).
+The process must also not have
+.B PR_SET_THP_DISABLE
+set (see
+.BR prctl (2) ).
+.IP
 The
 .B MADV_HUGEPAGE
 and
 .B MADV_NOHUGEPAGE
 operations are available only if the kernel was configured with
-.BR CONFIG_TRANSPARENT_HUGEPAGE .
+.B CONFIG_TRANSPARENT_HUGEPAGE
+and file/shmem memory is only supported if the kernel was configured with
+.BR CONFIG_READ_ONLY_THP_FOR_FS .
 .TP
 .BR MADV_NOHUGEPAGE " (since Linux 2.6.38)"
 Ensures that memory in the address range specified by
-- 
2.38.0.135.g90850a2211-goog

