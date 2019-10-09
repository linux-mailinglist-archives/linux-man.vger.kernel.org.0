Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D4C88D1A64
	for <lists+linux-man@lfdr.de>; Wed,  9 Oct 2019 23:02:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731155AbfJIVBk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Oct 2019 17:01:40 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:35289 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731103AbfJIVBj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Oct 2019 17:01:39 -0400
Received: by mail-wr1-f68.google.com with SMTP id v8so4775747wrt.2;
        Wed, 09 Oct 2019 14:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1f8MiSCn36EaC4PnT+e2p+YG7qwf6/0i13EnSQrmCsw=;
        b=IEYB+GZZdGeNaglv0sGtj+RrtXZtHwgEC1OtrWfFPjTNb/ywNXyrLHVzUBfL6D46h5
         rvlaOl7n3s5Yx3tocQArD60J9lMUAP6THpkU7J+z3bYqRB+H4KLduc8zQhMzbf5tKE3V
         GMwTwWM2/AXMsTd2MSQmmK+ieGcJDIXyyJeOo9z/36saD8/y2BKO1Tp0I3yLFLoDfto0
         KHGeyIjYZlGGMoBvjx0KoNKBAG3A6d+XEW0UDIulejYRbxs9h5WAZYF0xC+O2CIWJbFW
         0qQGnGZFQ88g3dNhBcVkLP7l+b1WJgytROsTyKPvROj8hVrJPFx138gRADRUQp+CFLVU
         cCDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1f8MiSCn36EaC4PnT+e2p+YG7qwf6/0i13EnSQrmCsw=;
        b=CnskNHANyQJc47PheXfCTvJPvDemYsHPTYHY9Dxd40wjgQwP9DZak7Uk25ICkxZRyA
         wWdcLKqWc6m+MXuD98zlUQbwacJRbKv8j05MQ6Yptdtv3YJ6pCujsy4rjYobH5yM7P33
         8+qEECcec+nzPkUfQeCNB9vUkGkgulA2eZwQ04RKO6tZAKcp5RblUdP1srWVQeEnW8Nd
         2+Dab8nAnI1nbWd0gc0gn76N+uRWr0XE7n5yfvNFldZupTr0nnB/LNUGL4Uq8suuG9j/
         Bk0fyDtcD2k5l4+bg4BOCoNIJM6vs+uh4MhYR70dUyUlBiABll38qyE5RBI+Ok41uYEo
         Yq7w==
X-Gm-Message-State: APjAAAW72LWp1c96XE5s5M4pHFbgQ29xA4MCm1W7FvUPDt+wbVvXmtLi
        p97G70kXKsZ+TXGtdfnZToU=
X-Google-Smtp-Source: APXvYqxy12ivCleGYEmDO6nsvuCZ9BRPzOL9dMbTn7sONGNVJ2P1US/r41YeoTdzHeJLWE3yM9IgrA==
X-Received: by 2002:adf:fd04:: with SMTP id e4mr4793691wrr.371.1570654895924;
        Wed, 09 Oct 2019 14:01:35 -0700 (PDT)
Received: from ?IPv6:2001:a61:3a5c:9a01:fb47:94a9:abbd:4835? ([2001:a61:3a5c:9a01:fb47:94a9:abbd:4835])
        by smtp.gmail.com with ESMTPSA id a3sm5829311wmc.3.2019.10.09.14.01.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 14:01:34 -0700 (PDT)
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
 <c1e7f140-ca5b-2c8c-7b9d-54b61984cd3b@gmail.com>
 <87o8yp52oa.fsf@x220.int.ebiederm.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7f2907f5-442a-6187-d0ad-e2fd345cd450@gmail.com>
Date:   Wed, 9 Oct 2019 23:01:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <87o8yp52oa.fsf@x220.int.ebiederm.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eric,

