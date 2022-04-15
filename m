Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 354F15033CF
	for <lists+linux-man@lfdr.de>; Sat, 16 Apr 2022 07:48:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232390AbiDOXdc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 15 Apr 2022 19:33:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356572AbiDOXd3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 15 Apr 2022 19:33:29 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C24046B14
        for <linux-man@vger.kernel.org>; Fri, 15 Apr 2022 16:30:58 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id b19so12106627wrh.11
        for <linux-man@vger.kernel.org>; Fri, 15 Apr 2022 16:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=frEu0OnRAsFIWa3WkzGxwnO0flo1zcPqSbKkL4uM76Y=;
        b=hJFVb7wcxRjF3H6n81bOYozoOr24mj6LVwVO83QVW32Q5bqFO5z+AaseM84ZjyZx3K
         AMfiS8NxVPtjJ27ITtXi0spgm8KauHi0/y/rpy7G62CsTVfZVio6z7OA2JWcCLKW5uuX
         ZXLreBX3WKqhI1EzcJAMrIXIkQEtzXkjqSf2WdtzdDfF3R5KXJsLmAA0wZNTzE8sNocB
         263YpuqWtqm7A2ZHd4uxA6hmswLgaY9SaGr9kv4KX+tCiaR+kjM0iVuV3SHlcJ1cwgWh
         62eCgf9BGyU889cjvuzjjQMoBY8XLhu5Z3IfO4AY0zogoPGuQ4Xx9ma1RuBhMChK/EIo
         CRwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=frEu0OnRAsFIWa3WkzGxwnO0flo1zcPqSbKkL4uM76Y=;
        b=XInIpMEJ6JgQpu4v1+TpxMP2dvdvsKZCQ435B5M4jMSTgfy88jxYewiMjLZv8ZjzZQ
         9b8OdaYilF60+NBdcpnmQgbIwHJp2+aB1NCscUrBcsDHiTUu4CpwQfrgcavfl/zlr3XA
         1k2KHhxHv09odV0OtaMPBJIOpDoQjM0Iw8vVszYie/PPSM7BYtpvvILFemTRVAL8k2mB
         4q/Nzyn5BVi3cpf5uP/BmAFsR95rpHlj0osenHRUDv5j4Ir2cp8DPcn9MdvzN2dkh2ZU
         9E+QBK0YlY3Fo/Tn8yKQti5hNaiwXJx1bIzecmY3Kwr4SvGznQm/k+oPoTx7Refg6AXZ
         sK4A==
X-Gm-Message-State: AOAM530uoa66cLu35gAdVpNLTu8Xhm9Wh2zmOeWYyZIv7jCP6ZA/lC6n
        anpIMdF+NeQh6uhpv4NgNtc=
X-Google-Smtp-Source: ABdhPJzZ+x7zOfq6qrR4v/U4PnKS6SiXhtDTgheiZHVCqnAXQV+EGh54NsjrML8UfvKZBfydpipd1w==
X-Received: by 2002:a05:6000:18ac:b0:20a:7b11:fbb7 with SMTP id b12-20020a05600018ac00b0020a7b11fbb7mr857427wri.106.1650065456689;
        Fri, 15 Apr 2022 16:30:56 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id q14-20020a1cf30e000000b0038986a18ec8sm5995473wmq.46.2022.04.15.16.30.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Apr 2022 16:30:56 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        nab <nabijaczleweli@nabijaczleweli.xyz>
Subject: [PATCH 3/3] Makefile: dist: Add target to create distribution archives
Date:   Sat, 16 Apr 2022 01:30:48 +0200
Message-Id: <20220415233048.70477-4-alx.manpages@gmail.com>
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

Other subtargets are also created, with the obvious results:
dist-tar, dist-gz, and dist-xz.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 Makefile | 49 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/Makefile b/Makefile
index 38ea89c69..d7935ccae 100644
--- a/Makefile
+++ b/Makefile
@@ -316,6 +316,55 @@ uninstall-man: $(_mandir_rmdir) $(uninstall_manX)
 	@:
 
 
+########################################################################
+# dist
+#
+# Do NOT use `make -j` with dist targets:
+# <https://www.gnu.org/software/make/manual/html_node/Archive-Pitfalls.html#Archive-Pitfalls>.
+
+PKGNAME     := man-pages
+DISTVERSION := $(shell git describe | sed 's/^man-pages-//')
+DISTNAME    := $(PKGNAME)-$(DISTVERSION)
+DISTSRC     := $(sort $(shell git ls-files $(srcdir)))
+DISTFILE    := $(builddir)/$(DISTNAME).tar
+compression := gz xz
+dist        := $(sort $(foreach x,$(compression),dist-$(x)))
+
+
+$(DISTFILE): $(DISTSRC) | $$(@D)/.
+	$(info TAR	$@)
+	tar cf $@ -T /dev/null
+
+$(DISTFILE)($(DISTSRC)): $% $(DISTFILE) | $$(@D)/.
+	$(info TAR	$@($%))
+	tar rf $@ $%
+
+$(DISTFILE).gz: $(DISTFILE)($(DISTSRC)) | $$(@D)/.
+	$(info GZIP	$@)
+	gzip -kn $<
+
+$(DISTFILE).xz: $(DISTFILE)($(DISTSRC)) | $$(@D)/.
+	$(info XZ	$@)
+	xz -k $<
+
+
+.PHONY: dist-tar
+dist-tar: $(DISTFILE)($(DISTSRC)) | builddirs-dist
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

