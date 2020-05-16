Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CA701D646E
	for <lists+linux-man@lfdr.de>; Sun, 17 May 2020 00:04:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726550AbgEPWE5 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Sat, 16 May 2020 18:04:57 -0400
Received: from mail-lf1-f47.google.com ([209.85.167.47]:44623 "EHLO
        mail-lf1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726290AbgEPWE5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 16 May 2020 18:04:57 -0400
Received: by mail-lf1-f47.google.com with SMTP id d22so4767822lfm.11
        for <linux-man@vger.kernel.org>; Sat, 16 May 2020 15:04:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=qPoGiRFMUV8XLdihuvJjbRcxThTTid+jiRaR8jXEYbw=;
        b=pJ4CRJdBcauIeClxYU0V7etNA5QTmeVmuP9Bv4JRbX/0ofA9hP41gyWkf+8GivFVg4
         wLqf7JAt+ODbj8RzZRYzsmQfWI5bsgzFdzG76DA1sFXbEoYuZfKuwd0hxeFl1b2tOis9
         sHikp7ua74b8Ce2D4P6Pro7o/t7HHU1yRMALc4VUIP79mGsuMUvQOGRU24hNtvl4oFW3
         P3HsS+oU/Ur3dkYECVLx+ufqfQ9nv7sf/uN/msgPRJhdX5VB7v1RHsdr+VbuLx7dTWaQ
         KMiNYW8A/KJRcFgVFzgB4gk7si7XIAqxVlsWRWyAmWzDDWfU9gPnGrkK1jO6a9PCbHVc
         jZYg==
X-Gm-Message-State: AOAM533YOZrwTfOWUSYwK5kTlmVWC4p0LKyHgsKdQW+xc/KJkqrsfps3
        eL8UC8o74D4bxQ12c0DmBo/ZASVb+xU=
X-Google-Smtp-Source: ABdhPJwq4XVIWJfAM3WaOh4H8ZGslg4YxHl34X6EfLPfxI5d7tgIIXEUneUaD0TzCkdhURe/M1tuVA==
X-Received: by 2002:ac2:58fb:: with SMTP id v27mr6877472lfo.116.1589666693600;
        Sat, 16 May 2020 15:04:53 -0700 (PDT)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com. [209.85.208.177])
        by smtp.gmail.com with ESMTPSA id u9sm3819811lfl.74.2020.05.16.15.04.53
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 May 2020 15:04:53 -0700 (PDT)
Received: by mail-lj1-f177.google.com with SMTP id u6so5923041ljl.6
        for <linux-man@vger.kernel.org>; Sat, 16 May 2020 15:04:53 -0700 (PDT)
X-Received: by 2002:a2e:b4aa:: with SMTP id q10mr2691010ljm.12.1589666693334;
 Sat, 16 May 2020 15:04:53 -0700 (PDT)
MIME-Version: 1.0
From:   Rohit Saily <rohit@rohitsaily.com>
Date:   Sat, 16 May 2020 18:04:17 -0400
X-Gmail-Original-Message-ID: <CAEYDfj7TDMwUy08DiHRde6D8Qam79tALL0u=Bf2tVghKn8jeMw@mail.gmail.com>
Message-ID: <CAEYDfj7TDMwUy08DiHRde6D8Qam79tALL0u=Bf2tVghKn8jeMw@mail.gmail.com>
Subject: PRINTF(3) Miswriting
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

To whom it may concern,


I am having difficulty understanding a sentence in the PRINTF(3) man
page's explanation of the 'a' and 'A' conversion specifiers, more
specifically it is the following sentence:

> The digit before the decimal point is unspecified for nonnormalized numbers, and nonzero but other‐wise unspecified for normalized numbers.


My confusion arises due to the fact that the two posible cases are
described with the same outcome, instead of specifying the outcome is
always the case. This is why I suspect that this
was a case of miswriting.

Did this sentence mean to state that the digit before the decimal
point is unspecified if the number is normalized, otherwise it is
specified? I pose this because the digit cannot be deduced if the
number is not normalized but it can be deduced if the number is
normalized (by definition). I am not familliar with the details since
I am currently trying to learn them, so please let me know if
something else was meant by the sentence in question.


Thank you for your time,

Rohit Saily
