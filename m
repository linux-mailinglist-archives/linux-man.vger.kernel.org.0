Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FF72503347
	for <lists+linux-man@lfdr.de>; Sat, 16 Apr 2022 07:48:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231362AbiDOXdc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 15 Apr 2022 19:33:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356567AbiDOXd2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 15 Apr 2022 19:33:28 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D50056427
        for <linux-man@vger.kernel.org>; Fri, 15 Apr 2022 16:30:56 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id x18so4299137wrc.0
        for <linux-man@vger.kernel.org>; Fri, 15 Apr 2022 16:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nl7pFSh7LmYE8tF+4931dx5dXaHDgsmiLdd3yNgtnkw=;
        b=OkmobLOvrbdCUji0Xvqm3mhgEc4v/8+mJ9c3JWlXKJaD/UdtKiYm7W2ftvnbKkjVUZ
         R0+/Fe53/KH1Q4zhMCyIhoaJDM7LwlNuylE94Z3TRkxK6YIqBkMyL9MnfZMTqMwDsJNm
         olrzUR56CqoaEbu/WKSS1iLgHQ7NBjTPECgKABo1ax02kU94sDxn4mx1Fuhade8gvB97
         pQ4APlwVHCzA8y2N6eqVUg69BbXEvl1Ni2yEMkXiEqgNS+aqazTXQLHEFn2VUeDcsaX2
         FC65symS0z24xenU6UIWnxK/76No2+eRATWxx2+OslDoyvVlesvEfaDu66qTXx0XkL6v
         rwZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nl7pFSh7LmYE8tF+4931dx5dXaHDgsmiLdd3yNgtnkw=;
        b=UkL6fyeJJv/9X2XBCMRCOnYS9XmqUcxL+qpgcQsFkQPEie5e+pWwUA2+v02FIzcDP8
         +UehJIOgSLUX3UauiTfISc53BPZzc7zK/P1iyup2Sfso45epe/RKuYpLiCbrLjePc8TV
         m/0fwf1I2aMKDcs1tTGTTAwflLCe2gTuruf86H6n/88VMZZlSiA0T0JRwcyeiSbhh8bL
         thAi0la+stv6hpdHa+rJ4oIn01o2+TjKhTaOeDyFz+WFelZY9EhpVt5wKMHH6fAc8Ldf
         pgbj+Al52DfWjJQX2mPFMDScgtCOZwIZG0KVvp7tS/LCFYgxceE3ye3Q2zow3Pu9lC/R
         Hnww==
X-Gm-Message-State: AOAM532+6EMuj/aJhtQW5TAbvTPBmnuDhHC/vOsJNLOtl7YBHVC7Fh4n
        h8uKvM5f5KwmMD2EZJ2xY50=
X-Google-Smtp-Source: ABdhPJzBP98HOzC3vRPoMwCswpxtcFyqOaK/KEMmnsm0I2QGxYdQgi1dNk2cYcZVBBj/wGtYuFQEIQ==
X-Received: by 2002:a5d:64a2:0:b0:20a:838a:6b4d with SMTP id m2-20020a5d64a2000000b0020a838a6b4dmr803379wrp.573.1650065454565;
        Fri, 15 Apr 2022 16:30:54 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id q14-20020a1cf30e000000b0038986a18ec8sm5995473wmq.46.2022.04.15.16.30.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Apr 2022 16:30:54 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        nab <nabijaczleweli@nabijaczleweli.xyz>
Subject: [PATCH 1/3] scripts/remove_COLOPHON.sh: Allow passing directories to the script
Date:   Sat, 16 Apr 2022 01:30:46 +0200
Message-Id: <20220415233048.70477-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220415233048.70477-1-alx.manpages@gmail.com>
References: <20220415233048.70477-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 scripts/remove_COLOPHON.sh | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/scripts/remove_COLOPHON.sh b/scripts/remove_COLOPHON.sh
index 712106656..780caab98 100755
--- a/scripts/remove_COLOPHON.sh
+++ b/scripts/remove_COLOPHON.sh
@@ -11,6 +11,7 @@
 ######################################################################
 #
 # (C) Copyright 2008 & 2013, Michael Kerrisk
+# and (C) Copyright 2022, Alejandro Colomar <alx.manpages@gmail.com>
 # This program is free software; you can redistribute it and/or
 # modify it under the terms of the GNU General Public License
 # as published by the Free Software Foundation; either version 2
@@ -23,6 +24,5 @@
 # (http://www.gnu.org/licenses/gpl-2.0.html).
 #
 #
-for f in "$@"; do
-    sed -i '/^\.SH COLOPHON/,$d' "$f"
-done
+find $@ -not -type d \
+|xargs sed -i '/^.SH COLOPHON/,$d';
-- 
2.30.2

