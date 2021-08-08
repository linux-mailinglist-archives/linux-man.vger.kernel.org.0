Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C44C53E39A6
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:42:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231356AbhHHImW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231368AbhHHImV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:21 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BEE9C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:42:02 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id l18so17135642wrv.5
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mOnw6DmN4uuALNy/fo0wnXJ/gLUsgAx5gjaf27Jjjgk=;
        b=dsnjalTZ97Z5bphnUeCtrm93RUycd10uSRbmCEz7OJldzxOLj5S0KEveGUUxpUrSYU
         AYhu0YLKh9VlxbBbMRkk8VmUrgjfLRXVLWrFloOq3uQSiA3Tr5jg43tH9Py7KpK6vJgg
         ZAQZc76BnAlEgtlkjwrSX31KS0qf7na0LLSh972G0XYTjMNBlnNNV14qDTrPCPrBiSVX
         LMgB2fLzFthy4Ou+s/ne76Y4dJuy1ZoCAiTv1hMbTfAW6iAH10FZVP7ZWOKGKNtxAkj1
         Jh18+POKcfdHHzfeqnlKrkWuz8xxLSY5n1w/30ouD60LPoJNC0NFWxJRWHumcxx20OBz
         VPOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mOnw6DmN4uuALNy/fo0wnXJ/gLUsgAx5gjaf27Jjjgk=;
        b=W9+KDFf6128VeCVEBds2ReSUN6gjQr9W5TkNrjFBVZTzOcvgPWF2rULp8f9CGYWDRE
         pr0QtC4TK8smzZj2o7yyHdH7UOmo6hwnsxEiXUQmnn8MQ3++8Cm9QNiV2jZiLRphxsuy
         yPkXrSYpG24Cokcy5E8TAnfMWVszCc1Zbhmkp1FMX5zeP2am/ca0L7bCbankT26YwVoV
         bIwkj5HKe8yotw0IAeI2UZTMfi3TZfAjUG7xoeyd3wPk1PVMDF5MjHfAZQoGjR0GU9I3
         sZpvUx9JND7ohgN8YMx5fFkdp+QMR3diRkYdRx8I/6bbsId+3MNvxlgOdFksMgOGSBbE
         qmgQ==
X-Gm-Message-State: AOAM5324RtoBJKeAAfPEf1WzwIonnLf8t/ktadE/d0ESpgEqtUN8Scyq
        HmCxNFA6FGHhKcqMrNEHCxE=
X-Google-Smtp-Source: ABdhPJzGW9MJRR07hO5eoAnz2R10v2GFPLwtk3sA6FsQlsJdyn6aQ4y7h8L6LC1nnYkIZL0RBveQvg==
X-Received: by 2002:a5d:490b:: with SMTP id x11mr18934213wrq.322.1628412121136;
        Sun, 08 Aug 2021 01:42:01 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:42:00 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 18/23] termios.3: SPARC architecture has 4 different Bnnn constants
Date:   Sun,  8 Aug 2021 10:41:28 +0200
Message-Id: <20210808084133.734274-19-alx.manpages@gmail.com>
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

SPARC is special, it does not have Bnnn constants for baud rates above
2000000. Instead it defines 4 Bnnn constants with smaller baud rates.

This difference between SPARC and non-SPARC architectures is present in
both glibc API (termios.h) and also kernel ioctl API (asm/termbits.h).

Signed-off-by: Pali Rohár <pali@kernel.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/termios.3 | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/man3/termios.3 b/man3/termios.3
index 4fbd34a52..8c88c25e4 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -953,6 +953,24 @@ to by \fItermios_p\fP to \fIspeed\fP, which must be one of these constants:
 	B1152000
 	B1500000
 	B2000000
+.ft P
+.fi
+.PP
+These constants are additionally supported on the SPARC architecture:
+.PP
+.nf
+.ft B
+	B76800
+	B153600
+	B307200
+	B614400
+.ft P
+.fi
+.PP
+These constants are additionally supported on non-SPARC architectures:
+.PP
+.nf
+.ft B
 	B2500000
 	B3000000
 	B3500000
@@ -960,6 +978,11 @@ to by \fItermios_p\fP to \fIspeed\fP, which must be one of these constants:
 .ft P
 .fi
 .PP
+Due to differences between architectures, portable applications should check
+if a particular
+.BI B nnn
+constant is defined prior to using it.
+.PP
 The zero baud rate,
 .BR B0 ,
 is used to terminate the connection.
-- 
2.32.0

