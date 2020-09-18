Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2474426FC06
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 14:05:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726239AbgIRMFF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 08:05:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726064AbgIRMFF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 08:05:05 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3E98C06174A
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 05:05:04 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id z1so5377986wrt.3
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 05:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=G3QLG7R4KI138pWKkfM/HDml7RF3chL9EpcI6QDDVtw=;
        b=dSlAQS6eCcnw5iJc2AZTRGUpo0nKH/y/fJ5By6he/l+6ZlcprkeiyCKeIoKA/x50t9
         Qo8QhMOfzO/HJ3v+Q4vnGrh/CXrrUxHGK0Fa8L4UOELlvX7jXLZYxCOt20CxdNbqOeO6
         natHPeIEN+5bAUpICdowkGki1M7JXf4lcgxQcy9PLGIRMni6wQ2zsqijcQKUUs4vSsut
         5BJRGT+eNN58MXTal89MhanV5ilNXLvEOpFBsP6WKb4dPbdxIezqCkFA+L+9qkhATkPA
         4OI3duPJy/jDTRS3H18zVmSSABGznVTCHtWolle+uASHC3FWhw7U5Vic+qwuEq+MpP0M
         ONGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=G3QLG7R4KI138pWKkfM/HDml7RF3chL9EpcI6QDDVtw=;
        b=nJ5gjv99+a4kDWb2ZA8K7zYaryaZB4GoV+U5OUVOcnqpZtgNkc/bC/XkAbz5aea0ij
         JqOSHoiAmnpGSIpPy4ZopNrj/1CD8ZPKr8fA7cw2iSzne8yfNcLbxkT7b5KBGvDaEm8c
         +dS4dV24ONpDXicN1ncAp58R0i4a4GV8EmZRelzHR61UQEnh46DlsbOTXrx8lSN15Fzd
         a7Y8oC19CJihT6B0XC/SHGtUAJfqO+qM3St/uKvlWsijHvfck8D8QDmCAcW8bVIwGIGv
         3t2CJE6cpYGeMpqtG9t9ZOdlYxKoTlVqbXbPPsP2dP3cpASm7/J9HJBq1uf6EAOH3TnN
         2IIA==
X-Gm-Message-State: AOAM530pVx/CxuuLbG3OIy3DjR1lKGtd9/3GofnCrskQhWOIJ4PJdS6G
        v6Px3PqHOjQZ+nXjUFwA8xE=
X-Google-Smtp-Source: ABdhPJwNmtC353J2my+v0PXf/ZD+hunptlXRSOwS7v15+rRUZZyPQMma6cMzNCQL9zlykemQyITgpg==
X-Received: by 2002:adf:eb8f:: with SMTP id t15mr13898424wrn.417.1600430703586;
        Fri, 18 Sep 2020 05:05:03 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id n4sm4862502wrp.61.2020.09.18.05.05.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 05:05:03 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 3/4] system_data_types.7: Document ptrdiff_t
Date:   Fri, 18 Sep 2020 14:04:40 +0200
Message-Id: <20200918120440.30281-4-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200918120440.30281-1-colomar.6.4.3@gmail.com>
References: <20200918120440.30281-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 25 ++++++++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 5ef470386..8969ee966 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -62,6 +62,27 @@ system_data_types \- overview of system data types
 .\"
 .\"		* See also
 .TP
+.I ptrdiff_t
+.IP
+Include:
+.I <stddef.h>.
+.IP
+Used for a count of elements, and array indices.
+It is the result of subtracting two pointers.
+According to the C language standard, it shall be a signed integer type
+capable of storing values in the range
+.BR "" [ PTRDIFF_MIN ,
+.BR PTRDIFF_MAX ].
+.IP
+Conforming to: C99 and later; POSIX.1-2001 and later.
+.IP
+See also the
+.\".I regoff_t ,	FIXME: uncomment when regoff_t is documented.
+.I size_t
+and
+.I ssize_t
+types in this page.
+.TP
 .I sigval
 .IP
 Include:
@@ -221,8 +242,10 @@ See also:
 .BR write (2)
 .IP
 See also the
+.I ptrdiff_t
+and
 .I size_t
-type in this page.
+types in this page.
 .TP
 .I suseconds_t
 .IP
-- 
2.28.0

