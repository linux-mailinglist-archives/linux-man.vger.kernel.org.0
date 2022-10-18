Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CEBE603285
	for <lists+linux-man@lfdr.de>; Tue, 18 Oct 2022 20:31:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230032AbiJRSbY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 14:31:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230030AbiJRSbX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 14:31:23 -0400
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DE723C17C
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 11:31:21 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id w74so16595582oie.0
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 11:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EnP8sgGhihhh5pbXuuUK2sG9k2D16qAENqhp+CIh9HE=;
        b=AFOcQpSfNP6N3XORSUBvHbgkPAaQwNtJbq3oZ2rcNj6xjkXoAgjjx+3gSmzMItZq0D
         OlW+42vwAkwGltYJIK/D12GmyoSeEe3OhpJKMml1c7FSeRhTKR8kS3wE0K3+0fweS6Zz
         1l8UIxSS4BxzhboAX1lKxaJODpn1TyMN3Y3gMPL39cMuWM7NeyK1LEMT0loaBl8ILvKb
         iCoKBmizhpsrPv6Qny7QXMrl8kyndCyWmesLe+DPMQcKMUeFTq1mymkN/E57Yww6sOkR
         c/WCAWZISBoUkl7qPWl1G2eMbJDzfIXMtMV56MaSlisoAocLEMnQNPDcSJow5O9SUvbM
         /ffg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EnP8sgGhihhh5pbXuuUK2sG9k2D16qAENqhp+CIh9HE=;
        b=IWXrAbXSSoFrrfafrI2wjQeR8oEMv/SADfMiZSo2EwmC7BWO89oIYiqzIcpdXzua5c
         lgZ0SLmDa/rcsDLqNajHMyqGIzXbySY6LI2GfQf2ggV3TCuzBAY2rAA1gfGE2m9GBOSQ
         jkFG5z4I+yaztWl/DwU02QcyqUFgsMpU22UhCNSj6I+Y8ZtGsDt0FAic1ZG7pUf9rnaR
         +QAmEawOc2dkAzu285718u5Tfn2AsCmazqSqWotO8udRmEI13YVH1PXX1nau2Hu2S4Vw
         nUsXYf/XMZonAOg51aHvV9TuI9QP2cuoA2JwNEjrpjTYBKPD8zpGKe4RvYTfc5KKUNXS
         GD/Q==
X-Gm-Message-State: ACrzQf2uOIhg5Xs8NSYqBxZHebsy67uBB52+yfz7E/8214Lkqgieq7BP
        pQEOSUpgQhvv6DgmrTyTgpaGbMqXkiALuvkrziRI9Zm9Wp0=
X-Google-Smtp-Source: AMsMyM5+40jotf53m5cZQRUwf/hLr9NInDdhVdN7owL/JDYj0ah9yrixM5AtJyvtvRoAhjlZJxKaHcnjXOePLaT4t3w=
X-Received: by 2002:a05:6808:f12:b0:354:b4c6:b4a3 with SMTP id
 m18-20020a0568080f1200b00354b4c6b4a3mr2070234oiw.123.1666117880895; Tue, 18
 Oct 2022 11:31:20 -0700 (PDT)
MIME-Version: 1.0
References: <20221017175523.2048887-1-zokeefe@google.com> <20221017175523.2048887-3-zokeefe@google.com>
 <2de9de5f-c82d-f2ce-26e3-b9fabd88a08c@gmail.com> <CAAa6QmQn-8sY2N7r4-rAHJbgdMdAkJUKQyGWfbief0bhdY4Csw@mail.gmail.com>
 <30f2b019-1dbd-dbb8-e6f5-a1c2c9f3a979@gmail.com>
In-Reply-To: <30f2b019-1dbd-dbb8-e6f5-a1c2c9f3a979@gmail.com>
From:   "Zach O'Keefe" <zokeefe@google.com>
Date:   Tue, 18 Oct 2022 11:30:45 -0700
Message-ID: <CAAa6QmRghdBvHv43LoekXCzEhf8yE=CK-atgty=Y0nxDSoh83A@mail.gmail.com>
Subject: Re: [PATCH man-pages 2/4] madvise.2: document reliable probe for
 advice support
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Tue, Oct 18, 2022 at 11:04 AM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hey Zach!
>
> On 10/18/22 19:53, Zach O'Keefe wrote:
> > Hey Alex,
> >
> >>> diff --git a/man2/madvise.2 b/man2/madvise.2
> >>> index e14e0f7fb..adfe24c24 100644
> >>> --- a/man2/madvise.2
> >>> +++ b/man2/madvise.2
> >>> @@ -789,6 +789,13 @@ that are not mapped, the Linux version of
> >>>    ignores them and applies the call to the rest (but returns
> >>>    .B ENOMEM
> >>>    from the system call, as it should).
> >>> +.PP
> >>> +.BR madvise (0,
> >>> +0,
> >>> +.IR advice )
> >>
> >> For expressions, we don't follow the same highlighting rules as in
> >> identifiers and man-page references.  Instead we use all italics.  See
> >> man-pages(7):
> >>
> >>          Expressions, if not written on a separate indented  line,
> >>          should  be  specified in italics.  Again, the use of non=E2=
=80=90
> >>          breaking spaces may be appropriate if the  expression  is
> >>          inlined with normal text.
> >
> > Just to confirm, by "expression", you mean "madvise(0, 0, advice)"?
>
> Yes, I meant that.
>
> > If
> > so, to be consistent with the other note, perhaps best to break this
> > into a phrase such as:
> >
> > --8<---
> > .BR madvise ()
> > called with zero for both
> > .IR addr
> > and
> > .IR length
> > will return zero iff
> > .I advice
> > is supported by the kernel and can be relied on to probe for support.
> > --8<---
>
> I think the C expression was more readable.

SGTM - will update for v2.  Appreciate your help here!

Best,
Zach
