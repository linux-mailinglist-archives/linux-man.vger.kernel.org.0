Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29098298378
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 21:18:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1418676AbgJYUSo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 16:18:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1418675AbgJYUSn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 16:18:43 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FC40C061755
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 13:18:42 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id l15so10571347wmi.3
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 13:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=JMuoar5laTe3QmTiG7e6tNeGHdVA3IsynAfX0MpwZCs=;
        b=BCqLqF++OeAaCpYRw38kNVC9LpyzQDmrf3VmkWz537NiT+0VS6NN5HLBuN83v9Si6N
         erWY6Ed01v7Lnz551aG//cbcAGyZQEXYJb3R5bGTyzMNXqUtpN6J3E1zyzc5Q+ieq/5Q
         1plcl65VUb5uhsodTbC3BrY8m4dwD9Q4s1DVBT0U7ZwTBs8gD/vtTWycKhjnhZjNXLmP
         +pyyXE7tKDaJcMv5Vvyd3S91qsGR2DIvLwnwlFjRBFJv3SUN7GukRZ73MklO65tInkjC
         vwlOrFN/hJH/d550DCu4WE6guKYmq5wLOaYKbffWbCE5VXjfiFj/Ibdp+8x5Z6Pyj1G5
         BgRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JMuoar5laTe3QmTiG7e6tNeGHdVA3IsynAfX0MpwZCs=;
        b=hGlvj3Bbt7ERti0z3a6WH0KlPmoNa9cRlpJWfPNOkg2emCdWAMnrOwIDwSp0RaMJc5
         vjRg7kVzkZVfUtyv+LrzOCzctaf/I541rIl8f8nEWz8wTOlCsrLE/vjxLn+3ZwazA02Q
         JlS9DYM++mjunQOaCjmRUZ51+6zqEitaaCFaiRgZTX9Nj3UFU+q5bBA4Q4K7fk0f0PPa
         cCAxiScBg3qGHPFnKps+RSipczuctRQ05HqrTAEFneT5opNZOS1W/tG9eAbGOM3p/l1k
         Ym8OyhewbRpqagzY1eZR+mnybZ8CrDapoQFtUihLlf/SiUfgS6PNdradRlhgbtf9xwRV
         LAFQ==
X-Gm-Message-State: AOAM533SmjPhs+fRb4dD/P6d5kQY1kWnVLlm1cBV4JC9o5ukAwH4YSZO
        85b1338jY6Mq17wIMVxGwjGZO82Vfo0=
X-Google-Smtp-Source: ABdhPJyAT3LC0D5chhGxElhkV953Bh8vp116YpUJwjtjoMjatZKmycd8o/VQ+pA5Chg8IecU+6p8Ww==
X-Received: by 2002:a7b:c305:: with SMTP id k5mr13263794wmj.102.1603657120240;
        Sun, 25 Oct 2020 13:18:40 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id q8sm18795414wro.32.2020.10.25.13.18.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Oct 2020 13:18:39 -0700 (PDT)
Subject: Re: [PATCH 2/2] queue.3: Fix & update after forking circleq.3,
 list.3, slist.3, stailq.3 & tailq.3
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
References: <20201025102132.41223-1-colomar.6.4.3@gmail.com>
 <20201025102132.41223-2-colomar.6.4.3@gmail.com>
 <CAKgNAki2mHGCBky2nkVa2LWTFRNUaL3pKMqTdoVSZUyzt=aYxg@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <9179f888-7c3d-4625-bb9c-5e17f12433ca@gmail.com>
Date:   Sun, 25 Oct 2020 21:18:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAki2mHGCBky2nkVa2LWTFRNUaL3pKMqTdoVSZUyzt=aYxg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-10-25 12:41, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On Sun, 25 Oct 2020 at 11:24, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>>
>> - ffix: Use man markup
>> - Remove specific notes about code size increase
>>    and execution time increase,
>>    as they were (at least) inaccurate.
>>    Instead, a generic note has been added.
>> - Structure the text into subsections.
>> - Remove sections that were empty after the forks.
>> - Clearly relate macro names (SLIST, TAILQ, ...)
>>    to a human readable name of which data structure
>>    they implement.
> 
> Good clean-up! Thanks!


