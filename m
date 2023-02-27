Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0513B6A4AA9
	for <lists+linux-man@lfdr.de>; Mon, 27 Feb 2023 20:18:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229542AbjB0TSH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 27 Feb 2023 14:18:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbjB0TSH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 27 Feb 2023 14:18:07 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 321D840FC
        for <linux-man@vger.kernel.org>; Mon, 27 Feb 2023 11:18:03 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id i34so30148691eda.7
        for <linux-man@vger.kernel.org>; Mon, 27 Feb 2023 11:18:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tMEkCLLHqOZ7QwUgG9VZxpCSdyFgVLfsa+6O/RuR2JA=;
        b=kwZwTEPJt7SNqkjoELySbc4NWfwQfhTzgr1Ed5WNEXJXAC3VXHw0f8BODp8v3lN5pe
         EkpKClUgSGaYjzh2pNqxVOz4CyOKIbzx6sVVcZl2OO2zU9mBxWy59gjMyReUwZFuxm3k
         1fEzXl3O5g0yRlY9Le33UJXmw/hXT5Hv6ocLRB71zyyquFgAsUjuCgmncYwoVhHTmF8w
         o8BIxoHUaRF0Kx0KNm/gEpquq2P4tnn0QkS3zqaGUZqcsUAJ2bvEJvqJiETDo50p7eOx
         1srepPFmp7SnufJZAa77T7uNaKE6JOEG0cupteVtnzrjKA+wTmZc80WLHbMghXYOGqow
         ot5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tMEkCLLHqOZ7QwUgG9VZxpCSdyFgVLfsa+6O/RuR2JA=;
        b=lhpP6uo+tPkEvhBruaovBOuKMTWdf6GSKeFCiGqArhO27lBsHvKtpXjGSEbKPr0K04
         4AxMDNW6e5SbVxuFePlBvM1ui36N3FKame//JmVt9bQExKPzV+2kdYB4mnrefQrq7/pZ
         cFvlUabuoj1GkG7HQLFckN4VsxgVbg8OlLg//c8S1cOMXsffNoYZHQpSxGlOd4DLgykm
         hmewmqnJet+nDiS+RvZwd2s+oJvUz8VAnP9nwyBlFJ8p/FmIiYoJ8mxoGOAkz0jIpg+U
         gcG4ee1rqwMEnOEajXdXI2tyPv4DmfnCFTqIBSggfkccwYsn8kHae0V8xty9JxWwGIzP
         cUmQ==
X-Gm-Message-State: AO0yUKWsDgjNj6jUp6Dqod+o7mPqrnpyjp4XG5mnCjaieiUGn7V5KOuR
        bBOTOz+rHox8qC8BBlgV8Osml4gt6ik=
X-Google-Smtp-Source: AK7set//I9ugVOMiSsDArVDqIYyexDKhmql/FJLeOcAInPpMZ1SsiW6JWjOIFVynbGZsbplJBIdUIg==
X-Received: by 2002:a17:906:8419:b0:88a:1ea9:a5ea with SMTP id n25-20020a170906841900b0088a1ea9a5eamr29740853ejx.65.1677525481342;
        Mon, 27 Feb 2023 11:18:01 -0800 (PST)
Received: from localhost.localdomain ([2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326])
        by smtp.gmail.com with ESMTPSA id m9-20020a1709060d8900b008ec4333fd65sm3553449eji.188.2023.02.27.11.18.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Feb 2023 11:18:00 -0800 (PST)
From:   Fotios Valasiadis <fvalasiad@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, ldv@strace.io, mtk.manpages@gmail.com,
        lineprinter0@gmail.com, Fotios Valasiadis <fvalasiad@gmail.com>,
        Nate Eldredge <nate@thatsmathematics.com>,
        Alejandro Colomar <alx@kernel.org>
Subject: [PATCH] ptrace.2: Add details about usage of PTRACE_GET_SYSCALL_INFO
Date:   Mon, 27 Feb 2023 21:17:31 +0200
Message-Id: <20230227191731.15069-1-fvalasiad@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <9f4aaf34-66cc-554f-d45f-73f0bb9b4a94@gmail.com>
References: <9f4aaf34-66cc-554f-d45f-73f0bb9b4a94@gmail.com>
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

Document the role of PTRACE_O_TRACESYSGOOD option in connection with
PTRACE_GET_SYSCALL_INFO.

Came upon this after writing a test program using PTRACE_GET_SYSCALL_INFO.
After failing to find what's wrong I posted a StackOverflow question
which you can find right here:
<https://stackoverflow.com/questions/72410182/ptrace-get-syscall-info-always-returns-info-op-as-ptrace-syscall-info-none>

Nate Eldredge found out what happens by looking into the kernel's source
code, here is a link to the relevant part
<https://github.com/torvalds/linux/blob/8291eaafed36f575f23951f3ce18407f480e9ecf/kernel/ptrace.c#L1018>

In the code it can be seen that in case of system call entry or
exit stops, the union is filled if and only if the signal matches
"SIGTRAP | 0x80", a signal which is only sent if the PTRACE_O_TRACESYSGOOD
option is set.  You can read about that in the PTRACE_O_TRACESYSGOOD
section of ptrace(2)'s manual.

Complements: fc91449cb "ptrace.2: Document PTRACE_GET_SYSCALL_INFO"
Cowritten-by: Dmitry V. Levin <ldv@strace.io>
Signed-off-by: Dmitry V. Levin <ldv@strace.io>
Signed-off-by: Fotios Valasiadis <fvalasiad@gmail.com>
Acked-by: Nate Eldredge <nate@thatsmathematics.com>
Cc: Elvira Khabirova <lineprinter0@gmail.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
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

