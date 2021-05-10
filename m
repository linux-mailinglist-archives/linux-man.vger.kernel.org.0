Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57697378F8A
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 15:53:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236798AbhEJNmQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 09:42:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235833AbhEJNFQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 09:05:16 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4915BC061760
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 06:04:11 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id v12so16540575wrq.6
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 06:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nEinNU2nC4AIhGUdQMLeYJNZ0vUkBA38/+bD7iNKrxk=;
        b=sihev2leabfgjsOGSmJowjQRO00MRjmkmPae71tz7eB1N11UJKq1nXv1OD3BP1z3Z/
         hTXJa8KBZUDb02+qKEQkMEeFS1l2qlpPpRZKq8vLFYmYUM46sdqd9N5DGrZLQMwkTFxf
         2qW4UHKIrU45hSlimJRKEI9pxJyTYg7gH6H0LKzzROUDEUY4MDNY84uzuBNhYr+dAMe7
         UinM9M644PZ6p6zBeH/vKnuIni3mcBT7/zPhTFwxNCOI/Nak5Gxcna9+OmjTZUDfOu7b
         W7jAASpoeVGaeB7F/shsyU/+T0F/MJ8sV6pI6GP4Ia0gMKZofDaqdwgKIPqLasYMiolS
         0xbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nEinNU2nC4AIhGUdQMLeYJNZ0vUkBA38/+bD7iNKrxk=;
        b=Tnu7/wg5blrAUK06sAcoWZoijCXFLzLnIBAcj4/vz1aHVYs3XdzZB+0clFA265THOK
         Nc7Pbs205HUP18SA5iS7ZP6PSzPTwkQIEGJt7bhFYlUhr7V0G9MLhXmhvbOxfKnL8obS
         qsz+Hwa5AYe/mFQ2QGL03bi3r7/3khDgF4KpzAnPVWQ1kfWFmaJutbELHw1hy0LWpONd
         ANc6ZpPvKHBjy+XMhdnrIMCIvIn3TChSAHg/UVx1mz6Vrl+QZpyPkEfXnkLtkLQS+0dp
         pbU57e0+pCb6iCownAFmYQzBtjDoTWD8zMh24bKfnmxq2BxTjK80iVZH0KOiJgwHcap7
         Hung==
X-Gm-Message-State: AOAM530CHjD8Pxwt9eYgGtGMROt5GuJSMra0/bEmL3omg6FTWLUiIg4F
        C9jlRXNfV8SrjNQdOBAlImE=
X-Google-Smtp-Source: ABdhPJy6DoQeJVbDkr9YM99d6r11sE7DbtuTDe2joZOApw2y6kMx5AzClzEOYSnVeUmhblA8sIhdzw==
X-Received: by 2002:a5d:64e5:: with SMTP id g5mr31004557wri.30.1620651850073;
        Mon, 10 May 2021 06:04:10 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m11sm22659805wri.44.2021.05.10.06.04.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 06:04:08 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] execveat.2: Remove unused include
Date:   Mon, 10 May 2021 15:02:10 +0200
Message-Id: <20210510130209.4578-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This complements commit e3eba861bd966911b38b7ebc572f0c092ca7bdee.

Since we don't need syscall(2) anymore, we don't need SYS_* definitions.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/execveat.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/execveat.2 b/man2/execveat.2
index 11ae04a9f..495617b09 100644
--- a/man2/execveat.2
+++ b/man2/execveat.2
@@ -29,7 +29,6 @@ execveat \- execute program relative to a directory file descriptor
 .SH SYNOPSIS
 .nf
 .BR "#include <linux/fcntl.h>" "      /* Definition of " AT_* " constants */"
-.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
 .B #include <unistd.h>
 .PP
 .BI "int execveat(int " dirfd ", const char *" pathname ,
-- 
2.31.1

