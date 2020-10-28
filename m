Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E8CF29DFC2
	for <lists+linux-man@lfdr.de>; Thu, 29 Oct 2020 02:04:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728406AbgJ2BE3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Oct 2020 21:04:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729365AbgJ1WGd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Oct 2020 18:06:33 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 194EDC0613CF
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 15:06:33 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id v5so696758wmh.1
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 15:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=B9Sx49AXfvTbjBkK0tv89hIBiqwi5N1MUa2eG1Mxf+Q=;
        b=PFfPOdYFBEPFv40MpJeuwk+WMN9D4JOu3fJFUl1bc3lpj/mkFIaGTrdSVjcagVqgrH
         y94xkaW6kYxsw18F1gKsx8TI50M6WodnnR/S4S5QLl7BmnqazesdiBP6LxoIXkOihijw
         auwX/ZU/NlAQl3agROIhTiocIG6/Z5L6ao07OiyWEr+L2kq9aMeR3KPckK1V/iALFdrw
         dJKOqX2fi9bHtSx4ukq00vSz+DWaLXc4VDSDWrgs7NRHm1w9kRt04l4uNGnE5FhX0cCp
         bPJSQ25R3KUvZPnZErRow9j728slhMW7mRt+vyN25hnYLcoe0n5926xvJ0g9AJ61fq/c
         S2Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=B9Sx49AXfvTbjBkK0tv89hIBiqwi5N1MUa2eG1Mxf+Q=;
        b=l7hD1jOd7ek+Kv/6j3BhpUahBzaNxh97dqxrLFDfB/uZ6m8zZxhJ5oCWUdTMi/pLQw
         yhwvQhe3xcKteC+SR+DssJ8OFyTmmwWFf4+hliKzNNLhHvZPYOQzJgR8Id4E8nGTkWDm
         JXS5XgFUxQ8K/V6Wqm6zEJ88kn6wVdesTHzrWR2F6KJcUaNFpvjFDDBCVbNS9lcmrIeo
         qV9RlOFMQ6XDG4SLqoZi0aQyUdNZNvtySqyljBiXxxTL8x5w7oV0w/YWQhUuU3GmBleu
         PLcyb1oJjjsxbGx55QxnTCK3c4Cgw/qeZuO09ntE6VmfkL6Pc9Z8RTJ/7FXkU7o/ZaIV
         KukA==
X-Gm-Message-State: AOAM53063kkAKvl5ZOpNBhoC5TCcQm9a82KrXrgNK+xpPqw3n+gU1CiL
        mM7C5kzI398/CYT+NDRIcUZ4OT/ez5k=
X-Google-Smtp-Source: ABdhPJzMIQAlyxFTCX+m4HozVHO/dntGZaOzJPAWgoEVJArwBo2uGP7qjX64cR+OcSMJrfFeRItDiQ==
X-Received: by 2002:a1c:35c7:: with SMTP id c190mr6860717wma.7.1603877596784;
        Wed, 28 Oct 2020 02:33:16 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id r18sm3631926wrj.50.2020.10.28.02.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 02:33:15 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 0/3] Improve strtol(3) example
Date:   Wed, 28 Oct 2020 10:33:05 +0100
Message-Id: <20201028093308.86310-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Here are a few improvements for the strtol(3) example.

Cheers,

Alex

Alejandro Colomar (3):
  strtol.3: EXAMPLES: Delimit output string using ""
  strtol.3: EXAMPLES: As the default base, use special value 0
  strtol.3: EXAMPLES: Simplify errno checking (no expected change in
    behavior)

 man3/strtol.3 | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

-- 
2.28.0

