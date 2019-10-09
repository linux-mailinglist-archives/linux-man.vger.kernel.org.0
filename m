Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5B02DD0CBC
	for <lists+linux-man@lfdr.de>; Wed,  9 Oct 2019 12:22:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727228AbfJIKWz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Oct 2019 06:22:55 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:45524 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726579AbfJIKWz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Oct 2019 06:22:55 -0400
Received: by mail-wr1-f66.google.com with SMTP id r5so2129845wrm.12;
        Wed, 09 Oct 2019 03:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lHUntepvarEZP4ykk04YfbzwmrqUUI9qQRqo7cBkvGg=;
        b=hOQr+eaSYXF6yxzprFWFKpu76zH0RD45ZfnC5VhpTC47b7jgwJv0nU9R/NgiH9bixA
         RajeFrBIK31PFOWEmeAasT3Pr11b1KzhJq5O5CM0ou91EPvk2HrR+kbKC7tfN5GZw8tX
         ZwSeVmriTxg64TZuCdsgrGvWjKNYM5tfuo/xJiJ9RkrMGqloSEQGoGHwSFNDOsYHogh7
         6k+znSn4e5Lhg4EW6NL0hyL6QMjK/dDvHgHFmUXsx9+gFrq0y+0amx/ajan+KXMAVVnT
         UrS/YvNjbCIBOsVUHE5a8sdy8/zDmJ0EsTnuJkAFHNeHDPOG5YwCczVuWDT//QsASkFc
         ePDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lHUntepvarEZP4ykk04YfbzwmrqUUI9qQRqo7cBkvGg=;
        b=d5GaRkDc6BxaEjPDj8XGhfgox9kuEt7EV3f/s1Yvdpw03Xjz8IogXSiTeCAzVJOfqW
         tW00xVN/e49t2Hm+odZw2SHhYwf4KgBEiqOWtyroPSP4O2diJCG+O967xlpYMNyeZj8x
         sWzezLopP4ir9ZLaiPWYjmnOCE3QacN2WlGGpKJ/M8yxnjhYO92kzSEmsJeRDC0Fhni1
         2451LFzHHodpI3enNvcumjowA7g/qXUHFv3J4JaM1oJ5rF+EDaqwba4z9z7vmLYUl45w
         GUE4RaCDr1GOCK8LQ3+wFMsv9yD1pbzcl6Sea1ve6eG/DLDLIHn0msF0C3gl/fzgXjQJ
         fcuQ==
X-Gm-Message-State: APjAAAU3LnmhVOVTG80PrpEmIocCNp01Vj7ooWuPsmmEyYsdIVCVYveq
        /VTwMggASTB6eyAZ02ANem4=
X-Google-Smtp-Source: APXvYqxaivOYFX/Q9EQ6qQtyD906/lGmEsRISxKVEF6zyhDopyZbQkWIZ/xPmIrO5eZNdAcP35rbCw==
X-Received: by 2002:a05:6000:1288:: with SMTP id f8mr2148693wrx.111.1570616571009;
        Wed, 09 Oct 2019 03:22:51 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id r140sm2774487wme.47.2019.10.09.03.22.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 03:22:50 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Philipp Wendler <ml@philippwendler.de>,
        "Serge E. Hallyn" <serge@hallyn.com>,
        Christian Brauner <christian@brauner.io>,
        Aleksa Sarai <asarai@suse.de>,
        Reid Priedhorsky <reidpr@lanl.gov>,
        Andy Lutomirski <luto@amacapital.net>,
        Yang Bo <rslovers@yandex.com>, Jakub Wilk <jwilk@jwilk.net>,
        Joseph Sible <josephcsible@gmail.com>,
        Al Viro <viro@ftp.linux.org.uk>, werner@almesberger.net,
        linux-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Containers <containers@lists.linux-foundation.org>,
        =?UTF-8?Q?St=c3=a9phane_Graber?= <stgraber@ubuntu.com>
