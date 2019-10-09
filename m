Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3CA63D0890
	for <lists+linux-man@lfdr.de>; Wed,  9 Oct 2019 09:41:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730179AbfJIHlk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Oct 2019 03:41:40 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:35117 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725935AbfJIHlj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Oct 2019 03:41:39 -0400
Received: by mail-wr1-f67.google.com with SMTP id v8so1496773wrt.2;
        Wed, 09 Oct 2019 00:41:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9UY2QbIEGmOf3Zlgv93V9GQZjtls83MvwklkIbK7UcU=;
        b=JMiEwo3kLUZJRv2GBcyt2r2G8LVII7f8OPxj12em9L3VP3COd7cFJ33hUC9hRAd7WZ
         feuVyW9Sp9WZh4QGXupeNhxrMGL6+S/8UsHsTL2g4jiFPaO166TnOKYgt/wsc6z4DCTx
         hi3bXzh873VRscdE8Da5DtsvMmDR0FNzjFRDEDWD9GpdLX4jg9l5Y7l1Nbn0ku3C+u6P
         WbmHyeXaGxegWzc4jXi/lDrydbY3lRCpn4uCEr6OHj/NnQtg77Lbvx8iIC7zC3pRclYh
         v1nRtZ7sPbKrQ09XOwFGTv3uxdb6HIMjtp0Ctt5t3Sfj2F64BwgUCpuMwZnqblmCnRJj
         SV7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9UY2QbIEGmOf3Zlgv93V9GQZjtls83MvwklkIbK7UcU=;
        b=XPyhM6JHS+v9SEayuTivjg3GK/U0eif2omTDPZduCffEoRRCd7Qy2MBm5bNciyUpz1
         a+JBbFg9SY/m6t0ZysU2HvU7Gy1rJuSMurh28pwTn2or1Ng67H0sbZL7Fw9s0x+ctUmy
         w1YgxtYRVZKhEV9pYJhaPbHQzqWF5CzDllqUzCSZbNxZHm4SNw0FqGtNiElWe2WQCEA2
         RQNhJynfCQrK7LI/jVX8k+txs2uR9KYP9Nqc9rnzzIYcJcPeYG0rexixZX576rCmddTn
         iQ5C03yEKv/aLh6ap7pVrgmjCGvCh3C54KS3RVhEfD7qIbtcinBgym6SzFNbdbob6iJq
         Rfug==
X-Gm-Message-State: APjAAAVho1kV8LeV+mRa92EOpzNVEXh39wv4+8V5suR+l0En9hwpqfnx
        g0E+CKBzQHu44RJYtI7iGKU=
X-Google-Smtp-Source: APXvYqw4KVm55RedrhNoQvGBxTLCBpdNABz/XYNmtniV22b3bGHJOBJ4Ro7i6BxQYdm2QGYdCZ+stg==
X-Received: by 2002:adf:c143:: with SMTP id w3mr1678433wre.77.1570606895856;
        Wed, 09 Oct 2019 00:41:35 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id s1sm1742156wrg.80.2019.10.09.00.41.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 00:41:35 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Containers <containers@lists.linux-foundation.org>,
        =?UTF-8?Q?St=c3=a9phane_Graber?= <stgraber@ubuntu.com>
Subject: Re: For review: rewritten pivot_root(2) manual page
To:     Philipp Wendler <ml@philippwendler.de>,
        "Eric W. Biederman" <ebiederm@xmission.com>,
        "Serge E. Hallyn" <serge@hallyn.com>,
        Christian Brauner <christian@brauner.io>,
        Aleksa Sarai <asarai@suse.de>,
        Reid Priedhorsky <reidpr@lanl.gov>,
        Andy Lutomirski <luto@amacapital.net>,
        Yang Bo <rslovers@yandex.com>, Jakub Wilk <jwilk@jwilk.net>,
        Joseph Sible <josephcsible@gmail.com>,
        Al Viro <viro@ftp.linux.org.uk>, werner@almesberger.net
References: <620c691a-065e-b894-4f06-7453012bc8d3@gmail.com>
 <d449305b-f87c-f26e-e43f-d193fd8f4332@philippwendler.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e51e454c-b0e7-e5d1-7810-e8f023574aa2@gmail.com>
Date:   Wed, 9 Oct 2019 09:41:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <d449305b-f87c-f26e-e43f-d193fd8f4332@philippwendler.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Philipp,

My apologies that it has taken a while to reply. (I had been hoping
and waiting that a few more people might weigh in on this thread.)

On 9/23/19 3:42 PM, Philipp Wendler wrote:
> Hello Michael,
> 
> Am 23.09.19 um 14:04 schrieb Michael Kerrisk (man-pages):
> 
>> I'm considering to rewrite these pieces to exactly
>> describe what the system call does (which I already
>> do in the third paragraph) and remove the "may or may not"
>> pieces in the second paragraph. I'd welcome comments
>> on making that change.
> 
> I think that it would make the man page significantly easier to
> understand if if the vague wording and the meta discussion about it are
> removed.

