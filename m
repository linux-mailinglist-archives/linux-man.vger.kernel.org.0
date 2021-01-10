Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CD5F2F079A
	for <lists+linux-man@lfdr.de>; Sun, 10 Jan 2021 15:36:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726434AbhAJOgk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 10 Jan 2021 09:36:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726341AbhAJOgk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 10 Jan 2021 09:36:40 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F0ABC061786
        for <linux-man@vger.kernel.org>; Sun, 10 Jan 2021 06:35:59 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id 3so12613159wmg.4
        for <linux-man@vger.kernel.org>; Sun, 10 Jan 2021 06:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QR07RkIrz9p5H6Wh8eAX9mebZNi3r402HXfzqayYtBc=;
        b=basvhLCiS7cRWavogXalazYxlH2iVCQh6QCwywhNAovxClOPQLsVKv+m8NdFjC7J3r
         tWv9sznmCMkrAf/rtdFvkinsIEpJHkh0UsW/VVZjKCgaIAdRzO+SwiS4ENCNQgWeKvfv
         ENjpPYMTOhVqBpSbTj0tCwJgwCLWLoSrbmXtNz2wzeauh2RS3eniAQW42/jit5OQzdAU
         jBKX8WvLq7vTpDft9lTo92WnmOABs7J/comNgudTsfMKjKkFmgQe4IM1TwQAxHmQWEPZ
         nNUF7EQ4LhGY96jcLojVmkfwzECkBiCa+PN39NdKn9TXZLjk47VGGZ1ZHVXVawTFIlJB
         KCWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QR07RkIrz9p5H6Wh8eAX9mebZNi3r402HXfzqayYtBc=;
        b=U27pxx4A4WGXn0zrhjLm0/PikHxFBq7dUzrwzgtC7xqEZd38sL4zc9DSqvASPjRsIc
         UTxQYwXXOI/j/Kn2Z6kmY1AdVz0MaZzt9OyGOcPYPztnfI/qXeDWad3ZWgjcploN208X
         30Ky30hM1vHIemRns44rKG7f6StOqlr9eV9phzwUwfPhPNPxsjLLwgFaGPV7fvcqdpDr
         ce0F+Apkgd8mBGBy6qnq+81kBexSKPg0CHhTfdnGgcJcqXA1urn/jDnkj7G532Rgu1X7
         v2ihm/5gpulgHXppFOwDTuytyYROpcGpYTvBaKmm1LMml3YFd1CbcS7Yy8gKEIIzVpnX
         uqkg==
X-Gm-Message-State: AOAM533dr+YXtAgHvm7LDtHYZjm5fejFnKgT0I65kbO7NEJkTNVagR1V
        fRrrK5fnm1NsllCH+9MeAF2IlCCG0cE=
X-Google-Smtp-Source: ABdhPJxywdNADFpk46D11+XA79E90sVJEUA7BRV3mk2b8NVkITcNy9O1myxNTfR6BRpZEU08IJ+nhg==
X-Received: by 2002:a1c:9acb:: with SMTP id c194mr10812198wme.43.1610289358041;
        Sun, 10 Jan 2021 06:35:58 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id x17sm20905542wro.40.2021.01.10.06.35.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Jan 2021 06:35:57 -0800 (PST)
Subject: Re: [PATCH] posix.py: ffix: Correctly format URIs
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
References: <20210109195840.74472-1-colomar.6.4.3@gmail.com>
 <a1d2172c-3880-ac79-7df7-0f5fb0bc65af@gmail.com>
 <20210110065023.olvhi2gqjbmv7243@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <af78792f-9758-e3e6-9c65-c2f93f0fcfdd@gmail.com>
Date:   Sun, 10 Jan 2021 15:35:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <20210110065023.olvhi2gqjbmv7243@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 1/10/21 7:50 AM, G. Branden Robinson wrote:
> Hi Alex,
> 
> I've noticed you've started formatting your emails like recommended
> *roff input.  ;-)

