Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CD81FD2205
	for <lists+linux-man@lfdr.de>; Thu, 10 Oct 2019 09:43:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733162AbfJJHmo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Oct 2019 03:42:44 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:37001 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733068AbfJJHmo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Oct 2019 03:42:44 -0400
Received: by mail-wm1-f65.google.com with SMTP id f22so5602218wmc.2;
        Thu, 10 Oct 2019 00:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=08k17KhlQj3i14TvkTXgqx7nlrtJgKhJrWWCtMSNNtY=;
        b=WMwLsbp/MJDVWBIz1F/birkrBBoqRyA0sP0oA7MY5e3eTHyqYDfATumzuxki2GDnZ3
         zPXs+K+eSLXUPgRGvbTDjeKX8KDhPP1jzm+yYu0zSkMNrcmrwvu5qh1Mdm0nIKL0Ytxn
         uSKmesNtEPK2gfa4PQtS3L6oKn5QCtLjTkpLqxgpNW4gkZkarzzzyvfBrmhz9WuChAID
         xMtEyZUbZMiqH3qFIiW8vfaJojnAhk23USXC1SSJOcUF4LFAoTlSQgX9sWD5lsaWxOiG
         dCYADTepw/wyNISaVqE4oF+/gQBttWuC2iC7i5gQPD2dR4caPuu629Kq9i4J/1mwTy5l
         5LIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=08k17KhlQj3i14TvkTXgqx7nlrtJgKhJrWWCtMSNNtY=;
        b=RXLX6Cu273wHlSLZHFZh81SLo6xk8xfXMith/wQtabCny/GfH8M0+IMQGT9n+CYJGA
         NvOODCWEAVS7NY7Z4L3JBYiaa5hxLL+YuxgmQNdQLw2KFiYEdTVv394OpoY2hmUpq0zh
         knp/etk9iq6+vUE/X8uTuM+ELK3HT1MX82YLuu93FmpckuWgiYyxAeAmvmK3nizsQI8E
         vWOZ22N0ryZICKIDgL4hy0M/0zB8U2lZQbqXdJqtfdbPaDvjRnEHal79j4WsWW56/7yG
         mRmHFkFfodJ4XrjuIVBWCpcznzUVyoDqADWAN/STxlsCj+5BL08B16m5JRpaNzKvC/wc
         qqFQ==
X-Gm-Message-State: APjAAAVN93cujuOCh87ClOqa5cJG/IEpxPX7Wk/qQX5kimqVaVzxybaa
        Eg4+TEz2WEV7DLWxOK3HPmU=
X-Google-Smtp-Source: APXvYqzFUQwT5Pi0fL72LZz1tzNIGx94KQexXPBs58odhjWJxlJwj7TEnGhHZIka4NkglNZoKVLbKw==
X-Received: by 2002:a7b:ca4b:: with SMTP id m11mr6016899wml.129.1570693360675;
        Thu, 10 Oct 2019 00:42:40 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id s1sm6960211wrg.80.2019.10.10.00.42.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 00:42:39 -0700 (PDT)
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
 <7f2907f5-442a-6187-d0ad-e2fd345cd450@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7e42c8cd-4c33-b471-9d18-610fa7d6b022@gmail.com>
Date:   Thu, 10 Oct 2019 09:42:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <7f2907f5-442a-6187-d0ad-e2fd345cd450@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eric,

I think I just understood something. See below.

