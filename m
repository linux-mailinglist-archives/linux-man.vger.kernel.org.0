Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4262DAE811
	for <lists+linux-man@lfdr.de>; Tue, 10 Sep 2019 12:27:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731115AbfIJK1c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Sep 2019 06:27:32 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:38804 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727351AbfIJK1c (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Sep 2019 06:27:32 -0400
Received: by mail-wr1-f66.google.com with SMTP id l11so19044491wrx.5;
        Tue, 10 Sep 2019 03:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=M85dYA6fKUdS8cNZUlRB8i8xXiXNdMyPlT7kR2zJfY4=;
        b=IIf2HgcpMQ/6IV9JyPXRsFZFYNsE3UwR1A5lVgWRc8As8QqlFea1rDke0w7srDu7T1
         PQ0O+XZHkRlVhBzGCH2MPVR8Oz9khv6NF6fbThWVLhwNgAknw04dlGai9aeREvU7tb+3
         XiS7eDg8RSMKAMuY6mEbe2A3n+WlQEM8XrrXXuxnHawwjEE7rEZ8RKSCUOCaO9zk9lmS
         SRUUUrA7V2RXiOKb3ye5uUTo16TeDQQMwtFYoOW2Yaf+yNId0TMLqP3JwKvHyylD/dGR
         TT+1ebROQD7+GDEfdF2K5dxW6ozmo09TWdyka0/vwi6xKEJuLRIFKiQm9F87rgKRKKWs
         ibFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=M85dYA6fKUdS8cNZUlRB8i8xXiXNdMyPlT7kR2zJfY4=;
        b=YaqRfCV1WcFYYwp/VKJx7qazq2sbcVMAXEiLmJgJl+nCo+AMQMhNdwB3Jq5k70PF7D
         v+BEHJlzOU5CDvBpLUlLhe4HvziZzZyvumDuVQ2oOHjukRcKhmyZkOLOUY+kZFqWVEwL
         /KpKryhJ7WCcgBq0WhoG5T5vETGK7yWQs6IQ0ZMwTycuGDSEQ7FLE0gnaLY0oICzEFOH
         19gWQDkFRoS7iv1RHDbw04eg4AG6GYDqYO3fmF/danNrswQH9YCLU1jH5Sp6SpUYBlbk
         OvLMp3jd+MEEyG08QBPhYLVORaCTvdEOFE0CZgXKvPHhrAwFDG4T4LknFct74LoKm79i
         eyuA==
X-Gm-Message-State: APjAAAWr7UlU/w7H9epZyY057sGrkiAzg8DRS8N6Ax6ni+sLAmK/dQZC
        izz7DgQcqWGKHJ9m43DOTKU=
X-Google-Smtp-Source: APXvYqypUbFHWsoNHMa1dV57+CY7bAYepQfdO71py9akvpcdwjKBe1GlbyKdI41QrIH3//lAGjy9iw==
X-Received: by 2002:adf:8444:: with SMTP id 62mr18215631wrf.202.1568111248962;
        Tue, 10 Sep 2019 03:27:28 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id y3sm15820210wrl.78.2019.09.10.03.27.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 03:27:28 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Philipp Wendler <ml@philippwendler.de>,
        linux-man <linux-man@vger.kernel.org>,
        Containers <containers@lists.linux-foundation.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Andy Lutomirski <luto@amacapital.net>,
        Jordan Ogas <jogas@lanl.gov>, werner@almesberger.net,
        Al Viro <viro@ftp.linux.org.uk>
Subject: Re: pivot_root(".", ".") and the fchdir() dance
To:     "Eric W. Biederman" <ebiederm@xmission.com>
References: <CAKgNAki0bR5zZr+kp_xjq+bNUky6-F+s2ep+jnR0YrjHhNMB1g@mail.gmail.com>
 <20190805103630.tu4kytsbi5evfrhi@mikami>
 <3a96c631-6595-b75e-f6a7-db703bf89bcf@gmail.com>
 <da747415-4c7a-f931-6f2e-2962da63c161@philippwendler.de>
 <CAKgNAkjS+x7aMVUiVSgCRwgi8rnukqJv=svtTARE-tt-oxQxWw@mail.gmail.com>
 <87r24piwhm.fsf@x220.int.ebiederm.org>
 <CAKgNAkhK2qBbz5aVY9VdK0UzvpZ=c7c7LWQ1MK2gu-rVKUz9_g@mail.gmail.com>
 <87ftl5donm.fsf@x220.int.ebiederm.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b8b9d8bd-e959-633f-b879-4bfe4eb0df23@gmail.com>
Date:   Tue, 10 Sep 2019 12:27:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <87ftl5donm.fsf@x220.int.ebiederm.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eric,

On 9/10/19 1:40 AM, Eric W. Biederman wrote:

[...]

>>> I have just spotted this conversation and I expect if you are going
>>> to use this example it is probably good to document what is going
>>> on so that people can follow along.
>>
>> (Sounds reasonable.)
>>
>>>>> chdir(rootfs)
>>>>> pivot_root(".", ".")
>>>
>>> At this point the mount stack should be:
>>> old_root
>>> new_root
>>> rootfs
>>
>> In this context, what is 'rootfs'? The initramfs? At least, when I
>> examine /proc/PID/mountinfo. When I look at the / mount point in
>> /proc/PID/mountinfo, I see just
>>
>>    old_root
>>    new_root
>>
>> But nothing below 'new_root'. So, I'm a little puzzled.
> 
> I think that is because Al changed /proc/mounts to not display mounts
> that are outside of your current root.  But yes there is typically
> the initramfs of file system type rootfs on their.  Even when it isn't
> used you have one.  Just to keep everything simple I presume.
> 
> I haven't double checked lately to be certain it is there but I expect
> it is.
> 
>> By the way, why is 'old_root' stacked above 'new_root', do you know? I
>> mean, in this scenario it turns out to be useful, but it's kind of the
>> opposite from what I would have expected. (And if this was a
>> deliverate design decision in pivot_root(), it was never made
>> explicit.)
> 
> Oh.  It is absolutely explicit and part of the design and it has nothing
> to do with this case.
> 
> The pivot_root system calls takes two parameters:  new_root and put_old.
> 
> In this case the old root is put on put_old (which is the new_root).
> And new_root is made the current root.
> 
> The pivot_root code looks everything up before it moves anything.   With
> the result it is totally immaterrial which order the moves actually
> happen in the code.  Further it is pretty much necessary to look
> everything up before things are moved because the definition of paths
> change.
> 
> So it would actually be difficult to have pivot_root(.,.) to do anything
> except what it does today.
> 
> 
>>> With "." and "/" pointing to new_root.
>>>
>>>>> umount2(".", MNT_DETACH)
>>>
>>> At this point resolving "." starts with new_root and follows up the
>>> mount stack to old-root.
>>
>> Okay.
>>
>>> Ordinarily if you unmount "/" as is happening above you then need to
>>> call chroot and possibly chdir to ensure neither "/" nor "." point to
>>> somewhere other than the unmounted root filesystem.  In this specific
>>> case because "/" and "." resolve to new_root under the filesystem that is
>>> being unmounted that all is well.
>>
>> s/that/then/ ?

Thanks for the further clarifications.

All: I plan to add the following text to the manual page:

       new_root and put_old may be the same  directory.   In  particular,
       the following sequence allows a pivot-root operation without need‐
       ing to create and remove a temporary directory:

           chdir(new_root);
           pivot_root(".", ".");
           umount2(".", MNT_DETACH);

       This sequence succeeds because the pivot_root()  call  stacks  the
       old root mount point (old_root) on top of the new root mount point
       at /.  At that point, the calling  process's  root  directory  and
       current  working  directory  refer  to  the  new  root mount point
       (new_root).  During the subsequent umount()  call,  resolution  of
       "."   starts  with  new_root  and then moves up the list of mounts
       stacked at /, with the result that old_root is unmounted.

Look okay?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
