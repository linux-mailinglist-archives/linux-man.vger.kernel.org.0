Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4037E241846
	for <lists+linux-man@lfdr.de>; Tue, 11 Aug 2020 10:31:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728358AbgHKIbz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Aug 2020 04:31:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728253AbgHKIbw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Aug 2020 04:31:52 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51C7CC06174A
        for <linux-man@vger.kernel.org>; Tue, 11 Aug 2020 01:31:52 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id 88so10640676wrh.3
        for <linux-man@vger.kernel.org>; Tue, 11 Aug 2020 01:31:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4AG5qdSwa1NdA8QIIVvNItEWiaL0TYLLnQggo/e/GY4=;
        b=fKFSxqm6Lt7wcWukeVRtLF7zhPZSK4kL3X47BZA9vbClV0O9WJPPRS4/ILv/VsaSME
         jJm26Zi9byBucbhk24Zn1X+kOQZuCUT0/8FBS7RDndPYs7r8/Ook8KQjM4T/LVVuqi1D
         CU8bwG/YCgCW5IjnGiC+5/xUu65bEtGN3QU0yIKQx6s1SNNh3XrRZKFGfUPU3i8Eg+Lc
         io2DMXYFOFrtnba6HwhHnS3957/z8zTuNlWE1FWipkrEM/ppecU7RmH8+AGbp687EuDd
         bk2cvQrGKmQxkt4eerR6gjUhXrctwBsxeegckq76jRcYnvlcFJfnCRpqUZbF/ztwMvAA
         VHQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4AG5qdSwa1NdA8QIIVvNItEWiaL0TYLLnQggo/e/GY4=;
        b=EVZii81kxf6dlRFsLzArjJy/3BxzQeHE3Fn8QdG53h3DjPTMTO0jpNQVVce13QaPJO
         Q4rVR6vCJhzWJ83QJj7Dqo6lDdX+tbQO3ltWgQcpVFrH131hT7BDGr3jtgrJ1zoKZ7E7
         lqQS9jft/uCB86lvGyMOw+RAotxWgRMaWIyn8ONSp9eexLyCfeu9ak4O/U+DpwphQoZV
         HCea6kxC1s1aq/BUhrrwBcafZY3FrkaQ1ODW/xXEVxDrg+Z0WjVA6LPycO+6FQ0tdlhs
         wTZ1c3dfs1ers42enza6nJuVIxmuDqbpja0xGK6oRPSjqg6Muel+qFnR2ckLSu6xTtQF
         xs0w==
X-Gm-Message-State: AOAM5335pvBoYO6mEB7U6rUrZPSpdwaFC2/Lx9ebe0ocM0AlSWw9L2Xm
        oZCK6/zY5x300qFVI4AbBbLmR/D3
X-Google-Smtp-Source: ABdhPJzhpWXK/FwY4h1b8W6iAHkA2VpQ5pn8LQZ9Y4Wf8YbL2J5MRq2g4OlPj3N6KTeLabvwDFP4Mg==
X-Received: by 2002:adf:a35e:: with SMTP id d30mr30141012wrb.53.1597134710953;
        Tue, 11 Aug 2020 01:31:50 -0700 (PDT)
Received: from ?IPv6:2001:a61:241a:1101:8c63:f991:aa91:da82? ([2001:a61:241a:1101:8c63:f991:aa91:da82])
        by smtp.googlemail.com with ESMTPSA id q7sm25801498wra.56.2020.08.11.01.31.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2020 01:31:50 -0700 (PDT)
Cc:     Robert Elz <kre@munnari.oz.au>,
        austin-group-l <austin-group-l@opengroup.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: Pseudoterminal terminology in POSIX
To:     =?UTF-8?B?T8SfdXo=?= <oguzismailuysal@gmail.com>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
References: <CALxWeYrisuzEPVEHOQSFJ8G_=8-VTAOTNBquyszOZMid7YfT=Q@mail.gmail.com>
 <20200805135110.6Sj7F%steffen@sdaoden.eu> <20200805142049.GA17848@localhost>
 <CAP1RCkjrqKGJmh6f637D=yGuhev7ae5QJkMjv5a8iHo4X33NFw@mail.gmail.com>
 <1d8c5e6e96fbdd47ce143a566b57db2c803d4898.camel@gnu.org>
 <21048.1596645536@jinx.noi.kre.to>
 <CAH7i3LrNvBo3indixGyJgS2_4F9r3cd3kOiDgPK8m-ZXj1a0zg@mail.gmail.com>
 <874bfe40-5f05-151d-42b3-482baacbf0b2@gmail.com>
 <CAH7i3LpXZxwaLQTY=XK8zM4jWYHSiy1feA6ZLE-mT-ZiJNak5A@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.lists@gmail.com>
Message-ID: <33583fda-da56-7f4c-caa3-08832f654707@gmail.com>
Date:   Tue, 11 Aug 2020 10:31:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAH7i3LpXZxwaLQTY=XK8zM4jWYHSiy1feA6ZLE-mT-ZiJNak5A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[repairing CC]


On 8/6/20 6:53 AM, Oğuz via austin-group-l at The Open Group wrote:
> 5 Ağustos 2020 Çarşamba tarihinde Michael Kerrisk (man-pages) <
> mtk.lists@gmail.com> yazdı:
> 
>> On 8/5/20 7:12 PM, Oğuz via austin-group-l at The Open Group wrote:
>>> 5 Ağustos 2020 Çarşamba tarihinde Robert Elz via austin-group-l at The
>> Open
>>> Group <austin-group-l@opengroup.org> yazdı:
>>>
>>>>     Date:        Wed, 05 Aug 2020 11:28:45 -0400
>>>>     From:        "Paul Smith via austin-group-l at The Open Group" <
>>>> austin-group-l@opengroup.org>
>>>>     Message-ID:  <1d8c5e6e96fbdd47ce143a566b57d
>> b2c803d4898.camel@gnu.org>
>>>>
>>>>   | do you consider the pseudoterminal as providing to the terminal, or
>> the
>>>>   | terminal as providing to the pseudoterminal.
>>>>
>>>> How did anyone ever get to a question like that?  - there are a pair of
>>>> devices which between them implement a pseudo-terminal (which is just
>>>> like a terminal, to the application, but isn't one ... hence
>>>> pseudo-terminal).
>>>>
>>>> Personally I'm quite happy with the existing terminology, and see no
>>>> particular need for change (as close to meaningless as the terms are
>>>> in this context - they are well established, anything different will
>>>> just create confusion).
>>>>
>>>>
>>> Couldn't agree more. I don't understand what problem such a change in the
>>> terminology is supposed to solve.
>>
>> The problems have already been widely discussed elsewhere. For a
>> summary, see, for example, https://lwn.net/Articles/823224/
>>
>>
> I see, but changing well established, concrete terms with barely related,
> abstract, far-fetched alternatives just to make a bunch of oversensitive
> snowflakes doesn't make any sense (to me, at least).

Thanks for clarifying your perspective.

> If this change is going to happen no matter what we say, at least add a
> glossary somewhere for us non-native speakers where we can look up what
> each nonsensical alternative term actually means, unless you want to
> exclude us too, of course.

Some kind of change is pretty much inevitable. There are of course
already glossaries, in the form of documentation, and the standard.
The question is simply how to update these.

Thanks,

Michael

