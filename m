Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E43240796B
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:02:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233311AbhIKQDV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233280AbhIKQDU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:20 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEFA9C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:02:07 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id q11so7343593wrr.9
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4eDiJ7FDSQQg6Ff18D0QhR7IKJKrkrs5zXj/Uh32ScQ=;
        b=O1QOy+hiQvvsdgiWB4zcAEUxZyVoAhydhtOUBg58tdT2q4BX0JpzatloGTqBcM63vH
         TcZn/hjbVrM0VY3lWMlDr91aNipZTTnulncsQf1/reZnJ4gU0/BE+7IY7c6QpMUP8szm
         wY0P4ztzn9IzegeNBGxDG/D8EIwy14/OBk7sTeZ65Ebou7ZcQpZkvj2Xh0ZOD9olvTmB
         3kOoTGp8uVmJQffNuTERvZpnzfPtfUNHxiTwQTEavYwOkQGDZ1p6FWIUx0LzNB2AMcsb
         yCLzhm9gVN4U7JJRt8O4YBVMZWkmhd28fXla+yhkxddjPb/qbuDYmuE/dRcXmpEkUUI6
         BaZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4eDiJ7FDSQQg6Ff18D0QhR7IKJKrkrs5zXj/Uh32ScQ=;
        b=5DrmpelkKYCgKSTwKwS9aqQ6ZMIaDMCMUD96u0KoQ75gnltCpDE6xi3aWtBM8pX24s
         PLR6qc/+EnyNpLhI0lIngIyL1rNPubHm2GefddxpTmJBkm3uLXyjwVcBq/lqkmZT98Ev
         L9d2G/Nh3wUM58lUynErlkHtkq3WpdS4ZnwnPkW4qt1yNKcri8DJRg7JODq/MYZVeujO
         bNaLknFmMcgzU9wfOCoYRRqN2HOK8dx1Ze+2OuCMiNB0vZefsfXd4hP8vCXPWCuCjZib
         wFERq7ykhuTEhdCiPEDTuYmByv1M5lsHDHkc+S8BNhBih720FSa4BaUxmHWVGkf8SaSW
         NdtA==
X-Gm-Message-State: AOAM531JMkSqXTtR9HyX9kGbxpd3czosas8lJl+tFsUuxRWxRtwmFhxR
        c2b2k5nmZubGEZSE3wijCbs=
X-Google-Smtp-Source: ABdhPJwd4QfEw8CyegkyEYBjHt/3U1fqPtB4v1rK0HrbJpVZlFT4e2PIG9QPYj2lsjH5bpraymp//w==
X-Received: by 2002:a5d:49c6:: with SMTP id t6mr2557463wrs.201.1631376126660;
        Sat, 11 Sep 2021 09:02:06 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.02.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:02:06 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 44/45] socketcall.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:01:16 +0200
Message-Id: <20210911160117.552617-44-alx.manpages@gmail.com>
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
 man2/socketcall.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/socketcall.2 b/man2/socketcall.2
index b39f61039..55bf75ba3 100644
--- a/man2/socketcall.2
+++ b/man2/socketcall.2
@@ -25,6 +25,9 @@
 .TH SOCKETCALL 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 socketcall \- socket system calls
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .BR "#include <linux/net.h>" "        /* Definition of " SYS_* " constants */"
-- 
2.33.0

