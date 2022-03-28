Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D92454E9F3C
	for <lists+linux-man@lfdr.de>; Mon, 28 Mar 2022 20:55:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237825AbiC1S5f (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Mar 2022 14:57:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237116AbiC1S5e (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Mar 2022 14:57:34 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F8A4DF0D
        for <linux-man@vger.kernel.org>; Mon, 28 Mar 2022 11:55:52 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id h23so21692463wrb.8
        for <linux-man@vger.kernel.org>; Mon, 28 Mar 2022 11:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M0XKKyk093aCKC0Djv9kutRM6syGvHaZUG+7Vs2X/jY=;
        b=DetFCjVhMtVhwStVBrvM2Gqxw6L+Z70JVMls8ihfe589LQGN/Ggugq6IVzv3mfVaZD
         8065rw6/jGqeGb1G+Wem9R9jXTJiKQbPIBAVl+RNgT5vepO/W8imiF0HH5NSFwbeRoTd
         of68jeINQT3mdOzIjUrMSiKvId7uXBns2qv3o7GhgtFA/JfZ0f/EEVmyTJQauv1hh73b
         Ubmwh2YkVMx5JbWofp2ka9o3VtMSFD0r3U2K3XIr2UdhzlnEMTQO6QcTCwle2q3L4ykq
         MXRZPznimRIgAt1bEF7ad0Dp93XbTcIx98s59jyuXvoxqY5kD69yC/Vpb8IxVkKKBM7f
         JS2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M0XKKyk093aCKC0Djv9kutRM6syGvHaZUG+7Vs2X/jY=;
        b=UDAMWWlfTr48fhmYTrPW196IHFRCUjc4yTq6yukTsGc27+d0vLG1B8xf7hxOYxw6C3
         mFPaKhDOV8g3TjO2nFMQoSlJ/BxzwMLolF9HxGCcaiXzGTxlTpjP+DDmeIUu1yi2nYRC
         IVhfMDRS2mi+31fRo678YywPhaPs+f4rPlAascIYFk9O5x9frqOOOJOiLcG/y/kAgmrk
         NqXcgcBwrHtSNhESm8XcqrSX/q8PhMUxv0DI83NdjforyaqVVw29CSYEv68u/r9gFmNY
         Dw4ZIBCAJFq2lFJmJCZrSEeyOnY3RehVC+EQ6UGfEaK5XRmfWCI/XPe0tXa4p/MPuLWe
         Bo7Q==
X-Gm-Message-State: AOAM533Xv1EMkIhNxPoTzo5aB/m/97aeczQsqUTVN6BEQ7+617NZ0sAu
        Vy48V9+zVAlL6fR5VnwesXYj+5ECqeezHQ==
X-Google-Smtp-Source: ABdhPJwVwxYFw+3ZDAkcrbbsArR/npMq5j67YGtvFvLP7Blo5IcbmITH7zGl535h/rn6X+KoysC5mA==
X-Received: by 2002:a05:6000:1acb:b0:204:1ce4:7c2a with SMTP id i11-20020a0560001acb00b002041ce47c2amr25006993wry.234.1648493750876;
        Mon, 28 Mar 2022 11:55:50 -0700 (PDT)
Received: from dell7760.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v4-20020adfa1c4000000b00205c6dfc41esm3190060wrv.18.2022.03.28.11.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Mar 2022 11:55:50 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        NGINX Unit <unit@nginx.org>, Jakub Wilk <jwilk@jwilk.net>
Subject: [PATCH] uri.7: Update RFC reference (2718 -> 7595)
Date:   Mon, 28 Mar 2022 20:56:22 +0200
Message-Id: <20220328185621.7650-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

There's no significant change that affects this paragraph,
so simply update the reference to the obsolete RFC,
to refer to the current one.

Cc: NGINX Unit <unit@nginx.org>
Cc: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/uri.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/uri.7 b/man7/uri.7
index 50121b24e..a2401b0cf 100644
--- a/man7/uri.7
+++ b/man7/uri.7
@@ -517,7 +517,7 @@ path, but the two are equivalent for an HTTP URI.
 .PP
 For URIs which must handle characters outside the US ASCII character set,
 the HTML 4.01 specification (section B.2) and
-IETF RFC\ 2718 (section 2.2.5) recommend the following approach:
+IETF RFC\~7595 (section 3.6) recommend the following approach:
 .IP 1. 4
 translate the character sequences into UTF-8 (IETF RFC\~3629)\(emsee
 .BR utf\-8 (7)\(emand
-- 
2.30.2

