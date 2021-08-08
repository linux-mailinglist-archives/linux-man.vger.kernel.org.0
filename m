Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF98F3E39A0
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:41:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231348AbhHHImQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231335AbhHHImP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:15 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A79A6C0613CF
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:41:56 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id h24-20020a1ccc180000b029022e0571d1a0so9217089wmb.5
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LGIi8dhwxURlB6UpiCS9vY/neAdghoybKaJsV25hTtg=;
        b=qfomnBbkecmL0iG2SzpIDiOgGpPWDIA7T/ndmjY3HKoig997LIhRwe6rTjM2NVd0cR
         Jc7pyETsEpZXEIyyeBATE/XjxN7aZo+A/cuX0Oga+z9iYQz6RR5hzxwsDp4OalMuSb93
         wZy5KRMTpaWK0SPLUXXrd1kTNGNH1y3cgqVQadPttcbXuiYnTR29p9L0y7ILLciB4QVl
         5OSTROspWpSuCVL21YaiNQ3jT815AK+QywTvS/UvG12wiH0Bdr86H9ZrAqB0mAWbzun4
         FbAkn2hqOAY9GjWhMl11MnzyQQbKTugYWqf/Yyppvy1ic0EAcQT4vj4PMPBpjDpA/Jfz
         XTCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LGIi8dhwxURlB6UpiCS9vY/neAdghoybKaJsV25hTtg=;
        b=o7TFUhkANlLxJASpkcrH6FEBFgyu+i8efAFBU4aAuKjyPVBSgWmtN5WcwkA2oocfBu
         sW0cKO2VmXfc659Mjpa1P8+LdWxY46tbwytciaFfW9SYFCeruIdAIoxFcl7T1GXr+uMK
         MXqc7We8nBiT/dINl7SnFNWD9KYxDzN7fkdx7IcdENBNwMbUn2F8PjErOo1QtxCD+fXZ
         CDX5fKj+zTFsvDrx0uGA1OfOxzPtrjCOzTAQuVU2C2dPL4EpF2U8xPNH997O7KnHZSgK
         Xzygr6I+Qfhs1XnIPDEG3XdO6+drOm8TTnmQgLQzPGleTOTfj+zUjUgIO8LEW9Dg6QYV
         djxw==
X-Gm-Message-State: AOAM5320exH5nPh1u6hqt7blVNhlsZHJZCrSE/achsWgsnD5t/qEjnRE
        38gfwlbsDwOMF/wno2iXeVI=
X-Google-Smtp-Source: ABdhPJx2ouWmDzqd6rIPnAFbdD3aIZCKg0Bb/8J3xq3fjN7HbBCfeZYmZzmC7YDN7djXoFovWoy1SA==
X-Received: by 2002:a7b:c396:: with SMTP id s22mr10781594wmj.11.1628412115395;
        Sun, 08 Aug 2021 01:41:55 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.41.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:41:54 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 12/23] termios.3: Use bold style for Bnn and EXTn macro constants
Date:   Sun,  8 Aug 2021 10:41:22 +0200
Message-Id: <20210808084133.734274-13-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210808084133.734274-1-alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Pali Rohár <pali@kernel.org>

Signed-off-by: Pali Rohár <pali@kernel.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/termios.3 | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/man3/termios.3 b/man3/termios.3
index 01c209944..b7cdec507 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -1068,8 +1068,14 @@ and
 are nonstandard, but available on the BSDs.
 .SH NOTES
 UNIX\ V7 and several later systems have a list of baud rates
-where after the fourteen values B0, ..., B9600 one finds the
-two constants EXTA, EXTB ("External A" and "External B").
+where after the fourteen values
+.BR B0 ,
+\&.\|.\|.\|,
+.B B9600
+one finds the two constants
+.BR EXTA ,
+.B EXTB
+("External A" and "External B").
 Many systems extend the list with much higher baud rates.
 .PP
 The effect of a nonzero \fIduration\fP with
-- 
2.32.0