It is my inclination to make this change, but I'd love to get more
feedback on this point.

>> DESCRIPTION
> [...]>        pivot_root()  changes  the
>>        root  directory  and the current working directory of each process
>>        or thread in the same mount namespace to new_root if they point to
>>        the  old  root  directory.   (See also NOTES.)  On the other hand,
>>        pivot_root() does not change the caller's current  working  direc‐
>>        tory  (unless it is on the old root directory), and thus it should
>>        be followed by a chdir("/") call.
> 
> There is a contradiction here with the NOTES (cf. below).

See below.

>>        The following restrictions apply:
>>
>>        -  new_root and put_old must be directories.
>>
>>        -  new_root and put_old must not be on the same filesystem as  the
>>           current root.  In particular, new_root can't be "/" (but can be
>>           a bind mounted directory on the current root filesystem).
> 
> Wouldn't "must not be on the same mountpoint" or something similar be
> more clear, at least for new_root? The note in parentheses indicates
> that new_root can actually be on the same filesystem as the current
> note. However, ...

For 'put_old', it really is "filesystem".

For 'new_root', see below.

>>        -  put_old must be at or underneath new_root; that  is,  adding  a
>>           nonnegative  number  of /.. to the string pointed to by put_old
>>           must yield the same directory as new_root.
>>
>>        -  new_root must be a mount point.  (If  it  is  not  otherwise  a
>>           mount  point,  it  suffices  to  bind  mount new_root on top of
>>           itself.)
> 
> ... this item actually makes the above item almost redundant regarding
> new_root (except for the "/") case. So one could replace this item with
> something like this:
> 
> - new_root must be a mount point different from "/". (If it is not
>   otherwise a mount point, it suffices  to bind mount new_root on top
>   of itself.)
> 
> The above item would then only mention put_old (and maybe use clarified
> wording on whether actually a different file system is necessary for
> put_old or whether a different mount point is enough).

Thanks. That's a good suggestion. I simplified the earlier bullet
point as you suggested, and changed the text here to say:

       -  new_root must be a mount point, but can't be "/".  If it is not
          otherwise  a mount point, it suffices to bind mount new_root on
          top of itself.  (new_root can be a bind  mounted  directory  on
          the current root filesystem.)

>> NOTES
> [...]
>>        pivot_root() allows the caller to switch to a new root  filesystem
>>        while  at  the  same time placing the old root mount at a location
>>        under new_root from where it can subsequently be unmounted.   (The
>>        fact  that  it  moves  all processes that have a root directory or
>>        current working directory on the old root filesystem  to  the  new
>>        root  filesystem  frees the old root filesystem of users, allowing
>>        it to be unmounted more easily.)
> 
> Here is the contradiction:
> The DESCRIPTION says that root and current working dir are only changed
> "if they point to the old root directory". Here in the NOTES it says
> that any root or working directories on the old root file system (i.e.,
> even if somewhere below the root) are changed.
> 
> Which is correct?

The first text is correct. I must have accidentally inserted
"filesystem" into the paragraph just here during a global edit.
Thanks for catching that.

> If it indeed affects all processes with root and/or current working
> directory below the old root, the text here does not clearly state what
> the new root/current working directory of theses processes is.
> E.g., if a process is at /foo and we pivot to /bar, will the process be
> moved to /bar (i.e., at / after pivot_root), or will the kernel attempt
> to move it to some location like /bar/foo? Because the latter might not
> even exist, I suspect that everything is just moved to new_root, but
> this could be stated explicitly by replacing "to the new root
> filesystem" in the above paragraph with "to the new root directory"
> (after checking whether this is true).

The text here now reads:

       pivot_root() allows the caller to switch to a new root  filesystem
       while  at  the  same time placing the old root mount at a location
       under new_root from where it can subsequently be unmounted.   (The
       fact  that  it  moves  all processes that have a root directory or
       current working directory on the old root  directory  to  the  new
       root  frees the old root directory of users, allowing the old root
       filesystem to be unmounted more easily.)


>> EXAMPLE>        The program below demonstrates the use of  pivot_root()  inside  a
>>        mount namespace that is created using clone(2).  After pivoting to
>>        the root directory named in the program's first command-line argu‐
>>        ment,  the  child  created  by  clone(2) then executes the program
>>        named in the remaining command-line arguments.
> 
> Why not use the pivot_root(".", ".") in the example program?
> It would make the example shorter, and also works if the process cannot
> write to new_root (e..g., in a user namespace).

I'm not sure. Some people have a bit of trouble to wrap their head
around the pivot_root(".", ".") idea. (I possibly am one of them.)
I'd be quite keen to hear other opinions on this. Unfortunately,
few people have commented on this manual page rewrite.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
