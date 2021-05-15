Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88F56381A6E
	for <lists+linux-man@lfdr.de>; Sat, 15 May 2021 20:20:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234378AbhEOSVy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 May 2021 14:21:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbhEOSVx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 May 2021 14:21:53 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 854C5C061573
        for <linux-man@vger.kernel.org>; Sat, 15 May 2021 11:20:38 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id k5-20020a05600c4785b0290174b7945d7eso908018wmo.2
        for <linux-man@vger.kernel.org>; Sat, 15 May 2021 11:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WKVocd6JR2b9iOPh8LiPbLTW+qN7Q3falsYL28DljIg=;
        b=f/uOWp+EhcUxzqE8PICKZSqNqTFzdidzsS20LstW9SVBsY5hriBfUbREjO+mCCplW/
         LKdzeUsi5LYBqlymsrHgGNJUbk/RRnwmzj3qs1+NYOYgJHYb/ci5a5PTJHIIofh3Yevr
         gaqBN17UfUh0xKz+YLkRkPvJGvHEffr+YaR3e/1vsjMqA+vZ6homz1QKSBrdWKNzxXz7
         hRPuipvzGWn7NLppj6oIeZIf11kT+Wvss/aorn1JCw9HOKGg+aLqadop0cOSisyerI0p
         HqnZsoZZA3A/y9+hgQEG+I0DvvWmse1smJbb0Rs1zrowts3qvtWuu7hPjmMtjQp58055
         sA0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WKVocd6JR2b9iOPh8LiPbLTW+qN7Q3falsYL28DljIg=;
        b=biuhcG1IhsOyvwPmYZhNrJbDh2E4os3TZ21dX77jAN8Ojtk4zpOQqhmh/bXkY7nTFN
         CNCPC7MFKUeiqcOoaPOWoCs6PakeE6et5iyjc7AUksJvwYBiTALoccUgQYmMpD39hjAj
         0qYFVjD1jofG5eTxnQro45RcKTjW2KwfGDgzGqUmoQDtFkHetRVomTSF0Fs8lqg9iYqk
         Ii8bR3/qvIvHdhn7J/PIpXQH5peK6i4PnP/gHJlpY/zC10s/D5jdPYgjitEFg1dm/V5z
         i88QQGEHQgGZTIYtv5dmk+qipUOEVaSZ/ni4Cp70aMZ6nSqqzApqMA9lVnT1joY7jvrZ
         u52A==
X-Gm-Message-State: AOAM533vbqlC2Kn4UKGR7uQp9DPnLwOoZ7WYsUbtxP1BR4KmB6nwkeBU
        ExcoxQxChk9gpOK3M3fgSXg=
X-Google-Smtp-Source: ABdhPJwgYaaI6uPQnrxDWGZ7Fuy6hjbxit+q+lhPi0avFfRyYIqFhebaRzXr3/q43Dbiqydj8qd2qA==
X-Received: by 2002:a05:600c:4103:: with SMTP id j3mr54833609wmi.128.1621102837102;
        Sat, 15 May 2021 11:20:37 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v10sm12007254wrq.0.2021.05.15.11.20.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 May 2021 11:20:36 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 1/8] rename.2: ffix
Date:   Sat, 15 May 2021 20:20:21 +0200
Message-Id: <20210515182027.186403-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/rename.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/rename.2 b/man2/rename.2
index c83ef08a1..04a183d84 100644
--- a/man2/rename.2
+++ b/man2/rename.2
@@ -39,7 +39,7 @@ rename, renameat, renameat2 \- change the name or location of a file
 .PP
 .BI "int rename(const char *" oldpath ", const char *" newpath );
 .PP
-.BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
+.BR "#include <fcntl.h>           " "/* Definition of " AT_* " constants */"
 .B #include <stdio.h>
 .PP
 .BI "int renameat(int " olddirfd ", const char *" oldpath ,
-- 
2.31.1

