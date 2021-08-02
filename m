Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E21B13DD592
	for <lists+linux-man@lfdr.de>; Mon,  2 Aug 2021 14:21:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233622AbhHBMWH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Aug 2021 08:22:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233557AbhHBMWG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Aug 2021 08:22:06 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36FEEC06175F;
        Mon,  2 Aug 2021 05:21:56 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id h14so21223045wrx.10;
        Mon, 02 Aug 2021 05:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Oc28NEUR2qzYd1JLhoz1FjO1y+ZM2YnVY5dr6kZyeLc=;
        b=DDq0QgMzWOhj8+21F6+axeUqMCHfKgkVAkqBDuxjzkqrUcN5zyBn7pyTsLBqN8iJGR
         rBdiDp341klMMxNP57pVHA/D1cuFOpHr6BhEypxkqEa3plgd7oAaqdsklxKUn5c4MXtN
         7L1MukfSkpF9gJEkn9Y9ni0fa7nxhmlon7da17t7ULEBe/HnTFE9ZElBfVKOUyedjFDN
         aAyrt+/fYoIwSCQyOxYsnBc/ITGucUMd7IXyyvOra+tXSyC/I86ZR1el9Kudt3ofTcVw
         joo2QdQ004I/Z/vI9fKkFXE784g8uiNPH7wMcwaTcH5WrD1ahFjV3lSkIB3K57C3TB30
         dbmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Oc28NEUR2qzYd1JLhoz1FjO1y+ZM2YnVY5dr6kZyeLc=;
        b=PU1Jq7gzKdO9Vkedhlp+UNMnl5KdKaWgymZWSu7bjymjOHJFeJk2nTbFsluSkQddHo
         bMkYdEHWSAymVnTFF+nBuiJAbeJLjEtXSzaqZxO7k0fx/wf5lMOVUnKsTQMZ+RrRqOj+
         Dh1Z8LaguKK7G4zeiFDygPZVaCSeog6fcjSmXDg8/PbTJqrCoQgJSD4hA8ZO7gA/o8J2
         Lh6aaURbfneQ91EWw/eaWWTym9PJOgFXR2/+o2lF3Vu0kfZZJmUR4Bu3fIgnpEE/bOmo
         DBWl6n73ZxK4W8oauCWUoiK2aToiTcvmYKlZ6ywHNuXdtwHh6Zd83GDVVrwaAfnloSht
         pLYg==
X-Gm-Message-State: AOAM5335KjEVrndbE6IuSxQwFipvGso+HKSvQbG9+8B/h3b18FRnsOjR
        KsRBPZcCFjMvtO++690oPj8=
X-Google-Smtp-Source: ABdhPJxQ17Lfnbleyg80FyS52AOrv7Xzqto8qbM7Oo8gLv/oLaAezTIx4Bia+6JnoLQLf0lhc1grsw==
X-Received: by 2002:adf:8b86:: with SMTP id o6mr13230010wra.116.1627906914658;
        Mon, 02 Aug 2021 05:21:54 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id d5sm10917493wre.77.2021.08.02.05.21.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 05:21:54 -0700 (PDT)
Subject: Re: [PATCH v2] ioctl_userfaultfd.2, userfaultfd.2: add minor fault
 mode
To:     Mike Rapoport <rppt@kernel.org>,
        Axel Rasmussen <axelrasmussen@google.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Hugh Dickins <hughd@google.com>,
        Mike Kravetz <mike.kravetz@oracle.com>,
        Peter Xu <peterx@redhat.com>,
        LKML <linux-kernel@vger.kernel.org>, linux-man@vger.kernel.org,
        Linux MM <linux-mm@kvack.org>
References: <20210604195622.1249588-1-axelrasmussen@google.com>
 <CAJHvVcjzi-7Wvrho1LqWiQC2WNbtg0XGf6-JBRcDZS1=banbVA@mail.gmail.com>
 <YQfVRuV2Ab2rlKVI@kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <1add2552-ea36-12a2-b3b1-6e97f6f84e00@gmail.com>
