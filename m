Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C860623147
	for <lists+linux-man@lfdr.de>; Wed,  9 Nov 2022 18:20:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231254AbiKIRUB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Nov 2022 12:20:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231124AbiKIRUA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Nov 2022 12:20:00 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09AC025C8
        for <linux-man@vger.kernel.org>; Wed,  9 Nov 2022 09:19:59 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id l14so26825730wrw.2
        for <linux-man@vger.kernel.org>; Wed, 09 Nov 2022 09:19:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1EGdEKPvWZv7eicSguPuPh748YCPkm8ipEnQj9FNzx0=;
        b=oyuyWAmqIG8R2KQPma0qrKioj7hSy23Ex1ySMlL5kP8Wz/BeJsH4vqHL46Ag+qv/v+
         1NMMbd/GWIpqUc9Nsc8VAUyp6xCkAVBawDgfjyonKG8S5ctdl6iY8JsI7h0s8IZz5GAu
         YtUyXUga42PedV695HCYGaNnO1Vk/yPJaGv/Lsio0RE73RjIqpEHSaHydfnJaFgWIW9M
         OmS+QjzPYFZ/98GgAbf3NBToJ5XfXOaQ9EdeiG43WakuAqSSOTsm3JRnqpMNZGLXQkh8
         F/F+/qY23+aESbEz6FCU/rtZ27OUg7FIBP8FPMpQtDd7VmnXiva2yiCs29e3P0hKd6jH
         8WZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1EGdEKPvWZv7eicSguPuPh748YCPkm8ipEnQj9FNzx0=;
        b=q60G5xoXjSY668E9PPFn7pnpxYdzRVYvFO6VFqjsLCDzTLHLtnSvJi6MgjGSsuAIcv
         yl3vevm/6vZZq4t7zkPGrO3Rka7fw3SRkD+Afem1aXCVHK7H/YaIzIJ2X/XOmfm5w0ck
         YqQgWPgmj1aRYiUv4ifRbxpqwg+enNFwd97uwBEBwebYc3yWOgV6via11L7Od49/h2NA
         dejYdF3Sx3ocelfTLMniuvh+kYpR8s+OGJPveq3e9pwnO6OKhVqDe4HQ8dTIK193fvoC
         5F+LDPAHSCCZ3pwySOtjx1CAzBiG0JuDAGMSVPf0qrNnPtB5yAiw6vB5r+npGOXrsTFK
         zRcA==
X-Gm-Message-State: ACrzQf1bt0aSgDE4IBPXfSGsZHyzuY4rHezOjkJY1BtGmBNQJrgCalS7
        TQBxZ4sdIzOpWhZowXOrK2MITjgCtfA=
X-Google-Smtp-Source: AMsMyM4RdkRAXcHnSXqRWKOepuyrDmucKY8TacOc2+gGv6x/o5OBBcZiBRn9MQTmnZwgaS9R631aBA==
X-Received: by 2002:a5d:6743:0:b0:236:6301:918 with SMTP id l3-20020a5d6743000000b0023663010918mr39649648wrw.247.1668014397534;
        Wed, 09 Nov 2022 09:19:57 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k7-20020a05600c1c8700b003c6b7f5567csm4450624wms.0.2022.11.09.09.19.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Nov 2022 09:19:57 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org, Mike Frysinger <vapier@gentoo.org>,
        Jakub Wilk <jwilk@jwilk.net>
Cc:     Alejandro Colomar <alx@kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
Subject: [PATCH v2 1/2] INSTALL, Makefile, cmd.mk, lint-man.mk: Lint about '\" t' comment for tbl(1)
Date:   Wed,  9 Nov 2022 18:13:15 +0100
Message-Id: <20221109171314.95305-1-alx@kernel.org>
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

v2:

-  Improve readability by making lines shorter and with fewer special
   characters. [Mike]

-  Remove ';' at the end of shell commands in Makefile. [Mike]

Patch 2/2:  Since the second patch is huge, it's not suitable for the
            mailing list.  It's posted as a signed tag in my personal
            repository.  Please check there and also sign:

<http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/>
<git://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git>

            The signed tag name is: tblv2

Cheers,

Alex

 INSTALL         |  2 ++
 Makefile        |  1 +
 lib/cmd.mk      |  2 ++
 lib/lint-man.mk | 25 ++++++++++++++++++++++++-
 4 files changed, 29 insertions(+), 1 deletion(-)

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
index 18b71446b..4c8d42818 100644
--- a/lib/lint-man.mk
+++ b/lib/lint-man.mk
@@ -66,9 +66,10 @@ MANDOC              := mandoc
 
 _LINT_man_groff :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.groff.touch,$(LINTMAN))
 _LINT_man_mandoc:=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.mandoc.touch,$(LINTMAN))
+_LINT_man_tbl   :=$(patsubst $(MANDIR)/%,$(_LINTDIR)/%.lint-man.tbl.touch,$(LINTMAN))
 
 
-linters_man := groff mandoc
+linters_man := groff mandoc tbl
 lint_man    := $(foreach x,$(linters_man),lint-man-$(x))
 
 
@@ -87,6 +88,28 @@ $(_LINT_man_mandoc): $(_LINTDIR)/%.lint-man.mandoc.touch: $(MANDIR)/% | $$(@D)/.
 	$(MANDOC) $(MANDOCFLAGS) $<
 	touch $@
 
+$(_LINT_man_tbl): $(_LINTDIR)/%.lint-man.tbl.touch: $(MANDIR)/% | $$(@D)/.
+	$(info LINT (tbl)	$@)
+	if $(GREP) -q '^\.TS$$' $< && ! $(HEAD) -n1 $< | $(GREP) -q '\\" t$$'; \
+	then \
+		2>&1 $(ECHO) "$<:1: missing '\\\" t' comment:"; \
+		2>&1 $(HEAD) -n1 <$<; \
+		exit 1; \
+	fi
+	if $(HEAD) -n1 $< | $(GREP) -q '\\" t$$' && ! $(GREP) -q '^\.TS$$' $<; \
+	then \
+		2>&1 $(ECHO) "$<:1: spurious '\\\" t' comment:"; \
+		2>&1 $(HEAD) -n1 <$<; \
+		exit 1; \
+	fi
+	if $(TAIL) -n+2 <$< | $(GREP) -q '\\" t$$'; \
+	then \
+		2>&1 $(ECHO) "$<: spurious '\\\" t' not in first line:"; \
+		2>&1 $(GREP) -n '\\" t$$' $< /dev/null; \
+		exit 1; \
+	fi
+	touch $@
+
 
 .PHONY: $(lint_man)
 $(lint_man): lint-man-%: $$(_LINT_man_%)
-- 
2.38.1

