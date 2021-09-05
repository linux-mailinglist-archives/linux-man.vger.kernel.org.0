Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 910D440116A
	for <lists+linux-man@lfdr.de>; Sun,  5 Sep 2021 21:47:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232635AbhIETsZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Sep 2021 15:48:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230024AbhIETsY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Sep 2021 15:48:24 -0400
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3462C061575
        for <linux-man@vger.kernel.org>; Sun,  5 Sep 2021 12:47:20 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id h133so6236694oib.7
        for <linux-man@vger.kernel.org>; Sun, 05 Sep 2021 12:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=OY82BbKK3jdsdP5HiwQ9m6OO8eJjug7Fsy8nVpbaip0=;
        b=qeQO+TjsUWo5aYGz6SXOrq8j+dvh5fSv7vU3TIaibMF3oZsQN0IkdY9KT5VKpREI0T
         yZI+uRCyG6IjInCCb0G6YOdOTYd8JDHn9p0ltVHL77CJFUYhrFN5AsPWu1U4rPkThJev
         gUH9q6cgnjj5H7pjaRw2YKZiKtVly3g/ypqlEaVz/IqLV5zxpwQu0DNybb3hciCWSYr1
         15JEcgC8FGhPDH2PYhVKfNyy6PgWOxsjR5f6RPTV6Vu3SlpOOOZnFxDi58hR6Atm3nzC
         pWzxpIcuDFmSmUKUnsEwnmzFR1PrRkJh4pF1qEG0GpoSrgdn4Mw/k25MG33Qc39Tp1nB
         P8oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=OY82BbKK3jdsdP5HiwQ9m6OO8eJjug7Fsy8nVpbaip0=;
        b=rmTNXqvZuuqO//OoAyNt0gNk+d7r5XJsl0V95XXGCCm0j1wJdEES5EVFKiS+YZS3jE
         nYGa57ojFJQc7XIwCFsmpb8bvAvKqG9409ixxUFzPGXJeKLz0KEsx90LiaMwhPeDZ1js
         UJrsknkqJ3Ks5/xEu0kQ1+Nzkp4TQC2Wyz8/9K8yCQQZnCV+N4itKv5BsD6LlBquulAy
         PB0ULFUQ9xG5gcNU5JzUG+K7unhaZKHvmpWTEqpECyHBg16NJy2lW2aptTD/nobtEjKN
         RHXg90TrXDlnefUJSDkXKKJVi/f1h4Y/N2YX1io5rC/d+oVRjkleS4TtyIzgFsZ8MVCe
         WjrQ==
X-Gm-Message-State: AOAM531jmdhQT771pFjg7rJPMRgM0kGJtmoFOcK4y5CO30ADpGox1UDH
        nfPdC/CVITo4DlyS6D2f9xTS8fzKNCVcgHXYflQ=
X-Google-Smtp-Source: ABdhPJxL0NUYT7cP9UarENV9Ip+enJDO0SvYHrVoboFsitolrZn657XjpnjSTjYe74R4j8k4pJ+7TYvNBG7Zh34aIf8=
X-Received: by 2002:aca:42c2:: with SMTP id p185mr6195751oia.159.1630871239741;
 Sun, 05 Sep 2021 12:47:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAMGmevBaX-PAuNfN6fANjipxnMO9JmnKdjTxaRVWMM78zC3mCQ@mail.gmail.com>
In-Reply-To: <CAMGmevBaX-PAuNfN6fANjipxnMO9JmnKdjTxaRVWMM78zC3mCQ@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 5 Sep 2021 21:47:08 +0200
Message-ID: <CAKgNAkjDsKw1PgHhVZSVvtWuBQDyCrqhLq8HDWh9brLm4f0_Kw@mail.gmail.com>
Subject: Re: Meaning of "Signed-off-by"
To:     Sagar Patel <sagarmp@cs.unc.edu>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Sagar

On Sat, 4 Sept 2021 at 04:29, Sagar Patel <sagarmp@cs.unc.edu> wrote:
>
> Hello,
>
> Does the man-pages project define the meaning of the "Signed-off-by"
> clause in a commit message? Per git-commit(1),
>
> > The meaning of a signoff depends on the project to which you're committing.
>
> But I couldn't find a reference to the meaning for man-pages. Is it
> the same as the linux kernel [1]?

The intention is that the meaning should be the same as for the kernel.

Thanks,

Michael