Date:   Mon, 2 Aug 2021 14:21:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <YQfVRuV2Ab2rlKVI@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Mike, Axel,

On 8/2/21 1:21 PM, Mike Rapoport wrote:
> (added man-pages maintainers)

Thanks!  If I'm not CCed, I may not notice the email, depending on the 
traffic of the lists, and the amount of time I have ;)

> 
> On Tue, Jul 27, 2021 at 09:32:34AM -0700, Axel Rasmussen wrote:
>> Any remaining issues with this patch? I just realized today it was
>> never merged. 5.13 (which contains this new feature) was released some
>> weeks ago.

Please see some minor formatting issues I commented below.
Other than that, it looks good to me.

Thanks,

Alex

>>
>> On Fri, Jun 4, 2021 at 12:56 PM Axel Rasmussen <axelrasmussen@google.com> wrote:
>>>
>>> Userfaultfd minor fault mode is supported starting from Linux 5.13.
>>>
>>> This commit adds a description of the new mode, as well as the new ioctl
>>> used to resolve such faults. The two go hand-in-hand: one can't resolve
>>> a minor fault without continue, and continue can't be used to resolve
>>> any other kind of fault.
>>>
>>> This patch covers just the hugetlbfs implementation (in 5.13). Support
>>> for shmem is forthcoming, but as it has not yet made it into a kernel
>>> release candidate, it will be added in a future commit.
>>>
>>> Signed-off-by: Axel Rasmussen <axelrasmussen@google.com>
>>> ---
>>>   man2/ioctl_userfaultfd.2 | 125 ++++++++++++++++++++++++++++++++++++---
>>>   man2/userfaultfd.2       |  79 ++++++++++++++++++++-----
>>>   2 files changed, 182 insertions(+), 22 deletions(-)
>>>
>>> diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
>>> index 504f61d4b..7b990c24a 100644
>>> --- a/man2/ioctl_userfaultfd.2
>>> +++ b/man2/ioctl_userfaultfd.2
>>> @@ -214,6 +214,10 @@ memory accesses to the regions registered with userfaultfd.
>>>   If this feature bit is set,
>>>   .I uffd_msg.pagefault.feat.ptid
>>>   will be set to the faulted thread ID for each page-fault message.
>>> +.TP
>>> +.BR UFFD_FEATURE_MINOR_HUGETLBFS " (since Linux 5.13)"
>>> +If this feature bit is set, the kernel supports registering userfaultfd ranges
>>> +in minor mode on hugetlbfs-backed memory areas.

See the folowing extract from man-pages(7):

    Use semantic newlines
        In the source of a manual page,  new  sentences  should  be
        started  on  new  lines, and long sentences should be split
        into lines at clause breaks  (commas,  semicolons,  colons,
        and  so on).  This convention, sometimes known as "semantic
        newlines", makes it easier to see the  effect  of  patches,
        which often operate at the level of individual sentences or
        sentence clauses.

A trick to check if some text is correct at first glance, is that the 
following regex should rarely match:
[,;:.] \+\w

Multi-sentence parenthetical expressions should also go on separate 
lines normally.

I'd for example break the above text into:

[
If this feature bit is set,
the kernel supports registering userfaultfd ranges
in minor mode on hugetlbfs-backed memory areas
]

