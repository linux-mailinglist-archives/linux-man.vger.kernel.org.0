Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E6DE2E7CCA
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 22:43:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726529AbgL3VnS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 16:43:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726509AbgL3VnS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 16:43:18 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE74FC06179F
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 13:42:12 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id y17so18620817wrr.10
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 13:42:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3GNxyVcVZ4GRt4FDzWNjyY6zJyU7tAILCVQR1oEEgqo=;
        b=igCjiKk6Q1bQm6bDtnlVrjTxzlxAdCLDnn3Gbvygtsnwjhj6mnt2e+QK7AwEXuKdlz
         KOYCiz3J/BnsDhZuCg3F3ZHkVbO3difZAYrpCBs9WHOOP5A/A+02UrK1/QR7EGOaS5iv
         K9HKGJ8gJxPUn9TZNnOe2P8gSy6Kmxxm8qmzUEmYIcpZSEm1kl5z8cvNNUA29SFLQ1+m
         rvcW3ZzKa2GdtqO7QiTI1NnAqcKqT5/RK7dmFUoiuq4YYj9yc8/b1WmCWe6+8wD1cI3B
         jTdZZGkvOdHPw49GfvnJfULQ99IzLPhy68oBm8lfUPyzZNXgk5Nlq8gBzfg/0o4BbH5s
         /ciA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3GNxyVcVZ4GRt4FDzWNjyY6zJyU7tAILCVQR1oEEgqo=;
        b=GIv63ph0SwZqvJ6SaT5PGZMc390HBQ8VXJmkGk1DH8+6vHGhqsR90i7VIDhmz/ONFl
         VXicGJ4GjLm/lfkLy1dM4NWTvdnrv9nODBAO0oMBjys5OlJ0zr5TvU6EhixsgIe7dlnX
         4NfZRI82vzicspHFWGTx6YE+bp+j/fq3B0UMFF/7Dr3RZ316i9rOuajVuYS+ScKMvm12
         fjiI1yxMhkFTUKDpH+noR1NljagKXeBn6/LunGHwvfchhJWf7XDd8nCak/Kz/+r85ylJ
         WrN3NX7bmdGNW4fJctY98F8ZMi8KI1IVpgoT8VTK6ZF2pVK+pmaeu4faLQh6P8drtr7l
         VfWA==
X-Gm-Message-State: AOAM530aTpRUnbkQ0sWLAvwwyi0627n++cvWHGfARpthT0/1Qli/EONH
        +DR/qQRr3RaFD2FXzLyVsqM=
X-Google-Smtp-Source: ABdhPJy/5t04xPOrYMoRYPdekZydvWXrtT1v6EM4THWV1IpXktyKYkLssc+G8jhrld6yv9nlH8bceA==
X-Received: by 2002:adf:e802:: with SMTP id o2mr63486740wrm.251.1609364531602;
        Wed, 30 Dec 2020 13:42:11 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id 67sm9519234wmb.47.2020.12.30.13.42.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Dec 2020 13:42:11 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Subject: [PATCH] get_phys_pages.3: glibc gets the info from sysinfo(2) since 2.23
Date:   Wed, 30 Dec 2020 22:41:47 +0100
Message-Id: <20201230214147.874671-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

See glibc's commit: 0ce657c576bf1b24
https://sourceware.org/git/?p=glibc.git;a=commitdiff;h=0ce657c576bf1b24

Reported-by: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/get_phys_pages.3 | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/man3/get_phys_pages.3 b/man3/get_phys_pages.3
index 35f83fedb..a8a1ce3f4 100644
--- a/man3/get_phys_pages.3
+++ b/man3/get_phys_pages.3
@@ -55,15 +55,20 @@ The system could not provide the required information
 (possibly because the
 .I /proc
 filesystem was not mounted).
-.SH CONFORMING TO
-These functions are GNU extensions.
-.SH NOTES
-These functions obtain the required information by scanning the
+.SH VERSIONS
+Before glibc 2.23,
+these functions obtained the required information by scanning the
 .I MemTotal
 and
 .I MemFree
 fields of
 .IR /proc/meminfo .
+.SH CONFORMING TO
+These functions are GNU extensions.
+.SH NOTES
+Since glibc 2.23,
+these functions obtain the required information by calling
+.BR sysinfo (2).
 .PP
 The following
 .BR sysconf (3)
-- 
2.29.2

