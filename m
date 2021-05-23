Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DBCAB38DB0A
	for <lists+linux-man@lfdr.de>; Sun, 23 May 2021 13:22:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231727AbhEWLYD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 May 2021 07:24:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231709AbhEWLYA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 May 2021 07:24:00 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3529C061574
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 04:22:32 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id x8so25497496wrq.9
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 04:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PgJa8SmUJUIrcz2MVwbn3Xh3ISYny/ffwXq1US+g2lk=;
        b=AtY9UECCwWS+p/Q9vUJHhDhflIGDcu/m8+Jgrmsbqg1+682dUYymRBso1VVnSKxdcD
         nhfUXi2jVmSsf6xkJvArJbkTLYR+4cUBxzG+yXLyblpgFd4wNeLkRBuM1R0N2uvSvIOU
         8rXbNeAneQN22Rm1k5Nw5NjTiNueSrd9/AE1yQc6EncaFsuLdDlE3ssI58JHsjpbu9FA
         zxdBtdyq2mYDh+RT28dZ+4k6uF3HWFW5//PCxJ33dzGXcHQzkTPayEwomlOLt0TIZtus
         mh/Va8XDISBkoSftoUWVSQP90eZx+R+lZv9nX9BfnUpSL6WBS4qmn0mDe5n23m2h7V+E
         uKvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PgJa8SmUJUIrcz2MVwbn3Xh3ISYny/ffwXq1US+g2lk=;
        b=DM9Ls9Qm/vSYFMrjwqjDqfWDwekdqx8YhW6Bkp03dr4kRXoX64+RnjYzPnLHPBj/gY
         u4XcD3e1QYhGlVh4sVNT+9nO5RQeC/+imEstyzINmez6Z734BCincJ0gIrBj1Z0TWUL8
         bFUhrGXMVN0g6r2eZEKZeevd0qWWae2NYSQWbPxLJcT3+NXdG9wGaOwl7TwuMqPqjYPz
         sg06dgQ9KAFCuzkh08hB9OGDS2lDD3H8ZYDounvlD0KjZvpA6QahN9U+5IBYgHz+fxGg
         kgyU/k2RzEV6uXy1n8bn5Qp7TyiRa+3nqwxLOnKsZ7ZEgJVW7J7sOTjf7UdRqM1tUd9C
         AQcw==
X-Gm-Message-State: AOAM530zN8ul725A4Dt0dRM5uize4D7cuQQ7UQ+GsWMG7F3DLG0/SWoI
        LMx3G30VgAOhGwkQliu0GN8i+76jWSQ=
X-Google-Smtp-Source: ABdhPJxeXOYAVlepLZ60KCYD1RoS3SLuCsCbSpmWNtEvglnwNk+3yRLMazDx3jkBmhMVIelRk5gqgQ==
X-Received: by 2002:a5d:53ce:: with SMTP id a14mr17402682wrw.410.1621768951308;
        Sun, 23 May 2021 04:22:31 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id x10sm8273921wrt.65.2021.05.23.04.22.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 May 2021 04:22:30 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 5/8] system_data_types.7: Add 'blksize_t'
Date:   Sun, 23 May 2021 13:22:10 +0200
Message-Id: <20210523112213.170202-5-alx.manpages@gmail.com>
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
 man7/system_data_types.7 | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index c8e6961da..7544ef25f 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -104,6 +104,25 @@ POSIX.1-2001 and later.
 .IR "See also" :
 .BR stat (2)
 .RE
+.\"------------------------------------- blksize_t --------------------/
+.TP
+.I blksize_t
+.RS
+.IR Include :
+.IR <sys/types.h> .
+Alternatively,
+.IR <sys/stat.h> .
+.PP
+Used for file block sizes.
+According to POSIX,
+it shall be a signed integer type.
+.PP
+.IR "Conforming to" :
+POSIX.1-2001 and later.
+.PP
+.IR "See also" :
+.BR stat (2)
+.RE
 .\"------------------------------------- cc_t -------------------------/
 .TP
 .I cc_t
-- 
2.31.1

