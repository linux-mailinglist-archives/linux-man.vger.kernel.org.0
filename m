Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8151A25DF72
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 18:12:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725984AbgIDQML (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 12:12:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725966AbgIDQMK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 12:12:10 -0400
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com [IPv6:2607:f8b0:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7489AC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 09:12:10 -0700 (PDT)
Received: by mail-il1-x143.google.com with SMTP id x2so6851793ilm.0
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 09:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FfznMM24pCQcmlGZkwidtLi3kn5mMGFxnikPN8ncSqw=;
        b=Ml39Xj2JBjbUoQbCUUFjwzw7QB45OfXFKl4l22YO+hyFXJtCoQAd5Kxfh+q3PyyFqs
         6Fwen1iyP4pKsU1mCVNNed6i/am6C0HEAkvtBuoY9eFA8Y/ERWoX5Fx8Q5+CE7zaoSv7
         2e5H3k9yNZiCpuqs/eztWq57miv7v6zM+iPuM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FfznMM24pCQcmlGZkwidtLi3kn5mMGFxnikPN8ncSqw=;
        b=ii5tXYJfl+o8xgCl0d3NPB+3pEnXSjgLgEaN/PASGSlN2mvON2KAW0+PFkNhe5q3EQ
         LsoTp9u+cf+A+Z48Ng+Q4tlBUswI61IcbUyz13JnEah8LPxTnf7puUDNdwrt+qc/vdS7
         xEZz4w57oTY3bO2FeCWvoxKKBRlHp6LhFG+uYehuqGMt9i4X8P3O51BEzc7enuAoE8Zs
         YMhkIraF1j4ubgNuxoyZzAG7aHKTAyX3eFFN8tvH3wTONs4nyyz8Q+q8meRup+defEP2
         5Pd4GTXQ33X9CjpQf+fYeZcTdaGy9ipzkEgPj5gi2sba3hYIvhRBBIxo81U4W7NpvXuO
         XSKg==
X-Gm-Message-State: AOAM530QbsCcidXGibOMuvc8NNGj7t4CXQL3XfTS5bBtQRTT8ZWp4cjb
        uqS3ywxSz1RLPaaAWi/y40o+Ig==
X-Google-Smtp-Source: ABdhPJwLxqAwtKBbc5qHFTQYMco0OUdQOYO1QQ8PV1KZQ29dKMuH+gACw36++PBV7JYGq6CAvgJO6g==
X-Received: by 2002:a92:5f87:: with SMTP id i7mr8132590ill.67.1599235929787;
        Fri, 04 Sep 2020 09:12:09 -0700 (PDT)
Received: from ravnica.hsd1.co.comcast.net ([2601:285:8380:9270::8e6])
        by smtp.gmail.com with ESMTPSA id l5sm3118581ios.3.2020.09.04.09.12.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2020 09:12:08 -0700 (PDT)
From:   Ross Zwisler <zwisler@chromium.org>
X-Google-Original-From: Ross Zwisler <zwisler@google.com>
To:     mtk.manpages@gmail.com
Cc:     Ross Zwisler <zwisler@google.com>, linux-man@vger.kernel.org
Subject: [PATCH] Add NOSYMFOLLOW flags to mount(2) and statfs(2)
Date:   Fri,  4 Sep 2020 10:12:03 -0600
Message-Id: <20200904161203.598281-1-zwisler@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

These flags should first appear in Linux kernel version v5.10.

Signed-off-by: Ross Zwisler <zwisler@google.com>
---
The nosymfollow kernel code has been merged into Al Viro's tree and
should be part of the v5.10 merge window.
https://git.kernel.org/pub/scm/linux/kernel/git/viro/vfs.git/commit/?h=work.misc&id=dab741e0e02bd3c4f5e2e97be74b39df2523fc6e
---
 man2/mount.2  | 10 ++++++++++
 man2/statfs.2 |  4 ++++
 2 files changed, 14 insertions(+)

diff --git a/man2/mount.2 b/man2/mount.2
index f565ee578..039e4b83b 100644
--- a/man2/mount.2
+++ b/man2/mount.2
@@ -280,6 +280,16 @@ the
 flag to
 .BR open (2)
 was specified for all file opens to this filesystem).
+.TP
+.B MS_NOSYMFOLLOW
+Do not follow symlinks when resolving paths.  Symlinks can still be created,
+and
+.BR readlink (1),
+.BR readlink (2),
+.BR realpath (1)
+and
+.BR realpath (3)
+all still work properly.
 .PP
 From Linux 2.4 onward, some of the above flags are
 settable on a per-mount basis,
diff --git a/man2/statfs.2 b/man2/statfs.2
index 0fc537c14..d5edf2a50 100644
--- a/man2/statfs.2
+++ b/man2/statfs.2
@@ -206,6 +206,10 @@ Writes are synched to the filesystem immediately (see the description of
 .B O_SYNC
 in
 .BR open (2)).
+.TP
+.B ST_NOSYMFOLLOW
+Symlinks are not followed when resolving paths; see
+.BR mount (2).
 .PP
 Nobody knows what
 .I f_fsid
-- 
2.28.0.526.ge36021eeef-goog

