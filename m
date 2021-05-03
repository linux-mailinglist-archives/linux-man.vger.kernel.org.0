Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 10543371430
	for <lists+linux-man@lfdr.de>; Mon,  3 May 2021 13:21:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229823AbhECLWU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 May 2021 07:22:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229811AbhECLWT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 May 2021 07:22:19 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66833C06174A
        for <linux-man@vger.kernel.org>; Mon,  3 May 2021 04:21:26 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id i21-20020a05600c3555b029012eae2af5d4so5568434wmq.4
        for <linux-man@vger.kernel.org>; Mon, 03 May 2021 04:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=TRj3/BzLgwnCM8sqETvj3Y4ClP1XIayUn/H+fNvhtTU=;
        b=NN1h7G9MUnO3/XoGtJuxCPHcGCC0BnLmcR/JOYD9sxhZDllIpU+c1hi0QnMxWBa23i
         rn4BsbTeBEWlN2fM/GglDsmXHGiJHweSFMEH2ZTbOJKtTG3wvBj77SAcFXg5mAXVQk5z
         fWpsc5/p7hEJZIrAI5rellH5VUWWa2WevWlZSVzCuNAbsBukcBup3OGovh6A0KxI5aAP
         +meZEGxOAAYdWplUFVtuV3iQHQ1VA8D+z2LUYLDZn5dzTgQ1kZe+RIdAKX+kWEuRiSFd
         74/fx3YhZb8nh9Z181SoWgIWlmbR9r9FoVfe/LHE6BZwZlxler2mvPkMKSHA7VInjpGD
         nZew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TRj3/BzLgwnCM8sqETvj3Y4ClP1XIayUn/H+fNvhtTU=;
        b=eyfmOuoJA6RSI+yNxL4q8U+s4oVu9v4hKY9dLiUhhL357vUB5ttRTazC2JW9I6rhp6
         ShcItf2wiHkRySQRMf78/qE8YMJJODwmmqDVBlQfbOZrfoRcaRKyE+uY5ufkdDxV8qqj
         TMfmNpdHGl6vY+0Lpq5vBg9eQ/I3fvYms0boSVOkZXSl4wbeExpu6DnzYXhmqz/2bss4
         /UIfoB3GVMVb4F/RwFPcDSpOvIsyqH9tHtB9CRkCZjnB25/XTeElV09lDV+kg8xeulnc
         yXsd1P398Mr5zaoCQunW67F5qUwwHG9L3vsnB3K7sRcj3Js+vBgsI0JIWPS4Mp12lYNY
         183Q==
X-Gm-Message-State: AOAM532mu0QolGcSSaJ2dOywW+dJiDvEP4cyGDD8+9PvmPHgYzUphp1P
        lpumP+Y+NWkK5ve5uKRt8Zk=
X-Google-Smtp-Source: ABdhPJzc2JfXiYMMlmkOdyGvmGFfWT180MljONyIUqptqIAR+RgH5ZUGD9NTu8TOHkawBaHOv+sINQ==
X-Received: by 2002:a05:600c:c7:: with SMTP id u7mr5603166wmm.156.1620040885081;
        Mon, 03 May 2021 04:21:25 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d9sm3116883wrp.47.2021.05.03.04.21.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 May 2021 04:21:24 -0700 (PDT)
Subject: Re: [Bug 212887] Clarify getopt.3 behaviour
To:     "James O. D. Hunt" <jamesodhunt@gmail.com>
References: <bug-212887-216477@https.bugzilla.kernel.org/>
 <bug-212887-216477-EPnMb5Wk1j@https.bugzilla.kernel.org/>
Cc:     linux-man <linux-man@vger.kernel.org>,
        bugzilla-daemon@bugzilla.kernel.org
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <09dbc287-e506-08ff-ac65-5b30cc293e52@gmail.com>
Date:   Mon, 3 May 2021 13:21:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <bug-212887-216477-EPnMb5Wk1j@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi James,

On 5/2/21 5:16 PM, bugzilla-daemon@bugzilla.kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=212887
> 
> --- Comment #8 from James Hunt (jamesodhunt@gmail.com) ---
> Hi Alex,
> 
> Thanks for reviewing again. I've updated the patch to v3 which now only
> includes the first two changes.

Okay, I'll have a look at it.

> 
> I agree - I was in two minds about the WARNINGS section myself...
> 
> # Validating input
> 
> Good programmers should know to do this. But given that `getopt` is a primary
> interface to a program (which might be running `SUID-root` for example), I
> wonder if it needs to be "called out" more strongly? There are lots of other
> syscalls and library calls that might deserve similar treatment of course. In
> fact, I wonder a new "security` man page might be an interesting project, since
> that could summarise expectations, security + safety advice to programmers, and
> refer to man pages like `getopt(3)`. that would also avoid cluttering the main
> man pages as the details could be provided in the security one.

I like that idea.  Could you draft such a page?  I know it's asking a
very hard work, but maybe start with some basic ideas.

Also, security is a very broad thing.  Maybe small pages restricted to a
specific context are easier to handle.  For example, one page dedicated
to security in the context of user input in programs, which could treat
things like getopt(3), scanf(3), fgets(3), and their families of
functions (and maybe some others)

If you would like to do this, could you please start a new thread by
writing a new email, and CC the mailing list <linux-man@vger.kernel.org>
(and any other lists that may be interested, such as probably
<libc-alpha@sourceware.org>, please?.

> 
> # Numeric options
> 
> Yes, the user is responsible for a well formed command line. However, I was
> trying to raise the fact that the programmer needs to be even more careful in
> the case of the program using getopt to support numeric options which doesn't
> seem to be that common, but could lead to unexpected trouble if a programmer
> decides to use that feature of getopt.
> 

getopt(3) just gets strings (it does something more, but let's
simplify).  In that sense it's very similar to fgets(3) as an interface
(even safer, as it doesn't write to a buffer).  It's strtol(3) or
whatever function that will convert the input into a number the one that
has to take care of the input limits.

Also,

As long as the user uses the options correctly, numeric options are just
another character.  They're treated exactly in the same way.  And in the
case of long options, everything is a string, even if it has numbers in it.

The only valid case where a number is treated as a number is in an
option argument (in the case that the option has a numeric argument).
But in this case, it is still a string at the time of getopt(3).  And in
this case, the programmer already expects a number, so I don't think any
warning applies.

It is only when the user inputs options in the wrong order that numbers
and options may be mixed and unexpected things may happen, but invalid
input resulting in undefined behavior is not an issue.



Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
