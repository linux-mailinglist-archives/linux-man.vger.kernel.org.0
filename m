Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59C7E3537FE
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230462AbhDDL77 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229801AbhDDL77 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:59 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3311DC061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:55 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5-20020a05600c0245b029011a8273f85eso251722wmj.1
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=W+mrBMdCax+EAcy6/vKaQrfDeoXRNjY0VBtFkEb/o6I=;
        b=cd6JgeMeRRqFqlibgSuJOh/TQLVWLxrst3R/iybrRC9oIdak64/1WZOgFRU1rZL0ue
         xTF/dPPHk8hl2qJITcC7APt8D5SDMI/FQP1PGP6fdFvc90nSScMNMhibvFdtRIk/JUxZ
         KvWuoieu40OUZSahzypE6I2pHw0xZhqP5BcJECjqYExbcV51iEva48s9Qhig+Kwj3U3B
         CVZG6QcCqN1zgWzmsPI3y9sIwQcNHfJimMm+Wb7V18jBxwsdfZwmZGvJPeF3MgVFfW+4
         ba+G6WLj9ubxXDlq0x8rtMbBADZOysRfQm+Ef6ddnwRU0NdglwvvkPY3RB5ukk/UW1d7
         yghA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=W+mrBMdCax+EAcy6/vKaQrfDeoXRNjY0VBtFkEb/o6I=;
        b=jAVlsaYRP8AAAK0wv+Wfdmwr2/ZI4zZrka+rSwl2SUjNpuyeg41q1z7sfMuBb+V5GZ
         CcRDmfwasklvLpE6LpMVBLAH13uVPvTaZOzbfHBRCQzTR04PAhpjZLKpEiZUDQwe4ow1
         LDZ2OYlvGGNyVoC5hdhfnC1kQkFnF5mMIQ2e6y9KmQmD0m9hTMCImFnA6ktuMaxjPRUC
         L+p2gb9vZmchHQYa9k3zt0DtKsg2q3IiseaRngy04i7PGx3YPOzMkWPQxI8O0RmpzqBV
         k0UHuBeSZij50KyUUq+nxgLbqxcsGCSU5TAXSsEBXI8YpGDGhtei9IEOFcZ5i3Q6paTA
         kaeA==
X-Gm-Message-State: AOAM5302TPq2tjwEG7y11PgrnOsXPBxAq5MiZtDQb77BUV4Ehlb5R7Q8
        WajeT0XJcwsysINSPsLO35Y=
X-Google-Smtp-Source: ABdhPJyXJgZfkMBlm5LhwlMKybHfxtEiMR0LVdhvbxdjTDV3u+XeFanJJIdsn9iz9XfQfTvSitjIBw==
X-Received: by 2002:a1c:2703:: with SMTP id n3mr1308562wmn.146.1617537594026;
        Sun, 04 Apr 2021 04:59:54 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:53 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 30/35] ioctl_fat.2: ffix
Date:   Sun,  4 Apr 2021 13:58:43 +0200
Message-Id: <20210404115847.78166-31-alx.manpages@gmail.com>
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
index 263738dad..8914505c7 100644
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

