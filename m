Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C0C437969C
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233244AbhEJR5t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233252AbhEJR5s (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:48 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C098C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:41 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id j3-20020a05600c4843b02901484662c4ebso11670194wmo.0
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=B5IRd+GOnsrTHGroosqjlik581peXK2q4py0kxgGaGE=;
        b=mn0EdvT57KG7Ed6XsqcvgYMzWOXcp57V/Wmo9vbfvh9svjoUpSk2R7tFt8AmhdSyny
         7Ybv6lkE+ZTQrub9qZcvHF43007VXJZs+eMXS2wo2wJI9Ui2/JwEqZ8k6ev6lQ6nj3ld
         QKIRd/cv/VAu1b9a+0cTeWi8Mw26OlQ1MF2EuUHA9S3w3rEtN0shIYgPy7S58b6N+mWa
         etv/HcD8W4e9h1DTIbR/z1Q28CMQm+byjuoaj2glTeiD3OzHViM4hoeFj2K0eakkmp/9
         N8/FO8k5HoOIhtykcNIyNCLn6VHPR3OsZaeGH7SKkcgE0Sb9PNRxYndE2wFEWpjVlNdq
         yARA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=B5IRd+GOnsrTHGroosqjlik581peXK2q4py0kxgGaGE=;
        b=LeaqqT4DrpahB+acGVgaIDGqmcSgH9WSQPRpdd9dSb66nDVH2367zWWwF5BnUdLnKg
         vorbNYnblSIv9zg8wVzNB5qRR3Bg3K5StjT226gX5uyxVQ8fJ/isXWlJeHQAw44Fq8q2
         GAsLx1+4OMNVI6yHborWAdfw3HsxrsfZJ1Mg9wUGyIwr2Hd+ggX35CEe9UftwIWwsE5o
         H45E39X3vWPoZ7Ck9fswRMwnBG+IY/fb5o/4X4E2n5xtWbHFIjpmmULtYBbOoO8gKQTN
         KsubKBFg6rza5EdusKigYOmBso2MKYa+VFCxzLBVOuCN+Mc49zxd4NOitmA8GCjxtJ3q
         3zkg==
X-Gm-Message-State: AOAM532hszE727wwNXIl/RbudOvl8MywPHNsD6M9/rO7HY9F2eYy+MoP
        k6xmlKeGFIC6Efme+qUSEEM=
X-Google-Smtp-Source: ABdhPJzRyE7lpEMQcELIIS2VDpz6TegQ8mIaDDkQViSy3amAMjTLiVir3RkVgDuIJLFmI0vNC5YSoA==
X-Received: by 2002:a1c:e409:: with SMTP id b9mr341419wmh.189.1620669400326;
        Mon, 10 May 2021 10:56:40 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:40 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 16/39] link.2: ffix
Date:   Mon, 10 May 2021 19:55:25 +0200
Message-Id: <20210510175546.28445-17-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/link.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/link.2 b/man2/link.2
index 611cd6c13..c285ae896 100644
--- a/man2/link.2
+++ b/man2/link.2
@@ -38,7 +38,7 @@ link, linkat \- make a new name for a file
 .PP
 .BI "int link(const char *" oldpath ", const char *" newpath );
 .PP
-.BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
+.BR "#include <fcntl.h>           " "/* Definition of " AT_* " constants */"
 .B #include <unistd.h>
 .PP
 .BI "int linkat(int " olddirfd ", const char *" oldpath ,
-- 
2.31.1

