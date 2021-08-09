Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FE3A3E4309
	for <lists+linux-man@lfdr.de>; Mon,  9 Aug 2021 11:43:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234443AbhHIJn1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Aug 2021 05:43:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234365AbhHIJn0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Aug 2021 05:43:26 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB69CC0613CF
        for <linux-man@vger.kernel.org>; Mon,  9 Aug 2021 02:43:05 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id c24so5842338lfi.11
        for <linux-man@vger.kernel.org>; Mon, 09 Aug 2021 02:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kinvolk.io; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PLHtBMhuadgOT9rKrvlkgxyLk/cf/fW/8V32G3Nu4J8=;
        b=jd2dFpqyMmYyQqGw9ohpBtucgA7EYAjNTFC0pLHf8Y5h6uKCDkx6uRmG891cKJA/nu
         xon0Y1JDwtkXw59d16E+edd32LdMtE7DWjpxBebOhSM5XFphZbL1cISWa5ANAH7WeOqf
         9Ja1Pr/pZuhP9liQWOyzN0+S3OJ/zsdCAlrBA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PLHtBMhuadgOT9rKrvlkgxyLk/cf/fW/8V32G3Nu4J8=;
        b=eYzDAAZUKPNEd8yUqaR0Dr4YMbEqsgbGQP/sepS0bT/BNW2FGl+eS5VzOB+sVzLvBO
         gTTzbMYb1YFoKG1vZwF1l0gL/hdttrzMnSMQfN6Z5bu2lcHftxGHgSOlhGY6bXKws3J9
         5GqDQ/iUGblY/XNqKCSisl3ukoVwr6vwaf9LPqELEQRoeScwJXXuy70CIV3Kf3gkMW3z
         yv6GMxcYDqMkohiKKpqT6+LmYOoQmVgkc8lF/sPUN3rsv6nEr0blsjhn1gkpAWsiKZkt
         umtd0zu9emMX5M99Q4B7os5hRQklq+xJSyaEQTtMph31Wv4SF6wdxMvzRyIxWwLRkQD/
         UM5g==
X-Gm-Message-State: AOAM532MBeDuDtR4DBWBORHGNCcVtAS0oOUlSufi3lx9x8yTcq+JDIs7
        NSEx1MyT3YPwaHA9z1IfJz3hm0nHpekJTYrnOvP82A==
X-Google-Smtp-Source: ABdhPJwIVSbHowfaVeWAcg23s+P5fod1x2uEPjKdAmusY8d/bnDh5Y6Vh/vk4aBIwWKEJQdkZQXSWu2IQBnrRb6Qm5I=
X-Received: by 2002:a05:6512:169d:: with SMTP id bu29mr16931155lfb.160.1628502183956;
 Mon, 09 Aug 2021 02:43:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210728202008.3158-1-alx.manpages@gmail.com> <20210728202008.3158-17-alx.manpages@gmail.com>
 <1a858a67-c3a7-2c1b-eec5-ff206b97f82e@gmail.com>
In-Reply-To: <1a858a67-c3a7-2c1b-eec5-ff206b97f82e@gmail.com>
From:   Rodrigo Campos <rodrigo@kinvolk.io>
Date:   Mon, 9 Aug 2021 11:42:28 +0200
Message-ID: <CACaBj2bHdm_G5A3wHqjNDtLOH3iG6OHSD-02EtT=HYXen7rW7g@mail.gmail.com>
Subject: Re: [PATCH 16/32] seccomp_unotify.2: Add doc for SECCOMP_ADDFD_FLAG_SEND
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Aug 8, 2021 at 3:01 AM Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
>
> Hello Rodrigo, Alex,
>
> On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> > From: Rodrigo Campos <rodrigo@kinvolk.io>
> >
> > This flag was recently added to Linux 5.14 by a patch I wrote:
> >       https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0ae71c7720e3ae3aabd2e8a072d27f7bd173d25c
> >
> > This patch adds documentation for the flag, the error code that the flag
> > added and explains in the caveat when it is useful.
>
> Thanks for taking the time to write this patch!
>
> Patch applied.

Thanks! It is great to verify that the explanation is indeed clear to
others too! :)
