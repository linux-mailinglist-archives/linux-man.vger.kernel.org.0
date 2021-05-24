Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64A7038F2DF
	for <lists+linux-man@lfdr.de>; Mon, 24 May 2021 20:20:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233674AbhEXSVa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 May 2021 14:21:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233637AbhEXSVa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 May 2021 14:21:30 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AF10C061756
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 11:20:01 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id a4so29527630wrr.2
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 11:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oF1TEvbD66/8tVHjsVVnvpp05Ez5xIjETe7glax1kt4=;
        b=Kx0QpNufjVqABF4Dq/UyCMI8PTNVQ9LwcapDWe19jAKyhnNcJhiCpa4xRUOybklIYC
         zvcZXsOB7+f/q0jC6gGDKfba0wU7rK57N8tF5uMCNYuEk6GqwcGRhnbnmj58IGMdW/Fu
         jx5pHR9JM+aOVO6b4RVm9egWhvpmMCR693lkIyP9mgtlqd7FRG9l8AfHmrsXgGLtpnU5
         EyoPNmzuRTf8C5l7gqxFyOVhHo4HETQ9YVL2plobHniEZ82lLogJHtGXqQpgCTrdf1SJ
         aN8c6bQWZaDcvp+xcIZRs4mpPC27PBqOzxIENcNuno4rd4eJH2BGUmMYoSiDfOU9Al+N
         oDVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oF1TEvbD66/8tVHjsVVnvpp05Ez5xIjETe7glax1kt4=;
        b=ePU4TKFDmaiOUb0N3GOK+xiarxxYSiV1tmeZWXT9CXMJvlWXiv3cIfhyGvWijqACIB
         b8fATmpPymbZeNjm2oU1g4KZmnzMthm6myamj+L0FezEzr+yOMLJKRLHIIcDCr9OD6O7
         T2sc0OsA31ntoLh6hJAcL09VUB9eqRQWHZP6Uqzrh/Da65zYMxeijASv/OrBY8xZ2Enb
         pKiwJj94jbmBqcUCnQPSyi+Ay15UorIbQ/sYQaL/Q+fSdlMFc+ZkDPJn6wKN5MPOnsMh
         jp01B1CQNVCosNZJupMGaC24cMrMMv5eK90UxtaY3slga2jJrzQitl3T22xOVnGDgSD7
         lxGA==
X-Gm-Message-State: AOAM532PkoCeSpBeerWa01XkLmhNjHp2PiqED2Bp6aWDhdZ8EOvmd8ep
        vA/bKQkvzWJFN8zA9TmTGR4=
X-Google-Smtp-Source: ABdhPJx15aKY/SFpamh/DDKoT5Clg/ZNFxqDEwr80xwoH4Htr3neOA3gyE48K5dGTpqp4eQT1eBs5A==
X-Received: by 2002:a5d:5404:: with SMTP id g4mr23871908wrv.286.1621880400236;
        Mon, 24 May 2021 11:20:00 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id z18sm13522038wro.33.2021.05.24.11.19.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 11:19:59 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 08/10] shmop.2: Remove unused include
Date:   Mon, 24 May 2021 20:19:45 +0200
Message-Id: <20210524181947.459437-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210521232553.161080-10-alx.manpages@gmail.com>
References: <20210521232553.161080-10-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/shmop.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/shmop.2 b/man2/shmop.2
index c7e66af0e..52baed96c 100644
--- a/man2/shmop.2
+++ b/man2/shmop.2
@@ -42,7 +42,6 @@
 shmat, shmdt \- System V shared memory operations
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <sys/shm.h>
 .PP
 .BI "void *shmat(int " shmid ", const void *" shmaddr ", int " shmflg );
-- 
2.31.1