Subject: Re: For review: rewritten pivot_root(2) manual page
To:     "Eric W. Biederman" <ebiederm@xmission.com>
References: <620c691a-065e-b894-4f06-7453012bc8d3@gmail.com>
 <d449305b-f87c-f26e-e43f-d193fd8f4332@philippwendler.de>
 <e51e454c-b0e7-e5d1-7810-e8f023574aa2@gmail.com>
 <87y2xu71dh.fsf@x220.int.ebiederm.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c1e7f140-ca5b-2c8c-7b9d-54b61984cd3b@gmail.com>
Date:   Wed, 9 Oct 2019 12:22:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <87y2xu71dh.fsf@x220.int.ebiederm.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eric,

Thank you. I was hoping you might jump in on this thread.

Please see below.

On 10/9/19 10:46 AM, Eric W. Biederman wrote:
> "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
> 
>> Hello Philipp,
>>
>> My apologies that it has taken a while to reply. (I had been hoping
>> and waiting that a few more people might weigh in on this thread.)
>>
>> On 9/23/19 3:42 PM, Philipp Wendler wrote:
>>> Hello Michael,
>>>
>>> Am 23.09.19 um 14:04 schrieb Michael Kerrisk (man-pages):
>>>
>>>> I'm considering to rewrite these pieces to exactly
>>>> describe what the system call does (which I already
>>>> do in the third paragraph) and remove the "may or may not"
>>>> pieces in the second paragraph. I'd welcome comments
>>>> on making that change.

What did you think about my proposal above? To put it in context,
this was my initial comment in the mail:

[[
One area of the page that I'm still not really happy with
is the "vague" wording in the second paragraph and the note
in the third paragraph about the system call possibly
changing. These pieces survive (in somewhat modified form)
from the original page, which was written before the
system call was released, and it seems there was some
question about whether the system call might still change
its behavior with respect to the root directory and current
working directory of other processes. However, after 19
years, nothing has changed, and surely it will not in the
future, since that would constitute an ABI breakage.
I'm considering to rewrite these pieces to exactly
describe what the system call does (which I already
do in the third paragraph) and remove the "may or may not"
pieces in the second paragraph. I'd welcome comments
on making that change.
]]

And the second and third paragraphs of the manual page currently
read:

[[
       pivot_root()  may  or may not change the current root and the cur‐
       rent working directory of any processes or threads  that  use  the
       old  root  directory  and which are in the same mount namespace as
       the caller of pivot_root().  The  caller  of  pivot_root()  should
       ensure  that  processes  with root or current working directory at
       the old root operate correctly in either case.   An  easy  way  to
       ensure  this is to change their root and current working directory
       to  new_root  before  invoking  pivot_root().   Note   also   that
       pivot_root()  may  or may not affect the calling process's current
       working directory.  It is therefore recommended to call chdir("/")
       immediately after pivot_root().

       The  paragraph  above  is  intentionally vague because at the time
       when pivot_root() was first implemented, it  was  unclear  whether
       its  affect  on  other process's root and current working directo‐
       ries—and the caller's current working  directory—might  change  in
       the  future.   However, the behavior has remained consistent since
       this system call was first implemented: pivot_root()  changes  the
       root  directory  and the current working directory of each process
       or thread in the same mount namespace to new_root if they point to
       the  old  root  directory.   (See also NOTES.)  On the other hand,
       pivot_root() does not change the caller's current  working  direc‐
       tory  (unless it is on the old root directory), and thus it should
       be followed by a chdir("/") call.
]]

