Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1AB9927CF4D
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 15:38:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728184AbgI2NiP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 09:38:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725306AbgI2NiP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 09:38:15 -0400
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com [IPv6:2607:f8b0:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AD64C061755;
        Tue, 29 Sep 2020 06:38:15 -0700 (PDT)
Received: by mail-oi1-x243.google.com with SMTP id c13so5450758oiy.6;
        Tue, 29 Sep 2020 06:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=gYyfNaGONmQJwfnhQolI8j3x4GD8hEtq2ZLedtUuZwU=;
        b=T1W2FuM5KTRjw8r3HYNG9gpRyTB5Z+K7PceumkjtMxh/YOfgRxXACAIaDOm1rxkRIs
         ZLCgYbNlHZmIpM5WiO+DwHZQHIMQB4/4srJoZsYFAWc2nJtVz4NuUwzLiquu9QQxS6PJ
         TdqOrJGaZiKubM+C9xgY+O+iHrbzKsr0z9+7dUCceLY3wcx+QnaQNugJ0rfHkAmV2nYb
         p+lu9Mcs3hZx7Mf5yN8NCPyUAnVj5r+5umgV6O+sgkdc57gixhKzY3DxcPJNNa9N1G+p
         TR9d1K/W2xn1chF1RE2l4TOVRqcRhuClzlocB0JnAzJuYiJvQfkvf86ybawpd56ObQCN
         5G6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=gYyfNaGONmQJwfnhQolI8j3x4GD8hEtq2ZLedtUuZwU=;
        b=IRPP8vxgH6Jqn0MU3AG2WeQ9V/UpZtfyWEYxYRGTdEL2LseRr3HreC8X3wJpfz25qr
         m8vCjqlBFjIMZm2vJ4+9wtvYdiGlwFqUwPuVq0TnYBAIJZiv32bWZlHK3OnGSxX3T3C/
         hqstE/N8+VO0hyb3WVh5IXj8ItziN/Dtze0CQI2Jg6bHb1sSWN7osmAG9NQKdIKe5Zpo
         qziJ2xjaABvzpm2QB1wDrRdCspSfkviZBVwc+c8ivlb7Lv7SuepNPByT0uVZhddSYJR+
         8RNCyCO71McnbuiuwbTukpBOAu7qLZqaz7wtuHMhxJhbbRPNSrGCEmGXddIzmvyhhGnG
         vd6g==
X-Gm-Message-State: AOAM533V+9XLB5ua7E9cSic/EkYkyFRz3zNKhTDiY9C8mhq7nPB9xs5o
        oO4T0QZTENtl9B9GKr9npiOJ0bJ/sfGd5ZyCOjTvgweS
X-Google-Smtp-Source: ABdhPJz1QQHDJPzQyvv3xEz/vRfK15oGpreTFBs5HKUBuWJDhOk51xsLqNoS9LB+VNPx5oMZ+/aV8ecKRFQQ9V0oCZc=
X-Received: by 2002:aca:2301:: with SMTP id e1mr2712001oie.177.1601386694388;
 Tue, 29 Sep 2020 06:38:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-13-colomar.6.4.3@gmail.com> <CACKs7VD_p=d+nvuFxkWofSE6jCoKAKx5w44_5ciTJ0NX_H1ZFA@mail.gmail.com>
 <7dd2ab72-3ce7-1f50-229a-e663c3df2dcd@gmail.com>
In-Reply-To: <7dd2ab72-3ce7-1f50-229a-e663c3df2dcd@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 29 Sep 2020 15:38:03 +0200
Message-ID: <CAKgNAkjDmBfR_9-8zZAu2sKDw+dfD4LgokMdLApy-_00ngxnLg@mail.gmail.com>
Subject: Re: [PATCH 12/24] getgrent_r.3: Use sizeof() to get buffer size
 (instead of hardcoding macro name)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     Stefan Puiu <stefan.puiu@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> 2.-     Use sizeof() everywhere, and the macro for the initializer.
>
> pros:
> - It is valid as long as the buffer is an array.
> cons:
> - If the code gets into a function, and the buffer is then a pointer,
>    it will definitively produce a silent bug.

Sigh! I just did exactly the last point in a test program I've been writing...

M
