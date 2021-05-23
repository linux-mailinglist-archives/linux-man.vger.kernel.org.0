Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D638138DB08
	for <lists+linux-man@lfdr.de>; Sun, 23 May 2021 13:22:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231716AbhEWLXy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 May 2021 07:23:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231709AbhEWLXx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 May 2021 07:23:53 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86795C061574
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 04:22:27 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id y184-20020a1ce1c10000b02901769b409001so9516738wmg.3
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 04:22:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xqA1e/VnD3ortqYhgulCm0Ib25TC9DIXQFys8mdh1CM=;
        b=Ss2x/lhDMv/kXyzleWpLLgma6Sz2lm2XVr+IybGqeLxRS3KB8CXIGlBLPNHVLUxxYD
         pZDAe0x51yE+LMYu6qo4aLJNA6i4UmtPS41fNU4vZuC5Ev9ITSvgH9PnciNgQPHyWA+2
         gq9bU8UIKBr3H7O+jmhgPMlqEBqRTL2w6zKsowFOv4rX6VUo8rfMt3x00U1kqvtlDlCm
         2JuEjaXENjCBRJmvA0bpkQq4cFyHGsSjfDDL0lTCaO+ahGeR1lTkB+fcYYZqa1qoFer5
         HdG+Z0M4aX8BN20+we7aJVbGZCCn5wQ8ktlisS21BUq2emKXMbXkMhmI2oDt0MlMO0Iw
         FgMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xqA1e/VnD3ortqYhgulCm0Ib25TC9DIXQFys8mdh1CM=;
        b=Wjs8j3S3EbyLXi8Shttgy2hd99C1z+DHaeSEhCusxT30RcocluDZ0bbbe4LegEgEtR
         yKwvqkZHu97n6IIS1FSy9tTmxvRNf1QiTm80lpjNFBsYUHeDDar9ODnTvG8Kx8XDI7xl
         9SzsQbGk73LOiaSxh/H0ylnclWNLNMK06UK+eAlTBdGGJ5/PXWr/HEyOgdjAP/zRzbo+
         WM4dNuxTfZ/Oo9bA0fPk2KYo4/HVfhK4rels3qTKLgTZVkbM4+bh+gKhSsh4M4SCm/SB
         inO2fqdYry8476nizx4x7+KXiZfboWrCyZEi63uukAMeEkkDb1LyR/0hVKzRsLQjLbbn
         dN8A==
X-Gm-Message-State: AOAM531xO31ccnOFXn9yTG9JeXfK8cAjqYoff4K3SGjFz3/izxVI3f+e
        LgIUX1GQv1X11avM9shRuow=
X-Google-Smtp-Source: ABdhPJxBgAwmKIYO6Iah8aTI7dMPFRU4uuAFUiuZuzws9yKhejbafbVzC6Pteh0tvG/5S6wfiO3g0Q==
X-Received: by 2002:a1c:8016:: with SMTP id b22mr2195646wmd.43.1621768946217;
        Sun, 23 May 2021 04:22:26 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id x10sm8273921wrt.65.2021.05.23.04.22.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 May 2021 04:22:25 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 2/8] blkcnt_t.3: New link to system_data_types(7)
Date:   Sun, 23 May 2021 13:22:07 +0200
Message-Id: <20210523112213.170202-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210523112213.170202-1-alx.manpages@gmail.com>
References: <20210523112213.170202-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/blkcnt_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/blkcnt_t.3

diff --git a/man3/blkcnt_t.3 b/man3/blkcnt_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/blkcnt_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.31.1

