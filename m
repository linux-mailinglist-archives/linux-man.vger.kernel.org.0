Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A6263A4DB2
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:33:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231133AbhFLIf2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:35:28 -0400
Received: from mail-wm1-f45.google.com ([209.85.128.45]:35568 "EHLO
        mail-wm1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231158AbhFLIfV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:35:21 -0400
Received: by mail-wm1-f45.google.com with SMTP id k5-20020a05600c1c85b02901affeec3ef8so9976589wms.0
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uzzBah9R+RsJiEAflvmQz9HI31xTkpq4guUUdgAStCg=;
        b=hY0txvsvi7AEmrLNGDFZ1A2d4cOWnzxkTmbQ/fl2VP85WvyK6yVnbDHATb8Hiq1hXx
         tcUHxtfSWbA85qlzD6QkPM+k03kYhChh/DQNpUi8tLv15VVDS+f0d3rgnQn0TCZ3afFx
         4fRaYT9ZmxmscOn0OA6YuLyuNqs2k5rBy8pMaQejDVI5JUKaJxFxsf5WTnLQnqUxj9SK
         lK5hiqCvrlQEQDjI9PzvFT/DBlCg8LiEGotKsLjZ4w+8IekxURyhT9hxtZeUmQOH3+N4
         Vz4Z+c5lur9Ve/UkOzLtd6DC6aFuj+WtLZMge4Ne+mHvYIfm3jUgroz6diIUq5Ks/Dwp
         id+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uzzBah9R+RsJiEAflvmQz9HI31xTkpq4guUUdgAStCg=;
        b=MXdkiXcryYxQ4BvOPYziW8IkA69xQ1nXaAFD3HEaubGfmlTHxmXH66ebBx+0688duY
         RZH1xmMeiLN1RaTziqjj7vcwY6IDMuMRMcK+VptMeE9w7mlAoVy+742jvwrrBeS9/cjh
         GMATiv3DlQKtGzdjrurba5mbWcgz7/SHovjlh4bHv5ct3BUftt2Os7Te9NRwlAceLAqe
         Vi7g2QZvtl1+iMk5DrkkLJJDKyIC49gD4D2bmyBWAF9EK4UNgQy1PkP9Ed4Znq7rrJci
         JkIBZCmQYApYu/PVWkmM3q4Hcclx8ORQNSM4TXtliRGiWmhEFbv0Oe4k6zmNw76H9Gc8
         duiQ==
X-Gm-Message-State: AOAM531JDl7r6ourWW6SwqzmrOnJxHG1ya+Qipxccu4KhNMcymy0WYEe
        61SIZ9zk5y3V2HfnM/Pfrt0=
X-Google-Smtp-Source: ABdhPJxvL/30/3CqPi7Qp7hncttnqfM9gHp57zV76iiLanSGuD2dn4VymFBf075c10nMOwGnYYvShg==
X-Received: by 2002:a7b:c750:: with SMTP id w16mr7469804wmk.69.1623486727739;
        Sat, 12 Jun 2021 01:32:07 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:32:07 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 28/28] wait4.2: SYNOPSIS: Remove includes
Date:   Sat, 12 Jun 2021 10:31:45 +0200
Message-Id: <20210612083145.12485-29-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Don't document includes that provide types; only those that
provide prototypes and constants.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/wait4.2 | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/man2/wait4.2 b/man2/wait4.2
index 53fb8f639..3bd60367e 100644
--- a/man2/wait4.2
+++ b/man2/wait4.2
@@ -35,9 +35,6 @@
 wait3, wait4 \- wait for process to change state, BSD style
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
-.B #include <sys/time.h>
-.B #include <sys/resource.h>
 .B #include <sys/wait.h>
 .PP
 .BI "pid_t wait3(int *" "wstatus" ", int " options ", struct rusage *" rusage );
-- 
2.32.0

