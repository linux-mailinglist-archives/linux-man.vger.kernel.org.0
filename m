Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E3685457FC2
	for <lists+linux-man@lfdr.de>; Sat, 20 Nov 2021 18:12:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232204AbhKTRQB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Nov 2021 12:16:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231557AbhKTRQA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Nov 2021 12:16:00 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C349C061574
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 09:12:57 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id i5so24077763wrb.2
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 09:12:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YTvTOZV6AGS8tv2eqKPc4+HZqO++IhryO2fSx3Tt7uw=;
        b=RNVTQHHBnaE9ZUapWhlscAES+wd5mOc98E/phvKC2SzMBYsCVdc20t+9VRL+4Qhn9R
         kc+eJLbbYlecN/vKB6oPw0hQEwyq2k/Lmz0MsrCt/wB43zflgR+KCpyZ9TSuVwW6SZAA
         e/lRHlbnY9q0O60Fp9ZHu39Qz4R1X0oY/4cQDiT3Mww9sIPSjrHxXSjbx4QyvzAHqJxa
         5EPmrdVHPedQupLf/OIfV7BU0iFp2to3Ygr2XKeJVvmRRMW5V4ZbLn8TgcmZWjJ1tIiy
         Rq0fCxKOOyhYr8UcgPGu1tmLnJBx4X3nso5VcRAD8zyeOQyTsrOz6OU566YSBgx4UzH8
         AE/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YTvTOZV6AGS8tv2eqKPc4+HZqO++IhryO2fSx3Tt7uw=;
        b=FtxvoF11LmtT+jcIcHX9z27NV4ReQKyDtDjbXGDvlYetfnhMAPyJFIhgMiTEQyBvqg
         FqumsnVq+WCuAPS2s8dWYo2nto0YzYL3Ux04eJ458oLhDZq5pOQjwsnpvGzNfkh8dxWT
         6y+qjA1cG8Bs0mYO04AaheQaaG6TgDJfsgfLfNA6Exl9r1A8ZrZc5RA4SlBU7AHFb8Ty
         MY2maVbH8vxenWrr/fjUbMC7AWmVqs1vRxRGDDjRbZ22RzcVgbCrIS4lq7THm4egQiqQ
         OygT4CQ6s2tgXf1c0q38BFEIaDE76chVDGHNYdKuqcGTRMP3RFmdvs+9EmOHlZsaQ9x/
         jF6g==
X-Gm-Message-State: AOAM533GwSOjCjCXXY33D+mJ3q6BJrtGiaI84EotT77RZXuFB18PpP1f
        6ill6XScdFT9LyeAKfBE+VENqOZH4OA=
X-Google-Smtp-Source: ABdhPJxmDkxx7Zbh6Nt7GqbeN03B4vdQ1U0birVrvvCwsz90VQZsI/j1ZFO1QZhFvHSbgWO8rsCQqw==
X-Received: by 2002:a05:6000:1862:: with SMTP id d2mr19639040wri.203.1637428375935;
        Sat, 20 Nov 2021 09:12:55 -0800 (PST)
Received: from localhost.localdomain ([82.114.45.86])
        by smtp.gmail.com with ESMTPSA id n8sm3108829wrp.95.2021.11.20.09.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Nov 2021 09:12:55 -0800 (PST)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 0/4] fanotify man page updates for v5.13
Date:   Sat, 20 Nov 2021 19:12:49 +0200
Message-Id: <20211120171253.1385863-1-amir73il@gmail.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

This is a re-post of updates for v5.13 that I posted last March [1].

Thanks,
Amir.

Changes since v1:
- Update comment regarding tmpfs
- Document kernel commits

[1] https://lore.kernel.org/linux-man/20210318160817.3586288-1-amir73il@gmail.com/

Amir Goldstein (3):
  fanotify_init.2, fanotify_mark.2, fanotify.7: Configurable limits
  fanotify_mark.2: Update w.r.t tmpfs support
  fanotify_init.2: Document kernel commits

Matthew Bobrowski (1):
  fanotify_init.2, fanotify_mark.2: Document unprivileged listener

 man2/fanotify_init.2 | 101 +++++++++++++++++++++++++++++++++++--------
 man2/fanotify_mark.2 |  21 ++++++++-
 man7/fanotify.7      |  35 ++++++++++++++-
 3 files changed, 135 insertions(+), 22 deletions(-)

-- 
2.33.1

