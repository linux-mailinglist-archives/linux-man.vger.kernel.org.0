Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4FDED3316C9
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:55:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231308AbhCHSys (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231311AbhCHSyd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:33 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE963C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:32 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id u14so12611158wri.3
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rLsFjN+Exl2DzKNvjDznri6PodD6CUlqyITRugu7FhQ=;
        b=GtcxyHbEKeFv5ssA2gFCmi/cIn3x14TFHEuw4LpET/MsVGtvGMqV/DWbWXoaCPR9vo
         To/uaE3DjYCLsrnedEUmIdkEjXmh16Mldlq2ghcy2Ob69Jw1AZjtrlMY0Tjq0+ZVcpmA
         PzqsbiuXpxUr9I8Lrd0D0bvzkwG08cbDSaOxdu/Nhs912NB81dr0lEkJhkWGUDb4i41e
         CbKuaPrBHeyDHE0go90TN9C7Rh8IDKBDQSgXOiFjrjAnuI8Nb5vZvu9HFrkp69fwm5ob
         ygYHcQn0wkpCtTMhk7KCs9RFr7xRmLSPOdIyqtoS2MoK8ijTvZMOqA2lxzvJAwHNFTiI
         N5/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rLsFjN+Exl2DzKNvjDznri6PodD6CUlqyITRugu7FhQ=;
        b=DLykFkalvVRCAEPnFMiL/U1WjBlFXr9Q5zMq1Kaea/QucNK6EE112r4yGRk1Elakgl
         juJgC9lDQsFdwEzmYwlGyqrhEpSzbajc+kn4TCY7vMiD9CzKyWWmQwGt1W0fSJoqQgZo
         pMXKYNGYKzpXWzLGs8hUDAG/GVwFd33Z1YX7u+fV+Qf+3ooF2AWcVrV14IF3BkyR3uJV
         KbLi/M7ud58IrnlRbhHkgCgZ6Q/6hwt15twE/UcydXS+hzOZxiP/4pcVIdE9lSNwCu73
         K+DNVK7hIMgrrtV2l5Vvj3O/nTH0y6XTKs6KSyKjYKPbSMeCf1qBTKE1SsYDXYb/6v44
         2P6Q==
X-Gm-Message-State: AOAM533zyfh/XeLx/kGb6uuC9mWowBBYOlksmpwMbYi2WAiyilN9MlgT
        k/H472ljRhHPhgOdNvPrh0Q=
X-Google-Smtp-Source: ABdhPJwi5TvjyKbjwo9BCxUvNTaD8ZXvGlAm25Iq4figH8+q21NRCgiCXdczFYyfLkwenfPaWb+6kw==
X-Received: by 2002:adf:e481:: with SMTP id i1mr8968275wrm.63.1615229671709;
        Mon, 08 Mar 2021 10:54:31 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:31 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 23/23] scandir.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Mon,  8 Mar 2021 19:53:32 +0100
Message-Id: <20210308185331.242176-24-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in scandirat().
Let's use it here too.

.../glibc$ grep_glibc_prototype scandirat
dirent/dirent.h:293:
extern int scandirat (int __dfd, const char *__restrict __dir,
		      struct dirent ***__restrict __namelist,
		      int (*__selector) (const struct dirent *),
		      int (*__cmp) (const struct dirent **,
				    const struct dirent **))
     __nonnull ((2, 3));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/scandir.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/scandir.3 b/man3/scandir.3
index 262e125c1..50328130f 100644
--- a/man3/scandir.3
+++ b/man3/scandir.3
@@ -78,7 +78,7 @@ a directory for matching entries
 .BR "#include <fcntl.h>" "          /* Definition of AT_* constants */"
 .B #include <dirent.h>
 .PP
-.BI "int scandirat(int " dirfd ", const char *" dirp ", struct dirent ***" namelist ,
+.BI "int scandirat(int " dirfd ", const char *restrict " dirp ", struct dirent ***restrict " namelist ,
 .BI "            int (*" filter ")(const struct dirent *),"
 .BI "            int (*" compar ")(const struct dirent **,"
 .BI "                          const struct dirent **));"
-- 
2.30.1

