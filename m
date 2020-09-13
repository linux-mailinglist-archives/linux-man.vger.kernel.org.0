Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A8962680F0
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 21:12:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725956AbgIMTM3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 15:12:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725936AbgIMTMZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 15:12:25 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DFDAC06174A
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 12:12:25 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id f18so10669028pfa.10
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 12:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=n3gy988OT7du1yJqjCxcJW9YJhfWIDV8F/IEm0UjyNQ=;
        b=GyPuTtiSgbikU1uQk7uN9PKLHzInzrcCRA1ETrM7XUZuq1HMN1vv7qMTW5S5I9U/nc
         XStmKzoryVElLDPFhFL8vw22dNevRv5Vv29+w6mNfY/dNWXbp89M/Gmwg0Z26BCiV1jq
         wlv0tq866jfAttNqaUmKTMW5MSzcoey1+5ajfqjnjmzA/dNF3r1X30HaX8GRAG4ZiXDW
         nIasO3aE993DQ8sOmJEcb2A+6lWllKVm2Du5GRCSqe26ERL+g1KeNjM4IMR7KZyygR00
         LHXWSpfq2eLQbUaERlWhf+glw7IMp7mnZ9siue/7rnp3wSMs+gNKAS6vJLOy0Qdaj/7z
         NVqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=n3gy988OT7du1yJqjCxcJW9YJhfWIDV8F/IEm0UjyNQ=;
        b=ldr8J4Y69EOs/n6CM0wg5i3dCrpVJ7sBv4aU+kG1q1RTJwDfT4N6L8MeXHMvERs5KY
         wcd6VJcs79wVaYd+2AA0N6JWFe02cVNVy43fJ7X3SufUTzZ10VbJeHqn5bUTfJGXmrXC
         oeuk9nn6ZwZPBzzON4+c8ELCWelmcXXnkEA95VXh8F6q7rH3se3GWDiowM2AyNgcnO5H
         /Gs5hF43qNN9iMgxPa/qAQeBGLtzIqRg50cFmqfrmLXz5GcbkD4KWz7emRsiHDa+vLr6
         4CEXC5WXASnuSY7V7dwqFDEMGIpJVB7JhyqnQvF/FSC45lRITvOX4/iHF/oLGlbdKyu0
         WvUw==
X-Gm-Message-State: AOAM533McDF/JpGG4k1y/XF+zHjVEY+VWhyBZ8ztWDIsG/oW63wW5jh1
        4R431uC/GeYxPfiv8mgaEl90LrMTNS0=
X-Google-Smtp-Source: ABdhPJzu4hboVdU7uK9f1RQfRbBBSEPbLC74RxuF0J1blRZnPf7QfxCXMoL2/b2PvMB7Fam0X916wg==
X-Received: by 2002:a62:e501:0:b029:13c:1611:6527 with SMTP id n1-20020a62e5010000b029013c16116527mr10505009pff.7.1600024344683;
        Sun, 13 Sep 2020 12:12:24 -0700 (PDT)
Received: from sc-xterm-41.nvidia.com. (thunderhill.nvidia.com. [216.228.112.22])
        by smtp.googlemail.com with ESMTPSA id gi20sm6934030pjb.28.2020.09.13.12.12.23
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Sep 2020 12:12:24 -0700 (PDT)
From:   Konstantin Bukin <kbukin@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Konstantin Bukin <kbukin@gmail.com>, linux-man@vger.kernel.org
Subject: [PATCH] stat.2: fixed inode printing in example program
Date:   Sun, 13 Sep 2020 12:12:01 -0700
Message-Id: <20200913191201.1991-1-kbukin@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <139b02b1-901f-c7fc-71ec-3688c062e22b@gmail.com>
References: <139b02b1-901f-c7fc-71ec-3688c062e22b@gmail.com>
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
necessary here. Printing inode as unsigned long long fixes the issue.
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

