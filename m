Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B33BC428097
	for <lists+linux-man@lfdr.de>; Sun, 10 Oct 2021 12:53:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231482AbhJJKzt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 10 Oct 2021 06:55:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231476AbhJJKzt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 10 Oct 2021 06:55:49 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23F08C061570
        for <linux-man@vger.kernel.org>; Sun, 10 Oct 2021 03:53:51 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id r7so45526807wrc.10
        for <linux-man@vger.kernel.org>; Sun, 10 Oct 2021 03:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9oTiHpy4U9hpuEoZ1bHLE3an0CPZV8uSlMFgo0TbpuU=;
        b=WYkETbaCQqTFn0v1fH2Utk744kYZu0W4OvbukWcOBJxF67eCcexpbZZJfxNnFO4f38
         PCJIKiaaz5efUXKAEn15UZ+/JXy2VnflY+IXoieSgfUN0HfVwtwTI6ln/R2StA3dQpf2
         MkZeuGZIdtMo/iFYyJAXvlRxZun/r0IVgBhul6TrzenBoSQDdCwDZj2oR4biUX831JKC
         ACF97WrBq/+PcmcVtoQqlt87owidsGndYfmGmBYVgpU9yCuCDRwm7FKwJumZHh871WHz
         o1mWyqlEM142ZIDd3S94/jPgJbL+6ta+EFt9DnptkOSNr/qNdhxF9QPaEEH50h7Bf00e
         JMjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9oTiHpy4U9hpuEoZ1bHLE3an0CPZV8uSlMFgo0TbpuU=;
        b=KgM3b3YCSctIVC/ERFdheLyKj8shundlQ1gUllrEjTw4h6mifOoRhWZ/8GOV4nBjta
         B493siWgY4hdVaDyC/UuXezBbF7xDj01C6lAQwYNtKPZF5OUPNpFVHhPpPtEM5vZ/dk7
         g342tHwSvSUiUkV+iWFNvOy48vpxkUgavKjbueXUGCrBk3cuoq32aNjVdMmQIaMZtyPR
         axiEcRsYKGduBjvypQmDxXppvZ18atRyWkwdjEKF5W8RYPj0xNMe5joba1j3HOB14mPj
         ME+x4PTnt5ls8I82MOrv4fZIVKgv5/o3YzaL3KcimyxvO60rG2t5e4dsc9s4znTyrM2o
         gRlQ==
X-Gm-Message-State: AOAM533TbYv3SGy2+y2q8lRTQZlpVXKEkXKS4imOqVBsS+sf31wbWIkv
        i/UGIs8hrTOHx5du4THExLI=
X-Google-Smtp-Source: ABdhPJzeYGQS5hPUV4z42ynNqaoBCVB51n8rIisfxlGX4uJ2DssnzxPpvdwvwZtBmfB9IW2PyUY+pQ==
X-Received: by 2002:a1c:6a07:: with SMTP id f7mr13591709wmc.7.1633863229713;
        Sun, 10 Oct 2021 03:53:49 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id k6sm4890691wri.83.2021.10.10.03.53.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Oct 2021 03:53:49 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH] ctime.3: mktime() may modify tm_hour due to tm_isdst
Date:   Sun, 10 Oct 2021 12:52:46 +0200
Message-Id: <20211010105245.53896-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

If the input DST value is the opposite of the one that mktime()
uses, which comes from the current system timezone (see tzset(3)),
mktime() will modify the hour (and if it's in a day limit, it may
carry up to modify other fields) to normalize the time to the
correct DST.

If a user wants to avoid this, it should use UTC time, which never
has DST.  For that, setenv("TZ", "", 1); sets UTC time for the
program.  After that, the program should specify that DST is not
in effect, by setting tm_isdst to 0 (or let the system guess it
with -1), since setting tm_isdst to a positive value will result
in an error, (probably) due to mktime() considering that it is
invalid to have DST enabled for UTC times.

Cc: Paul Eggert <eggert@cs.ucla.edu>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/ctime.3 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man3/ctime.3 b/man3/ctime.3
index 0e2068a09..7a5714be8 100644
--- a/man3/ctime.3
+++ b/man3/ctime.3
@@ -260,6 +260,13 @@ normalized (so that, for example, 40 October is changed into 9 November);
 is set (regardless of its initial value)
 to a positive value or to 0, respectively,
 to indicate whether DST is or is not in effect at the specified time.
+If the initial value of
+.I tm_isdst
+is inconsistent with the one set by
+.BR mktime (),
+.I tm_hour
+(and possibly other fields)
+will be modified to normalize the time to the correct DST.
 Calling
 .BR mktime ()
 also sets the external variable \fItzname\fP with
-- 
2.33.0

