Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 443C36036C9
	for <lists+linux-man@lfdr.de>; Wed, 19 Oct 2022 01:51:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229741AbiJRXvJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 19:51:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229742AbiJRXvJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 19:51:09 -0400
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com [IPv6:2607:f8b0:4864:20::649])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B68CE5BC24
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 16:51:08 -0700 (PDT)
Received: by mail-pl1-x649.google.com with SMTP id c10-20020a170902d48a00b001825736b382so10739744plg.15
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 16:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=xX7SZCGfmXZ9MOjmP6qyYqMKH5CuY/6TOQvAYYPIYYw=;
        b=sHdWx7G9/fM/c7r6+WsofMB7vJ9sI1JAAObHcdZNH616Gp1lQbsJRPvhDu7Xd2B194
         +vrmMs9tTJgglNdY2WqJa1ngBneV0HuUCNHVuoq+iOyLEQkE78VzhkYZi32RqLibB0js
         W9b4vUtBXVLSptnxcRa+kvdmIJaN2+INYv44xU0bNSVdncAFkPMj+uMsvnNo4UwDhmjR
         EKVIWSf/nvBrLN3qUyte5Yiz/4eeM1UaBCbYAHVpFTOKkvarQfDMewOZ/QS+3D5kUbWJ
         8bcTTLX3ddwOE/GYLMhpJKEyuq/NgARqn/nbwEsEzpNUEjV4SPwopcpHjpDcJ6srJ5Vs
         Y7iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xX7SZCGfmXZ9MOjmP6qyYqMKH5CuY/6TOQvAYYPIYYw=;
        b=biaVH1n6KvXYaqJ6pyI2hCMuS4lo+Lyj4oyULd2KBSFFQTHpbuU1dvBW7+3FgxfgH3
         tIDIPtsbKJzY3MfrA2mqUz3Ntouzc6XZdoKQYiTiPZ6Kkm52jNCMU0vT377xoQb1SmZD
         vDqbnXmJIyPERJORPtuBMB9fVSJrRv+ugcqqNABt3mf1+ZDRjvO0jOS+orE7Aok1bpEx
         bVpRvXKc/jMajZJBS2EavlwNOiHle1rm7UYzKSLKkuouZ6BUzFKTsg0Drwjbr5lYQHbk
         qf9Vn8O9zA4fPUoBVxWttF0jGIXtrEcvszX8GMH+JCyDJcaFdijk0lzL8AaTZoxQR0tU
         vwUA==
X-Gm-Message-State: ACrzQf1r2o1z76leAU82bEU1syUIh7mkKUdUko3cGYSfJ+UJeL/uRTMr
        sbtRznZqI0kHzBUUAP0smviYX3mJSsqy
X-Google-Smtp-Source: AMsMyM4v6d/D/srODISveiVroAryRJvrZrOw7rGp4Zd4Yrdrmph7oorymu4glSMyQYuMTHgI23j+Iqrvgr0P
X-Received: from zokeefe3.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:1b6])
 (user=zokeefe job=sendgmr) by 2002:a17:902:d58a:b0:17f:7ed0:233a with SMTP id
 k10-20020a170902d58a00b0017f7ed0233amr5290016plh.23.1666137068275; Tue, 18
 Oct 2022 16:51:08 -0700 (PDT)
Date:   Tue, 18 Oct 2022 16:50:50 -0700
In-Reply-To: <20221018235051.152548-1-zokeefe@google.com>
Mime-Version: 1.0
References: <20221018235051.152548-1-zokeefe@google.com>
X-Mailer: git-send-email 2.38.0.413.g74048e4d9e-goog
Message-ID: <20221018235051.152548-4-zokeefe@google.com>
Subject: [PATCH man-pages v2 3/4] process_madvise.2: CAP_SYS_ADMIN cleanup
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

The initial commit of process_madvise(2) to man-pages project included
an error, indicating that CAP_SYS_ADMIN capability was required when, in
fact, CAP_SYS_NICE was the required capability.

The initial commit of process_madvise(2) to Linux, commit ecb8ac8b1f14
("mm/madvise: introduce process_madvise() syscall: an external memory
hinting API"), relied on PTRACE_MODE_ATTACH_FSCREDS (see ptrace(2)),
but was amended by commit 96cfe2c0fd23 ("mm/madvise: replace ptrace
attach requirement for process_madvise") which replaced this with a
combination of PTRACE_MODE_READ and CAP_SYS_NICE (PTRACE_MODE_READ to
prevent leaking ASLR metadata and CAP_SYS_NICE for influencing process
performance).

Correct this in the man-page for process_madvise(2).

Fixes: a144f458b ("process_madvise.2: Document process_madvise(2)")
Cc: Suren Baghdasaryan <surenb@google.com>
Cc: Minchan Kim <minchan@kernel.org>
Signed-off-by: Zach O'Keefe <zokeefe@google.com>
---
 man2/process_madvise.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
index 6208206e4..7bee1a098 100644
--- a/man2/process_madvise.2
+++ b/man2/process_madvise.2
@@ -113,7 +113,8 @@ check (see
 in addition,
 because of the performance implications of applying the advice,
 the caller must have the
-.B CAP_SYS_ADMIN
+.\" commit 96cfe2c0fd23ea7c2368d14f769d287e7ae1082e
+.B CAP_SYS_NICE
 capability.
 .SH RETURN VALUE
 On success,
-- 
2.38.0.413.g74048e4d9e-goog

