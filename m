Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94A02622EEF
	for <lists+linux-man@lfdr.de>; Wed,  9 Nov 2022 16:20:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231996AbiKIPUP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Nov 2022 10:20:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232005AbiKIPUJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Nov 2022 10:20:09 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9830F1DDFB
        for <linux-man@vger.kernel.org>; Wed,  9 Nov 2022 07:20:08 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id o30so11041083wms.2
        for <linux-man@vger.kernel.org>; Wed, 09 Nov 2022 07:20:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4euLALXb7+nxXiRkyZn5UACXE/DRKFc6blqbPAwtxkw=;
        b=jGqu//gPza39ZuaNgXXQ8/ryNTaX4FwICphcjC63lSI1sZpgSOgiWwk3jtGfyA5mMO
         WmxQxI7yl21I51BIJvnJ5S8ZJ7wxAFQBlZAC0zz1mGcWQCXWFDDuTtstMbWJtMFwUv8T
         DyQJVpS7K3pZ9zAJYdDAm6dXMYReWCXzNRoPQipztsTkN4QF9s5IPMTwtX0KK+QAreet
         EzUWYF6niEoBeb2ALwxJi1a4gmbETJXN6hW5HGWTCJfevOBAxisK1H7mJKaWFVxzN/ob
         4UyiOY85fyftb3wML7px46l1P+F+pIdCjA+Vo72A0FbvugMAMA29CR7ggAFF4RVeonYC
         NO3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4euLALXb7+nxXiRkyZn5UACXE/DRKFc6blqbPAwtxkw=;
        b=bGB7Mwkdf1gCdBkfe4wt2pvT1/6BOHe07z22gNahkjrvFU+IS/opDvbasfgqkD544C
         3bxwmR2d8QjJYRq2l3uL2wLL5sYBHtT1HX9PPXqYNVtKqcLBGXa+Khjpow4hQaG3kxIU
         OTqk0F6R1MFbGXi1aCQnJu/CoDWXTjSh9toxHBo8ixooEXNcCwPQYlXxtR+e5cV6aDpk
         PONiCh1tM9Iu5aX6MgaL7fkvO0MQtRtMiYtUZ7c4aIqMDRTkX7tMhD3y3jPmc25d9F5J
         bWsCtbGBfv/NtqSLe1YzdhjPuRICSnqZbzAeZeUBy9GEB8kDIpBsemWSFrZCxyvglcMF
         9WlQ==
X-Gm-Message-State: ACrzQf3X0OMzjQMKi3Lrvxy+6VdGff5SgGNvT3mnjXTpjQ1E++NX8mUB
        hXUcsPLSVl5MJ4Rcp7vuVFQ5YbgNYhc=
X-Google-Smtp-Source: AMsMyM78Ny9Hu95/a8D9FDzfNinmJTzNgd4XxIFm+kf06r0OPOTTVmkszxd/wBMSF96UrjQeMQTdDQ==
X-Received: by 2002:a7b:c2b2:0:b0:3cf:71af:7845 with SMTP id c18-20020a7bc2b2000000b003cf71af7845mr36213057wmk.7.1668007207040;
        Wed, 09 Nov 2022 07:20:07 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id l16-20020adfe590000000b002365cd93d05sm13223777wrm.102.2022.11.09.07.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Nov 2022 07:20:06 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Mike Frysinger <vapier@gentoo.org>,
        Mike Frysinger <vapier@chromium.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
Subject: [PATCH] INSTALL, Makefile, cmd.mk, lint-man.mk: Lint about '\" t' comment for tbl(1)
Date:   Wed,  9 Nov 2022 16:18:13 +0100
Message-Id: <20221109151812.58365-1-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
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

This is to make sure that we have correct \" t comments in the pages,
which are necessary for the Debian package checker:

On 8/19/22 22:21, Jakub Wilk wrote:
> * Michael Kerrisk <mtk.manpages@gmail.com>, 2020-07-24 12:13:
>> For 15 years or at least, I've not paid any attention to adding the
>> 't' comments when I added tables to pages, and I do recall anyone
>> reporting ill effects.  So, I'm inclined to apply Mike's patch, but
>> will hold off a moment, in case there's other feedback.
>
> I'm a bit late, but...
>
> Lintian, the Debian package checker, sets the MANROFFSEQ environment
> variable to empty string as a speed optimization.  This turns off
> loading preprocessors that weren't explicitly declared in the source.
> The lack of '\" comments can cause false positives (and maybe also
> false negatives?) in Lintian.
>
> The use of $MANROFFSEQ for Lintian was proposed here:
> https://bugs.debian.org/677874
>
> Beware that the man(1) man page does not correctly explain what
> $MANROFFSEQ does: <https://bugs.debian.org/971009>

Also update the dependencies list, since now we also need head(1) and
tail(1) for linting man(7) source.

