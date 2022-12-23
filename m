Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79F28655365
	for <lists+linux-man@lfdr.de>; Fri, 23 Dec 2022 19:00:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232156AbiLWSAF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Dec 2022 13:00:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230489AbiLWSAE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Dec 2022 13:00:04 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB3AE13D12
        for <linux-man@vger.kernel.org>; Fri, 23 Dec 2022 10:00:03 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id h16so5167719wrz.12
        for <linux-man@vger.kernel.org>; Fri, 23 Dec 2022 10:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=55orvct/8nn29yA2rxGFnkMpgnUcWrBjnx0spNtkvqA=;
        b=GdxkG60MOPdN8UQEBkqm9OouWNNpPVRgtcq9/T9itULbaGm4CncXg4u/bxZ4VSRnEX
         0e7dS7D8zyRq0CLxw6c2YbpzWMySjXdsbRaRb6Vhu04EECbTbDjfMDY7uuJORzEHPWuP
         GIUQkMSPdMJWixL+uG3aLLn891SUErncT1KhwIcDZtB6YMkllLNl2Eazq6bGsdkIEL93
         +/1NPABI86c0WJQ0iTCpMBjjVJfSuDny6S1gTfb5GdgEOrUx19Xcrp2lYI75+T0kTkZQ
         9wMTAQAFDF8xDQL9+empTieKdOFmf5M8kAGGv/lTLvIupCsosBiNAP1VYg9lGecrCQNh
         pNAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=55orvct/8nn29yA2rxGFnkMpgnUcWrBjnx0spNtkvqA=;
        b=XrDHvzprS9/q1J/OfjuhkzsYJzugbCIc2oujkIRZ+QoGcp7c4iS50aKAJw6heuL4WE
         jD61Bkud+F3EGmLmccNnzNNyNKCCAfp/xrYU1UpLZeLhnmnfynj97+Ir463YMgqOzVAy
         9jgPokrfn3jzXuu4vlIoJITmN80LTKpmjhyQa7HVF7hHAHQlyuEIiO0aTNcxZFPR+B8U
         96rSjJyufxUSc1uXNoGGJf2fDLYBVUL+OfBtBE3kRykQ3OAqUSJta7QXfklb7/cC0wgR
         LIt1NFu8MFnCMq0OofGUMgaEJ8H1l5prevrJ4AEjYA6LJgxQ6k2Fv/ymwAmsoseiAakX
         etSQ==
X-Gm-Message-State: AFqh2kqyuzHVhUYdnjY3ZOHJufmdb1VWCOfrJ0Gx++T0RS40dBYSE8rr
        3K8oT5Lh8y/9yBbVskqxW7wbr6LtZw7oBQ==
X-Google-Smtp-Source: AMrXdXss7yirFvS4s23J8KhirrBKnEn+XL+VZuMcOIxPOYiB1rWtcYqM7Z5AA7dgmTATcrBl7GrhWQ==
X-Received: by 2002:adf:f2cd:0:b0:242:29fc:ad51 with SMTP id d13-20020adff2cd000000b0024229fcad51mr10539417wrp.20.1671818402118;
        Fri, 23 Dec 2022 10:00:02 -0800 (PST)
Received: from vm.nix.is (vm.nix.is. [2a01:4f8:120:2468::2])
        by smtp.gmail.com with ESMTPSA id n14-20020adfe34e000000b002366dd0e030sm3680946wrj.68.2022.12.23.10.00.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Dec 2022 10:00:01 -0800 (PST)
From:   =?UTF-8?q?=C3=86var=20Arnfj=C3=B6r=C3=B0=20Bjarmason?= 
        <avarab@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, Tejun Heo <tj@kernel.org>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Craig Small <csmall@enc.com.au>,
        Alexey Dobriyan <adobriyan@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        =?UTF-8?q?=C3=86var=20Arnfj=C3=B6r=C3=B0=20Bjarmason?= 
        <avarab@gmail.com>
Subject: [PATCH 2/2] proc.5: the "comm" field can be longer than 16 bytes
Date:   Fri, 23 Dec 2022 18:59:53 +0100
Message-Id: <patch-2.2-0d1254ecb-20221223T174835Z-avarab@gmail.com>
X-Mailer: git-send-email 2.39.0.1106.gf45ba805d1a
In-Reply-To: <cover-0.2-000000000-20221223T174835Z-avarab@gmail.com>
References: <cover-0.2-000000000-20221223T174835Z-avarab@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Since torvalds/linux@6b59808bfe48 (workqueue: Show the latest
workqueue name in /proc/PID/{comm,stat,status}, 2018-05-18) the limit
of 15 character comm names hasn't applied to "kworker" processes. This
can be seen e.g. on my Linux v5.10 box:

	$ awk '{print $2}' /proc/*/stat 2>/dev/null | grep kworker  | sort -R | head -n 5
	(kworker/3:1-mm_percpu_wq)
	(kworker/0:0H-events_highpri)
	(kworker/1:1H-kblockd)
	(kworker/u16:1-events_unbound)
	(kworker/u17:0)

Signed-off-by: Ævar Arnfjörð Bjarmason <avarab@gmail.com>
---
 man5/proc.5 | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/man5/proc.5 b/man5/proc.5
index 115c8592e..b23dd1479 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -2092,9 +2092,13 @@ The filename of the executable, in parentheses. Tools such as
 may alternatively (or additionally) use
 .IR /proc/ pid /cmdline.
 .IP
-Strings longer than
+For userspace, strings longer than
 .B TASK_COMM_LEN
 (16) characters (including the terminating null byte) are silently truncated.
+Since Linux version 4.18.0 a longer limit of 64 (including the
+terminating null byte) has applied to the kernel's own workqueue
+workers (whose names start with "kworker/").
+.IP
 This is visible whether or not the executable is swapped out.
 .TP
 (3) \fIstate\fP \ %c
-- 
2.39.0.1106.gf45ba805d1a

