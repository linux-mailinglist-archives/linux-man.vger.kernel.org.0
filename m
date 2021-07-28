Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BC6C3D968C
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231520AbhG1UUa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231433AbhG1UUa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:30 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D2BEC061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:27 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id p5so4018746wro.7
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Cvi4S0JuuIeTSSprK7UCDtNf8nWvwegqv65Z7fpgLmc=;
        b=DcnyX4R1vDQ7qN3uyP88y/rlbPf0lmv2AhWSFgxc2WFVuFWAqs70tXFVostpOEH+pK
         WWTS8nITl3shHM3aeHKLyxU333suYrIbz4XegpoxOYj7m/kHzL2D6Wq035cxqj/uwhoe
         kQn46eN0oendQmkhJHBQyt7b6f5DGjvsj2syeVlXhpkQa1Vr/DQmVTHyMhDok947ea37
         VLAEECWHVUHrVgJ07RdMSuYlCfGQQdxRj9c60UjM7XK/WLSIvKRXXIxmYigqvytYIHOP
         +JJN17TSONvXWVdsgEuUu90bHVESDCbklkpUbuwNG5DCo25wRCGvqBrcLx92bJ+hfcAm
         Zz5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Cvi4S0JuuIeTSSprK7UCDtNf8nWvwegqv65Z7fpgLmc=;
        b=I3LSu7r25ICtlV6kYO/7MtqxZUiX7+KckTayK9M1q7nil/v0dKEhd3bWk+JWRWzD11
         DvOZ2bt1A70cfZ4+ulGqsB/wo96N318p3lGLo+pdD5BPdiG3c/uUANaVgzvMu4KvGpWP
         JbC0+HBsCbNhnFVegXmHuJQFkMjFlYj0K1J0sAG1YJFOQ/VHmHovK4scQ/w0nhUH4v/0
         5f486Tnv7eowB7EX3B3zQRrMYMXV8Us2PK+xj8Pd1OAe1g2bsggsZENIidDpUCE9Skug
         x+KzS4sKU1yyxxSMErGDFAV8T4kxSMk0k63enc5XROB/GyxQH3HIhhmxchXM5IljJdRn
         M/DA==
X-Gm-Message-State: AOAM532kPerT0ngxWEQL1KnJq4ntnP0ouAimjM4v8gSLuNrkmUICSQOw
        U31P9obhFlEGBlSbi/lY+ek=
X-Google-Smtp-Source: ABdhPJwsokxnyzDMYWLp6mhuAV0lJvcnOxc8Fs30Ag9fZk6QOx0EUTsHMzvPNHNDURcLf0yowcxolQ==
X-Received: by 2002:adf:f149:: with SMTP id y9mr1082490wro.413.1627503626006;
        Wed, 28 Jul 2021 13:20:26 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:25 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Kir Kolyshkin <kolyshkin@gmail.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 13/32] user_namespaces.7: fix a ref
Date:   Wed, 28 Jul 2021 22:19:49 +0200
Message-Id: <20210728202008.3158-14-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Kir Kolyshkin <kolyshkin@gmail.com>

The file being referred to no longer exists, as it was moved to
*.rst first (commit 20a78ae9ed297f2) and then to under
admin-guide (commit bf6b7a742e3f82b). Both those commits
are from 2019 (Linux 5.3).

Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/user_namespaces.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/user_namespaces.7 b/man7/user_namespaces.7
index f2e02c978..518e7a3bb 100644
--- a/man7/user_namespaces.7
+++ b/man7/user_namespaces.7
@@ -1383,4 +1383,4 @@ main(int argc, char *argv[])
 .BR pid_namespaces (7)
 .PP
 The kernel source file
-.IR Documentation/namespaces/resource\-control.txt .
+.IR Documentation/admin\-guide/namespaces/resource\-control.rst .
-- 
2.32.0

