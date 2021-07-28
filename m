Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC5F53D969A
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231571AbhG1UUo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231398AbhG1UUn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:43 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3371C061765
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:40 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id u15so2233903wmj.1
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PC7NxOZobGf0go+lfZECKbVukKdgUUF8cNhTRsh23hc=;
        b=eI19XdFfXXfAByS2O0M0GZ790YivQ/4Sr6CEuT9DOOob45e2+3d3UHTYi+M9mliXUN
         7ACpbMRO+QqvG/5stj62Rhh+1yh5l07v5uuqToP5BOAAwu37Y3iYznRA64LA7yMb4j8I
         eICJZ6kK6Nv21wRar35w/SgZFaE9BgHdFtPQZzfo0fw0PIrRbFiJo7hdn2pkAdu2Zu+b
         YGjos1v2R6aaYkgVSkHKG/fcpU77Y5ou5LzVXpDsk5qku943qCNin6d+EqtP5//V8z6f
         L3EA7ZVbUkKFoqfMC+mQec1MHOVUsDD7GU9sJRtUfjAwLc+XNY+nSjQiRAszlvV0O6Ca
         /DzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PC7NxOZobGf0go+lfZECKbVukKdgUUF8cNhTRsh23hc=;
        b=m0MeuXuG5/Bzbo8zsmrtCjw/YLQFTtxAwH1YA0PARbMyffUplJsuiaZFLMOUnPEQd1
         XJJ9Vi9cGXPQndPwDK09j48OjKK5g/M2jxZot06GlzIe3nFrhO2jc0gWh51R4tAebZPC
         gK7o/DGNAF9y8p31wLKK4i4vvQvtoX3atF8oDqNeVmkCgGwWvUgzdo4M7jjsdzm52Jbm
         UgHMGZHh1wzwOtinGwYNwNmxvkob1WKDgEXV2M2BpCG4KwMPXn7ooLBOexkTCnh3pPY0
         tZRJlJHFHuUM/h2lVEf/tDu2bChfwciXFQyfyKj8seoyYEvmVFW+P5JebeoM6IUdXkFm
         rLVA==
X-Gm-Message-State: AOAM533n0HyIkla8Vj+inpuExL6NO7rbDN1LI3X2zISFoVzyARSzYZV+
        Pj08ONStShb1rGhucSFhnIhPe7DH5j0=
X-Google-Smtp-Source: ABdhPJyf4CCh4dJgDXHMR5r8CtAJQL5dYSrRg6eb1u69EyGw2+Z4bGxgzRnaNRV9ok1jl40ibLve5A==
X-Received: by 2002:a1c:1b55:: with SMTP id b82mr3043146wmb.121.1627503639486;
        Wed, 28 Jul 2021 13:20:39 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:39 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Stefan Kanthak <stefan.kanthak@nexgo.de>
Subject: [PATCH 27/32] strstr.3: Add special case for empty needle
Date:   Wed, 28 Jul 2021 22:20:03 +0200
Message-Id: <20210728202008.3158-28-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reported-by: Stefan Kanthak <stefan.kanthak@nexgo.de>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/strstr.3 | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man3/strstr.3 b/man3/strstr.3
index e085409c2..41ee87489 100644
--- a/man3/strstr.3
+++ b/man3/strstr.3
@@ -61,6 +61,14 @@ but ignores the case of both arguments.
 .SH RETURN VALUE
 These functions return a pointer to the beginning of the
 located substring, or NULL if the substring is not found.
+.PP
+Note the special case:
+If
+.I needle
+is the empty string,
+the return value is always
+.I haystack
+itself.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
-- 
2.32.0

