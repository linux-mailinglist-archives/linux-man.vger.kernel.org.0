Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CF89372D81
	for <lists+linux-man@lfdr.de>; Tue,  4 May 2021 18:02:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230501AbhEDQDb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 May 2021 12:03:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230512AbhEDQDb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 May 2021 12:03:31 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5A59C061574
        for <linux-man@vger.kernel.org>; Tue,  4 May 2021 09:02:34 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id l4so13970070ejc.10
        for <linux-man@vger.kernel.org>; Tue, 04 May 2021 09:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cUyeJBpD6SqadhNxsUMRmp6+tDkfREstn6fUxzoAgp0=;
        b=izDexkpr7FqnklAuK9cGBaaFxCUUJ7p6/Qb/ZvmpyvhDOHui1twHy4d4A4L5TWtp2v
         Okw0Obu6zgHnUI5hyK01g/r5TdAXcT8/GDLYvpEsjYqQpDRjBUDKpzhztZeTdr/upfmA
         /aosOk/HVXGS7VF6BHTWfWbHeGt6EW5T1ENum/FUCH2RgoGlz3/rATp+c6BrzYw9THtn
         RQ3vH8a868l5Qt3No9qDLUVqVG3ao7hNcZQrLIyg+0iKjQc3hiqQu41GcqiEqpx5fj1c
         hS7bKwZ9SAPSs2yK39BN/Xc+bmXefWQbpGAcvAN8IAS+qmMieOjC7Inf+gRBK4wb4kGY
         RnOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cUyeJBpD6SqadhNxsUMRmp6+tDkfREstn6fUxzoAgp0=;
        b=agsj0iiCkKOH7JBq/llCWn2K52FjXFS4OwREuHylCeXSQJYGwBsQUiB7surgxzX5I6
         JXmgBaNzgRCJvb483aA6txwsuYDMHFpgqjQ1Xt7nslxzXU2cErS0DJEqRSxczI1I7Yyf
         F9UBkj+Jmmi3psoW+jb7EGEgYKnvrqif9hy56+yU5WLqH7pD4J1XhURKMtwaeABZyFDo
         C0F0EATR8RUnUP2aaPpojItVqTTcFD8zlqOGncXoWbkF8XwWhbyjr5AiOSw8MmegygRI
         Ss7ZEFtosovwhCJawGqWjHAA9t7Adekei7+a9ACK/F2WRPXOa5c/3pIq+pDo4dgEbrhw
         AMnw==
X-Gm-Message-State: AOAM532LWXEFqjrChLMVNEZ5EOkJrUcEqduxIWj23QVqlxqBOaHhB9xW
        tz+eObhKP4F1Y2d+fFWMC8Zr9n/oqyQ=
X-Google-Smtp-Source: ABdhPJwEt5s1wnj0wXmBAgtuX5Iraj9rVCrdxHubyQ3/DzfKu2YvEUslezSNV1WXiHrEpEYxCsVwIw==
X-Received: by 2002:a17:906:f119:: with SMTP id gv25mr5406853ejb.87.1620144153094;
        Tue, 04 May 2021 09:02:33 -0700 (PDT)
Received: from localhost ([185.112.167.60])
        by smtp.gmail.com with ESMTPSA id f30sm1633804ejl.62.2021.05.04.09.02.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 09:02:32 -0700 (PDT)
From:   =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@gmail.com>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] execve.2: tfix
Date:   Tue,  4 May 2021 18:02:31 +0200
Message-Id: <20210504160231.2688063-1-stepnem@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Štěpán Němec <stepnem@gmail.com>
---
 man2/execve.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/execve.2 b/man2/execve.2
index 1609bce04a54..c18ca54124fc 100644
--- a/man2/execve.2
+++ b/man2/execve.2
@@ -141,7 +141,7 @@ similarly, the effective group ID is copied to the saved set-group-ID.
 This copying takes place after any effective ID changes that occur
 because of the set-user-ID and set-group-ID mode bits.
 .PP
-The process's real UID and real GID, as well its supplementary group IDs,
+The process's real UID and real GID, as well as its supplementary group IDs,
 are unchanged by a call to
 .BR execve ().
 .PP

base-commit: 2673a70a57adb0acfe39416de245b357e7f1bcd4
-- 
2.30.2