On 10/9/19 6:00 PM, Eric W. Biederman wrote:
> "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
> 
>> Hello Eric,
>>
>> Thank you. I was hoping you might jump in on this thread.
>>
>> Please see below.
>>
>> On 10/9/19 10:46 AM, Eric W. Biederman wrote:
>>> "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
>>>
>>>> Hello Philipp,
>>>>
>>>> My apologies that it has taken a while to reply. (I had been hoping
>>>> and waiting that a few more people might weigh in on this thread.)
>>>>
>>>> On 9/23/19 3:42 PM, Philipp Wendler wrote:
>>>>> Hello Michael,
>>>>>
>>>>> Am 23.09.19 um 14:04 schrieb Michael Kerrisk (man-pages):
>>>>>
>>>>>> I'm considering to rewrite these pieces to exactly
>>>>>> describe what the system call does (which I already
>>>>>> do in the third paragraph) and remove the "may or may not"
>>>>>> pieces in the second paragraph. I'd welcome comments
>>>>>> on making that change.
>>
>> What did you think about my proposal above? To put it in context,
>> this was my initial comment in the mail:
>>
>> [[
>> One area of the page that I'm still not really happy with
>> is the "vague" wording in the second paragraph and the note
>> in the third paragraph about the system call possibly
>> changing. These pieces survive (in somewhat modified form)
>> from the original page, which was written before the
>> system call was released, and it seems there was some
>> question about whether the system call might still change
>> its behavior with respect to the root directory and current
>> working directory of other processes. However, after 19
>> years, nothing has changed, and surely it will not in the
>> future, since that would constitute an ABI breakage.
>> I'm considering to rewrite these pieces to exactly
>> describe what the system call does (which I already
>> do in the third paragraph) and remove the "may or may not"
>> pieces in the second paragraph. I'd welcome comments
>> on making that change.
>> ]]
>>
>> And the second and third paragraphs of the manual page currently
>> read:
>>
>> [[
>>        pivot_root()  may  or may not change the current root and the cur‐
>>        rent working directory of any processes or threads  that  use  the
>>        old  root  directory  and which are in the same mount namespace as
>>        the caller of pivot_root().  The  caller  of  pivot_root()  should
>>        ensure  that  processes  with root or current working directory at
>>        the old root operate correctly in either case.   An  easy  way  to
>>        ensure  this is to change their root and current working directory
>>        to  new_root  before  invoking  pivot_root().   Note   also   that
>>        pivot_root()  may  or may not affect the calling process's current
>>        working directory.  It is therefore recommended to call chdir("/")
>>        immediately after pivot_root().
>>
>>        The  paragraph  above  is  intentionally vague because at the time
>>        when pivot_root() was first implemented, it  was  unclear  whether
>>        its  affect  on  other process's root and current working directo‐
>>        ries—and the caller's current working  directory—might  change  in
>>        the  future.   However, the behavior has remained consistent since
>>        this system call was first implemented: pivot_root()  changes  the
>>        root  directory  and the current working directory of each process
>>        or thread in the same mount namespace to new_root if they point to
>>        the  old  root  directory.   (See also NOTES.)  On the other hand,
>>        pivot_root() does not change the caller's current  working  direc‐
>>        tory  (unless it is on the old root directory), and thus it should
>>        be followed by a chdir("/") call.
>> ]]
> 
> Apologies I saw that concern I didn't realize it was a questio
> 
> I think it is very reasonable to remove warning the behavior might
> change.  We have pivot_root(8) in common use that to use it requires
> the semantic of changing processes other than the current process.
> Which means any attempt to noticably change the behavior of
> pivot_root(2) will break userspace.

Thanks for the confirmation that this change would be okay.
I will make this change soon, unless I hear a counterargument.

> Now the documented semantics in behavior above are not quite what
> pivot_root(2) does.  It walks all processes on the system and if the
> working directory or the root directory refer to the root mount that is
> being replaced, then pivot_root(2) will update them.
> 
> In practice the above is limited to a mount namespace.  But something as
> simple as "cd /proc/<somepid>/root" can allow a process to have a
> working directory in a different mount namespace.

So, I'm not quite clear. Do you mean that something in the existing
manual page text should change? If so, could you describe the
needed change please?

> Because ``unprivileged'' users can now use pivot_root(2) we may want to
> rethink the implementation at some point to be cheaper than a global
> process walk.  So far that process walk has not been a problem in
> practice.
> 
> If we had to write pivot_root(2) from scratch limiting it to just
> changing the root directory of the process that calls pivot_root(2)
> would have been the superior semantic.  That would have required run
> pivot_root(8) like: "exec pivot_root . . -- /bin/bash ..."  but it would
> not have required walking every thread in the system.

Okay.

[...]

