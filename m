Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C426338DD00
	for <lists+linux-man@lfdr.de>; Sun, 23 May 2021 22:54:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231953AbhEWUz1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 May 2021 16:55:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231910AbhEWUz0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 May 2021 16:55:26 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F29B1C061574
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 13:53:57 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id i17so26398311wrq.11
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 13:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Rc7Y4qWV/M4hzwCwBDca15Hl8ZqdYRRlRb6y3nOAgRc=;
        b=p6679vs3UhQ9ffiCRIpLxgCa437X3bwzDDx9noW5eX1+yNL1wcCCdyz/8MAo9nfqay
         jgTEKrECTuA3QU92vD6D7ukaJ19lTXBI1YTkFGH9niy7OTy9TYJl+fi3ulVzkNOrkqFK
         5biYgBhueHWsrNBbvqJPw1WxPSkpKnQp0Qw8Z9PMNim9Ycn1Rlm6IEpKLfXHoxSRUILu
         HcneEhelqi8DfuKA8FDq5pE5V3dy1n+pYHH8SjG2cnwBYuhSlkcEllmlluVuUWCM5LAK
         IdPqnOSacBE9BApELVa+Puudg+z411OzIenoaJdXpOmxXndAZpiKcrSKGxOiWzbPh0JT
         v/Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:references:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Rc7Y4qWV/M4hzwCwBDca15Hl8ZqdYRRlRb6y3nOAgRc=;
        b=hDIjgMnYtN1SHA1KP3Z0GzZhv+nJU3gJ6UG5GcjlGMIEbBZE0vJZT6ubdAY1dIhEC8
         eIJEy3VQd0/OoIZ6V2zYBaRgbN0qbeEgF0k/OctXikBUlAjETkvQ+g1pOYe6jnP8jOwK
         3dtytZWNyEdV2e2rjYnVSUSuikZEhbW9Lf0rpXmXTCToKg0QPG81IoirHY6hz4NbUAF2
         4Yo83F4ijCddsrP4TjcgH5yjd0/BJ2SCfcRFXL4Di7an1eNzEV12G1TupooCdzLRgMiZ
         NU4eczlsAsq8UV57l8hWqNBVQ6232TeEVPIf0+rkamlkP0jWo7U6fsGX9Rz9WVFSPe7f
         lFYw==
X-Gm-Message-State: AOAM532PRmAoc5M3aSoRGqJj4w9wiTKBJikesRC9o1jAJroWAPkQLxsM
        AtVfTTYZBkp+ZgpdD1OXxcjjLjx6+3s=
X-Google-Smtp-Source: ABdhPJxTxmohzcF5RDuWr3lHdGJqxH8wWh4LOKBr2IsTUFYR5X67u5NptT5UxMoDC+mbncaoPlSNCg==
X-Received: by 2002:adf:f341:: with SMTP id e1mr17693894wrp.352.1621803236441;
        Sun, 23 May 2021 13:53:56 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id m9sm11734245wrs.36.2021.05.23.13.53.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 May 2021 13:53:55 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Subject: Re: Adding struct-xxx link pages for structures
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <5872e635-1b61-6193-55fa-0a26e59afbca@gmail.com>
 <20210523142610.vycmifmrznf7oqlk@localhost.localdomain>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <5b95386d-f616-e524-f161-89eeb3103358@gmail.com>
Date:   Sun, 23 May 2021 22:53:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210523142610.vycmifmrznf7oqlk@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 5/23/21 4:26 PM, G. Branden Robinson wrote:
 > You didn't ask me,

Your feedback is, as always has been, very valuable and appreciated :-)

If I sometimes don't answer to some of your mails, it's because I don't
have enough background to understand it, and prefer to wait for an
answer of Michael ;)

 > but I'd recommend reversing the order, to put the
 > most important information first, and that's the structure (or union)
 > tag, not the "struct" or "union" keyword tag itself.

Hmm, interesting.

 >
 > I think the common use case is someone who has the tag in mind (or needs
 > to know it exists) and is looking for it.

Agree.

 > It is less common that
 > someone is going to want to browse every such page.  We don't want to
 > discourage such curiosity, but I think such people can be accommodated
 > easily, say in the libc(7) man page.  (In fact, I think that page could
 > be made even more useful by giving a synoptical view of the C Standard
 > Library, but that's a digression and, like a good intro(1), no small
 > task.)

Interesting idea too.

Ideally, for functions, that would be as easy as listing all of the
pages in man3  (right now that would be mixing functions and types; for
something more precise, see my function man_lsfunc() in
<scripts/bash_aliases>).

I think it's very unlucky that historically there hasn't been a section
for the types, so that we could do the same with the types, and now
we're (ab)using section 3 (BTW, do you have any opinion on this?  I'm
not sure how we should proceed with that in the long term).
Specifically, I think that we're breaking the ability of listing all of
the pages to know which functions there are.  I thought of adding a new
subsection (maybe 3t) for types.

And there's also another thing:  there's no way of listing constants
(you either read the standards documents (or the manual pages) entirely
(and you will miss implementation-specific details), or read the source
code (and become crazy in the process)).

 >
 > Putting the tag first will also help in the tab completion case, because
 > the tag name will be less ambiguous than "struct".  We can easily
 > imagine someone typing "man struct<TAB>" and getting blitzed with a
 > menu of dozens of items.
 >
 > If I do that for "stat" on my system, I get this:
 >
 > $ man stat
 > stat      stat64    states    statfs    statfs64  statvfs   statx
 >
 > Seeing "stat-struct" in that list would leave me with little doubt as to
 > what the page will cover, even with the manual section missing.

Yes.  Maybe a simpler option to having an entirely new subsection would
be to always have a suffix -struct (or _struct) (or [-_]union) for types
(others (typedefs) already have _t).

 >
 > The use of a dash/minus as a separator "feels" unorthodox to me, but
 > perhaps that is just the pull of blind tradition.  I think it's actually
 > a better choice than an underscore because of course "-" is not valid in
 > a C identifier, and "_" is, so ambiguity is avoided.

I used struct-foo because man has the ability to allow either
'man struct-foo' or 'man struct foo', and the latter looks very
intuitive from a C-syntax perspective (I learnt this from the git manual
pages, where you can do 'man git log' or 'man git-log').  'man man'
doesn't specify this behavior, so I'll read the source code and try to
confirm how it works.

Regards,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
