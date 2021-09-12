Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 535D1408040
	for <lists+linux-man@lfdr.de>; Sun, 12 Sep 2021 22:10:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236566AbhILULp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Sep 2021 16:11:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236260AbhILUKz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Sep 2021 16:10:55 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3126C061574
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 13:09:40 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id b21-20020a1c8015000000b003049690d882so2587429wmd.5
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 13:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mKwaBI91c4L97pKjYHeNRS1W9os0qG3msrGjitcDf7Q=;
        b=Coj+uQ/rfo1XQXFZEhOvC6CJbqSuW0ceIjJUxJtjAakfGe05yzmIZTiu+OqIJsf8Ra
         e19dLU1ztJN30z282s+j7QY4fWW6u6gWWKQ1wxhkEw8hn41VQoMFBBiCToSsnLENk2VZ
         fk3mQpFRSk/8K2YPOw0euZIzJN6skPf1XLnE7a8ZOzmurYt5E1N1iDojkQq64vNrsBN2
         a5/IHthByldAL8cA9q+jE71bVK2Qx5yrotBh3c15chfHDKiRrfm5HpMo2Mi8u6GUACbf
         6Hc0KeY9cr8KUiGMX4uTues5xl/P/5bqw86wn1UsWb7HXhK813ouV2SmDosOUt7xjgJY
         HQyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mKwaBI91c4L97pKjYHeNRS1W9os0qG3msrGjitcDf7Q=;
        b=K6V/vEqUq6yoUWw3oalKvXykREg4lsSovuRT09YyWln77elpa+bt9FohiYVpVxGGV/
         caDaJGMmYAKr1pDgMcBD5BoOrrZ0Bpy9OT15OcsomYX1bLYPk2CCtM/dRVyVKQet2146
         EvpJvcKRxnUcqXGYDr35PtdaAlU3xO/tXbGcV6X7jgg25ZBNnIi08Ts6C7lie/aXqLaU
         T1fY2XKzYI8kCVV8gJgUww5CEcltHX1xKYs54yBZ6xN+aucoUggnFvzNQ9aCBW7fCx70
         S2R323h/SIrtNrxnnukYA7WgSjLG/ttkI60YSL2s8V2i7HgLN/BRigBOS1IEujhOEuin
         FcgA==
X-Gm-Message-State: AOAM533OmdFuByiHdcGf900Bjzul6oWX8LmM+khVR/pmjHzN5SDZn/Ys
        a8rqa1Bs4pxVCaJMgr5x19Y=
X-Google-Smtp-Source: ABdhPJxwjr0ySLb2LRCbeodRU4Lj3xL+o7/y0omehcLzEcMCNTt/38Wv88R2NPfAr7B6Q9nddIFbdw==
X-Received: by 2002:a1c:2705:: with SMTP id n5mr7799294wmn.176.1631477379572;
        Sun, 12 Sep 2021 13:09:39 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id e2sm5429449wra.40.2021.09.12.13.09.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Sep 2021 13:09:39 -0700 (PDT)
Subject: Re: .B, .I disable hyphenation?
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     groff@gnu.org, linux-man <linux-man@vger.kernel.org>,
        Ingo Schwarze <schwarze@usta.de>
References: <ebbf8dab-6fd0-2fb8-d29b-b7146f79398d@gmail.com>
 <20210912172749.uziql5vofxi7sjth@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <b7ddd4e8-6faf-278f-b32f-6bf46d834d3e@gmail.com>
Date:   Sun, 12 Sep 2021 22:09:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210912172749.uziql5vofxi7sjth@localhost.localdomain>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 9/12/21 7:27 PM, G. Branden Robinson wrote:
> Hi, Alex!
> 
> At 2021-09-12T14:56:39+0200, Alejandro Colomar (man-pages) wrote:
>> Hi Branden,
>>
>> Usually, when a manual page highlights a term, either in bold or
>> italics, it usually is a special identifier (macro, function, command
>> name or argument), for which hyphenation can hurt readability and even
>> worse, turn it into a different valid identifier.
>>
>> What about disabling hyphenation for .B and .I?
>> Are there any inconveniences in doing so that I can't see?
> 
> The problem that arises is that the font styling macros are
> presentational, not semantic, so it's hard to know whether someone is
> using them for emphasis or to suggest syntactical information.  This is
> why you made a statistical argument ("usually").

Truly, even though most cases of .B/.I are identifiers (or literals), 
some are emphasized words or phrases.

I think no identifier should ever be hyphenated, if possible, mainly due 
to the confusion with other possibly valid identifiers.

I'd also argue that for the cases when the writer wants to emphasize a 
word, hyphenating it does the opposite.  The writer wanted it to stand 
out from the rest, but now it's broken into two incomplete pieces far 
apart from each other.

I think I really want to disable hyphenation everywhere I want a word to 
stand out from the rest, be it an identifier or just an emphasized word 
or phrase.

Ingo's option of disabling hyphenation _everywhere_ in man pages seems 
too drastic to me.  There's still a lot of prose, and it's not so 
important there (although I admit both ways have their benefits; not 
saying it's wrong).  But that adds a point against the only downside I 
can see:  disabling hyphenation may (in rare occasions where many long 
identifiers are together) produce an awkward number of spaces due to 
filling; but if no-one has complained against mandoc, I guess that's not 
so terrible or doesn't happen that much.

Regards,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
