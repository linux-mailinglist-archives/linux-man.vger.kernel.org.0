Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51AB440794C
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233074AbhIKQC6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:02:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232827AbhIKQCx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:02:53 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F8F6C061756
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:41 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id t8so2326999wrq.4
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1RT60LSBKkwsK/9qaG/oRj6Wow3+kkPe/GVeiZFX770=;
        b=MxywEFsN3iN5tKH+a/RqFX9kGLY4ed5GU88Q/RUivzZNwZhEbqjFhycnud3yv9eccp
         U54YIj6CJrKxL1lqJx5HgmlopqJkBzMCCeesBqShBsaIeTA1bT61z8ynCVjEQeP2isMs
         KXLZVh/Owtov0oM8RISmzb+Na+UwKRYubudqK/4U0sLs0+wrmjw2YzcvcUk5mSqg8TyO
         eDWFUkwnjggc+gEy7+QlSIvfq+wPRmfOaQrtn3ZFJrhXwsFD1MKj3boUEwJ1LhEwHJeD
         Ml6ORv/rn0NeMN2QWSivTUiRrEN2IvIIxT7OXh/Z253pejgCo/wx5ZyUiMQFOxcibO2y
         4DWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1RT60LSBKkwsK/9qaG/oRj6Wow3+kkPe/GVeiZFX770=;
        b=tsQ1sqxbuwnKTfMHW26J0ApQvUMY4ijtmJ/Hb4L8/sBHq+Ce8VVeLphwttyJIrLRoO
         i+hjfQsVhFCMzn+nnYV4fKiR2OLI27ZMnJc5h2PTLs18orlnh8F5C/xM178vaZQjUQpU
         755eleOXaCC9JGFPeG/Vi+KhQry4oFvfo2UPnS97xE6oRgSoK25x963d6z3Xh2PeHyie
         SoiTBeyOlvIQNS8VmP05BW8MPKuc/+JE0OadLHxHpPTXpEqaG+9Gtg6mHfN04zUfsjnr
         4o6E6+HYfGX+5DPx4zEG+ZU2UzAHtANelUAaCXmdV2a3WgbCSUT5wsHFhhh9ZIWeohwv
         QqYQ==
X-Gm-Message-State: AOAM53173cpPuni/D31wIbBQvW+nyHFx6CIC8ecUeg82Zfzb0+I62HHV
        peY6fjlByxJwJ+wJd4l00ceMyMokPsI=
X-Google-Smtp-Source: ABdhPJwxr9UguQPZRq4UaFYumFL8s2Qaxu7At7KDhJM/PZHIQbiUaSAW+EZg5iACG0mhnrtbTtUhFw==
X-Received: by 2002:a5d:44c8:: with SMTP id z8mr3594681wrr.332.1631376099777;
        Sat, 11 Sep 2021 09:01:39 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:39 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 13/45] utime.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:46 +0200
Message-Id: <20210911160117.552617-14-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/utime.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/utime.2 b/man2/utime.2
index 55ea8fc27..e529ae979 100644
--- a/man2/utime.2
+++ b/man2/utime.2
@@ -31,6 +31,9 @@
 .TH UTIME 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 utime, utimes \- change file last access and modification times
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <utime.h>
-- 
2.33.0

