Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43D8D6036C8
	for <lists+linux-man@lfdr.de>; Wed, 19 Oct 2022 01:51:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229717AbiJRXvJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 19:51:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229741AbiJRXvH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 19:51:07 -0400
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com [IPv6:2607:f8b0:4864:20::449])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 186CDA2A90
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 16:51:07 -0700 (PDT)
Received: by mail-pf1-x449.google.com with SMTP id a11-20020a056a001d0b00b005635c581a24so8596077pfx.17
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 16:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=wd/fY6QKSavm7D1EQgjukQCfw7sIII/V1ACtOSRxwG8=;
        b=aHetoDSIQJVnq8NUhnzmf11U/kL09k6c1YTQSkzohD/Z0UO0iLChwZCJGBfY4RQvdG
         EZepcBLhTRbaHHrlNGfg7amGPhNd9pL4e7jrdVABKpz41BeLajfQ9v+ujhM4xEbeW/fm
         JOnNrCfU1JviAtDdUsq24AHLNcEELrMBGU4JxugsMOovDH0pOriXVvXkvO1pvGJ9mFm2
         9LqzOZDrZRe5bf7RxxouQ7QQZ81kLpmastbmmOu4gpGzQ8srLbDkYnzgn8DASqo787bU
         zeVM/h9VsHOJK62K1ltU4N9M7megtQQ6av68Xr52yP+vZhTT7hRFXOjWVW4mdscZiwJ8
         rTSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wd/fY6QKSavm7D1EQgjukQCfw7sIII/V1ACtOSRxwG8=;
        b=wGG8g+LTw/KFcR0MU6+2qrmyuzGJDr3Rx5wN4ngSI/Ot8+Hq+R0zk+HIn1aMuRC0ai
         2wGwo/OmY4VsURRKQipwZmA0bFH/D/Sc8Vmu4/JpezcLTpvpYQMowzGt7mCh4Rbm2+Bu
         Jf5xTzsVuTh3jxYnJ5hKHlipIEYe1FuMhbxNAMDBcJMMPdxTFzLFCq2N/6YTUQR+94EK
         cRG6UozrWwk6Zngk5N8SdZVNKjoKRfbbjWuhm+yflWSPuKuHZGYdK/pyZRi3TEBxIfYk
         NnK4MyP/vonel9CtMH95KjEmN5TRSQN2L0T54D1aWB48CVBntCIn5kDuVxR9XV7SZXvo
         v4DQ==
X-Gm-Message-State: ACrzQf14xQ1ioL0EK/TquSPZIiGUlWbPg0kRJoA7UUEB8Ighk1V7L41j
        NIIpfc+4iv1BRaNrbv8va/hsyi4vKQB9
X-Google-Smtp-Source: AMsMyM6F3VrdnWK11gjs2ukDG4Yeylh6kcOkNOnMEXcElOKlidoqn4RHNF5QmFfW5WRXBoMTki3TK2Kdf3QI
X-Received: from zokeefe3.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:1b6])
 (user=zokeefe job=sendgmr) by 2002:a17:90a:4811:b0:20a:fee1:8f69 with SMTP id
 a17-20020a17090a481100b0020afee18f69mr1905851pjh.0.1666137066188; Tue, 18 Oct
 2022 16:51:06 -0700 (PDT)
Date:   Tue, 18 Oct 2022 16:50:49 -0700
In-Reply-To: <20221018235051.152548-1-zokeefe@google.com>
Mime-Version: 1.0
References: <20221018235051.152548-1-zokeefe@google.com>
X-Mailer: git-send-email 2.38.0.413.g74048e4d9e-goog
Message-ID: <20221018235051.152548-3-zokeefe@google.com>
Subject: [PATCH man-pages v2 2/4] madvise.2: document reliable probe for
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
2.38.0.413.g74048e4d9e-goog

