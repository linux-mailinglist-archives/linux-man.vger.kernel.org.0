Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA64435355B
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:41:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236747AbhDCTl5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:41:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236736AbhDCTl5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:41:57 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5395DC0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:41:53 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id r14-20020a05600c35ceb029010fe0f81519so2297606wmq.0
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=q7IOiVrQjHRTRmbdVaEa4LKpd5wHcjiuSaqgIJt7lkc=;
        b=f7Wx+mRyAoi0DwNgBnOydOXtQekLgzData8C17UBoKVU5tiuJAWEItAWB/r8aBIWfc
         i7HNGfutOZj6QmMLRPhA2nW9UwVSg1g11aUlW7F8hgTTbOiKoIdDJ6JFI/oTok1tpEaW
         bYzaMJNWFXNa9YWdd8zQiHz/w3hOR7sGZaBh7b9iE8BqoZeLF0MUBNQgXPFYKVvd186N
         /dvt6ET8LPh6+igrrmBGkdgIZJ1IC+sHtDwlDvOxCQvkhMUi9S4nfi+luA7XmGMPe/HK
         MGgVGOVFiDSH7m/GwOxPj3fqWUzkO7x0yBm1Z0NfVKjt57KR+Amylgpx5ig8/VcAQmzb
         HIBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=q7IOiVrQjHRTRmbdVaEa4LKpd5wHcjiuSaqgIJt7lkc=;
        b=Fa8lywsfziLrICNZfwoT1RZg1mSdl/2tW2HQfYNz5mxiktHH4Oeq9dsUZb/O4gorNY
         dcnnu2PY0jUeGkGpAqi01OKo+tFDITYcW0jL3azT3f3QQFS9WF3qwFf9vEjo4k+79CS4
         zADu2fY5IeKNACE2dL1St0/fY9k2VUjqwYYgm/GpvQbGq0Kd5hzfWfqxe6AnoB1eM0mS
         x7mMur+qGDNqbpJmeOtzW7OYKZZaAboW9GG6uqHZfwMhU6V4hIOGE9N16Kmhh8XEZLpC
         OeR98u9hr0kymvtmfb16UT1OovMHPBqoquu6Dw5Z73B3kWKPDqdyuhou7lx/6zhTSRHK
         xYGA==
X-Gm-Message-State: AOAM531enO3okmZMP/lhNxj06b2/nKRpYgvPhx4/uerE3MBmsKLuOnTI
        PKsyzhudIPXLdznUeuzhrn3PZUX+kU0=
X-Google-Smtp-Source: ABdhPJxhYsS2siJ8/778XjpVtskjH0W/ZgqP1J8AoHyNRKY2PtmMuw6TcQv3zmGxgyNPleh+wWiP9A==
X-Received: by 2002:a1c:4b0e:: with SMTP id y14mr6638380wma.26.1617478912142;
        Sat, 03 Apr 2021 12:41:52 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.41.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:41:51 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 06/35] add_key.2: Remove unused include
Date:   Sat,  3 Apr 2021 21:39:58 +0200
Message-Id: <20210403194026.102818-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

<sys/types.h> was only needed for size_t, AFAIK.  That is already
(and more precisely) documented in system_data_types(7).  Let's
remove it here, as it's not really needed for calling add_key().

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/add_key.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/add_key.2 b/man2/add_key.2
index f3d803adf..dca44b8e7 100644
--- a/man2/add_key.2
+++ b/man2/add_key.2
@@ -14,7 +14,6 @@
 add_key \- add a key to the kernel's key management facility
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <keyutils.h>
 .PP
 .BI "key_serial_t add_key(const char *" type ", const char *" description ,
-- 
2.31.0

