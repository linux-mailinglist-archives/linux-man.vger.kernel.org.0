Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D62D343045
	for <lists+linux-man@lfdr.de>; Sun, 21 Mar 2021 00:13:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229766AbhCTXNK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Mar 2021 19:13:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229772AbhCTXNI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Mar 2021 19:13:08 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23BFFC061574
        for <linux-man@vger.kernel.org>; Sat, 20 Mar 2021 16:13:08 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id x16so12793111wrn.4
        for <linux-man@vger.kernel.org>; Sat, 20 Mar 2021 16:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AcjJ/jBE21LNXJipplQazLBcpcek5kLJixed2gRRn8Q=;
        b=NibJYn0ZLqAA2TA3b9eTADZYnItOYiocbHud4cDFCr7ybxSzSFrXJwgRpY1e4mmF2e
         GGsgI+vDs4qP2j8qpTLP762BnEupg6OVKdgYIgV4RoGwewd2eT0z5z7GWg80CMnqynmc
         laHAUCvGBw9LxVWnRmUb8msdBEtlwFCLm5Ts+6zUAkUy54LkibzAHEAp0jnqWUvXZGHy
         1G2lTtChDgWmG2ZIfwx9gqYjxBM97n0jBOW0l703NJwebpp7ipoFZNjhguv9Z0vN3lx6
         RQpgo4QpYhHibk1ovdYZKO4anxVojxT7LPL2HPFeEFvD5pKoOYjVRJeOky77S4JiPANh
         Y+ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AcjJ/jBE21LNXJipplQazLBcpcek5kLJixed2gRRn8Q=;
        b=uAVQdRB1HI9RoBUB9t2hnSLuJUy9Ww9RakF9jvMpDAgvxzA0Agl4CLII/wJBo+X0SD
         SAodhTODG0wa9U/9j6EPSRSMeccHvou6vVcO6zD8hU9OwasuGjb6p5pMJ2oXWg/Wg092
         JCySWSdPUnNxhkKhjlI2nnR67hkjkxIHsnfp9CmLDAhQCoCWwZ9dDWcPvIR7/XGr5OLX
         d/fqBmO22kRQ6aVekoVtEbGH73J6hxalLnyVdm5urTztJeMX4Ow48JGoMRTtNIUsskad
         Y8hxiLxv+GinDnJKfB0Bfmy3YlWArN+Qrx3Do11w2vhqI0s63PI+sGo0qAvSjql1+tSh
         mv9w==
X-Gm-Message-State: AOAM533o6vaAgD6ZF1ukV1HLU+g/GRw/i6UH/trs1nFfUNhzFcimAJnC
        6AnwnsK6605TwUsu5YrNcwL8nVCpoD4=
X-Google-Smtp-Source: ABdhPJw++6qeR9OnkAH295xS/5b3kbaqPbVba7jK51dbm+NOQTdLepgkIyiTh/JIxxOL8iPcy6kcmg==
X-Received: by 2002:a5d:4cc7:: with SMTP id c7mr11497219wrt.164.1616281987001;
        Sat, 20 Mar 2021 16:13:07 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id 1sm22277989wmj.0.2021.03.20.16.13.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Mar 2021 16:13:06 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Debian man-pages <manpages@packages.debian.org>,
        "Dr. Tobias Quathamer" <toddy@debian.org>
Subject: [PATCH 2/3] Makefile: Fix bug when running in parallel
Date:   Sun, 21 Mar 2021 00:07:00 +0100
Message-Id: <20210320230659.182237-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210320230659.182237-1-alx.manpages@gmail.com>
References: <20210320230659.182237-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Prerequisites can run in parallel.  This wouldn't make any sense
when uninstalling and installing again.

For that, use consecutive commands, which run one after the other
even with multiple cores.

Cc: Debian man-pages <manpages@packages.debian.org>
Cc: "Dr. Tobias Quathamer" <toddy@debian.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 Makefile | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index a7a4ca284..683dd12be 100644
--- a/Makefile
+++ b/Makefile
@@ -20,7 +20,9 @@ INSTALL_DATA = $(INSTALL) -m 644
 INSTALL_DIR = $(INSTALL) -m 755 -d
 
 .PHONY: all
-all: remove install
+all:
+	$(MAKE) uninstall;
+	$(MAKE) install;
 
 # Use with
 #  make HTOPTS=whatever html
-- 
2.31.0

