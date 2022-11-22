Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8CD6634839
	for <lists+linux-man@lfdr.de>; Tue, 22 Nov 2022 21:32:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233207AbiKVUcg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Nov 2022 15:32:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234858AbiKVUcd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Nov 2022 15:32:33 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6F6D1C12F
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 12:31:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1669149091;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=1vssKSJn8AAX9NGFXPXwzODEy+tLhuuiHbIBIYR6Gqo=;
        b=FNbOhJF2O/+f4EI6z9zxB9I63EteeeWghwPho4zUloi6CU2sY4/idhrTPXnwg5+EckHk/2
        pfky9fxayj9x8sUuEFXDq6Y7sZezP8+fpTgYO2TGBiCNRHZ+foTgKgXJTNdigRA0QmHCsI
        0dewzqhR0ryTW9DbXZzk0bCxQrl/SJU=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-104-yQjjK04zPLC1ZBFYXD8LtA-1; Tue, 22 Nov 2022 15:31:29 -0500
X-MC-Unique: yQjjK04zPLC1ZBFYXD8LtA-1
Received: by mail-ed1-f71.google.com with SMTP id l18-20020a056402255200b004633509768bso9340496edb.12
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 12:31:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1vssKSJn8AAX9NGFXPXwzODEy+tLhuuiHbIBIYR6Gqo=;
        b=V1j7ODohZEzWT1XoMeAz82Cf7hVCDkmkk6YPu4K13DB45hnGTXfKKwD/eNJEbpS9hy
         /JGVdobr25EvOUOIKjPKtqYiSbK5M5oEar2CdT7CVQoKwDbdQgc3gKYP9VRJ8sEucI5U
         JIxvcA8gwn1UDiQp4zCKxdAxBjTW5/zUn30XT0x84dq6Z2KTUiXfx1bKTU67XOWOvaeo
         vCn907r9Gqgzirr0BapP31hwa/WE1ATok/GCV4H0TOw6fsmfk91ygeO7822bibLmqBKv
         P0/wki8KLGibRwAyeD9fap5r97xhB8BeXnGzyUcVJ/nQ/ADpsxSZnP5JEGB45MLcqAOv
         4dQQ==
X-Gm-Message-State: ANoB5pm/VtESLu+HkvWo32UI1I38wZpsXQp1IEBigAmJfSb3vE34pq4E
        k0TKqkLPCjRAs+gUccEZZLiZ3mwXjyeH7JpSuGVnAswwWT0smNQtBNUstbKk4EJAqVKKAMqSTqb
        +XwuIRgEsTATSWhTA4peNTa/Ya8fksUJ2Vj6D
X-Received: by 2002:a17:906:c02:b0:7ae:ca2f:171d with SMTP id s2-20020a1709060c0200b007aeca2f171dmr21036705ejf.353.1669149086355;
        Tue, 22 Nov 2022 12:31:26 -0800 (PST)
X-Google-Smtp-Source: AA0mqf6PNIX8BRTTtXh6rvwkOxPRtqIHLno0Q1+95e9vLRsmpgz0WjSBtfNNFqTK27pFbJD7lvIgR84DQTIjvRLdlZw=
X-Received: by 2002:a17:906:c02:b0:7ae:ca2f:171d with SMTP id
 s2-20020a1709060c0200b007aeca2f171dmr21036695ejf.353.1669149086153; Tue, 22
 Nov 2022 12:31:26 -0800 (PST)
MIME-Version: 1.0
References: <CACb0b4=Qs4oQ6LWxOveU2cc=eNzrqT7dg=cQsg41vGF84=9LiA@mail.gmail.com>
 <CACb0b4nsGQzyQ+rQf_SMMdyN1R3WSsc6grfgGUhT+fjgM2QFOg@mail.gmail.com>
 <CACb0b4=LO+jcwwrirp3iVdu2k0Y8H0PEWwdzs+Jch+D4gJxiog@mail.gmail.com> <dfb539ad-4a72-00a0-c75d-ead317b9ed46@gmail.com>
In-Reply-To: <dfb539ad-4a72-00a0-c75d-ead317b9ed46@gmail.com>
From:   Jonathan Wakely <jwakely@redhat.com>
Date:   Tue, 22 Nov 2022 20:31:15 +0000
Message-ID: <CACb0b4kD50c35XYZVX9OKgJ6n6-fPk2_Jo+-yvOOeiE1XVpVBQ@mail.gmail.com>
Subject: Re: Garbled text in zic(8) man page
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
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

On Tue, 22 Nov 2022 at 19:22, Alejandro Colomar wrote:
>
> Hi Jonathan,
>
> On 11/22/22 14:13, Jonathan Wakely wrote:
> > On Tue, 22 Nov 2022 at 13:00, Jonathan Wakely wrote:
> >>
> >> On Tue, 22 Nov 2022 at 12:58, Jonathan Wakely wrote:
> >>>
> >>> Hi,
> >>>
> >>> The description of the RULES field of a Zone line at:
> >>> https://man7.org/linux/man-pages/man8/zic.8.html#FILES
> >>> seems garbled:
> >>> "giving of the amount of time to be added to local standard time effect"
> >>>
> >>> It looks like it might be a copy&paste error from the similar text for
> >>> the SAVE field of a Rule line. I think the first "of" and the "effect"
> >>> should be removed, but I'm not sure if that's correct.
> >>
> >> This was introduced by
> >> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man8/zic.8?id=5355e20f816e1e0af93d6bb80439e86f2d1c7be7
> >> so maybe it should be reported to tzdb upstream instead.
> >
> > It's already fixed upstream. The version in the tzdb-2022f package says:
> >
> >         RULES The name of the rules that apply in the timezone or,
> >               alternatively, a field in the same format as a rule-line SAVE
> >               column, giving the amount of time to be added to local standard
> >               time and whether the resulting time is standard or daylight
> >               saving.  If this field is - then standard time always applies.
> >               When an amount of time is given, only the sum of standard time
> >               and this amount matters.
> >
> > So here's a patch for the man page. There are lots of other changes in
> > the upstream page though, so another sync might be useful.
>
> As you said, a sync would be better.  However, I don't know how Michael did
> that.

Paul Eggert did it last time.

> If you know where the page comes from, could you please prepare a patch
> that does the sync, and document it in the commit message so that it's easier to
> do it in the future?

Upstream is https://www.iana.org/time-zones


>
> If you do that, please also sync tzfile(5) and zdump(8) in the commit.
>
> Thanks,
>
> Alex
>
>
> ---
>
> $ cat MAINTAINER_NOTES
> Externally generated pages
> ==========================
>
> A few pages come from external sources. Fixes to the pages should really
> go to the upstream source.
>
> tzfile(5), zdump(8), and zic(8) come from the tz project
> (https://www.iana.org/time-zones).
>
> bpf-helpers(7) is autogenerated from the kernel sources using scripts.
> See man-pages commits 53666f6c3 and 19c7f7839 for details.
>
> --
> <http://www.alejandro-colomar.es/>

