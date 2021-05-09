Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6A84377867
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 22:20:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230045AbhEIUVK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 16:21:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230040AbhEIUVK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 16:21:10 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D16BC061574
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 13:20:05 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id v12so14428342wrq.6
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 13:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9N9VXsAlaMNSNv/sDJq91hQIb0JTMoPAOhxWHUsFLjA=;
        b=ghz+G4hjdV25SDdr5TUUWKcKoi+F/pNXg5lGGgSgUsg0F3QH14pdmy0DaDjJKv7JyM
         qjCUtTCP/x73bHC6BpBtQMIEPrzNMzmeC+ft88uRUi8q0c4xWdgDMlh6P7FpHyLD/E1U
         D7DTXAonzlFXu5smp7PFq9R1+OSLVF0C0+DhSlhK+6WGehFVWTK9DX7G5r13sjqhHd2Q
         /RZ255boIAGbdV9+Y97TPxcGNQVJeRdOranufT/wr+mdbQF7n3toFt+ag3GcUg2v063l
         lMV6gLJdDg7V5/StL1TZiWkUInqfPSTpuOls7w6uy3VjrzBC9rL2yUhh/6V4dZkjDwxZ
         axyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9N9VXsAlaMNSNv/sDJq91hQIb0JTMoPAOhxWHUsFLjA=;
        b=Lg+/2NcHwtlpEf5I27zn3if0kg1AOyoc3u9pYDjYWr1k5UfFcdmCKCJpc8v5Vkt+9l
         +DKt/H4x6RTcYO6KxFgzYZKORByJ5GtNCIQuyuP9h7RNaAYpAKOaWdyuJIpxRSTyokUm
         NuHENHDQoOU57kNRYyhmr1sPCEdifeQ3Gzo5jb8nc3wmpaPpmq5PXK2wiiCJ/HfY+Hao
         89pBIm8yfU6dpOwOywkue4x7jaoQRpxgKMx/os+n2sJG3/3MYcgKPFRf5JACU2kJrw0G
         V1vz6fIkIs+cGpBWp125M7+lqOQFgQIwwIzgMHOmxwP+mJxbjRuOPQtLLWvobCfVFcNp
         LM8Q==
X-Gm-Message-State: AOAM531PoafHT9fsLOqkO/rXrr/Xq2Bxg3GOegbAKMEdleiO4b1oZ7H+
        ijlceTgp1rIcZoFqRPnvfwM=
X-Google-Smtp-Source: ABdhPJwsevpsskQgy/LZCUCvicDXu+nRWOMVR+Q8ePJ4495BlyOdt7LPayRCthvog5wR2/DEnilEjA==
X-Received: by 2002:a05:6000:1143:: with SMTP id d3mr26940186wrx.404.1620591604015;
        Sun, 09 May 2021 13:20:04 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b10sm22591346wrr.27.2021.05.09.13.20.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 13:20:03 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Aurelien Aptel <aaptel@suse.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 01/17] flock.2: add CIFS details
Date:   Sun,  9 May 2021 22:19:34 +0200
Message-Id: <20210509201949.90495-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509201949.90495-1-alx.manpages@gmail.com>
References: <20210509201949.90495-1-alx.manpages@gmail.com>
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
2.31.1

