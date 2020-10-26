Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E1EC929992A
	for <lists+linux-man@lfdr.de>; Mon, 26 Oct 2020 22:55:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391250AbgJZVzc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Oct 2020 17:55:32 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:37480 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391249AbgJZVzb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Oct 2020 17:55:31 -0400
Received: by mail-wr1-f67.google.com with SMTP id w1so536804wrm.4
        for <linux-man@vger.kernel.org>; Mon, 26 Oct 2020 14:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aY5z8UgflHR3Vj8xXxvM222Lw7nQfB5vF4JxRTUXtHE=;
        b=VC2yfld9TPtTWGbo+zER1yMYq1secbg5ht7uvDfSzAU3nsVA/1y2V28vOWAfefBum5
         ZvVyQWez0NhinzUYGwdNWxA84zsM7vo+QJNdIEcS3Gwtl3QtewLqJ4spL0uGK9W1WOKY
         dhCuHf01V7ePCp6AX9qm64IZURXZcZp3hfeZAo09Q5D2OtrH36dfPWdz52xpPzIRqCqo
         Ym6k4/fXbzLNAMc4LqdVTuQdN/dPePbExA73hxLSgsWlAUa6/PcqEmv2wlXv9ij3M9hq
         YE9nJxet64bR4yLUi9lLU4sFjrWTlZUg5h2uMLNyQ0xNP3drWGBr6vMiKCTqDfliYYE3
         J2Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aY5z8UgflHR3Vj8xXxvM222Lw7nQfB5vF4JxRTUXtHE=;
        b=PbadcTZWKLQR7kaGHtFEiG3gTcQV6LqmDFDSoiB7jOIV9qCiN5AHfiySMcrl18kPes
         KUXhF0efVMTLbxFyOxPfnvpgUkqqlkdc/iRI16VdA4ZEWwAYzS8hafp+Ey9ccSRr4yQn
         IWbcS0kdVhsMz102RgUDoUsPV+fT1LpWP8Aqw4sCqeVxXseTQ2V0NEhDyWUjDHQfMu/z
         zVURQpBMFVNtNFMhX3zJHYpWtuiOuT93J0DGsoXcb7JQpdsWShGrMEek8b4mqeLzvODk
         lyuMnPjjWjACk/+qddbkjeAb0tE0muh2DbYjM3nnes8lNYHq3TEemAyB8A6lJsL8Yz/m
         uizA==
X-Gm-Message-State: AOAM532VJ9qMAyzk80VpMx/7i9gXTNgCaZvOIzSVb+FLL4YMuwL4KiQq
        SltJczgt/p9/HUgjCpzZ6TI=
X-Google-Smtp-Source: ABdhPJyNZzELsRnxUh//v260D0rmx/aJfHsFuzbQECBgWwgyCr3Z6n2bl1ecP1Qx9w84ALvwu9ZVrw==
X-Received: by 2002:adf:a306:: with SMTP id c6mr19714909wrb.160.1603749329600;
        Mon, 26 Oct 2020 14:55:29 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id y7sm22719162wmg.40.2020.10.26.14.55.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 14:55:28 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 1/2] system_data_types.7: Add 'error_t'
Date:   Mon, 26 Oct 2020 22:55:18 +0100
Message-Id: <20201026215519.23601-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 49ca2d8e1..7aa4eb3a1 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -199,6 +199,39 @@ See also the
 .I float_t
 type in this page.
 .RE
+.\"------------------------------------- error_t ----------------------/
+.TP
+.I error_t
+.RS
+Include:
+.IR <errno.h> .
+Alternatively,
+.IR <argz.h> ,
+or
+.IR <envz.h> .
+.PP
+An integer type
+used for error reporting.
+A value of 0 means success, and nonzero means failure.
+Portable programs should use
+.I int
+instead.
+.PP
+Conforming to:
+Present in glibc.
+It is not standardized by the C language standard nor POSIX.
+.PP
+Notes:
+C11 standardized a similar type as an optional extension:
+.IR errno_t .
+However,
+.I errno_t
+is not present in POSIX.
+.PP
+See also:
+.BR argz_add (3),
+.BR envz_add (3)
+.RE
 .\"------------------------------------- fd_set -----------------------/
 .TP
 .I fd_set
-- 
2.28.0

