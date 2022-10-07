Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AABA95F7423
	for <lists+linux-man@lfdr.de>; Fri,  7 Oct 2022 08:13:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229538AbiJGGNh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Oct 2022 02:13:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229482AbiJGGNh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Oct 2022 02:13:37 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3606BA279
        for <linux-man@vger.kernel.org>; Thu,  6 Oct 2022 23:13:34 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id a10so5696960wrm.12
        for <linux-man@vger.kernel.org>; Thu, 06 Oct 2022 23:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SDo5l0GXQ3t12e+EFm8pMkt6DrzQvkdwjOhC2S5qhsw=;
        b=EnENR3O7X6Gt4fe6P2u7OXgfWqd7m8i53juc4YipylqII9y/+/pd9UorDU9ThRAMHa
         SVwiJ3/QcYstXJN6VYu8Sz6GnyHkrNfp7AlNMy1fukB3Y0BM7pqnEjtez8i+U6RGx5TY
         xAP8c9ihE5XdCIdQn6APMl+LV73LQTS++wKL+v+IC852j4IpuBgzaN9lsaM65qmhdhAe
         W4qsd4Lv2S3m3T+dGAdPpbX/dw3qlZn/MvyoojLwkVEJ0Oqwx+t1yr64n+dtXAc156Yi
         arto/7DmLhBrl+UHp1TCEkf5B3HUs/5sHcz6NOxTTDgRwJBHq4SF9S/w3FbR8w06ngpR
         LFYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SDo5l0GXQ3t12e+EFm8pMkt6DrzQvkdwjOhC2S5qhsw=;
        b=hJcWilbFv5LiLL+KQ3sUNd4nE97rWUSMU73TrY/EZFd92RmoKvU8jdLm29Q7QE3zUp
         yc+6NBVAIPsEw0STnxbyBEVC/CJrj1k1h9OTqHv3JH7UbgD5KDHin250EHhWfw6NyUKL
         tRmsUH1qmZc4i2jFStR0ibUcS0nI0p1JAWDMBNLX+69X4wHoHdQaJ0fjwyjrFjXeO3A2
         XjKsEMqfPr35GCuvprpRFUDVUspE0iQAZF1dYGjGUoDbxpD7oH9yh7dE0vvunnk0mnfd
         KRSCdCZ0NlsDxhpeTVmDSPl3LmTrPvqrSTbSyQqJPfobADvSd+UcOLv80E9zIkQpvv0c
         8Ncg==
X-Gm-Message-State: ACrzQf1VyanCXgwbr6KNEArtBGVXAVUDxTgYutzQB6XJFBgjhRBy1BAA
        TqyLZ/8OE8OCF6c6b73Hhhg=
X-Google-Smtp-Source: AMsMyM6SEySD14CPvWWEJfZvReVKFyxtXgOhu7WtOZHEOTWLPWcQC44ysSIVv0a4zUp/1yjCHcRqbw==
X-Received: by 2002:adf:cd84:0:b0:22e:2ff1:7305 with SMTP id q4-20020adfcd84000000b0022e2ff17305mr2083365wrj.650.1665123213118;
        Thu, 06 Oct 2022 23:13:33 -0700 (PDT)
Received: from amir-ThinkPad-T480.lan ([77.137.66.49])
        by smtp.gmail.com with ESMTPSA id bh11-20020a05600c3d0b00b003b49ab8ff53sm1390934wmb.8.2022.10.06.23.13.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Oct 2022 23:13:32 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2] fanotify_mark.2: Document FAN_MARK_IGNORE
Date:   Fri,  7 Oct 2022 09:13:28 +0300
Message-Id: <20221007061328.1326041-1-amir73il@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

A new flavor of FAN_MARK_IGNORED_MASK that helps to resolve the
ambiguity around the combination of event flags and ignore mask.

It is also more strict in the events and flags allowed to be
set in a non-directory inode mark mask and it mandates the use
of FAN_MARK_IGNORED_SURV_MODIFY flag on filesystem, mount and
directory inode marks.

Reviewed-by: Jan Kara <jack@suse.cz>
Reviewed-by: Matthew Bobrowski <repnop@google.com>
Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---

Hi Alex,

This is the fanotify man page update for the 6.0 release.

Thanks,
Amir.

Changes since [v1]:
- Address review comments by Jan and Matthew

[v1] https://lore.kernel.org/linux-man/20220904155113.2623371-1-amir73il@gmail.com/

 man2/fanotify_mark.2 | 177 ++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 175 insertions(+), 2 deletions(-)

diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index b9b3357e2..f08ee2069 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -146,12 +146,130 @@ capability.
 The events in
 .I mask
 shall be added to or removed from the ignore mask.
