Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C92B42F0667
	for <lists+linux-man@lfdr.de>; Sun, 10 Jan 2021 11:24:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726022AbhAJKXp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 10 Jan 2021 05:23:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726012AbhAJKXo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 10 Jan 2021 05:23:44 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E486BC061786
        for <linux-man@vger.kernel.org>; Sun, 10 Jan 2021 02:23:03 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id cm17so15780147edb.4
        for <linux-man@vger.kernel.org>; Sun, 10 Jan 2021 02:23:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=Jo6MLY+UpPdUDpoAbWV1MOpmj0xZmXK/YT3QjQ1Nuq8=;
        b=sWLCxUssLTy778w+RGtLzChcoz5GvR1QEJEdRTWcfiZjarmV2VIxbT3tdBtvOqfKly
         KHhUichH91lmPjtd9cI+kAKe5qaOfzJcnaMSQesZ9UnpjNHql+tBtTpJ74drAexZHyzI
         OjV38faiRcnz/HYz7cFN+9qKdG2OFwI4OSxgyxH+ZhY3pQ+7JCmz27u4ZDQJJRlXEvGM
         +Jj2HZfmqUra3/IOTrAyfW1f8JkYnNTipNARxnimfD0Fb8di1MauYfaBvlac8m2ogCJk
         0QuE8jCIhuR/gxM3wRe8/VJjrDf2qN95Sk4+Wf7X1o6zU0Uod8JAZligi8ozDqW5ZDvK
         PMFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=Jo6MLY+UpPdUDpoAbWV1MOpmj0xZmXK/YT3QjQ1Nuq8=;
        b=Kp/jAtMlBut1al6G1jf8SYi5msroI15HHMNBHvgub4jhfoHHd+eOV2MV8p4yVNJLva
         GeftTMyqJ2niiVRNssakP04cIpEJGtvXFGxZDTSjVHsQ50aMIFE5rJ04cwg00m5YWON0
         MnJb+4TBxcDhLM0mmGr6rmATCVTtWep/babx6JXCecoROQSmsiN2hYCaibZc8BYF5nuu
         79+CWRqk7AqiLwEB+UBMVpJoDUgcEWVI0vV1DbTXJ7puSo7/pr06JuNV9iW75pbK58hm
         TeD9P5hubxWZ/mJGxlezGEXy1H5XcJX7D9pfBbXzy7DLOM3yEGKWxfe1Nsjcl4QxY20n
         o6yg==
X-Gm-Message-State: AOAM530kjV7ztbmls41vG/oVmCFTUujTXNjJzaZ93mDxKvpBv4IA0Xt5
        hWPv8KCMwInLmar5OcUCOkZDCtlNRIABMCp+IdVP9t93IFE=
X-Google-Smtp-Source: ABdhPJw0MhN/sg1Rh39qH775KwqqJSYJGcUOSxBUZp1XvUC2l8x5tHpg0Oq37rjJgTPx+ItmXSQpnX4aVWeWg1Y1Ym8=
X-Received: by 2002:a50:9f4e:: with SMTP id b72mr10894381edf.200.1610274182459;
 Sun, 10 Jan 2021 02:23:02 -0800 (PST)
MIME-Version: 1.0
From:   Valentin <vakevk@gmail.com>
Date:   Sun, 10 Jan 2021 11:22:51 +0100
Message-ID: <CAB-V1p7jV3ssGLHbz+mMq219aQBS5Sn6UnyWBk_E2k-8=LQM+Q@mail.gmail.com>
Subject: [patch] clone.2: Fix types in clone_args
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From 2b076eb6579e8461eb16450f2e7f2c2f1c82fbad Mon Sep 17 00:00:00 2001
From: Valentin Kettner <vakevk@gmail.com>
Date: Sun, 10 Jan 2021 11:18:20 +0100
Subject: [PATCH] clone.2: Fix types in clone_args

A file descriptor is an int so it should be stored through an int pointer while
parent_tid should have the same type as child_tid which is pid_t pointer.
---
 man2/clone.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/clone.2 b/man2/clone.2
index ce55997b5..fecec90c8 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -183,11 +183,11 @@ is a structure of the following form:
 struct clone_args {
     u64 flags;        /* Flags bit mask */
     u64 pidfd;        /* Where to store PID file descriptor
-                         (\fIpid_t *\fP) */
+                         (\fIint *\fP) */
     u64 child_tid;    /* Where to store child TID,
                          in child\(aqs memory (\fIpid_t *\fP) */
     u64 parent_tid;   /* Where to store child TID,
-                         in parent\(aqs memory (\fIint *\fP) */
+                         in parent\(aqs memory (\fIpid_t *\fP) */
     u64 exit_signal;  /* Signal to deliver to parent on
                          child termination */
     u64 stack;        /* Pointer to lowest byte of stack */
-- 
2.30.0
