Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE8A526766A
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 01:14:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725894AbgIKXOn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 19:14:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725849AbgIKXOi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 19:14:38 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF96FC061757
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:36 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id k18so6147493wmj.5
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wyExOUVmnMWqC2gkdO5xflT1ktX/eIcfzallid6ni8E=;
        b=ujATi1AtPZhIEQDGDNn7diAeJWm/XWueuPN4ktSIg1ngOFNEgK/G4M1hzSLDOqKTS+
         qqx1IjiKXjAlix7f8q+3CLjTqH18hv5pgc0xb4XL4iA7ykb8MyiQAQBZ1dC7+uwQ3woD
         EV2WVrN+w+zTnM+wKRhfXrXFttHdTGaX+H/TaUY/XharLEbzg6woMvRv3s1X/cKKih1+
         Lc8r765/aOpRqXk2UkYTv/VA/OpTuggfPq1z8KcQmCPKhncb6v0CNBup8PoHtyyNiJ3m
         t09fi5SJAhPCdYiYXE7qZS2yFEdaxN6Q5VbknEL3xrphYGAKzQwmt7+ezx8NeOBGyVDZ
         wDpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wyExOUVmnMWqC2gkdO5xflT1ktX/eIcfzallid6ni8E=;
        b=ZR+6hNapZvrNtfmYmq+A9UmoXB/12p/e+Qo9kB22kKR5kpfNgJrgBtaLTxjBzgWIm5
         Tj3DLzTNWNATr+/G1QF2OLk6yIp84jOWorvXFnxnrI4ihETpUo49GXi0mljAiNtKa98h
         3j/UeDYHBFCqMpcpLCdoVVJ6pJYQcW3AQlgs9jgyJMoa4g3KRVYAWMuCuCwwMbsPFmsK
         /fo9EK6zGZWUNteIuYK0MzlRzi4ItCuMBaxk2nxVMV/ZQzAO4M2cZNPceVfxHf5843b5
         pk1L088rj6r7nLuVU3tpjvUE/lLfg0lCoifNryl0Ao3HE+C2B6LhPtNXZYGq2BGSgzwu
         FTRQ==
X-Gm-Message-State: AOAM531Zkw/fZyqRYv20nh/xDV+Aw0jLBg4eF9WKM1t90+21OXUFyFx/
        pzY6br6YsPNJIZW27qwZ8UIcRNvk7aY=
X-Google-Smtp-Source: ABdhPJwZAV5RYRxn7ZB/FgQXEcYLMllkOWd7cDubPBMhel1owOcrvowZ1lGtUacSToo/uTW9JBInqw==
X-Received: by 2002:a1c:bcd4:: with SMTP id m203mr4304553wmf.75.1599866073980;
        Fri, 11 Sep 2020 16:14:33 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id b76sm7300806wme.45.2020.09.11.16.14.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 16:14:33 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 01/12] dl_iterate_phdr.3: Cast 'ElfN_Word' to 'uintmax_t' for printf()
Date:   Sat, 12 Sep 2020 01:14:01 +0200
Message-Id: <20200911231411.28406-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/dl_iterate_phdr.3 | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/man3/dl_iterate_phdr.3 b/man3/dl_iterate_phdr.3
index 70206a0ba..a8a85d8e6 100644
--- a/man3/dl_iterate_phdr.3
+++ b/man3/dl_iterate_phdr.3
@@ -302,6 +302,7 @@ Name: "/lib64/ld-linux-x86-64.so.2" (7 segments)
 #include <link.h>
 #include <stdlib.h>
 #include <stdio.h>
+#include <stdint.h>
 
 static int
 callback(struct dl_phdr_info *info, size_t size, void *data)
@@ -325,10 +326,10 @@ callback(struct dl_phdr_info *info, size_t size, void *data)
                 (p_type == PT_GNU_STACK) ? "PT_GNU_STACK" :
                 (p_type == PT_GNU_RELRO) ? "PT_GNU_RELRO" : NULL;
 
-        printf("    %2d: [%14p; memsz:%7lx] flags: %#x; ", j,
+        printf("    %2d: [%14p; memsz:%7jx] flags: %#jx; ", j,
                 (void *) (info\->dlpi_addr + info\->dlpi_phdr[j].p_vaddr),
-                info\->dlpi_phdr[j].p_memsz,
-                info\->dlpi_phdr[j].p_flags);
+                (uintmax_t) info\->dlpi_phdr[j].p_memsz,
+                (uintmax_t) info\->dlpi_phdr[j].p_flags);
         if (type != NULL)
             printf("%s\en", type);
         else
-- 
2.28.0

