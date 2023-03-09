Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 861B86B2C71
	for <lists+linux-man@lfdr.de>; Thu,  9 Mar 2023 18:58:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229685AbjCIR6m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Mar 2023 12:58:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229804AbjCIR6l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Mar 2023 12:58:41 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84224DD5A8
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 09:58:40 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id p26so1757469wmc.4
        for <linux-man@vger.kernel.org>; Thu, 09 Mar 2023 09:58:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678384719;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lhWs9ZM4b/ueiRLVCKKkccOTVPAAa9ToAeVjhLIoN7w=;
        b=F4PKVulP3eTt91W7qZyzuUPteJWZ38ZF1Md22D3Z/fVX5r3/abC3Hr+kraPBW5NMym
         uguEQHpLN0ToG8rPdKt+OBN/A80PmHi2MjvDpZbko8boJV4LLo8muXFsOsnccLdzJozN
         X8WCEuCLMgxn6Jz9wRESZmYFjJrLr4MXkJAhgh8o0CrniBHPPhwxpZUINn6jibMa2lfq
         +GEV4Yjhqu/KIXyFJCVwKsQb9HJokHQOxdIne2kMc9kHaFOQcRE47/Zd7X7pYyxj15Wv
         b8KaimWEpdlwjKjxwqB/2Cx1hy2RKmewxgWKPHWOxtTR/MXnTlUZ8wysfMjxLQ9F0ddq
         RH/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678384719;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lhWs9ZM4b/ueiRLVCKKkccOTVPAAa9ToAeVjhLIoN7w=;
        b=nyHO0ssoglJLnxZ1zStQ3ryAdsTXaS1Lhnzl6hEFmLMJe/MYPeBEaCjOohlvkiPPnx
         9BjyCa0kqs2473kLnrjdXRnK2EJkmLZY37uDI7wl6OzIvQYV8c7DWUgr+sF1W0dfSC6T
         cMxFuXL50hw0GcODj0zwiGmVXBfRT5vkxXoOqdbBJNmpgoJHjG826aLFtSs2xGSVqc4M
         ld5Get16x+1S9oxM3AK/8mUB5wrPOur1crTQO1qvIyh/b4o/kJeKSBILqpSlD7R+IXek
         5qSf+XRBtnW0RDgdeI854z+A2RJpndjczA0pkngqqZEtxhyIWWoFgBlhaXSYbMEFvHgO
         KWNA==
X-Gm-Message-State: AO0yUKVWDEO6bgk06lfakxiTeg9uw0IJJJd50e0gHSrKh2XmvkJyIwTH
        Yj3O0IgGPZkWV4+bhlI1wUJ0aOu6ZkE=
X-Google-Smtp-Source: AK7set8VU5g3xlHg1V+ibkmSbPaMsEiMXkmrajzEYIy8lqwTz7qUrPmvGYrTEhHhi4YF0OVo1QGKIw==
X-Received: by 2002:a05:600c:c06:b0:3e1:feb9:5a33 with SMTP id fm6-20020a05600c0c0600b003e1feb95a33mr128073wmb.9.1678384718958;
        Thu, 09 Mar 2023 09:58:38 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id g10-20020a05600c310a00b003daf6e3bc2fsm654231wmo.1.2023.03.09.09.58.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 09:58:38 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, groff@gnu.org
Subject: [PATCH 1/6] lint-man.mk: make-lint-tbl: ffix
Date:   Thu,  9 Mar 2023 18:58:23 +0100
Message-Id: <20230309175828.136591-2-alx@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230309175828.136591-1-alx@kernel.org>
References: <20230309175828.136591-1-alx@kernel.org>
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

Print 'LINT (tbl comment)' to not confuse users to think that we run
tbl(1) at all.

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 lib/lint-man.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/lint-man.mk b/lib/lint-man.mk
index e0f72d303..c4a4c57b0 100644
--- a/lib/lint-man.mk
+++ b/lib/lint-man.mk
@@ -98,7 +98,7 @@ $(_LINT_man_mandoc): $(_LINTDIR)/%.lint-man.mandoc.touch: $(MANDIR)/% | $$(@D)/.
 	touch $@
 
 $(_LINT_man_tbl): $(_LINTDIR)/%.lint-man.tbl.touch: $(MANDIR)/% | $$(@D)/.
-	$(info LINT (tbl)	$@)
+	$(info LINT (tbl comment)	$@)
 	if $(GREP) -q '^\.TS$$' $< && ! $(HEAD) -n1 $< | $(GREP) -q '\\" t$$'; \
 	then \
 		>&2 $(ECHO) "$<:1: missing '\\\" t' comment:"; \
-- 
2.39.2

