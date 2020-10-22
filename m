Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E51CF295E98
	for <lists+linux-man@lfdr.de>; Thu, 22 Oct 2020 14:39:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2898441AbgJVMjI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Oct 2020 08:39:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2898470AbgJVMjF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Oct 2020 08:39:05 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E32AC0613DC
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:39:02 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id h5so2191669wrv.7
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FSeF2HZcBO8G2ygnvz0yN+C6B3DwI5A9ITVuFiBuknU=;
        b=FSw9cIBoQkOGV1cMv7BUabZHQ1/5sog8sZhpoRKWxK+31DsbH75V0qBtX+X/wtCtDv
         z/9GLyVrxo4lxhR5wnD2BqTMwMQv9yzADf1JVvNFs3zHSE1jePXH0Jd7rti4alg5nP76
         kvWXVlchyVW0CL5+haLiwzKYGAo6AJZ7KQDzMLSDYgjMAM43iThNcSowcleirW8ZU3Y5
         GrRfvRg2n7HkWNDDDOAOm4N20OadKdFABrpgqGLfS/0q80ceLTKApGfpxEP+cs7NOwvN
         UM36scvWqBXsjoMtvyl/Z3Vk1Qs7URUmbiPdXkuuNlb48dsItARkufQ3Hr76sUshFVSF
         WusQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FSeF2HZcBO8G2ygnvz0yN+C6B3DwI5A9ITVuFiBuknU=;
        b=Tl3wRhPC3wQor5V6nFm534AUyPeN7lbDNcheyXhhW06MhNyv/jnQiCw2IlJOTCBLUX
         CaGYVeUXKyaltsdZaUz+EXm6QLZMSGAQPZwX4ZyM8GGRqV1Vv/HNfFX0L7YXbJgCVWb4
         bzkBlI4SsVzKhY564vyv0KjeIN94X/rYMQ2Z1/l2cX6ol2pMSToq1WCMVTWO7Hev2n7L
         zolld1LZk7py7IwpzkQ5CzrIV8B2q6CE9F731iUZ42zJANbvchKYviZPpOve8iHI1Fhx
         TrnmN0QMplUhb6/CARR4FNKFoNsk9SW0Dpem8DBrM5MsQMOglQVVFNz2EsRQkgSb01AR
         bxzw==
X-Gm-Message-State: AOAM531dscH/7qYCYdXcJhJ7h1BEFW+QT/RvLmUVmL6BIEuhBaoPNy7n
        f6658yE7WOsnsNnA/Svqht0=
X-Google-Smtp-Source: ABdhPJxBd2UrN3Q9FgXwhwCZw/mDyOcfqaYh4CRXafnci9l5bVNdYt3Xb+eK/ymU2hhVivEMJ+7bfA==
X-Received: by 2002:a05:6000:12c9:: with SMTP id l9mr2440467wrx.309.1603370341167;
        Thu, 22 Oct 2020 05:39:01 -0700 (PDT)
Received: from debian-VLC.home ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m1sm3573883wme.48.2020.10.22.05.39.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 05:39:00 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 10/10] queue.3: SEE ALSO: Add slist(3)
Date:   Thu, 22 Oct 2020 14:38:22 +0200
Message-Id: <20201022123821.22602-11-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
References: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/queue.3 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man3/queue.3 b/man3/queue.3
index 6cf13beb7..bcf5ce00a 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -1029,4 +1029,5 @@ functions first appeared in
 .Sh SEE ALSO
 .Xr insque 3
 .Xr list 3
+.Xr slist 3
 .\" .Xr tree 3
-- 
2.28.0

