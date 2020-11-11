Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 144822AF4C6
	for <lists+linux-man@lfdr.de>; Wed, 11 Nov 2020 16:34:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726788AbgKKPeS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Nov 2020 10:34:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726136AbgKKPeS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Nov 2020 10:34:18 -0500
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BF13C0613D1
        for <linux-man@vger.kernel.org>; Wed, 11 Nov 2020 07:34:18 -0800 (PST)
Received: by mail-wm1-x343.google.com with SMTP id a3so2694358wmb.5
        for <linux-man@vger.kernel.org>; Wed, 11 Nov 2020 07:34:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=N5c/ZOtaDLrVxaeVMUk5w8CPWZF5UhVhVuv/ON7FUus=;
        b=qmewvxicwLF7EL0QFi/E3KrXJL03ILJi57A2V7KWy6XJQ71TD/jlQCvdtLXZgcJlUO
         hsclIh8ZKEHDcrLLxpguK21jRhwEO7mGzoq7e/iD9el+l9cgFZdg7qVwQs4qOETPxVPM
         rW3BW2VAmAKGCIzyxNk2ySE9UFnBgsMRGpht9pRGmozqaeM9KhSedMXl0aGm12HNBCyQ
         c0zHS7b3Z+TgV2Aj2OwmqZ6v0pFWHgWPUf0pFN1nX1MGN0LzIlNeEJVW9Q7/s6TwwePk
         5cEpAmMhX21esYW5cq/q6YYDBjVoNU7YXze8jfBB/JzndxTMx9vyXiEfetn1NBYkv5tJ
         XS9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=N5c/ZOtaDLrVxaeVMUk5w8CPWZF5UhVhVuv/ON7FUus=;
        b=uSk47Yntt5oJF3kVCKNUun7yWVmZeIzNOUefi3N/KY0lzXlzKojgrT775UY3l0EEb1
         qax3d/qMOkPOZN0N/AH58aRGFLeIHAsLqbqkPYqihLoFAfVbLeVJPMyincPM5RMgnKQb
         UYvC1xhTOCXMeJxkQ5Q0nR13czfIHvfrINt4mrH8OBBp6iACmnvj9VyHPwwxf4xgvMOy
         yC3BARZy7ZcNGGOeR63QxzYtepBC9HHyAVjME23+61y9yhs7CU80MR0fQCGorrBPSBSw
         aWEYpnID8IMcrTdrBZEzOdSyzwBeX9U/XvKjEaCG9zRXjgg8c7Jhk1MpCOfsEdpR4ktn
         EzUA==
X-Gm-Message-State: AOAM531gSRpeIjfXh+jPNtSRzC/frkVs+uurjxVx6QIoneC0flpdafSy
        3LKNfj5/aW4OKp5UH/+Nt7qfEjeia3YlFiwy
X-Google-Smtp-Source: ABdhPJzFbDE+QryLhUIBHpIvNCHJD9xs9U7XRjkwbM1ZAA0BeXtihnvMWHvR/sUml9lJxIjiCMF3sA==
X-Received: by 2002:a1c:dc43:: with SMTP id t64mr4632673wmg.93.1605108856841;
        Wed, 11 Nov 2020 07:34:16 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id f11sm2902348wrs.70.2020.11.11.07.34.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2020 07:34:16 -0800 (PST)
Subject: Re: .RS
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, colomar.6.4.3@gmail.com
References: <ae05d6bd-af93-9b49-25a6-e9c69ae402ec@gmail.com>
 <20201111150950.u7lf3xeulydbd2vr@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <c6919fec-4a95-888d-93fd-ecb254ec2377@gmail.com>
Date:   Wed, 11 Nov 2020 16:34:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201111150950.u7lf3xeulydbd2vr@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks, Branden!

And [+4n] is because you can also indent negatively?
But I guess I can omit [+] safely always.

Thanks,

Alex

