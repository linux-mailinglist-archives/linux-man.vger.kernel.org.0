Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 74120342936
	for <lists+linux-man@lfdr.de>; Sat, 20 Mar 2021 00:59:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229618AbhCSX7Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Mar 2021 19:59:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229634AbhCSX7N (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Mar 2021 19:59:13 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 846C1C061760
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 16:59:12 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id g25so6295545wmh.0
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 16:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yrJSAuXZ8iQ8XeY6etsdEhfLWBQlIi7r/ChOZaLkmlo=;
        b=sHyh6a5xIIjLYKzxwZhfhxy3vJ3G/hSrVxelNECtnHzgzaNR5EQkUZgtsRWTsxt0cs
         BRDI0t1KKsFNVKDA9brNlpQfDltaq+9ORUC2PyEm0bXnQ+kXlivEFDHLJgHTxT0WRTk+
         iAlfRC9b4i0H2nBNqMqmezvldriasXD3DGeX07gA2dYoxW3Nj+iS5Kq3SMiBLUSfK0jd
         Lm4gptQfsgUKuHXB2ga+0gfp8bBAAosmhKjTjXzxZYq4FZfMK/CB2lt2rwl8jjqwdcea
         O7BhZcUJKpj7Po2dIM+KjZMgbTrPWDX9RDga2itUPtrmOeAQpvQoXLSxYr9SpcNZJmH0
         Jzsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yrJSAuXZ8iQ8XeY6etsdEhfLWBQlIi7r/ChOZaLkmlo=;
        b=e//6V7v9agJZg0qwE5lF0zNmOoD1UBTzTcEyQ2BUcO0880VOWfeT7ka42dKOglnG41
         zhYY+X9egvXy3Zz4ZYmT+KXl3Oif3pQnGYMB2j8Cym2nmylIOvR6WsKG7JZVVphvaaDB
         rmLx0iYiIdr9MG09i+P6oiqdZQ/mBrMR2rGvHlHMeXMvbIqdzSeBrFYxoBgEvYt1w7Ss
         fe8nMIQXAMPTEYw2REASVCu5lSK9/v7LH7ShBq3xi1nfP8tFDFH5Ud0QwgJ7OXZVGTvV
         VdGJ+ba+CMY1BAIDdwrYtwH1BmH3yldZODd5q6bMF60wXwQ1X15XO49shJvmj+iRyV+k
         bovQ==
X-Gm-Message-State: AOAM530iQZA9cRxSit5MTPvHK0QjdsQSitURvp89/nuA7ozGx8ahJI7i
        2oNFN0SeLqGwZBnxE9KgpRk=
X-Google-Smtp-Source: ABdhPJyT+bz0ijmARqeuyUFdmGWx+IaMEwbFjw/T3mTEymolmkO/qJTU8clEEVY0rz/pOAeGJfROdQ==
X-Received: by 2002:a7b:ca50:: with SMTP id m16mr5558983wml.113.1616198351372;
        Fri, 19 Mar 2021 16:59:11 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id q207sm9327832wme.36.2021.03.19.16.59.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 16:59:10 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Utkarsh Singh <utkarsh190601@gmail.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH] printf.3: Add overall structure of format string
Date:   Sat, 20 Mar 2021 00:57:18 +0100
Message-Id: <20210319235717.28264-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Utkarsh Singh <utkarsh190601@gmail.com>

Can we add a small syntax structure for format string in printf(3)
manual.  I personally find if easier to remember and scan.  This has
been taken from OpenBSD printf(3) manual.

Signed-off-by: Utkarsh Singh <utkarsh190601@gmail.com>
[ alx: ffix ]
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/printf.3 | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man3/printf.3 b/man3/printf.3
index fa6564426..7c993074c 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -193,6 +193,14 @@ an optional
 and an optional
 .IR "length modifier" .
 .PP
+Overall syntax of format string is:
+.PP
+.in +4n
+.nf
+%[$][flags][width][.precision][length modifier]conversion
+.fi
+.in
+.PP
 The arguments must correspond properly (after type promotion) with the
 conversion specifier.
 By default, the arguments are used in the order
-- 
2.30.1

