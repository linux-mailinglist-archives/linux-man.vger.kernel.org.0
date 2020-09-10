Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3FEE26525A
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:15:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726167AbgIJVPe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:15:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728045AbgIJVOu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:14:50 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C4B2C0617A2;
        Thu, 10 Sep 2020 14:14:27 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id e17so1975713wme.0;
        Thu, 10 Sep 2020 14:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=M08gFpIlSmow5oYYQAIlxFRJ5rmGf8HdsQiiFx5PB80=;
        b=hSlVc92c37ipgS5BcaKHH9cYLrHPxMptprD4AeEcjS+xesSoobhqswsJLZMGRU9ejE
         GdeNad+CIa/3MZG6TnXLchPCIYQrroAJV/MOS5uCkhKVp3M6LirvwF3DgXo3bmkrOb9J
         OHJLMlADrQQeBJ7ec5oBx0RRmlEYZcUIwAoKTX+HSJ5HtRmYuwaX4IzuwcNwR8Df/yeV
         8/Wki1YAMmVyf+u587XAxtLFR9UaxrysKeAFY7J3neU2Q1tj/OEiOV3PcIG1301BICci
         eRtK9WxYvj4Basaa8q6XBlcuU4ELYBm8H/YhhDqhuM6ydIrmpBZTUsNQsj5RTP3FENUJ
         XPTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=M08gFpIlSmow5oYYQAIlxFRJ5rmGf8HdsQiiFx5PB80=;
        b=ONS5HeXCviVB9Y5nIo0buVlqEOdcjlh/F5JPs9sUzIn1VtPW8LQ/nuV4pKGJCBZ7iN
         2nr7iDXfeLSuujRjjwoCLnNz+DJ3shFERIcZjg4AgXCmYA/I6/GnOBtcZlu6OpkuhDYE
         3oLWqTTiz18NmVWFNI88VoAXSelsGgWf+zYj04I2cwvZ0Ng81gGzaDNec3WcBeKOewM8
         F1HfJi7LGwl29JfDChWFdN41wJsjJdO6R4M/tm++DZiQ7sfilri464Lgt+ed6wFYSpH7
         vcLf5B7haAbt2hHx7B/B+F2Z+38ul3Fzmg+VNzn4e8ZlHxQ5EpC8XoAoG9q2+J7oM95M
         YvlQ==
X-Gm-Message-State: AOAM532VwEgis5wQ5XAggnsvdy1/wQL/y2CYFfAxt+p2dSuybBRyiPxl
        UAdQ4OytUeGs8O3rSFqaYTM=
X-Google-Smtp-Source: ABdhPJzLL6AQGYjtsDB/LxcOwshcuWzaHMoNo06SXh8WYb6IBE3b9fPIikwFQS90vNHysmL8gKHvng==
X-Received: by 2002:a05:600c:2257:: with SMTP id a23mr2029057wmm.102.1599772466385;
        Thu, 10 Sep 2020 14:14:26 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l10sm111502wru.59.2020.09.10.14.14.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:14:25 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 15/24] unix.7: Use sizeof() to get buffer size (instead of hardcoding macro name)
Date:   Thu, 10 Sep 2020 23:13:36 +0200
Message-Id: <20200910211344.3562-16-colomar.6.4.3@gmail.com>
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
 man7/unix.7 | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/man7/unix.7 b/man7/unix.7
index f61b51424..50828a5bc 100644
--- a/man7/unix.7
+++ b/man7/unix.7
@@ -991,7 +991,7 @@ main(int argc, char *argv[])
 
             /* Wait for next data packet. */
 
-            ret = read(data_socket, buffer, BUFFER_SIZE);
+            ret = read(data_socket, buffer, sizeof(buffer));
             if (ret == \-1) {
                 perror("read");
                 exit(EXIT_FAILURE);
@@ -999,16 +999,16 @@ main(int argc, char *argv[])
 
             /* Ensure buffer is 0\-terminated. */
 
-            buffer[BUFFER_SIZE \- 1] = 0;
+            buffer[sizeof(buffer) \- 1] = 0;
 
             /* Handle commands. */
 
-            if (!strncmp(buffer, "DOWN", BUFFER_SIZE)) {
+            if (!strncmp(buffer, "DOWN", sizeof(buffer))) {
                 down_flag = 1;
                 break;
             }
 
-            if (!strncmp(buffer, "END", BUFFER_SIZE)) {
+            if (!strncmp(buffer, "END", sizeof(buffer))) {
                 break;
             }
 
@@ -1020,7 +1020,7 @@ main(int argc, char *argv[])
         /* Send result. */
 
         sprintf(buffer, "%d", result);
-        ret = write(data_socket, buffer, BUFFER_SIZE);
+        ret = write(data_socket, buffer, sizeof(buffer));
         if (ret == \-1) {
             perror("write");
             exit(EXIT_FAILURE);
@@ -1116,7 +1116,7 @@ main(int argc, char *argv[])
 
     /* Receive result. */
 
-    ret = read(data_socket, buffer, BUFFER_SIZE);
+    ret = read(data_socket, buffer, sizeof(buffer));
     if (ret == \-1) {
         perror("read");
         exit(EXIT_FAILURE);
@@ -1124,7 +1124,7 @@ main(int argc, char *argv[])
 
     /* Ensure buffer is 0\-terminated. */
 
-    buffer[BUFFER_SIZE \- 1] = 0;
+    buffer[sizeof(buffer) \- 1] = 0;
 
     printf("Result = %s\en", buffer);
 
-- 
2.28.0

