Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81FA83A4DC7
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:52:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229819AbhFLIy2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:54:28 -0400
Received: from mail-lj1-f174.google.com ([209.85.208.174]:45043 "EHLO
        mail-lj1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229584AbhFLIyZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:54:25 -0400
Received: by mail-lj1-f174.google.com with SMTP id d2so12781688ljj.11;
        Sat, 12 Jun 2021 01:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=V7S6ZH1R4O4vB9phX86PXGejafkt2ttc0fjEWi9HJC4=;
        b=IyA3O3h004nyPm/6s1ZnYNa1mxXKel6ASyZTDhYp0HJVY3LeAbSS4X+98avkDu1lIR
         ggfErWNdA0ifPu8Fl8rxhq/AZCvPwpH7CklMZwWowFuayof6rQP2fXn4/4d8yCExolbE
         TtqEIJLvXmgfRqPXr1OJeyLdNluSy3KP7acWssSIbj1/63ttx/TYGCKmHHwlKvFmCbd7
         Gm6Nh9Y2ufCGbKJD40yI/EQgfVLPG1RiA5rs9W4jaXEvVhnxJsVV2biDq+m5pc1EhAmf
         U3aqCBfAlW0ZtDrwkuuLZ0s3oEAI+i2D4T4WsEXosX57EUaWVypNRTDGD/trQ2TDshWt
         XkPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=V7S6ZH1R4O4vB9phX86PXGejafkt2ttc0fjEWi9HJC4=;
        b=bWXKAHZMCERT9CCHDvxYrvCwDV2i8RasxlYp73xaKPisV7S6aPau86FAdIAMWo3/af
         0ez9MuqdsQcPcTZtS1NknlqVSU3CDecP+tZymab5lv0D+hB8Qv5L6jMvt/v1tHhZSKcq
         PF0Lt7m+FydRi5rvkelalFQclbDKpA3MoiYhAy4Aw4lkIbDK5NOAiBm5Si5aJU2grNNR
         nO+PGW4+YsErmX4q82Bhxgqrdn+UBY0WSg0+f5OOR+6KiUp95hocGWTFUYO/TnXUsOV2
         jIiHXZFCXouYb0+NZz/YTsLWOw1mUMHLZWYWya55/eYXQqrgcGY1/aaEv3kL5IzfQ3NF
         52lA==
X-Gm-Message-State: AOAM533YSTSlvJgE0mjsF8ubXxpu6tExB8vsqtQUL8EGL/8RgXxWfIQA
        HHxHuNDxnZiRX0v6Aax5r1De8ZQ7Jrk=
X-Google-Smtp-Source: ABdhPJxXsLl0V9DLCHdOhwx88BNQCUs8Uq8P24qw7b6j2kPo5TMBFgXWp73vKAs39tsmCBucPKfHAQ==
X-Received: by 2002:a2e:a263:: with SMTP id k3mr5768751ljm.41.1623487883692;
        Sat, 12 Jun 2021 01:51:23 -0700 (PDT)
Received: from localhost.localdomain (88-114-216-93.elisa-laajakaista.fi. [88.114.216.93])
        by smtp.gmail.com with ESMTPSA id f14sm1034685ljk.42.2021.06.12.01.51.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:51:23 -0700 (PDT)
From:   Topi Miettinen <toiwoton@gmail.com>
To:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com
Cc:     selinux@vger.kernel.org, Topi Miettinen <toiwoton@gmail.com>
Subject: [patch] mount.2: document SELinux use of MS_NOSUID mount flag
Date:   Sat, 12 Jun 2021 11:51:09 +0300
Message-Id: <20210612085109.20363-1-toiwoton@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Using mount flag `MS_NOSUID` also affects SELinux domain transitions but
this has not been documented well.

Signed-off-by: Topi Miettinen <toiwoton@gmail.com>
---
 man2/mount.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man2/mount.2 b/man2/mount.2
index d8521880b..d7d5b2ad4 100644
--- a/man2/mount.2
+++ b/man2/mount.2
@@ -220,7 +220,9 @@ Do not allow programs to be executed from this filesystem.
 .TP
 .B MS_NOSUID
 Do not honor set-user-ID and set-group-ID bits or file capabilities
-when executing programs from this filesystem.
+when executing programs from this filesystem. In addition, SELinux domain
+transitions require permission nosuid_transition, which in turn needs
+also policy capability nnp_nosuid_transition.
 .\" (This is a security feature to prevent users executing set-user-ID and
 .\" set-group-ID programs from removable disk devices.)
 .TP
-- 
2.30.2

