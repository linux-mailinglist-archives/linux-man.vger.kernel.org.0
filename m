Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21AE6655382
	for <lists+linux-man@lfdr.de>; Fri, 23 Dec 2022 19:12:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231318AbiLWSMl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Dec 2022 13:12:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230219AbiLWSMl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Dec 2022 13:12:41 -0500
Received: from mail-vs1-xe36.google.com (mail-vs1-xe36.google.com [IPv6:2607:f8b0:4864:20::e36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 511811E3C9
        for <linux-man@vger.kernel.org>; Fri, 23 Dec 2022 10:12:40 -0800 (PST)
Received: by mail-vs1-xe36.google.com with SMTP id 128so5116603vsz.12
        for <linux-man@vger.kernel.org>; Fri, 23 Dec 2022 10:12:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x0iAzSRzdq9s0IYOVnrJUzJCsaHwfA1A1/ChJesI6Dk=;
        b=Topb6cs/QTKXrFgtDUq0/3g9P1jPCHEK1j0Sg7BHh076JUGXv/bKI8EcqzLRMEh4a+
         t0yIhPC7C/RW5SGtyhclYprhiVkVZIUHe62IQ2tx/yrudkfE2EwMpXHJm63idJY90p6m
         X94DTbMItTw3u3BMLK0wMs2cbcLm+6YO+wzWQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x0iAzSRzdq9s0IYOVnrJUzJCsaHwfA1A1/ChJesI6Dk=;
        b=PG+X8UfFqL9xJa0cx0tpxgWr5oPOEAC6Nay6s757mAcloGn4YGhaie1Zq4X047esXF
         /FKsT9uof4Gb/bZyyKuZzGfeCUUb/bQHobRq6CBnSxwIW5q6fOij/S9jGRFAQBTjFIIQ
         RvctDPB2HQsMPTG5NVZrlo91ZTl0qRVjwqcYAK9dvZ36sCrKZBOIcR6gmg9UZTnADvNg
         fx8SBIR5ZMrnJxoEwQqqmPQpBP4W6HusopmOE0yQWv9lKfJKsJIm2CNQkfVU+yNKu4JL
         qJqWrg3vKu1DxTbhaidDB93KWgHdj4BikD1JlQFZnQ25jncbyNh2tNfjn4AvCzR+KoaR
         TmuQ==
X-Gm-Message-State: AFqh2kqFG8qEnFpRKQ7zz1msu8MN/IOnZ7S9cZIyzXxpLNFKIxq5JqIL
        HVkIWi+2zvtYJS1+nYp6/BicUlcAjlBlYnoZ
X-Google-Smtp-Source: AMrXdXvprTSBVPs0JJmUj6cOr2FXBxtlz8UXgpWyoDhrEH4C7PPUROR4UfhtGXuXrU+d6KRq9GwIOQ==
X-Received: by 2002:a67:fad7:0:b0:3b0:eb7f:f15 with SMTP id g23-20020a67fad7000000b003b0eb7f0f15mr4055751vsq.19.1671819159133;
        Fri, 23 Dec 2022 10:12:39 -0800 (PST)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com. [209.85.222.180])
        by smtp.gmail.com with ESMTPSA id h10-20020a05620a284a00b0070383f1b6f1sm2700307qkp.31.2022.12.23.10.12.38
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Dec 2022 10:12:38 -0800 (PST)
Received: by mail-qk1-f180.google.com with SMTP id pe2so2714431qkn.1
        for <linux-man@vger.kernel.org>; Fri, 23 Dec 2022 10:12:38 -0800 (PST)
X-Received: by 2002:a05:620a:674:b0:6ff:a7de:ce22 with SMTP id
 a20-20020a05620a067400b006ffa7dece22mr414314qkh.72.1671819158205; Fri, 23 Dec
 2022 10:12:38 -0800 (PST)
MIME-Version: 1.0
References: <cover-0.2-000000000-20221223T174835Z-avarab@gmail.com>
In-Reply-To: <cover-0.2-000000000-20221223T174835Z-avarab@gmail.com>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Fri, 23 Dec 2022 10:12:22 -0800
X-Gmail-Original-Message-ID: <CAHk-=wh6f8+e7Nm1nj1yNGB7d1SivgrBw8Gd3Ow58pc+NoNi1w@mail.gmail.com>
Message-ID: <CAHk-=wh6f8+e7Nm1nj1yNGB7d1SivgrBw8Gd3Ow58pc+NoNi1w@mail.gmail.com>
Subject: Re: [PATCH 0/2] proc.5: note broken v4.18 userspace promise
To:     =?UTF-8?B?w4Z2YXIgQXJuZmrDtnLDsCBCamFybWFzb24=?= <avarab@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        Tejun Heo <tj@kernel.org>, Craig Small <csmall@enc.com.au>,
        Alexey Dobriyan <adobriyan@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Dec 23, 2022 at 10:00 AM =C3=86var Arnfj=C3=B6r=C3=B0 Bjarmason
<avarab@gmail.com> wrote:
>
> Whereas the fix here is a fix for a promise we're currently making
> which hasn't been true since v4.18.

Hah. Ack. Did anybody ever actually notice?

I wonder if the newer limit of 64 characters for kworkers shouldn't
even be mentioned at all, and if the 16-byte truncation for user space
should also be just removed.

Those limits should never have been some documented API, they were
always just implementation details, after all.

             Linus