Note the break after the comma, and another break at a sensible point 
(you already did that one correctly in this example, but some below don't).


>>>   .PP
>>>   The returned
>>>   .I ioctls
>>> @@ -240,6 +244,11 @@ operation is supported.
>>>   The
>>>   .B UFFDIO_WRITEPROTECT
>>>   operation is supported.
>>> +.TP
>>> +.B 1 << _UFFDIO_CONTINUE
>>> +The
>>> +.B UFFDIO_CONTINUE
>>> +operation is supported.
>>>   .PP
>>>   This
>>>   .BR ioctl (2)
>>> @@ -278,14 +287,8 @@ by the current kernel version.
>>>   (Since Linux 4.3.)
>>>   Register a memory address range with the userfaultfd object.
>>>   The pages in the range must be "compatible".
>>> -.PP
>>> -Up to Linux kernel 4.11,
>>> -only private anonymous ranges are compatible for registering with
>>> -.BR UFFDIO_REGISTER .
>>> -.PP
>>> -Since Linux 4.11,
>>> -hugetlbfs and shared memory ranges are also compatible with
>>> -.BR UFFDIO_REGISTER .
>>> +Please refer to the list of register modes below for the compatible memory
>>> +backends for each mode.

Regarding semantic newlines mentioned above:

Here for example, a more sensible point to break the line would be just 
after (or maybe before, up to you) the first "for".

>>>   .PP
>>>   The
>>>   .I argp
>>> @@ -324,9 +327,16 @@ the specified range:
>>>   .TP
>>>   .B UFFDIO_REGISTER_MODE_MISSING
>>>   Track page faults on missing pages.
>>> +Since Linux 4.3, only private anonymous ranges are compatible.
>>> +Since Linux 4.11, hugetlbfs and shared memory ranges are also compatible.
>>>   .TP
>>>   .B UFFDIO_REGISTER_MODE_WP
>>>   Track page faults on write-protected pages.
>>> +Since Linux 5.7, only private anonymous ranges are compatible.
>>> +.TP
>>> +.B UFFDIO_REGISTER_MODE_MINOR
>>> +Track minor page faults.
>>> +Since Linux 5.13, only hugetlbfs ranges are compatible.
>>>   .PP
>>>   If the operation is successful, the kernel modifies the
>>>   .I ioctls
>>> @@ -735,6 +745,105 @@ or not registered with userfaultfd write-protect mode.
>>>   .TP
>>>   .B EFAULT
>>>   Encountered a generic fault during processing.
>>> +.\"
>>> +.SS UFFDIO_CONTINUE
>>> +(Since Linux 5.13.)
>>> +Resolve a minor page fault by installing page table entries for existing pages
>>> +in the page cache.
>>> +.PP
>>> +The
>>> +.I argp
>>> +argument is a pointer to a
>>> +.I uffdio_continue
>>> +structure as shown below:
>>> +.PP
>>> +.in +4n
>>> +.EX
>>> +struct uffdio_continue {
>>> +    struct uffdio_range range; /* Range to install PTEs for and continue */
>>> +    __u64 mode;                /* Flags controlling the behavior of continue */
>>> +    __s64 mapped;              /* Number of bytes mapped, or negated error */
>>> +};
>>> +.EE
>>> +.in
>>> +.PP
>>> +The following value may be bitwise ORed in
>>> +.IR mode
>>> +to change the behavior of the
>>> +.B UFFDIO_CONTINUE
>>> +operation:
>>> +.TP
>>> +.B UFFDIO_CONTINUE_MODE_DONTWAKE
>>> +Do not wake up the thread that waits for page-fault resolution.
>>> +.PP
>>> +The
>>> +.I mapped
>>> +field is used by the kernel to return the number of bytes
>>> +that were actually mapped, or an error in the same manner as
>>> +.BR UFFDIO_COPY .
>>> +If the value returned in the
>>> +.I mapped
>>> +field doesn't match the value that was specified in
>>> +.IR range.len ,
>>> +the operation fails with the error
>>> +.BR EAGAIN .
>>> +The
>>> +.I mapped
>>> +field is output-only;
>>> +it is not read by the
>>> +.B UFFDIO_CONTINUE
>>> +operation.
>>> +.PP
>>> +This
>>> +.BR ioctl (2)
>>> +operation returns 0 on success.
>>> +In this case, the entire area was mapped.
>>> +On error, \-1 is returned and
>>> +.I errno
>>> +is set to indicate the error.
>>> +Possible errors include:
>>> +.TP
>>> +.B EAGAIN
>>> +The number of bytes mapped (i.e., the value returned in the
>>> +.I mapped
>>> +field) does not equal the value that was specified in the
>>> +.I range.len
>>> +field.
>>> +.TP
>>> +.B EINVAL
>>> +Either
>>> +.I range.start
>>> +or
>>> +.I range.len
>>> +was not a multiple of the system page size; or
>>> +.I range.len
>>> +was zero; or the range specified was invalid.
>>> +.TP
>>> +.B EINVAL
>>> +An invalid bit was specified in the
>>> +.IR mode
>>> +field.
>>> +.TP
>>> +.B EEXIST
>>> +One or more pages were already mapped in the given range.
>>> +.TP
>>> +.B ENOENT
>>> +The faulting process has changed its virtual memory layout simultaneously with
>>> +an outstanding
>>> +.B UFFDIO_CONTINUE
>>> +operation.
>>> +.TP
>>> +.B ENOMEM
>>> +Allocating memory needed to setup the page table mappings failed.
>>> +.TP
>>> +.B EFAULT
>>> +No existing page could be found in the page cache for the given range.
>>> +.TP
>>> +.BR ESRCH
>>> +The faulting process has exited at the time of a
>>> +.B UFFDIO_CONTINUE
>>> +operation.
>>> +.\"
>>>   .SH RETURN VALUE
>>>   See descriptions of the individual operations, above.
>>>   .SH ERRORS
>>> diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
>>> index 593c189d8..07f53c6ff 100644
>>> --- a/man2/userfaultfd.2
>>> +++ b/man2/userfaultfd.2
>>> @@ -78,7 +78,7 @@ all memory ranges that were registered with the object are unregistered
>>>   and unread events are flushed.
>>>   .\"
>>>   .PP
>>> -Userfaultfd supports two modes of registration:
>>> +Userfaultfd supports three modes of registration:
>>>   .TP
>>>   .BR UFFDIO_REGISTER_MODE_MISSING " (since 4.10)"
>>>   When registered with
>>> @@ -92,6 +92,18 @@ or an
>>>   .B UFFDIO_ZEROPAGE
>>>   ioctl.
>>>   .TP
>>> +.BR UFFDIO_REGISTER_MODE_MINOR " (since 5.13)"
>>> +When registered with
>>> +.B UFFDIO_REGISTER_MODE_MINOR
>>> +mode, user-space will receive a page-fault notification

s/user-space/user space/

See the following extract from man-pages(7):

    Preferred terms
        The  following  table  lists some preferred terms to use in
        man pages, mainly to ensure consistency across pages.

        Term                 Avoid using              Notes
        ─────────────────────────────────────────────────────────────
        [...]
        user space           userspace

However, when user space is used as an adjective, per the usual English 
rules, we write "user-space".  Example: "a user-space program".

>>> +when a minor page fault occurs.
>>> +That is, when a backing page is in the page cache, but
>>> +page table entries don't yet exist.
>>> +The faulted thread will be stopped from execution until the page fault is
>>> +resolved from user-space by an
>>> +.B UFFDIO_CONTINUE
>>> +ioctl.
>>> +.TP
>>>   .BR UFFDIO_REGISTER_MODE_WP " (since 5.7)"
>>>   When registered with
>>>   .B UFFDIO_REGISTER_MODE_WP
>>> @@ -212,9 +224,10 @@ a page fault occurring in the requested memory range, and satisfying
>>>   the mode defined at the registration time, will be forwarded by the kernel to
>>>   the user-space application.
>>>   The application can then use the
>>> -.B UFFDIO_COPY
>>> +.B UFFDIO_COPY ,
>>> +.B UFFDIO_ZEROPAGE ,
>>>   or
>>> -.B UFFDIO_ZEROPAGE
>>> +.B UFFDIO_CONTINUE
>>>   .BR ioctl (2)
>>>   operations to resolve the page fault.
>>>   .PP
>>> @@ -318,6 +331,43 @@ should have the flag
>>>   cleared upon the faulted page or range.
>>>   .PP
>>>   Write-protect mode supports only private anonymous memory.
>>> +.\"
>>> +.SS Userfaultfd minor fault mode (since 5.13)
>>> +Since Linux 5.13, userfaultfd supports minor fault mode.
>>> +In this mode, fault messages are produced not for major faults (where the
>>> +page was missing), but rather for minor faults, where a page exists in the page
>>> +cache, but the page table entries are not yet present.
>>> +The user needs to first check availability of this feature using
>>> +.B UFFDIO_API
>>> +ioctl against the feature bit
>>> +.B UFFD_FEATURE_MINOR_HUGETLBFS
>>> +before using this feature.
>>> +.PP
>>> +To register with userfaultfd minor fault mode, the user needs to initiate the
>>> +.B UFFDIO_REGISTER
>>> +ioctl with mode
>>> +.B UFFD_REGISTER_MODE_MINOR
>>> +set.
>>> +.PP
>>> +When a minor fault occurs, user-space will receive a page-fault notification
>>> +whose
>>> +.I uffd_msg.pagefault.flags
>>> +will have the
>>> +.B UFFD_PAGEFAULT_FLAG_MINOR
>>> +flag set.
>>> +.PP
>>> +To resolve a minor page fault, the handler should decide whether or not the
>>> +existing page contents need to be modified first.
>>> +If so, this should be done in-place via a second, non-userfaultfd-registered
>>> +mapping to the same backing page (e.g., by mapping the hugetlbfs file twice).
>>> +Once the page is considered "up to date", the fault can be resolved by
>>> +initiating an
>>> +.B UFFDIO_CONTINUE
>>> +ioctl, which installs the page table entries and (by default) wakes up the
>>> +faulting thread(s).
>>> +.PP
>>> +Minor fault mode supports only hugetlbfs-backed memory.
>>> +.\"
>>>   .SS Reading from the userfaultfd structure
>>>   Each
>>>   .BR read (2)
>>> @@ -456,19 +506,20 @@ For
>>>   the following flag may appear:
>>>   .RS
>>>   .TP
>>> -.B UFFD_PAGEFAULT_FLAG_WRITE
>>> -If the address is in a range that was registered with the
>>> -.B UFFDIO_REGISTER_MODE_MISSING
>>> -flag (see
>>> -.BR ioctl_userfaultfd (2))
>>> -and this flag is set, this a write fault;
>>> -otherwise it is a read fault.
>>> +.B UFFD_PAGEFAULT_FLAG_WP
>>> +If this flag is set, then the fault was a write-protect fault.
>>>   .TP
>>> +.B UFFD_PAGEFAULT_FLAG_MINOR
>>> +If this flag is set, then the fault was a minor fault.
>>> +.TP
>>> +.B UFFD_PAGEFAULT_FLAG_WRITE
>>> +If this flag is set, then the fault was a write fault.
>>> +.HP

See the following extract from groff_man(7):

    Deprecated features
        Use of the following is discouraged.

        [...]

        .HP [indent]
               Set up a paragraph with a hanging left  indentation.
               The  indent argument, if present, is handled as with
               .TP.

               Use of this presentation‐level macro is  deprecated.
               While it is universally portable to legacy Unix sys‐
               tems, a hanging indentation cannot be expressed nat‐
               urally  under HTML, and many HTML‐based manual view‐
               ers simply interpret it as a starter  for  a  normal
               paragraph.  Thus, any information or distinction you
               tried to express with the indentation may be lost.

I'd just use .PP here, I think.


>>> +If neither
>>>   .B UFFD_PAGEFAULT_FLAG_WP
>>> -If the address is in a range that was registered with the
>>> -.B UFFDIO_REGISTER_MODE_WP
>>> -flag, when this bit is set, it means it is a write-protect fault.
>>> -Otherwise it is a page-missing fault.
>>> +nor
>>> +.B UFFD_PAGEFAULT_FLAG_MINOR
>>> +are set, then the fault was a missing fault.
>>>   .RE
>>>   .TP
>>>   .I pagefault.feat.pid
>>> --
>>> 2.32.0.rc1.229.g3e70b5a671-goog
>>>
>>
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
