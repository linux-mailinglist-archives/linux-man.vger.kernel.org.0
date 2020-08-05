Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4EC8D23D31F
	for <lists+linux-man@lfdr.de>; Wed,  5 Aug 2020 22:35:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728469AbgHEUfu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 Aug 2020 16:35:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728297AbgHEUfH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 5 Aug 2020 16:35:07 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7480BC061575
        for <linux-man@vger.kernel.org>; Wed,  5 Aug 2020 13:35:02 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id a5so31954012wrm.6
        for <linux-man@vger.kernel.org>; Wed, 05 Aug 2020 13:35:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=reply-to:cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3hDThiP5HOXJznAOT2WDk81uxii5NNy/GXowVJZnwFM=;
        b=Tm/T7UhTFK59MRmk7F1HG7LO3R8s20WzT2ctDUNxpXHZZ9Flr4Vwm9l3Zct3yrCssO
         PUOzFgODnRWd3zoa1QIgOLsFS7uBat5c/3hyvOLCFwhWXQ0qAv7iDeQ9m83xQYzfUbtP
         /JR3wvvpPQdnDznVXZ9WV77UelE3ZnGQTiqI4/0l7AeGUNDhu0kyIsd6XVJ1XVsseZ2I
         lOV4mqNZ7WaLbIcAnp+NamrL/ebSzICW3N5oggG36fGMEH/z9TyH+CaoTs9Tuhbuq7uP
         tfCDgSTd+EdTMcTKudtRvEYuY5yOKh8mmnOV0zt2Ly2oTdvVsodOwUFNsYSw4oXGyU1v
         ucPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:cc:subject:to:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=3hDThiP5HOXJznAOT2WDk81uxii5NNy/GXowVJZnwFM=;
        b=BM22EiPX0pT0phHyx9RAwsqj97iHn6s03yw/G+L1LAw8EbsDuZi6a/aG7caIJpBl+7
         DwO719wJcZs89iHx8IuXPjnhvgkGHyHXtAI6UM+eZ3bhnsODe35aY2hoXsZDQhNKdS4h
         nqNRoedgG9tNLuAQinYUWl9B3oYDNxTG2XUMKxA5+SnsfCletU6HMqhEaoCwRhx6y1Ee
         HTWUDCT76X5G1HAfk5EPZF5aWU57tVS76o29Rjq6iDEvKKNffcQC669L8zWWdydTZgLe
         7K8Rs/6mw8YnvUo54Vydv8fzFRf45I7JREbwJybarbnAxy7nXthAGuJlOGlDGXS3hyfs
         HG1g==
X-Gm-Message-State: AOAM532XD1WEpQ2Tohq2V81E/7iOdY9m3fLAYfNTiUh83sXObwVIC4ye
        DTOnMRH3i6bxZM8cDATB9xo=
X-Google-Smtp-Source: ABdhPJwbmEvfzYP9qybW1o/enK0h48lL6B13KmWqkPp0E+Znu7YTTwpjOKau9MOzFgwjWEgG6o79hg==
X-Received: by 2002:adf:de08:: with SMTP id b8mr3997846wrm.4.1596659701240;
        Wed, 05 Aug 2020 13:35:01 -0700 (PDT)
Received: from ?IPv6:2001:a61:241a:1101:8c63:f991:aa91:da82? ([2001:a61:241a:1101:8c63:f991:aa91:da82])
        by smtp.googlemail.com with ESMTPSA id t189sm4072947wmf.47.2020.08.05.13.35.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Aug 2020 13:35:00 -0700 (PDT)
Reply-To: mtk.manpages@gmail.com
Cc:     mtk.manpages@gmail.com,
        austin-group-l <austin-group-l@opengroup.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>,
        Florian Weimer <fweimer@redhat.com>,
        Carlos O'Donell <carlos@redhat.com>, enh <enh@google.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        Zack Weinberg <zackw@panix.com>
Subject: Re: Pseudoterminal terminology in POSIX
To:     Paul Smith <psmith@gnu.org>, Donn Terry <donnterry@gmail.com>,
        Geoff Clare <gwc@opengroup.org>
References: <CALxWeYrisuzEPVEHOQSFJ8G_=8-VTAOTNBquyszOZMid7YfT=Q@mail.gmail.com>
 <20200805135110.6Sj7F%steffen@sdaoden.eu> <20200805142049.GA17848@localhost>
 <CAP1RCkjrqKGJmh6f637D=yGuhev7ae5QJkMjv5a8iHo4X33NFw@mail.gmail.com>
 <1d8c5e6e96fbdd47ce143a566b57db2c803d4898.camel@gnu.org>
From:   "Michael Kerrisk (man-pages)" <mtk.lists@gmail.com>
Message-ID: <ba59552b-9ccf-9454-465f-e503b17a316a@gmail.com>
Date:   Wed, 5 Aug 2020 22:34:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1d8c5e6e96fbdd47ce143a566b57db2c803d4898.camel@gnu.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[again restoring the CC]

On 8/5/20 5:28 PM, Paul Smith via austin-group-l at The Open Group wrote:
> On Wed, 2020-08-05 at 08:00 -0700, Donn Terry via austin-group-l at The
> Open Group wrote:
>> The suggestions here so far are cumbersome and tend to be ambiguous. 
>> The old m-word and sl-word, and also "client" and "server" could
>> potentially be interpreted backwards from the conventional intent.
>> (You can think about it as the sl-word/client actually being in
>> control: telling the m-word/server what it's supposed to be doing,
>> e.g. "execute this command line".)  
>>
>> How about "provider" and "consumer"? "Pseudoterminal provider" and
>> "...consumer" seem (at least to me) to be unambiguous in terms of the
>> reversal above, (reasonably) clear in meaning, and politically
>> neutral. Have the other discussions not shown here considered this?
> 
> To me even "provider" / "consumer" still has this issue: do you
> consider the pseudoterminal as providing to the terminal, or the
> terminal as providing to the pseudoterminal.  Both seem legitimate
> enough interpretations to create confusion.

That was my immediate thought also, unfortunately. That said,
again, I think if we settle on a terminology (even provider/consumer),
people will adapt. (But, i still prefer pseudoterminal/terminal or
ancillary/primary).

> To remove ambiguity perhaps we need to think about the attributes that
> are unique to each element of the pair and use that in the term, for
> example "backend" / "frontend".
> 
> This would have to be introduced, something like "a pseudoterminal
> device pair consists of a backend terminal device and a frontend
> pseudoterminal device".

Yes. The terminology, whatever it is, needs to be introduced and 
defined. That alone will remove a lot of ambiguity, regardless of
the terms that are settled on.

Thanks,

Michael


