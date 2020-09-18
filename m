Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F5DA26FE7E
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 15:30:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726438AbgIRNaM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 09:30:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726126AbgIRNaL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 09:30:11 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A5A2C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 06:30:11 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id e16so5655759wrm.2
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 06:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F6yJzHOmZG+GbLySp/ORQoPGh3k4bIRaEuRrS4g/M9w=;
        b=ubptJnVUY8WniZSt7gu9nSvtsMPNvKQr4pLc8FTDlW/dek3M6QnJuXAqdM9Z8JOCGo
         g7BZyjTim3wGY5eYpO0QSN9FnKGNGbhQRxCl3obXNAQuD09fI/xU66D/CiJSPeOLpOjx
         D7bGgn/z1Db7G8bPO9DvIOeQ1JtQ14RWBpU5uV1xB6gvN2mwp3K2Vc+PTF18kITx1xrZ
         DCHpcTZ9oRzGp4/lYv8gbIrXDvaumDIXTE4Z9Ggq05JOp/et/3nyMSCOV73Qn1c8HXgu
         CGAPLhSCW6zGmVlTqK7L7IYSWDW3QmND41tuhdFtP/WzTSiIEKwnUH42LnkOp7StM0yz
         L8MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F6yJzHOmZG+GbLySp/ORQoPGh3k4bIRaEuRrS4g/M9w=;
        b=XYI6rHML4WceYDdcHZN9Q9PjXFG6MaL2ut/xCCCnEcqQo5mTMEruCaOXkFGp+K+ipK
         jVJuFhRyMn4P6mBFCqM/R2ZrpXb/ybwJyCSaRHZdgxk85aarruLrptuJTKlSOMMs/ZBt
         dHsPkCoMC0ncfj1kNgPaav/kBddsABK0J3zVbEufRqt6XhPcylbxppObA22xZsUNlUZK
         sGce5C3eKAp/abl+Qqey28duEDXsjByftmvvBPm8ltdBqJCX/QN2FLnENMHosj+Y3DXJ
         PUhtacnE2U/9Opckwm5uXOt2tpuwkNoDFcbeA66qzuWt6XeXi2FdiKPzVV+3PcJFlG0e
         GnlQ==
X-Gm-Message-State: AOAM5305LECjEVljDvcfwqsapma+GnLvmSa4mRBzUEnpUYpHqw5AgQ2a
        srAP2gKGxkx/AmyaTR7LJjU=
X-Google-Smtp-Source: ABdhPJz/F1ErYAMt/5NG4yo+v6CoNfuWKxKm30p1FGGyF/kpZCdQDQh1+fBBrKiaLgBta+23V8UZlw==
X-Received: by 2002:adf:dd44:: with SMTP id u4mr36253555wrm.22.1600435809517;
        Fri, 18 Sep 2020 06:30:09 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id k12sm5304764wrn.39.2020.09.18.06.30.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 06:30:08 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 0/3] Document regmatch_t (and a ffix)
Date:   Fri, 18 Sep 2020 15:29:41 +0200
Message-Id: <20200918132943.55424-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Documentation for regmatch_t + a ffix patch.
(apply after regoff_t patches).

Thanks,

Alex


Alejandro Colomar (3):
  system_data_types.7: ffix
  system_data_types.7: Document regmatch_t
  regmatch_t.3: New page for new documented type in system_data_types(7)

 man3/regmatch_t.3        |  1 +
 man7/system_data_types.7 | 27 +++++++++++++++++++++++----
 2 files changed, 24 insertions(+), 4 deletions(-)
 create mode 100644 man3/regmatch_t.3

-- 
2.28.0

