Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D49BE4E1D05
	for <lists+linux-man@lfdr.de>; Sun, 20 Mar 2022 18:07:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235400AbiCTRIs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Mar 2022 13:08:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245672AbiCTRIr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Mar 2022 13:08:47 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC1EA54F80
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 10:07:23 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id m30so8098072wrb.1
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 10:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=lP6wPL7WT42VxQNKDZvTf98xRxEmMEb4OIBCLnhAbng=;
        b=C9eG88a3BkJjOJyHXdxQyxqzliiO8TwOtiTB7Z0XOVzmqXzT1207qapScEBxUpe/mg
         m9snjVNMhGWcrlzZ7lZVXuckGtqL7YTAuP0ChxJSbglCZG4qocP+odIIescUmfW4Y9mq
         Y8f1jDSkeMgjbawKk9q+CjMOJOM6wcOJChOk6oWXOnYf4MCwG4IUtLvcrh62xrK5thqk
         J0H0sv279leizG6iun/6VwJ61hY5hCaDI4nx/hAfwtaBZcuh3JM+xFkVMNOtPXfjKncl
         prDXCZmy9ImacsnkZ26N9qGQ2Vb4UpgReIzMJuvNwAWIN7tVlnDtJsDDgCfBIfdGshT7
         pFxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lP6wPL7WT42VxQNKDZvTf98xRxEmMEb4OIBCLnhAbng=;
        b=J1ju/lURA94Z/XhF9g4cOrYQqq3JYiVnBu/V6+8tib+f4jq1/xabYEeMPBCwTo71LT
         DoYH0eeVMg/KtykBlZJY74sLVTq/rr/bcpI0AGg/CZ/D8NwRqszF7zEi6IHnSFKR/LL4
         QlZzfO2A9bWO/q4s+w7hZdugOQ1vLJYxACnXNnAb4J4ScUbWs4WPlRnQX1w+uCpQeqb4
         YC/gMxLrzL6v2bZpBWV9PoBMV4Rek+Yt21fKnMtiV0i5hd9/pngfx/fbnToj/Swpsi7X
         JioRldup0T8JDS+F2R1CRkMhjGLD2Aa3foxRVJ6a3v45zr+Pntf4RfxgKARq9mzF2FSs
         5KQQ==
X-Gm-Message-State: AOAM5310Ge7hGgQCqrPqFqoGjUFWYxMZrzUZZn6lLU3jfkBUJA5p0eR0
        EQsh3aJ0RPmiRrl5OTrjE86f/R3Dyn4szsIk
X-Google-Smtp-Source: ABdhPJydvJJ3kDhWeaTKMV0738GNun7LjIX0Ku/Z3KjDZIxc3pdbbg4wXDAD74roxjqFQiaP6nvq1g==
X-Received: by 2002:a05:6000:18cd:b0:203:e960:d775 with SMTP id w13-20020a05600018cd00b00203e960d775mr13959333wrq.226.1647796042089;
        Sun, 20 Mar 2022 10:07:22 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v20-20020a7bcb54000000b0037fa63db8aasm15469739wmj.5.2022.03.20.10.07.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Mar 2022 10:07:21 -0700 (PDT)
Message-ID: <3cd16323-a9da-cbbf-85b2-6be9d22ea847@gmail.com>
Date:   Sun, 20 Mar 2022 18:07:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: Review incorrect man-pages commit
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     groff@gnu.org, linux-man <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>, tz@iana.org
References: <9e2a2f6d-d086-4570-2d22-f218fdb0e686@gmail.com>
 <20220320105236.zsjiafuru5hjk2uw@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220320105236.zsjiafuru5hjk2uw@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Branden!

On 3/20/22 11:52, G. Branden Robinson wrote:
> 
> Sure!  The punctuation does get a bit bewildering.
> 
[...]

Thanks for the great explanation!

