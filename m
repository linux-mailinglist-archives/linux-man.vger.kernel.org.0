Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E0C63D968B
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231516AbhG1UU2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231433AbhG1UU2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:28 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4877FC061765
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:26 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id o5-20020a1c4d050000b02901fc3a62af78so5240761wmh.3
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4AH2EtWZstTGwgoaJpwf1jyNW4QP6knmlNHkLLFRP48=;
        b=Lu0B76gtqNV4+jxzSvGPdS8Zk+tndx+7MNJJhMf4yya1HE3YFgy+/xjfUAdGRDopoO
         ebPA8V6fI3DL/MRT/PSVyuSomlGCrqN6/jKMUM/BomUCtPmaR2VFE0TfS1n84weVyc53
         SCRAOOW2aKlUsdhminXwagJ9r3UcHqgOLCmeyIfo0LFzgRx6sLG3JW6Y8n26OahGE+Oh
         2itmKrF9hT1XzkO92jzix0Jt3h5HUoonDXqQwfO3pnayjj+Ckx9K3S4EMiSXrdXUI8gT
         sM5SngPqpSs5glVz+NmUNRnbegPSj30KUL2JuMYedy2B10koqXmsaEBCUlJ6MdeiOBRZ
         22yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4AH2EtWZstTGwgoaJpwf1jyNW4QP6knmlNHkLLFRP48=;
        b=WsViZRP8wqlP1UxgIUvdG9Y+THUDWCMbxX09QFIF2b8fcs3EEIFJm2TzPfp078UFHB
         W8lNysd+PFJ6yvizioG3+dmrvu04M9GKf4TbU9wdd8+eZaVobqGAWmjIIwIqi+HqGX9M
         hxStRU7byuSHytKRYZjlYbXMfRItv4cDs4rBVbqS6F0rgVnmLCfC9psunWinYE8M7sDO
         PyaNJghzJnUX3iFT/83tKGy0C3uGDqoOSpe7QG/LAxCmjm4eQQO7YMH2fx3NZWGXRSdL
         o9kg/BKj44HAOTVLLMC9ZsAOegbXLIfuVCij+650M95iWta6hKfqYAp0YEFTsMHbgHb4
         cbVA==
X-Gm-Message-State: AOAM531kX9zj0jgKh3UyDlo6MiMkMPPCtic9H0du5+BazEJelnqCegTO
        rIjlqOx2CrbS5xhYAktOHrHQlpRJ+VM=
X-Google-Smtp-Source: ABdhPJzu4nCIc33i14QjElpIGkOMXv4eALORYmM4XSFhz5G5j82n/mi+qx4ZRaKPKPyuTp6LZ1hqAw==
X-Received: by 2002:a05:600c:206:: with SMTP id 6mr11219105wmi.137.1627503624931;
        Wed, 28 Jul 2021 13:20:24 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:24 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Kir Kolyshkin <kolyshkin@gmail.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 12/32] capabilities.7: tfix
Date:   Wed, 28 Jul 2021 22:19:48 +0200
Message-Id: <20210728202008.3158-13-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Kir Kolyshkin <kolyshkin@gmail.com>

Add a missing comma.

Fixes: 3dcdef9437fafb
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/capabilities.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/capabilities.7 b/man7/capabilities.7
index cf9dc190f..9f8f0087f 100644
--- a/man7/capabilities.7
+++ b/man7/capabilities.7
@@ -215,7 +215,7 @@ Lock memory
 .BR shmctl (2));
 .IP *
 Allocate memory using huge pages
-.RB ( memfd_create (2)
+.RB ( memfd_create (2),
 .BR mmap (2),
 .BR shmctl (2)).
 .PD 0
-- 
2.32.0