>>> I think that it would make the man page significantly easier to
>>> understand if if the vague wording and the meta discussion about it are
>>> removed.
>>
>> It is my inclination to make this change, but I'd love to get more
>> feedback on this point.
>>
>>>> DESCRIPTION
>>> [...]>        pivot_root()  changes  the
>>>>        root  directory  and the current working directory of each process
>>>>        or thread in the same mount namespace to new_root if they point to
>>>>        the  old  root  directory.   (See also NOTES.)  On the other hand,
>>>>        pivot_root() does not change the caller's current  working  direc‐
>>>>        tory  (unless it is on the old root directory), and thus it should
>>>>        be followed by a chdir("/") call.
>>>
>>> There is a contradiction here with the NOTES (cf. below).
>>
>> See below.
>>
>>>>        The following restrictions apply:
>>>>
>>>>        -  new_root and put_old must be directories.
>>>>
>>>>        -  new_root and put_old must not be on the same filesystem as  the
>>>>           current root.  In particular, new_root can't be "/" (but can be
>>>>           a bind mounted directory on the current root filesystem).
>>>
>>> Wouldn't "must not be on the same mountpoint" or something similar be
>>> more clear, at least for new_root? The note in parentheses indicates
>>> that new_root can actually be on the same filesystem as the current
>>> note. However, ...
>>
>> For 'put_old', it really is "filesystem".
> 
> If we are going to be pedantic "filesystem" is really the wrong concept
> here.  The section about bind mount clarifies it, but I wonder if there
> is a better term.

Thanks. My aim was to try to distinguish "mount point" from
"a mount somewhere inside the file system associated with a
certain mount point"--in other words, I wanted to make it clear
that 'put_old' (and 'new_root') could not be subdirectories
under the current root mount point (which is correct, right?).

Using "mount" does seem better. (My only concern is that some
people may take it to mean "the mount point", but perhaps that
just my own confusion.)

> I think I would say: "new_root and put_old must not be on the same mount
> as the current root."

I've made that change.

> I think using "mount" instead of "filesystem" keeps the concepts less
> confusing.
> 
> As I am reading through this email and seeing text that is trying to be
> precise and clear then hitting the term "filesystem" is a bit jarring.
> pivot_root doesn't care a thing for file systems.  pivot_root only cares
> about mounts.
> 
> And by a "mount" I mean the thing that you get when you create a bind
> mount or you call mount normally.

Thanks for the above comments.

Hmm, doI need to make similar changes in the initial paragraph of
the manual page as well? It currently reads:

       pivot_root() changes the root filesystem in the mount namespace of
       the calling process.  More precisely, it moves the root filesystem
       to  the directory put_old and makes new_root the new root filesys‐
       tem.  The calling process must have the  CAP_SYS_ADMIN  capability
       in the user namespace that owns the caller's mount namespace.

Furthermore the one line NAME of the man page reads:

       pivot_root - change the root filesystem

Is a change needed there also?

> Michael do you have man pages for the new mount api yet?

David Howells wrote pages in mid-2018, well before the syscalls got
merged in the kernel (in mid-2019). I did not merge them because
the code was not yet in the kernel, and lacking time, I never chased
David when the syscalls did get merged to see if the pages were still
up to date. I pinged David just now.

>> For 'new_root', see below.
>>
>>>>        -  put_old must be at or underneath new_root; that  is,  adding  a
>>>>           nonnegative  number  of /.. to the string pointed to by put_old
>>>>           must yield the same directory as new_root.
>>>>
>>>>        -  new_root must be a mount point.  (If  it  is  not  otherwise  a
>>>>           mount  point,  it  suffices  to  bind  mount new_root on top of
>>>>           itself.)
>>>
>>> ... this item actually makes the above item almost redundant regarding
>>> new_root (except for the "/") case. So one could replace this item with
>>> something like this:
>>>
>>> - new_root must be a mount point different from "/". (If it is not
>>>   otherwise a mount point, it suffices  to bind mount new_root on top
>>>   of itself.)
>>>
>>> The above item would then only mention put_old (and maybe use clarified
>>> wording on whether actually a different file system is necessary for
>>> put_old or whether a different mount point is enough).
>>
>> Thanks. That's a good suggestion. I simplified the earlier bullet
>> point as you suggested, and changed the text here to say:
>>
>>        -  new_root must be a mount point, but can't be "/".  If it is not
>>           otherwise  a mount point, it suffices to bind mount new_root on
>>           top of itself.  (new_root can be a bind  mounted  directory  on
>>           the current root filesystem.)
> 
> How about:
>           - new_root must be the path to a mount, but can't be "/".  Any

