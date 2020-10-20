Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0AF6D293E8B
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 16:23:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408029AbgJTOXe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 10:23:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407989AbgJTOXe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 10:23:34 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C18E3C061755
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:33 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id t9so2381162wrq.11
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qBm/ZsIoaiz1dxV2J1/u99PDeY4Rj3aAFqbDCREEpA0=;
        b=g9QVWZGRbOeL3+2Eo1x5Kw2hqiX3/JNN1jWbynYm3YS0jy0AeL6Bx0lhZiCUp6e2W7
         YNDRzz/rK3IZJct3K0dMbcw9o7Nzd8QiU19WYDrhG1BNlz+Wjesj8LF7osMyHNwXVyGE
         fCwBgJIsn+eGSzxinzoV/wzYKKYsCuCv8XIdfE0pjC2OUYwk3ED0Ca1TL2MjFNMY7uBF
         /uoMEFRjE21szB7A5RMIaDxjXSOx+E+Bt+5MpEOfKu0GPJ9fFXLp1Xt+giE7lJ/cH2jf
         Dfm0Bdh1/JCK0s+wBXtd3rynvckLgAyrT7dTMS/VdAdQy2P+tv4WAJgz/y0F320+pV7U
         Ondg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qBm/ZsIoaiz1dxV2J1/u99PDeY4Rj3aAFqbDCREEpA0=;
        b=UUz107ACMufrKXCLq9AgQRPo7Jvb+FcMCc3TbNyvEXRn2LyPXLyIqiF2evu9UaJJuF
         +WVlgfDcEk/0SBY+x44JopbOxEoBc5w7XSmiBRaqsuotMYO8+jBseP4ezJNGVAPTG2pF
         dPKdt8c7D2iJ/94vIVEgT0DznMGdkMIi0fGK5QQBgoH5b6vpXzx0yiEOfC4f+hZdytxT
         ryXl491E4OV82sz0cpiATKOiekHVrV6OutXnHqjKe4xrbamw1V40+73RLxgT9qC5XTtc
         GlC/J6k23GqVKF+kOHUYFbsSeSpz+JLSkLKLJZWcMxKRMCYro9N/gb0KjPYGlqPRk60c
         XQ9Q==
X-Gm-Message-State: AOAM531qAoUZHytR7n/tiSP4LPsiYC4vZbl8r8xXBjZ+ZURV4fygwKTC
        SBXItZQghfjdhL7yDrVcxWk=
X-Google-Smtp-Source: ABdhPJxf/LN8565qmVm8r7109jdbLavnUBOIOXW01oCbjJVMgBUl2Y6lAhcPhiE71GO0Tk6+hwFjyg==
X-Received: by 2002:adf:f643:: with SMTP id x3mr4091632wrp.180.1603203812485;
        Tue, 20 Oct 2020 07:23:32 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s19sm3422153wmc.0.2020.10.20.07.23.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:23:31 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 11/22] list.3: DESCRIPTION: ffix: Use man markup
Date:   Tue, 20 Oct 2020 16:21:36 +0200
Message-Id: <20201020142146.61837-12-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
References: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/list.3 | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/man3/list.3 b/man3/list.3
index 36d259a63..39c1d4b4d 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -89,19 +89,19 @@ LIST_REMOVE
 .fi
 .SH DESCRIPTION
 These macros define and operate on doubly-linked lists.
-.Pp
+.PP
 In the macro definitions,
-.Fa TYPE
+.I TYPE
 is the name of a user defined structure,
 that must contain a field of type
-.Li LIST_ENTRY ,
+.IR LIST_ENTRY ,
 named
-.Fa NAME .
+.IR NAME .
 The argument
-.Fa HEADNAME
+.IR HEADNAME
 is the name of a user defined structure that must be declared
 using the macro
-.Fa LIST_HEAD .
+.BR LIST_HEAD ().
 .SH RETURN VALUE
 .SH CONFORMING TO
 .SH BUGS
-- 
2.28.0

