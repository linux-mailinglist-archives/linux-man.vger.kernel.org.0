Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 425603D9680
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231158AbhG1UUS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229878AbhG1UUS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:18 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BCCDC061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:15 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id d8so4024743wrm.4
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TMcudQqs7XpUlLPGlm/IEOnvFoiwOP0r9RxS/CtV7bg=;
        b=ewMCbnQ+CgTWAMAFOZA0jLcFwWFE+ZhvUW+T8GChy5vtN4govz1y48s2gKNDk/rm33
         hN2EsZ5P0HBt7+9y3B/ecwUNGL5QR0u9ZvAyprljIQQgs9jgEYPt/QEwWqvD25fLGvOQ
         Ws9BJn/EIwGL3WkjqtLTIyrNXSf4QufvBy/z/T0ENAPWZmeDqoKIYRycGX+NGffqL7ul
         bjsYB8UpsoUYlAPibbIgGkJjC4KBZbG/uJ9Vf8N6+GIhOFq3n/Vz23xVnuHAQI/8cF+E
         cEZjOSwsPdjQzy6JmSgwqvwbl9Yjyt6980tOAJdEt8SQH20pj03xNpx01yaUbfvR3lBr
         pnEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TMcudQqs7XpUlLPGlm/IEOnvFoiwOP0r9RxS/CtV7bg=;
        b=QEq1ca9lMbJsAiiNjth9cqgVdStSlx2GN2/1j0SaZab3rmfgUyYTAiPx7W45+KKrcr
         oSmp5dPZ5UvV7zilyftrYvCEQ+CuOe9GeYdxqmuRTzX+ff1/5jqx0RxfQucM750wJQ2J
         nWzIZwhltaiFLBObsKqKPpLsVCpvm+RpsbSm4x91S9ZMAS2zOQbH0vjIc45YX4QSz4UK
         QHxFIvqu3KniAQHgcK2y3tM2G9pAE2U6Iiq9oJcek8OlxwqOIn9qJ97T2/CiNYO48TnD
         zzoaHzYMqsFgCSTY6zo4PUIMkPEei4e5EWRJwiVVRdtEkpCX4w5KH6QAbGXcrc8kepYH
         mmKg==
X-Gm-Message-State: AOAM533XqKVAMVsOsaQSPsqgh/jUHgIzdrYXod9S9YjuX6+RYnkxAFFm
        bXYbt2wK1PszYo+WPHeLwEk=
X-Google-Smtp-Source: ABdhPJyR2WVOdITKfNs7kL5DJ3yU6bDSQI8O166GZ7DhY0Ek56dK/TdlhrTPrHHJehnty3/1k5toQA==
X-Received: by 2002:a5d:6186:: with SMTP id j6mr1106470wru.115.1627503613699;
        Wed, 28 Jul 2021 13:20:13 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:13 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Will Manley <will@williammanley.net>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 01/32] readv2: Note preadv2(..., RWF_NOWAIT) bug in BUGS section
Date:   Wed, 28 Jul 2021 22:19:37 +0200
Message-Id: <20210728202008.3158-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Will Manley <will@williammanley.net>

To save the next person before they fall foul of it.  See
<https://lore.kernel.org/linux-fsdevel/fea8b16d-5a69-40f9-b123-e84dcd6e8f2e@www.fastmail.com/T/#u>
and <https://github.com/tokio-rs/tokio/issues/3803> for more information.

Signed-off-by: Will Manley <will@williammanley.net>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/readv.2 | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/man2/readv.2 b/man2/readv.2
index df42cf830..3355fa9d7 100644
--- a/man2/readv.2
+++ b/man2/readv.2
@@ -243,7 +243,9 @@ If some data was successfully read, it will return the number of bytes read.
 If no bytes were read, it will return \-1 and set
 .IR errno
 to
-.BR EAGAIN .
+.BR EAGAIN
+(but see
+.BR BUGS ")."
 Currently, this flag is meaningful only for
 .BR preadv2 ().
 .TP
@@ -425,6 +427,13 @@ iov[1].iov_len = strlen(str1);
 nwritten = writev(STDOUT_FILENO, iov, 2);
 .EE
 .in
+.SH BUGS
+Linux v5.9 and v5.10 have a bug where
+.BR preadv2()
+with the
+.BR RWF_NOWAIT
+flag may return 0 even when not at end of file.  See
+https://lore.kernel.org/linux-fsdevel/fea8b16d-5a69-40f9-b123-e84dcd6e8f2e@www.fastmail.com/T/#u
 .SH SEE ALSO
 .BR pread (2),
 .BR read (2),
-- 
2.32.0

