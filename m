Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C027332FE1E
	for <lists+linux-man@lfdr.de>; Sun,  7 Mar 2021 01:06:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229758AbhCGAGN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Mar 2021 19:06:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229801AbhCGAGI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 Mar 2021 19:06:08 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EF4FC06174A
        for <linux-man@vger.kernel.org>; Sat,  6 Mar 2021 16:06:08 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id e23so3905661wmh.3
        for <linux-man@vger.kernel.org>; Sat, 06 Mar 2021 16:06:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ddhjQ0XDlWKZrPIX0/pWWZmddVVkAtWUIyfWmp++o74=;
        b=ALWcR1K735yl9sZCZxQTB4eB69dAz7kEdgUzm74ua9/h6oyzuuRi6aC1NDWgUlxVFi
         zNVBHtYJL3R0UTsuZ52IbJu5nLVjQx7KkcBo0InR/prww8DZBy7GKAiP6D44v4yFjYXc
         lQbqWtamqX7rQl2h6bYlQRwryOMgmMRIHn3uwiAgEkRYSee6BeFvWzDo9TOgcCn9MbUu
         35AuqhYX93n82zhGZUKUfycn8NoLf8D6pdXQmTk1P5guwSNO/CLkTtlH1fEhiscnKFTU
         qV7n1gqjCLlyN0tYihcqKk6ieRgMLD/NZBVa8GEjoyuZYhwEP9rzYtPxNCAd34FPGbqp
         IHkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ddhjQ0XDlWKZrPIX0/pWWZmddVVkAtWUIyfWmp++o74=;
        b=OjEXFjZ93CLIbsDZnQBedV7Gr5rb3tWIjBE/yNzwEmrEbn2T1+Pv8yKBMOAUwStziG
         dFXgjVcJCiARQcuzwA03VIM/JyIfNy45V2JqeXtbQI6kdQfSQo6S7/ByOZUptYFLXFcA
         u0iAkD5bM3Hhr3Ofqhf3l32HHN7rQkxN+v2RBauccFNcJLgkdg/XbUbdGAej4Xs5knqL
         yMbPx3n1CL2n/ywI1u5XOps9vcU0OGIfCrXk6mTR3nBNxW044v+sruEOhS/KJC6i5748
         uymPbNjFHs1idharkbNDZI011UlmW1rp11sYmJDZIuv6Z/1PHAhcqfxgUKw1JrYl2+xK
         N1+g==
X-Gm-Message-State: AOAM531CIUPGdDiR3GRPZvfbadB9SY5NUHCDAmt5smHR3e6bEdUjn0S6
        mUe+qQ1YZSB51jUuXapHawg=
X-Google-Smtp-Source: ABdhPJz2lAodXHPT1U4aVjqFaMnpYZFo7jiUIVoIJft3db8QlmyDV0s1n4UKFwSxix2NBVCN3V87xw==
X-Received: by 2002:a1c:21c3:: with SMTP id h186mr14973071wmh.32.1615075566115;
        Sat, 06 Mar 2021 16:06:06 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id u23sm11232060wmn.26.2021.03.06.16.06.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Mar 2021 16:06:05 -0800 (PST)
Subject: Re: Escaping hyphens ("real" minus signs in groff)
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, groff@gnu.org
References: <CAKgNAkihGY5W178QYHcRvs0f0E4HMQdWir9KOJsEzVF=1wi-sQ@mail.gmail.com>
 <20210121061158.5ul7226fgbrmodbt@localhost.localdomain>
 <a1af3f5c-f3e9-4bf3-cad5-389571c45d27@gmail.com>
 <20210122035558.ny2u3ddel2mltrve@localhost.localdomain>
From:   Alejandro Colomar <alx.mailinglists@gmail.com>
Message-ID: <444a5006-d94e-0b1a-2147-c0406486e8aa@gmail.com>
Date:   Sun, 7 Mar 2021 01:06:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210122035558.ny2u3ddel2mltrve@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey Michael & Branden!

