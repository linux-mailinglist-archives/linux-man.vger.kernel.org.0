Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5AF49613B67
	for <lists+linux-man@lfdr.de>; Mon, 31 Oct 2022 17:34:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231821AbiJaQeQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Oct 2022 12:34:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231796AbiJaQeP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Oct 2022 12:34:15 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15552E39
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 09:34:15 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id j4so20145261lfk.0
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 09:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WuUkP45RzlUJMMDmT0axeeuMqG2jWs1gF2XKSWMSsoc=;
        b=SAMTViSV7EiGrPMEdUePOO7yk3by937/qt76oi0BU1uXz5fBWs8yxw/1HEavwbpqlW
         cSBNZwLWG76VRiruSLQgD181ABYCh0/VDVJ2IJ1JIa+y2tWYd4+9HvVadhMSkx8OZ/Qy
         OvKh63BnhHwCkSseiHc/KK4McNjWM0Y2S68wsJnuTlCQUxPyYf3SbkUWjGqMSKBM0X7M
         mDbfEH+xSw3GaR16PQhW9NbusAN/179Zdwqp+NyA10Ibrko9gfTIHVdRaJd4Wz9npaa4
         qbxAnYFusQqYYFBKy/1bH1J0KiJ/78qPV3YogY/CWNmfGt3ZYOgmhSK1wQcXNtZqlbjA
         I+CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WuUkP45RzlUJMMDmT0axeeuMqG2jWs1gF2XKSWMSsoc=;
        b=vu2nI6iOr+taP1+WJ133bP66lA7w6MVnlCI+d91KzY6EC3lFwXLbPAvpqTwycIiCB4
         WaGXKbbez+CwjgAo92Aje1p8AGFwY2u3YA5VguuJl6nH2Omt6Q3UhIG4aZbIdD0x+tQS
         wBsKbQlsLnAFfpMXz8pFlPEjVU5Xcv8WYT0uR3eb5DPBLU1SSjUowjYfvnUh7U/+E0H0
         VEZmndUAOnP8z9lF5l0BSiMhilnFc+82MD8kHL8E3C17EuAiszCEnVFwGzs67jsfHjRg
         kkdnH153DTn/pq13QTk+Ml1pJd4WPrkGvA18wKpGBX9dFIX1rYRFUd0hjCmVxEDhOo7z
         qwpA==
X-Gm-Message-State: ACrzQf2pbNd5cF7QADfXB92BWgghoBZI+OXD4DW4Uhu0CrM5n3tfCLhg
        za5o7H6l5/G8BRKYDu1OnmrrFlBP+jIVBC9ra9pi2g==
X-Google-Smtp-Source: AMsMyM6IbEpj4S7zheWIkOiAI7Z3aMzs2dfYqSF45HWOtEdjt8FMu87rX/oW7AqlJSS6rfgw8Pyi+AP1cef+Q0VAy5I=
X-Received: by 2002:a05:6512:ac7:b0:4a2:6b9b:3254 with SMTP id
 n7-20020a0565120ac700b004a26b9b3254mr5921719lfu.234.1667234053303; Mon, 31
 Oct 2022 09:34:13 -0700 (PDT)
MIME-Version: 1.0
References: <20221021223300.3675201-1-zokeefe@google.com> <20221021223300.3675201-3-zokeefe@google.com>
 <2f67d133-8996-ef10-4a36-42537906ebba@gmail.com>
In-Reply-To: <2f67d133-8996-ef10-4a36-42537906ebba@gmail.com>
From:   "Zach O'Keefe" <zokeefe@google.com>
Date:   Mon, 31 Oct 2022 09:33:37 -0700
Message-ID: <CAAa6QmT_nGqVpgtNvcrcQos4VGkqF0_mv-L2098ygPHfnc4uyw@mail.gmail.com>
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

On Sun, Oct 30, 2022 at 4:44 AM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Zach,
>
> On 10/22/22 00:32, Zach OKeefe wrote:
> > From: Zach O'Keefe <zokeefe@google.com>
> >
> > EINVAL is an overloaded error code for madvise(2) and it's not clear
> > under what context it means "advice is not valid" vs another error.
> >
> > Explicitly document that madvise(0, 0, advice) can reliably be used to
> > probe for kernel support for "advice", returning zero iff "advice" is
> > supported by the kernel.
> >
> > Signed-off-by: Zach O'Keefe <zokeefe@google.com>
>
> Patch applied.

Thank you!

Best,
Zach

> Thanks,
>
> Alex
>
> > ---
> >   man2/madvise.2 | 5 +++++
> >   1 file changed, 5 insertions(+)
> >
> > diff --git a/man2/madvise.2 b/man2/madvise.2
> > index 64f788ace..df3413cc8 100644
> > --- a/man2/madvise.2
> > +++ b/man2/madvise.2
> > @@ -790,6 +790,11 @@ that are not mapped, the Linux version of
> >   ignores them and applies the call to the rest (but returns
> >   .B ENOMEM
> >   from the system call, as it should).
> > +.PP
> > +.IR madvise(0,\ 0,\ advice)
> > +will return zero iff
> > +.I advice
> > +is supported by the kernel and can be relied on to probe for support.
> >   .\" .SH HISTORY
> >   .\" The
> >   .\" .BR madvise ()
>
> --
> <http://www.alejandro-colomar.es/>
