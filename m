Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2BF2F63488A
	for <lists+linux-man@lfdr.de>; Tue, 22 Nov 2022 21:41:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234704AbiKVUlY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Nov 2022 15:41:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234941AbiKVUk3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Nov 2022 15:40:29 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 109595ADD7
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 12:39:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1669149570;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=jFsDIVR+3befNSZ3ZkSprKulPuSFuZn+2/ASSNggDGA=;
        b=hLS7Qb1hee9s6KYhvnJ4olhtMlbNjmpSRu3BCB6UpGJ0zrlXWgGNljrbNeMnxYYZE1iI0R
        iZTj4LE4IBDc6D65DD3WXrISP0KiAnhIKoHvpEJz6ID3u2VF9/xeFR+ODq6b8YtVw1wYf9
        dGk9ySTN+HlgTWGJG3q9t6tl3RC12EU=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-31-Mgapk6ErOjyGq3JXnr_5Ww-1; Tue, 22 Nov 2022 15:39:28 -0500
X-MC-Unique: Mgapk6ErOjyGq3JXnr_5Ww-1
Received: by mail-ed1-f71.google.com with SMTP id v18-20020a056402349200b004622e273bbbso9395994edc.14
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 12:39:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jFsDIVR+3befNSZ3ZkSprKulPuSFuZn+2/ASSNggDGA=;
        b=XjWx1zBDPZe/UN9PYQka6+I60AUG3hpOmnAxeRZXg8ydDwwf8/kQa76gLJPN04JbXV
         vQ9M4E/GR1ExTldxoxhFbRDuPNCpeAVfo0ooQFqdKNW0w6XDH1T5CFr6fYmzTACwV+MP
         QG7L3J8gKWSZXSky0754cDhW2BAJpzaY/ex/cJz4YLOwBNL16+bd0IJxr5KVC4q/gn9E
         At13qYVyKLUCbvgC4+Nm5xDtlwly4RV03E8cGSsoLtVxoVawKX8bQeZw9WXVspfWNueG
         e6lCC9tgYLp6+1AELPpJ5csB7OrB30fZHMb8RD4EqwmmCeooJG880QBENjOGt4jaOHUQ
         7Zwg==
X-Gm-Message-State: ANoB5plvYamAcqisn19G3uXOxqi1EwhMPYmNm2QNJDBO9Tr4dWj4EkFA
        a0vKghWZKdbuSCmuECT87gLtCksRtCDLij+cTOc7vXGpz44rFcyIT03ZParRaxKg1KNAEL226Rd
        Amy0+t7aNYSV23rBFHUU2S+CjCjyxeyRXtYjg
X-Received: by 2002:aa7:c511:0:b0:469:7731:5b29 with SMTP id o17-20020aa7c511000000b0046977315b29mr12458862edq.419.1669149567452;
        Tue, 22 Nov 2022 12:39:27 -0800 (PST)
X-Google-Smtp-Source: AA0mqf4YdQczpSAEzoEpMuO+qnDk/8DyrjIaY4GK0CdRzisffTSmSAs9p6l15WEjzG1me2TumluaLkStrZQlaBDrOp8=
X-Received: by 2002:aa7:c511:0:b0:469:7731:5b29 with SMTP id
 o17-20020aa7c511000000b0046977315b29mr12458849edq.419.1669149567292; Tue, 22
 Nov 2022 12:39:27 -0800 (PST)
MIME-Version: 1.0
References: <CACb0b4=Qs4oQ6LWxOveU2cc=eNzrqT7dg=cQsg41vGF84=9LiA@mail.gmail.com>
 <CACb0b4nsGQzyQ+rQf_SMMdyN1R3WSsc6grfgGUhT+fjgM2QFOg@mail.gmail.com>
 <CACb0b4=LO+jcwwrirp3iVdu2k0Y8H0PEWwdzs+Jch+D4gJxiog@mail.gmail.com>
 <dfb539ad-4a72-00a0-c75d-ead317b9ed46@gmail.com> <CACb0b4kD50c35XYZVX9OKgJ6n6-fPk2_Jo+-yvOOeiE1XVpVBQ@mail.gmail.com>
 <9bd0af40-a7b3-cb16-27e8-c39c620acda3@gmail.com>
In-Reply-To: <9bd0af40-a7b3-cb16-27e8-c39c620acda3@gmail.com>
From:   Jonathan Wakely <jwakely@redhat.com>
Date:   Tue, 22 Nov 2022 20:39:16 +0000
Message-ID: <CACb0b4kUmseTdKE-xLRy8KGgtHU011qdYnEWEBfXwsySLJYFWA@mail.gmail.com>
Subject: Re: Garbled text in zic(8) man page
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, 22 Nov 2022 at 20:37, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> Hi Jonathan, Paul,
>
> On 11/22/22 21:31, Jonathan Wakely wrote:
> > On Tue, 22 Nov 2022 at 19:22, Alejandro Colomar wrote:
> >>
> >> Hi Jonathan,
> >>
> >> On 11/22/22 14:13, Jonathan Wakely wrote:
> >>> On Tue, 22 Nov 2022 at 13:00, Jonathan Wakely wrote:
> >>>>
> >>>> On Tue, 22 Nov 2022 at 12:58, Jonathan Wakely wrote:
> >>>>>
> >>>>> Hi,
> >>>>>
> >>>>> The description of the RULES field of a Zone line at:
> >>>>> https://man7.org/linux/man-pages/man8/zic.8.html#FILES
> >>>>> seems garbled:
> >>>>> "giving of the amount of time to be added to local standard time effect"
> >>>>>
> >>>>> It looks like it might be a copy&paste error from the similar text for
> >>>>> the SAVE field of a Rule line. I think the first "of" and the "effect"
> >>>>> should be removed, but I'm not sure if that's correct.
> >>>>
> >>>> This was introduced by
> >>>> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man8/zic.8?id=5355e20f816e1e0af93d6bb80439e86f2d1c7be7
> >>>> so maybe it should be reported to tzdb upstream instead.
> >>>
> >>> It's already fixed upstream. The version in the tzdb-2022f package says:
> >>>
> >>>          RULES The name of the rules that apply in the timezone or,
> >>>                alternatively, a field in the same format as a rule-line SAVE
> >>>                column, giving the amount of time to be added to local standard
> >>>                time and whether the resulting time is standard or daylight
> >>>                saving.  If this field is - then standard time always applies.
> >>>                When an amount of time is given, only the sum of standard time
> >>>                and this amount matters.
> >>>
> >>> So here's a patch for the man page. There are lots of other changes in
> >>> the upstream page though, so another sync might be useful.
> >>
> >> As you said, a sync would be better.  However, I don't know how Michael did
> >> that.
> >
> > Paul Eggert did it last time.
>
> Thanks!
>
> >
> >> If you know where the page comes from, could you please prepare a patch
> >> that does the sync, and document it in the commit message so that it's easier to
> >> do it in the future?
> >
> > Upstream is https://www.iana.org/time-zones
>
> Ahh, I remember last time I wanted to check the source code I desisted because
> there's no git repository, and I didn't want to be messing with tarballs.  But
> getting the pages from the tarball seems easy, so I'll do that.
>
> Paul, do you have a public git (or whatever) repository that I can check out?


It looks like there are a few local changes such as replacing
"degrees" with the degrees symbol, which should probably be preserved
rather than overwritten by a sync. So it's not just as simple as
overwriting with the upstream copy. I can try to look into it, but it
won't be very soon.

