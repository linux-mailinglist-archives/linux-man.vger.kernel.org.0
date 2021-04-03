Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 85F83353572
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:42:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236829AbhDCTmO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236842AbhDCTmN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:13 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BEC8C0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:42:09 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id o20-20020a05600c4fd4b0290114265518afso992912wmq.4
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iREGDXfl4LN7ZWoNbGsogzcWSlWSRhR9EqXVUx36K5A=;
        b=dLZPIYdKDlrcMwIHI/jRkCz1aBqicVhY04RnfsI1xfdwbb44HJGNyfCk8Hn4ACRT9o
         F5tzHhnwheMvr0BZFKgRMuKpO0/QOAtEsYzZbbYdjam3Naz2hwNFqBOPXT68OrtyElbi
         Jvs7NDv9bK87aADdOL/4uUkC0kWc7jpKFcqY8U5tXLahVHvgAoYY15YYR1QeI/aEFI9M
         HET4slkwvukSzJv+Mz0oV3Jz2y3zDcIg3lJzb7Ny92YvBWXtBcgF5yveGfAw3QU5oOks
         eUqD9+ed7dPBnjayMqD485hUc5FKAOXg7uRdjQIJWNjyRVxWh2A1/SsnD57pFG2JTc2O
         rKBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iREGDXfl4LN7ZWoNbGsogzcWSlWSRhR9EqXVUx36K5A=;
        b=BiZ99qstdceynQz3XHSWewPHEEl1b7ol1rctLsybmAucsjkSK8goaUOblh3DppkoDY
         cJnvvK1mouHmH0d3agPo30XgEVoy3yByLC9AgM3RYOZZMUtFtsZA+fF8yUyR1lgVr/Nv
         AE6ApJ3TzIjgnO470LPbkxgvP8N84xLiYWbEKb7FYtazn5ndomYH+hmLKUM4HvG+CmfX
         nT/t4mD8hiU+RF89WwGGRTxv4u+zBknpobQZc/v2s9uuqpo5r2evk5yAWu/E2Zk1nUX7
         xqJuLp5zNHl6f+ldtkxjNWVop6wSZVZkIH5+rDQLJ3JMdn5LSR0aBqFgvCz+9PTt4BE5
         /+fA==
X-Gm-Message-State: AOAM531v7CYoV0kjsXh5XFG/ZOJxu6GP0pjmMuYeaHVfxYk9sxaPn5gQ
        tmbkudwxUsv8m/NKTB2/9JA=
X-Google-Smtp-Source: ABdhPJzo+tzghpnpF2r9AYf802Oo2Uxu8hhlmzs69EOsMw3Y4ckUsnksI/Crc5Gta5PiW6q4Mu2HHw==
X-Received: by 2002:a05:600c:358c:: with SMTP id p12mr18081405wmq.19.1617478928089;
        Sat, 03 Apr 2021 12:42:08 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.42.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:42:07 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 30/35] ioctl_fat.2: ffix
Date:   Sat,  3 Apr 2021 21:40:22 +0200
Message-Id: <20210403194026.102818-31-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ioctl_fat.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/ioctl_fat.2 b/man2/ioctl_fat.2
index ea50bf319..daceafc83 100644
--- a/man2/ioctl_fat.2
+++ b/man2/ioctl_fat.2
@@ -34,9 +34,9 @@ ioctl_fat \- manipulating the FAT filesystem
 .BI "int ioctl(int " fd ", FAT_IOCTL_SET_ATTRIBUTES, uint32_t *" attr );
 .BI "int ioctl(int " fd ", FAT_IOCTL_GET_VOLUME_ID, uint32_t *" id );
 .BI "int ioctl(int " fd ", VFAT_IOCTL_READDIR_BOTH,"
-.BI "          struct __fat_dirent[2] " entry );
+.BI "          struct __fat_dirent " entry [2]);
 .BI "int ioctl(int " fd ", VFAT_IOCTL_READDIR_SHORT,"
-.BI "          struct __fat_dirent[2] " entry );
+.BI "          struct __fat_dirent " entry [2]);
 .fi
 .SH DESCRIPTION
 The
-- 
2.31.0

