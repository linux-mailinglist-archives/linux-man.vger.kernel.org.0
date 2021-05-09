Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D838037786C
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 22:20:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230050AbhEIUVR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 16:21:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230047AbhEIUVM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 16:21:12 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB8E3C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 13:20:08 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id b11-20020a7bc24b0000b0290148da0694ffso9978377wmj.2
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 13:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mO5s6+fEMR5J87NRrDcXWaz32yRNCrqAbIpsaoosgZA=;
        b=GhX9rjNQJcSwz95as3cgWilNttxioErvvcQfJrkuHu1m1KsPoeGXlqZAw+dPfnvJwq
         XLaIl/Cj7mKyfjHjFYtPMN6a8V8Bp1wHoXKTxCNRZcI5nTGNTv6ZyOCavKfRpINXdAg+
         EqXQAb8R8N8r/IA4PYiTJF+HilyO0AqY7xN02sJu9WWRAZbIcrWdMNLE6zyzvKD1zz2J
         t7/I3rVM9barLiaPvB/mqozMSPtA70+s7caxZTwY04F6elnxmsh5RsrGPoM1N8DoEL4y
         nbROCjlChj945hsZFmzU3vldbPFpujX74KYWIUgI7f5b81d4kGXe2muo/myzjWBfzsfx
         XyGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mO5s6+fEMR5J87NRrDcXWaz32yRNCrqAbIpsaoosgZA=;
        b=fMeQ9DO62CQc26fzsb7iQxIZlgzCGW/FcWtUk118j4qmyxjhhTCw+VUSQvS98jr8O2
         DBdwSFDmrqwjpfC0MubzK50q/UpSEzXuLPpzdeF5UWqvTAIZgLuTj+h7E9++nkq1MGGE
         W+D31MKTk3ACsmBYUAqwOTOoiyeA7AZnRhvJe6bTZ/BkYrvcg3phhomLg1TS+FRPPqMh
         68rcdVNpZyPuG3kKSvSPkcWRRu7R5+KNL0UwPOAd3qzFYuRfsFMvez5+wbobQcXbvXp6
         ++hOVXaoNa8Td4X9zGYUBNVB/DtmSZGa0Ory/241tijDAlspInyJ81fsSAJKZsPlk9P7
         bNiw==
X-Gm-Message-State: AOAM530bXQunYhAMgr6nqQ2z32hSLciCiZcNlv/4FOtOy8RLpVwcyJhI
        3XY9kg+YCaKr0tYJnK3VGrDMpxlKeXFFgw==
X-Google-Smtp-Source: ABdhPJxUBAR2Kv/YJSuwxF4eecXnmuKpO2IvB/zm5ocY2iVrhAL2aaqwuDKCQSATnVdwk5Cl2BQlCw==
X-Received: by 2002:a7b:c217:: with SMTP id x23mr32750328wmi.26.1620591607632;
        Sun, 09 May 2021 13:20:07 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b10sm22591346wrr.27.2021.05.09.13.20.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 13:20:07 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     "Dmitry V. Levin" <ldv@altlinux.org>, linux-man@vger.kernel.org,
        Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 06/17] ptrace.2: mention PTRACE_GET_SYSCALL_INFO in RETURN VALUE section
Date:   Sun,  9 May 2021 22:19:39 +0200
Message-Id: <20210509201949.90495-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509201949.90495-1-alx.manpages@gmail.com>
References: <20210509201949.90495-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: "Dmitry V. Levin" <ldv@altlinux.org>

Mirror the wording about PTRACE_GET_SYSCALL_INFO return value semantics
from "DESCRIPTION" section to "RETURN VALUE" section.

Reported-by: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Complements: fc91449cb "ptrace.2: Document PTRACE_GET_SYSCALL_INFO"
Signed-off-by: Dmitry V. Levin <ldv@altlinux.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ptrace.2 | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/man2/ptrace.2 b/man2/ptrace.2
index 56dcbbf4b..ffaf8db0d 100644
--- a/man2/ptrace.2
+++ b/man2/ptrace.2
@@ -2327,8 +2327,11 @@ On success, the
 requests return the requested data (but see NOTES),
 the
 .B PTRACE_SECCOMP_GET_FILTER
-request returns the number of instructions in the BPF program, and
-other requests return zero.
+request returns the number of instructions in the BPF program,
+the
+.B PTRACE_GET_SYSCALL_INFO
+request returns the number of bytes available to be written by the kernel,
+and other requests return zero.
 .PP
 On error, all requests return \-1, and
 .I errno
-- 
2.31.1

