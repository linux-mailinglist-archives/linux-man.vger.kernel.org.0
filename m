Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 709E758E38B
	for <lists+linux-man@lfdr.de>; Wed, 10 Aug 2022 01:04:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229631AbiHIXEg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Aug 2022 19:04:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbiHIXEf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Aug 2022 19:04:35 -0400
Received: from mail-io1-xd64.google.com (mail-io1-xd64.google.com [IPv6:2607:f8b0:4864:20::d64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33BE26AA25
        for <linux-man@vger.kernel.org>; Tue,  9 Aug 2022 16:04:34 -0700 (PDT)
Received: by mail-io1-xd64.google.com with SMTP id y82so4005874iof.7
        for <linux-man@vger.kernel.org>; Tue, 09 Aug 2022 16:04:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:x-gm-message-state:from:to:cc;
        bh=XURKe2T/HOurqa2c+lBi7+uucPxDx30Mf0CsliMq/MU=;
        b=e7OZfV+g6+zaUGBM6z4iNsNoRHafw9yVyiym4nc6eYDua5mIlH3WilHofOr1ehZjDF
         txX0SpnO86U1CvNY4L2+9vq0w106DNUsMO98h1df2GaBjLwRoIeu6KdL55DSmGaxBdbv
         k3z7kI7l6X2ZUlXUvQxI9UcNTpOKmKYZUby4gFSCZmf0GucUfC4boCcmelmezgXYys/n
         /89YIq3hsVRqzSQVfmB6ILmRIJeBBqsg+Kcp1fV44PwwR/G1VbxzAQSCNRl7EEUPiWcp
         EIs1ioJwgfK+3JHlSh5p9AD64Yt9vXKppah7bdISi+I1XjJpXb6Lf7PXvRjom3JM5LEg
         S49g==
X-Gm-Message-State: ACgBeo1IqTEDqdK2/Dv8UP0GwIPLivKRHVgG5GiWh0xemBuX1NueTmoE
        hAKRrRwvo4tSI8AY4NXH7kUPwIWzPdl0CnMTqDS5IKvqEAPjOg==
X-Google-Smtp-Source: AA6agR4lU/9BIqv2oSBrmQ42sfWb/8alin6xg3C7V8Sz9comEXiegf9sLtSAxK1J3xO/nCaHWoH4eW+ugWbd
X-Received: by 2002:a6b:c501:0:b0:67b:a949:5edc with SMTP id v1-20020a6bc501000000b0067ba9495edcmr10483602iof.198.1660086273656;
        Tue, 09 Aug 2022 16:04:33 -0700 (PDT)
Received: from restore.menlosecurity.com ([34.202.62.188])
        by smtp-relay.gmail.com with ESMTPS id k18-20020a056638141200b0034334c4fef7sm161053jad.80.2022.08.09.16.04.33
        for <linux-man@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Aug 2022 16:04:33 -0700 (PDT)
X-Relaying-Domain: menlosecurity.com
Received: from safemail-prod-02860024cr-re.menlosecurity.com (34.202.62.189)
    by restore.menlosecurity.com (34.202.62.188)
    with SMTP id a1880fb0-1837-11ed-a3e5-ad3a218848bd;
    Tue, 09 Aug 2022 23:04:33 GMT
Received: from mail-yb1-f197.google.com (209.85.219.197)
    by safemail-prod-02860024cr-re.menlosecurity.com (34.202.62.189)
    with SMTP id a1880fb0-1837-11ed-a3e5-ad3a218848bd;
    Tue, 09 Aug 2022 23:04:33 GMT
Received: by mail-yb1-f197.google.com with SMTP id r4-20020a259a44000000b006775138624fso10824865ybo.23
        for <linux-man@vger.kernel.org>; Tue, 09 Aug 2022 16:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=menlosecurity.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=XURKe2T/HOurqa2c+lBi7+uucPxDx30Mf0CsliMq/MU=;
        b=dNBYAep7vIcP3eMsdK1NRHM8H/6Ti65DClzLi8rO8DEpwGb0AjyyWHbhzcsQFKi5uW
         P5lDbuw9A6osVeWuX17eRD//V75YrZ+2OWnHgS96Gk+HEI98b8mrdHJ6tdQ5FeDctE47
         T5BZK71+7SfFunojrSPVtFn3gRNM8LbjPfBEs=
X-Received: by 2002:a5b:906:0:b0:67a:85eb:feb1 with SMTP id a6-20020a5b0906000000b0067a85ebfeb1mr23737740ybq.215.1660086272449;
        Tue, 09 Aug 2022 16:04:32 -0700 (PDT)
X-Received: by 2002:a5b:906:0:b0:67a:85eb:feb1 with SMTP id
 a6-20020a5b0906000000b0067a85ebfeb1mr23737725ybq.215.1660086272252; Tue, 09
 Aug 2022 16:04:32 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FoirA6PSOztihqrvOTVRKiSR8KnqiiZM-Tj9jVZjur3cia4w@mail.gmail.com>
 <CA+FoirDEkxx5=LJbkrxSbieEbN__3kk5KnSuFooeff+hUo8cCw@mail.gmail.com>
 <95f12d46-f6e6-25b0-123b-5ce2d24e3ec0@gmail.com> <abff3c2f-f3ae-5b62-6a49-591a6b4289be@gmail.com>
In-Reply-To: <abff3c2f-f3ae-5b62-6a49-591a6b4289be@gmail.com>
From:   Rumen Telbizov <rumen.telbizov@menlosecurity.com>
Date:   Tue, 9 Aug 2022 16:04:21 -0700
Message-ID: <CA+FoirBYs=_2+gwzCGMdNB58j3BVZF=E9Uar-hDYu4kk5hSGDQ@mail.gmail.com>
Subject: Re: man7.org update
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <man-pages@man7.org>,
        linux-man <linux-man@vger.kernel.org>,
        Quentin Monnet <quentin@isovalent.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks.
I appreciate it.

On Tue, Aug 9, 2022 at 4:03 PM Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> I just checked that he has a different address for reports about the
> online man pages. I redirected this to the correct email of him.
>
> On 8/10/22 01:01, Alejandro Colomar wrote:
> > Hi Rumen,
> >
> > On 8/9/22 18:58, Rumen Telbizov wrote:
> >> Hi Alejandro, list,
> >>
> >> In short: Quentin and I were wondering if you know who maintains and
> >> updates
> >> https://man7.org/linux/man-pages/man7/bpf-helpers.7.html
> >
> > Michael Kerrisk.
> > <https://man7.org/>
> >
> > That's his own website.
> >
> >>
> >> This is with regards to the changes that we talked about previously to
> >> the bpf-helpers man page and the script that needs to be run in order
> >> to update the man page. Those changes don't seem to be reflected in
> >> the link above. Assuming that the script has been run already and all
> >> the changes are in place, do you have any idea when/who updates this
> >> page to reflect that?
> >
> > There hasn't been a man-pages release yet since that happened. Normally,
> > Michael updates that page after every release of the Linux man-pages.
> >
> > Cheers,
> >
> > Alex
> >
> >
>
> --
> Alejandro Colomar
> <http://www.alejandro-colomar.es/>
