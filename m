Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9F843A4DAB
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:33:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230474AbhFLIfK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:35:10 -0400
Received: from mail-wr1-f41.google.com ([209.85.221.41]:41758 "EHLO
        mail-wr1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231171AbhFLIfG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:35:06 -0400
Received: by mail-wr1-f41.google.com with SMTP id o3so8456352wri.8
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ME2RAr0+tYE0M74WQYUG4goQJ5MhQ773HzEesldmggA=;
        b=MtoBzZbFIUSTE0nQIHNOB/OPJVcrUNEqi+wmWoF7OKbl4pQn1xtlvhHwtn/PnusBHV
         mT8Qw9Zw3iLuOkGgQXtNP+q4ylEdz1LB7LTBwH2JxbloDSpZfw4uriBBGdP4SrxO1EIK
         B8ebTsY0TkLzzdNjgSqeZo7xAbyBkBnKlxD4ozzpB/iQwjn3o19vNdQhVv/waPXATmeJ
         uXkhgp20kmxo4RiEIaYYfcoUEn56WWvjcONssNqjex+f4KbMu9U84m8UfELeAR12ztnw
         L4gdUomPemMMqGBGwFYy6gPiQWeyU0Kk+25b6Q/Zk81+Qvz/eXXpif0M7/wMpmDe+XSL
         Kg/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ME2RAr0+tYE0M74WQYUG4goQJ5MhQ773HzEesldmggA=;
        b=U+HS8OimP+i9Lp/IBaD0aVQajKBFSx9qlvsmU563ge63DEutKlk3xeX+Pj+V7i1asN
         +tnhU9d30VpQ0ddF+jGSu/NqTc1sLzsG0cKKMJS5SnCptrn8J6LoFILCJVZzjgghsnJ+
         tegLqwB/aqb0nT5bDvibpLrLZ5z8+893SYF9v7jhvA1GE+fJvinAyRBh+OK0q99FPbbV
         rgf8czQaXajq9eDAjXPObUYi+WCxqVC259fcB+NiCZ65EdG7z2n7WyqQr+z3FaDQjlma
         r+Inv0p+LIdo27IIa6JeCpHX7P27oHfeVyxayzT+Ws23kyxz9lUq8s+2HIX7EvREB47Q
         iDaA==
X-Gm-Message-State: AOAM533leddMVatbMUsJG4aujWE/Mqt4noJesfY2SuGepDv2ZG+TiY7R
        Ezu+3QMqF+HIZPjfl90hlRsNpCI2Axg=
X-Google-Smtp-Source: ABdhPJzZ9z4S28kZnXRFWYwmKgqg3czfcOgknNfME9oXkmujancZ7uTOOK9iJzT+0zSuDWOWueQZqw==
X-Received: by 2002:adf:e944:: with SMTP id m4mr8570263wrn.244.1623486710229;
        Sat, 12 Jun 2021 01:31:50 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.31.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:31:49 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 03/28] spu_create.2: Remove <sys/types.h>
Date:   Sat, 12 Jun 2021 10:31:20 +0200
Message-Id: <20210612083145.12485-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

It's only needed for getting 'mode_t'.
But that type is better documented in system_data_types(7).

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/spu_create.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/spu_create.2 b/man2/spu_create.2
index d192eb025..6541a6e9a 100644
--- a/man2/spu_create.2
+++ b/man2/spu_create.2
@@ -27,7 +27,6 @@
 spu_create \- create a new spu context
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <sys/spu.h>
 .PP
 .BI "int spu_create(const char *" pathname ", unsigned int " flags \
-- 
2.32.0

