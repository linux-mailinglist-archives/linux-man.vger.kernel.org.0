Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E364026FD4A
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 14:48:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727012AbgIRMrJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 08:47:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726939AbgIRMqp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 08:46:45 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63009C06174A
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 05:46:45 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id s12so5483205wrw.11
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 05:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DZ01edvbAPM7dtjpvhYgXFHvreufa5YCeD0wydhgWA4=;
        b=FNgRhGiU5iF7w8BdEFbMQRbQyZctmCYh4uWWPBu21z6Z+aMcBmh9vM8w7mAfUFTATW
         H7zaPEyRsdHtMKgUWRxZEa4fbYdf7spJM+DtzsO1Ay1j/v+KO23O82Lu4LCOKJdwg1OX
         XAtpLsFGlzRLTvCRy9ikU+ca+hShX1vSjZpfrdhCPr3pyofhme5kRpnWxeTuicLbMP6l
         9XzTvUo+O5dKI0NWvAHd7o1IW3wsgPlXaXEx6dEVRmEzcM9aMlzj+WY/P0/B92i6IB5b
         VfKfvo4EcBBvmMZ6awgphaJ+PHE2ZDJGTDAmkDb7NskTo9k7EM1uRj9t3ttpcoKAXI9w
         z2mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DZ01edvbAPM7dtjpvhYgXFHvreufa5YCeD0wydhgWA4=;
        b=aPvl15mvzFl7vt/t6ctF9F1r9Kc0Lw0So23AhaPQTJxtci5RBqMVktFeQIqj2wB1Ej
         /19qBJolU1keY6f2jyMVOHjE8Pcb4y47pk68F63+YqWSTY5bzxwblcQThLV0K+HdtiNU
         GIb1mQ7T5YrRpG9so3uXuPQdqVwlZGloGPk774q89NX1yYKR4hl+0SU4fCYV5yFuoVl2
         rsfJHDTilIxkooLw7U1T3kLTq3MAirRgSU15s2EWbCOt5sDwreRRfKAy5e6JW9ONbNce
         i4lLqIqS95UNV4COGZ5Sz8bzsdkxGIxIn1Md6XYjjDEpRlI/ZUBBnSZXQQ1J1x3Oe+Nd
         /png==
X-Gm-Message-State: AOAM530/ohxhH6bORxpRMAm+aa+y3HHAck0r0YRSL/S9mmXepT0DKTCg
        TIjG4gwz0KramrmaMEKLdQ/hDQwaC4gLbg==
X-Google-Smtp-Source: ABdhPJwfvfSk3uCah+rGFPjv8M0N3lXnoUlkbDP21eceMt639WjyFJbITP+V3uL2RCj6hSOr+xkVCg==
X-Received: by 2002:adf:83c3:: with SMTP id 61mr36788209wre.287.1600433204076;
        Fri, 18 Sep 2020 05:46:44 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id h76sm5254410wme.10.2020.09.18.05.46.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 05:46:43 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 4/4] system_data_types.7: srcfix: Add FIXME notes
Date:   Fri, 18 Sep 2020 14:45:55 +0200
Message-Id: <20200918124554.46308-5-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200918124554.46308-1-colomar.6.4.3@gmail.com>
References: <20200918124554.46308-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index d96703b1d..16dcb7d66 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -133,9 +133,9 @@ See also:
 .BR sigevent (7)
 .\".IP
 .\"See also the
-.\".I sigevent
+.\".I sigevent	FIXME
 .\"structure and the
-.\".I siginfo_t
+.\".I siginfo_t	FIXME
 .\"type in this page.
 .TP
 .I size_t
-- 
2.28.0