Link: <https://lore.kernel.org/linux-man/07a7d4e7-79a6-b2c3-6892-1e39a0679f27@gmail.com/T/#mcf36c8a387fd5ff4f800dc220e3dbdd229b556bd>
Cc: Mike Frysinger <vapier@gentoo.org>
Cc: Mike Frysinger <vapier@chromium.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>
Cc: Stefan Puiu <stefan.puiu@gmail.com>
Reported-by: Jakub Wilk <jwilk@jwilk.net>
Co-developed-by: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi Jakub,

Since you contributed the initial rough scripts used in this patch, it's
fair to say that you co-developed it.  Would you mind signing off the
patch?

Cheers,

Alex


 INSTALL         |  2 ++
 Makefile        |  1 +
 lib/cmd.mk      |  2 ++
 lib/lint-man.mk | 22 +++++++++++++++++++++-
 4 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/INSTALL b/INSTALL
index bcaadf763..ab513f8c4 100644
--- a/INSTALL
+++ b/INSTALL
@@ -93,7 +93,9 @@ Description
           -  For linting man(7) source:
              -  eqn(1)
              -  grotty(1)
+             -  head(1)
              -  mkdir(1)
+             -  tail(1)
              -  tbl(1)
              -  troff(1) >= 1.23.0 - GNU troff is required.
 
diff --git a/Makefile b/Makefile
index e7be1e291..66f02dea8 100644
--- a/Makefile
+++ b/Makefile
@@ -71,6 +71,7 @@ help:
 	$(info	lint-man		Wrapper for lint-man-* targets)
 	$(info	lint-man-groff		Lint man pages with groff(1))
 	$(info	lint-man-mandoc		Lint man pages with mandoc(1))
+	$(info	lint-man-tbl		Lint man pages about '\" t' comment for tbl(1))
 	$(info	)
 	$(info	[un]install		Alias for "[un]install-man")
 	$(info	[un]install-man		Wrapper for [un]install-man* targets)
diff --git a/lib/cmd.mk b/lib/cmd.mk
index c9c22d0ae..7d6d9abd9 100644
--- a/lib/cmd.mk
+++ b/lib/cmd.mk
@@ -14,12 +14,14 @@ FIND       := find
 GIT        := git
 GREP       := grep
 GZIP       := gzip
+HEAD       := head
 INSTALL    := install
 LOCALE     := locale
 PKG-CONFIG := pkg-config
 SED        := sed
 SORT       := sort
 TAC        := tac
+TAIL       := tail
 TAR        := tar
 XARGS      := xargs
 XZ         := xz
diff --git a/lib/lint-man.mk b/lib/lint-man.mk
index 18b71446b..c86f3addd 100644
--- a/lib/lint-man.mk
+++ b/lib/lint-man.mk
@@ -66,9 +66,10 @@ MANDOC              := mandoc
 
 _LINT_man_groff :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.groff.touch,$(LINTMAN))
 _LINT_man_mandoc:=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.mandoc.touch,$(LINTMAN))
+_LINT_man_tbl   :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.tbl.touch,$(LINTMAN))
 
 
-linters_man := groff mandoc
+linters_man := groff mandoc tbl
 lint_man    := $(foreach x,$(linters_man),lint-man-$(x))
 
 
@@ -87,6 +88,25 @@ $(_LINT_man_mandoc): $(_LINTDIR)/%.lint-man.mandoc.touch: $(MANDIR)/% | $$(@D)/.
 	$(MANDOC) $(MANDOCFLAGS) $<
 	touch $@
 
+$(_LINT_man_tbl): $(_LINTDIR)/%.lint-man.tbl.touch: $(MANDIR)/% | $$(@D)/.
+	$(info LINT (tbl)	$@)
+	if $(GREP) '^\.TS$$' <$< >/dev/null && ! $(HEAD) -n1 <$< | $(GREP) '\\" t$$' >/dev/null; then \
+		2>&1 $(ECHO) "$<: 1: missing '\\\" t' comment:"; \
+		2>&1 $(HEAD) -n1 <$<; \
+		exit 1; \
+	fi;
+	if $(HEAD) -n1 <$< | $(GREP) '\\" t$$' >/dev/null && ! $(GREP) '^\.TS$$' <$< >/dev/null; then \
+		2>&1 $(ECHO) "$<: 1: spurious '\\\" t' comment:"; \
+		2>&1 $(HEAD) -n1 <$<; \
+		exit 1; \
+	fi;
+	if $(TAIL) -n+2 <$< | $(GREP) '\\" t$$' >/dev/null ; then \
+		2>&1 $(ECHO) "$<: spurious '\\\" t' not in first line:"; \
+		2>&1 $(GREP) -n '\\" t$$' $< /dev/null; \
+		exit 1; \
+	fi;
+	touch $@
+
 
 .PHONY: $(lint_man)
 $(lint_man): lint-man-%: $$(_LINT_man_%)
-- 
2.38.1

