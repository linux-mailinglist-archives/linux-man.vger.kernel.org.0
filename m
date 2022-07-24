Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D38B57F4CF
	for <lists+linux-man@lfdr.de>; Sun, 24 Jul 2022 13:20:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229772AbiGXLUw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jul 2022 07:20:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229618AbiGXLUv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jul 2022 07:20:51 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A78E713D21
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 04:20:50 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id q18so1772047wrx.8
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 04:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Igot8tXYRsw4vObHRL2qiCTxm+ik5Ss4HeqKxaIeQvI=;
        b=lC4qt07X5ohtIsMies+HzgQvFTzZ+4ga5XDBLOE2YqjxrPI0B5/4NK9a0yiOvspotb
         ZimpIcKEJFFu7XHNShtVyQwGzyeZPUt4dyBv0YVdLD/Nfu/1FxtFpN2WspCzxwM9hmnX
         vmbcUp/5XkXSDXot4hzcTu60Z9XRFJ3p5xAhGcFBiClOUDNTeJeyMj6K5gg6ykQpkcvf
         IplBeuaBqhLXd230/LPZAYYH+JAfOYHb9RnfwPwDeJdSDr9LpgqajFKXMWn/tG64lokA
         I9q8xznOwLD/0n0axgj8XW7GLZYaiJmDQNzFkl7p7zrt83O+J6FnbKPTP2gHqllohOO1
         X2Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Igot8tXYRsw4vObHRL2qiCTxm+ik5Ss4HeqKxaIeQvI=;
        b=IoTGfU/EqyNGvIuz1DDBu9XgMTgJ+BSikoI2nxnggbfPDmQvMVfop31BnlgVsRVX50
         vlblU0F8AnXTxvXZFxoJJih1+okxi3nBDSby1jAGVtQQtKBZMj86+D3i2uJ/a2U1BGcy
         5fvd7wCZxz6UppmCKMY3hVxop0z+NekYyb0n1vnF2HB7Ovq/GBQShDv7nVwDkqh3/J3S
         OITVI1a+PSBI/hl3Wi8vxeAlTzd6kptjIpM0FJHZTJa7/JZ1qxWMvSMKyndLFaqZlpEI
         elEZrQxDzuywKF5XM+rTAKBe70nJdG9GHz4kAal/8sNGABdT1vCrQaCccvPmJ48i8VVY
         4JOw==
X-Gm-Message-State: AJIora/26+uLMlBuXai+a1AG1hsIjf28VV2EHVNwiR6fXiw4/s9vugOA
        T+FdeSI1Yk8BC41194SEysU=
X-Google-Smtp-Source: AGRyM1uU6qYSyZEmeXzHgP2KYzWz6D4GlRXX//Z3SIeT0PzFRhfGITIwyWZmAy5MBJLn1ZtoyAr/qw==
X-Received: by 2002:a05:6000:11d0:b0:21e:610f:6274 with SMTP id i16-20020a05600011d000b0021e610f6274mr5065273wrx.611.1658661647986;
        Sun, 24 Jul 2022 04:20:47 -0700 (PDT)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i5-20020a1c3b05000000b003a31d200a7dsm11235858wma.9.2022.07.24.04.20.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Jul 2022 04:20:47 -0700 (PDT)
Message-ID: <62937033-a3a7-05d0-fc68-a227e2b67bde@gmail.com>
Date:   Sun, 24 Jul 2022 13:20:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: All caps .TH page title
Content-Language: en-US
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     g.branden.robinson@gmail.com,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
 <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
 <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
 <YtxMD7ovz1Xy/cfq@asta-kit.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <YtxMD7ovz1Xy/cfq@asta-kit.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Ingo,

On 7/23/22 21:29, Ingo Schwarze wrote:
> Hi Alejandro,
> 
> On 7/22/22 12:35, Alejandro Colomar (man-pages) wrote:
> 
>> BTW, I think I didn't reply (or if I did was very short) to your comment
>> that other languages may find it difficult to mirror our use of
>> subsections, since their main section is already a subsection (e.g.,
>> 3pl).
> 
> Other languages are usually better off to live *outside* the $MANPATH
> and tell users to use "man -M" to access their documentation.
> For example, on OpenBSD, the TCL manuals live
> in /usr/local/lib/tcl/tcl8.5/man/ .
> Putting them into /usr/local/man/ would be quite disruptive because
> that would cause lots of clashes, including "apply", "break", "cd",
> "close", "eval", "exec", "exit", "expr", "glob", "info", "join", "open",
> "puts", "pwd", "read", "socket", "time", and so on.  I expect most
> other language will cause similar noise.
> Perl is better because the clashing names are mostly part of perlfunc(1),
> and the majority of other Perl manual page names contain colons.
> FORTRAN (traditionally in man3f) is also better because in this
> instance, the cryptic FORTAN six-letter identifiers become a virtue
> in so far as they prevent clashes.

I'm not happy with this approach.  I don't want to be typing paths for 
system stuff (your /usr/local is /usr in GNU/Linux systems; BTW, that's 
a thing I don't like at all from BSDs; IMO (and FHS's), /usr/local is 
for sysadmins to build from source; optional _packages_ should go to /opt).

If you want to search pages in section 3type, `man -s3type regex`. 
However, having some pages in subsections of 3, and others in the main 3 
section, is good for pages in subsections, but bad for pages in the main 
section (`man -s3 regex` would show all of the subsections' pages). 
That has a simple solution: move libc pages to man3c (and libm to man3m, 
...).  Since `man 3 printf` will continue working if this change is 
done, it doesn't seem to have backwards compatibility issues.

Also, you can put unimportant subsections at the end of the search list, 
to not hide other more important pages.

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
