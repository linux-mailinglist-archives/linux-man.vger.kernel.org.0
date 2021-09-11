Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC4F3407958
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233167AbhIKQDE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233089AbhIKQDD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:03 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3953C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:50 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id n5so7324646wro.12
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mWVbEo9tJNk70QAOUXCbsWAoVzt3GrppsWjjqEp1qqQ=;
        b=n0FMYB2UwwzNc7ctVDY5lu7OdTgepNQC6P1SL1Btsx4FrcM4MzFgKssnWVaDqm0Um8
         nUMHDHNo8x9ycNp9tc79Gxv0540JHoS45V3lvgGtJYpU8V9qHq7D6dgzt6KAhuTotMJ9
         gKYkmFyZVfnPLyPQ11ZowQ93AyLFE4fDSF5w2AFdNEG/KY771vEhfArhZ91gnlh6MZao
         vIthpDxIFcdlUXtZSIhgNKdTQXJfHZGt80WGUtwY0hBxKbZzFqhD8mkm//oOn7VQPM+2
         nHlsREX7aewtWp9+1jk5yT5M2mPilhzmBqPK3zpkDEa0DUqYIxbKfUvEqE1Hc3yMLH33
         qrhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mWVbEo9tJNk70QAOUXCbsWAoVzt3GrppsWjjqEp1qqQ=;
        b=NZyaL1tN1qZMRdBAVMPyBYUa1GtBr4p8EaYXXm1BEPO38r79NgQsPGtfaiXjm8I8FP
         1FhyMId/Rh88itSX6zGktFoBYeWFXrbTnjBM5qsaA6B1QLLfVAoE1s3w9SyboqoBEkFI
         TQAsGlRKcxSw2umXp7xJHZMdckccmn4E1xf5J+eRMjK+h4Bv2zynhpGxpWpErHMQ9Ic3
         IFFpmxluM+0sOd+SrAHOz69qq0RuYFen0NmnBTmB4nhg4AjB3Ozo72pFc9S9KjsMFodV
         hfjRF5jYG3tIRslUW4Aku1jmYeWwxPhHmzPl6O/U85SPcglg6dX9zgX1ziNf7u5Wzz0S
         UHSw==
X-Gm-Message-State: AOAM533k2+/U/ZIRbqnOazJhA7sBMkAut9kL1vuXB6F6wi8GVMA38pIY
        t+h6MzdVGhOZ9UYuGh4pCwpQtJoPB4w=
X-Google-Smtp-Source: ABdhPJzazDCdjhi83d621TgIaP4ZtcMMewOKIsAjCfg8wRqj9S0mmG2iCqYbjPy5JkvN7SoR1Hv02Q==
X-Received: by 2002:adf:b7cd:: with SMTP id t13mr3680846wre.63.1631376109606;
        Sat, 11 Sep 2021 09:01:49 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:49 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 25/45] timerfd_create.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:57 +0200
Message-Id: <20210911160117.552617-25-alx.manpages@gmail.com>
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
 man2/timerfd_create.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
index 65fdfcc45..5434c12de 100644
--- a/man2/timerfd_create.2
+++ b/man2/timerfd_create.2
@@ -20,6 +20,9 @@
 .SH NAME
 timerfd_create, timerfd_settime, timerfd_gettime \-
 timers that notify via file descriptors
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <sys/timerfd.h>
-- 
2.33.0

