Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA277407940
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232333AbhIKQCm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:02:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230489AbhIKQCm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:02:42 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75B6AC061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:29 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id x6so7324067wrv.13
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eBbn/AZPM0ZAef88JfeHMs8L636bQ3E4uKaGDPPkOF8=;
        b=h31vtyKuHwZVWejQwxHGzajhVS0Lbrx3klwFKfRWLtO511wVSBlcfRLF3xCdEjNROK
         rfltEdEnFwXHsKS5M6hV4MgdWYRPY0hnAixbKtMaMQm8lp+PUGL0jDVqHWNE0s3vBLfO
         5mwTCqFzjOdTIqIqPfGZ+EbSEyxgoU9ZK062rplYnfJaMEli7immQan3OnhuIsC2wXIB
         m5fupxKA2RC50UNpMNQ4K101ZLmdKJqu8O8qiCf7vN4OH+mZgvjlO2imcKwYyYuuFy9I
         EnGxCS3Jr18AQfVB8UixhqcU5ERPtoH2gttyyUot5EZZCHHlFHv5Qii9grfy1O7hTzyL
         JOOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eBbn/AZPM0ZAef88JfeHMs8L636bQ3E4uKaGDPPkOF8=;
        b=H7/lKElBrw+9Kw0ANB+zQerPc1rEUaYE9lSMz4TOpDBqpaRyU2apDgcfPL5tVlly55
         2f3flnlrAkTOcw1kXUxYYTtBNbgKTo4hwoL0OT3rPjRRSfgdB2D9ee3oi6bzC+HtL3ZK
         /ZevArHAZ6n+NPnhrHXvvVxZGdrcYl8hRGzrLnRBZoBQxTabhUZ2i2Bnxg6gGpAIt1Bd
         1H8i3O5vweWKq3PkqiqvBV1PfhRir4PMiOs5n/95U9UVSTy413wkKsoqo7lzOtwggY4Z
         JR9xYiafMNBrpxPmZnYLxOxgyrrMXfzICNUM5iigpnmVngjQkGJyvmxGLCG0nC5XObzA
         WLPQ==
X-Gm-Message-State: AOAM53128X42A0UgoWTK+JnmHcjVvYXJgUIV/UCt+kxxST3WaiIWGYj4
        L6Qg0AyyZtW7do/D+PvzCQ8=
X-Google-Smtp-Source: ABdhPJwTDGm0Uw3ylB27zAqMznVFwWwFuxbN0QaN9TmoAFHun+dZN2HIVqE9+8mlbRQvpBOzM0tEGQ==
X-Received: by 2002:a5d:410b:: with SMTP id l11mr3811229wrp.76.1631376088075;
        Sat, 11 Sep 2021 09:01:28 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:27 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 01/45] _exit.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:34 +0200
Message-Id: <20210911160117.552617-2-alx.manpages@gmail.com>
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
 man2/_exit.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/_exit.2 b/man2/_exit.2
index 4b3cfd7ac..9a0e9bdd5 100644
--- a/man2/_exit.2
+++ b/man2/_exit.2
@@ -29,6 +29,9 @@
 .TH _EXIT 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 _exit, _Exit \- terminate the calling process
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <unistd.h>
-- 
2.33.0

