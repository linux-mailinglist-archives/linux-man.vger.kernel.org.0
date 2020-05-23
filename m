Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AFC3D1DFBFF
	for <lists+linux-man@lfdr.de>; Sun, 24 May 2020 01:55:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388111AbgEWXzj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 23 May 2020 19:55:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388106AbgEWXzi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 23 May 2020 19:55:38 -0400
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 788B3C061A0E
        for <linux-man@vger.kernel.org>; Sat, 23 May 2020 16:55:38 -0700 (PDT)
Received: by mail-qv1-xf34.google.com with SMTP id g20so6504198qvb.9
        for <linux-man@vger.kernel.org>; Sat, 23 May 2020 16:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=Xb6tC54SuMWsQVXUWeARV+LH3/71p0b8Jt7uam25YeI=;
        b=kW+1bKqQ8sZZbuMs20t99qoWGaYC3OiIpGkpwxaRPrxSLIcajvF7jvIVGe9YCzwXo5
         hCb3KlIxkAMWpWrd+HySONG4MrcsqnThYxRh7fiTmb8aFMYbBOCXC041K9nfG3SJIsKu
         7L6xXiNmxIwt1RxBoVJ7uT1n+MTFlMQhF/5D5Hw2MV+4YbcuTKr6ezgWEsrkEzuNYhIn
         L2GiEGqTjhgqXX8V+hwG9ZqOiSqlKJ1n3Jx9xh6W7eNjAaWHVKXJdeOUEgQv4WB0W8uC
         nVfiMhcOj3iL3ryGI0KZT6uJYLm4pIB2FFXpXAO34POE2lgQsQ2vRe9CInZGL10w4D+X
         6xvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=Xb6tC54SuMWsQVXUWeARV+LH3/71p0b8Jt7uam25YeI=;
        b=pFeqNKnUlC/lLkvvrthIyI4xq8ZpxGSwxORhtV0lsKlARKwFSLoG4VqfD23Oy0hYfA
         5wnLDVn6gofXTON0FJ1kxA5S7qYsFkd9r2YntWxybAW6F4dmDICfZ7GKwwLgUTBnlZIN
         evncP8eGaIgb/EiQi+8enfj6JE0Gc2vVLAjR3QrpQWUZ5sDvoemOVAziTTmOHtuJ08mu
         VLz6KKbVe2P2+/oFnWcWkTikctiqaVZc7BHDhHtknpXnHn08GnQl95Zl98d2i1Tx3iyC
         eaOTEuqYaCHE56zeDl1Te+Zd0FCQTyR3ZuVp108oZILYTZUUXO9p2j5TWcgWbw4N8GSr
         s0+Q==
X-Gm-Message-State: AOAM530RC2hQhH1NoIwqpPa6/Nc44xBV+z/ZDUS50I9h2+bYE6B7imSZ
        YbnA3QlH9Blq2VA+iz23XSR0jx+7x6Y9nWQWJ8g=
X-Google-Smtp-Source: ABdhPJwJqsRIxb/eAvDl7GuCeWDSUNp5FA4lmVQkLuSCzyr1sPbMbqT2YrBYLWa0hY2syTaLqBQv5mQoadlmktXePWU=
X-Received: by 2002:a05:6214:13d4:: with SMTP id cg20mr9960466qvb.214.1590278137689;
 Sat, 23 May 2020 16:55:37 -0700 (PDT)
MIME-Version: 1.0
From:   "Joseph C. Sible" <josephcsible@gmail.com>
Date:   Sat, 23 May 2020 19:55:21 -0400
Message-ID: <CABpewhHMp-UP6S5mD1psPg_KKh2xAFp3yViB1z5zwCsksbzcxg@mail.gmail.com>
Subject: gettid(2) feature test macro and header
To:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The gettid(2) function requires the _GNU_SOURCE feature test macro,
but its man page doesn't mention this. Also, it comes from unistd.h,
but its man page only mentions sys/types.h.

Joseph C. Sible
