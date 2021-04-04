Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E7BB3537EC
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230378AbhDDL7r (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230388AbhDDL7r (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:47 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C2F5C061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:42 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id j20-20020a05600c1914b029010f31e15a7fso6344548wmq.1
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TV1ZaGzpzoXjid5LXMYW52L7tDzb+jhqCC6Ks0Q7om8=;
        b=DLEYe3LlcWZ5U5Iq4iyWxL768erlWuYgObVAc5l7jtxfww31FpfxSU/3xMrh19KPz7
         IMy9pZGuEN0qJS/f+fJDAF7wE5u6W1GeSjfokMGYq3+j/fdnUZ5jgMAdzoTznvQsorYK
         ABAGs6bNelrlqXFDhqNuJGD72UK3k0VIB8pIkUGra0avAPj3L3zf5T917NwdYvNKwidX
         FfkZY6OWg1WJsHYvDqTXn8QdvvXhU/wMiVmqssUW/tsW7X7BsVn1mgtqkFeJNwR0slWZ
         qLuymHZQ/lamsJPStCXjij/1wYu34KFJqUd+Hf8l81BZ6zqC0X45MVgrapDDdgmkB+0y
         VezQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TV1ZaGzpzoXjid5LXMYW52L7tDzb+jhqCC6Ks0Q7om8=;
        b=cxaT5puYtOz+BQ+4zo7uSHeOEAgeylsdZQWZlBiE2bBqcBIbqPqSasY8DckSfVRSWN
         iQv7jbq8wJA2jO7qcBE1LZBxjDRm23KRu6XlUZCj54Ii3chuWqd1ZoTw2jX9MGaIdRb4
         U+qlZZyypeDsbor7cEynvbjocIVMEeF0KxTTbhEGoRpofvGNtdd6lJFvMvJ9xcb6KrJe
         pjvRPJvyYh9HbYFA3rrT1UsksDfPoavqrCUs1Ye7J/Z1vyA3lDHx1DHaeFzAFkYiE3R/
         rCB9nv7QXL/BUc+T0cdJU0cVX46J0gLWXs3b1zJEwEVeeBITOIclKNqXGIkGTFPR/5it
         l+/Q==
X-Gm-Message-State: AOAM53349AMzvzqLL9LhtCB8W7wJpf9srwCgzk371IqPeh3SZ/J4EbZ7
        DPypkiZrdcvLGV28eKszPfc=
X-Google-Smtp-Source: ABdhPJwctxf/O4qvDJ/7yqsVBP1rOLw41pdoqoolcQTb84vbG+OlAvHlQCNNQbPFDhPX1fIWY+v8bA==
X-Received: by 2002:a1c:a958:: with SMTP id s85mr21534620wme.4.1617537581340;
        Sun, 04 Apr 2021 04:59:41 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:41 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 12/35] delete_module.2: Add missing include
Date:   Sun,  4 Apr 2021 13:58:25 +0200
Message-Id: <20210404115847.78166-13-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/delete_module.2 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man2/delete_module.2 b/man2/delete_module.2
index bb0a812a6..174ef04d2 100644
--- a/man2/delete_module.2
+++ b/man2/delete_module.2
@@ -27,6 +27,8 @@
 delete_module \- unload a kernel module
 .SH SYNOPSIS
 .nf
+.BR "#include <fcntl.h>" "            /* Definition of " O_* " constants */"
+.PP
 .BI "int delete_module(const char *" name ", unsigned int " flags );
 .fi
 .PP
-- 
2.31.0

