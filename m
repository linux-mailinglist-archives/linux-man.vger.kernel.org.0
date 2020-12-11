Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72DA82D7EC8
	for <lists+linux-man@lfdr.de>; Fri, 11 Dec 2020 19:52:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2436714AbgLKStp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Dec 2020 13:49:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2436570AbgLKStD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Dec 2020 13:49:03 -0500
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23FB3C0613D3
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 10:48:21 -0800 (PST)
Received: by mail-wr1-x442.google.com with SMTP id r3so10079820wrt.2
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 10:48:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1BjPXRRx0YYXjEaZ9JagSV2seEZPq6wpByXZm2AVE0s=;
        b=ONzQDNV9njxqD/HutP7dA5whLU4qkq0GtHD2BSeWhWQelvUtPwuqR7WTkcEMRSh8hl
         PSk/org+G0s2hfLRp9IpjRuC9NBHtwG/t7YE9LMGleiWOhfgQCQA2KYWB91YFtspxOjG
         bKQBEfkBO65qTcv/Y7J2bVhIxZhyw37mUxb6UvASm3OUymR4M+xHfCQVuGisr3muxNR7
         j108Dtu/u7eQfcJxJCV/WZsOsjMx4hmWgRxeOAKFw9NxArW/1N1GUQGDWxKFuC/FK4Ly
         ZJn2ZabSudfU2m2bgJKS5vLDBXBjrZECDRgo02uusRfDlZyPh8WEr9lNDBGTeGgPUX5t
         7AQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1BjPXRRx0YYXjEaZ9JagSV2seEZPq6wpByXZm2AVE0s=;
        b=WRIPje13Udx6hm4oS5k8wxkrcB7ZZBeZ5ed/kwcWC6KY0847IP5oDejy62JIpffeOn
         TcoA5ObcP5wVkp6W8pIKwW/ume/8Qqo53Vl1Fl0abF4s8ya+uFtt3JPp73t9VSLqk+PT
         5G4lfXXYPoS35Br7V95X5mFs5w+FN5QlDPc8Fll8UtX4/85KzVqlq69RmUkNcjWLwRT4
         3h31blyBkJZrii+cxCdrCa6dBuliS3mTdCsw45nkz3iIsx8x51tMutHVZkrEgX4ryTED
         GP97qshZ8kZYUSqQybd3pkHCsUsskV8PgLCvoYzlRjIULg+twOkEzEjiAF6U9Ld/3Wcc
         XswA==
X-Gm-Message-State: AOAM531+2rc8PFhhOVltCLSfUXzsr6Op5YwJlBdetQrl9NrmGM0viFGT
        VdD7fHhMr/uT9Fzz6jQ8tRU=
X-Google-Smtp-Source: ABdhPJxk2vLjKt1bhwmSFgdC4TqMfR1LYzzVMdkJlB20KjRmaweg7t/P2xLghXdOnqToYJLAT7zoXA==
X-Received: by 2002:a5d:618c:: with SMTP id j12mr15373620wru.182.1607712499952;
        Fri, 11 Dec 2020 10:48:19 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id l1sm16193079wmi.15.2020.12.11.10.48.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 10:48:19 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Philip Rowlands <linux-kernel@dimebar.com>,
        Eric Dumazet <eric.dumazet@gmail.com>,
        Hannes Frederic Sowa <hannes@stressinduktion.org>,
        "David S . Miller" <davem@davemloft.net>
Subject: [PATCH v2] tcp.7: tcp_syncookies: It is now an integer [0, 2]
Date:   Fri, 11 Dec 2020 19:47:10 +0100
Message-Id: <20201211184709.38128-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <086c4c44-0443-9e13-0087-fb8c2adcb80e@gmail.com>
References: <086c4c44-0443-9e13-0087-fb8c2adcb80e@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Since Linux kernel 3.12, tcp_syncookies can have the value 2,
which sends out cookies unconditionally.

Related kernel commits:
5ad37d5deee1ff7150a2d0602370101de158ad86
d8513df2598e5142f8a5c4724f28411936e1dfc7

Reported-by: Philip Rowlands <linux-kernel@dimebar.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
Cc: Eric Dumazet <eric.dumazet@gmail.com>
Cc: Hannes Frederic Sowa <hannes@stressinduktion.org>
Cc: David S. Miller <davem@davemloft.net>
---
 man7/tcp.7 | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/man7/tcp.7 b/man7/tcp.7
index d983a8f9a..cce8dd910 100644
--- a/man7/tcp.7
+++ b/man7/tcp.7
@@ -830,12 +830,11 @@ The maximum number of times a SYN/ACK segment
 for a passive TCP connection will be retransmitted.
 This number should not be higher than 255.
 .TP
-.IR tcp_syncookies " (Boolean; since Linux 2.2)"
+.IR tcp_syncookies " (integer; default: 1; since Linux 2.2)"
 .\" Since 2.1.43
 Enable TCP syncookies.
 The kernel must be compiled with
 .BR CONFIG_SYN_COOKIES .
-Send out syncookies when the syn backlog queue of a socket overflows.
 The syncookies feature attempts to protect a
 socket from a SYN flood attack.
 This should be used as a last resort, if at all.
@@ -849,6 +848,18 @@ For recommended alternatives see
 .IR tcp_synack_retries ,
 and
 .IR tcp_abort_on_overflow .
+Set to one of the following values:
+.RS
+.IP 0 3
+Disable TCP syncookies.
+.IP 1
+Send out syncookies when the syn backlog queue of a socket overflows.
+.IP 2
+(since Linux 3.12)
+.\" commit 5ad37d5deee1ff7150a2d0602370101de158ad86
+Send out syncookies unconditionally.
+This can be useful for network testing.
+.RE
 .TP
 .IR tcp_timestamps " (integer; default: 1; since Linux 2.2)"
 .\" Since 2.1.36
-- 
2.29.2

