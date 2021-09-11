Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89D94407945
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232924AbhIKQCr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:02:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232708AbhIKQCr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:02:47 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50E42C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:34 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id u19-20020a7bc053000000b002f8d045b2caso3466026wmc.1
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Fe60+qStguhIpOoHOYp9RE0aQabQdcQaC3Tu5wYwwIU=;
        b=mB8+XtPsZcoSY81FF7xAP++ENLtVnjUX/8YU0G+EKkJB4h2f19bNBkJrSQzgeK1YNh
         6BQqnOIHccq5Xa4Rtm8C9K18v6I0+oNsedRgo55aKp4KzUrdkuPsu2ymTqwa1kwEi/f/
         VZW83OGGL5GHgYMP7SJWFI35sC5SgrUAaGX7yrePLlrIpEZz9ix1NFtr05ahcjZdoyc5
         wWQYWPWnFNS+yMxjBiaT5XqkGSo8N4iF38VzEOCqtPFXUkuIt5+O0Vy6CXb7u+fjCP1V
         Tvoit01b4d/a2er+w9Hs30GZNcjwqPqHEsfDjts0PTWVjqg9snSG68QRkhzEVaJmCmPe
         rnHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Fe60+qStguhIpOoHOYp9RE0aQabQdcQaC3Tu5wYwwIU=;
        b=dP3U1eMbTBZj7uzIDdx8wFYBR+9ph/918hYTbmkhWx/3aRyNqSxtONuRlm1FpogJr/
         PDl6IjoARazErTtRv/HClk/p8AiLLwwxk5OXniJkPxIfkVOCgL8XG0bc05LnrbXmaGK2
         PyeO34zs3d+YK7NZxjGdfSjDW98PEaDY3Gwsa67Eq369SJTCpCwyfEnO8iEeLiWUPPJR
         fCVYGHW//wtwzDml5pK6NOgl+TKYHF9QcvpsDrZWYDicFR4sSRUgTu+bQSeK3dXt08c7
         0u0fmCxhIe7c5SoPgXxJxUvhOKxQ7ULLWxT/6g/neryZxoK8k8Z/WaHZq46Yx4ieVYYs
         +nmg==
X-Gm-Message-State: AOAM531NKJI0xFhLvLh2DQk9QmeFB1C16aKqMinZL0ygCVPLYqE1Iwrz
        fXXIvcw8XfNu9yDDBT3LEIQ=
X-Google-Smtp-Source: ABdhPJwxFPXpF1H+HWr0uauccPYe2QYRxnMpYFbLFtBzxLCdswahX1GzVGYCOmTrV80fixXVRB5iVw==
X-Received: by 2002:a7b:c35a:: with SMTP id l26mr3257602wmj.124.1631376092955;
        Sat, 11 Sep 2021 09:01:32 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:32 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 06/45] wait4.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:39 +0200
Message-Id: <20210911160117.552617-7-alx.manpages@gmail.com>
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
 man2/wait4.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/wait4.2 b/man2/wait4.2
index 3bd60367e..12d55a556 100644
--- a/man2/wait4.2
+++ b/man2/wait4.2
@@ -33,6 +33,9 @@
 .TH WAIT4 2  2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 wait3, wait4 \- wait for process to change state, BSD style
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <sys/wait.h>
-- 
2.33.0

