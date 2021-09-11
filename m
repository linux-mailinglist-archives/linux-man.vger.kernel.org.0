Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87A0A407956
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233130AbhIKQDC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233089AbhIKQDB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:01 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A587C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:49 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id n7-20020a05600c3b8700b002f8ca941d89so3462427wms.2
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kzTwbLckQwIxeTONTcp5F4dCKTz/csPh//WzxtZzQtI=;
        b=qdIUaGR5FdT3ms/vx02ol6e2IT+LCt6d79QJapt/zrevbqh3gA/jraieLA9bWh4bky
         sdKrWPY3szW+b7kLiCluII+GMynJOsgoGSpTNB3sGJq77boMZkRBGlcaQ54o6u9IYkSZ
         tpA4sZ/3eJ8Hw8XgF/RYRwXsl+v1+lV6M0CpA7nhP45gkSYKTRFbfP7GKQYyle0BD1lS
         GMcQ1UWKq2nhbDclfvWro4JdlHKVhQv8zmKRixgN5RhbyRd32bsk6f5/BSUQnv8n8JIS
         gBD+uhe769ujX0RB57B8zejaDbTpYi/nqTtSLyDsTsUUgbw7ulFz0g5H6h2RIxi4L3vu
         T7sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kzTwbLckQwIxeTONTcp5F4dCKTz/csPh//WzxtZzQtI=;
        b=HKQJt5cEcCYxmbp4IFpbnEXRXBnYaize/TDCP+KsCxcGG/n6vzsOw/egSOFvdEPXjP
         yletBQrUO9a8+4//YGCEhMNicZH/Ret1CFxqGYKHi2RZGFTTJJiqL2yUAi4cswzFEgZH
         Es/wAjP0v93IhycpSEVZF1fJRAxU415jwE6RBEnDyUe+Td1wWYW4Unm0yySphEjHACTj
         92WB9MAoNvTtliCWosepG8/K+UyP5A1UmuqLtv0qa0/Jgq0abKEi/gXSr9mcylkSUdPc
         U9C5jNoYxpSouG8pMFHbV28kTC2pehzOyj90fLoC7wirdpEkDyTNVqE21BBoQDoM58IZ
         o4Kg==
X-Gm-Message-State: AOAM53120FmW0AwHFVRA1cLVB/ep/8ZcLh9Sv+mgex1UAHBqHQd6Let7
        QtzjsYwpeHO5+ycV2gtBWmaeB+Q+O7E=
X-Google-Smtp-Source: ABdhPJxCh5sRzlVOgdoE/ckc9i4dEjABAn7KuWywp6h9CRQXmDClyCQyAalT5akPhrn+U1HjeG3wpA==
X-Received: by 2002:a05:600c:4f0b:: with SMTP id l11mr3142211wmq.126.1631376107739;
        Sat, 11 Sep 2021 09:01:47 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:47 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 23/45] truncate.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:55 +0200
Message-Id: <20210911160117.552617-23-alx.manpages@gmail.com>
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
 man2/truncate.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/truncate.2 b/man2/truncate.2
index ebe3c4ef4..054f4fc2b 100644
--- a/man2/truncate.2
+++ b/man2/truncate.2
@@ -43,6 +43,9 @@
 .TH TRUNCATE 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 truncate, ftruncate \- truncate a file to a specified length
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <unistd.h>
-- 
2.33.0

