Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4E87613FDE
	for <lists+linux-man@lfdr.de>; Mon, 31 Oct 2022 22:25:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229750AbiJaVZH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Oct 2022 17:25:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229711AbiJaVZG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Oct 2022 17:25:06 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4105E630F
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 14:25:05 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id b8so18369782ljf.0
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 14:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Poqi0S+lTNDgTpQgWXB2RyJ19j0tnps12E7PSd99EJk=;
        b=N37URAjA4MHlcjGjmHWdd0BxLWm0Fcmh8Q7WDXFV130wCPTuT125RJWDSQJxx8LC99
         e3uBmJr2JJNpAzVvJqxS2lbiBZkpY1Vp0xNQiJRHsk+zNt7DE7JjB7G4DrpoNVyBEBii
         ZQFILxr/TGwV04m++waf0LYkSLcVVc60hKnZ4Zc2lfx5DFQZIttiJShJV6FNZkI1UE18
         iq3J8TXfNSkDfk2vgfww8X7iAoSIz13Pf4R5Vtgi5WyU+uBId3rho3Hhwl+4xTDG+mBC
         T4aRg9c0aILvCmOHddz6ztgkUdsZDCBxEhosd1RAnR5E73Uz1YupqFvmYqub4AYiQyNQ
         spJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Poqi0S+lTNDgTpQgWXB2RyJ19j0tnps12E7PSd99EJk=;
        b=zV+cSt4eb8rI7ZAbQR04ikVlWlQMRkSzLBzFcqdKhPDIda+k8GM454DMlWKBL0068P
         xmhDjcvWehYbdXHbYOY4fnHYQOOWilNz53P+KAYdBuHkf3K6YC+TqYnRZqS1rDAkqjaL
         iphOCEl5F1FD4cD4eaNdBDGtWZtU/B/FDBlgcrNZ4HASCiilebW1bD6bba6gjwd2kff6
         ZDGZ72bUpnrVSFwiqDL6b5dGiYKog8Z+mAyxAFNcnNlS/VFAv8D8vsQTjfA81M3e2fYs
         MMCSYtTuLDunfTnK+Ac5MzQXtZ92m+I/Mtd3RcITvESOFXnGuM88/ko50w6v/o+PlTB/
         I3zA==
X-Gm-Message-State: ACrzQf2UGZhgaDGO+Fvzc5AJs6XGFxw8KEzl7KCX/QNnupwqZbmnsyTZ
        NAJnN3exesXYv4ntXAaazgA/Ouafpg4K6+/ntwhWqA==
X-Google-Smtp-Source: AMsMyM5f6qPqj+5tjnoJo98Prg2EVhn1Jojb/DG382S1GV278k5Ptwdej9mOY/nVkhGaTWfPsifncYAjHRwsXWeTp1g=
X-Received: by 2002:a2e:aa9b:0:b0:277:d86:a36d with SMTP id
 bj27-20020a2eaa9b000000b002770d86a36dmr29497ljb.288.1667251503322; Mon, 31
 Oct 2022 14:25:03 -0700 (PDT)
MIME-Version: 1.0
References: <20221021223300.3675201-1-zokeefe@google.com> <20221021223300.3675201-3-zokeefe@google.com>
 <2f67d133-8996-ef10-4a36-42537906ebba@gmail.com> <CAAa6QmT_nGqVpgtNvcrcQos4VGkqF0_mv-L2098ygPHfnc4uyw@mail.gmail.com>
 <090c2221-63b3-6f1f-d0dd-334b3e64abd8@gmail.com>
In-Reply-To: <090c2221-63b3-6f1f-d0dd-334b3e64abd8@gmail.com>
From:   "Zach O'Keefe" <zokeefe@google.com>
Date:   Mon, 31 Oct 2022 14:24:27 -0700
Message-ID: <CAAa6QmTACgRJS-CDGk4YhGA4QPNaEM1W_JpstkPcsVgoPadAoQ@mail.gmail.com>
Subject: Re: [PATCH man-pages v3 2/4] madvise.2: document reliable probe for
 advice support
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey Alex,

On Mon, Oct 31, 2022 at 1:21 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Zach,
>
> On 10/31/22 17:33, Zach O'Keefe wrote:
> >> Patch applied.
> >
> > Thank you!
> >
> > Best,
> > Zach
> >
> >> Thanks,
> >>
> >> Alex
> >>
>
> I just caught a small formatting issue by running some linters through that file:
>
> $ make -ij lint >/dev/null 2>&1
> $ touch man2/madvise.2
> $ make -k lint-man
> LINT (groff)    tmp/lint/man2/madvise.2.lint-man.groff.touch
> an.tmac:man2/madvise.2:795: style: .IR expects at least 2 arguments, got 1
> found style problems; aborting
> make: *** [lib/lint-man.mk:77: tmp/lint/man2/madvise.2.lint-man.groff.touch] Error 1
> LINT (mandoc)   tmp/lint/man2/madvise.2.lint-man.mandoc.touch
> mandoc: man2/madvise.2:15:5: STYLE: lower case character in document title: TH
> madvise
> mandoc: man2/madvise.2:15:15: WARNING: cannot parse date, using it verbatim: TH
> (date)
> make: *** [lib/lint-man.mk:87: tmp/lint/man2/madvise.2.lint-man.mandoc.touch]
> Error 2
> make: Target 'lint-man' not remade because of errors.
>
>
> The issues reported by mandoc(1) are expected; but the issue reported by
> groff(1) is legit.  The offending line is:
>
> $ sed -n 795p man2/madvise.2
> .IR madvise(0,\ 0,\ advice)
>
> Since all of the line is formatted in italics (no roman part), it should be .I
> and not .IR.
> After fixing that line, the linter now says:
>
> $ make lint-man -k
> LINT (groff)    tmp/lint/man2/madvise.2.lint-man.groff.touch
> LINT (mandoc)   tmp/lint/man2/madvise.2.lint-man.mandoc.touch
> mandoc: man2/madvise.2:15:5: STYLE: lower case character in document title: TH
> madvise
> mandoc: man2/madvise.2:15:15: WARNING: cannot parse date, using it verbatim: TH
> (date)
> make: *** [lib/lint-man.mk:87: tmp/lint/man2/madvise.2.lint-man.mandoc.touch]
> Error 2
> make: Target 'lint-man' not remade because of errors.
>
>
> Ignoring the spurious mandoc(1) warnings, it's all good.
>
> Documentation about how to use this feature is here (written today, so no way
> you could have run it; I should have, though :D):
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUTING#n133>
>

Thanks for taking a look here and thanks for adding the documentation
to CONTRIBUTING -- was easy to follow.

As you mentioned in 1/4, I don't have the groff(1) version (GNU groff
version 1.22.4) to see the error, but it seems like a real fix (& I've
taken a look at your fix patch - thank you :) )

Thanks again,

Best,
Zach
