Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62C4046DF13
	for <lists+linux-man@lfdr.de>; Thu,  9 Dec 2021 00:44:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238031AbhLHXsN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Dec 2021 18:48:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238078AbhLHXsM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Dec 2021 18:48:12 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26E5AC061746
        for <linux-man@vger.kernel.org>; Wed,  8 Dec 2021 15:44:40 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id a9so6822067wrr.8
        for <linux-man@vger.kernel.org>; Wed, 08 Dec 2021 15:44:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kFVK41JofwpvfmQo3kQReREBdDAkagHDg7fDli2qVs8=;
        b=S+DeDtp9eEQg0uHPSC2AryFtBOTXp88+A+ztCYKdqkbp9nLgzHGP/jkBnz21BUQPW7
         CVvHXP7CPJpx7FC3gJgtI+0hrqY48XAoBi0BYe2cE+kZEFPx5th40CVw0jZEGLRGHyGI
         1ruQXgeNCzye1eojp47dKglQR1Y+DJpgGY+eLqa04vbC0o2pBOL5xh5If/GG6aGw0IJZ
         Gxah8BURoN414PW8hpqF1tiQRuF/ueeKjxl3ZPGgjwulY6VQ9wKFbxQffKnVxlHjUq+Q
         mNcIh0K+XO4jc5KuFws87WVzQIr3PNk1woOZEzyuPyp6qj5vrW3XjmMycLhggE82DhA+
         7HlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kFVK41JofwpvfmQo3kQReREBdDAkagHDg7fDli2qVs8=;
        b=uOTmHaed7zkh/y4NaMll9g0fVI7ZCC6HL3+LCD1fZDxotd4rCOaKAYvII5XC9RuJQE
         JMpC+shSMFPpPqwIngLKpeX9tuR9FFDL2/QvYqUGTwXpk9ow2SBCbzRkZ++o6vrIOuXg
         0OLX/ZjP2kHaq58LO/pVRIDV+Ap8u7bm6YYqm7spNjgCNu2nU7AEt5kB0WmDRdjI208O
         2WeBoyGjLDI8nXutcGK7WvUuwy2wM+VwtZjKmIDskau1PyyJqGi9VkN8yhlmkpZFw8sT
         MsLkSK2E4a6OBhGBkguaTvPfSkQ2fdoPU2wP0eAjQKFH43n2ZU3jR1pLbnWgYDCH7J2K
         cggA==
X-Gm-Message-State: AOAM531GGkAO07t7TXquf7V2zIf0CwFevA4s9yME5D4DC1EMZ+rNfRNV
        v2TuNwM/eNuSZfJ2EmmePAb/hTD2r1pR3g==
X-Google-Smtp-Source: ABdhPJyhViRGvDdBucQ9QDyhkCeAyyrxMFhf3aGJyJz05ncbEvxGqUxFf1p5LUH3CwP+QzanvtsaQg==
X-Received: by 2002:a5d:64c6:: with SMTP id f6mr2084311wri.330.1639007078526;
        Wed, 08 Dec 2021 15:44:38 -0800 (PST)
Received: from localhost ([2a02:168:96c5:1:55ed:514f:6ad7:5bcc])
        by smtp.gmail.com with ESMTPSA id p12sm4005801wro.33.2021.12.08.15.44.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Dec 2021 15:44:37 -0800 (PST)
From:   Jann Horn <jannh@google.com>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jann Horn <jannh@google.com>
Subject: [PATCH] kcmp.2: still depends on kconfig
Date:   Thu,  9 Dec 2021 00:44:33 +0100
Message-Id: <20211208234433.2392940-1-jannh@google.com>
X-Mailer: git-send-email 2.34.1.400.ga245620fadb-goog
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The manpage claims that kcmp() is now available unconditionally. That's
not true; from kernel/Makefile:

    obj-$(CONFIG_KCMP) +=3D kcmp.o

This new Kconfig flag is forced on by CONFIG_CHECKPOINT_RESTORE as
before, but also by CONFIG_DRM, which means that pretty much any kernel
built to support desktop systems will implicitly have it available.

But if you compiled some kind of server/embedded kernel without DRM and
without CHECKPOINT_RESTORE, you'd have to flip on the expert config
option to get KCMP.

Signed-off-by: Jann Horn <jannh@google.com>
---
 man2/kcmp.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man2/kcmp.2 b/man2/kcmp.2
index 7acfa8ef8b47..2e4495539645 100644
--- a/man2/kcmp.2
+++ b/man2/kcmp.2
@@ -317,7 +317,9 @@ checkpoint/restore in user space (CRIU) feature.
 process information via the
 .BR proc (5)
 filesystem; this was deemed to be unsuitable for security reasons.)
-Since Linux 5.12, this system call is made available unconditionally.
+Since Linux 5.12, this system call is also available if the kernel is conf=
igured
+with
+.BR CONFIG_KCMP .
 .PP
 See
 .BR clone (2)

base-commit: ae6b221882ce71ba82fcdbe02419a225111502f0
--=20
2.34.1.400.ga245620fadb-goog

