Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B8C61BC6E6
	for <lists+linux-man@lfdr.de>; Tue, 28 Apr 2020 19:40:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728337AbgD1Rk3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 28 Apr 2020 13:40:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728333AbgD1Rk3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 28 Apr 2020 13:40:29 -0400
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80A50C03C1AB
        for <linux-man@vger.kernel.org>; Tue, 28 Apr 2020 10:40:27 -0700 (PDT)
Received: by mail-yb1-xb4a.google.com with SMTP id 186so7040495ybq.1
        for <linux-man@vger.kernel.org>; Tue, 28 Apr 2020 10:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:cc;
        bh=5JVlS+dGz9UEDNZ2Ft/3FVJi02eGUkP9LJyhkini1Bc=;
        b=ti0eDJkRjNyjPTq/80phusgEX0/idq6kaa6Ba2hq1Zo+o97rHhPApRS6+sl/Owsqvv
         GXBv9KC7WBVnNtJmF6VhQURJLmw0st0fpPAbB1eqKsK4wqI8D4tRi6hJ5hZ+cfs/q7iS
         F9HmcCW1xKX/gPzCe7d04ZjYzHJqGsMrQYFCQnWmCouleFlj+49gUb49C9Js4LwWnu+w
         50K217H/wpecTyUUW35evbWlbPWyspvU7Kf5o8klB3VgRik6U8L2VoWNsWOCx7fN2Jyj
         f0BAc1n9AwxSVuzB2FbrUNPCG58BX1Gx9AGrFezfSY+EHhFFiIOi86OGJWeaXeMBzkcY
         FheA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to:cc;
        bh=5JVlS+dGz9UEDNZ2Ft/3FVJi02eGUkP9LJyhkini1Bc=;
        b=DvIfVao5VHsumE5zhzWpYiSK3iQPllNOFwY/ZK4QyLhegl2LgZgJwSELhJjy6jL5nz
         RbZw0w+k2Th1hdGcPoReS5dIt91Blr4K7DsRrKc7aKcfg6CcnTY4seJzEKfmQ/1s1Wi3
         LBwL5SJ8TxfKWaRF3SVAvJ3fhVfaxiDKJRNBxfREoem1770TVi+vjLyqmmt8R6QBYZuh
         8/CjtjGRODUPVEdWplwRQBFMrLs7EJoYDGR7oQUAZ+BrE70yjiT7m5p8pMidXdXlFaeH
         qyQOjsvWGyioAwKIHDakar67mnU9eGkh3RnDAuWefa4HuM/5S0/8ZtAsEsXQLiR9a5Jz
         fxeg==
X-Gm-Message-State: AGi0PuYTaSV5xI1T/33We5FtBxXjuvQByBDiJfp+9fK7KWeIJqV3Ew3p
        dIJIPqT+F7kt6JJAhesLkFx5oyc=
X-Google-Smtp-Source: APiQypJywj4PinKKIJKaek9jmDr55jE+b61+fkv3bbg6T6ED8KHlDLaqo7HUD9XKdSqMBz3Od0r5tfI=
MIME-Version: 1.0
X-Received: by 2002:a5b:351:: with SMTP id q17mr45989391ybp.428.1588095626633;
 Tue, 28 Apr 2020 10:40:26 -0700 (PDT)
Message-ID: <000000000000b27fc105a45d533e@google.com>
Date:   Tue, 28 Apr 2020 17:40:26 +0000
Subject: [PATCH] madvise.2: MADV_WIPEONFORK affects semantics
From:   <agl@google.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, alangley@gmail.com
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Include MADV_WIPEONFORK in the list of advice values that have a
semantic impact on the calling process.
---
  man2/madvise.2 | 4 +++-
  1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man2/madvise.2 b/man2/madvise.2
index a0f3a477a..6c25f697a 100644
--- a/man2/madvise.2
+++ b/man2/madvise.2
@@ -84,21 +84,23 @@ values have been added.
  The
  .I advice
  values listed below
  allow an application to tell the kernel how it expects to use
  some mapped or shared memory areas, so that the kernel can choose
  appropriate read-ahead and caching techniques.
  These
  .I advice
  values do not influence the semantics of the application
  (except in the case of
-.BR MADV_DONTNEED ),
+.BR MADV_DONTNEED
+and
+.BR MADV_WIPEONFORK ),
  but may influence its performance.
  All of the
  .I advice
  values listed here have analogs in the POSIX-specified
  .BR posix_madvise (3)
  function, and the values have the same meanings, with the exception of
  .BR MADV_DONTNEED .
  .PP
  The advice is indicated in the
  .I advice
-- 
2.26.0

