Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C97D66036C7
	for <lists+linux-man@lfdr.de>; Wed, 19 Oct 2022 01:51:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229606AbiJRXvI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 19:51:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229622AbiJRXvH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 19:51:07 -0400
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com [IPv6:2607:f8b0:4864:20::64a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3F322CDF0
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 16:51:04 -0700 (PDT)
Received: by mail-pl1-x64a.google.com with SMTP id e10-20020a17090301ca00b00183d123e2a5so10599196plh.14
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 16:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=mwwrA+AKJG2rv4I4FBclmb9mZ0XqPEz5+xc96NXfVbo=;
        b=TnlJdkmWH28tthLcGelqLd0I/jGxMhGO75+K7nEELFCKTI+s/3/mHiZC3wijcMamyG
         Vdr221Gocs4t41NOolPIFGBvT8qU79G1GxpyHPnKezD9IRtTKlM8E1BW9TDQZIywBHGi
         xlDJ2acHFF3P/iQ1AggZTpUbiI1YZ5ChvcwfIR9h4lOAw5tCblDQ817R2IpJ/9GqxIrD
         DAMF6GlMs1RYg1UOPp0QlzgXnoENnUbjRWWehQY1vEQ/Cr/wkXRL4Wmllp9GkzvKPRue
         U9uQANY0Z8FVyJzncKJBypYDjKIK4pxHbLmF3zLGB46I2HlHXskig+zShpaJEqy81uBb
         ubcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mwwrA+AKJG2rv4I4FBclmb9mZ0XqPEz5+xc96NXfVbo=;
        b=71oYMSfeQMjuXOJjnvWmlHyBS1cuvqx9ZWEx/g0dp9Hf/TXqmx8iqAbXjXRA4VLSma
         wvqgSuFOO+DuNI9sAETAGp8YvHhVoO128vUjHZh6TSNdC9mHy3QohTyqm5MCU0ra4qU4
         SodYpZtLEP7BGkYbNzxLlzBJZ0rpTy1s2lUv86gi+lP+lmCCaOG2a2bzyrFCuu4fxpqw
         C3PIrmyd/VVBjMmOYDgWjN0jcssED/zCcox8Ya3MjdUJ3kasw4jQT+mWwb3OH5vVgkXk
         J0Fw0Hi3NU3wu61ehSF4Y/hHx57hy4+NvzaYdHXAILX4jMJJBAc4z4s2xKAAmUEwKR0z
         xwtw==
X-Gm-Message-State: ACrzQf1tI2IdZ8SekjCiftxoA78Q1MY2YRMcg45vMN6cQd/DNA1qVB+y
        BdyVecROWRZz6LWRJzb5wEAUZvkBi5bS
X-Google-Smtp-Source: AMsMyM7x5IWjOuzuBkp4TLq/73g6nfs6biMwjKxfPOkF+RuhdxgsQgpU+G1TxT9q5LT270Wsv4OORvzB4H42
X-Received: from zokeefe3.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:1b6])
 (user=zokeefe job=sendgmr) by 2002:a05:6a00:1a92:b0:565:d5c0:f627 with SMTP
 id e18-20020a056a001a9200b00565d5c0f627mr5787283pfv.10.1666137064421; Tue, 18
 Oct 2022 16:51:04 -0700 (PDT)
Date:   Tue, 18 Oct 2022 16:50:48 -0700
In-Reply-To: <20221018235051.152548-1-zokeefe@google.com>
Mime-Version: 1.0
References: <20221018235051.152548-1-zokeefe@google.com>
X-Mailer: git-send-email 2.38.0.413.g74048e4d9e-goog
Message-ID: <20221018235051.152548-2-zokeefe@google.com>
Subject: [PATCH man-pages v2 1/4] madvise.2: update THP file/shmem
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
2.38.0.413.g74048e4d9e-goog

