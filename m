Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4E9F69823B
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 18:35:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229982AbjBORfJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 12:35:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230024AbjBORfI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 12:35:08 -0500
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com [IPv6:2607:f8b0:4864:20::d36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D280166FA
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 09:35:07 -0800 (PST)
Received: by mail-io1-xd36.google.com with SMTP id y7so7385410iob.6
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 09:35:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Dwp/LNNaKld3qz8kdsZv/+FnUHID+CiXOpx33R2uW6c=;
        b=mcE0HqmWlzsB5CcgXiJiY4Fu8RDiqL4J8h1PIPlmtKXb8ZxMsRhLJpjmfIRAm4x0lN
         CjP/UcVUgATSeBO8ROCXsSb+Az8f3ddAPdoc4ykczxX69yWHahBmQOD387ui2+ekjuqY
         0BFwLJco3PXfaktaogKr29jlY6wg/js2+pFU9upg/j9Ho/GEtqAwodHiX9mruvTz68BI
         Y2X/qtNXenYcueCuceF29KdokEkc1uGB9V8p+Ktc3tVQxE35evcULzPpPBoQYD3DP+u/
         BTvOlCbYAMOQwHF0dv7I2JAS9ba48KRF4kvi1zIlbVPkshLXBa+RIaA7ME+ut8aQQOG/
         hrcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dwp/LNNaKld3qz8kdsZv/+FnUHID+CiXOpx33R2uW6c=;
        b=gFzMTqMegVDWFMXLqXcEJEC5AsIcSeT/qi7+GeZU59uZ1r4bNJeG78WEfrvkQ3AvL2
         1cNuwTBEp5jRxEwiZfCQ6wZNOWUhLmDS2torpt0rfUQCcBJNpRbU5fAiBqNk811ZLlrG
         qaun2IDI9zq3y3M6rv/ySrpQRopto8RGhATzpoULOANv+6a7PYyvzwUtOM+jB5WVKSB2
         eg7VhHnq9nxw6Dd8i5Tf51KZXxv/D5s77ZUbmxVCQk+tZFKJ+FVOzE2cPNZc6ECq2M9/
         M+UE+/+0iYE3EyvuqS//UdFpgeNNJSdljrROzVxYTTyenjxuGuoXIYMgrCRTdJTsU/he
         vW1Q==
X-Gm-Message-State: AO0yUKWDcIpW4gwDEtRwgaQAub0n0CE/D5qIwr6BhEh3IfDb3n731CAP
        hGMDqBaE++MdONHjFNKb4khI8JO8rV4uAnXdxPdyUg==
X-Google-Smtp-Source: AK7set8EJqo7/wdvS2iiWrjJB6iE+BFniIaV02No9JCJRDZ78KAJvX1CcFV3er6OYoZlLn5pO68i26Mi2jNjrWCq29w=
X-Received: by 2002:a6b:fa13:0:b0:73c:e907:b1be with SMTP id
 p19-20020a6bfa13000000b0073ce907b1bemr1127316ioh.78.1676482506473; Wed, 15
 Feb 2023 09:35:06 -0800 (PST)
MIME-Version: 1.0
References: <CAJ0cOr-v1GDCqsU86w-rZVvejtppOAW56FxApFPnfPwRmAd47w@mail.gmail.com>
 <CAJ0cOr-x+hg5cH_wHH+uJ4co69qYZN425d-nFdoqFtuM79Kxzg@mail.gmail.com>
 <CAJgzZooiJVgKDH9KkW_FKZJThDVLJjqGLQ3RB1NnHVQVbA-QjQ@mail.gmail.com> <2d8c77b3-ba32-1494-037b-ad609e1c263a@gmail.com>
In-Reply-To: <2d8c77b3-ba32-1494-037b-ad609e1c263a@gmail.com>
From:   Almaz Mingaleev <mingaleev@google.com>
Date:   Wed, 15 Feb 2023 17:34:55 +0000
Message-ID: <CAJ0cOr_+tgOp4VRvHkPa6o10sTBpM8+T6-DJK2a1JkUBvrHFmA@mail.gmail.com>
Subject: Re: %z and %Z in strftime man page require clarification
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     enh <enh@google.com>, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org, Paul Eggert <eggert@cs.ucla.edu>
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

Hi Alex,

Patch is somewhat ready, I will send it once a teammate reviews it.
Should be ready by tomorrow.

I'd definitely appreciate if Paul checks it too :)


On Wed, 15 Feb 2023 at 17:21, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> Hi Elliott, Almaz,
>
> On 2/13/23 17:31, enh wrote:
> > (given how complex a topic this is -- based on the discussion on the
> > tz mailing list -- you might want to send a specific suggestion in the
> > form of a patch...)
>
> Thanks, I agree.  This is too complex, and it would be nice to
> see a more specific suggestion in the form of a patch.
> I CCed Paul, in case he can help.
>
> Cheers,
>
> Alex
>
> >
> > On Mon, Feb 13, 2023 at 1:15 AM Almaz Mingaleev <mingaleev@google.com> wrote:
> >>
> >> Friendly ping.
> >>
> >>
> >> On Thu, 28 Jul 2022 at 09:16, Almaz Mingaleev <mingaleev@google.com> wrote:
> >>>
> >>> Hi Michael,
> >>> Current strftime specification in C language standard is not accurate.
> >>> It tells that tm_isdst is enough to find out time zone's offset. But
> >>> that's not true, for example Europe/Lisbon has changed [0] its
> >>> standard offset from 00:00 to 01:00 and back to 00:00, so an exact
> >>> date is needed to answer that.
> >>>
> >>> To get correct answer with the current glibc tm struct should either
> >>> come from localtime or there should be a mktime call prior to
> >>> strftime. You can find a repro example and discussion here [1]. Paul
> >>> Eggert has proposed a fix to C standard [2].
> >>>
> >>> Should man pages reflect that i.e. mention that there should be
> >>> localtime/mktime calls for %z and %Z?
> >>>
> >>> Thanks,
> >>> Almaz
> >>>
> >>> P.S. I am resending the email. My previous attempt was bounced back as
> >>> it wasn't TEXT/PLAIN.
> >>>
> >>> [0] https://github.com/eggert/tz/blob/a249a0c64b2f87a24c7f1aab43056fb597c95b96/europe#L2400
> >>> [1] https://mm.icann.org/pipermail/tz/2022-July/031668.html
> >>> [2] https://mm.icann.org/pipermail/tz/2022-July/031674.html
>
> --
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