Yes.  Before I filled until the margin, but when I edited something at
the begining (especially when writing on the editor and not directly on
Thunderbird), I had to fix all the lines to fit the margin.

So to solve it, I decided to cut the lines at meaningful point, much
before the margin, as when writing manual pages, so that if I edit text
at the begining I don't have to edit every line.

That habit extended to what you can see :)

> 
> I have, however, taken the liberty of reformatting them conventionally
> for brevity.

No problem.  Just a nitpick: when reading the mail from the phone, it
wraps around col 70 (more or less; it's not monospace, so it's an
experimental approximation), so many of the lines you compacted, expand
to a line and a word or so, effectively occupying 2 lines each, and
therefore occupying even more space than originally.

That's also the reason when I render a manual page and copy it's
contents to an email, I tend to use 68-col (or less) terminals, so that
text is nicely formatted on phones too.

> 
> At 2021-01-09T22:07:09+0100, Alejandro Colomar (man-pages) wrote:
>> Hi Michael, Branden,
>> On 1/9/21 8:58 PM, Alejandro Colomar wrote:
> [...]
>>> Enclose URIs in <>.  It is especially important in this case, as the
>>> URIs are followed by '.'.  From "" or <>, I prefer <>, as they are
>>> less used in other contexts, so they are more easily read as URIs.
> [...]
>>> Also enclose them in [.UR/.UE].
>>
>> I was wondering if, instead of hardcoding <>, it would be possible to
>> make .UR/.UE embed those characters.  It would make the code more
>> generic, but I don't know if it is feasible or desirable.
> 
> Not only is it possible, but the groff_man(7) .UR/.UE extension macros
> have been doing this automatically since they were introduced in January
> 2007.
> 
> They use left and right angle bracket special character escapes (Unicode
> U+2039 and U+203A)[1]; the output drivers degrade these to less-than and
> greater-than signs if the former glyphs are unavailable, or if the
> formatter is not groff[2].
> 
> Here are some of the relevant portions of tmac/an-ext.tmac.
> 
> [...]
>   .\" groff has glyph entities for angle brackets.
>   .ie \n(.g \{\
>   .  ds la \(la\"
>   .  ds ra \(ra\"
>   .\}
>   .el \{\
>   .  ds la <\"
>   .  ds ra >\"
>   .  \" groff's man macros control hyphenation with this register.
>   .  nr HY 1
>   .\}
> [...]
>   .\" End URL.
>   .de UE
> [...]
>   .    nh
>   \\*(la\\*(m1\\*(ra\c
>   .    ie \n(.g \&\\$*\"
>   .    el \\$1 \\$2 \\$3 \\$4 \\$5 \\$6 \\$7 \\$8 \\$9\"
>   .    hy \\n(HY
> [...]
>   ..
> 
> The macro has a lot of conditional logic to support multiple formatters,
> include non-groff ones--it attempts to be usable even with old AT&T
> troff.  For the same reason, the register and string names used are
> short and unfriendly.  It also does special things when formatting for
> groff's HTML output device, which I do not show above.  But the heart of
> the matter for terminal output is the line
> 
>   \\*(la\\*(m1\\*(ra\c
> 
> which uses the left and right angle bracket strings defined previously.
> 
> Let me know if you could use the above in annotated form.
> 
> If something in your test environment is preventing the angle brackets
> from being rendered, maybe I could help you troubleshoot it?
> 
> Regards,
> Branden

Hmm, I might have read a few URLs that didn't use .UR/.UE to think that
they didn't render a character; I don't know.  After your email, I
checked, and yes, it renders some character (the character depends on
the terminal: on tty I've seen a diamond, and on the xfce terminal
something similar (but slightly different) to a parenthesis).

So I'll send a v2 patch removing the <>.

Thanks!

Alex

> 
> [1] https://man7.org/linux/man-pages/man7/groff_char.7.html#Glyph_tables
> [2] Technically, if the formatter does not claim groff compatibility by
>     setting the .g register to a positive value.
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
