Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AE6C377868
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 22:20:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230040AbhEIUVL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 16:21:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230032AbhEIUVK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 16:21:10 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9AEFC06175F
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 13:20:05 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id t18so14447688wry.1
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 13:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bf78YztcxZRVqtEDpyZL9G4VUt/3bZOOEuDiguQEKRA=;
        b=mDhiYNMLVGn9IhIcAQorVXQcAF9LJbhroNCQsvQHShiEED4hUt0LAqeh+hKluRb7Tq
         ecjKd9CKMjwfmZ/iJmoZEGS4fZturEWTmWGI4GaFKzDvg5bbVNnL0BwX9e/EMAMvdIAP
         FHgUzWu6jMSHO7rLfYdbAjdRovXY8Sf9Zo+s8CyTxyFZz9LEhKfcN/J9Gwp4BAWZpkSi
         ymgQduTWrgwMd4aQfcGlbsIQrzd1ktxWfBfgyPedP9xS2cBglxq0qBlihAk29H1kffWJ
         OTfkYlPWbJgAn3FggTYEYbsYmTS5rK84xeVqPfQQJYfkDWZ+1KSABVCZdLwnqSYVYj7Y
         a8qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bf78YztcxZRVqtEDpyZL9G4VUt/3bZOOEuDiguQEKRA=;
        b=SvhQdmH/ehETGc0XdICeKsiIMxlVjrnqiZgDBsFH6u3RcPcBIsB1StjlY3I3IbJvwF
         28x205gARMD+QAPFzDhA0/Mgu/FqPM8i33UaDrMfEVctEBF/8bSXOHULH8vkbni3ADcE
         pI8gAFOerSF45fWqlcpVekzAfIXSmlQC2vw856Ts7XUmJMUZqyrCOTEeucL30368rETm
         449s4JDTsHVRgnWEG9P/PfVv9lsO9WoGKQ0XluC1ll3RWm1VxJXJPhwNBDUwYBBmUCey
         dApOi0P1FocIjYR1yiEOzboHAZEFoqDkpMZQZn6k9Un3LBI0kj9O4Da22HOZLIHc9oEK
         e3bw==
X-Gm-Message-State: AOAM530C8VvfPJDayAm61pFhJ2S3O8JVtCIW5WCsgpjjEWVxNmEZepu6
        X0BPjzw8OLftyj0ElepvdUFFol+QdYEdqg==
X-Google-Smtp-Source: ABdhPJxvtngPsXm3CX6EJzz/9gNaYb8NKNdxs6r9/8g1ai/83zRnvNTPovsEQXI773IePWYOMbZumA==
X-Received: by 2002:adf:facf:: with SMTP id a15mr26973381wrs.53.1620591604757;
        Sun, 09 May 2021 13:20:04 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b10sm22591346wrr.27.2021.05.09.13.20.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 13:20:04 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Borislav Petkov <bp@suse.de>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 02/17] sigaltstack.2: tfix
Date:   Sun,  9 May 2021 22:19:35 +0200
Message-Id: <20210509201949.90495-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509201949.90495-1-alx.manpages@gmail.com>
References: <20210509201949.90495-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Borislav Petkov <bp@suse.de>

Add a missing "to" in an "in order to" formulation.

Signed-off-by: Borislav Petkov <bp@suse.de>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/sigaltstack.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/sigaltstack.2 b/man2/sigaltstack.2
index c8d5c184f..53268ccbe 100644
--- a/man2/sigaltstack.2
+++ b/man2/sigaltstack.2
@@ -111,7 +111,7 @@ Clear the alternate signal stack settings on entry to the signal handler.
 When the signal handler returns,
 the previous alternate signal stack settings are restored.
 .IP
-This flag was added in order make it safe
+This flag was added in order to make it safe
 to switch away from the signal handler with
 .BR swapcontext (3).
 Without this flag, a subsequently handled signal will corrupt
-- 
2.31.1

