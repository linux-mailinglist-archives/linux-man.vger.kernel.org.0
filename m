Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DECCD342934
	for <lists+linux-man@lfdr.de>; Sat, 20 Mar 2021 00:58:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229519AbhCSX6T (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Mar 2021 19:58:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229634AbhCSX6A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Mar 2021 19:58:00 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFB13C061760
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 16:57:59 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id 61so10712031wrm.12
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 16:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AalQtxKqNzJICSDr76veNrQX6Nec/a7Uu+4smyx1IuA=;
        b=evsT6WVJp/SJ5luueDeRxTFGuXeYvUqyEqo0MsW++5KfcPhg3Kf8jIAmzhOPQim7VR
         5eFLN+YRlXEr0BcxN+j8IfZQv1UVmUq5r8w+U2hlSdePTXvY00gwHze9QFHOmc76G1hh
         y44QuPkyQyBt5r1I9k/d88sGFTAbDgcYmXFBELmgn075yt7hLg7d37Ty7fxo4TIJJ0lC
         zZWU71g0zqqb5Bfl/f6f6Fs7U4VhnOZ/fGbGs0kZT2llznDHtVyFkUJdw8x0bqIjo9MB
         poN9qd4tcdiEJFFFd66wUe8qZTMvjgSZ9qN/NpZeLs0hOnTNz7a23OCAniSSD6r4e50K
         ttGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AalQtxKqNzJICSDr76veNrQX6Nec/a7Uu+4smyx1IuA=;
        b=tMdsVhad+7y5UXetKaQrXYIPDqQD4/zRLck3LLbS//lhfasscTgzJ7f9ac3hoYelmw
         PIxorv3xbCbp2Q1dpC1wtE0SwtDpzrM2qVIUWnybnghjNNOhW+0Rp0BM7OW2J0/7550R
         +RazxZSasV9dMri8ZhCYgBYdr9ZOQ167uMHPX0fECO2diOzMaZDeQ/khik0hw6RKUJrs
         JaxSQxPulNvuoODYdus2hGKRqiix3IgL5qMfpFgag+Tc9bkJ+Yzvl1ro2hqHS4Rdizce
         07fz6PTVN6F3/lJVaEpR4DzkOEFdbr/A3VVuszq6EtxVoFJTNH8FrDNXSrtNyJ/Uy2lN
         Wcyw==
X-Gm-Message-State: AOAM533MUzA3kbLfHqcy7GwfrobD+m8/1Ck78xv1EDHownQCWjTFatSr
        omECtvSqMLkL/3tDTq4MsoQx/eAx1xI=
X-Google-Smtp-Source: ABdhPJxUv9TF8C/82eCN7GZDtAKemqU4F32lKS4r5GWOxaBE0d1caCWKvpK/EWZp0H/YADHqnwbfAQ==
X-Received: by 2002:adf:fbcc:: with SMTP id d12mr6836421wrs.151.1616198278622;
        Fri, 19 Mar 2021 16:57:58 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id q207sm9327832wme.36.2021.03.19.16.57.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 16:57:58 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Josh Triplett <josh@joshtriplett.org>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH] exec.3: Fix description of 'e' variants
Date:   Sat, 20 Mar 2021 00:57:14 +0100
Message-Id: <20210319235717.28264-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Josh Triplett <josh@joshtriplett.org>

The envp argument specifies the environment of the new process image,
not "the environment of the caller".

Signed-off-by: Josh Triplett <josh@joshtriplett.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/exec.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/exec.3 b/man3/exec.3
index 211e06421..3d936d08d 100644
--- a/man3/exec.3
+++ b/man3/exec.3
@@ -116,7 +116,7 @@ The array of pointers
 .I must
 be terminated by a null pointer.
 .SS e - execle(), execvpe()
-The environment of the caller is specified via the argument
+The environment of the new process image is specified via the argument
 .IR envp .
 The
 .I envp
-- 
2.30.1

