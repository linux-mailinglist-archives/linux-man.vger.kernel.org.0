Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5748353576
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:42:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236859AbhDCTmR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236684AbhDCTmQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:16 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA71BC0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:42:12 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id d191so3934242wmd.2
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=R9IcsjPnDHU/dmEexCAQKAtwymjal0P+vsDSQhy0Pq4=;
        b=hWqLzMHX6T37syHLDwvq26SvvdWgtnFCXlc0NW2oe+3wsmM8gXp0KIfNt07YEzj9wz
         u0qJYf75oGtoYoYalRlXzD59qSbIUGDYyA8D6XAF5auRtTA8zh2IhNOeShuRt4/C9DAb
         azYXSmB+N/eJMHAC/SyzTLaq006KXdLHpL0fovIA2bm7n12lUldFfCEu795eJkrIGHju
         Uzv/9EiK+t7z+6bSYZJs06A0Bl81GvAGWHzETiCZWjcNrb0s3GzjdA6SXNSN/4btrDrb
         29sAHUlUvcW3wdE0/KnLrj2rKwpwJ6KwB0E7WxIGR+qtNREMx2b/Ylz+bSOex7uQG2tM
         Sjow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=R9IcsjPnDHU/dmEexCAQKAtwymjal0P+vsDSQhy0Pq4=;
        b=q30t+xHKpoojFrGit9xCWM2oO3qovheGuyFJVZ8WQRCVfc6N+ClXOhFZAAfoinyl76
         aibUnf7s3Gg3wzoUrYvIW0JWQJ9jwqDE8/CR2devs/9lJuRd9dLo8t0hc83Zmr4yzrcl
         kSfW8q1cGsjgXiALxwoJnHaoaMk+EUqQjjnkYgeD1uqQ2CqFjv+dDKLuyFTtO5ciFaqr
         GUH+MHD/qAbHicFZLbSh0tv12CJtIDIINBTg+6QOa65djOqrZIIFS0g/6BLObKd+PWaJ
         SmOyGcphm/5+2rQQsYGSo1HYPvqSJ2OhZKyXhrliO+/K4HQoTCgBF3UVJDxC2Sr4mtf7
         r78g==
X-Gm-Message-State: AOAM531E3I1ppNXc89OxllMRDt3LMunoB1MOhlBJ4dBc1CuWCrdW/KYW
        sEJTfNAEL4U2irPskESKvH8=
X-Google-Smtp-Source: ABdhPJwRgEgHD515hkziNyncxbWWQQuO872UYmirB7RGd3W+fF/yXGpa0odlIJ5bucmjLQ4C8IFIQg==
X-Received: by 2002:a05:600c:2145:: with SMTP id v5mr18389169wml.65.1617478931595;
        Sat, 03 Apr 2021 12:42:11 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.42.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:42:11 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 35/35] ioctl_getfsmap.2: Make clear why exactly is each header needed
Date:   Sat,  3 Apr 2021 21:40:27 +0200
Message-Id: <20210403194026.102818-36-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

<linux/fs.h> doesn't seem to be needed!
Only the include that provides the prototype doesn't need a comment.

Also sort the includes alphabetically.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ioctl_getfsmap.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/ioctl_getfsmap.2 b/man2/ioctl_getfsmap.2
index 4ff1c8a90..55a9ad620 100644
--- a/man2/ioctl_getfsmap.2
+++ b/man2/ioctl_getfsmap.2
@@ -25,9 +25,9 @@
 ioctl_getfsmap \- retrieve the physical layout of the filesystem
 .SH SYNOPSIS
 .nf
+.BR "#include <linux/fsmap.h>" "  /* Definition of " FS_IOC_GETFSMAP ,
+.RB "                           * " FM?_OF_* ", and " *FMR_OWN_* " constants */"
 .B #include <sys/ioctl.h>
-.B #include <linux/fs.h>
-.B #include <linux/fsmap.h>
 .PP
 .BI "int ioctl(int " fd ", FS_IOC_GETFSMAP, struct fsmap_head * " arg );
 .fi
-- 
2.31.0

