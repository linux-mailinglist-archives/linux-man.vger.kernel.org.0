Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE791443551
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234996AbhKBSSC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:18:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234868AbhKBSSB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:18:01 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DD70C061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:26 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id y84-20020a1c7d57000000b00330cb84834fso2696895wmc.2
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Orsi3hbpkLeVwEw4n4Mr/YLKjzxNiOr6vwzaXZAhWyA=;
        b=KA30KFt1iXL4RFl8qVkD7kGx9lxS4RhRKAywufLJpnELq5W/scMZSJLb2R8zRUlLhO
         vnNdU18o04fJrPcpM86xPVw65t3SQUnl7Mml5817LI+C4V2J+sZBbWNoNidgfSEz0H9Q
         ++KU23aQLT4qH4bLOwhzj41dNcZsw/do0PKscvFMbH/rsMTu4aHXzRCaOz0Ldi/wQqYF
         LMltLkWbodQNJN9jZ/UdfGuHY6skIJgQm+Bf2DDw5pjq1LIW6pGsC1c0MrxbTINdI0FB
         yPQsWhF8rTiLwV5I0ROPMmaf5yFqv8MoKU3b/0QOkRGwCOOOxbw0r/TbzteeuRu1rde8
         S7nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Orsi3hbpkLeVwEw4n4Mr/YLKjzxNiOr6vwzaXZAhWyA=;
        b=BwoLAKJdgxVgbTrd54lXYW3s3iqM3g04BvUbtIriVIIHGnk4+hc3z4yMB1ySx7iEqT
         kGmOpLBICWFKUtyixg2hUU2O3V21lZ1qJFVavL9vgKrreKk35YgijpFAGY/4Z2tmQE9J
         Vd+UU11itQV5HBmbpARIuB6x+9tnchwKOA3B3/d1MJnehNhS6NbTtBBDI6W7xmDJYdzZ
         wjcBGNt1wS75RvCj4H2vTurBb1A4wAczKTgdUuaMyizpyO2oEKUIJbbteVKt9AG4zjQW
         I3uuFd4riKrJzt3ZCyCS/MPl4p/n++hFHADurCQcswTNi3NBNbubo92PMptXwg2xydjk
         9PKA==
X-Gm-Message-State: AOAM530jUXT5ve6PYBRTALAoGC384rWEuxgPdynXNgu7zct2goK3r62m
        SPlm0DtuB9nsCXgWtDy9KAeWvEiAlZY=
X-Google-Smtp-Source: ABdhPJwihVvkJPaXTc+JXwg0ZRrP+AcdhH467Op8hxON6r8Lzhjva31dWIZivKscCD069ARdf21fiA==
X-Received: by 2002:a1c:a592:: with SMTP id o140mr8806689wme.10.1635876925178;
        Tue, 02 Nov 2021 11:15:25 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:24 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 21/37] fenv_t.3, system_data_types.7: Move fexcept_t to fenv_t.3
Date:   Tue,  2 Nov 2021 19:14:38 +0100
Message-Id: <20211102181454.280919-22-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102181454.280919-1-alx.manpages@gmail.com>
References: <20211102181454.280919-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/fenv_t.3            | 13 ++++++++++---
 man3/fexcept_t.3         |  2 +-
 man7/system_data_types.7 | 16 ----------------
 3 files changed, 11 insertions(+), 20 deletions(-)

diff --git a/man3/fenv_t.3 b/man3/fenv_t.3
index 757645742..d7c3b7492 100644
--- a/man3/fenv_t.3
+++ b/man3/fenv_t.3
@@ -1,15 +1,22 @@
 .TH FENV_T 3 2021-11-02 Linux "Linux Programmer's Manual"
 .SH NAME
-fenv_t \- floating-point environment
+fenv_t, fexcept_t \- floating-point environment
 .SH SYNOPSIS
 .nf
 .B #include <fenv.h>
 .PP
 .BR typedef " /* ... */ " fenv_t;
+.BR typedef " /* ... */ " fexcept_t;
 .fi
 .SH DESCRIPTION
-This type represents the entire floating-point environment,
-including control modes and status flags; for further details, see
+.I fenv_t
+represents the entire floating-point environment,
+including control modes and status flags.
+.PP
+.I fexcept_t
+represents the floating-point status flags collectively.
+.PP
+For further details see
 .BR fenv (3).
 .SH CONFORMING TO
 C99 and later; POSIX.1-2001 and later.
diff --git a/man3/fexcept_t.3 b/man3/fexcept_t.3
index db50c0f09..0e5e9dded 100644
--- a/man3/fexcept_t.3
+++ b/man3/fexcept_t.3
@@ -1 +1 @@
-.so man7/system_data_types.7
+.so man3/fenv_t.3
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 1c76d8e7a..90b6f743e 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -62,22 +62,6 @@ system_data_types \- overview of system data types
 .\"------------------------------------- fd_set -----------------------/
 .\"------------------------------------- fenv_t -----------------------/
 .\"------------------------------------- fexcept_t --------------------/
-.TP
-.I fexcept_t
-.RS
-.IR Include :
-.IR <fenv.h> .
-.PP
-This type represents the floating-point status flags collectively;
-for further details see
-.BR fenv (3).
-.PP
-.IR "Conforming to" :
-C99 and later; POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-.BR fenv (3)
-.RE
 .\"------------------------------------- FILE -------------------------/
 .TP
 .I FILE
-- 
2.33.1

