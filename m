Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60FFB280225
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 17:07:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732213AbgJAPHB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 11:07:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732414AbgJAPHB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 11:07:01 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80F77C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 08:06:59 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id o5so6186011wrn.13
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 08:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=agvrGpgDrH5qNLTLM7psr6FXV6CRbe2pCP0Jtc60da0=;
        b=ibehrp+vvB8cEknqLrJvJmIkU662BL0Vk0gwtTRKoIhWldhGIHP/tFiYZwYwIRD7Tv
         4lkcmeQtqGPxbezA0ypIUJM1DBnX+kgpZXR2j9XFaBVRLalfaR5wYcIIWZjAwbc6pYj6
         yC6WkXNdrSNfnahieL75WYrVDDRUZylhFCysy+qfLCxqn1wFxk5l/5H+WKsQOft5fsuJ
         E+LFkq36T3l761iVMWMdXgeM4674cuSW+jH+6TF31SvaE5Rc8A2KCTGIkPpqoWdBsYPs
         1696FFBcOzVlD2r1VknBQUrVDAe3ryqn2ZPLWujPtC32/xJCXLY88uOVKYQaPcJHeMtg
         P14A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=agvrGpgDrH5qNLTLM7psr6FXV6CRbe2pCP0Jtc60da0=;
        b=BB3XReLr1kPTXfbeXyroA5y08br6U0HfVphcWsHHdGziMWNtaRZvRujGuE8pItqZTv
         lftYjQJgE44otx8cUOIP73dzoaJCwv8ibP7JP88LKinwv6Tnn1VvJ/xQ2aqsQajfa2Tg
         gELPnnk8dcA3dONVz3k088lXGdKN201EswC18CUKuj3A13yF72odL+hr8fUWGBJlO5eM
         w/NnMVH5uPQRFUe7ZSF3QXx32gxOfcT4tblw91UbwchKtnwmGkKH9MHiR7uQHTmLd4Ac
         few25kCXFujyxJB3EuN4rzXjsJUiYSaoE5vNh3cANJKzqK5KySkUiaa8zL8c29MBsQqG
         A2bQ==
X-Gm-Message-State: AOAM530uQncrxN7bc6krZ2945gX6zmp2FbzJ2GKoWtNVHxlULHfddjVr
        VF8soHV5aMBhgILtlkArgtgfvxYnVp8Neg==
X-Google-Smtp-Source: ABdhPJzPUfaekBNaCnjr8Op1ahcsSXKml9SUEEuXHWa4LmF5IFwTAfo6ZBL8y9Ti5ITWuOuLWbISiw==
X-Received: by 2002:a5d:40c4:: with SMTP id b4mr9574693wrq.151.1601564818247;
        Thu, 01 Oct 2020 08:06:58 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id f5sm351238wmh.16.2020.10.01.08.06.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 08:06:57 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: [PATCH 0/2] Document void *
Date:   Thu,  1 Oct 2020 17:06:37 +0200
Message-Id: <20201001150638.102544-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

This type is very special,
so I will probably have missed some details about it.

Also, do you like the link name?

For anyone reading this, please comment :)

Cheers,

Alex

Alejandro Colomar (2):
  system_data_types.7: Add 'void *'
  void-*.3: New link to system_data_types(7)

 man3/void-*.3            |  1 +
 man7/system_data_types.7 | 42 ++++++++++++++++++++++++++++++++++++++--
 2 files changed, 41 insertions(+), 2 deletions(-)
 create mode 100644 man3/void-*.3

-- 
2.28.0