:-)

Thanks,

Alex

> 
> Applied.
> 
> Cheers,
> 
> Michael
> 
>> Reported-by: Michael Kerrisk <mtk.manpages@gmail.com>
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>   man3/queue.3 | 189 ++++++++++++++++++++-------------------------------
>>   1 file changed, 75 insertions(+), 114 deletions(-)
>>
>> diff --git a/man3/queue.3 b/man3/queue.3
>> index 3931f8c96..c1b8a72a8 100644
>> --- a/man3/queue.3
>> +++ b/man3/queue.3
>> @@ -28,160 +28,121 @@
>>   .\" SUCH DAMAGE.
>>   .\" %%%LICENSE_END
>>   .\"
>> -.\"    @(#)queue.3     8.2 (Berkeley) 1/24/94
>> -.\" $FreeBSD$
>>   .\"
>> -.Dd February 7, 2015
>> -.Dt QUEUE 3
>> -.Os
>> -.Sh NAME
>> -.Nd implementations of singly-linked lists, singly-linked tail queues,
>> -lists, tail queues, and circular queues
>> -.Sh SYNOPSIS
>> -.Sh DESCRIPTION
>> -These macros define and operate on five types of data structures:
>> -singly-linked lists, singly-linked tail queues, lists, tail queues, and
>> -circular queues.
>> -All five structures support the following functionality:
>> -.Pp
>> -.Bl -enum -compact -offset indent
>> -.It
>> +.TH QUEUE 3 2015-02-7 "GNU" "Linux Programmer's Manual"
>> +.SH NAME
>> +queue \- implementations of linked lists and queues
>> +.SH DESCRIPTION
>> +The
>> +.I <sys/queue.h>
>> +header file provides a set of macros that
>> +define and operate on the following data structures:
>> +.IP * 3
>> +singly-linked lists (SLIST)
>> +.IP *
>> +doubly-linked lists (LIST)
>> +.IP *
>> +singly-linked tail queues (STAILQ)
>> +.IP *
>> +doubly-linked tail queues (TAILQ)
>> +.IP *
>> +doubly-linked circular queues (CIRCLEQ)
>> +.PP
>> +All structures support the following functionality:
>> +.IP * 3
>>   Insertion of a new entry at the head of the list.
>> -.It
>> +.IP *
>>   Insertion of a new entry after any element in the list.
>> -.It
>> +.IP *
>>   O(1) removal of an entry from the head of the list.
>> -.It
>> +.IP *
>>   Forward traversal through the list.
>> -.\" .It
>> +.\".IP *
>>   .\" Swapping the contents of two lists.
>> -.El
>> -.Pp
>> -Singly-linked lists are the simplest of the four data structures
>> +.PP
>> +Code size and execution time
>> +depend on the complexity of the data structure being used,
>> +so programmers should take care of choosing the appropriate one.
>> +.SS Singly-linked lists (SLIST)
>> +Singly-linked lists are the simplest
>>   and support only the above functionality.
>> -Singly-linked lists are ideal for applications with large datasets
>> -and few or no removals,
>> +Singly-linked lists are ideal for applications with
>> +large datasets and few or no removals,
>>   or for implementing a LIFO queue.
>>   Singly-linked lists add the following functionality:
>> -.Pp
>> -.Bl -enum -compact -offset indent
>> -.It
>> +.IP * 3
>>   O(n) removal of any entry in the list.
>> -.El
>> -.Pp
>> +.SS Singly-linked tail queues (STAILQ)
>>   Singly-linked tail queues add the following functionality:
>> -.Pp
>> -.Bl -enum -compact -offset indent
>> -.It
>> +.IP * 3
>>   Entries can be added at the end of a list.
>> -.It
>> +.IP *
>>   O(n) removal of any entry in the list.
>> -.It
>> +.IP *
>>   They may be concatenated.
>> -.El
>> -.Pp
>> +.PP
>>   However:
>> -.Pp
>> -.Bl -enum -compact -offset indent
>> -.It
>> +.IP * 3
>>   All list insertions must specify the head of the list.
>> -.It
>> +.IP *
>>   Each head entry requires two pointers rather than one.
>> -.It
>> -Code size is about 15% greater and operations run about 20% slower
>> -than singly-linked lists.
>> -.El
>> -.Pp
>> -Singly-linked tail queues are ideal for applications with large datasets and
>> -few or no removals,
>> +.PP
>> +Singly-linked tail queues are ideal for applications with
>> +large datasets and few or no removals,
>>   or for implementing a FIFO queue.
>> -.Pp
>> +.SS Doubly-linked data structures
>>   All doubly linked types of data structures (lists and tail queues)
>>   additionally allow:
>> -.Pp
>> -.Bl -enum -compact -offset indent
>> -.It
>> +.IP * 3
>>   Insertion of a new entry before any element in the list.
>> -.It
>> +.IP *
>>   O(1) removal of any entry in the list.
>> -.El
>> -.Pp
>> +.PP
>>   However:
>> -.Pp
>> -.Bl -enum -compact -offset indent
>> -.It
>> +.IP * 3
>>   Each element requires two pointers rather than one.
>> -.It
>> -Code size and execution time of operations (except for removal) is about
>> -twice that of the singly-linked data-structures.
>> -.El
>> -.Pp
>> +.SS Doubly-linked lists (LIST)
>>   Linked lists are the simplest of the doubly linked data structures.
>>   They add the following functionality over the above:
>> -.Pp
>> -.Bl -enum -compact -offset indent
>> -.It
>> +.IP * 3
>>   They may be traversed backwards.
>> -.El
>> -.Pp
>> +.PP
>>   However:
>> -.Pp
>> -.Bl -enum -compact -offset indent
>> -.It
>> +.IP * 3
>>   To traverse backwards, an entry to begin the traversal and the list in
>>   which it is contained must be specified.
>> -.El
>> -.Pp
>> +.SS Doubly-linked tail queues (TAILQ)
>>   Tail queues add the following functionality:
>> -.Pp
>> -.Bl -enum -compact -offset indent
>> -.It
>> +.IP * 3
>>   Entries can be added at the end of a list.
>> -.It
>> +.IP *
>>   They may be traversed backwards, from tail to head.
>> -.It
>> +.IP *
>>   They may be concatenated.
>> -.El
>> -.Pp
>> +.PP
>>   However:
>> -.Pp
>> -.Bl -enum -compact -offset indent
>> -.It
>> +.IP * 3
>>   All list insertions and removals must specify the head of the list.
>> -.It
>> +.IP *
>>   Each head entry requires two pointers rather than one.
>> -.It
>> -Code size is about 15% greater and operations run about 20% slower
>> -than singly-linked lists.
>> -.El
>> -.Pp
>> +.SS Doubly-linked circular queues (CIRCLEQ)
>>   Circular queues add the following functionality over the above:
>> -.Pp
>> -.Bl -enum -compact -offset indent
>> -.It
>> +.IP * 3
>>   The first and last entries are connected.
>> -.El
>> -.Pp
>> +.PP
>>   However:
>> -.Pp
>> -.Bl -enum -compact -offset indent
>> -.It
>> +.IP * 3
>>   The termination condition for traversal is more complex.
>> -.It
>> -Code size is about 40% greater and operations run about 45% slower than lists.
>> -.El
>> -.Sh EXAMPLES
>> -.Sh CONFORMING TO
>> +.SH CONFORMING TO
>>   Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
>>   Present on the BSDs.
>> -.Nm queue
>> -functions first appeared in
>> -.Bx 4.4 .
>> -.Sh SEE ALSO
>> -.Xr circleq 3
>> -.Xr insque 3
>> -.Xr list 3
>> -.Xr slist 3
>> -.Xr stailq 3
>> -.Xr tailq 3
>> -.\" .Xr tree 3
>> +.I <sys/queue.h>
>> +macros first appeared in 4.4BSD.
>> +.SH SEE ALSO
>> +.BR circleq (3),
>> +.BR insque (3),
>> +.BR list (3),
>> +.BR slist (3),
>> +.BR stailq (3),
>> +.BR tailq (3)
>> +.\" .BR tree (3)
>> --
>> 2.28.0
>>
> 
> 
