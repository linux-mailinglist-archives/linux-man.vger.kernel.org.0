Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74AC2649761
	for <lists+linux-man@lfdr.de>; Mon, 12 Dec 2022 01:34:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230466AbiLLAel (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 19:34:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230465AbiLLAek (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 19:34:40 -0500
Received: from mail-vk1-xa32.google.com (mail-vk1-xa32.google.com [IPv6:2607:f8b0:4864:20::a32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7F9FBC3F
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 16:34:38 -0800 (PST)
Received: by mail-vk1-xa32.google.com with SMTP id e13so4343558vkn.11
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 16:34:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dartmouth.edu; s=google1;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IOU55Pf+aEwxt1qCbcVBJBDWWtXBSypKC56ONjAXDqk=;
        b=CH2jnWyTcEF5lgxlrz1jwqqts6RPUgJtmTESl0F03SNb98qQY4RIZqLvvoV24MnibV
         QGsZaa6FkMI6HLJqg56OQeQ9W3IYbLiumcEEQPGMP3NbAVayf/3hujMQJMJJBQ2ELTvg
         +cDGpCl484KXqxtsof/hBFZqonejUykF1s03+fhdoJl6nr6DC0NK5XFNalPLNOKSoX4m
         8IbXZMn+p+N1jKte/Ru0ePd3+FF0UolNrsjEoWkaRPAsYONqXaDpjK87VMccpAR0vys5
         hNoaLZaToYT6TWASUd/tU3BebgypqSGyDWWzQqPfNfWJl1yGjbeLYkNQ9QI0ZqfOrtYB
         ZCNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IOU55Pf+aEwxt1qCbcVBJBDWWtXBSypKC56ONjAXDqk=;
        b=5UPmPQ2rSTEjHIkcOfc/kOo3QB/dh5aAYXSeyGhv3rLWARvwAKpcxQ4xxkr4TZMDT/
         wL8reVAdSkeUm09m22fZc9WaeKX8KoxXsOfK8+xgIyOmiOoUfoIkxSLeGcS+IjnDkqUL
         w7uxEiOIm+N13bVmIAq0Ack5B4tRIwJDhyIwHlkVHzKDN2h+9yMQWehUBQ5E70pnkGi4
         FpNTJdQQchVBX+jEgOFX1nT5Q0pjWgvAC9yFo00eZchZJVZmzBTvYjWQkT2I5buoMv3T
         IYVdhGwNzBvwZn7094i+wjtBt2obRhqKhZWqBZnEQHWLlm75+UMZZZ53b61aI1wUhHg9
         25HQ==
X-Gm-Message-State: ANoB5plxmH0StEoeHutVHD9L+VrZf6opMrKWtSMzcgtucKwNw4IVmAEz
        /LwPxZITT2kmqQORn1ct8tQoXhs2IA9SDFBhg8cziQ==
X-Google-Smtp-Source: AA0mqf6QQ9J3KA+Yg60ooA4ljuHq4KPhEBc7JGDz4lq6jKLltsNIpPsO4oyI4Kn8GNL2QUk7f6HG7et27GIKZ3L+yok=
X-Received: by 2002:a1f:9110:0:b0:3bc:fc56:597 with SMTP id
 t16-20020a1f9110000000b003bcfc560597mr23593487vkd.14.1670805277769; Sun, 11
 Dec 2022 16:34:37 -0800 (PST)
MIME-Version: 1.0
References: <20220906191320.447t5awx3rcb5d5b@illithid> <a7b8c6b3-a8e8-6ab7-6cf4-118446849a9c@gmail.com>
 <dca0e251-7481-7f1e-4077-0ddee070a357@gmail.com> <20220906204245.hzhq2s7yha6zzgrh@illithid>
 <30e80fe0-f0ce-d6cd-ee40-28692e5a5f82@gmail.com> <5c1e8620-e4ff-c79a-1d4e-11f797276726@gmail.com>
 <20221116234049.GA1229865@if> <f306a83a-306d-e3d0-5d25-bf07da3da59f@gmail.com>
 <c23b1a4f-1269-55a6-53ac-abbd2cff5786@gmail.com> <b13137bb-8eb9-dc69-da3b-191eda8e5642@gmail.com>
 <E1p4Rdx-0002PO-Kl@moria.de> <59fb70b0-f4b7-d257-117e-767135fa39c3@gmail.com>
In-Reply-To: <59fb70b0-f4b7-d257-117e-767135fa39c3@gmail.com>
From:   Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Date:   Sun, 11 Dec 2022 19:34:22 -0500
Message-ID: <CAKH6PiUtvmbua0F_qCdR92fJfpiabMPg=6Lc1fguLUYE9CC0xQ@mail.gmail.com>
Subject: Re: Ping^1: Chapters of the manual (was: Bug#1018737:
 /usr/bin/rst2man: rst2man: .TH 5th field shouldn't be empty)
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Haardt <michael@moria.de>,
        Colin Watson <cjwatson@debian.org>,
        Ingo Schwarze <schwarze@usta.de>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, groff@gnu.org,
        Andries Brouwer <Andries.Brouwer@cwi.nl>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        "Andries E. Brouwer" <aeb@cwi.nl>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

A nice property of "section" is that it's recursive--applies to any
level of a hierarchy--so you don't have to struggle to keep
level-specific terminology straight.

Doug

On Sun, Dec 11, 2022 at 2:21 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Michael,
>
> On 12/11/22 20:05, Michael Haardt wrote:
> > I just checked what is easily available to me: >
> > v7 calls them sections in intro pages, but chapters in man(1) and man(7).
> >
> > Celerity Computing UNIX (looks like a BSD port) calls them sections in
> > intro pages and man(7), but chapter in manv(7) (dtroff version of man(7)).
> >
> > SunOS 4.1.1 calls them sections everywhere.
> >
> > HP-UX 11.11 calls them sections everywhere.
>
> Thanks for checking!
>
> >
> > Given the changes it looks like you are not the first person to note an
> > inconsistency here, but I see a majority calling them sections and
> > getting rid of the term chapter over time.
>
> It seems like a regression to me.  The old term was, at least in terms of
> ambiguity, better.
>
> Do we need to fix a decades-old regression in the manual pages?  Well, _need_ is
> a strong word for that.
>
> >
> > Now all of the above is commercially obsolete by now and Linux
> > dominates, but I don't see a good reason to break an established term
> > and instead suggest to follow the above and s/chapter/section/g.
>
> Admittedly, it's hard to defend my proposal as _necessary_.  Especially after
> the world has lived for decades with the ambiguity of having chapters as
> sections and sections also as... sections.
>
> I have several times had to come up with imaginative ways to disambiguate the
> term section.  Am I a corner case that has to live with that ambiguity way more
> than the average programmer?  Quite likely.
>
> Since I'll some day (likely for 6.02, that's 2 years from now) be publishing the
> Linux man-pages as a single-volume PDF, the term chapter will regain significance.
>
> IMO, there's undoubtedly a reason to fix the regression, and reform the old
> term.  However, the reason is not very strong, so it all depends on reaching an
> agreement with all of man-db, mandoc(1), and groff(1).  That would probably have
> the side-effect that we also have agreement with OpenBSD.  That would be a large
> subset of the relevant parties.
>
> Cheers,
>
> Alex
>
> --
> <http://www.alejandro-colomar.es/>