Surely here it must be "mount point" not "mount"? (See my discussion
above.)

>           path that is not already a mount can be converted into one by
>           bind mounting the path onto itself.
>>>> NOTES
>>> [...]
>>>>        pivot_root() allows the caller to switch to a new root  filesystem
>>>>        while  at  the  same time placing the old root mount at a location
>>>>        under new_root from where it can subsequently be unmounted.   (The
>>>>        fact  that  it  moves  all processes that have a root directory or
>>>>        current working directory on the old root filesystem  to  the  new
>>>>        root  filesystem  frees the old root filesystem of users, allowing
>>>>        it to be unmounted more easily.)
>>>
>>> Here is the contradiction:
>>> The DESCRIPTION says that root and current working dir are only changed
>>> "if they point to the old root directory". Here in the NOTES it says
>>> that any root or working directories on the old root file system (i.e.,
>>> even if somewhere below the root) are changed.
>>>
>>> Which is correct?
>>
>> The first text is correct. I must have accidentally inserted
>> "filesystem" into the paragraph just here during a global edit.
>> Thanks for catching that.
>>
>>> If it indeed affects all processes with root and/or current working
>>> directory below the old root, the text here does not clearly state what
>>> the new root/current working directory of theses processes is.
>>> E.g., if a process is at /foo and we pivot to /bar, will the process be
>>> moved to /bar (i.e., at / after pivot_root), or will the kernel attempt
>>> to move it to some location like /bar/foo? Because the latter might not
>>> even exist, I suspect that everything is just moved to new_root, but
>>> this could be stated explicitly by replacing "to the new root
>>> filesystem" in the above paragraph with "to the new root directory"
>>> (after checking whether this is true).
>>
>> The text here now reads:
>>
>>        pivot_root() allows the caller to switch to a new root  filesystem
>>        while  at  the  same time placing the old root mount at a location
>>        under new_root from where it can subsequently be unmounted.   (The
>>        fact  that  it  moves  all processes that have a root directory or
>>        current working directory on the old root  directory  to  the  new
>>        root  frees the old root directory of users, allowing the old root
>>        filesystem to be unmounted more easily.)
> 
> 
> Please "mount" instead of "filesystem".

Changed.


>>>> EXAMPLE>        The program below demonstrates the use of  pivot_root()  inside  a
>>>>        mount namespace that is created using clone(2).  After pivoting to
>>>>        the root directory named in the program's first command-line argu‐
>>>>        ment,  the  child  created  by  clone(2) then executes the program
>>>>        named in the remaining command-line arguments.
>>>
>>> Why not use the pivot_root(".", ".") in the example program?
>>> It would make the example shorter, and also works if the process cannot
>>> write to new_root (e..g., in a user namespace).
>>
>> I'm not sure. Some people have a bit of trouble to wrap their head
>> around the pivot_root(".", ".") idea. (I possibly am one of them.)
>> I'd be quite keen to hear other opinions on this. Unfortunately,
>> few people have commented on this manual page rewrite.
> 
> I am happy as long as it is pivot_root(".", ".") is documented
> somewhere.  There is real code that uses it so it is not going away.
> Plus pivot_root(".", ".") is really what is desired in a lot of
> situations where the caller of pivot_root is an intermediary and
> does not control the new root filesystem.  At which point the only
> path you can be guaranteed to exit on the new root filesystem is "/".

Good. There is documentation of pivot_root(".", ".") i the page!

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
