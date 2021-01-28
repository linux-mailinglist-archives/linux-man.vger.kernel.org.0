Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 034C93078C6
	for <lists+linux-man@lfdr.de>; Thu, 28 Jan 2021 15:56:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232310AbhA1OzQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 Jan 2021 09:55:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232327AbhA1Own (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 Jan 2021 09:52:43 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA776C061788
        for <linux-man@vger.kernel.org>; Thu, 28 Jan 2021 06:52:02 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id m1so1537807wml.2
        for <linux-man@vger.kernel.org>; Thu, 28 Jan 2021 06:52:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kbi0f7Cg6Ml+yCg4LVHWyCo+7kuQRHGsH5QkBMAmPso=;
        b=JPdfW7jDNsGvl1ArvXziaEh8lUwWEiJZRa95QMqy65JUfmFBGHs6ZpCzwkjbCqEF4s
         ANYA+DF2R0plPlFlSeosaQk3itwEIOQNL60U5itvu+EgADDcP+B32sipKxfPvPl2rVCM
         1kHaSFxbTKq1YtFEYwNjHb1k3NtARn90YSR1LwZY6Oe1bVTMK6/Zhw14UQ2AcXdlmYDi
         gvUsNiKgpHVRtJWgT5p7bKqvY4djg1rW8JfVKq9KAWhPTbZjapRWhTOBcPHPXMBaiqib
         WaMP32q9Y7R/S+mKH2lY+sVZa5JHdR6v6HmgrYFV8VjhbiDPqtl/aVywPggN/NiUcWaM
         8v3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kbi0f7Cg6Ml+yCg4LVHWyCo+7kuQRHGsH5QkBMAmPso=;
        b=bvzF2HH4/qcO/IbOf/8ImK8sFA0wDrc7tvdnj2jOTen0gAlw1Evy2bksMtpXLUI/Gj
         B0q/WzWa/pTZhMZc4woLKDGsJXAVXXYOHBgnF1xAteUX+SFz3KVsPoAWKYWUIqHBHOXK
         DkTjSupPzvX+HTIxZjWUDi0TKvULBg1XZDeahU/cwW69Zjgfu1KrteY2WtsvQeIBbfv7
         DcjPqEhhCBCgiuA6XuC+Zuu5L9l5kwVq1nKP9e+DEhrwqGqmBztnC6XIRAdHLBUZCphn
         k3srCDlHYbn2fRP4Wv7ylsxrT4g8uGyEw/1T6XHjI/WWDXty9rXvihsa+8foBo8wSoSB
         wzIw==
X-Gm-Message-State: AOAM533bF//3TiCdThWsz5sxZh0ozc44XyVIixOPmwFcmeqdp71CW6Ls
        ydIeaLHwr6jICC/PdQMJ4h6/oPZv3UQ=
X-Google-Smtp-Source: ABdhPJw77dWFHntFM4/TJ9yNaZxBdN3VTXaG+mSzeGns2Q4263+qNfzml1FERLPBU0Kd1Ny0no4hIw==
X-Received: by 2002:a1c:df08:: with SMTP id w8mr8842242wmg.81.1611845521496;
        Thu, 28 Jan 2021 06:52:01 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id j2sm6870823wrh.78.2021.01.28.06.52.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jan 2021 06:52:01 -0800 (PST)
Subject: Re: [PATCH] Various pages: Use the 'logical' quoting method
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210124151035.70536-3-alx.manpages@gmail.com>
 <3848130f-8622-465a-7000-004f04511335@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <49183099-03d1-49d8-f6ce-970fc98e2be9@gmail.com>
Date:   Thu, 28 Jan 2021 15:51:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <3848130f-8622-465a-7000-004f04511335@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 1/28/21 3:02 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 1/24/21 4:10 PM, Alejandro Colomar wrote:
>> This fix places periods after the closing quotes.
>> This is preferred practice in Great Britain,
>> and normative in various European languages.
>>
>> See "Hart's Rules",
>> and the "Oxford Dictionary for Writers and Editors".
> 
> Thanks for the patch. Things are a bit more complicated.
> 
>> Found using:
>>
>> $ find man? -type f \
>>   |grep -n '^[^.].*[^."]\."' \
>>   |less;
>>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>  man2/access.2   | 2 +-
>>  man2/mknod.2    | 2 +-
>>  man2/mmap.2     | 2 +-
>>  man2/shmget.2   | 2 +-
>>  man2/vfork.2    | 2 +-
>>  man3/cfree.3    | 2 +-
>>  man3/ctime.3    | 2 +-
>>  man3/lseek64.3  | 2 +-
>>  man3/rcmd.3     | 2 +-
>>  man5/passwd.5   | 2 +-
>>  man7/man.7      | 2 +-
>>  man7/pthreads.7 | 2 +-
>>  man7/uri.7      | 2 +-
>>  13 files changed, 13 insertions(+), 13 deletions(-)
>>
>> diff --git a/man2/access.2 b/man2/access.2
>> index 7f796d00a..454dc1cda 100644
>> --- a/man2/access.2
>> +++ b/man2/access.2
>> @@ -346,7 +346,7 @@ Only access bits are checked, not the file type or contents.
>>  Therefore, if a directory is found to be writable,
>>  it probably means that files can be created in the directory,
>>  and not that the directory can be written as a file.
>> -Similarly, a DOS file may be found to be "executable," but the
>> +Similarly, a DOS file may be found to be "executable", but the
> 
> I did some rewording here instead.

Okay

> 
>>  .BR execve (2)
>>  call will still fail.
>>  .PP
>> diff --git a/man2/mknod.2 b/man2/mknod.2
>> index fad459d8c..8df261311 100644
>> --- a/man2/mknod.2
>> +++ b/man2/mknod.2
>> @@ -265,7 +265,7 @@ or
>>  .I dev
>>  is not 0, the behavior of
>>  .BR mknod ()
>> -is unspecified."
>> +is unspecified.".
> 
> The "logical" rules don't say to use /."./, I think. See
> https://en.wikipedia.org/wiki/Quotation_marks_in_English#Ending_the_sentence
> 
> And since this is a question of quoted sentences(s), the period
> does rightfully belong inside the quotes, I think.

After checking with the Spanish rules
(<https://www.rae.es/dpd/comillas>, see 3.c):

* original quoted punctuation is kept inside the quotes
	xxx."
* if the outer sentence has punctuation, it's written outside the quotes:
	xxx".
* If both points above happen at the same time, both are written;
  they are independent.
  HOWEVER, if that would end up with [.".], the inner period is removed:
	xxx".	(not [xxx.".])
  But:
	xxx?".
	xxx."?
	xxx...".

I guess neither British nor Spanish are completely logical in this
specific situation, because one of the punctuation is missing:

Spanish: The original quoted period is missing.
English: How do you know if the outer sentence has ended if there's no
period outside the quotes?

Meh...

> 
>>  However, nowadays one should never use
>>  .BR mknod ()
>>  for this purpose; one should use
>> diff --git a/man2/mmap.2 b/man2/mmap.2
>> index 132a5b14f..79f7d060d 100644
>> --- a/man2/mmap.2
>> +++ b/man2/mmap.2
>> @@ -310,7 +310,7 @@ at which point touching the "guard" page will result in a
>>  signal.
>>  .TP
>>  .BR MAP_HUGETLB " (since Linux 2.6.32)"
>> -Allocate the mapping using "huge pages."
>> +Allocate the mapping using "huge pages".
> 
> I did some rewording here instead.

Okay

> 
>>  See the Linux kernel source file
>>  .I Documentation/admin\-guide/mm/hugetlbpage.rst
>>  for further information, as well as NOTES, below.
>> diff --git a/man2/shmget.2 b/man2/shmget.2
>> index fade94c7f..b145b4cf8 100644
>> --- a/man2/shmget.2
>> +++ b/man2/shmget.2
>> @@ -117,7 +117,7 @@ to ensure that this call creates the segment.
>>  If the segment already exists, the call fails.
>>  .TP
>>  .BR SHM_HUGETLB " (since Linux 2.6)"
>> -Allocate the segment using "huge pages."
>> +Allocate the segment using "huge pages".
> 
> I did some rewording here instead.

.

> 
>>  See the Linux kernel source file
>>  .I Documentation/admin\-guide/mm/hugetlbpage.rst
>>  for further information.
>> diff --git a/man2/vfork.2 b/man2/vfork.2
>> index dbb803b66..930dafa7d 100644
>> --- a/man2/vfork.2
>> +++ b/man2/vfork.2
>> @@ -311,7 +311,7 @@ or
>>  .B SIGTTIN
>>  signals; rather, output or
>>  .IR ioctl s
>> -are allowed and input attempts result in an end-of-file indication."
>> +are allowed and input attempts result in an end-of-file indication.".
> 
> See above. (mknod(2))

See above.

> 
>>  .\"
>>  .\" As far as I can tell, the following is not true in 2.6.19:
>>  .\" Currently (Linux 2.3.25),
>> diff --git a/man3/cfree.3 b/man3/cfree.3
>> index ff4bba318..45db549b9 100644
>> --- a/man3/cfree.3
>> +++ b/man3/cfree.3
>> @@ -100,7 +100,7 @@ Answer: use
>>  An SCO manual writes: "The cfree routine is provided for compliance
>>  to the iBCSe2 standard and simply calls free.
>>  The num and size
>> -arguments to cfree are not used."
>> +arguments to cfree are not used.".
> 
> See above. (mknod(2))

.

> 
>>  .SH RETURN VALUE
>>  The SunOS version of
>>  .BR cfree ()
>> diff --git a/man3/ctime.3 b/man3/ctime.3
>> index 89107975b..9178c809a 100644
>> --- a/man3/ctime.3
>> +++ b/man3/ctime.3
>> @@ -406,7 +406,7 @@ functions shall return values in one of two static objects:
>>  a broken-down time structure and an array of type
>>  .IR char .
>>  Execution of any of the functions may overwrite the information returned
>> -in either of these objects by any of the other functions."
>> +in either of these objects by any of the other functions.".
>>  This can occur in the glibc implementation.
> 
> See above. (mknod(2))

.

> 
>>  .PP
>>  In many implementations, including glibc, a 0 in
>> diff --git a/man3/lseek64.3 b/man3/lseek64.3
>> index f6bab174d..1f9a4f787 100644
>> --- a/man3/lseek64.3
>> +++ b/man3/lseek64.3
>> @@ -140,7 +140,7 @@ When users complained about data loss caused by a miscompilation of
>>  glibc 2.1.3 added the link-time warning
>>  .PP
>>  .in +4n
>> -"the \`llseek\' function may be dangerous; use \`lseek64\' instead."
>> +"the \`llseek\' function may be dangerous; use \`lseek64\' instead.".
> 
> No. This really is exactly the string that glibc used to produce!

Okay

> 
>>  .in
>>  .PP
>>  This makes this function unusable if one desires a warning-free
>> diff --git a/man3/rcmd.3 b/man3/rcmd.3
>> index 9f0b72a6f..5dbb31447 100644
>> --- a/man3/rcmd.3
>> +++ b/man3/rcmd.3
>> @@ -256,7 +256,7 @@ On failure, it returns \-1 and sets
>>  to indicate the error.
>>  The error code
>>  .BR EAGAIN
>> -is overloaded to mean "All network ports in use."
>> +is overloaded to mean "All network ports in use".
> 
> Changed.>
>>  .PP
>>  For information on the return from
>>  .BR ruserok ()
>> diff --git a/man5/passwd.5 b/man5/passwd.5
>> index 469d29260..ee8b9311b 100644
>> --- a/man5/passwd.5
>> +++ b/man5/passwd.5
>> @@ -123,7 +123,7 @@ Dennis Ritchie has reported: "Sometimes we sent printer output or
>>  batch jobs to the GCOS machine.
>>  The gcos field in the password file was a place to stash the
>>  information for the $IDENTcard.
>> -Not elegant."
>> +Not elegant.".
> 
> See above. (mknod(2))

See above.

> 
>>  .TP
>>  .I directory
>>  This is the user's home directory:
>> diff --git a/man7/man.7 b/man7/man.7
>> index 2fa944c94..03518738f 100644
>> --- a/man7/man.7
>> +++ b/man7/man.7
>> @@ -181,7 +181,7 @@ of text.
>>  Below are other relevant macros and predefined strings.
>>  Unless noted otherwise, all macros
>>  cause a break (end the current line of text).
>> -Many of these macros set or use the "prevailing indent."
>> +Many of these macros set or use the "prevailing indent".
> 
> Changed.
> 
>>  The "prevailing indent" value is set by any macro with the parameter
>>  .I i
>>  below;
>> diff --git a/man7/pthreads.7 b/man7/pthreads.7
>> index 4696bde3e..1c29efd4c 100644
>> --- a/man7/pthreads.7
>> +++ b/man7/pthreads.7
>> @@ -133,7 +133,7 @@ the same process as the caller.)
>>  The system may reuse a thread ID after a terminated thread has been joined,
>>  or a detached thread has terminated.
>>  POSIX says: "If an application attempts to use a thread ID whose
>> -lifetime has ended, the behavior is undefined."
>> +lifetime has ended, the behavior is undefined.".
> 
> See above. (mknod(2))

.

> 
>>  .SS Thread-safe functions
>>  A thread-safe function is one that can be safely
>>  (i.e., it will deliver the same results regardless of whether it is)
>> diff --git a/man7/uri.7 b/man7/uri.7
>> index 44d1cb6cb..f20390cb8 100644
>> --- a/man7/uri.7
>> +++ b/man7/uri.7
>> @@ -291,7 +291,7 @@ A more portable syntax is to use an empty string as the server name,
>>  for example,
>>  <file:///etc/passwd>; this form does the same thing
>>  and is easily recognized by pattern matchers and older programs as a URI.
>> -Note that if you really mean to say "start from the current location," don't
>> +Note that if you really mean to say "start from the current location", don't
> 
> Changed.
> 
>>  specify the scheme at all; use a relative address like <../test.txt>,
>>  which has the side-effect of being scheme-independent.
>>  An example of this scheme is <file:///etc/passwd>.
> 
> I see now that the logical system was already (by quite a margine) the 
> majority  usage in the manual pages.
> 
> Cheers,
> 
> Michael
> 
> 


Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
