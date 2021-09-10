Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2488407391
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 00:47:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233330AbhIJWsp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 18:48:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233561AbhIJWsn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 18:48:43 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2D67C061574
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:31 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id b6so4684371wrh.10
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fhzkl2YoQ/T+7s1wO+c6qPrJvkXvrcmOeKiicR4UH4E=;
        b=RTyuirYiSgCCVetZNJI0uqyp7+soVE52pFNHxGkFX1xI8SyGFMzXtvKn7Lz/8g7FsM
         CsUzLh6OXgDHWeSi09PPfDvTMlo+dH2OtnNxZ9tvCPQMFl4sEP3FB8ikMARQIgdHbomS
         caQ0icz3O0TIW3bYHnoDcM6E/JGLCzKvBIWBWmOuQlS69MTOaRIpr9NrXnvk6jPyIvsC
         lRhshmdu59hW9LDQfulFZ9fydTFA+zZ5ZEtAyWJwROKUbJV7b3NcyZJIkZ/zaf9gHzaN
         BmvNKr9snRnRWwzLxT+VtmFRFja2SgJxyyEgaOeicbcz9FTdaw91bgSaEk4v4xRVz2G6
         CbRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fhzkl2YoQ/T+7s1wO+c6qPrJvkXvrcmOeKiicR4UH4E=;
        b=n4Q698elAbr3L0OLf6A5o2UubPebRie74kYR9+6ACHX6n47GleeA1U95Xcq1uXc3GD
         qkfLvPzLbzKEwqF4Z60+WGaH2be42bdmTwSdOJjCXb1ZGzq+uF+ttVSHamJz7H0MsXsk
         txhU82tNbid+ufYYPxJUM24OoB1sbzZwb8YX71uzpfXQom50gsBoAnt8zUpwD3VDYRjU
         9ETYosaxogurJmISYbQgVQyOoRg3RczJCeHsCJMA6Kz6sVxhQ//GTDsoycFV+0JQVUkt
         9mp8xdDHiNcwr9fVREH7m8tnq7AQSFSmHriRrUHwbXyNkB9ghzNXO6MCvBP5+w4UCstj
         MhlA==
X-Gm-Message-State: AOAM531OCo4x2Q7pV+pEWOQfN8MIBr5TEaZRDOcbEFTZYxMuRRj3uJrj
        DqVXNgp+Qxj5Ak2+gUpHheDU+kg1M98=
X-Google-Smtp-Source: ABdhPJzZdhgr1t5An7wqGe1f//xZ1uXuJKk7E0qd7XNyg48QfozNDTlK14b8Yyt4nyffttHxu/6Jyg==
X-Received: by 2002:a5d:4647:: with SMTP id j7mr84557wrs.149.1631314050676;
        Fri, 10 Sep 2021 15:47:30 -0700 (PDT)
Received: from sqli.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k18sm15520wmi.25.2021.09.10.15.47.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Sep 2021 15:47:30 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH 14/15] termios.3: srcfix
Date:   Sat, 11 Sep 2021 00:47:15 +0200
Message-Id: <20210910224717.499502-15-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210910224717.499502-1-alx.manpages@gmail.com>
References: <20210910224717.499502-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Replace a list with .nf,.ft,.fi requests and hardcoded tabs,
by commonly used (some not so common, such as TQ, but simple)
macros: .RS,.RE,.TP,.TQ,.B

Reported-by: G. Branden Robinson <g.branden.robinson@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/termios.3 | 126 +++++++++++++++++++++++++++++--------------------
 1 file changed, 76 insertions(+), 50 deletions(-)

diff --git a/man3/termios.3 b/man3/termios.3
index d0630fe23..3a3c551cf 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -929,60 +929,86 @@ pointed to by
 .BR cfsetospeed ()
 sets the output baud rate stored in the \fItermios\fP structure pointed
 to by \fItermios_p\fP to \fIspeed\fP, which must be one of these constants:
-.PP
-.nf
-.ft B
-	B0
-	B50
-	B75
-	B110
-	B134
-	B150
-	B200
-	B300
-	B600
-	B1200
-	B1800
-	B2400
-	B4800
-	B9600
-	B19200
-	B38400
-	B57600
-	B115200
-	B230400
-	B460800
-	B500000
-	B576000
-	B921600
-	B1000000
-	B1152000
-	B1500000
-	B2000000
-.ft P
-.fi
+.RS
+.TP
+.B B0
+.TQ
+.B B50
+.TQ
+.B B75
+.TQ
+.B B110
+.TQ
+.B B134
+.TQ
+.B B150
+.TQ
+.B B200
+.TQ
+.B B300
+.TQ
+.B B600
+.TQ
+.B B1200
+.TQ
+.B B1800
+.TQ
+.B B2400
+.TQ
+.B B4800
+.TQ
+.B B9600
+.TQ
+.B B19200
+.TQ
+.B B38400
+.TQ
+.B B57600
+.TQ
+.B B115200
+.TQ
+.B B230400
+.TQ
+.B B460800
+.TQ
+.B B500000
+.TQ
+.B B576000
+.TQ
+.B B921600
+.TQ
+.B B1000000
+.TQ
+.B B1152000
+.TQ
+.B B1500000
+.TQ
+.B B2000000
+.RE
 .PP
 These constants are additionally supported on the SPARC architecture:
-.PP
-.nf
-.ft B
-	B76800
-	B153600
-	B307200
-	B614400
-.ft P
-.fi
+.RS
+.TP
+.B B76800
+.TQ
+.B B153600
+.TQ
+.B B307200
+.TQ
+.B B614400
+.RE
 .PP
 These constants are additionally supported on non-SPARC architectures:
-.PP
-.nf
-.ft B
-	B2500000
-	B3000000
-	B3500000
-	B4000000
-.ft P
-.fi
+.RS
+.TP
+.B B2500000
+.TQ
+.B B3000000
+.TQ
+.B B3500000
+.TQ
+.B B4000000
+.RE
 .PP
 Due to differences between architectures, portable applications should check
 if a particular
-- 
2.33.0

