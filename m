Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E78693778D1
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229867AbhEIVpN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229662AbhEIVpM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:12 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DA5AC061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:07 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id l13so14534892wru.11
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8uGcor92epcnCNtm3x6o0KVyTDIweSsg+b6xazLiTrI=;
        b=BOjNfoETRb7nFQKw5Ih7p0CU6nwJ4a/BBLTyEh3o9X6SWTkCFvLLvD3G02hInVb7I/
         Vp4JqVOYzf32cK9nXRej3AKpIHXTNpAmha1oi4xvrljGMvXSer8msuyOPUFZH2xyMuam
         zwlezCEsT93lT3MCIby4ueUcMukLypbqegTUUYKhti2f60+179p77JxZRvYO+ZqgoK2O
         0PYS08c9a3sI8Y8sUkbImUccv4D6GiNu301WcDP5XFxFdSIa9CtbPlkgFHF1JA0f8gQU
         2u1rOgQbI+Cqp7QKLa2EnpiiibLNqZitLqkaO67A3n1pUbKwC+4vmsWzlws8EKv3JT3W
         4wcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8uGcor92epcnCNtm3x6o0KVyTDIweSsg+b6xazLiTrI=;
        b=NdWBtqsKwzmAzrYrRKnEuxdZkxiAFk5bbevdUxV+KXxK2/0iCOmla5yfCN/i+G9+QB
         oeCGfXuttFM/+vkFyLgKYjpd5hIg39mvM/U7zuzgZtuxChisa1OQF8VIKUM2U/FDDq3e
         yvUdgOZpPJqyQRZYL62R3cLZFxHSw8g+5Dfs/Oi7/IMTAuQSrHFQpEKKixlDgMota6o3
         DhUa2HUfPslwv850MnU20+C7RQ5urZ2qA8/3iiSYtdFE7PcGxSUOvCQPN5nZQmifZFUD
         vT00iDpKskIj0o1+q1L8iywmVKO7PutSg7c1IzKQF4aMvI0dP6hR8IQ6t0mTzqtbqAhv
         n3Vw==
X-Gm-Message-State: AOAM531wHHmW+A3X3J3sFfULhaDVkDDVT4dPqSsR9g0nopSsUWKyMbKq
        509F6lQsNvpmnZH2Vn23EJk=
X-Google-Smtp-Source: ABdhPJxbc/kXGukioanf8ZEer7Qr3Pv1O5gyzUHR272ddrUwJxqq0rHPOEWEOCyMBP3sDf8xToBvwQ==
X-Received: by 2002:a5d:45c6:: with SMTP id b6mr11387096wrs.333.1620596646310;
        Sun, 09 May 2021 14:44:06 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:06 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] __ppc_get_timebase.3: ffix
Date:   Sun,  9 May 2021 23:39:08 +0200
Message-Id: <20210509213930.94120-14-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/__ppc_get_timebase.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/__ppc_get_timebase.3 b/man3/__ppc_get_timebase.3
index 9939767ae..618ca74dc 100644
--- a/man3/__ppc_get_timebase.3
+++ b/man3/__ppc_get_timebase.3
@@ -31,7 +31,7 @@ __ppc_get_timebase, __ppc_get_timebase_freq \- get the current value
 .nf
 .B #include <sys/platform/ppc.h>
 .PP
-.BI "uint64_t __ppc_get_timebase(void)"
+.BI "uint64_t __ppc_get_timebase(void);"
 .BI "uint64_t __ppc_get_timebase_freq(void);"
 .fi
 .SH DESCRIPTION
-- 
2.31.1

