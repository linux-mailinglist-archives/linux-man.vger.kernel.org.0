Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22B612865DB
	for <lists+linux-man@lfdr.de>; Wed,  7 Oct 2020 19:26:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728253AbgJGR0D (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Oct 2020 13:26:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726348AbgJGR0D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Oct 2020 13:26:03 -0400
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com [IPv6:2607:f8b0:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DD3FC061755
        for <linux-man@vger.kernel.org>; Wed,  7 Oct 2020 10:26:03 -0700 (PDT)
Received: by mail-oi1-x242.google.com with SMTP id m128so3273538oig.7
        for <linux-man@vger.kernel.org>; Wed, 07 Oct 2020 10:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=1EtQGzjrFX5ZxZ/yOocRataXDWYAMRZRf2rBbHL9ZGA=;
        b=Msqn7nSRaZcMRzy3wBI6Nu1/ALbUMt+DRHd6gR37Zt1L3SVaQhHUCrEx8ZD91PCnf8
         GCpWXXeNwVI+YWrF+FdFf02oKkZbq2OyTSbKwVafSl6Ko2H2ID8pnulh1CPOEX1INEwf
         DzOsm8nDmbg0MAjcguv7GvclxoFuZVvIQ9Ls+mOj+04fUoMAcwloTTyCChQzMz8O47te
         JhFqMRFGdsjBQojtL8nDVKyBC1HfanW9X3zA0xIDyktDSN9EcxQrNSQk8A6RsOzk/hVX
         A52NUEragX8iOYc3VbdLAxWsqN+Ut8049b0YX37SjdCaJCo1qrpDnVbg7LjkLMXxI+SV
         frNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=1EtQGzjrFX5ZxZ/yOocRataXDWYAMRZRf2rBbHL9ZGA=;
        b=oS38eJcNguqrkB4ywPjF2l7iBHLf1kBFmCDkra13go2Hp5AOrcy2fP81o8T1cTBYDV
         JEebTqG6KW7scQAUZpgghw6qZnF7HypEBzvJ+deGpMkWEqYP0s9tNRZOEzcAUniLBG36
         1p7D8Jf7hYeS7qKP42FQixt2fQs/rXxoOsK5Q/Jw8h8gD1hHvDohEPlw9kIWOM7RxP49
         J5nu0tnLxxBt0xRcgx5nmPZV7KjaxQCP2dUzV1xIlAR4s4fAUpJ+sp6xF9Dv4WQ4uyyc
         iuwO+qocpW9xLlcDfHDvPQgD70qS9hN6AVJt0JLLFYKicrkG9SL+GqWim1Lovd84eKtb
         Cc+w==
X-Gm-Message-State: AOAM532mkchRW1KoLqa4MV9jTSJZ/22k85QgVWCQWZBR+DsnLlhApETJ
        fvv53Pu82N3quDF5D7njl4NFu7IB6rbnMjnffNE1tIq6Hto=
X-Google-Smtp-Source: ABdhPJwjBb6pdJpfHB2Vc3WCCDCxaf27afFaNMZwE3Oumy48WZ8Al8MsFdF2auy7nqE5cx1nCxJ/RqAWnT0b2B7EtXY=
X-Received: by 2002:aca:ad08:: with SMTP id w8mr2526387oie.148.1602091562433;
 Wed, 07 Oct 2020 10:26:02 -0700 (PDT)
MIME-Version: 1.0
References: <20201004114434.pbetrwdehhgzibuw@localhost> <20201007060056.s2jm3bpiomnspkvc@jwilk.net>
In-Reply-To: <20201007060056.s2jm3bpiomnspkvc@jwilk.net>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 7 Oct 2020 19:25:51 +0200
Message-ID: <CAKgNAki0-tVVU=p6QAJKAce+4V5qdgOpey3HcKE09Hdv0zYaOw@mail.gmail.com>
Subject: Re: [PATCH] mmap.2, proc.5, bpf-helpers.7, cpuset.7: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Samanta Navarro <ferivoz@riseup.net>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub, Samanta

On Wed, 7 Oct 2020 at 08:00, Jakub Wilk <jwilk@jwilk.net> wrote:
>
> Hi Samanta!
>
> * Samanta Navarro <ferivoz@riseup.net>, 2020-10-04, 11:44:
> >diff --git a/man7/bpf-helpers.7 b/man7/bpf-helpers.7
> >index a18be23..57d2185 100644
> >--- a/man7/bpf-helpers.7
> >+++ b/man7/bpf-helpers.7
>
> This man page is unusual in that it's automatically generated from the
> Linux sources.
>
> I've just sent a patch to fix the bug there.

Thanks, jakub. That simplifies things!

Samanta, I've applied your patch.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