On 1/22/21 4:56 AM, G. Branden Robinson wrote:
> Hi Michael!
> 
> At 2021-01-21T12:03:13+0100, Michael Kerrisk (man-pages) wrote:
>> I appreciate your long answer *very* much. But, I'm glad you started
>> with the short answer :-).
> 
> Cool!  But beware, from such pressures is the practice of top-replying
> born...  ;-)
> 
>>> Another issue to consider is that as PDF rendering technology has
>>> improved on Linux, it has become possible to copy and paste from PDF
>>> documents into a terminal window.  In my opinion we should make this
>>> work as well as we can.  Expert Linux users may not ever do this,
>>> wondering why anyone would ever try; new Linux users will quite
>>> reasonably expect to be able to do it.
> [...]
>>> And I mean copy-and-paste not just from PDF but from a terminal
>>> window.
>>
>> Yes, but I have a question: "\-1" renders in PDF as a long dash 
>> followed by a "1". This looks okay in PDF, but if I copy and paste
>> into a terminal, I don't get an ASCII 45. Seems seems to contradict
>> what you are saying about cut-and-paste above. What am I missing?
> 
> The gap between aspiration and implementation.  I don't think the
> "copy-and-paste from PDF to terminal window" matter is completely sorted
> out yet.
> 
> I'm a strident prescriptionist about preserving the distinction between
> "-" and "\-" in roff documents, notably including man pages in part
> because it affords us more room to design around this problem.
> 
> ASCII and ISO 8859 unified the hyphen and minus characters.  AT&T troff
> and all of its descendants distinguished them.  Unicode also
> distinguishes them.  But Unix has a habit of calling ASCII 055 (45
> decimal) a "dash", and moreover, to much software, only the numerical
> value of the code point is important.
> 
> It's quite possible that for man(7) documents rendering to PDF, we
> should perform the following mapping (in the man macros).
> 
> .if '\*[.T]'pdf' \
> .  char \- \N'45'
> 
> This didn't come up in my argument with (mostly?) BSD people because (1)
> the immediate issue that raised concern had to do with the grave accent
> and apostrophe instead and (2) everybody in that camp who spoke up on
> the matter said they seldom, if ever, render man pages to PostScript or
> PDF.  By that token, the above 2-liner may not be a controversial matter
> to the people I was arguing with.  :)
> 
> Consider what would happen to the appearance of PDF-rendered man pages
> if we encouraged all \- escaped hyphens to be rewritten as plain hyphens
> in the source first, and did the following to mandate uniformity.
> 
> .if '\*[.T]'pdf' \{\
> .  char \- \N'45'
> .  char - \N'45'
> .\}
> 
> ...just as is currently done for the 'utf8' output driver, whose second
> line I want kill off.
> 
> I feel that responsible stewardship of the groff man macro
> implementation means considering the needs of diverse audiences.
> 
>> I don't really have any other questions, but I have tried to distill 
>> the  above into some text in man-pages(7) to remind myself for the
>> future:
>>
>> [[
>> .PP
>> The use of real minus signs serves the following purposes:
>> .IP * 3
>> To provide better renderings on various targets other than
>> ASCII terminals,
>> notably in PDF and on Unicode/UTF\-8-capable terminals.
>> .IP *
>> To generate glyphs that when copied from rendered pages will
>> produce real minus signs when pasted into a terminal.
>> ]]
>>
>> Seem okay?
> 
> What a "real minus sign" is is a fraught issue[1], but if for the
> purposes of man-pages(7) it means the ASCII/ISO hyphen-minus, then yes,
> I think it's good enough.
> 
> Regards,
> Branden
> 
> [1] especially in light of the \[mi] special character escape and the
>     existence of U+2212 :-/
> 

I just found another good reason to use '\-'.  I was searching for an
option of curl in their man page, and I used '/    -s', as I usually do
when I search for those.  To my surprise, it didn't find anything, in
fact, '/-' just showed two appearances of the minus sign.  However, if I
copy and paste the character from one of the options and paste it into
the pager search command line, then it finds the options.  I already
reported the bug to them.

I checked that in our pages, we can search options (see time.1).  I
wonder if there are some cases where we're producing some weird
character that can't be easily searched for.

Regards,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
