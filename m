Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9066268100
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 21:41:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725968AbgIMTlB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 15:41:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725938AbgIMTk7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 15:40:59 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3799BC06174A
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 12:40:59 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id b17so4262344pji.1
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 12:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=HQSGlqhoY84+pUUN1Q4SbOwJRKW5RelPwq2RdEJLmVw=;
        b=jZtQNhwLfvVs/9XUNN0JcrwiMMHgBRrS2LRiT2sGUDuf87uunUpfDlWNEQATU8bZnb
         jx0HX+nlMAdkZ/uydNc0SxheTmD3ce4xUO/A91/s8+M64vwAxqtExIwlOTCrSaLQBmvS
         LGZ1gsx+vdkhSr+DdTLiG7xgM6W4kXe2NSgTBEeZdCOjIWOdiumI+iVfy8zpILTzApLB
         soLwm1MSzehOU7eew/8k3Gfo4lirO98iFNFnwEw2pfzmS6fhV858DuzN9rtmZNWGK2xG
         7GpYswyjRETV4qtBe0SsXwQawNglf6P5c+XPMygOgIYOm/oIK39QXO7Z3lBUxYs+Rx1j
         zXvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=HQSGlqhoY84+pUUN1Q4SbOwJRKW5RelPwq2RdEJLmVw=;
        b=ctzPXoYY7GY1PPongandOVJHuOrRU/+JkkN5qsCi8LXl5O0PWvmbvYrrZR0JwI33OS
         Rc7bD6/D4Z4QDoU9dX9O5igZbOJVs8rbhI7Eh/7lbNB/aGKrdr6KZVfs/YIQKCIGYF7n
         6kqAiKmiSGmv/GaM16CcYAqXIF3uZwtd5CJOT9WGpKONVm/B/ad+kOF/v3ko3KAxZn4f
         KRM/7pTE58+CSpZNvF2EVmegNE1QBVWqoLHYnnWwH5M35tnCc6woY2YBvOJYPatj5PCV
         8hq6swIKJ5dF6THFguPSf8NGci91avuyc4DHiwj5IdP/82KGOjxncjm7ChNqSlIdwfHI
         om1g==
X-Gm-Message-State: AOAM532SqK0+U+9jX6mnVovqT+0Df2MpVT7lHSaw29YmGpPv/PIOMCty
        OjYVHDlvE+Nwi8YNFUUvdh0=
X-Google-Smtp-Source: ABdhPJzGwT56W3gu4IwptBzT+hSsptYL/vtqpuOqx1+BPOg5VTABQEwTQbcCJJaqXhwTJS1mk0AppQ==
X-Received: by 2002:a17:90a:9bc1:: with SMTP id b1mr10755924pjw.17.1600026058717;
        Sun, 13 Sep 2020 12:40:58 -0700 (PDT)
Received: from sc-xterm-41.nvidia.com. (thunderhill.nvidia.com. [216.228.112.22])
        by smtp.googlemail.com with ESMTPSA id q190sm8284057pfc.176.2020.09.13.12.40.57
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Sep 2020 12:40:58 -0700 (PDT)
From:   Konstantin Bukin <kbukin@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Konstantin Bukin <kbukin@gmail.com>, linux-man@vger.kernel.org
Subject: [PATCH] stat.2: fixed inode printing in example program
Date:   Sun, 13 Sep 2020 12:40:41 -0700
Message-Id: <20200913194041.14349-1-kbukin@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <CAF98MALn=1yCiQZ3vGjEtAfy9Nus5ScgFhYdWuBBp2x7MXxK9g@mail.gmail.com>
References: <CAF98MALn=1yCiQZ3vGjEtAfy9Nus5ScgFhYdWuBBp2x7MXxK9g@mail.gmail.com>
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
value which can be stored in signed long. Printing inode as unsigned
long long fixes the issue.
---
 man2/stat.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/stat.2 b/man2/stat.2
index 7e5417480..82eaefcda 100644
--- a/man2/stat.2
+++ b/man2/stat.2
@@ -681,7 +681,7 @@ main(int argc, char *argv[])
     default:       printf("unknown?\en");                break;
     }
 
-    printf("I\-node number:            %ld\en", (long) sb.st_ino);
+    printf("I\-node number:            %llu\en", (unsigned long long) sb.st_ino);
 
     printf("Mode:                     %lo (octal)\en",
             (unsigned long) sb.st_mode);
-- 
2.17.0

