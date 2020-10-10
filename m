Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C2F828A3DB
	for <lists+linux-man@lfdr.de>; Sun, 11 Oct 2020 01:12:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389506AbgJJWzq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 10 Oct 2020 18:55:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730704AbgJJS7Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 10 Oct 2020 14:59:25 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDCE9C08EC26
        for <linux-man@vger.kernel.org>; Sat, 10 Oct 2020 10:50:56 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id x7so5146155wrl.3
        for <linux-man@vger.kernel.org>; Sat, 10 Oct 2020 10:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=seEhwPaMkO1GFjG2SUAlSe7bytxiy6d9iIqCG65H5D8=;
        b=VwO1vrxly1lbsdOgHF+Nf4uqwLT0R+9FR1S1LsSh0EHPFG92UY94ubHROQlcnc85AN
         beDZ/U/2253aH0eWoVl9pvBcjb/HR9IeipKD5aW1H+xhiKeRR61L3OSXZ0zjJnAHG0gX
         VGkOXJkeL9eRFxAsXH4DSWx2viR4JU6ngwlF0dhsrtFoflfVG1yPZsSk0XT8cauyjz70
         vgc3TCg6T0U4oQUEwfuYeVnqIxaSpg2II6PG2krxZmw/N1op//l9Ia6ADmVZNb7mkQmD
         ho8wU4YOKfPkpdFNphAMxrRJDLwH+0TTgb0wjV16nahxw4x/QULsOpc4pAf5O3wJhqmR
         R9Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=seEhwPaMkO1GFjG2SUAlSe7bytxiy6d9iIqCG65H5D8=;
        b=dbq3Ba9u7cwzto8ft9rWM7NEOTVFph+cOIFwB8Nqf29gAzswkfaYhPrEjWSUywz8Ub
         C7VYyZI8BuJcHt37IWMmoM5O1ivB/Qlf2NbNqn0PVATnCR6UBOeDNAcBWahTCji0gAC0
         pOo10ZSF6MqomHs0XFBkWw4zpYI/PkqRuD7qnMUS8y75twsKnZvkMTML/i8MtA4hBnTP
         Y0tu7icSW/BzHo7/NUoHONT2QXWUATvqjGIQ5M3DtGyrNh5PNTJPteXTT1WFkAvTBBUj
         xPnyXTywozEi8/tVVY7YbEIRfpwMQNB3ofkeo/Fxj+/RiPDqUkZArxTt/R9P2idZBidw
         VSdQ==
X-Gm-Message-State: AOAM530/e7DCOA1UeojamyB/9FH8peRVg8wX3tzBl4i6A798ulS68XmA
        J3iz6POmg3AOhvIQM2LjFes=
X-Google-Smtp-Source: ABdhPJyiv+N7jQpTlb4VA68ysWlggLcs8mVaRJuvg2Sm13VD6ltYTzuKJC3AvtmPC22LlTi1j0xP1g==
X-Received: by 2002:adf:aa99:: with SMTP id h25mr21946829wrc.101.1602352255457;
        Sat, 10 Oct 2020 10:50:55 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id x21sm23764197wmi.3.2020.10.10.10.50.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Oct 2020 10:50:54 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH] regex.3: Remove unnecessary include
Date:   Sat, 10 Oct 2020 19:50:02 +0200
Message-Id: <20201010175001.3818-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX requires that the <regex.h> header shall define
the structures and symbolic constants used by the
regcomp(),  regexec(), regerror(), and regfree() functions.

Therefore, there should be no need to include <sys/types.h> at all.

The POSIX docs don't use that include:
https://pubs.opengroup.org/onlinepubs/9699919799/functions/regcomp.html

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/regex.3 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man3/regex.3 b/man3/regex.3
index d4f7a09e7..414011d91 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -32,7 +32,6 @@
 regcomp, regexec, regerror, regfree \- POSIX regex functions
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <regex.h>
 .PP
 .BI "int regcomp(regex_t *" preg ", const char *" regex ", int " cflags );
-- 
2.28.0

