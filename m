Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2C30FBAEF7
	for <lists+linux-man@lfdr.de>; Mon, 23 Sep 2019 10:11:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390677AbfIWILz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Sep 2019 04:11:55 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:36106 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388953AbfIWILz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Sep 2019 04:11:55 -0400
Received: by mail-wm1-f68.google.com with SMTP id m18so8165976wmc.1
        for <linux-man@vger.kernel.org>; Mon, 23 Sep 2019 01:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vtZIK84hYSlFXPi4Pw3auH+dysv4/2SKz5DtoAi099Y=;
        b=WyUrca/i+lGTXBUxSdNLc1anpp0jcLfOktppvA4cbSoSiChGgP1VMsaaX0MRW3YrnJ
         BmjQkGN0fPETOFyTtrKexaQbuO3iuZQuYn5FohuCC1A1gZFhnM4TCbihYtzXOFJNuaJm
         +UeeImwtXpiakHjaWKTGrZaQhhkXq7z4CHwj/6RcMbsMTY+t+iOUWrKTF4HZoF+D4c7/
         PR/wRbO6b3QWCn0gqFD9M88CCHRKwGlJX+72Q5nEscAJmN8Vd27yLWXabWA2pV6DO72o
         3vOEAFU8NDbmoQ+0wa8t/TZhr5VanJPilH/Xe68uqrB6hAhbVHKS7c/lCmTOhsd1m1kA
         viIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vtZIK84hYSlFXPi4Pw3auH+dysv4/2SKz5DtoAi099Y=;
        b=miTRAgVIsQcxaVa2f/p7uIZNurj2ajunNNN38OP5Ccod/Y9VqPdtedymiD687X8ZZF
         EZgW1vXrXMCLw/OTro1OPrUhA3NcO9+L1wDnnD6U1obaXDtsr0ltjw6lxXGwmQtehCFZ
         L1IOgC4Lly6VJKjDcOzFnV9GLG2XOi9xh8Oit62/VjOFfnW0i+RgfgbT3k5WW5NzEp+e
         uY+5VSj3fsAQuBGUTAt7SqM+wD8IIhT4UgF+X6yKL8s+LWhciXPE6+YQxC/OrXISPh+C
         YT4pd0W5NyTUCgEIr4+HoqSdRvLNj4bE624mjgQVSiLs03oYIurOBnx6ycjY+YWwEuIz
         wErw==
X-Gm-Message-State: APjAAAWQy9C1KjYDsJJWx3+hbnsnbTnNqYVgMSx7dU+FvyNzfWODdr6H
        4EYcuWCzu4lTj8VUo21egHs=
X-Google-Smtp-Source: APXvYqwJ0swXLqP61ASoTqImZvodODA8wBmRJU1JTwTeFZG3mdJ1t682IhSd6cbQoSfKB4Bzc6XLPA==
X-Received: by 2002:a7b:c7d4:: with SMTP id z20mr12980407wmk.49.1569226312131;
        Mon, 23 Sep 2019 01:11:52 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id q10sm26073251wrd.39.2019.09.23.01.11.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2019 01:11:51 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        jannh@google.com, oleg@redhat.com
Subject: Re: [PATCH] clone.2: add CLONE_PIDFD entry
To:     Christian Brauner <christian.brauner@ubuntu.com>
References: <20190511064908.21956-1-christian.brauner@ubuntu.com>
 <fdc276ee-cf28-0a3b-3fd3-6f5033dae7d6@gmail.com>
 <20190916074012.dpsfqfwcxh2pyyt7@wittgenstein>
 <7f115550-c7e6-c803-e47b-a37b7cdfb0a9@gmail.com>
 <20190918071415.gmxvovgiwgsi62tn@wittgenstein>
 <6a863c6a-3e61-f0b6-963e-a3545d9935d6@gmail.com>
 <20190919064750.tyxc7lut3mc2lcrx@wittgenstein>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <89da7209-b81c-9c7d-39bf-6a3b61a0e8c1@gmail.com>
Date:   Mon, 23 Sep 2019 10:11:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190919064750.tyxc7lut3mc2lcrx@wittgenstein>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Christian,

On 9/19/19 8:47 AM, Christian Brauner wrote:
> On Thu, Sep 19, 2019 at 06:04:55AM +0200, Michael Kerrisk (man-pages) wrote:

[...]

>>>> Thanks for that info. One other questions springs to mind.
>>>> I haven't looked at the source or tried testing this,
>>>> but can anything actually be read() from a PIDFD? Presumably,
>>>
>>> We had discussed this but decided to not implement this right away.
>>> Mainly, because we did not have a clear picture what the semantics
>>> should be. But it is something that we will probably want in the
>>> future...
>>
>> That makes sense.
>>
>> A further question... We now have three ways of getting a
>> process file descriptor [*]:
>>
>> open() of /proc/PID
>> pidfd_open()
>> clone()/clone3() with CLONE_PIDFD
>>
>> I thought the FD was supposed to be equivalent in all three cases.
>> However, if I try (on kernel 5.3) poll() an FD returned by opening
>> /proc/PID, poll() tells me POLLNVAL for the FD. Is that difference
>> intentional? (I am guessing it is not.)
> 
> It's intentional.
> The short answer is that /proc/<pid> is a convenience for sending
> signals.
> The longer answer is that this stems from a heavy debate about what a
> process file descriptor was supposed to be and some people pushing for
> at least being able to use /proc/<pid> dirfds while ignoring security
> problems as soon as you're talking about returning those fds from
> clone(); not to mention the additional problems discovered when trying
> to implementing this.
> A "real" pidfd is one from CLONE_PIDFD or pidfd_open() and all features
> such as exit notification, read, and other future extensions will only
> be implemented on top of them.
> As much as we'd have liked to get rid of two different file descriptor
> types it doesn't hurt us much and is not that much different from what
> we will e.g. see with fsinfo() in the new mount api which needs to work
> on regular fds gotten via open()/openat() and mountfds gotten from
> fsopen() and fspick(). The mountfds will also allow for advanced
> operations that the other ones will not. There's even an argument to be
> made that fds you will get from open()/openat() and openat2() are
> different types since they have very different behavior; openat2()
> returning fds that are non arbitrarily upgradable etc.

Okay. So, it would be fair to say (in the man pages) that
pidfd_open() is the preferred way of obtaining a PID file
descriptor for an already existing process?

>> [*} By the way, going forward, can we call these things
>> "process FDs", rather than "PID FDs"? The API names are what
>> they are, an that's okay, but these just as we have socket
>> FDs that refer to sockets, directory FDs that refer to 
>> directories, and timer FDs that refer to timers, and so on,
>> these are FDs that refer to *processes*, not "process IDs".
>> It's a little thing, but I think the naming better, and
>> it's what I propose to use in the manual pages.
> 
> The naming was another debate and we ended with this compromise.
> I would just clarify that a pidfd is a process file descriptor. I
> wouldn't make too much of a deal of hiding the shortcut "pidfd". People
> are already using it out there in the wild and it's never proven a good
> idea to go against accepted practice.

Okay.

I have a draft pidfd_open(2) page that I will send out soon.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
