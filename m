Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0EDA5036B0
	for <lists+linux-man@lfdr.de>; Sat, 16 Apr 2022 15:04:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232008AbiDPNGc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 16 Apr 2022 09:06:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232002AbiDPNGb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 16 Apr 2022 09:06:31 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C050F4091A
        for <linux-man@vger.kernel.org>; Sat, 16 Apr 2022 06:03:59 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id g18so13475522wrb.10
        for <linux-man@vger.kernel.org>; Sat, 16 Apr 2022 06:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vQ7Nso+wFc497F4rwGOQgJXv74bOsN02iIFHrfcZ5bg=;
        b=XhMTbee5FpYRm9s54BU6t5KMDTdilvSrlX6bwCDb4/2920rpKYDoFceSQymVJWAmmF
         prhHRqr4jvAQ/rPoDqAeCYOmqWTyfouJe+ZyNWV/e+O1o2j6EiSeh+srlWGP8tBNGui2
         IFu5vUgrFmtchz0IwjWD0Psf5c1oj+r+ZdCLc2531XbTwhKuNty/wLVokxIqdL7o4UHu
         gfIxtP1/fHWa7/nuG6MGvHj02SRiZiPWmDFDn512kJxkFygqVvlME7Pa9uubHwGIshXe
         4Br8CSxsa+gdMQN6eAob0zQmmtle+Z3AJej0LkQ+6UG6XMgvgaF9Ivt/2ahKHj6NW+Dw
         w53w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vQ7Nso+wFc497F4rwGOQgJXv74bOsN02iIFHrfcZ5bg=;
        b=UvJd+S8zu+nW2Gipfv8Taedu6w0QCPvabPHzwVNQqJ0C032PqIDBwxQmvVxoBbRwz0
         2iKVMing4j96v4vyvQlkrMsjIlCOSHrHYml3ry3/p1sneSPUw+PrLwB1Ja+auCFoOxuJ
         g3uFR6twa5sjSorx9S/A1K5fzgIldMb/PS7Jm6B+ZaUKyM7X3JVzJ2vfEJnlkxB1gmNp
         Um+RfHyL/njMb+KAAnuWVP10XT73uuIl9WHWJ1amhxD1An2nbO3JhFv0yZXHD2ycXdft
         Wj+B3aITbOMH8lPA2ejxmfi5gY4pHgWReoVBbqbyy7gmOGyPscAgezU+GzRp8CM8IAWj
         2dvg==
X-Gm-Message-State: AOAM533Kyo4o5/16AuKSfbVIeGz0Cq60EsU/kjocBNPuJYj6aC5vfWUq
        hZqCbo8vEhsYk9xjpGq/8Q4=
X-Google-Smtp-Source: ABdhPJyvHzLCDGEHeT1weIQ/ibwp1ALUshiorHeOXPcjYiMitJZRJ5D29IgUmP1g1c+Zos8PvY6M+A==
X-Received: by 2002:a05:6000:1848:b0:20a:8d85:ab7b with SMTP id c8-20020a056000184800b0020a8d85ab7bmr432787wri.491.1650114238225;
        Sat, 16 Apr 2022 06:03:58 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id o40-20020a05600c512800b0038ebf2858cbsm12161703wms.16.2022.04.16.06.03.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Apr 2022 06:03:57 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Branden Robinson <g.branden.robinson@gmail.com>,
        =?UTF-8?q?=D0=BD=D0=B0=D0=B1?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [RFC v3 3/3] Makefile: dist: Add target to create distribution archives
Date:   Sat, 16 Apr 2022 15:02:40 +0200
Message-Id: <20220416130239.36773-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220415233048.70477-4-alx.manpages@gmail.com>
References: <20220415233048.70477-4-alx.manpages@gmail.com>
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

Other subtargets are also created, with the obvious results:
dist-tar, dist-gz, and dist-xz.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

v2: Fix some accidents (forgot to send this one to the list)
v3: Simplify


 Makefile | 41 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/Makefile b/Makefile
index 38ea89c69..889e356b3 100644
--- a/Makefile
+++ b/Makefile
@@ -316,6 +316,47 @@ uninstall-man: $(_mandir_rmdir) $(uninstall_manX)
 	@:
 
 
+########################################################################
+# dist
+
+DISTNAME    := $(shell git describe 2>/dev/null)
+DISTFILE    := $(builddir)/$(DISTNAME).tar
+compression := gz xz
+dist        := $(foreach x,$(compression),dist-$(x))
+
+
+$(DISTFILE): $(shell git ls-files) | $$(@D)/.
+	$(info TAR	$@)
+	tar cf $@ -T /dev/null
+	git ls-files \
+	| xargs tar rf $@
+
+$(DISTFILE).gz: %.gz: % | $$(@D)/.
+	$(info GZIP	$@)
+	gzip -knf $<
+
+$(DISTFILE).xz: %.xz: % | $$(@D)/.
+	$(info XZ	$@)
+	xz -kf $<
+
+
+.PHONY: dist-tar
+dist-tar: $(DISTFILE) | builddirs-dist
+	@:
+
+.PHONY: $(dist)
+$(dist): dist-%: $(DISTFILE).% | builddirs-dist
+	@:
+
+.PHONY: builddirs-dist
+builddirs-dist: $(builddir)/.
+	@:
+
+.PHONY: dist
+dist: $(dist)
+	@:
+
+
 ########################################################################
 # src
 
-- 
2.30.2

