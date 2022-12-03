Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3019C64192C
	for <lists+linux-man@lfdr.de>; Sat,  3 Dec 2022 22:14:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229579AbiLCVOP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Dec 2022 16:14:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229976AbiLCVOL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Dec 2022 16:14:11 -0500
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E66918E25
        for <linux-man@vger.kernel.org>; Sat,  3 Dec 2022 13:14:09 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id b13-20020a17090a5a0d00b0021906102d05so8045309pjd.5
        for <linux-man@vger.kernel.org>; Sat, 03 Dec 2022 13:14:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=btRA/RaY9Zsmus9bfZzxHZuqLpay8C9H5t97LkqyHUU=;
        b=jrF9Goz8bbs9aRctMvpMx+zpHw1NXFS/tFg8Ej34pZm16MJq6WWtmHsfK5Ll1gPqBl
         S6uGRKpeVv73BBTqGTJOfl27uWrUq0FqJ4cMyc+4mUxWN6AwZEaiDNGQLRwfOiqB4j7P
         ga+DYJYRd+SkV6pNwUNmKDCxRbxbR+iwl4y1CzSFw65jlLis/ci/ZsK4XvRt5yvpb46F
         JIIDIpHfclWImpINxHJF57zRpQFtNaJ89+kKiaWByLMlnE/YRXtRbGHSlO/1+X5PNAXr
         mneHrEckSHoM+wj986MlGW9A/JkkUqqXB7ioxEo5zVsFsARPwQ36kBUfrPpH7eQWyKwY
         3PXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=btRA/RaY9Zsmus9bfZzxHZuqLpay8C9H5t97LkqyHUU=;
        b=4tXzB5FCYB1GN4P1KXWlFGJ6hvhns6YJWAKCbwOlu5VQil7qA7jOrSfh6DKF9NZQ9R
         rsav8S3lon5nXBExdNyZvy4PJs9dkQ5qzRopoeYKpyQc+YrwyWWdC1Jd75Ab1KT/Rw1m
         9nzMFYLXmiEqgnRtiR5D+1EZ0O5ND2x8cNiE1OFybVOl9s39HGEn+4yub9+TT7WceOGu
         V5P6jtAJ8UQpY5nnVlN3RLOqDhbpxvuNr/noJel4UOGIJoNrobDYBEe+0fgR8o91mu1n
         VeS++/uByKh0PoodS4aE9W3HMT4E8P3hqNQmQwlCYMN59oiPSLgeFOEqDshjyefJLBpb
         420g==
X-Gm-Message-State: ANoB5pmXBDpf14sKQcetD9PuL39F35i8yBvFFEswyg9skjYgva5Yj/ew
        YqEcdiEecm7PEG0pHWCRAdrjPal/21MeRYV9xeuNX3q0DNkDLA==
X-Google-Smtp-Source: AA0mqf6UVyRoxPBqJIsbCtCmctv419Rif+qZE4Ml5T/UOzQ6P5ak3WzCIfRTQI07lPHFr1zbNFfpeg+m7icJQwgKyLo=
X-Received: by 2002:a17:902:8601:b0:189:7372:144c with SMTP id
 f1-20020a170902860100b001897372144cmr38978392plo.106.1670102048746; Sat, 03
 Dec 2022 13:14:08 -0800 (PST)
MIME-Version: 1.0
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com> <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com> <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com> <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com> <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
 <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com> <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
 <494309ce-c8ec-5219-f83e-b8dda5b9bcd1@gmail.com> <alpine.LSU.2.20.2211291450280.24878@wotan.suse.de>
 <dd877a1-9eb4-28e-eccc-b663f5ce7df4@codesourcery.com> <CAH6eHdRy3dsEb9Ta=jUKVUfROOgLgQ5BdPukgRRaPS6yyHczJw@mail.gmail.com>
 <8aeb958eee2e084ea34d027878428a59a77b196d.camel@tugraz.at>
 <457bac3a-b83a-fe97-c5e1-f4efd2376821@gmail.com> <9fc8d4ea-607b-8a3d-490d-4b5662b677bc@gmail.com>
 <4f36c878-e7a5-761d-8f27-6cc38f5b1c95@gmail.com>
In-Reply-To: <4f36c878-e7a5-761d-8f27-6cc38f5b1c95@gmail.com>
From:   Andrew Pinski <pinskia@gmail.com>
Date:   Sat, 3 Dec 2022 13:13:56 -0800
Message-ID: <CA+=Sn1=ba_uKmFi3i2V4gyF4sauYD0QtdsZPadO8MO+Y420d9A@mail.gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function parameters
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Martin Uecker <uecker@tugraz.at>,
        Jonathan Wakely <jwakely.gcc@gmail.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Michael Matz <matz@suse.de>, Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
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

On Sat, Dec 3, 2022 at 1:05 PM Alejandro Colomar via Gcc
<gcc@gcc.gnu.org> wrote:
>
> Hi!
>
> I'll probably have to release again before the Debian freeze of Bookworm.
> That's something I didn't want to do, but there's some important bug that
> affects downstream projects (translation pages), and I need to release.  It's a
> bit weird that the bug has been reported now, because it has always been there
> (it's not a regression), but still, I want to address it before the next Debian.
>
> And I don't want to start with stable releases, so I won't be releasing
> man-pages-6.01.1.  That means that all changes that I have in the project that I
> didn't plan to release until 2024 will be released in a few weeks, notably
> including the VLA syntax.
>
> This means that while this syntax is still an invent, not something real that
> can be used, I need to be careful about the future if I plan to make it public
> so soon.
>
> Since we've seen that using a '.' prefix seems to be problematic because of
> lookahead, and recently Michael Matz proposed using a different punctuator (he
> proposed '@') for differentiating parameters from struct members, I think going
> in that direction may be a good idea.
>
> How about '$'?

$ is a GNU extension for identifiers already.
See https://gcc.gnu.org/onlinedocs/gcc-12.2.0/gcc/Dollar-Signs.html#Dollar-Signs

Thanks,
Andrew

>
> It's been used for function parameters since... forever? in sh(1).  And it's
> being added to the source character set in C23, so it seems to be a good choice.
>   It should also be intuitive what it means.
>
> What do you think about it?  I'm not asking for your opinion about adding it to
> GCC, but rather for replacing the current '.' in the man-pages before I release
> later this month.  Do you think I should apply that change?
>
> Cheers,
>
> Alex
>
>
> --
> <http://www.alejandro-colomar.es/>
