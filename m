Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 354E85B1D6A
	for <lists+linux-man@lfdr.de>; Thu,  8 Sep 2022 14:42:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230324AbiIHMmm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 8 Sep 2022 08:42:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229907AbiIHMmg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 8 Sep 2022 08:42:36 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5156C6CCA
        for <linux-man@vger.kernel.org>; Thu,  8 Sep 2022 05:42:31 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id bx38so19700655ljb.10
        for <linux-man@vger.kernel.org>; Thu, 08 Sep 2022 05:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=rnCzX6LiytrZdvrpgpe31+O5JyDOcLDCGAmR551mG0k=;
        b=fIEFBF8/DW4d63kjNADvcydvIynKy4kVYgojmieNplC0eADhCFXzN2liudVuXEQ36Y
         Bptw8JcaUA6ezT/2PCG6G9S6DWk0zZK9er3dcldNJPx+R7ot2nmXoUltgBvdt4NJY4NA
         RgGyqNEWJebfsbsDR4fMaPnDYz8YjhTNMqpco5+KYXni0wLnPItcqNX4tfRdiZxv/4Pz
         Zn8bBZ9ud1nYFCsLcE0y06vtMwffArfAYxpxqd0i0MvkhQNW+bSnmadbBspELkzS26Fr
         V3YiVDEClzcLC3DR/lmdqclFIPSiVrGc9v6CMXXLV6EjcjZ8X5KAW2IeE49GpUubuWsd
         2MYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=rnCzX6LiytrZdvrpgpe31+O5JyDOcLDCGAmR551mG0k=;
        b=xJH2HoD3r1nrD7E8aEcE1v+40GNVameJF7KgqKe5DIvW4GSVj++zwJA1ZL/4ins6/c
         UWOOzlYrHXn0X7Vxpt8HQu96IwZDnuYofP6p8lBBp1uHHEjZv8R6/448hoTzbleOLlFw
         BjEVRHjDDPP7oL8c7OWiGpvUWIBypUq5SH6IG/zMrd3HqNBlpv2Ns3xPm0x5Z8A9eaKb
         qLLwezUbLO/6C3uK05VRI7M7R5+p0MP5Kid1Hvgq+9xt3ueY3nb4HQSHaUlc61DjWE4b
         IAQ1KwDbjTd2XmJ7g8E3M75JueajiP1Ghjf9KzsDOr2baodgjW6HSUJiH0igYK6YFwBm
         EogQ==
X-Gm-Message-State: ACgBeo3TuJwpkJd4JWAOXZMdyP8WAShe+oFpeRAR66Vfk5B5GOU9dYfP
        y8nvyszckZziP4wrXIlEjQWYl+Xo9xEKz8FOmGU=
X-Google-Smtp-Source: AA6agR6pp803VwhDAhNKoPl/xuFNjKuENlrcB/VD9c80zZfy0Jl1DnmLZaJP00vkEI4MLdQKPr1O1i81z7+9fhn2fso=
X-Received: by 2002:a2e:a7d4:0:b0:268:a9f9:bee7 with SMTP id
 x20-20020a2ea7d4000000b00268a9f9bee7mr2331443ljp.425.1662640950141; Thu, 08
 Sep 2022 05:42:30 -0700 (PDT)
MIME-Version: 1.0
References: <YxcV4h+Xn7cd6+q2@pevik> <20220907205304.nlqce37l26gezjqi@jwilk.net>
 <7b9c2ab4-6cdc-b4fd-1001-8721083695fa@gmail.com>
In-Reply-To: <7b9c2ab4-6cdc-b4fd-1001-8721083695fa@gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Thu, 8 Sep 2022 15:42:18 +0300
Message-ID: <CACKs7VADwh0Qs8Zo7=biVzpOhSgMt5xD1BSBXdg82sPAcdjYOg@mail.gmail.com>
Subject: Re: Revert 70ac1c478 ("src.mk, All pages: Move man* to man/")
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>, Petr Vorel <pvorel@suse.cz>,
        lnx-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Thu, Sep 8, 2022 at 1:28 AM Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> Hi Jakub
>
> On 9/7/22 22:53, Jakub Wilk wrote:
> > * Petr Vorel <pvorel@suse.cz>, 2022-09-06 11:41:
> >> Although I agree that number of man* is quite high and single man
> >> directory looks nicer, from practical reasons I'd prefer to revert
> >> this commit.
> >
> > I don't like the new layout either.
>
> Thank you both for sharing your opinion.  I'll revert it, then.  Let me
> a few weeks before doing that, since I'm in the middle of some other big
> changes (about lint-c), so to not have to stash and fix conflicts at
> that scale.  If in the meantime someone finds the new layout nice,
> please speak up :)

I think one other aspect to consider is that it makes history
searching harder. If you type 'git log <file>', by default you only
get the history to the last move. You need 'git log --follow' to see
the whole history. Then if you want to do a 'git blame' on an old
version of the file, pre-move, I think you need to find the old path
and use that. If the maintainer's opinion of where a file should be
changes often, that makes it more fun :).

Just my 2 cents,
Stefan.

>
> Cheers,
>
> Alex
>
>
> >
>
> --
> <http://www.alejandro-colomar.es/>
