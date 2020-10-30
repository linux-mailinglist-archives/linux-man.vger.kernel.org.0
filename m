Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27C1D2A0594
	for <lists+linux-man@lfdr.de>; Fri, 30 Oct 2020 13:40:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726318AbgJ3MkJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Oct 2020 08:40:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726055AbgJ3MkJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Oct 2020 08:40:09 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F99DC0613CF;
        Fri, 30 Oct 2020 05:40:08 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id m13so6297674wrj.7;
        Fri, 30 Oct 2020 05:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=skw0s4gDw3eySm9+ZtxIjYERTG6+iEtotlMGxrUw9mo=;
        b=h2OChmNJsnXBxO6OoHQDydiCGBE4tf4W9LmDwUpMCNtur7whPhvDlNuaeXgeqSQmxP
         AFMgEPqGVAYugtmOWEqQ104YEws/BxSWlGdITZ2OiymexiX8Y3qyoGld/YaA4ghbrSzD
         5FZk0rjMB3c9RonpOzQTV9TerB+M5NKAB+5a4s6eDZQaDNpzDFZeSquvFgl7mvxmZa1s
         jtJ30i0jTdn6IrLbDXS24aWdyLFGoeedy+nNXM+9+iQgXqroiilCDyxeJapXT77BfhKj
         2WvhWXA8AT+moLNKN8Qr1lnglVTgDLdu3xbyZEdn5lA3JZAMbeZKG+/RinjSCqm+ikIZ
         lpJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=skw0s4gDw3eySm9+ZtxIjYERTG6+iEtotlMGxrUw9mo=;
        b=n1mVf0hzcuvpXGB51Iecpc3anlfQKhB1F2/5h84el1LACP5mUaW9psOjqk/RE1JGpM
         ipUjdmBs2nQG8y+mUdGG1NhgyZs49vkAdKL6TjLnwhXly718cv9nD2u0owCOwelLoNtq
         vfyeZu3lJk3rICunTtpUe5VcvwAnls6NRjWMXPxCBE3siJu+iGknQZYuxXd/MzcL/AD0
         rU7meOTUcFGLln5PkOuihh/hH3Za9QFT9kV7u7R4LYEmChR734ABMqL75YuDxCcu6aLI
         sCIdAlaCEnspegnLf0vVGuSOeNtRCE/SIgnTJ75a/F/Ak4qduBdEk2eLuPImUVLJTsvf
         /09Q==
X-Gm-Message-State: AOAM531IxTo6+PanXkjIS1B130QpKiOEIJI6xcvy2BXGOuGEVdvFZ6v/
        TuLKyiW8MJZzsBmUmXL6RcFmZSAFcnI=
X-Google-Smtp-Source: ABdhPJygiw9bXLwIzzUJ2XKRE8rBZ1u1UAsLRJSePaD3yJi2p7cKf0SXxaWVaVrMLutz5nMCay0uTw==
X-Received: by 2002:a5d:46cf:: with SMTP id g15mr3111040wrs.342.1604061606493;
        Fri, 30 Oct 2020 05:40:06 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id p1sm10001617wrx.3.2020.10.30.05.40.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2020 05:40:05 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] futex.2: srcfix
Date:   Fri, 30 Oct 2020 13:39:56 +0100
Message-Id: <20201030123956.36169-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/futex.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/futex.2 b/man2/futex.2
index f82602c11..837adbd25 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -25,8 +25,8 @@ futex \- fast user-space locking
 .SH SYNOPSIS
 .nf
 .PP
-.B "#include <linux/futex.h>"
-.B "#include <sys/time.h>"
+.B #include <linux/futex.h>
+.B #include <sys/time.h>
 .PP
 .BI "int futex(int *" uaddr ", int " futex_op ", int " val ,
 .BI "          const struct timespec *" timeout , \
-- 
2.28.0

