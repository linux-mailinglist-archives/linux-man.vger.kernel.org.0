Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53851681F52
	for <lists+linux-man@lfdr.de>; Tue, 31 Jan 2023 00:05:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229460AbjA3XFK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Jan 2023 18:05:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231627AbjA3XEr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Jan 2023 18:04:47 -0500
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com [IPv6:2607:f8b0:4864:20::f2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F2861286A
        for <linux-man@vger.kernel.org>; Mon, 30 Jan 2023 15:04:06 -0800 (PST)
Received: by mail-qv1-xf2a.google.com with SMTP id w15so9969208qvs.11
        for <linux-man@vger.kernel.org>; Mon, 30 Jan 2023 15:04:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=48rW4sP4OYvydrZuUdObODuRq5Cu3UPTRv1Ckt4Euu8=;
        b=mjQmkCXKLGU6bGtAzb8JexUdJLJF6NmaHJJvxVJtCk75lV+hraUTxldtpALFIuzn1b
         cxHZPfaYvqq265HrgOUFz1X27LRiBQKiR4pBuzrB9zHCQfGrZh/cqpkFRtwm3BbKrJeD
         2F+K7chU3Nsb/D7TSm7akq41YfEGS3dH67wWn7fuZYiy1qZ3Sj4cG/AaW9YmsVm0XnFA
         T5HEDmAAGzNewt7UryjomQP5fCBZSwkh6Fy81iwAeC7iCGrx9eRsLlISdqOi9AAEsdLn
         q1cev2eruGpCsqVfIm3BxWqLkUdkgJURNwtd3PTgY2PUY9TP3m4RJRYTm7JlmF3LIrmG
         4KQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=48rW4sP4OYvydrZuUdObODuRq5Cu3UPTRv1Ckt4Euu8=;
        b=uMbiE38uAiEFWy3CMqAZNpw/ciQhyuVFOpK7xpdOQBnxWVZqmGzMLo3Mwr4SRhVhHn
         I3YP3gOKFoJCHXLGZ9j8ihh3isnaRg1SXXvRpMvvbJQvhY3SY8vX0XEcQ3Z+q0dQrYTu
         VqDqEHInJ5uLxb7/5UvEPwN3MpB1r78SkVBapfVwYvBXfExZAXC3VFO6DfJRD+pFYnTs
         Ezutn8+uan3BJ3lZ2uEGzinsNn5k/Xu2IOP9C15dw23eayMOqgzAUUXnbX4ApXYXKKV7
         udNGyTkduq4fDIwrea/E3jJYX+Mnwa+tmI/boSS0NVE7YmFhtFsippWScBYGYiOz9Wn/
         XhyA==
X-Gm-Message-State: AO0yUKXDReO1VYyLleITz6V5TuMB1UTw/14c0w+vI5iDqdAeGdrlt7Di
        0ZV2lqlZTEICXViycPIFFEmAGn/QcIL/6GfEDfuzMjELOvcM55Gj2Lma7g==
X-Google-Smtp-Source: AK7set8n9nT0PmS3HOLiVQ1e8+NC6licdEjylhlkCd0Q6/XCNq1kl9UindFPWFmaTIRrPTfZpQrKm960rvDpZba/wLw=
X-Received: by 2002:a0c:e0d3:0:b0:539:57f0:fa5c with SMTP id
 x19-20020a0ce0d3000000b0053957f0fa5cmr903501qvk.94.1675119768205; Mon, 30 Jan
 2023 15:02:48 -0800 (PST)
MIME-Version: 1.0
From:   enh <enh@google.com>
Date:   Mon, 30 Jan 2023 15:02:37 -0800
Message-ID: <CAJgzZoqTHGh-VLMSN7H6t9K95TddyCRm2L6f-mnYv6dSquc3nQ@mail.gmail.com>
Subject: [PATCH] vdso.7: fix risc-v symbol names.
To:     linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The kernel git history says the names have always been "__vdso_" rather
than "__kernel_", so I assume this was a copy & paste mistake from a
different architecture.

Luckily, the path to the kernel source that lets you confirm/deny this
_is_ correct :-)
---
 man7/vdso.7 | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/man7/vdso.7 b/man7/vdso.7
index fabb34d0d..9f47efc7d 100644
--- a/man7/vdso.7
+++ b/man7/vdso.7
@@ -459,12 +459,12 @@ The table below lists the symbols exported by the vDSO.
 l l.
 symbol version
 _
-__kernel_rt_sigreturn LINUX_4.15
-__kernel_gettimeofday LINUX_4.15
-__kernel_clock_gettime LINUX_4.15
-__kernel_clock_getres LINUX_4.15
-__kernel_getcpu LINUX_4.15
-__kernel_flush_icache LINUX_4.15
+__vdso_rt_sigreturn LINUX_4.15
+__vdso_gettimeofday LINUX_4.15
+__vdso_clock_gettime LINUX_4.15
+__vdso_clock_getres LINUX_4.15
+__vdso_getcpu LINUX_4.15
+__vdso_flush_icache LINUX_4.15
 .TE
 .if t \{\
 .in
-- 
2.39.1.456.gfc5497dd1b-goog
