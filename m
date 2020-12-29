Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD9B22E6FEC
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 12:20:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726026AbgL2LSy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Dec 2020 06:18:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726181AbgL2LSx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Dec 2020 06:18:53 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40335C061793
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 03:18:13 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id t30so14375857wrb.0
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 03:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4xXBnrRa3W/qJM2mtJfopCsJfCwUhuH+d/5HwvJFdX8=;
        b=vatIcLzC8WZk+jrMGNRd3cLDLM8hoMJLrRIowwdzplwY1xFVk8mumXz1xgNeR4y2uX
         DTou4ctGu/be6MOEFnYU8EcfBMhkS3YCX83L+CK9dZ0gmYCaefhBposNNS7vWMfqo2Ue
         FIH2znn4iCgko9YiPpz78f1tAdbqoWH5tNPMzZS3ErLsSzNb6EHW465lJExDuQIm5mKN
         P12Fr5KJLOdgZQ6Tv8EGPYnfFqqpLZ/GQSt3JaX/qgxSFqLwXkGBBGuAhjpUYT0YCQmT
         HSNkCiTYX5kdYKWdFWmEK3mmXxi5ez3w6IKzb0fw6MNxc/o0SVVKsqyMqYS+JgV6p0i1
         08kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4xXBnrRa3W/qJM2mtJfopCsJfCwUhuH+d/5HwvJFdX8=;
        b=Y7kMh5bYrON05Z0B1gCYJNxkwtw8muJLZeL/SKYwK7TJNcyz7WRgbhUBYdw+7bWMLB
         6cqet9/IgjU6CZJZcIvFwoOrq9elJ5VutXgPUsH9uWPO3Y7ANr4GmlEBbNcmn4CuL5fA
         046G8Ps+rWOrXDivXh3H6BfHgvMjFlR80mJwhG2/ImyHOhkKGnRwGkBLUobQus2eVu98
         m//cyJbT23Ec8rGrVqlyBx93s+oG8xtELxP7qppYXh9HUi9PODDDA23Z3fP2LIeajb94
         lLTx1zHycgWwyHlsr+rhPXToboyefJGh4lGmGg9LeYePmv9yJlUiwflonZ3Rgbj+bwRz
         2sbQ==
X-Gm-Message-State: AOAM531SjCk293CtSHZlYpElugH7JiD8pfWY4wn4bey6TpWVTC0DwDRh
        b3hSYfBH8iynh5qf57VJ8tA=
X-Google-Smtp-Source: ABdhPJwhZxaXXOmlVpw+ordnwlC/cqjm2Zk5wqUgNhDRf8eztIardRDQdR42WxyCu8i8EZgeHDuXAA==
X-Received: by 2002:a5d:50c3:: with SMTP id f3mr54836295wrt.287.1609240692061;
        Tue, 29 Dec 2020 03:18:12 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id a25sm2993437wmb.25.2020.12.29.03.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Dec 2020 03:18:11 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>, linux-man@vger.kernel.org,
        Manfred Spraul <manfred@colorfullife.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH] semctl.2: Correct SEM_STAT_ANY description
Date:   Tue, 29 Dec 2020 12:03:11 +0100
Message-Id: <20201229110309.7774-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Yang Xu <xuyang2018.jy@cn.fujitsu.com>

Since kernel commit a280d6dc77eb
("ipc/sem: introduce semctl(SEM_STAT_ANY)"),
it only skips read access check when using SEM_STAT_ANY command.
And it should use the semid_ds struct instead of seminfo struct.
Fix this.

Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Acked-by: Manfred Spraul <manfred@colorfullife.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Michael,

Here's a recent patch from Yang Xu.

Cheers,

Alex

 man2/semctl.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/semctl.2 b/man2/semctl.2
index ed5e79efd..e562d0bc4 100644
--- a/man2/semctl.2
+++ b/man2/semctl.2
@@ -297,8 +297,8 @@ all semaphore sets on the system.
 .TP
 .BR SEM_STAT_ANY " (Linux-specific, since Linux 4.17)"
 Return a
-.I seminfo
-structure containing the same information as for
+.I semid_ds
+structure as for
 .BR SEM_STAT .
 However,
 .I sem_perm.mode

base-commit: c55f66855eccfcd92b35fe7b13a326121f2ee0fd
-- 
2.29.2

