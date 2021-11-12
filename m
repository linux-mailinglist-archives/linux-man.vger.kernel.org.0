Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B296D44ED89
	for <lists+linux-man@lfdr.de>; Fri, 12 Nov 2021 20:50:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235244AbhKLTxC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Nov 2021 14:53:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230101AbhKLTxA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Nov 2021 14:53:00 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C009C061766
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 11:50:09 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id 133so8696970wme.0
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 11:50:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=YEwiDPLRJ1OmSJ6RwqNoy8P8lviIMXA54nA6pdt7VQE=;
        b=BFPg/8WGJt8gPLEcox8flCs1GZ4rrZoTeGJnKoyJOtrlHJWfiTFx1MBTAxDEu8aMM8
         rCl/o5KXFJfMC7BYsd3CtpCPaTMRoshVxnK9Vm10WZ3+0HncPqu31lkQAQNYtKugGZh/
         OsQfg3SwEXqlImLIUoDZOY21s2caZr65zTA+SF4KaVympismxyHiDqWKT5ON07Nksg3o
         oxKGAcQXVi3Gypn/JiSxG/wQ1IGPMF8zmmztZMddtlryIpDoVz9xk5vfFkuWSxHUBckm
         uhUCDtpHz/qto7M5m8KowUxvVZ794LKoFmSm5rz3YMZZEJS3DirXrbE6Y42hIxar1M+G
         PY7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=YEwiDPLRJ1OmSJ6RwqNoy8P8lviIMXA54nA6pdt7VQE=;
        b=bvdnnHpW4464fuJ8BUbu0U14f7NC4rtinGqhJTHizNK/yWwCUlJg7J0VKhqOGOI41E
         xJDezMMxqVsUqTSO7azxuu3w2J1j817T9WzHBG8baXIW6Q+vTO6zv4CP8NiSHsNdbIhX
         mjpYe6nZY2Ltq+jv/iSVm5v7gph9R5QZ0x+ZLFYPRcSXCrbJVQHhm66UJvMxRogEmiYR
         3Aj0XJny/MBVuErPbQbFoYuPLb+tRsAM8Q23f0xn93ba03RC4wH8ByuhX2KPHiEdRzYZ
         7k35W/kpnec6QPDOnXQBf+WLGrFZLc1bh6irrprLt3MiVxER5jfa76lGNyBQMtUzx+lv
         kJLQ==
X-Gm-Message-State: AOAM533N8AWhQE0AMaiRSRL6akjlfdYYq37WCD4O0fmrhGa5+45k1h95
        YCB534BouS+r2mCmVK7EFupWqYPK+LTSiw==
X-Google-Smtp-Source: ABdhPJy2vs0E8aHfS6QYRqirbu1GTsuSthyR61eWtCmk7UOPj+G/ip5oTPUFYv+ESTkoB1Yu7IjkAg==
X-Received: by 2002:a7b:c4c4:: with SMTP id g4mr19171818wmk.93.1636746608084;
        Fri, 12 Nov 2021 11:50:08 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id e8sm2976300wrr.26.2021.11.12.11.50.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Nov 2021 11:50:07 -0800 (PST)
Message-ID: <3fe7250d-eca3-663e-8ffe-11f67c08a879@gmail.com>
Date:   Fri, 12 Nov 2021 20:50:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH v2] mctp.7: Add man page for Linux MCTP support
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Jeremy Kerr <jk@codeconstruct.com.au>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20211111015323.3542313-1-jk@codeconstruct.com.au>
 <76dd85f7-ab8a-1dcc-5b1a-5eb9a87d23bc@gmail.com>
 <20211112093536.hvifxgdtb2y6jzge@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211112093536.hvifxgdtb2y6jzge@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 11/12/21 10:35, G. Branden Robinson wrote:
> Hi, Alex!
> 
> At 2021-11-11T22:38:43+0100, Alejandro Colomar (man-pages) wrote:
>>> +Messages may be fragmented into packets before transmission, and reassembled at
>>> +the remote endpoint.
>>
>> Break at the comma.
> 
> I use "/[;:,]." in vi(m) to help myself find these quickly (you can get
> false positives in comments; a more sophisticated regex that one might
> want to bind to a key can rule those out).  Breaking input lines after
> commas, semicolons, and colons is considered good style by *roff
> veterans going back to Kernighan in 1974[1].
> 
> "/[!?.][^\\]" is more important--it's an un-semantic-newline finder
> (though again with some false positives).  Those have a real impact on
> the resulting typography (due to inter-sentence spacing).
> 
>> Types should be in italics.
>>
>> Branden, I thought this was specified somewhere, but I can't find it.
>> Do you know where it is?  Or maybe if your more up to date
>> groff_man[_style](7) pages mention that?
> 
> Nope, apparently I never made a prescription in this area.  It's worth
> making explicit note of, since it deviates from the "literal -> bold,
> variable -> italics" mapping that people overgeneralize/overapply.

