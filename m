Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9D307681F0
	for <lists+linux-man@lfdr.de>; Sat, 29 Jul 2023 23:06:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229588AbjG2VGz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jul 2023 17:06:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbjG2VGy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jul 2023 17:06:54 -0400
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D11F897
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 14:06:53 -0700 (PDT)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-583fe10bb3cso37206807b3.2
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 14:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690664813; x=1691269613;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F4tL8+95++VMv9k2+EZAZhEmMJAKnul3SvNpuI6Z2zM=;
        b=ZDMFYpWL1gqJhXgdJm65BvLQjR0q6KZTkxKIaC5CYW1jhodT3gX0hPuKY7+Nyb8U/4
         hJCwzoZQ2IdwkJq6K8i/LwNUVobxFh/vtYJ6m+kWuSkL979oH+CBdYfH8ilbTPfbHekx
         u+X73cwVOpXt+oyneYtHJZqDeYgau/Src2LUbg4eWTbgxqLU/BgHcgmaWJWYt4U9AljR
         CDwhVmn+Pp1xicwt3ZwGw35svjxgvx5sUf3r5WG3SZkFlQhu/N6p3O+x843cR3JCoono
         5Rq1Gz7XB2H+CzxXgnFbXtwNIh2l+qxspYkw60aoH05L8eiLgsjKCB5BcQ+Wm3IxM8aQ
         UWWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690664813; x=1691269613;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F4tL8+95++VMv9k2+EZAZhEmMJAKnul3SvNpuI6Z2zM=;
        b=WDh2+wpusqy9r45o/+BibtcTIju8zUu0cmMRg95Ol61EI+l+uqnFC6bPTdcK4J4SNY
         Rr3YCsuIfvu7Z6NriEbqHHTSnU3pxG47MJR2vHrOSB9dJZZ3Rp+WnwagsfqduaD+OqC6
         ghCd0aAG07HOG/JjzxCk4usnrKbGykGyz2BlXCcuukn9nN4PCxhUoqdVJor2In1dmnSf
         LD0Iat/luBJytAXWn7NWFkOIyoflLebi1aVDp+/KwwQwN8jt5bY8ReFkNtHv4tuVJQw7
         FrG02a7Lourl5b8dkj1zW13BEH550qAOkNKg3yEI9mFdzCuh3/OA40UmI9wGpA0yMlP3
         N8rw==
X-Gm-Message-State: ABy/qLZ/3/RgZx7XZIf7hqOM39Edp+1KL3MGyHZiM95KXPanQd/BdVzq
        VWXtT4pqtcQ1i1adlyAR+27AGNE5fEw7hg==
X-Google-Smtp-Source: APBJJlHWbZzhESadtZPuguRLCR5p0J0RmfSsRTteOplmIqu90z1KrivG2KAeE6lMxOQPEI6alCd0xg==
X-Received: by 2002:a81:6d08:0:b0:56d:5060:f91a with SMTP id i8-20020a816d08000000b0056d5060f91amr5508860ywc.11.1690664812955;
        Sat, 29 Jul 2023 14:06:52 -0700 (PDT)
Received: from firmament.home.arpa (c-73-106-204-164.hsd1.ga.comcast.net. [73.106.204.164])
        by smtp.gmail.com with ESMTPSA id a63-20020a818a42000000b0058390181d16sm1989527ywg.30.2023.07.29.14.06.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jul 2023 14:06:52 -0700 (PDT)
From:   Matthew House <mattlloydhouse@gmail.com>
To:     Lennart Jablonka <humm@ljabl.com>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] string_copying.7: don't grant strl{cpy,cat} magic
Date:   Sat, 29 Jul 2023 17:06:31 -0400
Message-ID: <20230729210639.1671397-1-mattlloydhouse@gmail.com>
In-Reply-To: <ZMUmm3hTkrhzq2CW@fluorine.ljabl.com>
References: <ZMQVYtquNN-s0IJr@beryllium> <8fe571c9-eda2-bd1e-0d78-9c5e8f7222fe@kernel.org> <ZMRUmgRfRVxL3wEo@fluorine.ljabl.com> <48509f53-05c5-4a6f-7ad8-e5d1639dc674@kernel.org> <20230729143855.1656509-1-mattlloydhouse@gmail.com> <ZMUmm3hTkrhzq2CW@fluorine.ljabl.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Jul 29, 2023 at 10:47 AM Lennart Jablonka <humm@ljabl.com> wrote:
> Quoth Matthew House:
> >On Sat, Jul 29, 2023 at 8:29 AM Alejandro Colomar <alx@kernel.org> wrote:
> >> I lied.  I should have said that it writes what is safe to write, and
> >> then uses a somewhat "safer" version of undefined behavior (compared
> >> to other string copying functions).  The standard differentiates
> >> "bounded UB", which doesn't perform out-of-bounds stores, from
> >> "critical UB", which performs them.  In usual jargon, UB is UB, and
> >> there's no mild form of UB; however, the standard prescribes a bounded
> >> form of UB.  However, I'm not sure compilers --and specifically GCC--
> >> follow such a prescription of bounded UB, so it's better to consider
> >> all UB to be critical UB, just to fall on the safe side.
> >
> >Do you have a source for this? As far as I am aware, the standards have
> >always followed the "UB is UB" philosophy, which is why standards-orient=
ed
> >people keep trying to reiterate it. I've never heard of anything like
> >"bounded UB" vs. "critical UB". C17 draft N2176 provides no such
> >distinction in its definition:
>
> Quoth Alejandro Colomar:
> >References:
> >
> ><https://port70.net/~nsz/c/c11/n1570.html#L.2>
>
> Looks like a reference to me.

Ah, thank you, my apologies; it's my fault for somehow failing to notice
that in the email. And then I looked through all the WG14 documents, but
didn't think to just try a full-text search in the standard.

> Yes, UB is UB.  The optional Annex L on Analyzability does define
> bounded and unbounded UB.  No, you don=E2=80=99t care about them.  Yes,
> that is standard terminology.  No, your implementation doesn=E2=80=99t
> define __STDC_ANALYZABLE__.  Yes, that terminology can be useful.

I'm actually somewhat surprised that Annex L hasn't ever come up in the
recurring debates over whether UB is good or bad or interpreted too broadly
by implementations or whatever. Perhaps it's because even though Annex L
defines the distinction, it doesn't give any requirements (and only gives
broad suggestions) to implementations on how the two should be treated
differently. What would defining __STDC_ANALYZABLE__ even imply?

Thank you,
Matthew House
