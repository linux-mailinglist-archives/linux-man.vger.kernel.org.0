Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B23E7407954
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233085AbhIKQDB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233089AbhIKQDB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:01 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 246F7C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:48 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id v20-20020a1cf714000000b002e71f4d2026so2681400wmh.1
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RjRe0x4ioqhT2stoaeM1zLgliZaq0jQkHVJWlLYYeLo=;
        b=ac6HH7/MXAatctEy8bgEZbqciY6heRvmt0Y9273CKBpvulQJKHVOuRCB4xkEm8YMef
         acw9GDinzbyEYssMApje091sIAEH4pC8/mDoFg/Km06/BLpP879H9BYhJXGfmhHZNYLP
         j2ng3mo3GITOhzJdxl+ofbvfvdOs+imv3jXRVQNJlmzEaqfqf9qnICnyljhmekoJ6VlR
         G+wquQ6v9dqHu4m8OFBPkGeHd8aTd0rLxrgFTP2/b/d2kkpjTsmbuat/E7IfBt1JoLtJ
         6Lnk8h5bn+L5FkARhxBg/6Cq5ec/or70rlGtjCFS0FXJBlvjqnLBttvtWlnlK4M3gUSN
         wS4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RjRe0x4ioqhT2stoaeM1zLgliZaq0jQkHVJWlLYYeLo=;
        b=ua0UQZifL8ql+ENa2xIwyZOw5lljhOmNsB5C8t8gojXFOcqfBCetBiR4oxBiGnpjvn
         HN/NTpf4rgq4mBCp8umnbAsGeOXsYahDrZZos9jYQPGg07Agg0HiyKDBcamSEXaLfPDL
         z1Q9CG4mb44UMMqYWpIUBKb9AE3F/+UmErwokTUQuIomMLlTHMlgcYUfOpihNh3zsMdK
         2zUxXVgw3S0M5Hb30YSYCq/LwYU2O3mRCZsM8w3stY9RM4UBmnDF+k44HKvBq/t/8NXU
         W+jg57frJudg9j4nO8+a/VQnx97iaWKvNbPgFx53jejqjiZY6pz0qR/+Y75E4vDCVt2y
         5rKg==
X-Gm-Message-State: AOAM530kCL36RNyuRnWT6mLQJNlexjQBfB3WuBcwpRoCIRAKO8UtgsUG
        dyGt0lyImdtEaKjxKOD8riY=
X-Google-Smtp-Source: ABdhPJyigN3o8sy3h41NS6e9nRxlRy9a5VSznrGQiIMKzTqVH+DpCnJ7NIsE6LgIfoFUjxuVqf6pNQ==
X-Received: by 2002:a05:600c:26d4:: with SMTP id 20mr2617196wmv.40.1631376106772;
        Sat, 11 Sep 2021 09:01:46 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:46 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 22/45] umask.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:54 +0200
Message-Id: <20210911160117.552617-22-alx.manpages@gmail.com>
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
 man2/umask.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/umask.2 b/man2/umask.2
index 8a11c50e9..8a6dc1f98 100644
--- a/man2/umask.2
+++ b/man2/umask.2
@@ -34,6 +34,9 @@
 .TH UMASK 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 umask \- set file mode creation mask
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <sys/stat.h>
-- 
2.33.0

