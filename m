Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8F803DF999
	for <lists+linux-man@lfdr.de>; Wed,  4 Aug 2021 04:15:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229571AbhHDCPX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Aug 2021 22:15:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229678AbhHDCPX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Aug 2021 22:15:23 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 971C7C06175F
        for <linux-man@vger.kernel.org>; Tue,  3 Aug 2021 19:15:11 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id i10so1337644pla.3
        for <linux-man@vger.kernel.org>; Tue, 03 Aug 2021 19:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UjFMsu5AuB8y2JklpmxWkpvjvg/Owa8gVRrmStd6ayU=;
        b=Cmr16RhR3S9kXh2ikJV5AvNEKmk6hxegXxM3QUOc6dY+4YRHjLmEGl7N3+4PTzim5A
         BOdBgFYZH7/IuAIRd+17KdaakGD/EKydrpZodUAK1PYsbyYeAGQkime9a8l+zaoizH2y
         Twt3qugawlATSFx12Kv0CNZraFNjV/Mo+z62OJiNEHzFSGhSQ+zlP/aIRlBiApB6LmM7
         ryNJf97ItAOEgbCxCA9B8gu3T0Rt70zrFO12juvqZGo9ZhJump6bqtfUyU4tnDWyqbG9
         cJBZJxO/qmA9l1Xb9CnrVxZKaamU4d5fMiorpf0R72gw5e7ljeVjj/Q/irnl3PuHazl0
         B9hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UjFMsu5AuB8y2JklpmxWkpvjvg/Owa8gVRrmStd6ayU=;
        b=rCi7AySO8WjlMgvAbF5uwKAwAnKMdZ0KGZZvfBFgrqv2pWQNtgk+BulqOTpzLpKgtb
         Bb1HZWnnBuOD1iEtPYpzelmjDpTj0cjFte0PoM6KuHt+HbHEom2jZDGdqasdoUbhpzth
         KWrSsa7hTpnggLKomX0oNUu2884v3ncXT2sofYeLMH2jiuyNdesnTASvWyk233aJu0Aj
         JvcWAjdbDwv7Ih1RXwE2ag7oehKdcoYoxexgzuB3df4zahePwvYxAH4rLf1kP9kUQWYv
         fbe2xcE/otNiHVxNI7NIi4F2bJw8b+EbzyfRajZf/eFuL+v252O225WK877A9HgphnGo
         XPyg==
X-Gm-Message-State: AOAM533wqhOZOmVN3fndyddN0W5W9ARVhJnNDmu0vhdrPjSphz8w3rhZ
        F3olJGmHAp6jkFuYx1TJEOyLBSzOCM+yMg==
X-Google-Smtp-Source: ABdhPJyoi9QR60tzYqIH0NwAMsyZ6gPbchkejFQXEEnu465M1hjqjY91l0MsjOpaQNtLxtKrRZudyw==
X-Received: by 2002:a17:90a:72cf:: with SMTP id l15mr7469533pjk.22.1628043310849;
        Tue, 03 Aug 2021 19:15:10 -0700 (PDT)
Received: from kir-rhat.lan (c-76-104-243-248.hsd1.wa.comcast.net. [76.104.243.248])
        by smtp.gmail.com with ESMTPSA id t17sm530617pfg.93.2021.08.03.19.15.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 19:15:10 -0700 (PDT)
From:   Kir Kolyshkin <kolyshkin@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com,
        Kir Kolyshkin <kolyshkin@gmail.com>
Subject: [PATCH] proc.5: PID/stat: add I, fix P state doc
Date:   Tue,  3 Aug 2021 19:15:06 -0700
Message-Id: <20210804021506.181989-1-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

1. The I state was not documented -- add it.

2. The P state was documented to be absent since Linux 3.13.
   It appears it has been reintroduced in Linux 4.14. Document
   it, and move the description up (so that currently present
   states will be above the ones that got removed).

3. Consolidate the two descriptions of W state.

This way, the set of states documented matches those that are present
as of Linux v5.14-rc4 ("RSDTtXZPI").

Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man5/proc.5 | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/man5/proc.5 b/man5/proc.5
index 69f6e15dd..d6027c469 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -2099,10 +2099,18 @@ Stopped (on a signal) or (before Linux 2.6.33) trace stopped
 .IP t
 .\" commit 44d90df6b757c59651ddd55f1a84f28132b50d29
 Tracing stop (Linux 2.6.33 onward)
-.IP W
-Paging (only before Linux 2.6.0)
 .IP X
 Dead (from Linux 2.6.0 onward)
+.IP I
+.\" commit 06eb61844d841d0032a9950ce7f8e783ee49c0d0
+Idle kernel thread (Linux 4.14 onward)
+.IP P
+.\" commit f2530dc71cf0822f90bb63ea4600caaef33a66bb
+Parked (Linux 3.9 to
+.\" commit 74e37200de8e9c4e09b70c21c3f13c2071e77457
+3.13,
+.\" commit 8ef9925b02c23e3838d5e593c5cf37984141150f
+from 4.14 onwards)
 .IP x
 .\" commit 44d90df6b757c59651ddd55f1a84f28132b50d29
 Dead (Linux 2.6.33 to
@@ -2117,12 +2125,7 @@ Wakekill (Linux 2.6.33 to
 .\" commit 44d90df6b757c59651ddd55f1a84f28132b50d29
 Waking (Linux 2.6.33 to
 .\" commit 74e37200de8e9c4e09b70c21c3f13c2071e77457
-3.13 only)
-.IP P
-.\" commit f2530dc71cf0822f90bb63ea4600caaef33a66bb
-Parked (Linux 3.9 to
-.\" commit 74e37200de8e9c4e09b70c21c3f13c2071e77457
-3.13 only)
+3.13 only) or (before Linux 2.6.0) paging
 .RE
 .TP
 (4) \fIppid\fP \ %d
-- 
2.32.0

