Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B875A1CE217
	for <lists+linux-man@lfdr.de>; Mon, 11 May 2020 19:58:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730939AbgEKR6b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 11 May 2020 13:58:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1727051AbgEKR6b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 11 May 2020 13:58:31 -0400
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com [IPv6:2607:f8b0:4864:20::1042])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19243C061A0C
        for <linux-man@vger.kernel.org>; Mon, 11 May 2020 10:58:31 -0700 (PDT)
Received: by mail-pj1-x1042.google.com with SMTP id a5so8268956pjh.2
        for <linux-man@vger.kernel.org>; Mon, 11 May 2020 10:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RJ6798Or8SGcBfjIb8EqLhTia+Mc0OoigKc4EkaQZl8=;
        b=uLJOw74gcUMXw9CaNwML0ZbXvN7sFMj8G4ZG/glUyQVF8GyRYQ0V3kquiFoxjKLqBO
         Z0ylCcN3PCl4SbcpZcJjs1c/GQ2yK1UUBFhFKYGVcra/o5Edesj7GDhR34uVzHR8HWOX
         3/awpDTm/vMxK21DA7Bx62Tt+EZUnrCvtId8Ef4MkWcA2gVk4TjZ4iWzk8ECM4bX+G7Z
         DTzkFdinSHbUfrDA/2GxdaiIzCYWe1M/G2AWCN1Xg7e6mSPLlIyAOxAKh8BAA+bW+icH
         Qu8EMRTa7+pMV1i1OXcegkzC3OGIOb9KlkXWTa3tASgYPACxJC2vlwstPHd62WEYzLlq
         mzNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RJ6798Or8SGcBfjIb8EqLhTia+Mc0OoigKc4EkaQZl8=;
        b=Ezautn8OAlceLLNGclX1NShC4/tWOuGYY/1Bd7/5wOYfYq1MmdStnBi6ylEXp6qYba
         fDZA6K1YiMtUvC9zicuOYNJJARz9vc1B7Q23HyUMBE3qAi9TYS/AeAU8YIihOqwOv/1a
         PiFPuF6DABXLl9X0VlJPcF3pdMzjpL4QCgdycOng/2feLkfRPAIZY0wUWQxsP7hymsYX
         Cn0GMwpcYnOZby14gIiuQcUE5YVemcWoCNARPcAWTBTRHnZXE3cU7OcIMbwhbIYjy8FA
         XUX7Hm4PhwsFhn5XxNPKZl2yC6hMb+5f2v9kPU0t62LyX/gaHEx/NKAfhd1V2DoQ7kyf
         X5yA==
X-Gm-Message-State: AGi0PuYvg3ytb7+RDX43BJW6T0z+F2YhWHYb0ycdIfAwM2bMY22/o2P1
        YigJAtfdhaN6ogiv1UoIjdI=
X-Google-Smtp-Source: APiQypIGmKh0U7jTuMHT8DaU6qyWWX+REJoOPT85HVk54QVVv8DMEv4B3Kq6Ds4m03yleH+Y0uM0rA==
X-Received: by 2002:a17:90b:3843:: with SMTP id nl3mr24557613pjb.72.1589219909202;
        Mon, 11 May 2020 10:58:29 -0700 (PDT)
Received: from kir-rhat.lan (c-76-104-243-248.hsd1.wa.comcast.net. [76.104.243.248])
        by smtp.gmail.com with ESMTPSA id p66sm9505573pfb.65.2020.05.11.10.58.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2020 10:58:28 -0700 (PDT)
From:   Kir Kolyshkin <kolyshkin@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Kir Kolyshkin <kolyshkin@gmail.com>
Subject: [PATCH] setenv.3: wfix
Date:   Mon, 11 May 2020 10:58:26 -0700
Message-Id: <20200511175826.1529435-1-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both functions behave the same wrt return value, no need to describe
them separately.

Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man3/setenv.3 | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/man3/setenv.3 b/man3/setenv.3
index cd4fbcd6a..82acb0ce9 100644
--- a/man3/setenv.3
+++ b/man3/setenv.3
@@ -104,16 +104,10 @@ If
 does not exist in the environment,
 then the function succeeds, and the environment is unchanged.
 .SH RETURN VALUE
-The
 .BR setenv ()
-function returns zero on success,
-or \-1 on error, with
-.I errno
-set to indicate the cause of the error.
-.PP
-The
+and
 .BR unsetenv ()
-function returns zero on success,
+functions return zero on success,
 or \-1 on error, with
 .I errno
 set to indicate the cause of the error.
-- 
2.26.2

