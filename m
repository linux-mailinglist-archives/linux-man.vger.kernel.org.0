Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 55FE8324139
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 17:05:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235946AbhBXPoX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Feb 2021 10:44:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238371AbhBXOvX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Feb 2021 09:51:23 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57B8BC061A2E
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:11 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id r3so2122987wro.9
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hJcCP+gLgJRA07634nl3x+VhpWLreYTPOYqSAV70Cqo=;
        b=NFqu324oBTyfahG1s+timp4ss9PSxPvs0M8jeEus78XtoAmDKmg4Ha9UsOkI4TVQ/M
         R378TRkVTPHdHjyxLJa2RLC1d1x+O4g4iu4/seq5bUk5tuL9udYoH3RPjGxsj4eu6Od3
         nTGJHq6Y9UIkjxOMofqeANNkjRlMgkPeytC09Y7YnsRKPzkrcmjQoJnWCNMufZVsVjvT
         hlxSeeCWbSvB9e5UvJI2xeCaxj9t+hVl+On/FL6riqoJpMfBXyx5osxtaeLYo5j7y7yy
         /iNdZTdHjNpkVtw7o8BFMdzrbufULAZ5z0v6YU9BShAlv+G/zq2sQwOH7iVcokFEbFKY
         7KUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hJcCP+gLgJRA07634nl3x+VhpWLreYTPOYqSAV70Cqo=;
        b=Vs/isxhuO6aUDoeE72XX2TTTO1adFGbgdoFwQiclcxvbKJqkYKT1Uxx7LzJ5UpyJhL
         7Lig4BkIU7xMa+1vRBkDlwY670CRBAkq91O8xnXvbxQBPPgqZtSxuN9k1sWMaKgsdocO
         1y6GgU8Ql3H4NdJwd5fWpykvqf3853oq/LM0/Eorcgyh9P/8ZIMWZ7jR62X+wIz1V9dA
         wt4Bi/kz/pgzCuDglcReKCIJjL2dv/mykkPzE+4mu1z5uv1HtdDcGUJ7nCZmCIuDaguh
         d3A3Itmx+wTg5H0kk+v2ouAhtSP6mLD3zbjgVtrzft6LvQE4C0wIFoCi8bCvyCtDxEAq
         tEfg==
X-Gm-Message-State: AOAM532ixe6Ajs/oweHl5D5xqOx1yENiiEEI+DLVtJOntOjSOfRsQZG6
        7H59Ck+vTifRd0nxGaVWFok=
X-Google-Smtp-Source: ABdhPJybhGTvmbG9olXYXVrqLIytHH7+jh3NQ1vWImxkP/TQLY8paDUFYEnrhFkYEP6zKpIR3idmGA==
X-Received: by 2002:adf:f484:: with SMTP id l4mr21382934wro.409.1614177850208;
        Wed, 24 Feb 2021 06:44:10 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id a5sm3990676wrs.35.2021.02.24.06.44.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 06:44:09 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 20/20] fseek.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 24 Feb 2021 15:43:11 +0100
Message-Id: <20210224144310.140649-21-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210224144310.140649-1-alx.manpages@gmail.com>
References: <20210224144310.140649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in fgetpos().
Let's use it here too.

glibc:
=============================  fgetpos
libio/stdio.h:736:
int fgetpos (FILE *restrict stream, fpos_t *restrict pos);

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/fseek.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/fseek.3 b/man3/fseek.3
index e8ae7d289..e7d6ed464 100644
--- a/man3/fseek.3
+++ b/man3/fseek.3
@@ -51,7 +51,7 @@ fgetpos, fseek, fsetpos, ftell, rewind \- reposition a stream
 .PP
 .BI "void rewind(FILE *" stream );
 .PP
-.BI "int fgetpos(FILE *" stream ", fpos_t *" pos );
+.BI "int fgetpos(FILE *restrict " stream ", fpos_t *restrict " pos );
 .BI "int fsetpos(FILE *" stream ", const fpos_t *" pos );
 .fi
 .SH DESCRIPTION
-- 
2.30.1.721.g45526154a5