On 11/11/20 4:09 PM, G. Branden Robinson wrote:
> Hi Alex!
> 
> And hi to Michael, too.  I'm sorry I haven't responded to your pings
> about a good idiom for inset code examples.  The main reason is that I
> don't yet have one that satisfies all of your criteria.  The other is
> that groff is heaving its vast bulk toward a release, and I've been in a
> perfectionist frenzy trying to clear my plate of my personal release
> goals for it.  This includes man pages totalling 323 pages (not counting
> groff_mdoc(7)[1]), which might not sound all that daunting to the author
> of the scale-tipping _LPMI_ codex.  :D
> 
> At 2020-11-11T15:22:27+0100, Alejandro Colomar (man-pages) wrote:
>> Hi,
>>
>> We already talked about something similar some time ago.
>>
>> I see [.RS 4] and [.RS +4n] used in the man pages.
>> And there are also [.in +4n] and I think I've also seen [.in 4].
>> Is there any difference between [+4n] and a simple [4]?
> 
> Not usually.  *roff parameters can be dimensionless (like hyphenation
> modes), but many of them, like page length, line length, page offset,
> indent(ation), and many others, have dimensions.  groff, like AT&T troff
> before it, supports the expression of dimensions in a variety of units,
> including U.S. traditional, metric, and printer's units (points, picas).
> Ultimately, internally, all these different units are converted to
> "basic units" which are meaningless outside of the formatter (but you
> sometimes see them in diagnostic messages).
> 
> So when you use a request or a built-in register that has a dimension
> associated with it, you need to either know what units are required to
> get predictable output, or _tell_ *roff what units you want to use.
> The way you do that is with a letter called a "scaling indicator".
> 
> These are documented.  See the section "NUMERICAL EXPRESSIONS"[2] in
> groff(7) for a complete list.
> 
> Requests and (some) registers have a "default scaling indicator".  These
> are document with the corresponding item.
> 
> "n" refers to "ens", a typographer's unit that is, roughly half an "em",
> and an "em" is the width of a lowercase "m" in the current font.  For
> character-cell terminals, 1m equals 1n equals 1 character cell, so it's
> pretty easy to get a handle on.
> 
>> Which is the preferred one?
> 
> That's a terrific question.  I've wavered on this issue myself.
> Semantically, there is no difference between ".RS" (or ".in") "4" and
> "4n"--because the default scaling indicator for this macro (or request)
> is "n".
> 
> At present I kind of lean toward "4n" because I think it disserves man
> page authors to get too far away from the knowledge that groff is a
> _typesetting_ system as troff and nroff (and roff, and Saltzer's RUNOFF)
> were before it.
> 
> If man pages were only ever rendered to character-cell terminals[3], I'd
> probably just settle on ignoring scaling indicators.  In fact, I'm not
> sure they existed in *roff languages before Ossanna wrote troff.  As I
> understand it, on Teletypes and line printers, your horizontal dimension
> was character cells, your vertical dimension was lines, and you had
> special logic for reverse line feeds and half line feeds in either
> direction, and that was as granular as things got.
> 
>> And BTW, does [.RS] do anything different than [.in]?
> 
> At its core, no--but it saves a lot of state so that you can nest
> further .RS calls, and use .RE, and so that the sectioning macros (.SH
> and .SS) can undo their effect without causing havoc.
> 
>> I guess the code implementing those macros is written somewhere.
>> Where can I have a look at that code to see it myself?
> 
> Here's the bleeding edge version:
> 
> https://git.savannah.gnu.org/cgit/groff.git/tree/tmac/an-old.tmac
> 
> There is almost certainly a copy of this file, probably from groff
> 1.22.4 on your system.  On my Debian box, it's at
> /usr/share/groff/1.22.4/tmac/an-old.tmac.
> 
> Thomas Dickey once complained about the lack of comments in this
> file--he's right, the things that a casual user most needs commented,
> are not.  I've tried to remedy that defect in groff_man(7), but a more
> Doxygenish approach to the package source itself would also be a good
> idea.
> 
> Regards,
> Branden
> 
> [1] groff_mdoc(7) will _ship_, but a person _really_ doesn't want to
> know why it's not in my page count.  Ask me if you want a challenge
> involving possibly diversions and traps.
> 
> [2] In groff 1.23.0, to no longer be in shouty capitals.  :D
> 
> [3] I sometimes get into a bit of conflict with some man page writers
> who care less than nothing for any output device that isn't a terminal.
> I want to accommodate such people as much as I can without compromising
> quality for those who want to want to see man pages properly typeset.
> 
> The most recent episode of contretemps involves the sad history of
> ASCII, ISO 8859, Unicode, and how exactly ' and ` (and to a lesser
> extent, ^ and ~) should be rendered.  Some painful choices were made in
> the 1970s, and some procrastination was coddled in the 2000s, that have
> people grumbling today.  People threaten that the masses will just "go
> to Markdown" if ignorance is not coddled.  For people who really care
> _only_ about terminal input, I'm not sure such an out-migration can be
> stopped, or should be.  Proper typesetting carries a lot of complexity
> and it's hard to justify that complexity to people who don't want what
> it can accomplish.
> 
> About the only challenge Markdown faces is filling, and I'm sure there
> are tools to handle that it in its much simpler problem domain.  That,
> or people just resize or horizontally scroll their terminals.  The
> mindset is a bit foreign to me.
> 
