Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82E763537FA
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229693AbhDDL76 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbhDDL75 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:57 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66CC7C061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:52 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id z6-20020a1c4c060000b029010f13694ba2so4366038wmf.5
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=p0f8BoiZYLQmhvKOCDhjF7wsghptfqlQ/SkPDxqZjMU=;
        b=PPuZIZJop68FA+l2dkTW6vsqgWNTFT802GuAS+XbilWozZvipzjJ/x6W8bA+/ApyYt
         uEZtjFCcEpoKAB/PoJr9hhfS2mQtMQ+wYnwOm0qXzWdLwywk8vFtl7opXFjRLPC9C3Sw
         Gyrf7no+geOfVkaoOyppz/6MV9EDwHVpMAUftFlqoNvEtO+iLWWiOsXPjVnVe0Jt4uLX
         j54uRiaXrcOBneSnXiD+oxcbPoxRTkixLHa8c261gsOXuC2VCRdIu69U/NEkF5IhZq/H
         2+dolcLshMAGxfDrZuEIkUCzg3DJsDLHNjlt7Y/PWCkaygczleb2Old5G/P+YHHZ83AL
         wLYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=p0f8BoiZYLQmhvKOCDhjF7wsghptfqlQ/SkPDxqZjMU=;
        b=FW/5HmyorhBPY30vU64+b3WZU0IjGi96OwO/9jSr+LIeQCCwx/AikHQLs1N/Aoqiyw
         N4JMO/OeA2dhaHFX915E/P6LCpCiD0Q2NzMDQRv8J8a1p/7pzmWaBvSDUZ66Cq2Llwb+
         eqi63z+XLZu3VUDRzNsPGlm3Oe/dSZcdm1ljvXHzAokSlGQWqIDkJ6YD2eSclq+Isvy7
         3PEJ1RdEWOFyntSzHQtqY9fi7j0lXn/rTkuE2IkvwcjXJt6pAAKXL0XGqwgakdhL8Kp9
         RiMHizHJl1W/53Emxdzz+9NivyzeTzg388A7H3+h6TipJfDcQZNEtkA9EkI44Ct93/R8
         pCbw==
X-Gm-Message-State: AOAM530AhRMmdfGT6EBnR/AtpiTYIbp1tc3Suoiv71BWSkDD9n87oNha
        0JmdlCBJcdPvA9eLkdfDcpUIDyLk3BM=
X-Google-Smtp-Source: ABdhPJySp0ydgH1emyTBpG34AfxUDrgmXgGwc7RbpXErzUPZJg1J/zJwlOlRcg5BrBB0WnKKfFk4vA==
X-Received: by 2002:a1c:2016:: with SMTP id g22mr20889174wmg.137.1617537591188;
        Sun, 04 Apr 2021 04:59:51 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:50 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 26/35] delete_module.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sun,  4 Apr 2021 13:58:39 +0200
Message-Id: <20210404115847.78166-27-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/delete_module.2 | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/man2/delete_module.2 b/man2/delete_module.2
index 174ef04d2..21c9e9d8d 100644
--- a/man2/delete_module.2
+++ b/man2/delete_module.2
@@ -28,12 +28,11 @@ delete_module \- unload a kernel module
 .SH SYNOPSIS
 .nf
 .BR "#include <fcntl.h>" "            /* Definition of " O_* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.BR "#include <unistd.h>
 .PP
-.BI "int delete_module(const char *" name ", unsigned int " flags );
+.BI "int syscall(SYS_delete_module, const char *" name ", unsigned int " flags );
 .fi
-.PP
-.IR Note :
-There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 The
 .BR delete_module ()
-- 
2.31.0

