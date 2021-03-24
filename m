Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E351347C79
	for <lists+linux-man@lfdr.de>; Wed, 24 Mar 2021 16:23:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236643AbhCXPWy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Mar 2021 11:22:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236637AbhCXPWm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Mar 2021 11:22:42 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FE33C061763
        for <linux-man@vger.kernel.org>; Wed, 24 Mar 2021 08:22:42 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id j6-20020a17090adc86b02900cbfe6f2c96so1394157pjv.1
        for <linux-man@vger.kernel.org>; Wed, 24 Mar 2021 08:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version;
        bh=KZa9wF111RGTyDw7tmdSAJGBLkVp0nOEFwvjWHpdoVo=;
        b=uATjWPDpoNBcrab5cp3U/twS5x4rKwXm2wW77EUJUugyoGHinHw1l27fTU6UrVAJ39
         cRTNFboQJ7t40+Es7AlESw9pZlGa6GXibWZ6vG9gmfmzJIx6u0WCBY4BRNjgmwLjtLeN
         QwgWoHaBRLe594ZV+G035YR+8CR3AymWDvAg4sVyhW9agDgixJogV4NHCTPZZhRsvUk9
         sVzTFs1mlRfXBf3CiS3zpaOv5mirwX3FtF1vwh9LlMgycwlDWbPUhzxKh60XcaxmrCCy
         xt2Ddu7tlaPH7x/W5FUMXq8ph/LFl72sjgATX2seDLrlAI2SuwxNgyQgJ0lud2RlfVqe
         Chxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version;
        bh=KZa9wF111RGTyDw7tmdSAJGBLkVp0nOEFwvjWHpdoVo=;
        b=cNVanX+Y9QOhnT9+nPrld7yEZNIzTm8fdjZQMAArOkp04tTvu0S1qnZOUDGyETQl9B
         Yd9mFIhSXtI1m7lRHvue+dgAVuphebX5hQ1hY4AoyVhxE6NVnegyaYM8TjxhL4Dre7R6
         GjLgWFcNOxhONyw9361dgo8AKoDrwjYJXQ8QD7tUWhiQT36MKv5QIviVbOr1+RM/ZerF
         sy8OkOHsgfRB2FCY4c56uIJMtCIBzrfjic6OB4ulWxwCJUgOKa3Py8uihdCvJXwceIdT
         Xz/Uelt2vIoGtUcxNC/3dJ4veH7ITKCqoWFsPWYddgxZGSoRsoP4th79R2C0hvFFtDRn
         hn4g==
X-Gm-Message-State: AOAM532SaTiZQ97hbGZ2ijv+zkbGeFsBQN276EoG9Lz1oSr7+jHj+6PK
        +g8UFPicJvvquzTBjDwcnJT6jGv1ow0=
X-Google-Smtp-Source: ABdhPJwxcU4brVW6PSVCerdJUkKcmWZyvq5QXio4uFGhXZbFk9q81AnK9Myg2HyLsM1uOLpG2c6BEg==
X-Received: by 2002:a17:90a:3cc6:: with SMTP id k6mr3989779pjd.212.1616599361723;
        Wed, 24 Mar 2021 08:22:41 -0700 (PDT)
Received: from localhost ([43.230.65.204])
        by smtp.gmail.com with ESMTPSA id f21sm2633001pfe.6.2021.03.24.08.22.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 08:22:41 -0700 (PDT)
From:   Utkarsh Singh <utkarsh190601@gmail.com>
To:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com
Subject: umask.1p: Can we add a table for octal and symbolic notation?
Date:   Wed, 24 Mar 2021 20:54:54 +0530
Message-ID: <878s6cbmm1.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

The POSIX.1 standard man page for umask is a really well written
document but lacks some notes for beginners.

For example comparing umask.1p to <https://en.wikipedia.org/wiki/Umask>
I really liked how Wikipedia added table for showing octal digits in umask
command to their corresponding action.

Can we do a similar thing for umask.1p or how can I contact The Open
Group to make changes into their manual?
-- 
Utkarsh Singh
