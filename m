Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72A8C4968E7
	for <lists+linux-man@lfdr.de>; Sat, 22 Jan 2022 01:53:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231127AbiAVAxK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Jan 2022 19:53:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbiAVAxJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Jan 2022 19:53:09 -0500
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B043C06173B
        for <linux-man@vger.kernel.org>; Fri, 21 Jan 2022 16:53:09 -0800 (PST)
Received: by mail-pf1-x42f.google.com with SMTP id w190so4147858pfw.7
        for <linux-man@vger.kernel.org>; Fri, 21 Jan 2022 16:53:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LdPvQM7xyzmxL1NnMK3xGr17DUtxTPoVjaUbZSyOSk0=;
        b=lvJ2iiD9cEHl9Df174bAVpqfqA/drH4Zl92OhmIlH9wTVVqMpt7ombWHUWNauq6jL4
         irnTn/mq//AGL7VqzrtZanH1C0nO325W0VrEQ4O6A7LJQ5MtDNsHezKqTi1ZVMrzjfbU
         79F4GkPiBoiy0mwhJsYl2FAg+KiVmIx0QZnXt0q5nUHIbDYu5ZX0eXVQsTUmh+UlrOuL
         eFeMwi8zYvoh+Kbxid+60O30rXYtQCQTP/3tB4f0clDSKkoVWwsOSrKSTJ9HzsNuczSY
         seUMagE07cwSHgIAJNkn1uBkpXHXoqbJbjdh2DvqN9cRFQmbhUowKFnGoSWz0qgV6c+m
         9x7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LdPvQM7xyzmxL1NnMK3xGr17DUtxTPoVjaUbZSyOSk0=;
        b=Ks4zv2ZuodnXIatl1eDoWSOBLW4HId9RPHRE+4jnw0NXpckU9orDmZ1WPmbW7s6Lkx
         TfwzGHk+4JiLOEgI33EDAR3DttHPJdzCMRsZ7MKrYHe8fhSZvvHU1aicD2LDKuVLaxDT
         MEvS7y5qn79i2JPckL6aj3cAyy3zpIFO7gQdMHX3ykuMKUlZ0Ynu2GBaUV7BHesqTLl/
         Z8CDKX2XI1fTIN/wrMbc1EgWUwlx+z7/Vz1WAhVTsQQVstbDJiQI0jgpFHVX4nCwQ6An
         G35GlyDf3ZxzMosXOnqVQuwi58RGkkuStyystRcXR3kHpbe8FDXVPVr7NdY2wD0ON6ax
         oUkQ==
X-Gm-Message-State: AOAM532SkUP35hUUGq/qsuyQhXrm5VLdqMnsFddhu/7GPDgaUX0O1nQL
        vL1zUvGH3WuhUEmhEPjydOW4UNeq3uE=
X-Google-Smtp-Source: ABdhPJy7vZq7SIzFeCOHiyB71r7WYbNnDiTZgmitJbwkmAxNLfjSnSNekJKtnS+r58Ievx5ndLBHHQ==
X-Received: by 2002:a05:6a00:168b:b0:4a8:d88:9cd with SMTP id k11-20020a056a00168b00b004a80d8809cdmr5859317pfc.11.1642812787972;
        Fri, 21 Jan 2022 16:53:07 -0800 (PST)
Received: from kir-rhat.lan (c-76-104-243-248.hsd1.wa.comcast.net. [76.104.243.248])
        by smtp.gmail.com with ESMTPSA id y13sm408658pgi.8.2022.01.21.16.53.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jan 2022 16:53:07 -0800 (PST)
From:   Kir Kolyshkin <kolyshkin@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Kir Kolyshkin <kolyshkin@gmail.com>,
        Aleksa Sarai <cyphar@cyphar.com>,
        David Herrmann <dh.herrmann@gmail.com>
Subject: [PATCH] fcntl.2: document F_GET_SEALS on tmpfs peculiarity
Date:   Fri, 21 Jan 2022 16:52:51 -0800
Message-Id: <20220122005251.1441343-1-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Currently, from the description of file sealing it can be deduced that
unless the fd is a memfd, all sealing operations fail with EINVAL.

Apparently, it's not true for tmpfs or hugetlbfs -- F_GET_SEALS returns
1 (F_SEAL_SEAL) for an fd opened on these filesystems (probably because
those are used to back memfd files).

Fix the description to mention that peculiarity. Not knowing this can
result in incorrect code logic (see [1], where the code mistook a
descriptor of a file opened on on tmpfs for a memfd).

While at it, clarify that fcntl does not actually return EINVAL, but
sets errno to it (as it is usually said elsewhere).

[1] https://github.com/opencontainers/runc/pull/3342

Cc: Aleksa Sarai <cyphar@cyphar.com>
Cc: David Herrmann <dh.herrmann@gmail.com>
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man2/fcntl.2 | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/man2/fcntl.2 b/man2/fcntl.2
index 7b5604e3a..f951b05ff 100644
--- a/man2/fcntl.2
+++ b/man2/fcntl.2
@@ -1402,10 +1402,23 @@ file seals can be applied only to a file descriptor returned by
 (if the
 .B MFD_ALLOW_SEALING
 was employed).
-On other filesystems, all
+On all other filesystems, except
+.BR tmpfs (5)
+and
+.BR hugetlbfs ,
+all
 .BR fcntl ()
-operations that operate on seals will return
+operations that operate on seals will fail with
+.I errno
+set to
 .BR EINVAL .
+For a descriptor from a file on
+.BR tmpfs (5)
+or
+.BR hugetlbfs ,
+.B F_GET_SEALS
+returns
+.BR F_SEAL_SEAL .
 .PP
 Seals are a property of an inode.
 Thus, all open file descriptors referring to the same inode share
-- 
2.33.1

