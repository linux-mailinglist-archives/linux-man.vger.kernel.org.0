Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 255916A26D6
	for <lists+linux-man@lfdr.de>; Sat, 25 Feb 2023 03:42:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229452AbjBYCmv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 21:42:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbjBYCmu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 21:42:50 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60D826A7BF
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 18:42:41 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id r18so1093574wrx.1
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 18:42:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IJENOgQI5U4K0Cd3Cz8ZYtbHrrPVZ31+HBIkdQtuzXs=;
        b=HbV7WAfB/F+2pRlm5727KUlhW9dlfPKCIPgs5tkFfW/5JzSa9m2fC/C94eMaFzh59F
         vQRbyKstkYCU6KVtLpkDkG1l0LXue3NsKWrvFQpBElaDXVcLOxHzWZ2gwI1JsjBq8nH1
         yV0WGWGfOSioSdsJAQgeexAp0E2jCdP6oF6yVZXVUMLM6Es3tHk0TR+o1Ql9P4uyqZdG
         bGv6tsXv+Lmj9KMpTQGF7xnlCIvtTrMGHJFQpoW9wQMAO/mfZ3LjppoIUc/FvlDJf34m
         daDNd45kxcAGpw8vr8a5sfuSYSWWKuvCyn3KRFSqZ9FMfyV/DE5iDtYQ0tKa2F7zsX/6
         isGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IJENOgQI5U4K0Cd3Cz8ZYtbHrrPVZ31+HBIkdQtuzXs=;
        b=1yWtg3neRCyqPgpa+0BPbKeAWIFqagaQEScZ4NR67sw+yicpwtIfpB/v1BkNG3fCbG
         HusqPUgTusOj5dgqgYjwFGOXaDJCbjpMSuXE1KLF7pUhALKPJcrRAdLdtmA6rvOnaJ16
         BgU2PhY6qoAUbDqLR0PX4PIgol2XRHJk+PFi6GQYSdzcXPDBd4VkskB9rEnG/1x01VOt
         8UAPX906Aqq90bMpGYbz9Z/mCL45zK7ln057+0MvWTKBK67/1GJzsdJX0xYQMQYE38zq
         YSbtbtnJ1oMXiVobvf4zk5N7r5bc4g/srNd7CRNv80yVc6vuJKgthlnfMA9j3M+ZKjqQ
         Hg8Q==
X-Gm-Message-State: AO0yUKVYHZcScFOeQ8HWAB2MKzgh0spqtet8oi0ipqjTk+RNE4san3ZF
        0JYjpdV5MLgS2mmCIeCukhipvWcMgQA=
X-Google-Smtp-Source: AK7set8Fq91qogULFuOKLu3Y54GcMPXXPDfh8+HKcE65DBOc5TzeqmOpva4RGFFhVkDvimGTWQozbA==
X-Received: by 2002:adf:e242:0:b0:2c5:8c04:c6a8 with SMTP id bl2-20020adfe242000000b002c58c04c6a8mr16076308wrb.51.1677292959065;
        Fri, 24 Feb 2023 18:42:39 -0800 (PST)
Received: from localhost.localdomain ([2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326])
        by smtp.gmail.com with ESMTPSA id l20-20020a05600c4f1400b003e20cf0408esm970921wmq.40.2023.02.24.18.42.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 18:42:38 -0800 (PST)
From:   Fotios Valasiadis <fvalasiad@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com,
        Fotios Valasiadis <fvalasiad@gmail.com>,
        "Dmitry V . Levin" <ldv@strace.io>
Subject: [PATCH] ptrace.2: Add details about usage of PTRACE_GET_SYSCALL_INFO
Date:   Sat, 25 Feb 2023 04:42:12 +0200
Message-Id: <20230225024212.31500-1-fvalasiad@gmail.com>
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

Fixed incomplete doc. PTRACE_GET_SYSCALL_INFO wouldn't inform the user that they need to enable PTRACE_O_TRACESYSGOOD to get detailed information from said operation.

Signed-off-by: Fotios Valasiadis <fvalasiad@gmail.com>
Cowritten-by: Dmitry V. Levin <ldv@strace.io>
---
 man2/ptrace.2 | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man2/ptrace.2 b/man2/ptrace.2
index 55d9fd36d..ad0543b0b 100644
--- a/man2/ptrace.2
+++ b/man2/ptrace.2
@@ -1111,6 +1111,15 @@ stop.
 .B PTRACE_SYSCALL_INFO_NONE
 No component of the union contains relevant information.
 .RE
+.IP
+Note that in case of
+syscall entry or exit stops, the data returned by
+.B PTRACE_GET_SYSCALL_INFO
+is limited to type
+.B PTRACE_SYSCALL_INFO_NONE
+unless
+.B PTRACE_O_TRACESYSGOOD
+option is set before the corresponding ptrace stop has occurred.
 .\"
 .SS Death under ptrace
 When a (possibly multithreaded) process receives a killing signal
-- 
2.39.2

