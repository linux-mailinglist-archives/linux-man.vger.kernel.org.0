Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77E4D5AC520
	for <lists+linux-man@lfdr.de>; Sun,  4 Sep 2022 17:51:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234157AbiIDPvV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Sep 2022 11:51:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229938AbiIDPvU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Sep 2022 11:51:20 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 125DC2DA8C
        for <linux-man@vger.kernel.org>; Sun,  4 Sep 2022 08:51:19 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id d5so4071935wms.5
        for <linux-man@vger.kernel.org>; Sun, 04 Sep 2022 08:51:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=o0Ok3zn7lI07pN+apRIJ0fqiak+xOXfcdbaKrywyUpQ=;
        b=exH6D426Fgb1RkIL/vAy8vYMqZk9m64xE2TJt85Jc5dKIciaGLuN8IrAaB2P+rpUJ3
         hbn2sjhJ7J0aQ6zrsWjHSv2EOCeC9nKbU6EyUAD6mPZMIHyvonwk4BE63qBJVyhRfYhc
         QkH6usqG1lkC8IINYHz58lc+caPa9AtsW1BxGg4+XDiXYvkw5eiASsy4dHl2WcttnvgV
         RleJPUIOsXuvTxlpslOw2Z+6xg2EmVusytThLt8nPOVBhvpSkez2mXCKmnfVbsciS15c
         NMmHQmlGRvI5lPKptxylSQrgqYFm3NHiSxCNrzOIl3ZSjxDYEqxQwZOB5ZImajH0Kc3p
         FR0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=o0Ok3zn7lI07pN+apRIJ0fqiak+xOXfcdbaKrywyUpQ=;
        b=CsD1CCmNCaqX+NqSRnu5MLU34wWJdsrwsJTQvfOSYTkKo/vd1IBUElJer/rIjWuU9r
         eXvSBO7nXcMUjaqhrvouUVCWetDbzNL68aC/tCHIlyezZWSwwPoT9EPHPY/144jdCNci
         JB5+KWx6OKuMIfhi794qJIOcQG2AfHqOID07tq1C2a+82+ZzjesmsLMoP5XF8XhN7XPO
         IvdE/F4UmpcblCoywvMtFOW50iwHpM2apEpsQNyC790RqjvvWzoHIg5c+ERXTP0TngRb
         o7E/YAvp0+2HBRXKo72oqF8jqMZoSVRb3xpkXAyeSTW/5uVB6qcM6EE3yp1T3zQRD06g
         PTfQ==
X-Gm-Message-State: ACgBeo1zzRCLJ5QfD0pf/f1pYK0I5WrL9COLXJDSVAYpPY1WfswcgCW8
        fGSzhmDhwCkKNu/NpiJHSCY=
X-Google-Smtp-Source: AA6agR7e5AeJTkyy4lJM2K904OWWy8rRbKJ/2WSDkCU4ClgHZ6e2AyqOmTWbvReP+JOhN7PMbc1U5Q==
X-Received: by 2002:a05:600c:5009:b0:3a9:f99e:7410 with SMTP id n9-20020a05600c500900b003a9f99e7410mr8537419wmr.5.1662306677515;
        Sun, 04 Sep 2022 08:51:17 -0700 (PDT)
Received: from amir-ThinkPad-T480.ctera.local (bzq-166-168-31-246.red.bezeqint.net. [31.168.166.246])
        by smtp.gmail.com with ESMTPSA id o21-20020a05600c4fd500b003a32297598csm15882121wmq.43.2022.09.04.08.51.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Sep 2022 08:51:16 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
Subject: [RFC][PATCH] fanotify_mark.2: Document FAN_MARK_IGNORE
Date:   Sun,  4 Sep 2022 18:51:13 +0300
Message-Id: <20220904155113.2623371-1-amir73il@gmail.com>
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

A new flavor of FAN_MARK_IGNORED_MASK that helps to resolve the
ambiguity around the combination of event flags and ignore mask.

It is also more strict in the events and flags allowed to be
set in a non-directory inode mark mask and it mandates the use
of FAN_MARK_IGNORED_SURV_MODIFY flag on filesystem, mount and
directory inode marks.

Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---

Hi Alex,

This is an update for a new fanotify feature merged to v6.0-rc1.
I am posting this man page update for early review.

You would probably want to wait for v6.0 release before merging
this anyway.

Thanks,
Amir.

 man2/fanotify_mark.2 | 147 ++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 146 insertions(+), 1 deletion(-)

diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index 757ad9159..e9303827c 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -146,12 +146,102 @@ capability.
 The events in
 .I mask
 shall be added to or removed from the ignore mask.
+Note that the flags
+.B FAN_ONDIR ,
+and
+.B FAN_EVENT_ON_CHILD
+have no effect in combination with this flag.
+The effect of setting those flags in the mask
+on ignoring events that are set in the ignore mask
+is undefined and depend on the Linux kernel version.
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
+flag,
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
+Specifically, unless
+.B FAN_ONDIR
+flag is set with
+.BR FAN_MARK_IGNORE ,
+events on directories will not be ignored
+and if the flag
+.B FAN_EVENT_ON_CHILD
+is set,
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
+will result in getting only events for creation of sub-directories.
+When using this flag to add to an ignore mask
+of a mount, filesystem, or directory inode mark,
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
 for the ignored file or directory.
+This flag cannot be removed from a mark once set.
+When the ignore mask is updated without this flag,
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
 .PP
 .TP
 .BR FAN_MARK_EVICTABLE " (since Linux 5.19)"
@@ -459,6 +549,32 @@ and the user attempted to update the mark with
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
@@ -484,8 +600,33 @@ but one or more event types specified in the
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
+and
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
@@ -547,8 +688,12 @@ and
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

