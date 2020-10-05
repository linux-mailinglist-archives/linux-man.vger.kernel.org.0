Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A72128426C
	for <lists+linux-man@lfdr.de>; Tue,  6 Oct 2020 00:13:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726458AbgJEWNH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Oct 2020 18:13:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725870AbgJEWNG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Oct 2020 18:13:06 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F51EC0613CE;
        Mon,  5 Oct 2020 15:13:04 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id e2so1063259wme.1;
        Mon, 05 Oct 2020 15:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=opXg3DNLE1Hq7nY9CYlvag4DFBGykwv3/vPigtoFB+Q=;
        b=CyVcSDQjPY6tb6KDjXAaXDLbyBPkOb1liLoIUo6+6vYorTEQEJOn2gSQpzJFxG8jNv
         MY+8pBwF6LetdIrdD2YcrkTdOdoY1lseV8L24+DZ1hRlk1vvkIVay3DHxM/BHBEzl2yS
         MlDYmU1buWtjjYMmpfnGpP+Cg7f2PRekGxWp8KZmsCZecKQ1T0zbjxUge/AswjCcFN0c
         s0wv725Yxegw5rmYSNQRCmm9Vqk6l6XVSz93uj66BTf1nP1+1AeWfMwxiZJF4DevE3xq
         06hEP3sRDMHEliPKQknGV8djPjGeIqK/dcAotsaAB3w41XXZRHFXkhwin9FcL3i3FVXZ
         qOCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=opXg3DNLE1Hq7nY9CYlvag4DFBGykwv3/vPigtoFB+Q=;
        b=JdFMScZeV39Z4Cq3AYsiSh/OuUedmuaMun1l1OTKw7ICWpV5vrk54Wqzj4WylMpUTI
         GTxhw5JiBLjz6Xy2E8QI/H9F2TNUZXfUpo2Umkv4GXWldwwTjT7yUm+LFtJhswAWkzqM
         b558HYH0lhyOttr1K2bZNfYCRGyWBTQS81qpfflA2FnFKpOv8Ygu8zCnw5dlPylMQHTe
         JZ09pys2jSJJ05e3h8YoA0PZWD5+BLsmDGAyzPmyAAuScQsBVVPl2GvbKuEKMEiCp6aZ
         5zIjeMUofoLhuAFfoEdIrgGoEauQBT9d7MXq7b5K3gvQvXGEWzodkCmLwhLSq6dyUgvq
         BUpw==
X-Gm-Message-State: AOAM530U4gckpRd2QxWrEXdlnn+z2IAYo5ErJVWQk/Tc8HE4BBdws265
        g/xBc9D+fEMmJd2Uh2skLupeaZ09QE0=
X-Google-Smtp-Source: ABdhPJwpYDv0yXhx9o3mJtV9SABXSqejr0G6obHVp2N0iOXcIX+9A0NnwOtKAl6mjIVEGScfO5e7yQ==
X-Received: by 2002:a7b:c259:: with SMTP id b25mr1380434wmj.141.1601935982976;
        Mon, 05 Oct 2020 15:13:02 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id g12sm1552581wro.89.2020.10.05.15.13.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2020 15:13:02 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] off_t.3: New link to system_data_types(7)
Date:   Tue,  6 Oct 2020 00:12:48 +0200
Message-Id: <20201005221247.13065-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201005221247.13065-1-colomar.6.4.3@gmail.com>
References: <20201005221247.13065-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/off_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/off_t.3

diff --git a/man3/off_t.3 b/man3/off_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/off_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