+Note that the flags
+.B FAN_ONDIR ,
+and
+.B FAN_EVENT_ON_CHILD
+have no effect when provided with this flag.
+The effect of setting the flags
+.B FAN_ONDIR ,
+and
+.B FAN_EVENT_ON_CHILD
+in the mark mask
+on the events that are set in the ignore mask
+is undefined and depends on the Linux kernel version.
+Specifically, prior to Linux 5.9,
+.\" commit 497b0c5a7c0688c1b100a9c2e267337f677c198e
+setting a mark mask on a file
+and a mark with ignore mask on its parent directory
+would not result in ignoring events on the file,
+regardless of the
+.B FAN_EVENT_ON_CHILD
+flag in the parent directory's mark mask.
+When the ignore mask is updated with the
+.B FAN_MARK_IGNORED_MASK
+flag
+on a mark that was previously updated with the
+.B FAN_MARK_IGNORE
+flag,
+the update fails with
+.B EEXIST
+error.
+.TP
+.BR FAN_MARK_IGNORE " (since Linux 6.0)"
+.\" commit e252f2ed1c8c6c3884ab5dd34e003ed21f1fe6e0
+This flag has a similar effect as setting the
+.B FAN_MARK_IGNORED_MASK
+flag.
+The events in
+.I mask
+shall be added to or removed from the ignore mask.
+Unlike the
+.B FAN_MARK_IGNORED_MASK
+flag,
+this flag also has the effect that the
+.B FAN_ONDIR ,
+and
+.B FAN_EVENT_ON_CHILD
+flags take effect on the ignore mask.
+Specifically, unless the
+.B FAN_ONDIR
+flag is set with
+.BR FAN_MARK_IGNORE ,
+events on directories will not be ignored.
+If the flag
+.B FAN_EVENT_ON_CHILD
+is set with
+.BR FAN_MARK_IGNORE ,
+events on children will be ignored.
+For example,
+a mark on a directory with combination of
+a mask with
+.B FAN_CREATE
+event
+and
+.B FAN_ONDIR
+flag
+and an ignore mask with
+.B FAN_CREATE
+event
+and without
+.B FAN_ONDIR
+flag,
+will result in getting only
+the events for creation of sub-directories.
+When using the
+.B FAN_MARK_IGNORE
+flag to add to an ignore mask
+of a mount,
+filesystem,
+or directory inode mark,
+the
+.B FAN_MARK_IGNORED_SURV_MODIFY
+flag must be specified.
+Failure to do so will results with
+.B EINVAL
+or
+.B EISDIR
+error.
 .TP
 .B FAN_MARK_IGNORED_SURV_MODIFY
 The ignore mask shall survive modify events.
 If this flag is not set,
 the ignore mask is cleared when a modify event occurs
-for the ignored file or directory.
+on the marked object.
+Omitting this flag is typically used to suppress events
+(e.g.,
+.BR FAN_OPEN )
+for a specific file,
+until that specific file's content has been modified.
+It is far less useful to suppress events
+on an entire filesystem,
+or mount,
+or on all files inside a directory,
+until some file's content has been modified.
+For this reason,
+the
+.B FAN_MARK_IGNORE
+flag requires the
+.B FAN_MARK_IGNORED_SURV_MODIFY
+flag on a mount,
+filesystem,
+or directory inode mark.
+This flag cannot be removed from a mark once set.
+When the ignore mask is updated without this flag
+on a mark that was previously updated with the
+.B FAN_MARK_IGNORE
+and
+.B FAN_MARK_IGNORED_SURV_MODIFY
+flags,
+the update fails with
+.B EEXIST
+error.
+.TP
+.B FAN_MARK_IGNORE_SURV
+This is a synonym for
+.RB ( FAN_MARK_IGNORE | FAN_MARK_IGNORED_SURV_MODIFY ).
 .TP
 .BR FAN_MARK_EVICTABLE " (since Linux 5.19)"
 .\" commit 5f9d3bd520261fd7a850818c71809fd580e0f30c
@@ -462,6 +580,32 @@ and the user attempted to update the mark with
 .B FAN_MARK_EVICTABLE
 flag.
 .TP
+.B EEXIST
+The filesystem object indicated by
+.I dirfd
+and
+.I pathname
+has a mark that was updated with the
+.B FAN_MARK_IGNORE
+flag,
+and the user attempted to update the mark with
+.B FAN_MARK_IGNORED_MASK
+flag.
+.TP
+.B EEXIST
+The filesystem object indicated by
+.I dirfd
+and
+.I pathname
+has a mark that was updated with the
+.B FAN_MARK_IGNORE
+and
+.B FAN_MARK_IGNORED_SURV_MODIFY
+flags,
+and the user attempted to update the mark only with
+.B FAN_MARK_IGNORE
+flag.
+.TP
 .B EINVAL
 An invalid value was passed in
 .I flags
@@ -487,8 +631,33 @@ but one or more event types specified in the
 .I mask
 require it.
 .TP
+.B EINVAL
+.I flags
+contains
+.BR FAN_MARK_IGNORE ,
+and either
+.B FAN_MARK_MOUNT
+or
+.BR FAN_MARK_FILESYSTEM ,
+but does not contain
+.BR FAN_MARK_IGNORED_SURV_MODIFY .
+.TP
+.B EISDIR
+.I flags
+contains
+.BR FAN_MARK_IGNORE ,
+but does not contain
+.BR FAN_MARK_IGNORED_SURV_MODIFY ,
+and
+.I dirfd
+and
+.I pathname
+specify a directory.
+.TP
 .B ENODEV
 The filesystem object indicated by
+.I dirfd
+and
 .I pathname
 is not associated with a filesystem that supports
 .I fsid
@@ -550,8 +719,12 @@ and
 do not specify a directory.
 .TP
 .B ENOTDIR
-The fanotify group was initialized with flag
+.I flags
+contains
+.BR FAN_MARK_IGNORE ,
+or the fanotify group was initialized with flag
 .BR FAN_REPORT_TARGET_FID ,
+and
 .I mask
 contains directory entry modification events
 (e.g.,
-- 
2.25.1

