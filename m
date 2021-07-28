Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C799D3D9698
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231359AbhG1UUl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231398AbhG1UUk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:40 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD3CCC061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:38 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id m20-20020a05600c4f54b029024e75a15716so2488515wmq.2
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fShiKrAJWeQoSu6nzJ9HS6A8CxQWmdPhnrCiaHEdaX8=;
        b=VkQUANnmvLmnvAelPhspjhaVF6fB4eVYQ/UvLBXMnYLY7pvsuIlmIvrHeBxMWy8qlc
         zhwIlUJJf2c7jbPybeyF2Jf90JMgQr+80EmH06x1RbBBHg2Cgtm+QRoDNIHCwCkmKAxD
         LdPg+O+haynB0KhMqAR7qujenxbw9C2MR6MHVl7RBIkwFx4yyIv6lC3xXkJvehF9N/vv
         J7gdECbcAhNd4ziC+gn+OR9LDzjd8cdMAFO23RX0EylGvGuIO8ys3DnEEUlHuJ4p3Ak+
         tvZ2LR70H0PKX10CyEIDxm5DdHSxdPHps0m31sIznxv0DSwqcyWmKcdmHSM7whPf0M0T
         wkTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fShiKrAJWeQoSu6nzJ9HS6A8CxQWmdPhnrCiaHEdaX8=;
        b=uFluUh1Ty7Mh14fWQOZiEb9Ikgsulr6th0ZwGo8v3kPow+EzIu+UpX14Oso54xZ2BC
         ITnVL908TShU7d1CCmJBc5JCoJLfLGa0GOgYIFGut/DJf9ozeE+I06Yoe3m6/jAfs4fk
         /yKFraAw4+x/w0AjVsWIU6aMjpXscvAYxTlJ23G6//r5IHTboCpax2WVCtwxRBC6kLB7
         CkHEWoKos72kfgaAs8CjLIkk1RLErJLAJczjD96q0pIaRx9ykyZnRl2G8JBfJ2v/6Ux9
         K1DnIytOZn0jTiSq3+PuagJne1Hv5i4PFZdLXKE0naAwkIHlkwb85swvarB2m5Py0/2x
         eDLw==
X-Gm-Message-State: AOAM532cJa2se1HDEbaM+Opa1fG2al1j1fVSk8t7kjG4JXKPdDmu3Ayi
        ILNuZWODmf3nhFoxa0y3RGE=
X-Google-Smtp-Source: ABdhPJz/VE9GSIfOlX/p9oYAaHJvCCH3RNvxEzM+/4ajGgL7G+ln1dj4RseN3StvUBcAR0vOu8C2vQ==
X-Received: by 2002:a1c:7208:: with SMTP id n8mr10517776wmc.89.1627503637594;
        Wed, 28 Jul 2021 13:20:37 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:37 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?q?=D0=BD=D0=B0=D0=B1?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 25/32] pipe.7: also mention writev(2) in atomicity sexion
Date:   Wed, 28 Jul 2021 22:20:01 +0200
Message-Id: <20210728202008.3158-26-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: наб <nabijaczleweli@nabijaczleweli.xyz>

writev(2) notes that buffers don't interleave with other process'
(a reasonable question to ask), but points to pipe(7) for an exception.
pipe(7) did /not/ mention "writev", "iov", "scat", or "gath", which are,
in order, reasonable search terms: this was confusing at best and
alarming at worst

By mentioning writev(2) in the heading, we clearly note that this sort
of interleaving behaviour matches write(2)'s and isn't a concern

Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/pipe.7 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man7/pipe.7 b/man7/pipe.7
index c3210320c..29f6cf6cb 100644
--- a/man7/pipe.7
+++ b/man7/pipe.7
@@ -246,6 +246,8 @@ limits; see BUGS.
 .SS PIPE_BUF
 POSIX.1 says that
 .BR write (2)s
+and
+.BR writev (2)s
 of less than
 .B PIPE_BUF
 bytes must be atomic: the output data is written to the pipe as a
-- 
2.32.0

