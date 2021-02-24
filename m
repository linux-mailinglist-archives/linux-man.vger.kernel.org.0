Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62066324137
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 17:05:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235926AbhBXPoO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Feb 2021 10:44:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238369AbhBXOvV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Feb 2021 09:51:21 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 905EAC061A29
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:08 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id u187so88555wmg.4
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UMQ3j+oYxqAgFlSPvIDKNOHfNXYRkgnaZElgyY3W3JY=;
        b=tui1EKLUrvTE+itxhJuPH+cf1dz78jyD9sq/lNGhJNhf8HDhN0tIrnO/rxAkX1vlX0
         RB8qHMYdWNLfvGIhJ0CzCiS5/EU3uaN8iNgbjSq3hF1yWRl2Y7+EphwSIvDY5jpk1U1s
         wMtr2NzRq6d3q8OJWvqOVVEnBKSYHPgT2exX4i2IaKDkTnTwlFwAEh7KAbokIEtwflWv
         CXdV71ROgfocf+FqDy6k1J/BGjkLSk48QvGsYZ8Ef8uvDJjntQzIYj8fWIJwphRqHHOo
         TrydCN9pnb9iqyjsGXvl/aJT1dxOzx0dOR49k7LHmyzba7jUraxNgQwGdUWg7xgWiwB5
         IiWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UMQ3j+oYxqAgFlSPvIDKNOHfNXYRkgnaZElgyY3W3JY=;
        b=CgiYI8i5qJqCqTsY4Zi2ZuvUzN17728BcJuIuxt1fTQt1MURvCExMciH3SaYCXuYfs
         HQ22SiVXgc8AtOmIjiIYbbAe+wRWsLcD6v4hHZ5qrLcWY/pAkULcD9R5qIMNdU/KmSu0
         olpXFkqj+3O6p83h7zpzQFtNYCEWtRfK1hd13GpXFT+lO9s4TVNKF7XGa9SdYMbZ9hs+
         ZRNmB0T5fIekogOdQyy+VI1LXWp8M+rltcZCVc8dzTqeSy1QOyZso6UTCsfmYeOxN6Xh
         Y5jn9a/jT1qtd5AHaVWwuD3936iu32YAMqBggOhw4Db/7+gLB1e5klPOnDK79IpVf1hK
         34gQ==
X-Gm-Message-State: AOAM531dwAOM+YuCehzcfQVZHShkXv9TIXrJF2/xbK28OHQYmQYqr70Y
        LIFM6LvL1uxCjxedH/51iA8=
X-Google-Smtp-Source: ABdhPJx0qx9sEHx4cS5U/mcFMoog+MeUmpdRMj0XG19M/5KUoz05BkrgAGoEuZIO565czWn0FuS7hQ==
X-Received: by 2002:a1c:ed1a:: with SMTP id l26mr4176410wmh.114.1614177847390;
        Wed, 24 Feb 2021 06:44:07 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id a5sm3990676wrs.35.2021.02.24.06.44.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 06:44:07 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 16/20] fopencookie.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 24 Feb 2021 15:43:07 +0100
Message-Id: <20210224144310.140649-17-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210224144310.140649-1-alx.manpages@gmail.com>
References: <20210224144310.140649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' for fopencookie().
Let's use it here too.

glibc:
libio/stdio.h:285:
FILE *fopencookie (void *restrict magic_cookie,
                          const char *restrict modes,
                          cookie_io_functions_t io_funcs) THROW wur;

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/fopencookie.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/fopencookie.3 b/man3/fopencookie.3
index 35b01493f..07736e3b2 100644
--- a/man3/fopencookie.3
+++ b/man3/fopencookie.3
@@ -31,7 +31,7 @@ fopencookie \- opening a custom stream
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
 .B #include <stdio.h>
 .PP
-.BI "FILE *fopencookie(void *" cookie ", const char *" mode ,
+.BI "FILE *fopencookie(void *restrict " cookie ", const char *restrict " mode ,
 .BI "                  cookie_io_functions_t " io_funcs );
 .fi
 .SH DESCRIPTION
-- 
2.30.1.721.g45526154a5

