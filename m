Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F4E338DB07
	for <lists+linux-man@lfdr.de>; Sun, 23 May 2021 13:22:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231715AbhEWLXw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 May 2021 07:23:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231709AbhEWLXv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 May 2021 07:23:51 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D033C061574
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 04:22:25 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id x8so25497289wrq.9
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 04:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Wh2qrXBYkt2MJvmYXQFs+5nnVxQB2zkIXPCdTYSpC0c=;
        b=KPeVZ13giZ6/YimSX1kEJ6qcogXpD/9aFcLq3hjPvDBFO3VGiuMZH1jujZ5DwvmSxK
         mzOqa4h02ZJJMs4fxhKcqeTOeqEoWR7sDKP6Xql0PgtCecYtJnITX3T9IZK8ZzEYN2U8
         U6apKXYFrmkixBklT1aOTx3a5lSwpXK0Xtp0I9hMnLuH2aKt7wZq2WNVnZkRLk3wWInY
         EvHGlk7Bmew9E6sqM1HHo085yqa9P7WAwjBZ1iznBtmldCYZSOHtNW0egqtge+MPDG41
         E38csmRHl5ztw/sqLZK5JmBYGoHd3jqbLfObcfZtUCdu8eu3zqaFbSK942Y8QV105V0m
         wM5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Wh2qrXBYkt2MJvmYXQFs+5nnVxQB2zkIXPCdTYSpC0c=;
        b=HcgTDGldrduOPu52nDLaFwfP9nTwN/h+30b7HfCKFsvttWJMW+JMVTjhPKaT5T5rTy
         EgIjrDyf2X7cppnc1DENm+URGuThwM4qoOQguvWQd+kjW0uYNbw2fzZq+y/ZvKurm2zR
         TSYseNPWIWVdgvHiEMg6E/4zbfUr77JmzPYGegCZbrJ7V6bDjXXIJj5e9bB3pgQUUEdd
         b71CksKMD7GHEBeQYMoGxgMHKB9FLtEoGr7qwMH86MfHOMyAMf3fEvBThRxaQfEFlDsj
         F0Ynh1wqR86gmVXrFKPh9tRxF/Xqpza+oi9Pih73qDd4G+GkyRgwtVvehMu0B9NHELKC
         zMrw==
X-Gm-Message-State: AOAM533VI8QPoZuKDUADiitxvCACFRyPJRzkb52IBn27H89isoibUovw
        JS+25BSOj24Q+Hdbn++By14=
X-Google-Smtp-Source: ABdhPJxri7T8bxHiohnKcnXnVbG4HOjD4xeQKfZv27avc+OucmuA3U8waxfaBSZv80RbLBs6KOKsHQ==
X-Received: by 2002:a5d:5388:: with SMTP id d8mr16881276wrv.423.1621768944138;
        Sun, 23 May 2021 04:22:24 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id x10sm8273921wrt.65.2021.05.23.04.22.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 May 2021 04:22:23 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 1/8] system_data_types.7: Add 'blkcnt_t'
Date:   Sun, 23 May 2021 13:22:06 +0200
Message-Id: <20210523112213.170202-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/system_data_types.7 | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index ddabefd16..fc9893e41 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -85,6 +85,25 @@ POSIX.1-2001 and later.
 .BR aio_write (3),
 .BR lio_listio (3)
 .RE
+.\"------------------------------------- blkcnt_t ---------------------/
+.TP
+.I blkcnt_t
+.RS
+.IR Include :
+.IR <sys/types.h> .
+Alternatively,
+.IR <sys/stat.h> .
+.PP
+Used for file block counts.
+According to POSIX,
+it shall be a signed integer type.
+.PP
+.IR "Conforming to" :
+POSIX.1-2001 and later.
+.PP
+.IR "See also" :
+.BR stat (2)
+.RE
 .\"------------------------------------- clock_t ----------------------/
 .TP
 .I clock_t
-- 
2.31.1

