Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70B954E1DBD
	for <lists+linux-man@lfdr.de>; Sun, 20 Mar 2022 21:34:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240512AbiCTUgP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Mar 2022 16:36:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233463AbiCTUgP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Mar 2022 16:36:15 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EA40527DA
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 13:34:51 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id t11so18327808wrm.5
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 13:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to:from
         :subject:content-transfer-encoding;
        bh=tmTyTwz597UECWZVFBAlU/8gq1y8CqqpcBO4zXm82Ok=;
        b=ncXuuC8D4Q5+45x1j4RL82/UQTu7IWLGaD6jEVuTnOfygRDNVkw3FoIJolxF8Y0Al9
         lVy6QQFvytRUR1PZvT518OM4G+VwkSlsFDdSfAb9U1kiBibuO3Qfbdfg0KcyyzmSNUMM
         D+ub4qKZRGEtp3Qu8buCuKw3VLaAqswu1Uy6LRG9MIrxydGRG4kZ6wNWgREu+m2aAgkY
         d2BfJEMECaueQRc7yrtZG4227LBwIDn4C1CwDb9hcWNZVG/3nHHBmdbMse23lhu9PiHo
         KyW9bJdWg4PTkUwNuDgdK88IsDuqihS66D5oBpPaO23kYc/0LWDMoYwFOfs4XaLtwNIc
         DThw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:from:subject:content-transfer-encoding;
        bh=tmTyTwz597UECWZVFBAlU/8gq1y8CqqpcBO4zXm82Ok=;
        b=zs4DQbcHETBqxvwgNY1Bkw0RrPnMqftELjKQiWtriqSt3i9hx2KX7neUUa2jFdDAlT
         pwzrqaUTvwH1awQenmZiIj/tFTL9fdnODJFhCTsno/EKY+BPUc7osJ645VBt39l/s/dV
         qmMd80WkHlrhdwG6mLGPYIz7FG7YOIed23w6ZCcTBeWA3ez6nelKQ82YLWdkbcYsXP3T
         +YNAQYo3mZfXigS2RatZkaSXBCbS9+rSUZIaeAzeo6HyRJaYoowOs4Ib/Lf4Nu9dHOGi
         tskomE/06+YzhzHn6e41x8lFzduVPH5zTvLDc/KcyIhNIv81CAvU0rX/uPvLHmhsEoxP
         VBCg==
X-Gm-Message-State: AOAM533hNf3NpIzT9Z0dQw4owudxfH4I570lWK+wTOKJky3LH44E1mHy
        jX37E/4z8apo90/FUtfnK8/kygxocLQlX6Ry
X-Google-Smtp-Source: ABdhPJxdyOjSnJaLCp3OSKLelASTcQ10ZxavjMMbCf+nxpwJbNZg6wkrBin7pz1meRX1mmYy7ci/kg==
X-Received: by 2002:a5d:5704:0:b0:203:f9bb:b969 with SMTP id a4-20020a5d5704000000b00203f9bbb969mr8844145wrv.459.1647808489589;
        Sun, 20 Mar 2022 13:34:49 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i15-20020adffdcf000000b00203efad1d89sm12295144wrs.9.2022.03.20.13.34.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Mar 2022 13:34:49 -0700 (PDT)
Message-ID: <e4ea99a0-b65c-467f-047d-2cb466df86e7@gmail.com>
Date:   Sun, 20 Mar 2022 21:34:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To:     Stephen Kitt <steve@sk2.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        Ingo Schwarze <schwarze@usta.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Exctracting source code from EXAMPLES
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Gidday!

I have ready some code to extract source code from EXAMPLES in man-pages.
For that, I set up some convention:

Enclose the code (including the enclosing .EX/.EE in a pair of comments
with a very precise formatting:

[[
...
.\" SRC BEGIN (program_name.c)
.EX
#include <stdio.h>

int main(void)
{
	printf("Hello, world!");
}
.EE
.\" SRC END
...
]]

There can be multiple programs in a single page, with the only
restriction that each of them has to have a different program_name
(there can be collisions within different manual pages, but not within
the same manual page)

The Makefile will create a directory for each manal page, where the
different programs will be created with the name specified in the
comment (that's why it has to be different from others in the same page
only).

Please, check that you like what you see, and comment if not (or if yes
too :).

I tested it with membarrier.2, and it produced a correct .c file.
The next step will be to add targets to lint and compile the produced
files, to check their correctness.

I hope this will make our lives much easier maintaining manual pages :-)


Cheers,

Alex



diff --git a/Makefile b/Makefile
index 03ebde18c..05a1b5950 100644
--- a/Makefile
+++ b/Makefile
@@ -30,19 +30,20 @@ MAKEFLAGS += --no-print-directory
 MAKEFLAGS += --warn-undefined-variables


-srcdir := .
+srcdir   := .
 builddir := tmp
-LINTDIR := $(builddir)/lint
-HTMLDIR := $(builddir)/html
+LINTDIR  := $(builddir)/lint
+HTMLDIR  := $(builddir)/html
+SRCDIR   := $(builddir)/src

 DESTDIR :=
-prefix := /usr/local
-SYSCONFDIR := $(srcdir)/etc
-TMACDIR := $(SYSCONFDIR)/groff/tmac
+prefix  := /usr/local
+SYSCONFDIR  := $(srcdir)/etc
+TMACDIR     := $(SYSCONFDIR)/groff/tmac
 datarootdir := $(prefix)/share
