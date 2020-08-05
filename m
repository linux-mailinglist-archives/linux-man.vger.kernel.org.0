Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4799823D31E
	for <lists+linux-man@lfdr.de>; Wed,  5 Aug 2020 22:35:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728222AbgHEUe4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 Aug 2020 16:34:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728189AbgHEUex (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 5 Aug 2020 16:34:53 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF201C061575
        for <linux-man@vger.kernel.org>; Wed,  5 Aug 2020 13:34:52 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id q76so7599277wme.4
        for <linux-man@vger.kernel.org>; Wed, 05 Aug 2020 13:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=reply-to:cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QO4PGXb61/aiDjYElEr6XaaeSpQaOCzNQlJsviu8kxI=;
        b=sxdzacGYaWou45DDQ6vyzuURLhW7qkJv+JkwGGTExWwbfP48QMxiWdV81jTT6/EC+Y
         i2e+GpRJ12nMaqozv0XP4sZU+isVPai+jqfNsMO1JuVc7QQiGpCGfhJ5cP88jBJtVoyx
         IJRp/QlV8PLHV+UGZASFBV5a44KiwlSn4KUjwxZl2hLp2uxkVRpxp+mQ/wxmOgpqU0ab
         hhjYIj/pNBvwEb6c+xtOnF5wcz3EAl5ogN71xH7EV7fuqoQOu25eU4IF5xV5EpnnbN68
         c2BlgrCLcUVpFYAR5dZJSLA06uvXl7cEVN4hhrzM8JRw7ViJDVHP+2/dbiOSeHrp/44h
         LFQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:cc:subject:to:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=QO4PGXb61/aiDjYElEr6XaaeSpQaOCzNQlJsviu8kxI=;
        b=pkjw+WH+mJaqdtq/sSFeHuVium1t+3/5I+apiFPaSro8hR/WU8Cc1hXtW+FztkcvjK
         SokhaCQFWX0nsGbIfNnOHMlXeruo3X3ize0chBETvfvQiObG7jkZ8eZiEu0OszlxltlR
         aLvs8vAiDTDHaf6t3ZhS4HGfkMFdkW8V37gxS9oRhDeH/kPq+ANNEWhsVIwGn1kznPvg
         pjAdhqXXlcrd7iTmDdMdFHjkbfvZa2oePoC2kPYRyigUCvnZOrTJHmts2Diz5Z1tCIx0
         j8b+eWprELdxGqpsp2lBLYeJS7cNtYYwzscey0uuCoUKrHRjtEThZyQ3Rj+W6XpXD7OQ
         Wh2A==
X-Gm-Message-State: AOAM531tP8g4AGjeIjgIBHEmydYGzmxs2QdycFgoCMjbzlsGLMkExSfw
        Q3NOcfHBfeXZlUSIS0tbpZY=
X-Google-Smtp-Source: ABdhPJzepswJInAl5ekAetAAY6jiS+Q1ju1AzvzXdZ1Ke9ObKOsnUtiTQcRYozMaVq7AKXfa3IUzMQ==
X-Received: by 2002:a1c:bc0b:: with SMTP id m11mr4445693wmf.83.1596659691560;
        Wed, 05 Aug 2020 13:34:51 -0700 (PDT)
Received: from ?IPv6:2001:a61:241a:1101:8c63:f991:aa91:da82? ([2001:a61:241a:1101:8c63:f991:aa91:da82])
        by smtp.googlemail.com with ESMTPSA id b77sm3246910wmb.3.2020.08.05.13.34.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Aug 2020 13:34:51 -0700 (PDT)
Reply-To: mtk.manpages@gmail.com
Cc:     mtk.manpages@gmail.com,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>,
        Florian Weimer <fweimer@redhat.com>, enh <enh@google.com>,
        Zack Weinberg <zackw@panix.com>,
        Carlos O'Donell <carlos@redhat.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        Joseph Myers <joseph@codesourcery.com>
Subject: Re: Pseudoterminal terminology in POSIX
To:     Geoff Clare <gwc@opengroup.org>, austin-group-l@opengroup.org,
        Steffen Nurpmeso <steffen@sdaoden.eu>
References: <CALxWeYrisuzEPVEHOQSFJ8G_=8-VTAOTNBquyszOZMid7YfT=Q@mail.gmail.com>
 <20200805135110.6Sj7F%steffen@sdaoden.eu> <20200805142049.GA17848@localhost>
From:   "Michael Kerrisk (man-pages)" <mtk.lists@gmail.com>
Message-ID: <fc30d132-72ad-a3c6-fdd1-3b2c2f9a603e@gmail.com>
Date:   Wed, 5 Aug 2020 22:34:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200805142049.GA17848@localhost>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[Restoring the CC, which seems to have got lost along the way; it's best if
we keep it, since some people who are involved on the Linux/Glibc side may 
not be on the Austin list.]

Hello Geoff and Steffen,

Thanks for your feedback.

On 8/5/20 4:20 PM, Geoff Clare via austin-group-l at The Open Group wrote:
> Steffen Nurpmeso wrote, on 05 Aug 2020:
>>
>> Michael Kerrisk via austin-group-l at The Open Group wrote in
>>  <CALxWeYrisuzEPVEHOQSFJ8G_=8-VTAOTNBquyszOZMid7YfT=Q@mail.gmail.com>:
>>  |Elliot Hughes and I both noticed a point from "Minutes of the 3rd August \
>>  |2020
>>  |Teleconference":
>>  ..
>>  |On Tue, Aug 4, 2020 at 5:52 PM Andrew Josey <ajosey@opengroup.org> wrote:
>>  ...
>>  |> * General news
>>  |>
>>  |> We discussed terminology usage, in particuler terms such as
>>  |> master/slave, blacklist/whitelist.  It was agreed some terminology
>>  |> for pseudo-terminals could be better described using more functionally
>>  |> descriptive terms, but the details of this are left to a future bug
>>  |> report.  Andrew and Geoff took an action to investigate further
>>  |> and come back with an analysis.
>>  ...
>>  |The essence of the idea is simple. Let's not invent completely new
>>  |terms, but rather rework existing (familiar) terminology a little, as
>>  |follows:
>>  |
>>  |    pseudoterminal (device) ==> "pseudoterminal device pair"
> 
> I'm okay with that, but ...
> 
>>  |
>>  |   slave ==> "terminal device"
> 
> many other things are also terminal devices, so this doesn't work unless ...
> 
>>  |           (or "terminal end of the pseudoterminal device pair")
> 
> you use this cumbersome phrasing every time you refer to it.

(I don't really agree; context is everything; see below.)

>>  |
>>  |    master ==> "pseudoterminal device"
>>  |           (or "pseudoterminal end of the pseudoterminal device pair")
> 
> This makes no sense to me.  Given the phrase "pseudoterminal device pair",
> I would naturally expect "pseudoterminal device" could be used to refer
> to either of the individual devices in the pair, rather than one and not
> the other.

So, I think Elliot's mail provided a good response to this.
I am probably overcompensating with my language. In practice,
it may well be that people settle into the terminology

pseudoterminal device pair
pseudoterminal
terminal

And, in the context, and with familiarity, the last two terms
will be understood to mean the respective end points, so that we
would just talk about "the pseudoterminal and the terminal
that compose the device pair". And the fact that many things are
terminals doesn't really undermine this; the context would make it
clear, I think.

>> How about ancillary or accessory terminal device for the slave.
> 
> I think ancillary would actually be more applicable to the master.
> 
>>
>>  |The resulting language (as it appears in the proposed changes for the
>>  |Linux manual pages) is reasonably clear, albeit a little clunky in
>>  |places (wordings like "the (pseudo)terminal end of the pseudoterminal
>>  |device pair" are clear, but a little verbose).
>>
>> Yes.  It is terrible and absolutely unclear (to me).  And
>> presumely i would become dazed if i would read an entire manual
>> with the above terms.
> 
> I agree, it's too cumbersome.
> 
> My own thoughts up to now had been that, since the slave side is the
> side that is intended to be used as a terminal in the normal way, the
> slave should be called the "primary" device.  I hadn't come up with a
> word for the master side, but Steffen's suggestion of "ancillary" works
> quite well (I just saw a dictionary definition that said "providing
> necessary support to the primary ...").

Notwithstanding my arguments above, I'm not fixed in the terminology
that Elliot and I are suggesting, and I would not have a problem with
the terms "primary" and "ancillary" (and your [Geoff] suggested 
association of "ancillary" with the "master" seems more natural 
than associating it with the "slave").

The point is that if we come up with some terminology that is not
hideous, people will adapt. I remain somewhat agnostic about
what the terminology should be.

Cheers,

Michael
