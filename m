Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A925300C3A
	for <lists+linux-man@lfdr.de>; Fri, 22 Jan 2021 20:22:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728745AbhAVSmS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jan 2021 13:42:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729687AbhAVSUA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jan 2021 13:20:00 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A10BC0613D6
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 10:19:19 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id q7so5942693wre.13
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 10:19:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lnls1RNFFY2nSl2JG0OmILdhpPSDYdaNEBW4R93UPzw=;
        b=M+7O1A2frQB7BBGGUqGXTTN1z5SWf9W4AgpzbsrKWVdDk5FcjF0qDdMNenXkLD6Fu6
         gcFEMq/TBj+LrnJeu23VEl9b6xHvFiwKIACpA1EPp4lpZJD9vIPYr4Rn50s6+vxelAgb
         R9qLuxeMlXNoLa+TKwdE/ftijHuk/vbG1UvsjVDYlZbQVZd8rnE00tqwMUjHtBqsiaNd
         4M/dL/+ZqzZ8eOT3jZ+WwEMqerECfIqOIDfEx8G8HIMOVl4+YN5gZLc++J3w2JjH5cBh
         Ww5MIaRQjYO66IgfliUc26jpuArEW+O4zdcczy+bkhxF2OpO4N0bZSulU/Osa06K04/2
         dVMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lnls1RNFFY2nSl2JG0OmILdhpPSDYdaNEBW4R93UPzw=;
        b=rDDjYOtjHAZAs+otZzwW67Ol8dAanyKQIUm+pxV1VpoFQPj0BERIcyzyFMIS4CJzeg
         zM8R61e7ty9pl7ePv80DOhRJDRsKek7ppJDHfSMc4z6V7GozURE3Zid5FWSWHtLF2Hbs
         eUJPgSLlLfv+gPMwKcEKDmO61e24QbPgJaNcGSIUXsBCs5BLoMh8BBJo2diXDeDET0X7
         EyYTumJM5zZt7ORxBsSFsnWs9jaMGjkKunR8/mKut6w/oOngZ4i+KcYEr2duE5uLlSRz
         BxQ6Tg/M/qJYJ6BCMkASLiHbYkyzZRaYsrMNK7bqPMjH0keryCtc1k1scTu7LZGcdbGJ
         /uvw==
X-Gm-Message-State: AOAM533FR6QLtXQhdjIMtZOt6z4S9O4+zoos60z9qRkvWr7EL5PYwACF
        OAteWKtd+TsIXFbzACNOUn4=
X-Google-Smtp-Source: ABdhPJxT6tYkDaGHdo00iAsDBbHW2oZkVH4r/EDpFiZUsrTd8motigZTSXRCXHjizUz4J7O1sGtG3w==
X-Received: by 2002:adf:f512:: with SMTP id q18mr5793813wro.55.1611339557499;
        Fri, 22 Jan 2021 10:19:17 -0800 (PST)
Received: from [192.168.42.141] ([37.29.246.4])
        by smtp.gmail.com with ESMTPSA id g194sm12085934wme.39.2021.01.22.10.19.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 10:19:17 -0800 (PST)
Subject: Re: Ping: [PATCH] posix.py: ffix: Correctly format URIs
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>
References: <20210109195840.74472-1-colomar.6.4.3@gmail.com>
 <b5c59c50-3d98-8835-0c26-90fa6bfaf08b@gmail.com>
 <CAKgNAkhHLw2gwrnquOq8nbFSoydkSyoWivgeHrh2CH4QY3PdDg@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <bdc24ecd-bb92-5d9a-4461-f3d3640f6457@gmail.com>
