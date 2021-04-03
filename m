Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4827E35355C
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:41:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236753AbhDCTl6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:41:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236736AbhDCTl6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:41:58 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 551D0C0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:41:55 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id x16so7479170wrn.4
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lKHL7xxGpUL+d+UpVuRwD2E0iUbd5YaO2mOPwYyxNBg=;
        b=mjxt5n2soOic+s+mWBXrC/ICSU0xHxC60WvWTk//6M+RO7WnxM9BGoO33q2gVxZqGP
         8+ezGTIvvpr+5EX9s/pV5EgxWFT9Cwgu1DsM4jdxcCgBeV4uOSGOixxThgKrQXgeqRj1
         DrinT5ButyPCv7buNz5JsdPn4pzdc5jx4oLmdFleRoiZBzRnuc2ocCJoLtVl/DkKScGC
         jmSlqjOopnbKXlQz4vHbmJ2sUVLmuXc+C/RDrTXXmABDB8TTMe2fn5xzjAIVRrlRH+sR
         1MDVN3U/PM9WB8CHDdaSyoIGyuq/HlzyqRmhh8Vim73y3euuF8QraTTCQx7DrfHLKkly
         X15Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lKHL7xxGpUL+d+UpVuRwD2E0iUbd5YaO2mOPwYyxNBg=;
        b=dnzceoZUgg2x0e7macj6JkUmvs51WlzDARVOwHYP+kyBP00/FCM2AavnumVgMpCx9G
         ifMbeGjvxrdoGs4tY6DioR0OkQEmQNKK+UDciupSseur2NHHjigWLNmoHh/42OKnPoaC
         HJEkWc+IaGftIpYeCLrQvIyuqb8VJJTvUenQuKGCbQxq7gzVo6OOr6JV1XnPthzgPdND
         xOighs/Th4s6IDHbgO5+S+uRvoXQBSkAMUYCFGFnWPUDZRdHKiTz2E9rKlFVESzTcIEY
         GPHRJvXs3/vYOk6NvbkW6nfyeu3rb9lNZ5hOXw/iSb1KgLBiq9swq7aA/OU1BBXSzU7z
         +R1g==
X-Gm-Message-State: AOAM53272jvRLETkGIWJzp8eqiaCFijbUGAkdhdlfRIablcRDhxNfk3R
        5b1L5D3qAjfbkhVWaTj3og8=
X-Google-Smtp-Source: ABdhPJx16CYOC3/VDx0+5cm8nEcvxSxXJDpOhOZEtX0txayCDf5UZBJRLm52iUU1ZPwJov3ouL6jcA==
X-Received: by 2002:adf:f083:: with SMTP id n3mr20959204wro.134.1617478914199;
        Sat, 03 Apr 2021 12:41:54 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.41.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:41:53 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 09/35] arch_prctl.2: SYNOPSIS: Remove unused includes
Date:   Sat,  3 Apr 2021 21:40:01 +0200
Message-Id: <20210403194026.102818-10-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

AFAICS, there's no reason to include that.
All of the macros that this function uses
are already defined in the other headers.

Cc: glibc <libc-alpha@sourceware.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/arch_prctl.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/arch_prctl.2 b/man2/arch_prctl.2
index f8073d625..7ae5b350c 100644
--- a/man2/arch_prctl.2
+++ b/man2/arch_prctl.2
@@ -28,7 +28,6 @@ arch_prctl \- set architecture-specific thread state
 .SH SYNOPSIS
 .nf
 .BR "#include <asm/prctl.h>" "        /* Definition of " ARCH_* " constants */"
-.B #include <sys/prctl.h>
 .BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
 .B #include <unistd.h>
 .PP
-- 
2.31.0

