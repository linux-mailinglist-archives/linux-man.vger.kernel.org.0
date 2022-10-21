Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30DC36081AC
	for <lists+linux-man@lfdr.de>; Sat, 22 Oct 2022 00:33:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229949AbiJUWdR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Oct 2022 18:33:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229959AbiJUWdQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Oct 2022 18:33:16 -0400
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com [IPv6:2607:f8b0:4864:20::54a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CB192AD308
        for <linux-man@vger.kernel.org>; Fri, 21 Oct 2022 15:33:15 -0700 (PDT)
Received: by mail-pg1-x54a.google.com with SMTP id g66-20020a636b45000000b0043a256d3639so1944724pgc.12
        for <linux-man@vger.kernel.org>; Fri, 21 Oct 2022 15:33:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=2mfLSi9N+JZYnQf9EtD/iIl2pLa/hOhtVxEVkuJcdM8=;
        b=lle+N5TrpCI1LNnjia1zJiidMB+e23mByhA6yA8Vit77UUdoQYM+pwQoiVsTaYTKyT
         N4oaZiegEhXqpWIdopwuN4BNJfgSeQ759NCA6ON9MwhxIxGVTg/jQ2646la3DV6DFDKa
         6HvoFVNZiRwKbAqBW74PRLN4JlbW4hhTOmfdpsyiJ0OKudLFy++cBVyGOEj5WNJlljXd
         wABZ0t+Q6fb7c9S8a8xYGx1boByY+WGIiPGBL6lSnPDdf9LnoRtZTtk2mHw9Aqk4dgLQ
         DQBlnegZ+rTSY0xoPJU35qcOt+nFV8OWm6dr3zrMQ0o6STzWhYG6uWDRb40eMAnsWgbs
         gAgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2mfLSi9N+JZYnQf9EtD/iIl2pLa/hOhtVxEVkuJcdM8=;
        b=0R/hcpWafG5f99VHsOj78WbFDHQElpcy0NxOTf2G4wbSUZy1BuflxWQ84FOkmq37G7
         VAL4wxSkjfuWHC4BJm5qIlsL8IHaD4vz++iCDFKp+mb00q7lW8+LQ1j1nB39WPobidzT
         iuOg9qT6tA98e1SH6ePWfG0g2bKv5bxzwQKHkqa731X42XVlDGuR8k+OYSQgd69hEQu7
         wAomUJT68vOvRkTy0UrHasyWPiXyuhMB224i25M03lNURXefRL7Wj8FtKNxHSGPPFEzq
         qrCDuedNhWlaT3papR79wZRI7hXkpirmoJc3YtvKVdnAW4SR3TipczNGo1nv3HzZlGzm
         PwPQ==
X-Gm-Message-State: ACrzQf2/9PGPlzLMql4Wtvbzt+jtz2hI4a1sUNF06ZGmd9vvxgCyp1NT
        mxV3nwDhN950mBwocFU2Vcwcy9MnnUl6
X-Google-Smtp-Source: AMsMyM7ykWOvJQhnYq5jJgK0UIS3OByEZBiFkO+t8lJMkUXraxyk1KUhcnhVDNpBp0OeeK7nYEVmNP4GhzH8
X-Received: from zokeefe3.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:1b6])
 (user=zokeefe job=sendgmr) by 2002:a17:903:24e:b0:179:b755:b82f with SMTP id
 j14-20020a170903024e00b00179b755b82fmr20595013plh.34.1666391594831; Fri, 21
 Oct 2022 15:33:14 -0700 (PDT)
Date:   Fri, 21 Oct 2022 15:32:59 -0700
In-Reply-To: <20221021223300.3675201-1-zokeefe@google.com>
Mime-Version: 1.0
References: <20221021223300.3675201-1-zokeefe@google.com>
X-Mailer: git-send-email 2.38.0.135.g90850a2211-goog
Message-ID: <20221021223300.3675201-4-zokeefe@google.com>
Subject: [PATCH man-pages v3 3/4] process_madvise.2: fix capability and ptrace requirements
From:   Zach OKeefe <zokeefe@google.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, "Zach O'Keefe" <zokeefe@google.com>,
        Suren Baghdasaryan <surenb@google.com>,
        Minchan Kim <minchan@kernel.org>
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

The initial commit of process_madvise(2) to Linux, commit ecb8ac8b1f14
("mm/madvise: introduce process_madvise() syscall: an external memory
hinting API"), relied on PTRACE_MODE_ATTACH_FSCREDS (see ptrace(2)),
but was amended by commit 96cfe2c0fd23 ("mm/madvise: replace ptrace
attach requirement for process_madvise") which replaced this with a
combination of PTRACE_MODE_READ and CAP_SYS_NICE (PTRACE_MODE_READ to
prevent leaking ASLR metadata and CAP_SYS_NICE for influencing process
performance).

The initial commit of process_madvise(2) to man-pages project, made
after the second patch, included two errors:

1) CAP_SYS_ADMIN instead of CAP_SYS_NICE
2) PTRACE_MODE_READ_REALCREDS instead of PTRACE_MODE_READ_FSCREDS

Correct this in the man-page for process_madvise(2).

Fixes: a144f458b ("process_madvise.2: Document process_madvise(2)")
Cc: Suren Baghdasaryan <surenb@google.com>
Cc: Minchan Kim <minchan@kernel.org>
Signed-off-by: Zach O'Keefe <zokeefe@google.com>
---
 man2/process_madvise.2 | 21 +++++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
index 6208206e4..44d3b94e8 100644
--- a/man2/process_madvise.2
+++ b/man2/process_madvise.2
@@ -105,16 +105,20 @@ remote process.
 No further elements will be processed beyond that point.
 (See the discussion regarding partial advice in RETURN VALUE.)
 .PP
-Permission to apply advice to another process is governed by a
+.\" commit 96cfe2c0fd23ea7c2368d14f769d287e7ae1082e
+Starting in Linux 5.12,
+permission to apply advice to another process is governed by
 ptrace access mode
-.B PTRACE_MODE_READ_REALCREDS
+.B PTRACE_MODE_READ_FSCREDS
 check (see
 .BR ptrace (2));
 in addition,
 because of the performance implications of applying the advice,
 the caller must have the
-.B CAP_SYS_ADMIN
-capability.
+.B CAP_SYS_NICE
+capability
+(see
+.BR capabilities (7)).
 .SH RETURN VALUE
 On success,
 .BR process_madvise ()
@@ -180,6 +184,15 @@ configuration option.
 The
 .BR process_madvise ()
 system call is Linux-specific.
+.SH NOTES
+When this system call first appeared in Linux 5.10,
+permission to apply advice to another process was entirely governed by
+ptrace access mode
+.B PTRACE_MODE_ATTACH_FSCREDS
+check (see
+.BR ptrace (2)).
+This requirement was relaxed in Linux 5.12 so that the caller didn't require
+full control over the target process.
 .SH SEE ALSO
 .BR madvise (2),
 .BR pidfd_open (2),
-- 
2.38.0.135.g90850a2211-goog

