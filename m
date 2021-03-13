Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 635C533A056
	for <lists+linux-man@lfdr.de>; Sat, 13 Mar 2021 20:27:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234418AbhCMT02 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Mar 2021 14:26:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233635AbhCMTZw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Mar 2021 14:25:52 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02C62C061762;
        Sat, 13 Mar 2021 11:25:51 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id r10-20020a05600c35cab029010c946c95easo17093510wmq.4;
        Sat, 13 Mar 2021 11:25:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BYdTpAPv2ucDx5jpmDXZtAt9jTO208SebGegbuoICkg=;
        b=gtg59Hdlglv+wdDa5olPrAlmIwJrg2QtskYp5hzJYG6er7p2qUmATUFPRW7vADQo4z
         KNAqCJQFao1acgGRDzuYCJaXP7mhoWFPCFIiAmozWcAc2BzG9Edfhq9hM4M0PSXcmJFo
         f8Io6GrUxU11i/f/uI/qMi4pj4zWSITc5JEhsFIjkPuEaFCxmxaY09FHVZtNLw/hSSBz
         w9ma3RP7DEoRNYhoVvHS12xXXumgel569dn5znUQ/G3wa500sdNm97sfCO8umPUTIU+m
         Ba8tBTt19oe/tvfamE1PewJb/ftevhJfVx9Cenrec0c1LAQlsVoEQ7ETtZ2SrFMbjx5B
         KF+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BYdTpAPv2ucDx5jpmDXZtAt9jTO208SebGegbuoICkg=;
        b=pyMMqZVXHQ+TIzhqFthBBOy40B1O8jfif4Ko8vC+GLiz5YJmzDNu+hCp4CrViivN3W
         4H7VCkwEoM5QvUGekoxESixHcd7QfjOzi9ivBjI3m0tK4MmccnnbaaHohK3GWNiNLV/p
         i4kqORy7yzUuzSEo/cVI1TwpeUXwlDGr2aOJxXFgszyCf76yWnC7dKdCQA2yGTZEItfb
         6E6LLMAHvBfARvELqMprAjxCp/7qpsZOiFL01AAShuqi7e2AFK43QwJ0iIEOcRptpijc
         NTjRZJoKb2Pb87es+lRDbME9jNyxF1mOPRiMftecDy/WuurVPqP8/5dEAk/z6DbxdMez
         Z8GA==
X-Gm-Message-State: AOAM530tQNjzr3jdP5cjD0vgS4IJrm48HbFH1smCgciiuxvp8eJg/OU7
        x5BSlIVW9qFIJ/eTWEA7gwI=
X-Google-Smtp-Source: ABdhPJwdlVOcLlmf6hpsOl81qlC8u8+JLLHp9iNG6Vo4Z+UWO0vvf8fId7ak+3iqrU9IRg8BhorLRQ==
X-Received: by 2002:a05:600c:290b:: with SMTP id i11mr19245214wmd.129.1615663549732;
        Sat, 13 Mar 2021 11:25:49 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id j136sm7670964wmj.35.2021.03.13.11.25.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 11:25:49 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: [RFC v3 01/17] access.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 13 Mar 2021 20:25:11 +0100
Message-Id: <20210313192526.350200-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210214133907.157320-1-alx.manpages@gmail.com>
References: <20210214133907.157320-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/access.2 | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/man2/access.2 b/man2/access.2
index 77ff2bd99..b662d07cf 100644
--- a/man2/access.2
+++ b/man2/access.2
@@ -49,15 +49,20 @@ access, faccessat, faccessat2 \- check user's permissions for a file
 .PP
 .BI "int access(const char *" pathname ", int " mode );
 .PP
-.BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
+.BR "#include <fcntl.h>" "            /* Definition of " AT_* " constants */"
 .B #include <unistd.h>
 .PP
 .BI "int faccessat(int " dirfd ", const char *" pathname ", int " \
 mode ", int " flags );
                 /* But see C library/kernel differences, below */
 .PP
-.BI "int faccessat2(int " dirfd ", const char *" pathname ", int " \
-mode ", int " flags );
+.BR "#include <fcntl.h>" "            /* Definition of " AT_* " constants */"
+.BR "#include <sys/syscall.h>" "      /* For " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "int syscall(SYS_faccessat2,"
+.BI "            int " dirfd ", const char *" pathname ", int " mode \
+", int " flags );
 .fi
 .PP
 .RS -4
-- 
2.30.2

