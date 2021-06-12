Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 671F83A4DA0
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:32:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231157AbhFLIeR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:34:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231133AbhFLIeQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:34:16 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB373C0613A2
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:32:03 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id c9so8454938wrt.5
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iWCuhze1b0ncjgBtiAl+2Zg4NspOCqOfAKxRe5mAaYM=;
        b=B3LKTUET6aQHIKTHbTrmrq+X4+KQQ/MDfDRsfO9nr53QDBCkfN2kqo41oopH7Ywwje
         FFVktHswVD/mlZudn4G1AYZoRi/FQxqDIqN9LxvaLEyfO9d+6B0mvGx/x6E600F1JNdk
         JfwPWtOezpkZwckQZmwui8acmD9duyu0jJ112agBpYaxPEnX5nFs+9MgYWZ44OqhN0Tm
         /8YXmcV2r0A+0VpU3RzFzJse3e8Tov9RzwmcRkIOvxjyzHofx6SC+626JYSXsLPOXE3T
         jrpOzs+XLyo2Sz9sWLDskTLqFFCVsN51XIpMA7pIY5q6idP8WC9uZXuIP5JJftu2sRsq
         8sow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iWCuhze1b0ncjgBtiAl+2Zg4NspOCqOfAKxRe5mAaYM=;
        b=KOvCJN294AHJtKkNFUQAhhoDpnHrC3T9RqjGb8UbrQQ7fjXzJS1ufm/I7yC8rRUzrL
         Pl9KPiikIZu/fiw7x0TkJ+0T4mVYWceP2vrOnp6uB8IpuzmN7AxJ94txfJsbmABG/gXh
         HKr88g4zoLbtmn1dynd0XYgwGTuG/6USlX4mYMInJYNqB6YDKLVwf+tqXRas1KwkGsoN
         UTzTC6g4Q+fsGzu7GetocYmIJSUu7q/p6X619kN4hu0jDYLcB4gO30mwLEL8tiah7Hoc
         iyZsx3w+b5Bwwuw5SqXLSOaD2viKuNVklBumS7WqnP05itB73F/tbheMdynvghBtHxMX
         2cbg==
X-Gm-Message-State: AOAM5316+ghekLnmtKpqQ5uhad1Lyyq9cloY9QHFoLUUwolXPTY41mNQ
        GoEKnmJb6dFgs1rSx5KyuAM=
X-Google-Smtp-Source: ABdhPJxRvFCYkWuVaBl9S+eFRLJNGiaZEP7TvtSw/vNlhK/Nldvc/TajYRKFq34M1hZw+drq7/bMSg==
X-Received: by 2002:a5d:64ee:: with SMTP id g14mr3300223wri.66.1623486722425;
        Sat, 12 Jun 2021 01:32:02 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.32.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:32:02 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 21/28] unlink.2: ffix
Date:   Sat, 12 Jun 2021 10:31:38 +0200
Message-Id: <20210612083145.12485-22-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/unlink.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/unlink.2 b/man2/unlink.2
index 39a4ec974..6f4c187f8 100644
--- a/man2/unlink.2
+++ b/man2/unlink.2
@@ -39,7 +39,7 @@ unlink, unlinkat \- delete a name and possibly the file it refers to
 .PP
 .BI "int unlink(const char *" pathname );
 .PP
-.BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
+.BR "#include <fcntl.h>           " "/* Definition of " AT_* " constants */"
 .B #include <unistd.h>
 .PP
 .BI "int unlinkat(int " dirfd ", const char *" pathname ", int " flags );
-- 
2.32.0

