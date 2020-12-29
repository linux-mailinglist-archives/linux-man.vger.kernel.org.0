Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D1CF2E73F1
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 21:39:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726144AbgL2UjI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Dec 2020 15:39:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726111AbgL2UjI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Dec 2020 15:39:08 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7900C061574
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:38:27 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id k10so3433654wmi.3
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:38:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cuOSYpCBV9rEZ+uTiejhPYciNXxPe21OaIyvT/AHnI4=;
        b=LTv8xEVZvqFy4tKA9hcvsXooe2e6pEKWPg7YDMW6Ft0SqGGnjSLdkXuGQ5vU8PbzAr
         w8eq1wlrpoxiQxIDazsYH6c3d5YgEOqrDF0HzxbeetuQOq+zBUpN50+xY1XOwW/Bh2vB
         nvAyaMPZJiDrPGXP2aW12Zj57C8rcZiW40cKcsFUBqmTQ02cyTQZZhD3O335VC4+znwn
         JPRjDyWUDlbckEXDesw/DwMlaaiEvPpUyanpEipHZKcBoUYI30rT1xaG3RV+XBahPRaB
         az9NplpwpF26gUQFBR0gPfl0k64gshioakG9fInw9ZGevXU+ISJhWKAnYYgpNvWJxSw0
         4xhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cuOSYpCBV9rEZ+uTiejhPYciNXxPe21OaIyvT/AHnI4=;
        b=j8aR/6MoHmUMJ7Zi/M7Q6SwEWXlng/C1yo/ZJis7KLzPtbAJBRF+NiSadKdv5XdrTQ
         h5K+4ZjSX9udnS/XFyBaXi/z2h70S8ps/5afnTAkZIaMn72Sz0T1oAFf50jcsN7INe9h
         kbUISUbBh7fvU4MDijVAwID3ejcYeqgG2oIcKD5f9j5zHQ/nSJ9QkqVnjJ53phInBuQ/
         EVp75BrHA3MwG3meIIUuJl3zaFwkWFbrT/1Udm6WUOREv8KPXCE2bykQt/Edc1HOTx6k
         S+CZkGaAYmgS8fDD2INOzv+xB0/tYZQ9kULL4ULGMXQeqOQnTfKbBca5Vezze1cL0a8m
         znLQ==
X-Gm-Message-State: AOAM530optMSCFKNDNeSFPZYhAbsVb3vGuAuUBcE6yvS/28iB7AVYujW
        AKoq9a777/PNkq3ncgnbzQ0=
X-Google-Smtp-Source: ABdhPJzjbGjqsW+9dafFmkbSx3SLlzuhfF6JtrTVnMfVLFFTAOydmzxEmVkB6IOsjwqgo2EdAhu6mg==
X-Received: by 2002:a7b:c8da:: with SMTP id f26mr4894012wml.50.1609274306302;
        Tue, 29 Dec 2020 12:38:26 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id l8sm4783226wmf.35.2020.12.29.12.38.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Dec 2020 12:38:25 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Subject: [PATCH v2 0/4] Resend signed
Date:   Tue, 29 Dec 2020 21:37:44 +0100
Message-Id: <20201229203747.3199-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201228094211.4917-4-alx.manpages@gmail.com>
References: <20201228094211.4917-4-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I forgot to signed them.

Jakub Wilk (4):
  signal.7: tfix
  cgroups.7: tfix
  ftime.3: tfix
  filesystems.5: tfix

 man3/ftime.3       | 2 +-
 man5/filesystems.5 | 2 +-
 man7/cgroups.7     | 2 +-
 man7/signal.7      | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.29.2

