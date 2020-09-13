Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 143AE2680CB
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 20:42:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725963AbgIMSmw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 14:42:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725936AbgIMSmu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 14:42:50 -0400
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com [IPv6:2607:f8b0:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8632C06174A
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 11:42:49 -0700 (PDT)
Received: by mail-oi1-x241.google.com with SMTP id m7so13987963oie.0
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 11:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3dfdtYqh379Rebfx8nMMhfO3oKKgB/TezbuAAAj93aQ=;
        b=ufLLZs8Nn6vBb5xpiV2uITeWvdVBVj27QGFacTurIy06S4csPxxoqyT+AMeBDkW4JQ
         wWVkSuWeaRsWXnpHHhTEsLRMZ36PY6bbWqHn1ThEL8n5aVWd6vZ9p04ifPfBG2Verf0E
         2EcPaxyci/YT9QhxvUmzPsX03b+rxS1k8H36ftfxcvGAugSTHhWfjibO2ZK2KAzFX2tH
         gKkm7Q/9kyp4A2kVGnpZBPGTzx14sBDYpRrr8GObCYirgoHCSH3+FWGHnWQTRubaZO0K
         2xLxXYtx7prF+NazCHt1TRi64x+1J+wcKOY8BlYpoQermXS+VQ5gOcvXpGgDbgXIR2SX
         OVZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3dfdtYqh379Rebfx8nMMhfO3oKKgB/TezbuAAAj93aQ=;
        b=O3zpkM/2/pBr/FUJ6jle/oAepKm/aUyIQ7q/QfuCxYAmDqPIAeh49WVb1LKG6YfvfZ
         rbqH1hCg/P00Ay726xc+t96g8S3r43uDxBuc0DTovE3TF0f8iH8lCczlr1Q+7XvVyFiv
         gZf/iTQNMHifP7EYFxMVENubcbGTEOwqkSWzOt3VALg0dJZ7SVGhPq3E1Za2fcsI39G6
         WymXq8aqWDoqxepnrnNUZreuKPJoxteLSlb2FgLjauGLVfnsaY5ABpgJYq4QvN7GWrei
         rp/YhaZ68LmmgOO4M3XoEa0xPb86OeLV6lqWBW4fbj+apAEcP4YBH/M2bSKw0XcZYC97
         eGtg==
X-Gm-Message-State: AOAM531EzEnqcICQ8wFOs/gu9Ej3Gbliyq2E35NCoHE8mPOaafHJq4uQ
        e2eIFtL8HP8SPNMJrdvTvpPVUNALhGeX5aLyCwY=
X-Google-Smtp-Source: ABdhPJzO0BOZU/l/yUVcFYTfkyZcZ86x0BS6cGB8C1g4+XrKlo14JJlfJUzW6D7rLKDV94dkNzQsKRN2vIiQuGSm2Zk=
X-Received: by 2002:a05:6808:8ca:: with SMTP id k10mr6040751oij.84.1600022569256;
 Sun, 13 Sep 2020 11:42:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200913173801.GA15488@altlinux.org> <9f5d1d00-9946-5cc0-cc74-3c4820b37c59@gmail.com>
 <CAF98MAKanUQtQN18Rh1F-YEhUqFix9+6aWVHuqSPLWHrJA93TA@mail.gmail.com> <ee5cc545-b04a-647f-e8e2-2692af9f1f8e@gmail.com>
In-Reply-To: <ee5cc545-b04a-647f-e8e2-2692af9f1f8e@gmail.com>
From:   Konstantin Bukin <kbukin@gmail.com>
Date:   Sun, 13 Sep 2020 11:42:38 -0700
Message-ID: <CAF98MAKZL2oL4U=jPxO4hTm8G7Y7P0D-F26ZSXEWgZEDGO+U2Q@mail.gmail.com>
Subject: Re: [PATCH] stat.2: fixed inode printing in example program
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     "Dmitry V. Levin" <ldv@altlinux.org>, linux-man@vger.kernel.org,
        mtk.manpages@gmail.com
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> > Mind I'll send a new patch?
> Sure.

The new patch uses "%lld" instead of "%ld".

Thank you,
Konsstantin.


On Sun, Sep 13, 2020 at 11:30 AM Alejandro Colomar
<colomar.6.4.3@gmail.com> wrote:
>
> Hi Konstantin,
>
> On 9/13/20 8:16 PM, Konstantin Bukin wrote:
> >> Do you agree it solves this problem?
> >
> > No, that does not solve the problem. There is still casting to a
> > signed resulting in printing negative inode.
>
> True.  The definition of ino_t is unsigned, so the example was wrong
> from the beginning.
>
> >
> > Using %llu might be better since that would not require including an
> > extra header.
>
> We just had that discussion in this thread:
>
> https://lore.kernel.org/linux-man/20200911231411.28406-1-colomar.6.4.3@gmail.com/T/#m971e4dcfae5f25e0f26c906679aa7176b6786bdf
>
> We decided to go for [u]intmax_t.  But the patch has not yet been
> applied, so you arrive just in time to give reasons against it.
>
> >
> > Mind I'll send a new patch?
> Sure.
>
> Cheers,
>
> Alex
