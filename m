Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DDC553CBB6
	for <lists+linux-man@lfdr.de>; Fri,  3 Jun 2022 16:45:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238696AbiFCOp0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 3 Jun 2022 10:45:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235709AbiFCOp0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 3 Jun 2022 10:45:26 -0400
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com [IPv6:2607:f8b0:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 659E619295
        for <linux-man@vger.kernel.org>; Fri,  3 Jun 2022 07:45:25 -0700 (PDT)
Received: by mail-il1-x129.google.com with SMTP id r3so6897814ilt.8
        for <linux-man@vger.kernel.org>; Fri, 03 Jun 2022 07:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=yIcBOKMmynGckxvV0pxIFmneOu7hxh+F9HNmq0324EU=;
        b=rIGTeqgF6TklOCQ8mktL5Vy1ERbzFrjPwi1JW3m0GCumBdMIBrTMKYKUuvF+f5cv3f
         dYgjuw9P5LmDFHGzBxD0tpKB4R7wb+kRszcv6ueUi2NAyA/oIVKFD7A9yoEyVsz1jgkL
         PJKIff4PgxDGkUIBT2AZUZ7xBSOusdKPitz+docjcsygdaPjLbQRDQSMpQoP9RhZcowd
         g8CaGD0mlZk3iXfh8IN9obz9Eu4WHujvUIMtCGSLItf+23+8lTNEtHuSrJ3nBo02eoIK
         tcWvQ9KAzxHXnU0fIuLPRvGqNEm2zz3Z4l9vEQiyosxqF/8e6/6bDnSPlfy8tcJ6ocCF
         nraQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=yIcBOKMmynGckxvV0pxIFmneOu7hxh+F9HNmq0324EU=;
        b=EJ1Aw1TmsbsdfRCW1xf/4BIrJAGWOFtG93LWT0POOhpzZRzx0h4m69hFgEHAZA2snT
         NVt0jWUvZbeFKzxQ72h5dbOVXcoqAlV1iAsRtWayiBCKucGI0TmZKkmB8hTIpq2B3NVK
         0/et3xpN9AVt4p39cr4ifkrUPn8lA6I2WgZvfQh7+D5qlAhpao55x1Zo+z6kAs2Ormde
         CUMJGJT7biBza5pTlDbrKrBoBPtrRWloX3nhTwrSXTMEVWfvESfF1pTZKBmfqXQSZteM
         Hfg/+2jyrm9L4Gv7m53BYWRU9itQqZLlNGCorUSQU3cWKsiKKZFcioc/UT/8IRHKPdhA
         02oQ==
X-Gm-Message-State: AOAM5313qLVpReeC5wMAnRn+5lGxCSREPPCRx9OB7phs3Loa0sBLruP/
        MOYsqR0wa7yXd3t7M0USRK8D4m/HbfVfZxmNZFyvAtPLNmlNEA==
X-Google-Smtp-Source: ABdhPJweRb9hoeM3ViG/b4VlqCKlraGSECK0aDNOrNWwj8xnW6qPkWeiHc1W+FbY9IhuvMObIlhjrHH1dMR+YVxguBQ=
X-Received: by 2002:a6b:4019:0:b0:669:3314:ebcb with SMTP id
 k25-20020a6b4019000000b006693314ebcbmr849850ioa.197.1654267524500; Fri, 03
 Jun 2022 07:45:24 -0700 (PDT)
MIME-Version: 1.0
From:   Jesse Rosenstock <jrosenstock@google.com>
Date:   Fri, 3 Jun 2022 16:45:13 +0200
Message-ID: <CAMZQ0rKYpg6+4WD45BdEdPy1QiKtk+KbJL6WRZo9tVQ2B2qGXA@mail.gmail.com>
Subject: [PATCH] mmap.2: wfix
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Change "supported only since" to "support was added in".

Previously, this said, "MAP_POPULATE is supported for private mappings only
since Linux 2.6.23."  This could be parsed as "MAP_POPULATE is supported
for private mappings only [not shared mappings] since Linux 2.6.23."
Someone (a native English speaker) tried to tell me this.

Change to "Support for MAP_POPULATE in conjunction with private mappings
was added in Linux 2.6.23."  This is unambiguous, and "support was
added" is more common in other man pages.

There are more instances of "supported only since", but they seem
clearer.  I could send a separate patch for them if desired.

Signed-off-by: Jesse Rosenstock <jmr@google.com>
---
 man2/mmap.2 | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/man2/mmap.2 b/man2/mmap.2
index 96b7444b0..b9cfe82a6 100644
--- a/man2/mmap.2
+++ b/man2/mmap.2
@@ -215,11 +215,11 @@ The
 argument should be zero.
 .\" See the pgoff overflow check in do_mmap().
 .\" See the offset check in sys_mmap in arch/x86/kernel/sys_x86_64.c.
-The use of
+Support for
 .B MAP_ANONYMOUS
 in conjunction with
 .B MAP_SHARED
-is supported on Linux only since kernel 2.4.
+was added in Linux 2.4.
 .TP
 .B MAP_DENYWRITE
 This flag is ignored.
@@ -405,8 +405,9 @@ The
 call doesn't fail if the mapping cannot be populated (for example, due
 to limitations on the number of mapped huge pages when using
 .BR MAP_HUGETLB ).
+Support for
 .BR MAP_POPULATE
-is supported for private mappings only since Linux 2.6.23.
+in conjunction with private mappings was added in Linux 2.6.23.
 .TP
 .BR MAP_STACK " (since Linux 2.6.27)"
 Allocate the mapping at an address suitable for a process
--
2.36.1.255.ge46751e96f-goog
