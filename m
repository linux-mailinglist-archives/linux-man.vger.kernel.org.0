Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B15CE3A4DA4
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:32:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231153AbhFLIe4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:34:56 -0400
Received: from mail-wr1-f45.google.com ([209.85.221.45]:37816 "EHLO
        mail-wr1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230012AbhFLIe4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:34:56 -0400
Received: by mail-wr1-f45.google.com with SMTP id i94so8473408wri.4
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RRdeM043PnDvnqk/yLkSNsIr3DDz58aq8iWsNCBVxQM=;
        b=Lbaew7hVPVqIySxepdn/gsxMzxNVmykZpm6xfmxxtH1OYYUl4gXJbKwzbM5dGRr2Cn
         CVNZXl3plLq9pbUfw3KRbK57UzBm3asJoAg1FwhItSPqMxqNfaV+6Q/J1ki9UhAA83cG
         hDdGqT4nRN3kUpa60za1mL5Jgav9k8pl2LFlY9diDv4haeOupavJrcHd+teC1uC4r1us
         C2D0FFqYHsmqCrlChhWHWlodyihs6o8V4QmbjtjdJDQJI3JuGYYXuKoxWQ81JKRW8TWs
         1HR5UR8mXQd3u4gGSD/rHYMAQBgjdkJjMuKAYPKrHdEET+vkrrHwnEZiZppdIkNsFdx9
         3rug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RRdeM043PnDvnqk/yLkSNsIr3DDz58aq8iWsNCBVxQM=;
        b=SrfPUgeE+hw2YKJ4oVNddTwtjwT2XqnWdYsR9D2EnhjCiFr6ysdjOFX97dsNldyvnH
         yBda6GqjfSWP2wI2HIMVjCaSZ1xr3f0eWJiZugp1tXs/6gz+SiK4kETVZz27kncfHn31
         4ZOvIp1xgnc72mVgAC/YkB1YJRlcskxO+0bYQt7WM6g/7yQtLZl/yAWhyQOWiRJ7vtE6
         +9mSzTC+EHhRdZLhkX2BuOCHbz1Mzie+IG27bux0q6RAOECvieaEqM/trBAbpo51t4mP
         eYlGtWWhRrGsLsQ1pm1k5/RawTeRpSIp7CbF0Ro4GwY1trMLKLB4/c3J7D/DPoMR1Js7
         QGiQ==
X-Gm-Message-State: AOAM532DSbndezOtGBd7MTdf1gY0cwLyYmzY23gn5RZG+sEvck9wDW2d
        YkhEUOuWaHVZpRrfufFBAbA=
X-Google-Smtp-Source: ABdhPJwPjRziMKjc1lUq8kf4qf2/IzjSrIefwQdoW9ca9vjxDNOM49sAAOBxnVz4l2HqWlzzN/FluA==
X-Received: by 2002:a5d:51c3:: with SMTP id n3mr8048133wrv.322.1623486713023;
        Sat, 12 Jun 2021 01:31:53 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.31.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:31:52 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 07/28] stat.2: SYNOPSIS: Fix includes
Date:   Sat, 12 Jun 2021 10:31:24 +0200
Message-Id: <20210612083145.12485-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Remove <sys/types.h>; ffix too

<sys/types.h> is only needed for 'struct stat'.
That is better documented in system_data_types(7).

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/stat.2 | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/man2/stat.2 b/man2/stat.2
index d356ce15a..339920d71 100644
--- a/man2/stat.2
+++ b/man2/stat.2
@@ -41,7 +41,6 @@
 stat, fstat, lstat, fstatat \- get file status
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <sys/stat.h>
 .PP
 .BI "int stat(const char *restrict " pathname ,
@@ -50,7 +49,7 @@ stat, fstat, lstat, fstatat \- get file status
 .BI "int lstat(const char *restrict " pathname ,
 .BI "         struct stat *restrict " statbuf );
 .PP
-.BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
+.BR "#include <fcntl.h>           " "/* Definition of " AT_* " constants */"
 .B #include <sys/stat.h>
 .PP
 .BI "int fstatat(int " dirfd ", const char *restrict " pathname ,
-- 
2.32.0