>>>>>> DESCRIPTION
>>>>> [...]>        pivot_root()  changes  the
>>>>>>        root  directory  and the current working directory of each process
>>>>>>        or thread in the same mount namespace to new_root if they point to
>>>>>>        the  old  root  directory.   (See also NOTES.)  On the other hand,
>>>>>>        pivot_root() does not change the caller's current  working  direc‐
>>>>>>        tory  (unless it is on the old root directory), and thus it should
>>>>>>        be followed by a chdir("/") call.
>>>>>
>>>>> There is a contradiction here with the NOTES (cf. below).
>>>>
>>>> See below.
>>>>
>>>>>>        The following restrictions apply:
>>>>>>
>>>>>>        -  new_root and put_old must be directories.
>>>>>>
>>>>>>        -  new_root and put_old must not be on the same filesystem as  the
>>>>>>           current root.  In particular, new_root can't be "/" (but can be
>>>>>>           a bind mounted directory on the current root filesystem).
>>>>>
>>>>> Wouldn't "must not be on the same mountpoint" or something similar be
>>>>> more clear, at least for new_root? The note in parentheses indicates
>>>>> that new_root can actually be on the same filesystem as the current
>>>>> note. However, ...
>>>>
>>>> For 'put_old', it really is "filesystem".
>>>
>>> If we are going to be pedantic "filesystem" is really the wrong concept
>>> here.  The section about bind mount clarifies it, but I wonder if there
>>> is a better term.
>>
>> Thanks. My aim was to try to distinguish "mount point" from
>> "a mount somewhere inside the file system associated with a
>> certain mount point"--in other words, I wanted to make it clear
>> that 'put_old' (and 'new_root') could not be subdirectories
>> under the current root mount point (which is correct, right?).
>>
>> Using "mount" does seem better. (My only concern is that some
>> people may take it to mean "the mount point", but perhaps that
>> just my own confusion.)
> 
> I am open to better terms.  But mount or vfsmount is what we are using
> internal to the kernel and is really a distinct concept from filesystem.
> And it is starting to leak out in system calls like move_mount.

I have no better term to propose.

[...]

>> Thanks for the above comments.
>>
>> Hmm, doI need to make similar changes in the initial paragraph of
>> the manual page as well? It currently reads:
>>
>>        pivot_root() changes the root filesystem in the mount namespace of
>>        the calling process.  More precisely, it moves the root filesystem
>>        to  the directory put_old and makes new_root the new root filesys‐
>>        tem.  The calling process must have the  CAP_SYS_ADMIN  capability
>>        in the user namespace that owns the caller's mount namespace.
>>
>> Furthermore the one line NAME of the man page reads:
>>
>>        pivot_root - change the root filesystem
>>
>> Is a change needed there also?
> 
> Yes please.  Both locations.

Okay. So would the following be okay:

[[
NAME
       pivot_root - change the root mount
...
DESCRIPTION
       pivot_root()  changes the root mount in the mount namespace of the
       calling process.  More precisely, it moves the root mount  to  the
       directory  put_old  and  makes  new_root  the new root mount.  The
       calling process must have the CAP_SYS_ADMIN capability in the user
       namespace that owns the caller's mount namespace.
]]

?

[...]

>>>>>>        -  new_root must be a mount point.  (If  it  is  not  otherwise  a
>>>>>>           mount  point,  it  suffices  to  bind  mount new_root on top of
>>>>>>           itself.)
>>>>>
>>>>> ... this item actually makes the above item almost redundant regarding
>>>>> new_root (except for the "/") case. So one could replace this item with
>>>>> something like this:
>>>>>
>>>>> - new_root must be a mount point different from "/". (If it is not
>>>>>   otherwise a mount point, it suffices  to bind mount new_root on top
>>>>>   of itself.)
>>>>>
>>>>> The above item would then only mention put_old (and maybe use clarified
>>>>> wording on whether actually a different file system is necessary for
>>>>> put_old or whether a different mount point is enough).
>>>>
>>>> Thanks. That's a good suggestion. I simplified the earlier bullet
>>>> point as you suggested, and changed the text here to say:
>>>>
>>>>        -  new_root must be a mount point, but can't be "/".  If it is not
>>>>           otherwise  a mount point, it suffices to bind mount new_root on
>>>>           top of itself.  (new_root can be a bind  mounted  directory  on
>>>>           the current root filesystem.)
>>>
>>> How about:
>>>           - new_root must be the path to a mount, but can't be "/".  Any
>>
>> Surely here it must be "mount point" not "mount"? (See my discussion
>> above.)
> 
> Sigh.  I have had my head in the code to long, where new_root is
> used to refer to the mount that is mounted on that mount point as well.

Okay -- so I made the text here:

       -  new_root  must be a path to a mount point, but can't be "/".  A
          path that is not already a mount point can  be  converted  into
          one by bind mounting the path onto itself.

Okay?

[...]

Thanks, Eric. As always, your input for the man pages is so
valuable. (My only challenge is to keep up with you...)

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
