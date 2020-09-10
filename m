Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 98A8426525D
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:16:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727113AbgIJVP6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:15:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728066AbgIJVPI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:15:08 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 289FAC0617AA;
        Thu, 10 Sep 2020 14:14:34 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id z9so2109678wmk.1;
        Thu, 10 Sep 2020 14:14:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NEcMV7mwVCcBwDSicVrtyHLbk/vsYwT0ZunUd30Uoo8=;
        b=rPIy73KWkAhX2hCOZ0I2FLsmAtunpa9hbQEtQnuo9kHWRAjhPYPO9hgVQtJ6cS3OPY
         XKSX7rMiBHIXLxiaVDH+W3E2njbzekc6qmVibnGzEuv1XrOpxR0deWkXE51wMlelEm3D
         Rl5+mJq2haAI8jAh9m5XOR9/H255CT2YXKXo2eikrQck0STffjzKXUWoj6ZxnlA3PPqO
         /N5kLN1y3dj1NPKpF2IXyT6yLj0K5nqYei9Z+Idznay2IlyL3zoKCrzcqd1AOZ2VTGFz
         hlROGgD6hyHZBrREJFrQYruNJISiVCiOSpsJfVa6+neDishFD6hvFNc4hob7+mfB4E7b
         c3TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NEcMV7mwVCcBwDSicVrtyHLbk/vsYwT0ZunUd30Uoo8=;
        b=YMe0Cg9m+Y4q02V9SSmGhrbZa6osO2OR5QXjfjJGdO9/cR0G1NvlglnCz/X5KqWC4G
         UAxqNj0WbKtrZ8nOVRt2ZuMBwO079+KqqSsyB7aQYbnjIsrBcCXAKt6pJvLPQmHJAfja
         ZWYZ3zDUAERgp8KcuusW3a4G4DUoFqDFlOE0PMNYxuGHbQ6LOiK6fvVqWXI6NPJcJEeU
         ORCzANQoVV7WdoF2MUtwm28yiIKIAdQNUNghPUxxk03Lv8kYHGA3VGEhRFPFrChMZSwh
         ek45UPxGbBX9dgJbEkNoJog50iL+Qh3/Hy9AoOgsgO4iBQYUtzgi1Lf1hmtp5QKdnFYV
         aIhw==
X-Gm-Message-State: AOAM533L4RDtkEUtXLQfoMbV0R/mecMZ0KT0iye+tNC4vBbn+QAuXWf0
        n64a2jOFC8gL342nxuQu3pg=
X-Google-Smtp-Source: ABdhPJyuLc4DzI4rDLXr6PE8oBRsxPYsgLyd3pYeR4Z/O3AJ/84z11b5/Llx8qqq6HngXmQ7UxBfRg==
X-Received: by 2002:a1c:dfc2:: with SMTP id w185mr697784wmg.15.1599772472828;
        Thu, 10 Sep 2020 14:14:32 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l10sm111502wru.59.2020.09.10.14.14.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:14:32 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 21/24] aio.7: Use perror() directly
Date:   Thu, 10 Sep 2020 23:13:42 +0200
Message-Id: <20200910211344.3562-22-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/aio.7 | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/man7/aio.7 b/man7/aio.7
index ff099885e..9b2c44c48 100644
--- a/man7/aio.7
+++ b/man7/aio.7
@@ -257,8 +257,6 @@ aio_return():
 
 #define errExit(msg) do { perror(msg); exit(EXIT_FAILURE); } while (0)
 
-#define errMsg(msg)  do { perror(msg); } while (0)
-
 struct ioRequest {      /* Application\-defined structure for tracking
                            I/O requests */
     int           reqNum;
@@ -390,7 +388,7 @@ main(int argc, char *argv[])
                     else if (s == AIO_ALLDONE)
                         printf("I/O all done\en");
                     else
-                        errMsg("aio_cancel");
+                        perror("aio_cancel");
                 }
             }
 
@@ -418,7 +416,7 @@ main(int argc, char *argv[])
                     printf("Canceled\en");
                     break;
                 default:
-                    errMsg("aio_error");
+                    perror("aio_error");
                     break;
                 }
 
-- 
2.28.0

