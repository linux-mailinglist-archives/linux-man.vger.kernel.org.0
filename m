Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 510DF457FC5
	for <lists+linux-man@lfdr.de>; Sat, 20 Nov 2021 18:13:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231200AbhKTRQG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Nov 2021 12:16:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231557AbhKTRQE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Nov 2021 12:16:04 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 464D1C061574
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 09:13:01 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id 137so7825309wma.1
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 09:13:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eizPsOnbx3oBf97gkn9+92v7taBvYMzkU8cYJLJZTIk=;
        b=kvMR/QHXM3DWWbAk/0hypB9vlNb6vQDMUyPfzp8k5ix7zXnd/Nj5b75jSVSHqOchXP
         0tyx3mtn9pqXWH6HQHKMLT50VNnom9lQahZvZ1AeItmnlp53awsNqbrKYyrAw5Rm5Pfs
         SmVXsOS4L74oF7OEV5XVzEnZZdJHOj+Lg4+B3nHV2ckE0KfT0uPCxXUCVMsjuf7h5T8s
         UyzJbNaYYUtueTx4l8Nm/Z86246lXcPJcuWLNugRClKTPM9d8X+/apWLQtqqgC32gth1
         1SZEiRIA2hQwlACdeAAVNcf2i8Jj0o6+wSBzlxy8JmKtOGdPLMDbx9LsXR+6FFKUfe6W
         /S3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eizPsOnbx3oBf97gkn9+92v7taBvYMzkU8cYJLJZTIk=;
        b=jNKFQNBnTXke1IBJiDubzNlmSYKCMn3PpnhdfYtCirpN1NM2zPDs9bedUoSZdZyBdg
         1hXVbb2GoptMxdZ60kHBAeingfzsmFXs75OSXc1oyCJhe21blLnVFmzP+UbsqPKX4Twv
         AKPu4QFt1jKRmT+yHSBrsLttqJoh0qcVH+8msYQd0r6RJNnC7yJj21UabDAXm3vYdw9l
         rLob2rKYkbKIeT0G9oqapXTn9crX2nkE7azVjjSHRLQ24duNAHsW15a+DNMNUim/fstb
         O3XuPP9hWFAYbdU3xWiBtbL0zSt+0DWW4WiMojFS7Y/Wgjz5ONGLDKYtX+6Qby13HiCd
         dQmg==
X-Gm-Message-State: AOAM5301HKzC8EgfCf0Mutbm2eo4ThUbiaHV0PLts9RybArNMwCVXN4J
        DTc+YvzTltK8leAG5HjDzfZTqNojFwU=
X-Google-Smtp-Source: ABdhPJzYpAjrsMmMraS2JFNGcGmZdu/UaE2WkJIUHy3uVknR6T2racLAJ0RTtlw5d12xJ20foAhkqQ==
X-Received: by 2002:a1c:7ed3:: with SMTP id z202mr11580206wmc.110.1637428379862;
        Sat, 20 Nov 2021 09:12:59 -0800 (PST)
Received: from localhost.localdomain ([82.114.45.86])
        by smtp.gmail.com with ESMTPSA id n8sm3108829wrp.95.2021.11.20.09.12.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Nov 2021 09:12:59 -0800 (PST)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 3/4] fanotify_mark.2: Update w.r.t tmpfs support
Date:   Sat, 20 Nov 2021 19:12:52 +0200
Message-Id: <20211120171253.1385863-4-amir73il@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211120171253.1385863-1-amir73il@gmail.com>
References: <20211120171253.1385863-1-amir73il@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

tmpfs can be watched with FAN_REPORT_FID since kernel v5.13.

Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---
 man2/fanotify_mark.2 | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index cb69ac592..92309e684 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -414,7 +414,12 @@ The filesystem object indicated by
 is not associated with a filesystem that supports
 .I fsid
 (e.g.,
-.BR tmpfs (5)).
+.BR fuse (4)).
+.BR tmpfs (5)
+did not support
+.I fsid
+prior to Linux 5.13.
+.\" commit 59cda49ecf6c9a32fae4942420701b6e087204f6
 This error can be returned only with an fanotify group that identifies
 filesystem objects by file handles.
 .TP
-- 
2.33.1

