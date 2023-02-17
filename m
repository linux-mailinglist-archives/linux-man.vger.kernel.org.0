Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5FC9469ADBF
	for <lists+linux-man@lfdr.de>; Fri, 17 Feb 2023 15:17:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229648AbjBQORd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Feb 2023 09:17:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbjBQORc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Feb 2023 09:17:32 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D20DACA34
        for <linux-man@vger.kernel.org>; Fri, 17 Feb 2023 06:16:58 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id dn12so12535026edb.5
        for <linux-man@vger.kernel.org>; Fri, 17 Feb 2023 06:16:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1s2jlDlOfzUdTBZ1V5/CAYbzmO5mavirfE7v4X9gt18=;
        b=FF/YwY19qOJZFZUp8AEXn47UxJkQSEYARSC+3ECeXebGuydsDHsN8W+uzytcFevffS
         F6RpKSXCd2jaJVJ8j5nnVejX7A+We/mb23uQbUj0I4Cba5JR5fUaR6+27TcvNCrcVTUy
         XP6khOvVurJAn39vlaMwaUCFnqbN26VHVTODzkxstNZlKIXdcps7hTtvVM48HNSTETwv
         4Q7USUYWzByNEO0v817WRUr7bMpxsJ0nSvFQCcWiyrYaeAfZszzht96Ag3M+qrm5ndwZ
         hv81H/YYtC7wHY8jKjQoHsY4xrHK3fEDu4a86N0lDPzb62dL7oWHdJCTx9WPqN5oC1ik
         ta6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1s2jlDlOfzUdTBZ1V5/CAYbzmO5mavirfE7v4X9gt18=;
        b=vR381U8BdU+4khyyMcYTKgABFaOtkhVfhcneB0TNztbxHKsulbvW/JKhi+EnNQnueQ
         WmoGA2oPm6N4sN5shwleDeKSeQVFKiHkLvDo9iR5cP6DVCoifC0Hw5s5IRuDAjS0mM2B
         7XXLRcWKRmj50FuWS8WG8LkbeOxftVWGmc3vZgBxP0a2ixqPI2W0KTeb0p9Qj9pZoiSf
         x7JBrQ93TXXQ34RTeYdf+a2xDiV2dXpx5fEre6OhGwUOL3R+F+vw9YyAoZnuPIrZ95bP
         6g1QnqAZ5SSW8aL5kGW9bKxY6YEWiwF59ut8HlC8+sCFiiQdfQhWVtg7pelgE4FtH9oh
         VrFw==
X-Gm-Message-State: AO0yUKVPa+8zn5qpl6LnsbPjdfarV2dJEe/wqmjrocNBhu/FTx27srhu
        K2QydszVlXvfQ26FFc6q5l+a8Cp4JrKOt/CeN2kvfPzS
X-Google-Smtp-Source: AK7set/l0gNgMWjW5gnwsr8fGrU4/EOKTwY6AdobKtJhVY1EhjHEj9baHIBPSbRWx4vWY99I80EigcsRmki75tX3UWQ=
X-Received: by 2002:a50:9fce:0:b0:4ad:4c0:c4f9 with SMTP id
 c72-20020a509fce000000b004ad04c0c4f9mr866978edf.3.1676643416872; Fri, 17 Feb
 2023 06:16:56 -0800 (PST)
MIME-Version: 1.0
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca> <d47cf59d1b4d921aeeb9cbedc06323c4108303b3.1676489381.git.Brian.Inglis@Shaw.ca>
 <CACKs7VCNztr2c8zeN2WcMv2ryBVFwwRFscZ6DEQAAHwMiGA4Vw@mail.gmail.com> <94b4e2b2-1286-59e4-07b4-d5b8e25d4136@gmail.com>
In-Reply-To: <94b4e2b2-1286-59e4-07b4-d5b8e25d4136@gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Fri, 17 Feb 2023 16:16:45 +0200
Message-ID: <CACKs7VDNRDSOA4hZ7wPM55am==-RgC3RU8qb7NVjj3M0_pRcuA@mail.gmail.com>
Subject: Re: [PATCH v3 3/6] man2/: add C digit separators to clarify POSIX
 feature release dates
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Brian Inglis <Brian.Inglis@shaw.ca>,
        Linux Man Pages <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Fri, Feb 17, 2023 at 1:04 AM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Stefan,
>
> On 2/16/23 22:11, Stefan Puiu wrote:
> > Hi Brian,
>
> [...]
>
> >> diff --git a/man2/access.2 b/man2/access.2
> >> index d3deeecba0c7..4c93a132b209 100644
> >> --- a/man2/access.2
> >> +++ b/man2/access.2
> >> @@ -56,7 +56,7 @@ Feature Test Macro Requirements for glibc (see
> >>  .BR faccessat ():
> >>  .nf
> >>      Since glibc 2.10:
> >> -        _POSIX_C_SOURCE >= 200809L
> >> +        _POSIX_C_SOURCE >= 2008\[aq]09L
> >
> > Not sure how \[aq] renders,
>
> \[aq] is equivalent to \(aq, which renders as ', the single quote character.
>
> > but if people want to copy / paste some of
> > these snippets (for use in their code, or for searching), wouldn't
> > they need to then remove the separator?
>
> It depends on your compiler version and language version.
> ISO C23 will add support for this.  What we could do is prepare the patches,
> and leave them in a branch until C23 is made official.
>
> Right now, you can already get recent enough versions of GCC to
> accept that code, if you use -std=c2x.

Good to know. If this were a few years old, it would probably be a
no-brainer, but if this is valid code only for the latest and greatest
gcc, then yes, maybe these changes can wait. There are many projects
that take a while to adapt to newer compiler versions, and not
everybody runs distros with new compilers.

Just my 2 cents,
Stefan.

>
> > I think that can cause
> > confusion, which you probably don't want documentation to do.>
> > Again, just my 2 cents,
> > Stefan.
> >
>
> Cheers,
>
> Alex
>
> --
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
