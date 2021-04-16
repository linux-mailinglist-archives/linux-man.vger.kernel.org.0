Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A8ED361D9C
	for <lists+linux-man@lfdr.de>; Fri, 16 Apr 2021 12:09:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240412AbhDPJ7o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 16 Apr 2021 05:59:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240439AbhDPJ7o (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 16 Apr 2021 05:59:44 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0C97C061574
        for <linux-man@vger.kernel.org>; Fri, 16 Apr 2021 02:59:19 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id n127so2191862wmb.5
        for <linux-man@vger.kernel.org>; Fri, 16 Apr 2021 02:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5ue8zIdrUGnaT+N5V+UDKJMZH1CY7VxUVZEoLh1xdtg=;
        b=AQRjQzIPT1FeK72+9njOFIqy0M0KcsodLH9aTMaotZHgvftBRJxPYal6rWXdP8OihJ
         OK/yS8WkvQ3T6h+ADmjbLcpOhzINhJyIBDVfhvTNuPR6sjyjQXY0qj39etoPgkrktjdr
         GdqhrkAPMQ4reFKnEmOyZFjV4Y/X1N8S7VEHM3+JloxplMYWS7uwHiqsnYR1QJVa+lka
         1TTNV1YcwzNim9FzJ5qzROEla+xKpo4SB0lCDEH+BydC2M/3GmiOYq/UVCH9fkAoB3dp
         lcQlLVQq8XKqim/9I0Jfv7o7FQBW5FeOImKRLst+xsrpNk/Gjed3mIXUpdVVnJdpAR5l
         UvZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5ue8zIdrUGnaT+N5V+UDKJMZH1CY7VxUVZEoLh1xdtg=;
        b=HmBf6WZT3/nGRv+L6v1dbJmRX2UeYc/rxhsfDzd1TwssEOxYc/A/4MLcBOz/V+tHQC
         CrxdbV+Ny6M4JC//CUaly9o4egcZD2ZMPfWT9j15GhVnB/NSVHbvxOMP9bo1PqDLtSRX
         GGbONEGUNoQK1XEsj5IQTu2FGjXkL76cd2W3kKBAtjdpfLDXjLxJIjlafEePD6udCcNq
         HHhS3GOMmPgOGndsklUjDCXXud3PQAuzWpPTxfl6FVczrpkj1eq6AuwMAH+dA7ZBzhOt
         H5xR/M7mRiaden8UT0m6inq0RZrBxMb18kTexjGJmfc3DlstHGeKhB2m38oBSRDLFjmE
         TQPg==
X-Gm-Message-State: AOAM531/rXSPmuaSTNhwNuW0m6wcNoO3y8JapIG1u9QPxa7zZ6wXa5IY
        +oUtFLkK4gnkLw9d37q5rGxPYv2quSw=
X-Google-Smtp-Source: ABdhPJxkFHIWOqBliQNNANkraf5U/r5irxw0kSgtgJysaAhzKC8EN6V44M6+qZwD30kPIpxHZIPwug==
X-Received: by 2002:a1c:2:: with SMTP id 2mr7476232wma.113.1618567158362;
        Fri, 16 Apr 2021 02:59:18 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id t4sm10655089wrz.27.2021.04.16.02.59.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 02:59:17 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Aurelien Aptel <aaptel@suse.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 1/3] flock.2: add CIFS details
Date:   Fri, 16 Apr 2021 11:58:52 +0200
Message-Id: <20210416095853.6188-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Aurelien Aptel <aaptel@suse.com>

CIFS flock() locks behave differently than the standard. Give overview
of those differences.

Here is the rendered text:

CIFS details
  In Linux kernels up to 5.4, flock() is not propagated over SMB.  A file
  with such locks will not appear locked for remote clients.

  Since Linux 5.5, flock() locks are emulated with SMB  byte-range  locks
  on  the  entire  file.   Similarly to NFS, this means that fcntl(2) and
  flock() locks interact with one another.  Another important side-effect
  is  that  the  locks  are not advisory anymore: any IO on a locked file
  will always fail with EACCES when done from a separate file descriptor.
  This  difference  originates from the design of locks in the SMB proto-
  col, which provides mandatory locking semantics.

  Remote and mandatory locking semantics  may  vary  with  SMB  protocol,
  mount options and server type.  See mount.cifs(8) for additional infor-
  mation.

Signed-off-by: Aurelien Aptel <aaptel@suse.com>
Discussion: linux-man <https://lore.kernel.org/linux-man/20210302154831.17000-1-aaptel@suse.com/>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/flock.2 | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/man2/flock.2 b/man2/flock.2
index 328377365..61822c9bc 100644
--- a/man2/flock.2
+++ b/man2/flock.2
@@ -239,6 +239,31 @@ see the discussion of the
 .I "local_lock"
 option in
 .BR nfs (5).
+.SS CIFS details
+In Linux kernels up to 5.4,
+.BR flock ()
+is not propagated over SMB.
+A file with such locks will not appear locked for remote clients.
+.PP
+Since Linux 5.5,
+.BR flock ()
+locks are emulated with SMB byte-range locks on the entire file.
+Similarly to NFS, this means that
+.BR fcntl (2)
+and
+.BR flock ()
+locks interact with one another.
+Another important side-effect is that the locks are not advisory anymore:
+any IO on a locked file will always fail with
+.BR EACCES
+when done from a separate file descriptor.
+This difference originates from the design of locks in the SMB protocol,
+which provides mandatory locking semantics.
+.PP
+Remote and mandatory locking semantics may vary with SMB protocol, mount options and server type.
+See
+.BR mount.cifs (8)
+for additional information.
 .SH SEE ALSO
 .BR flock (1),
 .BR close (2),
-- 
2.31.0

