Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF52725F7E5
	for <lists+linux-man@lfdr.de>; Mon,  7 Sep 2020 12:22:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728453AbgIGKWc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Sep 2020 06:22:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728964AbgIGKVu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Sep 2020 06:21:50 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 426EEC061573
        for <linux-man@vger.kernel.org>; Mon,  7 Sep 2020 03:21:50 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id k15so15177709wrn.10
        for <linux-man@vger.kernel.org>; Mon, 07 Sep 2020 03:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=joJEtZo1LfcrrMs/iIGykB2lPNswA+K88U3g5zUjsMY=;
        b=qfTC1hvECg1ZF1MnOHeF0PnUYN/RyASx63jhwsDG2Sk8k+C3+eyY2tLiAprR7Br9QZ
         g0J3dZv28pFOZQt7z1r26bAufUNXbv/4TkQbzc3e8vSmqJm97TP+WYqDbnrr21a932yi
         zehoQg9UddvFllc6uqs4euMA/YvSJ3EuoBClM/qFtk7qkhDsHZbXP6tGA6pkI2Pd1wsJ
         9rLSHkWbJgCfQ3OHeZDnZVf6Ejeb0+Qojn6UiWUxVAqNXur20KmZPPXAfTyCs4tLPeN3
         N/V6TdvuhO5QfBFq768nSbzo6eTgrKLCUcFb2jaliJmnp/PFthbmYcOiznj58C1pI/2O
         EZGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=joJEtZo1LfcrrMs/iIGykB2lPNswA+K88U3g5zUjsMY=;
        b=n64u8wc7DGVCe9uOhfumb9ui/ROZ5VAaaOzKgn3+6wEB8Dw+sVfmeassRkce1Y457E
         W8JGBky3jpa3QGYVzxc499dPNJXesT1vnxtp6RhjbplFCsrXl6BUuzUei530M/mH+R0r
         yyvD5c47ma2XV600y17ipZxCFVq8fl3OT8V+AAynKIVClOGqRc5FbikaropwTPQAXDF+
         WkRuzArchQz/wFUABTg9WAlsjh8vfEHeJKUu7P7zjmY9QKJuzfT8HSEpDeuXhoQ9mb3v
         KRkBAQI49+zHscRYFXssyRXMxEMPiqnUWxSgU5ASCVNfI9r9d1U77LWJwS8etk4N1si8
         R2wA==
X-Gm-Message-State: AOAM533SyFPeM6U1hXjnrALnx5QFcKlBpLxutD9J8D3Yns34fTj+zFHS
        eFezreXDR93CUFHbaYXLXXg=
X-Google-Smtp-Source: ABdhPJwhReM/uUEBo4rm+u8OtqH8/spP4tvib7ibFc0Az6nXGIU7WT4FdOHdizm5ce70tTPdgGJCgA==
X-Received: by 2002:adf:dfc3:: with SMTP id q3mr20063611wrn.238.1599474107428;
        Mon, 07 Sep 2020 03:21:47 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id q192sm29530873wme.13.2020.09.07.03.21.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 03:21:46 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 0/2] fopencookie.3: Fix EXAMPLES section
Date:   Mon,  7 Sep 2020 12:21:15 +0200
Message-Id: <20200907102116.16924-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

*** BLURB HERE ***
Hi Michael,

I fixed a few bugs in the example program.

Testing the patch cover-letter now :)

Cheers,

Alex

Alejandro Colomar (2):
  fopencookie.3: printf()'s .* expects an int; cast accordingly
  fopencookie.3: Fix bugs in example

 man3/fopencookie.3 | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

-- 
2.28.0

