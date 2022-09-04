Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4D615AC519
	for <lists+linux-man@lfdr.de>; Sun,  4 Sep 2022 17:46:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231905AbiIDPqt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Sep 2022 11:46:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229627AbiIDPqs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Sep 2022 11:46:48 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A34F930F59
        for <linux-man@vger.kernel.org>; Sun,  4 Sep 2022 08:46:46 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id az27so8363687wrb.6
        for <linux-man@vger.kernel.org>; Sun, 04 Sep 2022 08:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=kdI6mB6BJQWy4FKxybN0VwX8glKBlsUHx4qz6etlozw=;
        b=SPwNlpAJl7/XpNH0sg5dzoI7TK8CtdJXVRXScQUM2k9cMNxGWgJsjXSCLOIzuh76vh
         p7sqk4K5wsduu7g7z1nXidRj2l7RIjw+b4jbivFPmNn8MLMEYmNmNFUEbFZWMmkDxcrG
         QRmPCAyPdi/gKnTfK6yT18/Teo2gfWwT068rux/MfD52AST39P0pESQWMgtfDZwHCX7K
         lZ1S0t/Tc8Vpn44+QsL8M9/jJAXraP2BbG0+9tHETwutW7dgu/jbHM+ZUAAmx3tR811Z
         dWvNUE8LfWxAj2o4oUxHU+iJbzFoPa7DRKugAax7hIad3d4Zu8MGwnOj/li090Lf4bTd
         S0Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=kdI6mB6BJQWy4FKxybN0VwX8glKBlsUHx4qz6etlozw=;
        b=mYUMDogrL40UAP6Dcn61a+O9Zi3KydrTV0xXy53PXkT6JavfrQlSF4gdHXbzqZIC5L
         8tIJ/NAKyJpEPuHB+3SCT437PB7u3IsU94th7fLEKY2HJc+ffTza3I8Ri7kqH+X3Hvv3
         RufRRUh5pkTgLTyTQhZMBjKxl7e121NJyF5TIFl5dDJEpyz6MYXzs12RWZcIkh7nNXiI
         NASAeEuXlY7i3prEkSSCZvY4Ppb+73oCB0dToGdddx9IF7MyDz/IOTh8FiPdotLW5jU0
         fJJlDFFjbpwRQFy2fWZfwqozVWnbn/ebcy559v+mFtJ6H6PJ0HSvsmLB6OrwDLDiM99/
         n+zg==
X-Gm-Message-State: ACgBeo1w1L2xdjekIABLg5TnkCFmxBuj1Uc3U2B9wDbj/F14MmTItbH7
        tZnjUPB+75IjXYAxuk62BDs=
X-Google-Smtp-Source: AA6agR4E3fNf5GDohF5gqkOmHv6DconV7hWkZqSr4im+b0VLldZVcHddPHEMNkHqBTpHHp3faF0mUQ==
X-Received: by 2002:a5d:6106:0:b0:226:e79f:5c2 with SMTP id v6-20020a5d6106000000b00226e79f05c2mr13399155wrt.284.1662306405041;
        Sun, 04 Sep 2022 08:46:45 -0700 (PDT)
Received: from amir-ThinkPad-T480.ctera.local (bzq-166-168-31-246.red.bezeqint.net. [31.168.166.246])
        by smtp.gmail.com with ESMTPSA id c8-20020a05600c0a4800b003a5f3f5883dsm16782652wmq.17.2022.09.04.08.46.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Sep 2022 08:46:44 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] fanotify_mark.2: Document FAN_MARK_EVICTABLE
Date:   Sun,  4 Sep 2022 18:46:39 +0300
Message-Id: <20220904154639.2623138-1-amir73il@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Add section about evictable inode marks and example use case.
Add possible error case EEXIST related to evictable marks.

Reviewed-by: Matthew Bobrowski <repnop@google.com>
Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---

Hi Alex,

This is an update for a new fanotify feature in v5.19.
Please wait to see if Jan has any commetns before merging.

Thanks,
Amir.

 man2/fanotify_mark.2 | 50 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index 2696a803a..757ad9159 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -153,6 +153,44 @@ If this flag is not set,
 the ignore mask is cleared when a modify event occurs
 for the ignored file or directory.
 .PP
+.TP
+.BR FAN_MARK_EVICTABLE " (since Linux 5.19)"
+.\" commit 5f9d3bd520261fd7a850818c71809fd580e0f30c
+When an inode mark is created with this flag,
+the inode object will not be pinned to the inode cache.
+Therefore, allowing the inode object to be evicted from the inode cache
+when the memory pressure on the system is high.
+The eviction of the inode object results in the evictable mark also
+being lost.
+When the mask of an evictable inode mark is updated
+without using the
+.B FAN_MARK_EVICATBLE
+flag,
+the marked inode is pinned to inode cache
+and the mark is no longer evictable.
+When the mask of a non-evictable inode mark is updated
+with the
+.B FAN_MARK_EVICTABLE
+flag,
+the inode mark remains non-evictable
+and the update fails with
+.B EEXIST
+error.
+Mounts and filesystems are not evictable,
+so an attempt to create an evictable mount or filesystem mark
+will results with
+.B EINVAL
+error.
+For example,
+inode marks can be used in combination with mount marks
+to reduce the amount of events from noninteresting paths.
+The event listener reads events,
+checks if the path reported in the event is of interest
+and if it is not,
+the listener sets a mark with an ignore mask on the directory.
+Evictable inode marks allow using this method for a large number of directories
+without the concern of pinning all inodes and exhausting the system's memory.
+.PP
 .I mask
 defines which events shall be listened for (or which shall be ignored).
 It is a bit mask composed of the following values:
@@ -409,6 +447,18 @@ is neither
 .B AT_FDCWD
 nor a valid file descriptor.
 .TP
+.B EEXIST
+The filesystem object indicated by
+.I dirfd
+and
+.I pathname
+has a mark that was updated without the
+.B FAN_MARK_EVICTABLE
+flag,
+and the user attempted to update the mark with
+.B FAN_MARK_EVICTABLE
+flag.
+.TP
 .B EINVAL
 An invalid value was passed in
 .I flags
-- 
2.25.1

