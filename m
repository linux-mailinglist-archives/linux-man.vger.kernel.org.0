Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB66126527F
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:19:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728171AbgIJVTB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:19:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728023AbgIJVOo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:14:44 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42028C06179F;
        Thu, 10 Sep 2020 14:14:25 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id l9so2093347wme.3;
        Thu, 10 Sep 2020 14:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VbC5saaYZHnTXOXwHebFrJkh2FffiwaEU7e2jnpZU5k=;
        b=t7jKxizKOsHR0GZ9KH2Q7Mrk4zJF39Q0887R11FPxyKx7wPPMH1bYZELE6EqzfO8Hl
         vZPjrmhex4WpoxUqCuDbqf59PD6+LlE9djSMgzIjVZGdsovY89Oc+MQvxCiKLQdut6Zo
         b2aLeoaUaYDVlHxdyrwk02S1pmS0vCJ7JejQJD8g+4IC0pU0ZuUavKA41p95EufAJ2TW
         TJFkn7UVvtf8ISZfF/3ZpvP7NArBQAEyoqHSCYZdDPqf4WsY2HqYrx/efI6AVCTbH1l/
         wXFUX3MgfA3+LE55if5LKJka1UWrLZRTur9T3wXw6PDOaGs8ZliUDDe9hUGLawTSPE7R
         nR9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VbC5saaYZHnTXOXwHebFrJkh2FffiwaEU7e2jnpZU5k=;
        b=fq4D3LYoCe7WCXvXNOPHjV3z+QJFXD+3pJtqriJlGuYCrRGVuv7Ze7jUftrTnPxG2R
         jVBUyvIrLjmi2GQiTePncNV3j7Hbn9zw9UC5uzLYaxGfWSi/MYS1E7cMKmKaT9MxzA33
         MnTmMKhcUs2n50WAGfMzsGp5dpT+k/0JWP0y1Fz3DhLiDMR7SDAx8Emge78gQxv+Tpuu
         tKHZtUIZ1Sb3fBeuQwMoP3MDjp6Cy5WrdEXmz7r/LlQysKdRcOpZX2xNE6R8CUy999tJ
         q1Tu2zVXWkNFHmzbWyhbRHDezmlORoQNFaCcpbYDaFacxLQVUweWiQkqhKbAF9YaIabN
         7rOg==
X-Gm-Message-State: AOAM532/1SXkpEaP9Qx9irV3NbZmyVtFAq6P/p7xcpE25q57MnJSEjob
        y+Z1GqaFmW8qb0Y6RnnbC9Q=
X-Google-Smtp-Source: ABdhPJwKLEVsspZCKYvSWCKV3osACyyrbIsswVav0nAjuKMTFu9VsPSliryNIpHd1/4I4NwRSx9Ukw==
X-Received: by 2002:a05:600c:2215:: with SMTP id z21mr1912230wml.176.1599772462037;
        Thu, 10 Sep 2020 14:14:22 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l10sm111502wru.59.2020.09.10.14.14.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:14:21 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 11/24] stat.2: Remove unneeded cast
Date:   Thu, 10 Sep 2020 23:13:32 +0200
Message-Id: <20200910211344.3562-12-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both major(3) and minor(3) return an 'unsigned int',
so there is no need to use a 'long' for printing.
Moreover, it should have been 'unsigned long',
as "%lx" expects an unsigned type.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/stat.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/stat.2 b/man2/stat.2
index b35e3c615..3418e1b5d 100644
--- a/man2/stat.2
+++ b/man2/stat.2
@@ -664,8 +664,8 @@ main(int argc, char *argv[])
         exit(EXIT_FAILURE);
     }
 
-    printf("ID of containing device:  [%lx,%lx]\en",
-	    (long) major(sb.st_dev), (long) minor(sb.st_dev));
+    printf("ID of containing device:  [%x,%x]\en",
+	    major(sb.st_dev), minor(sb.st_dev));
 
     printf("File type:                ");
 
-- 
2.28.0

