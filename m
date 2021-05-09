Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1818D3778C9
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230004AbhEIVpL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229995AbhEIVpJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:09 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6812C061574
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:04 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id d4so14537827wru.7
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zhdNTJxtJ+Fdd10X+9skMCSc7eVoC8rK+pzn2nFeHRk=;
        b=CxvgUVcQrm/4hmHjiAFKisPvfOCJj3wtwNeL7OACdYKiQ2aUXJiUMOHx3a41qf38JA
         roM21a+39ywidNhvUxKv6VRoZjiJnBvDIE9NFGZu2sYCP1hg0GUTJ+2tryg7HY+J1VLy
         WPlDUjCzaG9tIn2iLNAiLyUdgbCuw0dXTL88jRxqIR1k0gMSZfGv8aa526SWsPm+xcXC
         BDaEWj2sm3g7sYaBDcWL6jpVASSh8brovciKLr5Sr7+V/ftHYG9AlRuH1tWvWoUtIEAt
         qCvxRD+mfDx1G4XEX0lvCRdIi0bot9YZ7IdEjX7Pi9l5o2GP7wO/eL3jCgxHNM0rQnHq
         e25g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zhdNTJxtJ+Fdd10X+9skMCSc7eVoC8rK+pzn2nFeHRk=;
        b=inF7L9f8qGGwzrr0tBIH2dn8jC3/1eni+rrAwqqjeYo7KjFdD0NzNj1875ZUidjqXX
         EplEukTk81+LqQrUmojPkSUTP+y621Cxc5tc4K2UhfwxJQciEzT1/KL7SIBpWMt6ULR9
         3WKRAMUgQKwmQ9LqhpJLkaDdj32No/aK1HczwCbb0NnYURwjCmJSsksB6WGZxduU0t3A
         Jo3tfjArehxSIsQioYlVc67CZuiK3nw0PBZel4cu0xc/FmxwAwMCwxRIlRzXBAx63E1h
         D9/CbbTBjQfuVntrbRJT4CZahIprjXM2y4PJCU8iINqv8ahSNosYxWPHmPXpbSmIBr3t
         yvrA==
X-Gm-Message-State: AOAM531q2xQE73PHoUE4M8srjWOXrIY+LgPor7UYYNlISrUqVazP3oLL
        sUhCJn5zFrAhMWtdRfXm1QhWtNl5Jisvmw==
X-Google-Smtp-Source: ABdhPJwlUbOuMFyHZFkAN97ABRzIoQe1PNZFNG4e3OvXppxKTjsxrOyVajt/vrnAAPwLS7SnYaxLtQ==
X-Received: by 2002:adf:e7c2:: with SMTP id e2mr25694475wrn.180.1620596643527;
        Sun, 09 May 2021 14:44:03 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:03 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] perror.3: ffix
Date:   Sun,  9 May 2021 23:39:05 +0200
Message-Id: <20210509213930.94120-11-alx.manpages@gmail.com>
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
 man3/perror.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/perror.3 b/man3/perror.3
index ae271f343..e3eec1da3 100644
--- a/man3/perror.3
+++ b/man3/perror.3
@@ -39,7 +39,7 @@ perror \- print a system error message
 .PP
 .B #include <errno.h>
 .PP
-.BI "const char * const " sys_errlist [];
+.BI "const char *const " sys_errlist [];
 .BI "int " sys_nerr ;
 .BI "int " errno ";       \fR/* Not really declared this way; see errno(3) */"
 .fi
-- 
2.31.1

