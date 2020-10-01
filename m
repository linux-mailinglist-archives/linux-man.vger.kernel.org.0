Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C102027FCB6
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 11:57:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731067AbgJAJ5t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 05:57:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726992AbgJAJ5t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 05:57:49 -0400
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com [IPv6:2607:f8b0:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 982ECC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 02:57:49 -0700 (PDT)
Received: by mail-il1-x12e.google.com with SMTP id q5so5512871ilj.1
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 02:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AWAysk5hl90ZNPpH5VeCVqq93SHFI8NGPpr1eS0BX1o=;
        b=gAhiT1lbvQhziMGGvUvZkWT6IhP47L3fjttL15nxzBe2fmE1FylNztFLObhXJCKInQ
         f7+IOdLWdib0q+rhGxcCZftg85A1eRWULIuOBcJbLIX011d8jKdf91TIM+vWCKjOTWWf
         KYxen2bmDs+0yR38trqQ8BktQaVDXGx4CBdFAXsdQrJPYamO4CkmljZuW5l9Wu3/PyBu
         mTY9/6jHFgpPJZGSPPOEx7yZ9Kg6emIXcbmsvM7rf3Pft8sS3eaOs+yIRm8oB4XFrIIy
         anoTzgRdZqZnthKmQPeyXJZY27mL/jOiyS9L64A9o6EETJO8SmrqVRDPiR6UZrLNHFp9
         6OWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AWAysk5hl90ZNPpH5VeCVqq93SHFI8NGPpr1eS0BX1o=;
        b=EXySqLqEddZE40eJrbK5vM4yXOQJeUm4AUb3Bk59MUXmCYLsDcgGVMOpcHasiAlqk7
         GizQFngGQ84+URDQrApkyy0iCf95t7NP/s3cQZepPsQQTiR/XC101ycWxp+kvrwEnEGz
         DNaHlBFUYHF29FEJ2FOt5gi03rkoW8XZ3vQvVhrWoILW4sNuLTpz4d2yudxpBAvB1q1U
         MTeB6YtnOopcRwPtfC/Gtx5HFwS35ptMw1j7h3v5AHhYC7jbe36fpWlSzKyxkotrGwah
         NT/hadvm0cq07Rq5JxHtFnPAyeXgxsiqyNedXPOjooSqShCeNsqrWrq8QBpRccrket2G
         XhJg==
X-Gm-Message-State: AOAM532GltawidWwYTD7biTiy+Y45hf8Bj10DuJwsSyj9uhcUD0/zR3K
        YcOO1IIWNIhE5Rv/lvvK6zs/POesJXLuRYv5AR4THuB/rXQ=
X-Google-Smtp-Source: ABdhPJwZCtVmWxu/rTyYHWvQ2n1vCZAyHOlkjFFoUI9b6V+oAfFAduYR8QLkQyvKUoaemqNt3EPiTHxYKVYsMK/NSsQ=
X-Received: by 2002:a92:8912:: with SMTP id n18mr1801977ild.134.1601546267872;
 Thu, 01 Oct 2020 02:57:47 -0700 (PDT)
MIME-Version: 1.0
References: <f6179bab-bbad-22f7-0f87-c06988928ec2@gmail.com>
In-Reply-To: <f6179bab-bbad-22f7-0f87-c06988928ec2@gmail.com>
From:   Jonathan Wakely <jwakely.gcc@gmail.com>
Date:   Thu, 1 Oct 2020 10:57:36 +0100
Message-ID: <CAH6eHdSHEjjjDtBCFO93NXb3bCGtYg6L35injf6pz3bMoL=3Fw@mail.gmail.com>
Subject: Re: [RFC] man7/system_data_types.7: Document [unsigned] __int128
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>,
        linux-man <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, 1 Oct 2020 at 10:26, Alejandro Colomar via Gcc <gcc@gcc.gnu.org> wrote:
>
> Hi,
>
> I'm documenting the system data types in the man-pages,
> and I was writing now about these types.
>
> I'm showing below both the rendered output and the source I have right now.
>
> Would you add anything to it?
>
> And I have some questions:
>
> Is 'signed __int128' a valid thing,
> and if so is it completely equivalent to '__int128'?

Yes.

> Is the GCC version correct?
>
> There's no implementation where 'long long' is 128 bits yet, right?

Right.

> Thanks,
>
> Alex
>
> Rendered output:
> [[
> __int128
>        A signed integer type of a fixed width of exactly 128 bits.
>
>        According to GNU, it is supported only for targets which have an
>        integer mode wide enough to hold 128 bits.

"According to GNU"? Should that be GCC?

The GNU project doesn't have anything to say about it.

Maybe just "When using GCC, it is supported only ..."


>
>        Bugs: It is not possible to express an integer constant of  type
>        __int128  in  implementations  where  long long is less than 128
>        bits wide.
>
>        Conforming to: GCC 4.6.0 and later.

It doesn't conform to anything, shouldn't this say "This type is a GNU
extension." or just "This type is an extension." ?

>
>        Notes: This type is available without including any header.
>
>        See also the intmax_t, intN_t and  unsigned  __int128  types  in
>        this page.

Why would this type refer to intmax_t?
