Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E3BF25EB4F
	for <lists+linux-man@lfdr.de>; Sun,  6 Sep 2020 00:10:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728663AbgIEWKh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 18:10:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728563AbgIEWKg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 18:10:36 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6CABC061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 15:10:35 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id c19so9789643wmd.1
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 15:10:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=359965SKKlTZVcFdSFygAV6Tv61JPcl/0WOZjBwbkTc=;
        b=UZUgOCN3ZSZHnyjCAi1RtGQVku5wW0Ed3m6ccwWboHZ1HKVH2pp9WHXmwKSmXLQ7ba
         7SrzgLuGA72E+Cod3q8tpBs3ZFYB1UQOcKDzS8wekVvNA8A42fN2sPVU+snfDcvZRys3
         Mn+9cJKGEVc9ZSht5vzoXnaD2LeQ/hDsz9RQzvOMPNyn46n8CJjHjZBE7/NAO84zaLak
         u8BQT/eUcDxf7PQEmtMQlLxNkATK9BrRjdKxJ2HnYKqGbV4JQtQ+qkvDbjvPD8lAZsmx
         X+IclFveg9LS+NAItAuKq5/qUh0tW296pnBR0mljQSynC/+nv0UNrfgdwf7prc24n0+N
         /7oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=359965SKKlTZVcFdSFygAV6Tv61JPcl/0WOZjBwbkTc=;
        b=mD5Ks+hiOmV4qcrf0DGIJX3cscydUf2OZs9xnmCvo+UehVkwe5sC9FdbNzOWW165c/
         ORW7x6xiHllgelPa0xJnXjtKjCd6A5fjPFga+z1TM3dXHZsmxWUgncEEB+dQsVCLOuPd
         EhKkIFyFw87p0y4U7U2jNbOxEkxCcVvffxcaVunfrZE4h6pzhvZFPgPzYlh8J8zr7f5+
         uUhfgyOpDdNJgYhs/HP+5DZENHEkxYQEbr6E4dMtBGTKVSG6Jk1Xz6rhgChxZzDCYkuu
         vD7SxWDRjKbJvVTAKo+joXvuoLO5h0VMF92Ze6ezM8iWW/+0e9xqgDwybDf0NSf8D910
         +Tfg==
X-Gm-Message-State: AOAM532nrp8F90lZZfKveLzxnEaQGxbS7JAZ/K88gHq0Stwdqi5KXZPh
        zBVFDu+fBiYhOxDKuxjZRXE=
X-Google-Smtp-Source: ABdhPJxEi5YmYyZrzTtkAd+mqBZQFmNuuZSnbXWxSjXhz5KpHZYXR6d1QuWF+QQYO/Xpx+STwKDjAA==
X-Received: by 2002:a1c:7f8b:: with SMTP id a133mr14550215wmd.155.1599343834577;
        Sat, 05 Sep 2020 15:10:34 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id i6sm21234819wra.1.2020.09.05.15.10.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 15:10:34 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH] stdarg.3: Declare variables with different types in different lines
Date:   Sun,  6 Sep 2020 00:09:35 +0200
Message-Id: <20200905220934.1319354-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/stdarg.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/stdarg.3 b/man3/stdarg.3
index 4ca1247fc..662de73c0 100644
--- a/man3/stdarg.3
+++ b/man3/stdarg.3
@@ -285,7 +285,8 @@ foo(char *fmt, ...)   /* '...' is C syntax for a variadic function */
 {
     va_list ap;
     int d;
-    char c, *s;
+    char c;
+    char *s;
 
     va_start(ap, fmt);
     while (*fmt)
-- 
2.28.0

