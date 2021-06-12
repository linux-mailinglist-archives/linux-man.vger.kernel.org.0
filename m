Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 340EA3A4DA5
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:33:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230012AbhFLIe6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:34:58 -0400
Received: from mail-wm1-f47.google.com ([209.85.128.47]:55946 "EHLO
        mail-wm1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230400AbhFLIe4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:34:56 -0400
Received: by mail-wm1-f47.google.com with SMTP id g204so9253431wmf.5
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DcMQSutww+Ma7C5vRIZFVNRmBV3OW3S7CluYYZWHaHc=;
        b=XSgcdWEAijWzofgdwfqLb0xw/vlNnHw8zbSUms8UM/X01dS2ud+JTAd9cQkAGFlGIo
         bej8aSywvgkVvTF0/awWWKUdWVjWHcr0bCOp0W/wpS3T4BwRMiKuHzfWI/VLClID72TD
         w95s0IcE6KsVhf7gsDJ0PY8OAFcNl/swkyTqkmNS5AQhUh2ImAi/kEJXA/QGUGabGWYD
         Fky0puxH2ZIMwOxU/KrNVIS6R43kfVicrA4NBKmjIP4JA5XH+I5yHyrOu1yi3nft/+rB
         Nn29od2deScoTcTQDdKaQnE0hh7lapxa7pxxgoX/chHH6N1kvoXleKtfsW1kgyA1Mq/j
         eZEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DcMQSutww+Ma7C5vRIZFVNRmBV3OW3S7CluYYZWHaHc=;
        b=ipp84rxaXdUy9l9bcrNcD0O8ztKgY6RfqVIcKMtDuHcmcPbW4sQv7oc2ka09qssmvG
         H4DumCQI9z4k50D3yUveOOPErO7CwnpHgK6GaysfrZHWEiRIO+2TJOC66CJuchC7cUv8
         m8yMtNjK48w4fhhZywvXaN0smRSQYXPVQ5lY1hpPPDBZJGQa4dz+p9NrsFRl2ZWSDbGU
         IgIK5II/D4tsgnc3WyTv1F+E03pKDol6291lIX/Eb2f+3kPmlM1Wm82+14FiDRSnZ+fj
         4z+pv10gThT46reJSD1aeT4SPeGvF6NhtHjTdUazcmoQN4RRFZvwjhsuAezp4nswwMxW
         LiGg==
X-Gm-Message-State: AOAM533g6mw+xYBs5UlwVpXSPL2H+EKFI/vyNSIFAPu8tRS97/qqYaJU
        ydom1Q2KsBB4kfBcWBYuNr8=
X-Google-Smtp-Source: ABdhPJylby+i1sSc2x/raalOCqpgG25SQg/Z4ZWiBIgUOU5c7s9WaN9cTND/ZYteD7SpGGDoiSYitg==
X-Received: by 2002:a05:600c:4f0c:: with SMTP id l12mr7439998wmq.123.1623486717095;
        Sat, 12 Jun 2021 01:31:57 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.31.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:31:56 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 13/28] syslog.2: Use syscall(SYS_...); for raw system calls
Date:   Sat, 12 Jun 2021 10:31:30 +0200
Message-Id: <20210612083145.12485-14-alx.manpages@gmail.com>
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
 man2/syslog.2 | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/man2/syslog.2 b/man2/syslog.2
index b3b205172..46928df49 100644
--- a/man2/syslog.2
+++ b/man2/syslog.2
@@ -35,10 +35,14 @@ syslog, klogctl \- read and/or clear kernel message ring buffer;
 set console_loglevel
 .SH SYNOPSIS
 .nf
-.BI "int syslog(int " type ", char *" bufp ", int " len );
+.BR "#include <sys/klog.h>" "        /* Definition of " SYSLOG_* " constants */"
+.BR "#include <sys/syscall.h>" "     /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "int syscall(SYS_syslog, int " type ", char *" bufp ", int " len );
 .PP
 /* The glibc interface */
-.B "#include <sys/klog.h>"
+.B #include <sys/klog.h>
 .PP
 .BI "int klogctl(int " type ", char *" bufp ", int " len );
 .fi
-- 
2.32.0