Date:   Fri, 22 Jan 2021 19:19:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <CAKgNAkhHLw2gwrnquOq8nbFSoydkSyoWivgeHrh2CH4QY3PdDg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/22/21 4:13 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On Fri, 22 Jan 2021 at 13:37, Alejandro Colomar (man-pages)
> <alx.manpages@gmail.com> wrote:
>>
>> On 1/9/21 8:58 PM, Alejandro Colomar wrote:
>>> $ man 7 uri 2>/dev/null \
>>>    |sed -n '/Writing a URI/,/^$/p';
>>>     Writing a URI
>>>         When  written, URIs should be placed inside double quotes
>>>         (e.g., "http://www.kernel.org"), enclosed in angle brack‐
>>>         ets  (e.g.,  <http://lwn.net>),  or  placed  on a line by
>>>         themselves.  A warning for those who  use  double-quotes:
>>>         never  move  extraneous  punctuation  (such as the period
>>>         ending a sentence or the comma in a list) inside  a  URI,
>>>         since  this  will  change the value of the URI.  Instead,
>>>         use angle brackets instead, or switch to a quoting system
>>>         that  never  includes extraneous characters inside quota‐
>>>         tion marks.  This latter  system,  called  the  'new'  or
>>>         'logical'  quoting  system by "Hart's Rules" and the "Ox‐
>>>         ford Dictionary for Writers and  Editors",  is  preferred
>>>         practice  in Great Britain and hackers worldwide (see the
>>>         Jargon  File's   section   on   Hacker   Writing   Style,
>>>         ⟨http://www.fwi.uva.nl/~mes/jargon/h/HackerWritingStyle.html⟩,
>>>         for more information).   Older
>>>         documents  suggested inserting the prefix "URL:" just be‐
>>>         fore the URI, but this form has never caught on.
>>>
>>> Enclose URIs in <>.  It is especially important in this case, as
>>> the URIs are followed by '.'.
>>>  From "" or <>, I prefer <>, as they are less used in other
>>> contexts, so they are more easily read as URIs.
>>>
>>> This also fixes the extraneous space that was used to separate
>>> the URIs from the final period.
>>> In some cases, the period ended in a line of its own.
>>>
>>> Also enclose them in [.UR/.UE].
>>>
>>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>>> ---
>>>
>>> Hello Michael,
>>>
>>> This patch is for man-pages-posix.git.
>>> I found that the link in uri(7) is broken,
>>> but I found that same document here:
>>> http://www.catb.org/jargon/html/writing-style.html
>>> I'll patch uri.7 to fix that link.
>>>
>>> That was a very interesting read.
>>> I got why you tend to use "xxxx (xxxx.)" and not "xxxx (xxxx).",
> 
> Sorry... I don't understand what you are referring to in the previous line.

It has happened already a few times that you corrected a patch of mine 
(or you corrected the corrections I sent to others' patches), because of 
using "... foo)." and you changed it to be "... foo.)" (see 
<c73ca93d-b723-adc1-0603-4c7f9ecc458e@gmail.com>) as an example).

> 
>>> the latter being _much_ more common in Spanish (and other languages)
>>> (actually, I've never read the former in Spanish).
>>
>> Hey Michael,
>>
>> Ping!
>>
>> I'm still very interested in knowing your thoughts about the Hacker
>> Writing Style from the Jargon File, and more specifically about the
>> so-called `new' or `logical' quoting method[1].  Especially you being
>> both a hacker and a writer :-).
>>
>> [1]: http://www.catb.org/jargon/html/writing-style.html
> 
> So, I regard the Jargon File and HWS as no real authority on anything,
> and I'm not even sure we should refer to them in a manual page. Much
> of the writing there is rather polemical. But, that said...
> 

I don't regard it as an authority either, and yes, it's unnecessarily 
polemical, but there are still some entries that have some useful 
information, like this one about the different quoting methods, IMHO.

>> I'll quote the most important part here so you don't need to follow the
>> link (but I recommend it, though):
>>
>> [[
>> Hackers tend to use quotes as balanced delimiters like parentheses, much
>> to the dismay of American editors. Thus, if “Jim is going” is a phrase,
>> and so are “Bill runs” and “Spock groks”, then hackers generally prefer
>> to write: “Jim is going”, “Bill runs”, and “Spock groks”. This is
>> incorrect according to standard American usage (which would put the
>> continuation commas and the final period inside the string quotes);
>> however, it is counter-intuitive to hackers to mutilate literal strings
>> with characters that don't belong in them. Given the sorts of examples
>> that can come up in discussions of programming, American-style quoting
>> can even be grossly misleading. When communicating command lines or
>> small pieces of code, extra characters can be a real pain in the neck.
>>
>> Consider, for example, a sentence in a vi tutorial that looks like this:
>>
>>      Then delete a line from the file by typing “dd”.
>>
>> Standard usage would make this
>>
>>      Then delete a line from the file by typing “dd.”
>>
>> but that would be very bad — because the reader would be prone to type
>> the string d-d-dot, and it happens that in vi(1), dot repeats the last
>> command accepted. The net result would be to delete two lines!
>>
>> The Jargon File follows hackish usage throughout.
>>
>> Interestingly, a similar style is now preferred practice in Great
>> Britain, though the older style (which became established for
>> typographical reasons having to do with the aesthetics of comma and
>> quotes in typeset text) is still accepted there. Hart's Rules and the
>> Oxford Dictionary for Writers and Editors call the hacker-like style
>> ‘new’ or ‘logical’ quoting. This returns British English to the style
>> many other languages (including Spanish, French, Italian, Catalan, and
>> German) have been using all along.
>> ]]
> 
> Like many programmers, I find the Logical Style, ahhh, logical. And in
> a fixed-width font, the visual argument for putting periods and commas
> inside the quotes (the American style) doesn't apply. The
> counterargument is that in most every other aspect, man-pages follows
> American conventions.

For that counterpart I'd argue an easy one: we already made some 
rational exceptions, such as s/dgment/dgement/ ;-).

> 
> I imagine that in man-pages there's a mix of both styles, since I'm
> not sure if I've ever taken care about this.
> 

Yes, there is.

> So, what to do... Given that man-pages are primarily rendered to
> fix-width displays, and the confusion that can sometimes occur in a
> technical context if following the American style, I would not oppose
> switching everything British/Logical style.
> 
> Maybe others have opinions to offer.

I strongly vote for the European quoting method, for logical reasons. 
Pun intended :-).

> 
>> BTW, I should remind myself to fix the link in uri.7.
> 
> I'd be inclined to remove the URL. Mention of the Logical Style in
> Hart's rules and the British style is good enough, I think.
> 


I'm not against keeping the link, but I wouldn't oppose a removal either.

> Thanks,
> 
> Michael
> 

Thanks,

Alex

-- 
--
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
