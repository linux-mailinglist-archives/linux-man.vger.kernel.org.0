Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 75056267FDA
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 17:06:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725936AbgIMPGX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 11:06:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725933AbgIMPGS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 11:06:18 -0400
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com [IPv6:2607:f8b0:4864:20::1041])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9172C06174A
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 08:06:17 -0700 (PDT)
Received: by mail-pj1-x1041.google.com with SMTP id b17so4078654pji.1
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 08:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=9Y9ZaM4WjtGDpe1K9tkgqf9oLhz4OtKCiCzMXQoXdaI=;
        b=EVogfu3MEdXhck0hudJEg9RNocqNaIXCUKQif4fISaqQ2XLMzQoZeD7D9o6b1MXHzw
         C/KctDCtdl/dfKuxdFUC4s98M6uCu7YKhIpP9I1nevK2Xyc5naz293zbtM9NS1HNaBm4
         /CtpQcXgqc7CEF6Xv2mojz1SBDM5G8Li5X2hMLwFGzJFaBxiKIYv/uJrobRCzH4RAk7J
         MhNgpJzookzY+qC29LzVinUFLMAHVe4BXI7TscqLD/cdSWIro3NytATelO8gRCxeZvqU
         gRI4ROhw0Y+eLqPw6HBh9QTbZf3Y8f/RDpE/v2dLHd7KywCqV2xnD4KSTdhwZkblrBhT
         +++g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=9Y9ZaM4WjtGDpe1K9tkgqf9oLhz4OtKCiCzMXQoXdaI=;
        b=gnHEFKiErb1bszd4oAABsc5EGXz14coXbgzfQxFv391ys9/kSjW6sZ2lGTgvYvamRy
         9jpREN7dmFsc+SHrW+p+AVQgDpXqiePT+kAf/nCg+iQNY7B4vX5063UCoffKyK6uSGpH
         FrxQ8F5D/Y0fTA3w9xRgHhXyYKD0Y10hY1EMSqwYVDPHMTmVrNDD8bYm9iy/xunZQkKR
         uG/+2yPtEozj/eYhttVQ+33VxZ1AFz+XiDsIq2BbOwp0X0okpoRO/PQ3HK3ZduVRzSFb
         Nade1eDh/p7dhhMQBfFlOkjbMcP/Xm7V2ikNnQzF8ZWhB4AqyaGhXjZfv1EEcoKS+qZR
         MSHw==
X-Gm-Message-State: AOAM531VpSgWXAlxap41Jr7gDrDAl13ztza8tJnQYUSVaTuBun8O0DZy
        W06ublgbHewXEUJXSM/C2K15dRTNTJI=
X-Google-Smtp-Source: ABdhPJzQhJpYj3f8Dd7GIP1tIYieyCvTKP1I8c6ScLfqTZGPBPFxLlYL7uI1KEJfILa2RS3kauI1Dg==
X-Received: by 2002:a17:90a:e2cc:: with SMTP id fr12mr10332508pjb.125.1600009577153;
        Sun, 13 Sep 2020 08:06:17 -0700 (PDT)
Received: from sc-xterm-41.nvidia.com. (thunderhill.nvidia.com. [216.228.112.22])
        by smtp.googlemail.com with ESMTPSA id h35sm6285771pgl.31.2020.09.13.08.06.16
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Sep 2020 08:06:16 -0700 (PDT)
From:   Konstantin Bukin <kbukin@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Konstantin Bukin <kbukin@gmail.com>, linux-man@vger.kernel.org
Subject: [PATCH] stat.2: fixed inode printing in example program
Date:   Sun, 13 Sep 2020 08:04:49 -0700
Message-Id: <20200913150449.11188-1-kbukin@gmail.com>
X-Mailer: git-send-email 2.17.0
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

inode numbers are expected to be positive. Casting them to a signed type
may result in printing negative values. E.g. running example program on
the following file:

$ ls -li test.txt
9280843260537405888 -r--r--r-- 1 kbukin hardware 300 Jul 21 06:36 test.txt

resutls in the following output:

$ ./example test.txt
ID of containing device:  [0,480]
File type:                regular file
I-node number:            -9165900813172145728
Mode:                     100444 (octal)
Link count:               1
Ownership:                UID=2743   GID=30
Preferred I/O block size: 32768 bytes
File size:                300 bytes
Blocks allocated:         8
Last status change:       Tue Jul 21 06:36:50 2020
Last file access:         Sat Sep 12 14:13:38 2020
Last file modification:   Tue Jul 21 06:36:50 2020

Such erroneous reporting happens for inode values greater than maximum
value which can be stored in signed long. Casting does not seem to be
necessary here. Printing inode as unsigned long fixes the issue.
---
 man2/stat.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/stat.2 b/man2/stat.2
index 7e5417480..76997bcbe 100644
--- a/man2/stat.2
+++ b/man2/stat.2
@@ -681,7 +681,7 @@ main(int argc, char *argv[])
     default:       printf("unknown?\en");                break;
     }
 
-    printf("I\-node number:            %ld\en", (long) sb.st_ino);
+    printf("I\-node number:            %lu\en", sb.st_ino);
 
     printf("Mode:                     %lo (octal)\en",
             (unsigned long) sb.st_mode);
-- 
2.17.0

