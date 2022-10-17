Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4AC5A6015CE
	for <lists+linux-man@lfdr.de>; Mon, 17 Oct 2022 19:55:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230291AbiJQRzb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Oct 2022 13:55:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230264AbiJQRza (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Oct 2022 13:55:30 -0400
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com [IPv6:2607:f8b0:4864:20::44a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83C5548EAC
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 10:55:28 -0700 (PDT)
Received: by mail-pf1-x44a.google.com with SMTP id 7-20020a056a00070700b0056264748f0fso6537343pfl.21
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 10:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=WkqFpi2/V6E2Fhjges484cEMfzRV/sSivyZ4C/2xiBE=;
        b=sNGR6fEHoPrRwFihWQepoGIt4d5v2xBIB3HzTEOfCVV9c1horVac1VGhc4QFP41N5j
         8WiArXDEIX0yndL2S/m1pDuIUtdBu5vbn1jsANrYVL9su48gEsvhEHmoH13OIfC0pd6M
         8Ci1IOHX4r5S0PiuMf+NFp/+lPQoxDsZJw+CkslrsEBCCEGeMyYgFPmYGbE3fj1c65ND
         OEvbPBk5Hi0jLVrvlnts/koVXMATGoB2TJiJsczi2riAWs20sKLu/Bh21SY03DR7rUb5
         N+Cd1+9itPBmdZMhitWKaoEG31/ajHdzF2K22TrC1Engg4Wfgqskl2kIcfUO4+l1y1KN
         ZAqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WkqFpi2/V6E2Fhjges484cEMfzRV/sSivyZ4C/2xiBE=;
        b=f9GMSTEKvG7VdADWHUjKESJIp16V7FdpbRQFyNEH/qawE0BJZyzqLWN+fh+uzt6pMS
         Js+aedgL4l/4f2VFo90lP5i6p7IW4UgCAwpy8ijHZvQsZkICMyb0lmM9DjdGA+6fQzjT
         L1SjoOqBxi0GyEEpObwmBMcXs9tyxgxcUmu19n6J1LubC6Ai40KvkCz0wgs37KK92FyK
         XaIJWkKlDJ6krgxi4W7jgKZvmGqXhdyK2fMzhr4wXjplZTjk0PHdRJdsDqdO5BwO7mwW
         QgWRpeKzDBjDqXKUBhJ08XCrP29u4d7eUpf2VDBg0zUalSjLcifMDQeRVqvSaulyrrzN
         tbew==
X-Gm-Message-State: ACrzQf3U5Al+yTaOeNk1kkOdHXxuLqzlvQwvNK+yz1qg49CAh9TmuMlD
        iHYRLy1DHTqogkKPyu1YD/FfU65HHVGX
X-Google-Smtp-Source: AMsMyM762UuUMtU1JmhIMwGwjSPwYdacV76xKStC7j9lf6xUPj8PYXW/eZ4Bavo0plZCOCAt7AhCLJQoGn6n
X-Received: from zokeefe3.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:1b6])
 (user=zokeefe job=sendgmr) by 2002:a05:6a00:10c8:b0:563:1bd1:2ce4 with SMTP
 id d8-20020a056a0010c800b005631bd12ce4mr13882117pfu.6.1666029328004; Mon, 17
 Oct 2022 10:55:28 -0700 (PDT)
Date:   Mon, 17 Oct 2022 10:55:20 -0700
In-Reply-To: <20221017175523.2048887-1-zokeefe@google.com>
Mime-Version: 1.0
References: <20221017175523.2048887-1-zokeefe@google.com>
X-Mailer: git-send-email 2.38.0.413.g74048e4d9e-goog
Message-ID: <20221017175523.2048887-2-zokeefe@google.com>
Subject: [PATCH man-pages 1/4] madvise.2: update THP file/shmem documentation
 for +5.4
From:   Zach OKeefe <zokeefe@google.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org
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
 man2/madvise.2 | 37 ++++++++++++++++++++++++++++++++++---
 1 file changed, 34 insertions(+), 3 deletions(-)

diff --git a/man2/madvise.2 b/man2/madvise.2
index 81cce56af..e14e0f7fb 100644
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
@@ -354,12 +352,45 @@ an access pattern that the developer knows in advance won't risk
 to increase the memory footprint of the application when transparent
 hugepages are enabled.
 .IP
+.\" commit 99cb0dbd47a15d395bf3faa78dc122bc5efe3fc0
+Since Linux 5.4,
+automatic scan of eligible areas and replacement by huge pages works with
+private anonymous pages (see
+.BR mmap (2)),
+shmem-backed pages (including tmpfs (see
+.BR tmpfs (5)),
+and file-backed pages.
+For all memory types,
+memory may only be replaced by huge pages on hugepage-aligned boundaries.
+For file-mapped memory (including tmpfs) the mapping must also be naturally
+hugepage-aligned within the file.
+Additionally,
+for file-backed (not tmpfs) memory,
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

