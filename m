Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0795F6B53E3
	for <lists+linux-man@lfdr.de>; Fri, 10 Mar 2023 23:10:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230168AbjCJWJ6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Mar 2023 17:09:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231629AbjCJWJi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Mar 2023 17:09:38 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AE3B12877
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 14:09:10 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id s11so26291269edy.8
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 14:09:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678486140;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6nrqTyKZ7UmlgjbuXnGwkSSps3vzTkTiLX9T4r2nuro=;
        b=SvQ9CxjCR2WWe2xtDMbNQkolJxfQoS523/n8gvfz97BYwPPgEqaEE+G6styv5USu4z
         KCYhwx6rqMzlXa//rmAGFS29KHzJOVONDG2sk4naF4VL78rgdy4Z3FRNwKSn5MOSqSUR
         xagGzmNkbviuT49ILtOZuq8GT01tp7cLDDVmHT7VRuXurxKrGb+LAFO2X0O7PrqqiF4e
         D9yyExybbutMCSjF14wVn71n+W5GBLhpQIbyX8TXcB0+zLNdJBlSqPQxDR7Oe6yQc1y2
         yMaN/HrZtGJzIhN+Slb0kRqNXnSLv2/wQapzqeRInEwAPpz9NYbYHxnm5ab1k391Vlgv
         iDIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678486140;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6nrqTyKZ7UmlgjbuXnGwkSSps3vzTkTiLX9T4r2nuro=;
        b=r8AydBt/sOGmQ4MknsAuuc1GBu3PZTS671QH4D51qL9WXet2y7wUygpsr8pOQE0zSR
         kS9P8VqFoJYcPhQbbtyDCb9LFmd3ZVl0CaCXKTr3jRJ94UCPrwx6FnU6LEPU7N6tLSou
         IKj1xADRp8xkk3XTbw3kapQrwkm92Od3w2KYoSM0xaanuga71sPnszDwWE9YjinSuBlA
         RC2Uw11V+07841JZu3H9/BirCn/tNUj0/sYyA/FfHn2CU8gLYFEBt2oWgusNCoIr14fG
         mzLO9sBWYEL2PuVdAoazlAkVMU7LwbE/WdbCSJ03pvMHIH57fzB7RJOgr1XHNje9DEXT
         3JmA==
X-Gm-Message-State: AO0yUKVWuReFbjUTfq8pP6Uim4O+S/TyN86zGW6AHQrY1N1YrQH/9WNd
        dT58eJ8i/c/20j5KIpv82uA=
X-Google-Smtp-Source: AK7set93/tGqbhQgQMDJJIGrrIMMftBni2ekUSCsbTyayzR5qPCGFxcLRTDyE6hm1ZXttvwhR02QDg==
X-Received: by 2002:a17:907:8a06:b0:889:ed81:dff7 with SMTP id sc6-20020a1709078a0600b00889ed81dff7mr33831044ejc.9.1678486140389;
        Fri, 10 Mar 2023 14:09:00 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id oz16-20020a170906cd1000b008da6a37de1bsm369034ejb.10.2023.03.10.14.09.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 14:09:00 -0800 (PST)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v4 3/3] landlock.7: Give a pointer to how to implement a fallback mechanism
Date:   Fri, 10 Mar 2023 23:08:51 +0100
Message-Id: <20230310220851.22261-3-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230310220851.22261-1-gnoack3000@gmail.com>
References: <20230310220851.22261-1-gnoack3000@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man7/landlock.7 | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/man7/landlock.7 b/man7/landlock.7
index 9c305edef..c173cbb98 100644
--- a/man7/landlock.7
+++ b/man7/landlock.7
@@ -393,12 +393,14 @@ accessible through these system call families:
 Future Landlock evolutions will enable to restrict them.
 .SH EXAMPLES
 We first need to create the ruleset that will contain our rules.
+.PP
 For this example,
 the ruleset will contain rules that only allow read actions,
 but write actions will be denied.
 The ruleset then needs to handle both of these kinds of actions.
-See below for the description of filesystem actions.
-.PP
+See the
+.B DESCRIPTION
+section for the description of filesystem actions.
 .in +4n
 .EX
 struct landlock_ruleset_attr attr = {0};
@@ -429,6 +431,16 @@ if (ruleset_fd == \-1) {
 .EE
 .in
 .PP
+The ruleset we have constructed requires Landlock ABI version 3 or higher.
+On kernels which do not provide that,
+the call to
+.BR landlock_create_ruleset (2)
+will fail.
+You can build a more graceful fallback mechanism
+by using the version compatibility table from the
+.B VERSIONS
+section.
+.PP
 We can now add a new rule to this ruleset thanks to the returned file
 descriptor referring to this ruleset.
 The rule will only allow reading the file hierarchy
-- 
2.39.2

