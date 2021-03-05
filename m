Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE2AB32F6E6
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229704AbhCEXvk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229948AbhCEXv2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:28 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3446BC06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:28 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id l12so3923242wry.2
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bMiccUfefY2Gtr226ElJf0uvf2BmgPVvU3vq2+zVeoM=;
        b=AivoJjv39XZYUSwGEn2ewHCkM33k7auuEcyNabHQGgsCbYIM6axrch6aqp6j2XCaXQ
         FklduurkHCL6UCw8p9yI3qB+angxwVNYDMNo2gKNIbokW//xmB4IMcZuGA5l1XNM1mfX
         WeSwKcRgl1KhIPgZPQPs+TnRvdyXBVcXul1xsJXVoJkPEe+IyqP+2tp/PlkdUMgegFK6
         Q9TTjCho/eT/Za3Le4xukkk5LnwRZ9InBGYAc0Y45etJGC5gJaqrrtM9OrwokoUE/Uvw
         3q1TZa5EDqhxzqRstRjzw4wMmF7dizQDHWADM+fYjwLhDgNcmAbEcbVm2n8N8DS1Fv1k
         q6Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bMiccUfefY2Gtr226ElJf0uvf2BmgPVvU3vq2+zVeoM=;
        b=Df0byYrAtD0P+eEsjkEDbvNGSybyKZEdV4JeVFyCzRBMHGRmDWffTd1Fk7wdGeUwLS
         On2/In0zASPnt/nAYwz8hLGu1hPC00qlMyg1bLabDE3DJYniFyUsE94O8RUpiZEqN5tb
         9XKLNo7JZjdSCohknK70o9uJpWnIDHWlHBD4N0SoAKK9Lfpppb9VxfEOEaZM0l2/V4ZC
         EVfoFESfZ5l6rOGP2vhsgkRt+iRkNxm250oMWhhu12TgAbuZGS6fTXcrzF45Fc9vc9CM
         tMgbcVZ+3Wm/uAaqw0t+QjcOKfBkVgLCFvq1OY7M35PiKGNwuq063NlCD8UrgvG2ftKy
         qSRg==
X-Gm-Message-State: AOAM530wptf+tXo0BNA21+ksAdMOniFMGnoSShMtoxmh7XcsCXt5wrBm
        wRUBMasCyMHTQXnQ5nlhyOw=
X-Google-Smtp-Source: ABdhPJy0Q0Cn8APXYdGokROxpzZMpuoFraefN+zLl6QGCJmO063U/EV+FjePMIZUzDNd5SpM8PqQrQ==
X-Received: by 2002:adf:f587:: with SMTP id f7mr11693990wro.147.1614988287002;
        Fri, 05 Mar 2021 15:51:27 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:26 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 14/22] mbstowcs.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sat,  6 Mar 2021 00:50:58 +0100
Message-Id: <20210305235105.177359-15-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in mbstowcs().
Let's use it here too.

.../glibc$ grep_glibc_prototype mbstowcs
stdlib/stdlib.h:933:
extern size_t mbstowcs (wchar_t *__restrict  __pwcs,
			const char *__restrict __s, size_t __n) __THROW
    __attr_access ((__read_only__, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/mbstowcs.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/mbstowcs.3 b/man3/mbstowcs.3
index 03078c81d..c79ba9044 100644
--- a/man3/mbstowcs.3
+++ b/man3/mbstowcs.3
@@ -21,7 +21,8 @@ mbstowcs \- convert a multibyte string to a wide-character string
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "size_t mbstowcs(wchar_t *" dest ", const char *" src ", size_t " n );
+.BI "size_t mbstowcs(wchar_t *restrict " dest ", const char *restrict " src ,
+.BI "                size_t " n );
 .fi
 .SH DESCRIPTION
 If
-- 
2.30.1.721.g45526154a5

