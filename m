Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 153D438D677
	for <lists+linux-man@lfdr.de>; Sat, 22 May 2021 18:17:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231250AbhEVQTU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 May 2021 12:19:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231249AbhEVQTT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 22 May 2021 12:19:19 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C16BCC061574
        for <linux-man@vger.kernel.org>; Sat, 22 May 2021 09:17:54 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id f18so4874166ejq.10
        for <linux-man@vger.kernel.org>; Sat, 22 May 2021 09:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yi2GU1of8ZE7El36iFGvnCt/towoSaMVhhfAH9xUTcc=;
        b=FsM2N/qrO5vY9OkydBreO+nPS3wH4ruYL7k4mjITX2FZTjSeVrVPPUZkspVsRYtawY
         c1LuEC3eP1eqWgKIwjUmCs8xMEQl9xkFGQF1Z4PKXDe1K3jc3lyN5IlegqzhhH8gxjzo
         CK/Ls9nrYADnBfyKOaOWT6ewF91JlnG7PE+ZWCOHZSnBd1dZC5CkY8cb8vz2q+HwUpn2
         s/xaGsxyfrkC8Z6FmHtFxzBR1Jzw71+M328eUmtw+2xIuPxmmnngaQYq+Rp76vcI9J30
         howGv2d2FKTzsDrUsdfChAc2ePJdUodhVmw5cBGzxSvi75/3CDEMKrIEOJqFrCSk7mUk
         PgnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yi2GU1of8ZE7El36iFGvnCt/towoSaMVhhfAH9xUTcc=;
        b=EeeNcSKTc/4pWgxDFeByw0AT+rdJHDw8N6nhj7urmXaytok8UtS/fs0e9toscOvAZo
         fQKhJh3UW/mYqP9j2N+qfVaXZKCDXceUZ1CW3Kxdlfyk4rYEvtKDtbl/WnbZ6y3Hr8+h
         ekDvpjvi+TedDLv+AcXUAr+GU0PxOnzjrjChUhiBqo8+g+kHB7hxeUVYgvG/qplc68uK
         1uOw/dsDDrD5ucy7UYybXikjY6/dTUH0sXKqc7XUxzz0ZEj7T1OxfcjN9Qmyp8Cjdffi
         WCBIoINzSSS5a778AzHf1jQHIB6+5gx4t1Mu8J9iFQ72cPM6TYjZkVh2S4JXNUsZtdsK
         D1yA==
X-Gm-Message-State: AOAM531aEeVGo0oAsv/rK1PNiqKG26ql3sdveXZLpEdnRCOg0pyj9hWO
        u4+Stto9O7CpBakvrH8kSz3FXonWzRw=
X-Google-Smtp-Source: ABdhPJwsZMi6lWp9UODYkLKVpu9OuOY45i/BYhNm03Hij55vi6b6cNT0E87exLE8D0sL/iCW+3Gz8w==
X-Received: by 2002:a17:906:c352:: with SMTP id ci18mr15119545ejb.149.1621700272663;
        Sat, 22 May 2021 09:17:52 -0700 (PDT)
Received: from localhost ([185.112.167.54])
        by smtp.gmail.com with ESMTPSA id l18sm5737243ejc.103.2021.05.22.09.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 May 2021 09:17:51 -0700 (PDT)
From:   =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@gmail.com>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] strcmp.3: tfix
Date:   Sat, 22 May 2021 18:17:50 +0200
Message-Id: <20210522161750.2756568-1-stepnem@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

With a single backslash, '\0' ended up as ' ' in the man output.

Signed-off-by: Štěpán Němec <stepnem@gmail.com>
---
 man3/strcmp.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/strcmp.3 b/man3/strcmp.3
index c1992c18427c..469c9b6947d1 100644
--- a/man3/strcmp.3
+++ b/man3/strcmp.3
@@ -143,7 +143,7 @@ First, some examples using
 .EX
 $ \fB./string_comp ABC ABC\fP
 <str1> and <str2> are equal
-$ \fB./string_comp ABC AB\fP      # \(aqC\(aq is ASCII 67; \(aqC\(aq \- \(aq\0\(aq = 67
+$ \fB./string_comp ABC AB\fP      # \(aqC\(aq is ASCII 67; \(aqC\(aq \- \(aq\\0\(aq = 67
 <str1> is greater than <str2> (67)
 $ \fB./string_comp ABA ABZ\fP     # \(aqA\(aq is ASCII 65; \(aqZ\(aq is ASCII 90
 <str1> is less than <str2> (\-25)

base-commit: 65dfda3dd16da5cff236c4a84532ec40d7533578
-- 
2.31.1

