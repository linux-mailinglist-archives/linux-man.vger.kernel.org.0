Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 303E83D969D
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231562AbhG1UUq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231574AbhG1UUp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:45 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3E55C061765
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:43 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id u15so2233985wmj.1
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=o8UZDg9IRwUfKJt7vWmCC1kOSWrUIuySd/hdhOWQFOY=;
        b=ut/D5aoGf7ULkBsjnFaW8j5mB9lLfNQhSO8xZ4/Kq1aEFebFKhe2p893uLrG3PoTh6
         BAqn+WM+VI6DOs0KtcJhm5JEROz2GVgClPerWPIVDvj6jk081j1gGil3XQBo9V2NJs72
         33BXtoHoJdL7qUAh9yxg0vdDuVVlBWAG0Aa2iEmGSoEMvkwVGFBRHaA/GridUFczbz0r
         WdW6gkpKa+t1rUQVP0HpAgmwjyfsz1+yDh8aVFf6oJdkzSTNMFU5IL7IVihOM9NgDfP+
         nvzqWZsdPNmKu4Woro02Sau3+KtsKoBgqUOJrT95yMOqVa8L1QZ8+qUTliXMXGg5vRAd
         26xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=o8UZDg9IRwUfKJt7vWmCC1kOSWrUIuySd/hdhOWQFOY=;
        b=FFOzukUbpT9lRT7ShhdVJkYfIt/wo+fl5YkYl+Jc7l2fbMPpMbPSF5eWGxW4hqmAlS
         pIuJe3vxIBRw/iXqbLxu+DK4rhajBGqofX5BZh0AsXc9r2BWPocjiwqEkZr+FH823D40
         iKJOE1qgnJnRouiSHJnLv4KcrsCPq4abz4gDNjyyCTcGQpvWvcdltoaiMzccdeoCOonC
         ak+ov57GQ0cXkUnTsj69uVunmzo6Xnwblnz9pzCnEAy9HRPXuVXzCTbKlpc2Epxdbjxu
         c0eG5tkn7OsxCsOXl81+sKZezQb9fAhcBO3B/lc7lwrOovGAUPbuAnddwLxYdppBYrSz
         wmJg==
X-Gm-Message-State: AOAM531c2+9ZwQRB4snBB+UZrXSlzmSF1pnoC2C8MnTbE6BmGDZCRGfX
        tQp6+PBJambbAfzIbDFV7v1u1MclCBs=
X-Google-Smtp-Source: ABdhPJw7BxByK7xue3DfGbW0f442XQLpfAardukipbkVCPldXf5oWTLJZlJowk3XX30lXyuotEmZYQ==
X-Received: by 2002:a05:600c:2319:: with SMTP id 25mr1307549wmo.27.1627503642489;
        Wed, 28 Jul 2021 13:20:42 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:42 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Jonny Grant <jg@jguk.org>
Subject: [PATCH 30/32] strlen.3, wcslen.3: Add recommendations for safer variants
Date:   Wed, 28 Jul 2021 22:20:06 +0200
Message-Id: <20210728202008.3158-31-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reported-by: Jonny Grant <jg@jguk.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/strlen.3 | 6 ++++++
 man3/wcslen.3 | 9 ++++++++-
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/man3/strlen.3 b/man3/strlen.3
index dea4c1050..78783c446 100644
--- a/man3/strlen.3
+++ b/man3/strlen.3
@@ -66,6 +66,12 @@ T}	Thread safety	MT-Safe
 .sp 1
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, C89, C99, C11, SVr4, 4.3BSD.
+.SH NOTES
+.SS strnlen(3)
+If the input buffer size is known,
+it is probably better to use
+.BR strnlen (3),
+which can prevent reading past the end of the array.
 .SH SEE ALSO
 .BR string (3),
 .BR strnlen (3),
diff --git a/man3/wcslen.3 b/man3/wcslen.3
index af3fcb9ca..fe1d6331b 100644
--- a/man3/wcslen.3
+++ b/man3/wcslen.3
@@ -58,5 +58,12 @@ T}	Thread safety	MT-Safe
 .sp 1
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, C99.
+.SH NOTES
+.SS wcsnlen(3)
+If the input buffer size is known,
+it is probably better to use
+.BR wcsnlen (3),
+which can prevent reading past the end of the array.
 .SH SEE ALSO
-.BR strlen (3)
+.BR strlen (3),
+.BR wcsnlen (3)
-- 
2.32.0

