Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80BBA3A4DAE
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:33:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229584AbhFLIfQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:35:16 -0400
Received: from mail-wr1-f46.google.com ([209.85.221.46]:42793 "EHLO
        mail-wr1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231164AbhFLIfP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:35:15 -0400
Received: by mail-wr1-f46.google.com with SMTP id c5so8452950wrq.9
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6uwDSBHCkI76w11CTOd/NPGJ1NBNGPYTSJyqRf8NNmM=;
        b=akgmVmVT6dl1GMd02ryPRfsx6wHN5Sr6+ER5rk6AkRI9rBekZf5qS11SNFMtY2DJcQ
         gEeJYzjpprwesr07DUwpupI/y3j3ucgvIpAMXl0ro6SNiD6M4MTCL+26no1iGVkajmbc
         tOziKcO6XlZNmbrrylHTR5OsmrIODF1i8kMiH1LdyAOTCM8sudjJu/XAN23t24bM3swh
         nc2KHvnDtbHzAw/lZLF3sgH9AlUiRSmxbwG0cRDYcoW4l/LkQ9TkJOErXxBLXUWGomUK
         XNUlj6LjSJzyXrRhVoImmZIFg+Kd4+yNn5dngZ/PsV5EOpmflDlixzseDB9T0M0kcDDO
         GijQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6uwDSBHCkI76w11CTOd/NPGJ1NBNGPYTSJyqRf8NNmM=;
        b=BIMVXp7ihe8KM6RuSwH6rYRFNk+dx6BC775k1BFwehcjo6fIDTPM+W5D5y54fmerTr
         cifYv5gN50wVj8O7RIye3fhREe1ju4QDuHJ9/s4vk85FpdTv6tc45T20jBNLvLEMsMPL
         R/4nlv513w6/ZHHngYqiH7BhXSc9sYICr2kp7ctXEgojwh5thiM2Y9qUkqHqMoOKSARd
         Ps8KuieMhf0FEc2jq8IHVyUql21PxsCifWFb0oKmC6tfuxI14qJHiH6rQ7UUvVHmlK2w
         xHz0LbJMubRAnsXFIGY4/xaMmEWsH9nqaC12fQVbTO67Fopz+nDdJgrIeW6oWjPMOBNR
         lNQw==
X-Gm-Message-State: AOAM531FDJUzbu3ZqaMDnItaPlkXWE2ITFo5czBTVeKbT/brPVE0L2Se
        8e6XV0K4DnKILR8+4A6UZXj2FvAbju4=
X-Google-Smtp-Source: ABdhPJzd0+EY8i9AheF8zLj8YgXeLe26YDhRBIBP4t01/m99i2GdzKwheoqqIZ1x+CyBENqPu+qeHQ==
X-Received: by 2002:a5d:5189:: with SMTP id k9mr7811993wrv.319.1623486718420;
        Sat, 12 Jun 2021 01:31:58 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.31.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:31:58 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 15/28] s390_guarded_storage.2: tfix
Date:   Sat, 12 Jun 2021 10:31:32 +0200
Message-Id: <20210612083145.12485-16-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/s390_guarded_storage.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/s390_guarded_storage.2 b/man2/s390_guarded_storage.2
index 747c45c3a..62b3ed913 100644
--- a/man2/s390_guarded_storage.2
+++ b/man2/s390_guarded_storage.2
@@ -38,7 +38,7 @@ s390_guarded_storage \- operations with z/Architecture guarded storage facility
 .PP
 .IR Note :
 glibc provides no wrapper for
-.BR s390_guarded_storage (2),
+.BR s390_guarded_storage (),
 necessitating the use of
 .BR syscall (2).
 .SH DESCRIPTION
-- 
2.32.0

