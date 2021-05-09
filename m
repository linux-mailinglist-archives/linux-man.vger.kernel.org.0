Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61A5437786B
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 22:20:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230032AbhEIUVO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 16:21:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230050AbhEIUVM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 16:21:12 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11828C06175F
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 13:20:08 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id d4so14423181wru.7
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 13:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IW6RK1ZchIv7s/BysqMBnJQaZwCurSn84Z4AHgwtCK8=;
        b=qFa2GF3F/PDHG0xDbNA0zSjupkgga5RaKLrzgeQONV1cu/UKKBnV2HXy5hLg4zJp+A
         sd/XtZEd3vJzzHCfZ2NKvSQdHw78R7L+VbIRYgej5muGwNjBwRaNE/FB0tLq4sPb0kY4
         QNO47Q1wuDbP13v8A6x0dMl6tpWADk4wZyfgcB46RMGCjRw8J0H0u3Kva052mB/WDp4h
         57rhgUQHrG3rFtsv1PaCcqn8aj24Vgl1/LDraemSlGM5uiLVNBOEd9CDSl8BsNoANdeO
         IRZrLBQlKVugbDYEyHq+MQT6tQCbSuJ16Dju20sCr/Btqgzq1nPdn0NIMYAgNwEk/+j/
         zVkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IW6RK1ZchIv7s/BysqMBnJQaZwCurSn84Z4AHgwtCK8=;
        b=qo986A+e+szMr5DWRMBRhxBkHgVQL/Eal8KcxReBNsIqj5wR8vMEgUpUX/FVvZrlvT
         ISPQUp0t33Ce9IAkyUEEuKQY4KNWotKaJfEMougeigOg86o7wOK8Y0S/3XHB3+4Py3qd
         +az8O2hY9Z3vT+wIyXb14P7+FC9OcMO7pRWTB5wo/ilX77/jR3JXIhjKF6DpiqBOvDcs
         bU8CKZt2ZXOFEu27jZy9dfwMg9Dn8HgJXb9OOW+4tyC1Hwsl6aBkKshk813DgTdo7fK2
         X5QDDKmkZMwAe0WvK6FdAjyk/XrJdOBLUxiUowEpbqifidZsf3aZbv70ZjAUG0FvoV12
         dBAA==
X-Gm-Message-State: AOAM531sQGVu5nUSyHtgvUEmZHVJ0xrrfk4ovHmGvVha8lg43k7cnjqL
        zpt/b9grYXe4EboMKtlReAQ=
X-Google-Smtp-Source: ABdhPJyPo7tsmRv0IsTaWAXIfqBIY4hddSeZLtGzol2n35rp8eSkLNzqgHxZHlRhszvMgV/yLhbpPA==
X-Received: by 2002:a05:6000:1051:: with SMTP id c17mr25893999wrx.43.1620591606933;
        Sun, 09 May 2021 13:20:06 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b10sm22591346wrr.27.2021.05.09.13.20.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 13:20:06 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     "Dmitry V. Levin" <ldv@altlinux.org>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 05/17] move_pages.2: ffix
Date:   Sun,  9 May 2021 22:19:38 +0200
Message-Id: <20210509201949.90495-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509201949.90495-1-alx.manpages@gmail.com>
References: <20210509201949.90495-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: "Dmitry V. Levin" <ldv@altlinux.org>

Signed-off-by: Dmitry V. Levin <ldv@altlinux.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/move_pages.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/move_pages.2 b/man2/move_pages.2
index 279de7568..69c182f95 100644
--- a/man2/move_pages.2
+++ b/man2/move_pages.2
@@ -24,7 +24,7 @@ move_pages \- move individual pages of a process to another node
 .nf
 .B #include <numaif.h>
 .PP
-.BI "long move_pages(int " pid ", unsigned long count, void **" pages ,
+.BI "long move_pages(int " pid ", unsigned long " count ", void **" pages ,
 .BI "                const int *" nodes ", int *" status ", int " flags );
 .fi
 .PP
-- 
2.31.1

