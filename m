Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 76B95293E8C
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 16:23:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408027AbgJTOXe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 10:23:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407989AbgJTOXe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 10:23:34 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8CC1C0613CE
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:32 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id c16so2126272wmd.2
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lP/FsuDDH96aMTRTyc8ODTQex6+vb7BeI4gGK26Xg24=;
        b=un5+9E9R7aAZrmCd7lU72lTW+eEx6yk5O1bNR68JIHUkvoXZKctwAaoT3an7R09XCJ
         ejL9DmbMHtHVCOb9EOMuIWptB0cuCjbviD3g9Mkas2wsm6jO6yFlblVO3f/GPNOxWyEj
         zp7L/II/jt3JvSln1y9FwnBvAFpdJ8Hipeb5dFxveXCjVhIwdo6ov0PdAn/JQuXn5XYD
         gxXxGyxRgydwOhGRVb1B2voQDjYK235O7vknJ2p0ySE1z4+rxpAzW4hMwgRLLUjEJA0S
         spYNUkw0Fr6K2Zq0WKhnzX1rz3d2UtB2nSFn37NK+nYOApGnPDgF2K/qvoieuCPn0sXj
         jskw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lP/FsuDDH96aMTRTyc8ODTQex6+vb7BeI4gGK26Xg24=;
        b=OZ49Ty8e5+DxOY7ijmfrNWsKVK4xVD0Pri0YaOL1U+Al7EUcxoYeKcMKft9CLDSDag
         PhgI29kFLSHJPo4Jxe+7dvq2BwiVtEFf4iHZgpctmlC4Z79iR0/gj6pZnmDgIoNxYGKk
         dVXPmZiMU7DtngHZU1vMYDskjViE0zha951VhlRhWm46A9UDNIKNIzC2VfP9zxwkzn89
         fsLDKMRya5AJBrUzC2EhmCsu1RV8Ta0BUn3m0b94Mq3n0i1j6CgH52iH/moVmpP4Zhvi
         iJ4nn9Vse9FgkaUG2cn5MDwO55IyXxQpizoK35okaBn2PEsbyQacKTWVrNctkHbYhDK2
         4hJA==
X-Gm-Message-State: AOAM532hKllNFVpL95kLIbgKT+i+V7f9Q7picd7+NLadgBntcLuFJ6Rd
        /qkffgY/zODT+YLm3K9eVDs=
X-Google-Smtp-Source: ABdhPJw84VyWAgkE3WZnq7g1I8Y1MrMdQKibYlj/AWrvdBJQbtmw5X2tDxi8TpkaISNAbjFpzUqtjQ==
X-Received: by 2002:a1c:7c09:: with SMTP id x9mr3259504wmc.181.1603203811390;
        Tue, 20 Oct 2020 07:23:31 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s19sm3422153wmc.0.2020.10.20.07.23.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:23:30 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 10/22] list.3: DESCRIPTION: Remove unrelated code to adapt to this page
Date:   Tue, 20 Oct 2020 16:21:35 +0200
Message-Id: <20201020142146.61837-11-colomar.6.4.3@gmail.com>
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
 man3/list.3 | 16 ++--------------
 1 file changed, 2 insertions(+), 14 deletions(-)

diff --git a/man3/list.3 b/man3/list.3
index 70f32a384..36d259a63 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -94,26 +94,14 @@ In the macro definitions,
 .Fa TYPE
 is the name of a user defined structure,
 that must contain a field of type
-.Li SLIST_ENTRY ,
-.Li STAILQ_ENTRY ,
 .Li LIST_ENTRY ,
-.Li TAILQ_ENTRY ,
-or
-.Li CIRCLEQ_ENTRY ,
 named
 .Fa NAME .
 The argument
 .Fa HEADNAME
 is the name of a user defined structure that must be declared
-using the macros
-.Li SLIST_HEAD ,
-.Li STAILQ_HEAD ,
-.Li LIST_HEAD ,
-.Li TAILQ_HEAD ,
-or
-.Li CIRCLEQ_HEAD .
-See the examples below for further explanation of how these
-macros are used.
+using the macro
+.Fa LIST_HEAD .
 .SH RETURN VALUE
 .SH CONFORMING TO
 .SH BUGS
-- 
2.28.0

