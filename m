Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CACF353565
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:42:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236800AbhDCTmE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236794AbhDCTmE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:04 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7541EC0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:42:01 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id u5-20020a7bcb050000b029010e9316b9d5so3802157wmj.2
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fwhwr6f7qb06ZDUqOxxmDfgFb3kytZmjcBLKXopOTrs=;
        b=bRIsJ17WhGGpDInpYT8i2SuGAb54t1REJ+HgGv1qMnWoJu9idHA6xkcpN9BB7yF2gW
         jrLuQyZBtGvobcP215ZqY4mWzmVg6lXEc18+bRKz4Mx07GwsoHFV50jJA/q5SzD1hRmj
         8viN9ukHlhDkwQHBfj24b/nBrrSkxk3xywswGbBuXLnmrPxFwiMwk5qYwzwPbpRW/sej
         dvHty1O2I2iLw48Sca+r2ypxspdCP8bhxhPiQNwKEn2lGGTc1gcI5MROgZp4G0FOUugr
         b5Kz8rP5sVSzKHaNBly912++6tdCKGkW5yrFf6yRmMO8NhQ9K9h02O9TTr+spRH21c4z
         EVFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fwhwr6f7qb06ZDUqOxxmDfgFb3kytZmjcBLKXopOTrs=;
        b=dfpCVbE1aAb7AnVz0NWjSY6rNPRqg/tpR6jdy60d3CW6QJv9K0lsrodq8t4dHl8zCy
         n7Tg3BswAENZTWVsc9dge5y5b45hH0mTFd3s1aF48tBd04Xnzijeb3In0xjrJHMdz3OX
         vHJLUA0T8q6I7HeuoCSy1bMulxGbLvXatBoRPMt/SSkcb91nWxydpbeBmqJJPSV9r9Sx
         A5+h0i/kmFQTx1Zx/mvS03BB8B6/AsdtpfqODbnn4dxDF541ztxXIQY7RGf3mcftDZdr
         tBJrSpCFcgpA2SUZcuBigucBM5oKi3JPY17xAxPkT89OMZ5XHZBNMDxUVGWXm3OCdPas
         JajA==
X-Gm-Message-State: AOAM5331SP0PI3fIFLwIPfMBF6xsYfgArkv5jvF6Nk2G9Umu14WA7d4P
        9hzp1NB9kahWnxR3gnpQutI=
X-Google-Smtp-Source: ABdhPJxnPtB2HN5kUG275PWcoBGZgZS24y+7eIBqTtRlHwJZXHvZb1+v085dDGj1phQehXlJIM0VuQ==
X-Received: by 2002:a7b:c385:: with SMTP id s5mr17366824wmj.17.1617478920257;
        Sat, 03 Apr 2021 12:42:00 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:42:00 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 18/35] fcntl.2: Remove unused include
Date:   Sat,  3 Apr 2021 21:40:10 +0200
Message-Id: <20210403194026.102818-19-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I couldn't find a reason for including <unistd.h>.  All the macros
used by fcntl() are defined in <fcntl.h>.  For comparison, FreeBSD
and OpenBSD don't specify <unistd.h> in their manual pages.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/fcntl.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/fcntl.2 b/man2/fcntl.2
index de87eec1f..7b5604e3a 100644
--- a/man2/fcntl.2
+++ b/man2/fcntl.2
@@ -69,7 +69,6 @@
 fcntl \- manipulate file descriptor
 .SH SYNOPSIS
 .nf
-.B #include <unistd.h>
 .B #include <fcntl.h>
 .PP
 .BI "int fcntl(int " fd ", int " cmd ", ... /* " arg " */ );"
-- 
2.31.0

