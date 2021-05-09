Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACC0D3778E7
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229986AbhEIVpd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230047AbhEIVp2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:28 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB653C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:22 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id m9so14568944wrx.3
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=S7xQzhazVdV/OIl3rmAX6NxmhQbZ6HL7fAlYAJD+Z7k=;
        b=VfG3QTs3u6avCxCam3D7vx18Z2q/tbwjP4q9pb4DjOu5mdn7Ee56CSXhTIkHcmlmyE
         GH8ahUuPD1A1FNT1rkb4UiYtKK5k/8fKkkQmnY4WqTc3mLIr6Dzt2gXG5SQ0IPsxsPs7
         MGDs00bxujeyuWaRsrKeYjw+y9xBv18fDNNq4l28/SMHiue99vT7/tiJiJJOkyQl5HEN
         7gPwQhDShPIWTa69M97PPXz65lZwj86oV8m6Trva2Q0SAgDt44mrJnUkpJyFnWlrPA25
         2Avre8KVC/teT+/OBISKjT24+yRqiDUOu3Ueazns72ibE3S2kVR4cYsxHJdoNKIkoAf8
         /sxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=S7xQzhazVdV/OIl3rmAX6NxmhQbZ6HL7fAlYAJD+Z7k=;
        b=g2zv0adyCkR03yiNPEKuB4z0FKAGI+21GhPlkwNKt9214+m23iJ/a3o1d95fxYR3mB
         lCOSSgH0P2O8SWAALGNUJu88jZEKk79XhP9yllhzEU3U7dwOO64divL+Y3ylfPQdIs0U
         9ixwUf2Acrixhg5xb+vcXcH9uJ/SMO1f7v3zEVKWwzPTKMzvL4nLP7JiR9fL1H4nqPhc
         dUAtsffDhjXgkYmwcGfkbdTfJmhkJ98lvaP9fG3KPiIgES2gsGBT5nADv301raWa3mfL
         99eQbPpbEgxwsLDWD1WxqAS8aTpv7Gj5RIlyMHHnvLJlF8AxsPt7IAMFCq/hY/KbveCX
         anjQ==
X-Gm-Message-State: AOAM533XhRayf7cwPNLweSMuGEe7bnY+5oD3sEsB8cggkii+5Qjag55D
        3VvQq+w6l59lJouI8aFIVNojklnDxyNjZw==
X-Google-Smtp-Source: ABdhPJw37+VNfyaNiMA7FvihTgMJZl+qbvKTzsjk138GbjfwCAkwkYHxGkUh2pJ856qs/4BiXEHoYw==
X-Received: by 2002:adf:e7c2:: with SMTP id e2mr25695295wrn.180.1620596661465;
        Sun, 09 May 2021 14:44:21 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:21 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] Makefile: Simplify error handling
Date:   Sun,  9 May 2021 23:39:31 +0200
Message-Id: <20210509213930.94120-37-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Instead of having to write '|| exit $$?' all the time,
use the shell's '-Eeuo pipefail' options, which handle
errors even better.  However, pipefail needs bash,
so POSIX sh (default) is not valid.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Michael,

I'm not sure how much POSIX sh compatibility is needed for the man pages
Makefile.  There are probably projects out there that don't have bash,
and still want to use it.  So maybe we should't apply this.  I don't know.
Up to you.

Thanks,

Alex


 Makefile | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/Makefile b/Makefile
index fdfaf9645..4df4f5846 100644
--- a/Makefile
+++ b/Makefile
@@ -1,4 +1,5 @@
 #!/usr/bin/make -f
+SHELL = /bin/bash -Eeuo pipefail
 
 # Do not print "Entering directory ..."
 MAKEFLAGS += --no-print-directory
@@ -33,15 +34,14 @@ html: | builddirs-html
 	|while read f; do \
 		man2html $(HTOPTS) "$$f" \
 		|sed -e '1,2d' \
-		>"$(htmlbuilddir)/$${f}$(htmlext)" \
-			|| exit $$?; \
+		>"$(htmlbuilddir)/$${f}$(htmlext)"; \
 	done;
 
 .PHONY: builddirs-html
 builddirs-html:
 	find man?/ -type d \
 	|while read d; do \
-		$(INSTALL_DIR) "$(htmlbuilddir)/$$d" || exit $$?; \
+		$(INSTALL_DIR) "$(htmlbuilddir)/$$d"; \
 	done;
 
 .PHONY: install-html
@@ -49,57 +49,57 @@ install-html: | installdirs-html
 	cd $(htmlbuilddir) && \
 	find man?/ -type f \
 	|while read f; do \
-		$(INSTALL_DATA) -T "$$f" "$(DESTDIR)$(htmldir_)/$$f" || exit $$?; \
+		$(INSTALL_DATA) -T "$$f" "$(DESTDIR)$(htmldir_)/$$f"; \
 	done;
 
 .PHONY: installdirs-html
 installdirs-html:
 	find man?/ -type d \
 	|while read d; do \
-		$(INSTALL_DIR) "$(DESTDIR)$(htmldir_)/$$d" || exit $$?; \
+		$(INSTALL_DIR) "$(DESTDIR)$(htmldir_)/$$d"; \
 	done;
 
 .PHONY: install
 install: | installdirs
 	find man?/ -type f \
 	|while read f; do \
-		$(INSTALL_DATA) -T "$$f" "$(DESTDIR)$(mandir)/$$f" || exit $$?; \
+		$(INSTALL_DATA) -T "$$f" "$(DESTDIR)$(mandir)/$$f"; \
 	done;
 
 .PHONY: installdirs
 installdirs:
 	find man?/ -type d \
 	|while read d; do \
-		$(INSTALL_DIR) "$(DESTDIR)$(mandir)/$$d" || exit $$?; \
+		$(INSTALL_DIR) "$(DESTDIR)$(mandir)/$$d"; \
 	done;
 
 .PHONY: uninstall remove
 uninstall remove:
 	find man?/ -type f \
 	|while read f; do \
-		rm -f "$(DESTDIR)$(mandir)/$$f" || exit $$?; \
-		rm -f "$(DESTDIR)$(mandir)/$$f".* || exit $$?; \
+		rm -f "$(DESTDIR)$(mandir)/$$f"; \
+		rm -f "$(DESTDIR)$(mandir)/$$f".*; \
 	done;
 
 .PHONY: uninstall-html
 uninstall-html:
 	find man?/ -type f \
 	|while read f; do \
-		rm -f "$(DESTDIR)$(htmldir_)/$$f".* || exit $$?; \
+		rm -f "$(DESTDIR)$(htmldir_)/$$f".*; \
 	done;
 
 .PHONY: clean
 clean:
 	find man?/ -type f \
 	|while read f; do \
-		rm -f "$(htmlbuilddir)/$$f".* || exit $$?; \
+		rm -f "$(htmlbuilddir)/$$f".*; \
 	done;
 
 # Check if groff reports warnings (may be words of sentences not displayed)
 # from https://lintian.debian.org/tags/groff-message.html
 .PHONY: check-groff-warnings
 check-groff-warnings:
-	GROFF_LOG="$$(mktemp --tmpdir manpages-checksXXXX)" || exit $$?; \
+	GROFF_LOG="$$(mktemp --tmpdir manpages-checksXXXX)"; \
 	for i in man?/*.[1-9]; \
 	do \
 		if grep -q 'SH.*NAME' "$$i"; then \
-- 
2.31.1

