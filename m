Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AFA6326FD6
	for <lists+linux-man@lfdr.de>; Sun, 28 Feb 2021 01:52:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230209AbhB1Av1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Feb 2021 19:51:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230212AbhB1AvW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Feb 2021 19:51:22 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6D13C06174A
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:50:38 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id u125so10990072wmg.4
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:50:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5a48VXI/LlaQg4ZbUc0ua9uF+dg1VkBzaIHAK8FrjIs=;
        b=dpn/UykjFUMnB/RKmpZ8PQ6s7cxvQ14fi8c3yEk/cSm71afFcH1KxsLA0UzrbdwBPr
         LA6Gh9QYDzykvJUoj23si1VNuMiUbkAkZX1vaqxsQIFCsv0AHaSmh8CEd163RMXnBSax
         gJQhiL/fCwa5Qwo9w/s7mpXawtoUvOksAUQ/p2R8DO2VApvmNs2ME2AGN2wjsmiVV+cp
         /X54qYs4Ep9AQc31TD7h2z/t3Nq1zVVgAZHwMTDrQ/byEaqSwuJVygKxTQvxFZpc9shw
         /7CvgnUJ7hFAwRvs90CCXnZCMttAF3Sbnou+ghp84k+gOk9+7ZY722h9BSrPVNxqLEce
         o4zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5a48VXI/LlaQg4ZbUc0ua9uF+dg1VkBzaIHAK8FrjIs=;
        b=DSRL/UJUwl9tQs3Hphq4WFv/uDqw79R0LTCLG6Lo7JzNYCZKvwrYoUaZ268EAPqdVZ
         a5lWglhPK3ANLjGDJif1gB8JvF4Wh60NDVTCm6oqdyLCggks7HX7wN+dJ9TWzg44z6w3
         kfKrtwGTsUQdHee8+XOYa1cX+WT7dzViMT0D4dHwLi0zJCroJNer8Hhu4TXjCgFm0Atg
         XuCXbeKBhx0nACbbMzhzj97Hb5IHkYjMoQzpfHuJUof4T4Uv9yvdfKQtomZipmCixxqF
         uKh9FIlRIVASqr7bNL1dHhOaNxYomHN9sylCbSiydrA9XT4uLdIBvJN8pLP89ed084Lr
         UyQw==
X-Gm-Message-State: AOAM533WLycUSwn8tIl8fkfC+rT6QrJruT+70Y03GWAht0ArMcpAWFi1
        dupBIihxOIKxyUT+v4KITsT6iEqn8e5zjw==
X-Google-Smtp-Source: ABdhPJxZVLIQt16PZASYpCXnIYSLQtgKsLtbtiCZw7N4gDMCfAUAILwsLgqaahXVVGF4Z0byGFqX4g==
X-Received: by 2002:a05:600c:2946:: with SMTP id n6mr1235954wmd.52.1614473437618;
        Sat, 27 Feb 2021 16:50:37 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id j30sm1068819wrj.62.2021.02.27.16.50.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Feb 2021 16:50:37 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] getopt.3: ffix
Date:   Sun, 28 Feb 2021 01:50:25 +0100
Message-Id: <20210228005024.122579-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getopt.3 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man3/getopt.3 b/man3/getopt.3
index d83f8693e..b628a0b4d 100644
--- a/man3/getopt.3
+++ b/man3/getopt.3
@@ -47,7 +47,7 @@ optarg, optind, opterr, optopt \- Parse command-line options
 .nf
 .B #include <unistd.h>
 .PP
-.BI "int getopt(int " argc ", char * const " argv[] ,
+.BI "int getopt(int " argc ", char *const " argv [],
 .BI "           const char *" optstring );
 .PP
 .BI "extern char *" optarg ;
@@ -55,10 +55,10 @@ optarg, optind, opterr, optopt \- Parse command-line options
 .PP
 .B #include <getopt.h>
 .PP
-.BI "int getopt_long(int " argc ", char * const " argv[] ,
+.BI "int getopt_long(int " argc ", char *const " argv [],
 .BI "           const char *" optstring ,
 .BI "           const struct option *" longopts ", int *" longindex );
-.BI "int getopt_long_only(int " argc ", char * const " argv[] ,
+.BI "int getopt_long_only(int " argc ", char *const " argv [],
 .BI "           const char *" optstring ,
 .BI "           const struct option *" longopts ", int *" longindex );
 .fi
-- 
2.30.1.721.g45526154a5