> 
> Now, for the part people actually care about, which is how to fix it:
> take the escape character off of that `.
> 
> You thus want
> 
> +to "\fI[a\('a\(`a\(:a\(^a]\fP", that is,

I applied a patch with this.

> 
> If you wanted to write this without using any aliases, you could adopt
> groff syntax.
> 
> +to "\fI[a\[a aa]\[a ga]\[a ad]\[a a^]\fP", that is,

I'm going to hold this for later, so that we decide globally how to
format all pages, and not just this one.  I prefer global consistency here.

> 
> I don't know if people regard that as more or less impenetrable.  It is
> more _flexible_, and admits usage of diacritics/combining characters not
> envisioned by AT&T troff or ISO Latin-1.  groff supports a baker's
> dozen.  They are in a table titled "Accents" in groff_char(7) (1.22.4).
> 
>> diff --git a/man8/zic.8 b/man8/zic.8
>> index 940d6e814..aeca0e726 100644
>> --- a/man8/zic.8
>> +++ b/man8/zic.8
>> @@ -293,7 +293,7 @@ nor
>>  .q + .
>>  To allow for future extensions,
>>  an unquoted name should not contain characters from the set
>> -.q !$%&'()*,/:;<=>?@[\e]^`{|}\(ti .
>> +.q !$%&'()*,/:;<=>?@[\e]^\`{|}\(ti .
> 
> You didn't proffer any complaints about the foregoing, so I assume it
> was just for context (to include the whole commit, maybe). 

Yep

> Nevertheless I think it can be further improved.
> 
> That neutral apostrophe and caret/circumflex should be changed as well,
> to ensure that they don't render as a directional closing (right) single
> quote, ’ U+2019 and modifier letter circumflex ˆ U+02C6.  This advice is
> also in groff 1.22.4's groff_man(7) page.
> 
> +.q !$%&\(aq()*,/:;<=>?@[\e]\(ha\`{|}\(ti .
> 
> Moreover, as partly noted in our discussion about double quotes in macro
> arguments, there were no special characters for the double quote or
> neutral apostrophe in Unix troff.  Since we're not getting 50 years of
> backward compatibility anyway, for the Linux man-pages project I
> recommend going ahead and using groff-style escape sequences for these.
> 
> +.q !$%&\[aq]()*,/:;<=>?@[\[rs]]\[ha]\`{|}\[ti] .
> 
> Are you willing to settle for 30 years of backward compatibility?  ;-)

I do :)

However, I'm not going to fix this page, according to MAINTAINER_NOTES:

$ cat MAINTAINER_NOTES
Externally generated pages
==========================

A few pages come from external sources. Fixes to the pages should really
go to the upstream source.

tzfile(5), zdump(8), and zic(8) come from the tz project
(https://www.iana.org/time-zones).

bpf-helpers(7) is autogenerated from the kernel sources using scripts.
See man-pages commit 53666f6c30451cde022f65d35a8d448f5a7132ba for
details.



So now I wonder why this commit was written in the first place, since it
breaks one page, and fixes another that shouldn't be fixed.
I CCd the tz mailing list in case they want to fix the upstream page
(which I couldn't find, BTW).


> 
> In my opinion it is more helpful in dense contexts like this to have the
> paired delimiters [ ] to demarcate the glyph identifier then to achieve
> portability to systems that don't support identifiers you need anyway.

Yes, I agree with that.

> 
> (I note that `q` is a page-local macro and therefore bad style for
> portability reasons.  That said, I have been _sorely_ tempted to add a
> `Q` macro for this precise purpose to groff man(7).  I have hopes that
> it would give people something to reach for besides bold and italics for
> every damn thing.)
> 
> Most--I hope all--of the above is discussed comprehensively in the
> current version of groff_char(7)[2], which I have rewritten completely
> since groff 1.22.4 and substantially modified even since the last Linux
> man-pages snapshot at
> <https://man7.org/linux/man-pages/man7/groff_char.7.html>.  I now know
> the answers to many questions of the form "why the **** is {groff,troff}
> this way?", and have endeavored to share them.  The "History" section is
> completely new.
> 
> Regards,
> Branden
> 
> [1] groff's own man pages are not without sin in this regard.  I have
>     cleaned them up a lot since 1.22.4, but a few adventurous stragglers
>     remain that define and use page-local macros pervasively.  All are
>     on the long side.
> 
> [2] https://git.savannah.gnu.org/cgit/groff.git/tree/man/groff_char.7.man
> 
>     I recommend that for source perusal only; do not try to render it
>     with man-db man(1) or groff 1.22.4, because groff 1.23.0 will be
>     adding a new macro, `MR`, for man page cross references[3] and its
>     own pages have already been ported to use it.  (This is where I
>     flagellate myself for not having a groff 1.23.0-rc2 out yet. :( )
> 
> [3] https://git.savannah.gnu.org/cgit/groff.git/tree/NEWS#n165

I like your references usually containing other references themselves.
It's funny :-)

Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