-docdir := $(datarootdir)/doc
-MANDIR := $(srcdir)
-mandir := $(datarootdir)/man
+docdir  := $(datarootdir)/doc
+MANDIR  := $(srcdir)
+mandir  := $(datarootdir)/man
 MAN0DIR := $(MANDIR)/man0
 MAN1DIR := $(MANDIR)/man1
 MAN2DIR := $(MANDIR)/man2
@@ -61,7 +62,7 @@ man5dir := $(mandir)/man5
 man6dir := $(mandir)/man6
 man7dir := $(mandir)/man7
 man8dir := $(mandir)/man8
-manext := \.[0-9]
+manext  := \.[0-9]
 man0ext := .0
 man1ext := .1
 man2ext := .2
@@ -71,9 +72,9 @@ man5ext := .5
 man6ext := .6
 man7ext := .7
 man8ext := .8
-htmldir := $(docdir)
+htmldir  := $(docdir)
 htmldir_ := $(htmldir)/man
-htmlext := .html
+htmlext  := .html

 TMACFILES            := $(sort $(shell find $(TMACDIR) -not -type d))
 TMACNAMES            := $(basename $(notdir $(TMACFILES)))
@@ -99,9 +100,11 @@ MAN2HTMLFLAGS         := $(DEFAULT_MAN2HTMLFLAGS)
$(EXTRA_MAN2HTMLFLAGS)
 INSTALL      := install
 INSTALL_DATA := $(INSTALL) -m 644
 INSTALL_DIR  := $(INSTALL) -m 755 -d
+MKDIR        := mkdir -p
 RM           := rm
 RMDIR        := rmdir --ignore-fail-on-non-empty
 GROFF        := groff
+MAN          := man
 MANDOC       := mandoc
 MAN2HTML     := man2html

@@ -161,12 +164,14 @@ _man5pages := $(filter %$(man5ext),$(_manpages))
 _man6pages := $(filter %$(man6ext),$(_manpages))
 _man7pages := $(filter %$(man7ext),$(_manpages))
 _man8pages := $(filter %$(man8ext),$(_manpages))
-LINT_groff := $(patsubst
$(MANDIR)/%,$(LINTDIR)/%.lint.groff.touch,$(LINTPAGES))
-LINT_mandoc:= $(patsubst
$(MANDIR)/%,$(LINTDIR)/%.lint.mandoc.touch,$(LINTPAGES))
+LINT_groff :=$(patsubst
$(MANDIR)/%,$(LINTDIR)/%.lint.groff.touch,$(LINTPAGES))
+LINT_mandoc:=$(patsubst
$(MANDIR)/%,$(LINTDIR)/%.lint.mandoc.touch,$(LINTPAGES))
+SRCPAGEDIRS:=$(patsubst $(MANDIR)/%,$(SRCDIR)/%,$(LINTPAGES))

 MANDIRS   := $(sort $(shell find $(MANDIR)/man? -type d))
 HTMLDIRS  := $(patsubst $(MANDIR)/%,$(HTMLDIR)/%/.,$(MANDIRS))
 LINTDIRS  := $(patsubst $(MANDIR)/%,$(LINTDIR)/%/.,$(MANDIRS))
+SRCDIRS   := $(patsubst $(MANDIR)/%,$(SRCDIR)/%/.,$(MANDIRS))
 _htmldirs := $(patsubst $(HTMLDIR)/%,$(DESTDIR)$(htmldir_)/%,$(HTMLDIRS))
 _mandirs  := $(patsubst $(MANDIR)/%,$(DESTDIR)$(mandir)/%/.,$(MANDIRS))
 _man0dir  := $(filter %man0/.,$(_mandirs))
@@ -248,6 +253,37 @@ uninstall-man: $(_mandir_rmdir) $(uninstall_manX)
        @:


+########################################################################
+# src
+
+$(SRCPAGEDIRS): $(SRCDIR)/%: $(MANDIR)/% | $$(@D)/.
+       $(info MKDIR    $@ $<)
+       $(RM) -rf $@
+       $(MKDIR) $@.tmp
+       <$< \
+       sed -n 's/\.\\" SRC BEGIN (\(.*.c\))/\1/p' \
+       | while read f; do \
+               <$< \
+               sed -n \
+                       -e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
+                       -e '/^\.SH EXAMPLES/p' \
+                       -e "/^\... SRC BEGIN ($$f)$$/,/^\... SRC END$$/p" \
+               | $(MAN) -P cat -l - \
+               | sed '/^[^ ]/d' \
+               >$@.tmp/$$f; \
+       done \
+       || exit $$?
+       mv -T $@.tmp $@
+
+.PHONY: build-src src
+build-src src: $(SRCPAGEDIRS) | builddirs-src
+       @:
+
+.PHONY: builddirs-src
+builddirs-src: $(SRCDIRS)
+       @:
+
+
 ########################################################################
 # lint

diff --git a/man2/membarrier.2 b/man2/membarrier.2
index b2e3e035e..a46283dd7 100644
--- a/man2/membarrier.2
+++ b/man2/membarrier.2
@@ -319,6 +319,7 @@ following code (x86) can be transformed using
 .BR membarrier ():
 .PP
 .in +4n
+.\" SRC BEGIN (membarrier.c)
 .EX
 #include <stdlib.h>

@@ -365,6 +366,7 @@ main(int argc, char *argv[])
     exit(EXIT_SUCCESS);
 }
 .EE
+.\" SRC END
 .in
 .PP
 The code above transformed to use


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
