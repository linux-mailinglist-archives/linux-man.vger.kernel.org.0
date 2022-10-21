Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75D926081AB
	for <lists+linux-man@lfdr.de>; Sat, 22 Oct 2022 00:33:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229958AbiJUWdP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Oct 2022 18:33:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229949AbiJUWdO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Oct 2022 18:33:14 -0400
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com [IPv6:2607:f8b0:4864:20::54a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 866E22AD300
        for <linux-man@vger.kernel.org>; Fri, 21 Oct 2022 15:33:13 -0700 (PDT)
Received: by mail-pg1-x54a.google.com with SMTP id l185-20020a6388c2000000b004610d11faddso1933547pgd.1
        for <linux-man@vger.kernel.org>; Fri, 21 Oct 2022 15:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=j2YCFcqV/9HrzAdGPsM8brD/lu5Yer6yqOKsV1muLNk=;
        b=HHfec0IrAIaL4AtU3Wpm7aVpC4i94PMX7nrLVtU6PvrMsavLXNOlDhshgg27hWZdIt
         idPOGOjnsq77chS50l9alJOA+dp4fbdKYtel6mYHNQ0akrF1p8ChpF5/BYN52LnexEBP
         4ve9YZatUDehddh8CDFokDoIQ9E4TWQaMCb7hlSA0ZSD3X5/3xZiZwsnuj4TULdfP21s
         rJxUGOJwsrRBDKXUMAi2FYITq1O0NUNm0y+ZwLxQ+lhk/d7Hmj7xI0EzASF75pcDym+d
         vZDT9jSnS45yobGQuRhMMbj2hdTyKiuHpvOcVNhdpt+koA5Fu0eDrCUVicuoZ3OvKAgl
         kgTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j2YCFcqV/9HrzAdGPsM8brD/lu5Yer6yqOKsV1muLNk=;
        b=TEoT4KPXWshHX057B3BZnxFG2mwjjA6eBiaYPP9Sl1RgTf7erKrnIQMBcoyIjDNoaH
         lskL9oW8kc87izgeTYMoF7z32K0BRNf0jaBCAVlJSMZdnaQtjjo8rknQ1E4JPxG+GbxS
         d+mPHdi8peKfK5roGfLAF1/pz6e+EP9NGettMOrbVGUU4+rGQmoYaisXS1Ke/YhuQs5K
         IOE0oNVLWT5OEwxOwojNeg8XmknxRqPZ+/+/BLbmsu6zQTl2gP5lcZaXslXBBvYOl5w2
         3HO7Q3IyJtKl9k9ZtglcjbohM8luIMPJoEcHmutWcJ+T9t0qjoeY6x1mCCiLJpawrGiJ
         44nw==
X-Gm-Message-State: ACrzQf16d3gCBjSdEBS5eLPNFefj7MUAzpxqq2FaaT5Ev42hXKrn33au
        uUSNFSfGW2yCSI9VbjwugZFQLfcW3PwG
X-Google-Smtp-Source: AMsMyM5jbebFfHwkbcLcmu7Jew0Ty0YvJLAwsxWJiSk2lsX8c+ywMk9uxffW2GmlBDmylLmhg9xrUyNlvbUA
X-Received: from zokeefe3.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:1b6])
 (user=zokeefe job=sendgmr) by 2002:a62:144b:0:b0:562:38de:9a0e with SMTP id
 72-20020a62144b000000b0056238de9a0emr21455891pfu.78.1666391593062; Fri, 21
 Oct 2022 15:33:13 -0700 (PDT)
Date:   Fri, 21 Oct 2022 15:32:58 -0700
In-Reply-To: <20221021223300.3675201-1-zokeefe@google.com>
Mime-Version: 1.0
References: <20221021223300.3675201-1-zokeefe@google.com>
X-Mailer: git-send-email 2.38.0.135.g90850a2211-goog
Message-ID: <20221021223300.3675201-3-zokeefe@google.com>
Subject: [PATCH man-pages v3 2/4] madvise.2: document reliable probe for
 advice support
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

EINVAL is an overloaded error code for madvise(2) and it's not clear
under what context it means "advice is not valid" vs another error.

Explicitly document that madvise(0, 0, advice) can reliably be used to
probe for kernel support for "advice", returning zero iff "advice" is
supported by the kernel.

Signed-off-by: Zach O'Keefe <zokeefe@google.com>
---
 man2/madvise.2 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man2/madvise.2 b/man2/madvise.2
index 64f788ace..df3413cc8 100644
--- a/man2/madvise.2
+++ b/man2/madvise.2
@@ -790,6 +790,11 @@ that are not mapped, the Linux version of
 ignores them and applies the call to the rest (but returns
 .B ENOMEM
 from the system call, as it should).
+.PP
+.IR madvise(0,\ 0,\ advice)
+will return zero iff
+.I advice
+is supported by the kernel and can be relied on to probe for support.
 .\" .SH HISTORY
 .\" The
 .\" .BR madvise ()
-- 
2.38.0.135.g90850a2211-goog

