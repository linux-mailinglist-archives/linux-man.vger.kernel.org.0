Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 241AE281479
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 15:51:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726282AbgJBNvW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 09:51:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726090AbgJBNvV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 09:51:21 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A5E2C0613D0;
        Fri,  2 Oct 2020 06:51:21 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id k15so1914093wrn.10;
        Fri, 02 Oct 2020 06:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Vba10Vt0Q0e+Fcq2NQXhqcLYP73jXyfFw64w/PRkS04=;
        b=BwqH/2EPIN5jzZrYwacWE9UhGxiasUkYq38rUmDfhL+KEHuafXpmjj50GBKGQdtLAB
         e/n3AdA+++1JQ/tiIbUH0Xv9vgNCORvLZkwNv4bJuzmjch0pp33jQReiSdeq/BtiUFat
         gz2iX/VcKZZK72BQUQeklqjzRMe6GjlfzfhFl+eBx/HpWGO7A+H5xDV41y1bT5H3s/jg
         kPFpH63ZtodJY/ArW+tR1smXS9uiyoAFxtPeiXGXOC3pLZ5FuH/2HzCyubezStEuZ4e8
         RY3lSlmTGbA8Zvn1olnzV/MK/TgMDXDIbMeLpGS4ZwDDZ9c/661PCbS031fUBDEBKkAD
         hphg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Vba10Vt0Q0e+Fcq2NQXhqcLYP73jXyfFw64w/PRkS04=;
        b=t0UrOqRVXMMeosPc/y8fhrRerCk3c/Hz8JUdgN7CM8LMhYFG1hNHl/E54vt8cPtbQE
         ZO7HLQI4iQm+K5LfYIj4Re51FSpn4C5NtDNhU9DEMBcfrNWTc2QCK//XbMvnCONeetFM
         aGURjSYXIoLrTRWyI/rHH8FdKF9zZ2YZl3ZKS0RZbz5OzW6Y/kXgusbR4NmVbIsXHWiR
         fD9y+xxz7nOKL/A0t0CEckUz73F9+onO6ICNpb5w5s4ZSIHEA5hTkpl3wy1NgGUo/hgk
         GwpU78z2LwL079NhJX72e5Ye9JYNSAZisH0pMIWRKcYwgPq4IlR+AaHRKFkXzIfeWICZ
         zQog==
X-Gm-Message-State: AOAM532Yvtw3jQ0TZCGRiQm4EiQtBvBLyLJIOoEWoFpgid5bmFFXxPR7
        FX+rcHEB5w3SJB5BBPTPip0=
X-Google-Smtp-Source: ABdhPJwLwY8J/GK5s7NhzaUOdIpBuHRondijHUaTN4Eebis6cTq3wLry2NFuJwwJLQzFvb71tVIgWw==
X-Received: by 2002:adf:a3d4:: with SMTP id m20mr3433422wrb.29.1601646679785;
        Fri, 02 Oct 2020 06:51:19 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id a15sm1966268wrn.3.2020.10.02.06.51.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 06:51:19 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] system_data_types.7: Add 'void *'
To:     Jonathan Wakely <jwakely.gcc@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
 <20201001154946.104626-2-colomar.6.4.3@gmail.com>
 <538b683f-01d2-6148-4f1d-1b293eb5cd6b@cs.ucla.edu>
 <4b86f6e9-0d8a-f14a-73ce-ebbdc9d9edba@gmail.com>
 <CAH6eHdSLbaqTyXaPnBxnR4n+WVHJCBDF=C9RXa6To1rSuv0D4w@mail.gmail.com>
 <CAKgNAkiHbK4RU_a_165yg3O6W0-GZMNLQoBNbut6ME=bW7pvCw@mail.gmail.com>
 <CAH6eHdQrmsHxZbk3+JxRVZ5qH1fhFzLxyigs+DtEzSg2cet+kw@mail.gmail.com>
 <63826e82-7a19-0ecc-f73c-56aa560a842f@gmail.com>
 <CAH6eHdTpzNk4+Rg-+kUCRDZPLHe7MBBf2PK5i1WqD4VeEs60oQ@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <4422e4bc-f54c-02cf-9b47-808d07ce8ba5@gmail.com>
Date:   Fri, 2 Oct 2020 15:51:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAH6eHdTpzNk4+Rg-+kUCRDZPLHe7MBBf2PK5i1WqD4VeEs60oQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Hi Jonathan,

On 2020-10-02 15:27, Jonathan Wakely wrote:
> On Fri, 2 Oct 2020 at 14:20, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>>
>>
>>
>> On 2020-10-02 15:06, Jonathan Wakely wrote:
>>   > On Fri, 2 Oct 2020 at 12:31, Michael Kerrisk (man-pages)
>>   > <mtk.manpages@gmail.com> wrote:
>>   >>
>>   >> On Fri, 2 Oct 2020 at 12:49, Jonathan Wakely <jwakely.gcc@gmail.com>
>> wrote:
>>   >>>
>>   >>> On Fri, 2 Oct 2020 at 09:28, Alejandro Colomar via Gcc
>> <gcc@gcc.gnu.org> wrote:
>>   >>>> However, it might be good that someone starts a page called
>>   >>>> 'type_qualifiers(7)' or something like that.
>>   >>>
>>   >>> Who is this for? Who is trying to learn C from man pages? Should
>>   >>> somebody stop them?
>>   >>
>>   >> Yes, I think so. To add context, Alex has been doing a lot of work to
>>   >> build up the new system_data_types(7) page [1], which I think is
>>   >> especially useful for the POSIX system data types that are used with
>>   >> various APIs.
>>   >
>>   > It's definitely useful for types like struct siginfo_t and struct
>>   > timeval, which aren't in C.
>>
>> Hi Jonathan,
>>
>> But then the line is a bit diffuse.
>> Would you document 'ssize_t' and not 'size_t'?
> 
> Yes. My documentation for ssize_t would mention size_t, refer to the C
> standard, and not define it.
> 
>> Would you not document intN_t types?
>> Would you document stdint types, including 'intptr_t', and not 'void *'?
> 
> I would document neither.
> 
> I can see some small value in documenting size_t and the stdint types,
> as they are technically defined by the libc headers. But documenting
> void* seems very silly. It's one of the most fundamental built-in
> parts of the C language, not an interface provided by the system.
> 
>> I guess the basic types (int, long, ...) can be left out for now,
> 
> I should hope so!
> 
>> and apart from 'int' those rarely are the most appropriate types
>> for most uses.
>> But other than that, I would document all of the types.
>> And even... when all of the other types are documented,
>> it will be only a little extra effort to document those,
>> so in the future I might consider that.
> 
> [insert Jurassic Park meme "Your scientists were so preoccupied with
> whether or not they could, they didn't stop to think if they should."
> ]
> 
> I don't see value in bloating the man-pages with information nobody
> will ever use, and which doesn't (IMHO) belong there anyway. We seem
> to fundamentally disagree about what the man pages are for. I don't
> think they are supposed to teach C programming from scratch.

Agree in part.
I'll try to think about it again.

In the meantime, I trust Michael to tell me when something is way off :)

Thanks, really!

Alex



> 
> 
>> But yes, priority should probably go to Linux/POSIX-only types.


