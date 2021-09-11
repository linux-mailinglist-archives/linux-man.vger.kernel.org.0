Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5BF4C407962
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:02:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232924AbhIKQDN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232310AbhIKQDM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:12 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C0B1C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:02:00 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id n7-20020a05600c3b8700b002f8ca941d89so3462696wms.2
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mOJWtV+efvXKlFshlh80fuoXpw2HFItfteay310urHU=;
        b=PKINCOCGq/D6IY0EZFanT8EGn6EItGUtEP+uUIznPL+DhKekntxAo+YoNn8s3rT+qr
         3jJBjNlf6Vw9QiFDokwstgWPwaBjGK61w7TlRb3okDq/lmmjD1SZN7cHB/c7D84UGO8s
         h+RE/YZp8a8pdMLfdj2exy35McZV8R5f5aYWhfd1Kp0Pd8tVICRHYWlUmZpNAjAm2U09
         sPM01D6wF54OEqMinsq98eo5lwXX1M7Gdf0Et6KgNI4B5dmDAjM8MdWcB8sAiySDnoZr
         pLRNW33pkPVvyJ1Y8Q1uXXKhNM0lOqQNer6NTT/F5nYMq+ERjaQkZ8zeMUVNMclzNnKM
         2T3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mOJWtV+efvXKlFshlh80fuoXpw2HFItfteay310urHU=;
        b=TyBoqWN/cMJ1zEggda3XITFGgMY6fgH1/Hfyrvh0izxE3p7x3Isqg+vAeNFHofENph
         LhhIRS+QxM03nd0iz0bdfvsEmBV0DSCJWgForzPZMVOZFQDyJmWekf6DsUXFOm8cJhRQ
         hKWJaJYfrtyJ6UflT5Jo2Dg/ZffaOLiS6po5dxp0H+uZ4uZkJn+P5aN/NhXOVxOcyHhx
         ixMOEUckl2pLnR8uNC3eVrXnGbItmt9S46III5Du6biKOI7mptsudEh/V324Z9kxHaxb
         8uCoZkCbz+Nu2VXMkO2zAXIa79HFwp+kpNmlumkVIEYGD5ajQhvAvL4egR+23qGBzrT4
         O5zw==
X-Gm-Message-State: AOAM530kQTd5KHtSv05WCeDvliFGj5uq1sAPFPEKnnsWIT5/uIDFTEIO
        zPVxbCdXZKE+KvF1AWZzR5Q=
X-Google-Smtp-Source: ABdhPJxoV7CNu4Zs/PDjm1/9xNYX1JlgsRcmrK2cHoR2YX59TauR6JIH+sdxrsho+5fhgdPpoGIloQ==
X-Received: by 2002:a7b:cb02:: with SMTP id u2mr3285271wmj.103.1631376118666;
        Sat, 11 Sep 2021 09:01:58 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:58 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 35/45] symlink.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:01:07 +0200
Message-Id: <20210911160117.552617-35-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/symlink.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/symlink.2 b/man2/symlink.2
index 6c929101c..8b05fc081 100644
--- a/man2/symlink.2
+++ b/man2/symlink.2
@@ -33,6 +33,9 @@
 .TH SYMLINK 2 2021-08-27 "Linux" "Linux Programmer's Manual"
 .SH NAME
 symlink, symlinkat \- make a new name for a file
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <unistd.h>
-- 
2.33.0

