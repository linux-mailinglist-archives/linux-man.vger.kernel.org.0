Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50F716A3591
	for <lists+linux-man@lfdr.de>; Mon, 27 Feb 2023 00:22:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229535AbjBZXWv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 26 Feb 2023 18:22:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229470AbjBZXWu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 26 Feb 2023 18:22:50 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3A8E12859
        for <linux-man@vger.kernel.org>; Sun, 26 Feb 2023 15:22:43 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id cy6so18923494edb.5
        for <linux-man@vger.kernel.org>; Sun, 26 Feb 2023 15:22:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PLXk1jPUX+K6ViEBx3N/25yAxDMb1wqsEpmkdM0By5c=;
        b=BHcKZM33txZ1lYSC59xA1h9C2p29DGo5p1gjaKBcGoEymUQMKqRX6aiic27t6KqjsP
         1xot4ePmxMzY9RDGkc3V7Py200QzxC+8c13vHc0XLWuDwRkO2ZcrT+ijJI8hpYNS3E1m
         /XyLzbKMkNwsM7TTV+4OrzBt0lcxjPaL1qcnFGE361l1eMKYZwYcnkJYcCfGDOvJDpcB
         vNJ357lsmMtUbnBEQ3zcoPlnp35XXQtJgHthtl+qhi+loxSXJhxcsGLmqKMLOlrFxm0Z
         G4k1RDn0G4BuoVOKpkTM+9Q6xfME2SOONavqDdEUcvdntLF8DRE4AhzlHs3REz1L184r
         2e2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PLXk1jPUX+K6ViEBx3N/25yAxDMb1wqsEpmkdM0By5c=;
        b=H8/rdX5LSwG44nMgNlKO75xRtzFuGQkS/GXZZJSvxq+4caOjOzEKsC3l557Y++1GnU
         ri3LShIKYRskltPcjamBREbS50PuwPq9GTtFkd3G/qa3Z7SM/Y1ismKNYzf2pVSd9ufO
         B+bHh1neaW44gWSD/RpW1gOyDXY/YbhaTERyGdo5LXM2GUgBdfzCkOjypBMTkcYMc5Xs
         B+zbBfni25iCRr88K1A4ieYpjpMGqjM2DWbf3DVX/rjvLco0GkvtiDgY8WTMvANZufwH
         9l69BwnJy7YzE9D/9ZjABwateVPIu62E80Ia0EYysSpEgdQuerTrFqa7fYOWPl2NiIc8
         z8cQ==
X-Gm-Message-State: AO0yUKXpdHr9Ip02IsV772nH2zMWRXRgCVPhPXOQVeY0+wWI/HKulPTj
        JVD5B4oHmQ5popIcJw9DRgT0WEDkNDI=
X-Google-Smtp-Source: AK7set9dXo+eY1DUH1xIgBSXLoFiFxoY9WuEBlV+1Yq6/UVRfFLKM/eWUKQyW2CBjXQxCj6jSCK9tg==
X-Received: by 2002:a05:6402:b11:b0:4ac:beba:dc89 with SMTP id bm17-20020a0564020b1100b004acbebadc89mr26841083edb.38.1677453761623;
        Sun, 26 Feb 2023 15:22:41 -0800 (PST)
Received: from localhost.localdomain ([2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326])
        by smtp.gmail.com with ESMTPSA id s2-20020a50d482000000b004aab36ad060sm2391322edi.92.2023.02.26.15.22.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Feb 2023 15:22:40 -0800 (PST)
From:   Fotios Valasiadis <fvalasiad@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com,
        lineprinter0@gmail.com, ldv@strace.io,
        Fotios Valasiadis <fvalasiad@gmail.com>
Subject: [PATCH] ptrace.2: Add details about usage of PTRACE_GET_SYSCALL_INFO
Date:   Mon, 27 Feb 2023 01:22:01 +0200
Message-Id: <20230226232201.4237-1-fvalasiad@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230225105601.6079-1-fvalasiad@gmail.com>
References: <20230225105601.6079-1-fvalasiad@gmail.com>
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

Document the role of PTRACE_O_TRACESYSGOOD option in connection with PTRACE_GET_SYSCALL_INFO.

Signed-off-by: Fotios Valasiadis <fvalasiad@gmail.com>
Cowritten-by: Dmitry V. Levin <ldv@strace.io>
Complements: fc91449cb "ptrace.2: Document PTRACE_GET_SYSCALL_INFO"
---
 man2/ptrace.2 | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man2/ptrace.2 b/man2/ptrace.2
index 55d9fd36d..9737b3825 100644
--- a/man2/ptrace.2
+++ b/man2/ptrace.2
@@ -1111,6 +1111,15 @@ stop.
 .B PTRACE_SYSCALL_INFO_NONE
 No component of the union contains relevant information.
 .RE
+.IP
+In case of system call entry or exit stops,
+the data returned by
+.B PTRACE_GET_SYSCALL_INFO
+is limited to type
+.B PTRACE_SYSCALL_INFO_NONE
+unless
+.B PTRACE_O_TRACESYSGOOD
+option is set before the corresponding system call stop has occurred.
 .\"
 .SS Death under ptrace
 When a (possibly multithreaded) process receives a killing signal
-- 
2.39.2

