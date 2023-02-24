Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADA306A1FB0
	for <lists+linux-man@lfdr.de>; Fri, 24 Feb 2023 17:32:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229518AbjBXQcn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 11:32:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229685AbjBXQcm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 11:32:42 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BE146A9EF
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 08:32:35 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id l25so14113793wrb.3
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 08:32:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UDE+O/C+EkkkOJKDRE9JRbCHrKY/Mn3X/fw9d5+8Obc=;
        b=T8qFWjFgGAwOtAtpV9qMVWQIkENYceOJRNNIN0my5ieWKpE9I0GtL+/qWsTgWcNgYg
         rP1BGxfP5or10qwX+ba48vqqhVW84xl0opPtVhKkV+/3uhSPbTdzV9WKaHcU+Jp/biLt
         fAUzfZKAwAiuvvrKfjTNc9gwbRjIHyyFwPh65+GfJDfIOM24ghCnM6aNWindlObpQhQc
         sPjs0zcNeWnXkyiZZs35wrnvx/9nYIgUpFOhAgexMpLF2nGXeEIlrajqcn+Xd/rNd24g
         Mf85eCYm97001H8znq56q0veF6Ye0pFeJdpzgtMqbNVlAAw/p5x+3rJsYObiuAY58uR+
         Co0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UDE+O/C+EkkkOJKDRE9JRbCHrKY/Mn3X/fw9d5+8Obc=;
        b=mL42anKbwfQ36vXgng+bdDsMFHnj73y0sN72UrOGyf6zl9J77CtDe0/9ULE5FGP7/K
         a2VXkYrP9RQ4jF8yKSTix51wlvhK0qgackMcuFDpxVni+z7uwj40yZmb/qbTfFDi9UA1
         CDFOEqs0QHEf6Gw7l+UO80mSqC5PGCw/oiliVqqHFL5vls2JE1prWqDjbcM9EiHUj3O5
         F4kCRX4DZfGwW/Arc8XeWnk8XUqaEcRJRECNXmXqmTywcHCyhFupc9qPLiXlxi6zHGgv
         bTx2CVDXIgkmelqfOoMzH6vmzcqfcWJYymZA3pA3WLXD6ogda9PqSkbpl66o6rsTxF+u
         8mug==
X-Gm-Message-State: AO0yUKX4+O3STHy5z/va/k12ihXN9Q8/uxo/0IHWjH3zcrBpF//NBZ4j
        X5LVCs0kObkrth/U/I4+IDcCPZi2UpM=
X-Google-Smtp-Source: AK7set+YmEBeARiYOH0jGzTuSiC29giwvfpW8Tu+vjGJqsMEI78Zcb1/pkD1tC7ROn1DaBVR0KtIcQ==
X-Received: by 2002:a5d:458b:0:b0:2c7:7b3:36c6 with SMTP id p11-20020a5d458b000000b002c707b336c6mr9687160wrq.52.1677256353470;
        Fri, 24 Feb 2023 08:32:33 -0800 (PST)
Received: from localhost.localdomain ([2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326])
        by smtp.gmail.com with ESMTPSA id a16-20020adffb90000000b002c54c92e125sm12414945wrr.46.2023.02.24.08.32.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 08:32:32 -0800 (PST)
From:   Fotios Valasiadis <fvalasiad@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com,
        Fotios Valasiadis <fvalasiad@csd.auth.gr>,
        Fotios Valasiadis <fvalasiad@gmail.com>
Subject: [PATCH] ptrace.2: Add details about usage of PTRACE_GET_SYSCALL_INFO
Date:   Fri, 24 Feb 2023 18:31:42 +0200
Message-Id: <20230224163142.29934-1-fvalasiad@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Fotios Valasiadis <fvalasiad@csd.auth.gr>

Fixed incomplete doc. PTRACE_GET_SYSCALL_INFO's description wouldn't inform the user that they need to enable PTRACE_O_TRACESYSGOOD to get detailed information from said operation.

Came upon this bug after writing a test program using PTRACE_O_TRACESYSGOOD. After failing to find what's wrong I posted a stackoverflow question which you can find right here: https://stackoverflow.com/questions/72410182/ptrace-get-syscall-info-always-returns-info-op-as-ptrace-syscall-info-none

Nate Eldredge found out what's wrong by looking into the kernel's source code, here is a link to the relevant part https://github.com/torvalds/linux/blob/8291eaafed36f575f23951f3ce18407f480e9ecf/kernel/ptrace.c#L1018

In the code it can be seen that the union is filled if and only if the signal matches "SIGTRAP | 0x80", a signal which is only sent if the PTRACE_O_TRACESYSGOOD option is set. You can read about that in the PTRACE_O_TRACESYSGOOD section of ptrace.2 's manual.

I am unaware if Nate wants to be included as a co-author of this commit, nor am I aware of any way to contact him.

Signed-off-by: Fotios Valasiadis <fvalasiad@gmail.com>
---
 man2/ptrace.2 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man2/ptrace.2 b/man2/ptrace.2
index 55d9fd36d..b437b4f44 100644
--- a/man2/ptrace.2
+++ b/man2/ptrace.2
@@ -1033,6 +1033,11 @@ If the size of the data to be written by the kernel exceeds the size
 specified by the
 .I addr
 argument, the output data is truncated.
+To obtain complete information during system call entry or exit stops,
+you should enable the
+.B PTRACE_O_TRACESYSGOOD
+option using
+.B PTRACE_SETOPTIONS.
 .IP
 The
 .I ptrace_syscall_info
-- 
2.39.2