On 10/9/19 11:01 PM, Michael Kerrisk (man-pages) wrote:
> Hello Eric,
> 
> On 10/9/19 6:00 PM, Eric W. Biederman wrote:
>> "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
>>
>>> Hello Eric,
>>>
>>> Thank you. I was hoping you might jump in on this thread.
>>>
>>> Please see below.
>>>
>>> On 10/9/19 10:46 AM, Eric W. Biederman wrote:
>>>> "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
>>>>
>>>>> Hello Philipp,
>>>>>
>>>>> My apologies that it has taken a while to reply. (I had been hoping
>>>>> and waiting that a few more people might weigh in on this thread.)
>>>>>
>>>>> On 9/23/19 3:42 PM, Philipp Wendler wrote:
>>>>>> Hello Michael,
>>>>>>
>>>>>> Am 23.09.19 um 14:04 schrieb Michael Kerrisk (man-pages):
>>>>>>
>>>>>>> I'm considering to rewrite these pieces to exactly
>>>>>>> describe what the system call does (which I already
>>>>>>> do in the third paragraph) and remove the "may or may not"
>>>>>>> pieces in the second paragraph. I'd welcome comments
>>>>>>> on making that change.
>>>
>>> What did you think about my proposal above? To put it in context,
>>> this was my initial comment in the mail:
>>>
>>> [[
>>> One area of the page that I'm still not really happy with
>>> is the "vague" wording in the second paragraph and the note
>>> in the third paragraph about the system call possibly
>>> changing. These pieces survive (in somewhat modified form)
>>> from the original page, which was written before the
>>> system call was released, and it seems there was some
>>> question about whether the system call might still change
>>> its behavior with respect to the root directory and current
>>> working directory of other processes. However, after 19
>>> years, nothing has changed, and surely it will not in the
>>> future, since that would constitute an ABI breakage.
>>> I'm considering to rewrite these pieces to exactly
>>> describe what the system call does (which I already
>>> do in the third paragraph) and remove the "may or may not"
>>> pieces in the second paragraph. I'd welcome comments
>>> on making that change.
>>> ]]
>>>
>>> And the second and third paragraphs of the manual page currently
>>> read:
>>>
>>> [[
>>>        pivot_root()  may  or may not change the current root and the cur‐
>>>        rent working directory of any processes or threads  that  use  the
>>>        old  root  directory  and which are in the same mount namespace as
>>>        the caller of pivot_root().  The  caller  of  pivot_root()  should
>>>        ensure  that  processes  with root or current working directory at
>>>        the old root operate correctly in either case.   An  easy  way  to
>>>        ensure  this is to change their root and current working directory
>>>        to  new_root  before  invoking  pivot_root().   Note   also   that
>>>        pivot_root()  may  or may not affect the calling process's current
>>>        working directory.  It is therefore recommended to call chdir("/")
>>>        immediately after pivot_root().
>>>
>>>        The  paragraph  above  is  intentionally vague because at the time
>>>        when pivot_root() was first implemented, it  was  unclear  whether
>>>        its  affect  on  other process's root and current working directo‐
>>>        ries—and the caller's current working  directory—might  change  in
>>>        the  future.   However, the behavior has remained consistent since
>>>        this system call was first implemented: pivot_root()  changes  the
>>>        root  directory  and the current working directory of each process
>>>        or thread in the same mount namespace to new_root if they point to
>>>        the  old  root  directory.   (See also NOTES.)  On the other hand,
>>>        pivot_root() does not change the caller's current  working  direc‐
>>>        tory  (unless it is on the old root directory), and thus it should
>>>        be followed by a chdir("/") call.
>>> ]]
>>
>> Apologies I saw that concern I didn't realize it was a questio
>>
>> I think it is very reasonable to remove warning the behavior might
>> change.  We have pivot_root(8) in common use that to use it requires
>> the semantic of changing processes other than the current process.
>> Which means any attempt to noticably change the behavior of
>> pivot_root(2) will break userspace.
> 
> Thanks for the confirmation that this change would be okay.
> I will make this change soon, unless I hear a counterargument.
> 
>> Now the documented semantics in behavior above are not quite what
>> pivot_root(2) does.  It walks all processes on the system and if the
>> working directory or the root directory refer to the root mount that is
>> being replaced, then pivot_root(2) will update them.
>>
>> In practice the above is limited to a mount namespace.  But something as
>> simple as "cd /proc/<somepid>/root" can allow a process to have a
>> working directory in a different mount namespace.
> 
> So, I'm not quite clear. Do you mean that something in the existing
> manual page text should change? If so, could you describe the
> needed change please?

Okay, I had to sleep on this one. I think what you are saying is
that is some process, pidX, in mountns X does a "cd /proc/<pidY>/root"
where pidY is a process in mountns Y, and then some
process in mountns Y does a pivot_root(), the the CWD of pidX will
be changed, even though it is in a different mountns. Right?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