I'll save this for below as an argument.

> 
> So I'll queue this up for my next revision of groff_man_style(7).  Thank
> you for catching it!

It's a pleasure! :-}

> 
>> groff_man(7) (groff 1.22.4):
> [...]
>>                Use italics for
> [...]
>>                for  names of works of software (including
>>                commands and functions, but excluding names of op-
>>                erating  systems or their kernels),
> 
> As an FYI, I'm feeling an urge to drop the foregoing item of advice.
> Exceptions are often also made for names of software packages (both in
> the loose sense and the technical one--who italicizes "TeX", for
> example?); usage is so inconsistent that I despair of providing
> comprehensible guidance.

Okay, I had to write about a different package recently, and I had some 
doubts if I should or not, given current status quo.  If we completely 
remove it, okay.  Maybe Michael will be more conservative, I don't know. 
  But the status quo is already very screwed, since I seldom see that used.

I think there are a few pages that may make use of it, but I don't 
remember which.  Please give me some time (maybe a month? I hope it 
isn't too much) to come with feedback about usage of this in current 
pages, before you remove it.

> 
> Now that groff man(7) has the 'MR' semantic macro for man page cross
> references[2], most of the instances where people would fail to
> italicize will be taken care of without the foregoing.

If only each package had its own manual page...  Not even in Debian...

> 
>> Anyway, for you Jeremy, I have other pages to follow for consistency:
>> For example, gettimeofday(2).
>>
>>> +Packets between a local and remote endpoint are identified by the source
>>
>> Break after "by" (or perhaps just before it).
> 
> Phrasal semantic newlines!  :D  This 180-proof Kernighan whiskey is a
> stronger prescription than I would write (mainly because it requires
> natural-language-aware grepping), but if your contributors don't rebel,
> I think we will all ultimately see the benefits in diffs.

I feel an urge to add it to man-pages(7).  :-}

> 
>> Something similar might be good for this page.  Maybe "trailing fields
>> may be added in the future to this structure.  The structure should be
>> zeroed before use, so that future fields are zeroed" or something like
>> that (I'm not very inspired for the wording, sorry :), and then remove
>> the pad field.
> 
> The idiom is `memset(mystructp, 0, sizeof(struct mystruct));`, isn't it?

Yes.

> If so, then maybe the point doesn't need to be made.

Well, if someone doesn't know that idiom, it may leave the structure 
with garbage padding, so I'd put some notice, even if it's very short.

> 
>> Only for Branden:  I just noticed a difference between man-pages(7)
>> and groff_man(7) advise:  groff_man(7) advises to use italics for
>> preprocessor constants, while man-pages(7) recommends bold:
>>
>> [
>>         Special macros, which are usually in  uppercase,  are  in
>>         bold (e.g., MAXINT).  Exception: don't boldface NULL.
>> ]
> 
> That was a deliberate difference on my part, motivated partially by own
> preference for reduction of what I regard as excessive use of bold in
> man pages since the '90s, and partly due to precedent.  The 4.4BSD book
> by McKusick, et al., for example, uses italicized small caps for some
> things enumeration constants (like open(2) flags) and upright small caps
> for others (like errno(3) values and signal names).  man(1) output to a
> terminal just doesn't have enough typefaces to go around.
> 
> "If in any doubt, use bold" seems to have become the prevailing wisdom
> in the 1990s due, as far as I can tell, to a historical accident
> involving the (lack of) capability of VGA hardware and text mode console
> drivers[3].  Some readers might remember the days when getting an X11
> server working on your hardware was considered an achievement.
> 
>> I find it better with bold, since that differentiates variables from
>> constants.
> 
> Would we then also bold constants that are C objects with the "const"
> type qualifier rather than language literals emplaced by the
> preprocessor?

Yes!  The difference between "const" variables and macros is just 
preprocessor, but they are all intended for very similar usage.

> 
> My intuition is that this distinction isn't worth making with a
> typeface; the use of bold is not necessary to cue the user that they
> should not redefine a symbol, since there are plenty of other things
> set in italics that the user _also_ shouldn't (try to) redefine.
> 
> I'm certainly open to hammering out a reasoned basis for typeface
> selections, though.  Much of current practice arose in an ad hoc way.

Let me try to convince you.

We have a mapping in our brains that says
"literal -> bold, variable -> italics".
If we extend that mapping,
macros are replacements for literals,
so we would use bold for them too.
And "const"s are also mostly intended for the same use as macros,
so bold goes for them too.

Existing practice seems to have followed that
(or maybe a parallel) reasoning.

BTW, I noticed that the Linux man-pages are inconsistent with
the mapping of literal -> bold,
and tend to not highlight literals.
I'll change that for future patches.

Did I convince you? :)


Cheers,
Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
