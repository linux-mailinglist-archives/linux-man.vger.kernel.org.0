Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11E9633092B
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 09:10:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231300AbhCHIKT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 03:10:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231392AbhCHIKI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 03:10:08 -0500
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A28FC06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 00:10:08 -0800 (PST)
Received: by mail-pf1-x430.google.com with SMTP id t85so1370369pfc.13
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 00:10:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version;
        bh=D0+vHgIaQPuTeJcujt5tbtTWfRCONE1ZEanQevcfT5I=;
        b=uT2i2ncMPhTZZOoGWwuzAPifsSwpAjn19QbcY5bPl2DQBaVXz/Uru+vtKqA4qBeNYx
         XiX2bNqs87J2tTe8I3yxLVJ7yLKN4UM5KZObEwgH79v+vIztGpC/hzO0oxpQJzs174Kq
         grI2vZzOrMV3pxFXFXrpLwk+HWbeGtQntUa39QuiQJHjCG3qwN2DNWLUgiL352PMYyK1
         rKry8OLbs+C4BSL+6T9keNyvkXW5NSVvmvnuqytxTkhV/eVf0QHxz5Snd53jTDhkJOLH
         ghbwIddmV1YLNMeZ3L0rRyyAFOel5vNK4YrWsmFp4llzPFDWZPUigZ6mVn3vCaTrPcgW
         RZzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version;
        bh=D0+vHgIaQPuTeJcujt5tbtTWfRCONE1ZEanQevcfT5I=;
        b=N5XzH/gPpKKzii5QF5JzMEJwWNogtdiAZSTSD9izm7aJ5UhQSZ5MWmD4M/0JSc5mpm
         Ow+26WdCYFnE+VzHxuYRZZ9HmZjvtfE4n++6nGmSvnOikxro96MY9MxUJwyQOUFkW/P9
         2pXcpIy1VAyQnACfeNEklIJhO9hNJrYMTy3art84Jvgbq3mK2NhunVVKEBV56G6VsXoZ
         v4fQ/xOQakTlEjLjrjYzLC0N+c1m68209ogiopFspPlY7xe6vYPXrDZI92aQVuySRtfq
         ClC/kCUaPImOT5NUI/5JRDGutOHPCwANrjZth+laOKzWChIwtG36ugNFId/CeJSB58sH
         ShaQ==
X-Gm-Message-State: AOAM532A68gahCaEDd3CoMjzkDdrz66q6xXYy8idFc8z7Iu2bhXBLuTb
        UGpC15lx4ww2k7gX07tknC3MOSnlZhE=
X-Google-Smtp-Source: ABdhPJyUqnc6LlgN5gBjAE9QCfjvlRRTLVkQh6oracLnYMEZ5zZID8+9cUXRpQzsnPm6ftzW7sHCnQ==
X-Received: by 2002:a63:4b0a:: with SMTP id y10mr19202305pga.144.1615191007395;
        Mon, 08 Mar 2021 00:10:07 -0800 (PST)
Received: from localhost ([43.230.64.83])
        by smtp.gmail.com with ESMTPSA id i1sm9383158pfo.160.2021.03.08.00.10.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 00:10:07 -0800 (PST)
From:   Utkarsh Singh <utkarsh190601@gmail.com>
To:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com
Subject: [patch] Add overall structure of format string for printf(3)
Date:   Mon, 08 Mar 2021 13:42:10 +0530
Message-ID: <877dmi6p45.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

Thanks for creating and maintaining Linux man-pages project.

Can we add a small syntax structure for format string in printf(3)
manual.  I personally find if easier to remember and scan.  This has
been taken from OpenBSD printf(3) manual.

diff --git a/man3/printf.3 b/man3/printf.3
index fa6564426..69ff29316 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -193,6 +193,13 @@ an optional
 and an optional
 .IR "length modifier" .
 .PP
+Overall syntax of format string is:
+.PP
+.in +4n
+.EX
+%[$][flags][width][.precision][length modifier]conversion
+.EE
+.PP
 The arguments must correspond properly (after type promotion) with the
 conversion specifier.
 By default, the arguments are used in the order
-- 
Utkarsh Singh
