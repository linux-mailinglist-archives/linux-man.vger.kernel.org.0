Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAE456015CF
	for <lists+linux-man@lfdr.de>; Mon, 17 Oct 2022 19:55:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230264AbiJQRzd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Oct 2022 13:55:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230333AbiJQRzc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Oct 2022 13:55:32 -0400
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com [IPv6:2607:f8b0:4864:20::64a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2CA252470
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 10:55:30 -0700 (PDT)
Received: by mail-pl1-x64a.google.com with SMTP id c12-20020a170903234c00b0017f695bf8f0so8078919plh.6
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 10:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=agT9QZQMe+zYcofiwo2fky7Lo5K5JsV+HiadouuU+xY=;
        b=S7DlGIdUa4amE9BoDHGwjgJKqiO83psDwvsaprmeCr6GoWIkFEdQbvV1sXIPEdMv9g
         0S+OXhabA0N1xRVPgyuPg8TszXx/+yHwEO/CwpGp6XtpFK4Aa0li2Rgx7e8Wep8ZS4Yg
         D2hoxAMrGZxuAweBsXnXIRb2O4uBtN4Hu9jS5ucQx6yD3+/rFU9BvVSoZ40szyivSNPQ
         mPYW2ZFLSvD8UW88Br1sKdAu1R5d5pxrbcFyU/efuZkbveR396g+Zsvi7twrPveruTq1
         bibaRLQLbg+zlWTHOfH5AEGo01xabCQUJWuWanJovvYb+5EK1z3YP+FGpyatA6wVwCX2
         T1wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=agT9QZQMe+zYcofiwo2fky7Lo5K5JsV+HiadouuU+xY=;
        b=pI4w2Tw4YfmImix1cpoDjbN6Ok6ozMOQwUZw79EuQSZvvC/+Y2daitOoFVR+lDRJiG
         pQTDfOe9Q/O5JASV8LSkqx7Ckf9An8a10HhyZUfttwW7colthTr+XJb3wO7fxB/oCo8c
         dWHAgtbz7E6SEBDsdYhjP7eQN6WqDnVKCS73eZqMyeSI41CEehql0MPKDe7wn6NuJfpw
         FXQ4cmwkUHYklXtqWuflAbI3lIMphoX6G5BBJYQq+38MTA6f0H6tvTzmULz4HHl19bVI
         j6G71tlBTA6nfb4RcDg5XlAbzV8jqriaXhmAn4t2eihu4UD1CwXHTVarLVEaGkLc61hR
         Qfgg==
X-Gm-Message-State: ACrzQf01YhDkxn/o8JTqDtjN8uTRGET1UYpoBP3duKlXQJwn9ANire/b
        qGgXXxNjflE3fLwbZKpOsk2HFw5KmEZw
X-Google-Smtp-Source: AMsMyM5HuNyELUBHl+u6TZZkzRJi+vyJvjs8M4Fo5QyR44pbs2aljP0dCpBB03K1dW9Fpcw4ETF6ejUH7NJA
X-Received: from zokeefe3.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:1b6])
 (user=zokeefe job=sendgmr) by 2002:a17:902:ef92:b0:17e:2618:ee91 with SMTP id
 iz18-20020a170902ef9200b0017e2618ee91mr13497088plb.122.1666029329663; Mon, 17
 Oct 2022 10:55:29 -0700 (PDT)
Date:   Mon, 17 Oct 2022 10:55:21 -0700
In-Reply-To: <20221017175523.2048887-1-zokeefe@google.com>
Mime-Version: 1.0
References: <20221017175523.2048887-1-zokeefe@google.com>
X-Mailer: git-send-email 2.38.0.413.g74048e4d9e-goog
Message-ID: <20221017175523.2048887-3-zokeefe@google.com>
Subject: [PATCH man-pages 2/4] madvise.2: document reliable probe for advice support
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

EINVAL is an overloaded error code for madvise(2) and it's not clear
under what context it means "advice is not valid" vs another error.

Explicitly document that madvise(0, 0, advice) can reliably be used to
probe for kernel support for "advice", returning zero iff "advice" is
supported by the kernel.

Signed-off-by: Zach O'Keefe <zokeefe@google.com>
---
 man2/madvise.2 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man2/madvise.2 b/man2/madvise.2
index e14e0f7fb..adfe24c24 100644
--- a/man2/madvise.2
+++ b/man2/madvise.2
@@ -789,6 +789,13 @@ that are not mapped, the Linux version of
 ignores them and applies the call to the rest (but returns
 .B ENOMEM
 from the system call, as it should).
+.PP
+.BR madvise (0,
+0,
+.IR advice )
+will return zero iff
+.I advice
+is supported by the kernel and can be relied on to probe for support.
 .\" .SH HISTORY
 .\" The
 .\" .BR madvise ()
-- 
2.38.0.413.g74048e4d9e-goog

