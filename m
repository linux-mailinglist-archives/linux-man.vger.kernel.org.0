Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4ED8443550
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234995AbhKBSSB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:18:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234868AbhKBSSA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:18:00 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E450C061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:25 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id z200so50397wmc.1
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TI42w8HMBw5Dmb1hs45y26EYMlaFoy+NNOXbw7d5Ifc=;
        b=R4SE1pRCZopUDqdDtZhwaPTM2wroAavASxG4NEU1bTO55YukIv6ewZsEgrWtAGQ615
         UdjYDkfN0LO1FscIl6bAf0/fqoBsRoNsQh0KzAfh1YCiSesguZXfMzfyprhqgud3/H8+
         2rAYKWnM0Ci2WK2q5JtJ9HFrc4A+w3LQ3Pctp7aZk2RNA9ZQEIsWxIJARlsMKOce/hGm
         MMn8K0Q7/v1XxoZXrjQyYWGtcGQWi9qaOgaQaPIMrENT2GYgdBAQ6W5BuVhW46jWE15U
         DVJeEeIcnnFsbFZflyEBwNHcxPNLDBnjuRj5hptUtmvRwb1RYYaA1aZPt8BqaaB43kDh
         gNcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TI42w8HMBw5Dmb1hs45y26EYMlaFoy+NNOXbw7d5Ifc=;
        b=jtkqyRTB/AHOkgQYkNiOrLptvVPsUsq/SCruH90hFR0CWWasF339t/zS+GavaeO/n6
         +kpQ2qYlUEZSqYt6VvsRvfhG9Pem/v2Ll9tFOHnE5A6WpbjEXNIVXeRKBKoSIwa5KQi7
         wkW73Ui/dztAeWUt+M/QuAJFNUjv3XDLUY9JaWHsdY0buiT5cx9um1khA/WbVZ/g4V2u
         etX0qqqXwXkAGoT59pZG3qhd9zSfB3kA1Wm8DkTpfXpCqpS4bxKc3yiAuDqnAaqGivVb
         mmlJLC4Uzo8ed1YQu1j5fxup4P3nduSELJzU7fPUJzQTdzu9hutMbBiJOO17crMLHql+
         3vew==
X-Gm-Message-State: AOAM530Wn+WKbDHrt1lhg7jeQufyc8/Xg2t7H+vU00r16yPpVEtSOdcK
        oew6oe1bfzecDxYVZfXsJiE=
X-Google-Smtp-Source: ABdhPJzf9DRUtDSYGm38tAZ+E64426ZLa3X737mtyRhtdCuRGkLg50Wb5HQPvSBXYxdpcc+nkUTobg==
X-Received: by 2002:a7b:ca44:: with SMTP id m4mr8846915wml.100.1635876924110;
        Tue, 02 Nov 2021 11:15:24 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:22 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 20/37] fenv_t.3, system_data_types.7: Move text to a separate page
Date:   Tue,  2 Nov 2021 19:14:37 +0100
Message-Id: <20211102181454.280919-21-alx.manpages@gmail.com>
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
 man3/fenv_t.3            | 18 +++++++++++++++++-
 man7/system_data_types.7 | 16 ----------------
 2 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/man3/fenv_t.3 b/man3/fenv_t.3
index db50c0f09..757645742 100644
--- a/man3/fenv_t.3
+++ b/man3/fenv_t.3
@@ -1 +1,17 @@
-.so man7/system_data_types.7
+.TH FENV_T 3 2021-11-02 Linux "Linux Programmer's Manual"
+.SH NAME
+fenv_t \- floating-point environment
+.SH SYNOPSIS
+.nf
+.B #include <fenv.h>
+.PP
+.BR typedef " /* ... */ " fenv_t;
+.fi
+.SH DESCRIPTION
+This type represents the entire floating-point environment,
+including control modes and status flags; for further details, see
+.BR fenv (3).
+.SH CONFORMING TO
+C99 and later; POSIX.1-2001 and later.
+.SH SEE ALSO
+.BR fenv (3)
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index f004aef0d..1c76d8e7a 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -61,22 +61,6 @@ system_data_types \- overview of system data types
 .\"------------------------------------- double_t ---------------------/
 .\"------------------------------------- fd_set -----------------------/
 .\"------------------------------------- fenv_t -----------------------/
-.TP
-.I fenv_t
-.RS
-.IR Include :
-.IR <fenv.h> .
-.PP
-This type represents the entire floating-point environment,
-including control modes and status flags; for further details, see
-.BR fenv (3).
-.PP
-.IR "Conforming to" :
-C99 and later; POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-.BR fenv (3)
-.RE
 .\"------------------------------------- fexcept_t --------------------/
 .TP
 .I fexcept_t
-- 
2.33.1

