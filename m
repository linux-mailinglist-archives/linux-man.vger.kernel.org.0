Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1C4CBB2F24
	for <lists+linux-man@lfdr.de>; Sun, 15 Sep 2019 10:12:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725892AbfIOIMT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Sep 2019 04:12:19 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:42816 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725497AbfIOIMS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Sep 2019 04:12:18 -0400
Received: by mail-wr1-f67.google.com with SMTP id q14so35780280wrm.9;
        Sun, 15 Sep 2019 01:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Ou0hWp/Yu/1AYHb9KISsweYejlcEfF6pByXOsrs5Ido=;
        b=bD1mTQj2vedpXvLNklhedn09136/mOtnb/ESk4JxNi5DIaKWK1kV1TrdDp27vat9G1
         CEc6hqD5V63wlEs56mMVHMUfdq9oDUe8PplzU5gBXRYL6CnN8SHjeSG3ijX1yha4kehG
         egzldJnSahlLZpg8Y8vwm89T/ydGgN5ML2KUGyvrp1zPyq+6JC4j6rhudRMxnTcamEBZ
         C7qPxopQnxqDjN6sJbB25WfpXxfJygcQHUTqdScvab8oAlZzzv4CCh0085NYEMUf7OqL
         WYJ2qC8zayzQu1JDFxz9kj35lpIYi/dDs7GDN0fpybpXfpDUs6s3UFBk/Oi7hiUpOZGH
         /0bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Ou0hWp/Yu/1AYHb9KISsweYejlcEfF6pByXOsrs5Ido=;
        b=PtnI1j2e7ofX2NiO8cm3aBFq5eB22ArgCoJhe2qk3F20NmDItpOPsoilD69rtuf6Jv
         xn2rbadVjGee20Q8OydcF8ipxgC2vVQnlkyyBaAy8upDDvpnoD+e5wnDChs2sw7BsKxP
         c+ihWoq8osDZkxr3GvdzMz4c6X8P0X64yc04+rksF39E16JY4Fyr3jkdSe9EVOjOliVa
         G4heFwvmcveLiQRYSStZ4hLOZAjTEtGl9VswMX9sVVC7UCwrEysXz908neCtwxvCXheE
         5DBlIDEtF7mx6maTesOqq+O2d3+jIMw9qyCZyAT7Frn4aAzb0IComZNlE7ptLNA8Jk/0
         stjw==
X-Gm-Message-State: APjAAAWnRkVs1DjW96ru0KexYzrVOVgFUmJXKv33sS5lYyok6qv7+cac
        z8qRvuDOk3poL5YNvPBrUjc=
X-Google-Smtp-Source: APXvYqzylM+gkMijy2O0b9MdS2UTOBlvoRi6hbGOEqqil7kBnXMbHnBcCDKE7UuEmQLYWBn1VKHs7g==
X-Received: by 2002:a5d:5642:: with SMTP id j2mr14336944wrw.345.1568535136170;
        Sun, 15 Sep 2019 01:12:16 -0700 (PDT)
Received: from [10.105.145.132] ([88.128.80.35])
        by smtp.gmail.com with ESMTPSA id o12sm10929299wrm.23.2019.09.15.01.12.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Sep 2019 01:12:14 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        Christian Brauner <christian.brauner@ubuntu.com>,
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
 <b8b9d8bd-e959-633f-b879-4bfe4eb0df23@gmail.com>
 <20190910111551.scam5payogqqvlri@wittgenstein>
 <30545c5c-ff4c-8b87-e591-40cc0a631304@gmail.com>
 <871rwnda47.fsf@x220.int.ebiederm.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <448138b8-0d0c-5eb3-d5e5-04a26912d3a8@gmail.com>
Date:   Sun, 15 Sep 2019 10:12:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <871rwnda47.fsf@x220.int.ebiederm.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eric,

On 9/11/19 1:06 AM, Eric W. Biederman wrote:
> "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
> 
>> Hello Christian,
>>
>>>> All: I plan to add the following text to the manual page:
>>>>
>>>>        new_root and put_old may be the same  directory.   In  particular,
>>>>        the following sequence allows a pivot-root operation without need‐
>>>>        ing to create and remove a temporary directory:
>>>>
>>>>            chdir(new_root);
>>>>            pivot_root(".", ".");
>>>>            umount2(".", MNT_DETACH);
>>>
>>> Hm, should we mention that MS_PRIVATE or MS_SLAVE is usually needed
>>> before the umount2()? Especially for the container case... I think we
>>> discussed this briefly yesterday in person.
>> Thanks for noticing. That detail (more precisely: not MS_SHARED) is
>> already covered in the numerous other changes that I have pending
>> for this page:
>>
>>        The following restrictions apply:
>>        ...
>>        -  The propagation type of new_root and its parent mount must  not
>>           be MS_SHARED; similarly, if put_old is an existing mount point,
>>           its propagation type must not be MS_SHARED.
> 
> Ugh.  That is close but not quite correct.
> 
> A better explanation:
> 
>     The pivot_root system call will never propagate any changes it makes.
>     The pivot_root system call ensures this is safe by verifying that
>     none of put_old, the parent of new_root, and parent of the root directory
>     have a propagation type of MS_SHARED.

Thanks for that. However, another question. You text has two changes.
First, I understand why you reword the discussion to indicate the
_purpose_ of the rules. However, you also, AFAICS, list a different set of
of directories that can't be MS_SHARED:

I said: new_root, the parent of new_root, and put_old
You said: the parent of new_root, and put_old, and parent of the
root directory.

Was I wrong on this detail also?

> The concern from our conversation at the container mini-summit was that
> there is a pathology if in your initial mount namespace all of the
> mounts are marked MS_SHARED like systemd does (and is almost necessary
> if you are going to use mount propagation), that if new_root itself
> is MS_SHARED then unmounting the old_root could propagate.
> 
> So I believe the desired sequence is:
> 
>>>>            chdir(new_root);
> +++            mount("", ".", MS_SLAVE | MS_REC, NULL);
>>>>            pivot_root(".", ".");
>>>>            umount2(".", MNT_DETACH);
> 
> The change to new new_root could be either MS_SLAVE or MS_PRIVATE.  So
> long as it is not MS_SHARED the mount won't propagate back to the
> parent mount namespace.

Thanks. I made that change.

Cheers,

Michael
 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
