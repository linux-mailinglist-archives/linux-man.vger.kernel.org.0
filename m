Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 696D8293942
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 12:36:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2393250AbgJTKg1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 06:36:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392130AbgJTKgY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 06:36:24 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34D34C061755
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 03:36:23 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id d81so1250842wmc.1
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 03:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zmz7ARG9qYk0/1wLXXWsO6q4BiLlUIegJmGZ4fU3k/U=;
        b=QJVrYkN9qpgJsI494ZPV7LPdlkNT7cHVPbF1Btx+PNuTypijygqo3PRqAooRYFjkq2
         J1NOqFc61+Xau/ZpPFEAfvDCS1A73dCrf+fyLi4Kp/CbTMkrctfzZaxbP6esH31XxLYm
         0J9ABAi7fkgZ+MDB6Ck3+fWUbxsOhfT2DaMF4ctK1zFbvz0yCxLcTwGRI3c3vzrotL1z
         WmhYg39lQZ+19mXJp+181ho/SH3ATd1nbUffcbcMW2Dax7VGq1MjSNTPpMz4ExVhHhD5
         5bqdzpx2Mh1sicyXfXQ3pHCHX5iXgVdfcj4UKzlPm901MUQgD1t4gfBvxlB4x+xWsI8G
         VpNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zmz7ARG9qYk0/1wLXXWsO6q4BiLlUIegJmGZ4fU3k/U=;
        b=lLb9HtKmQ+qoEqgWXxyDIoLA/32NwZMzuAj7ve7XE348q+V8gYA/PwBWBIDrMjAoyv
         pemvkqJ1vtT/FrTf5/sb+n4qdCIgoRG0GimYOaAn2k7/vP/r5eIJJW8S/uMhfabVfo7B
         WUvv8cufStBbdUs3gSw7/17kH3hriB0tfTFgF9RcQ7GFL4Vq1neP27YZr9JEbNDkVkGd
         nTuEKOR+rueD/kFaMrcuguwqYH/GaCJuTQP4IWtSoUUaUCRk1YqjjeNF9PfvuczzJcgV
         9CsWRA4hWszvF6yrJ63iVWXW/MWknd6rscgx8b0UBe8kZzi/bIt0I4l0Ip2zVZIktcU8
         AlHg==
X-Gm-Message-State: AOAM533EYuibCpsYuNq9Uja0cZWIdRXlXzXbNF8FnlBczNnINozCiAKq
        Z71/FNE18z0oRKfZYLvKBjbCz642z1w=
X-Google-Smtp-Source: ABdhPJzwvSQKmrDun1lXdFs5tyhqc6n+bB54tQc00XCXHsKFb42NVXVASstTQCM2bC+8rBg1ICI0xw==
X-Received: by 2002:a1c:e309:: with SMTP id a9mr2340869wmh.90.1603190181806;
        Tue, 20 Oct 2020 03:36:21 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id l3sm2494933wmg.32.2020.10.20.03.36.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 03:36:21 -0700 (PDT)
Subject: Re: queue.3 overhaul
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
References: <33af3ca2-d6ea-5f75-6ad2-e2f43eefe4fa@gmail.com>
 <CAKgNAkhDZK9YyvDNr+s=bT9Y6BGCtC7mrGuYa+bdrzQnhGSjhw@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <907cf2f7-70de-42c3-a738-d7e6a14327de@gmail.com>
Date:   Tue, 20 Oct 2020 12:36:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkhDZK9YyvDNr+s=bT9Y6BGCtC7mrGuYa+bdrzQnhGSjhw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-10-20 06:08, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On Mon, 19 Oct 2020 at 17:29, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>>
>> Hi Michael,
>>
>>
>> I'm working on moving and fixing code from queue.3 to different pages.
>>
>> I'd like to send you patches against a separate branch,
>> if you would create one, to ask you some questions from time to time,
>> and maybe get suggestions.
>>
>> Or maybe you could look at my branch on github
>> (https://github.com/alejandro-colomar/man-pages/commits/queue
>> (I may force push changes there sometimes))
> 
> I created a remote to remote to track your work. But you'll need to
> ping me from time to tell me to take a look. Also, I think mail to
> this list to discuss directions (as you are now doing) is great.
> 
>> (BTW, if you have a look there,
>> you can see how I'm moving&fixing the code from queue.3
>> to the other pages and maybe suggest a different way).
> 
> This looks okay in principle.
> 
>> Or maybe I can just show you small pieces of code (no patches),
>> like in this email.
>>
>> Whatever works best for you.
> 
> Both ;-)


Fine :-)

> 
> But, I find the indentation confusing actually. When I see pieces such as
> 
>         int        LIST_EMPTY(LIST_HEAD *head);
>                    LIST_ENTRY(TYPE);
> 
> It visually looks to me as though the LIST_ENTRY piece is some
> extension of the LIST_EMPTY pest.


Agreed.

> 
> I think it's best not to do horizontal indentation, but instead just
> use of vertical separation (.PP). We can perhaps revisit this later,
> to see if we can come up with something better.

Okay, I changed it to use vertical separation (as the original one did).
Now the output is the following (I think the SYNOPSIS already looks 
good, and I'll move to the DESCRIPTION):

[[
LIST(3)                    Linux Programmer's Manual 
LIST(3)

NAME
        LIST_EMPTY,    LIST_ENTRY,    LIST_FIRST,    LIST_FOREACH, 
LIST_HEAD,
        LIST_HEAD_INITIALIZER,  LIST_INIT,  LIST_INSERT_AFTER, 
LIST_INSERT_BE-
        FORE, LIST_INSERT_HEAD, LIST_NEXT, LIST_PREV, LIST_REMOVE - 
implementa-
        tion of a doubly-linked list


SYNOPSIS
        #include <sys/queue.h>

        int LIST_EMPTY(LIST_HEAD *head);

        LIST_ENTRY(TYPE);

        LIST_ENTRY *LIST_FIRST(LIST_HEAD *head);

        LIST_FOREACH(TYPE *var, LIST_HEAD *head, LIST_ENTRY NAME);

        LIST_HEAD(HEADNAME, TYPE);

        LIST_HEAD LIST_HEAD_INITIALIZER(LIST_HEAD head);

        void LIST_INIT(LIST_HEAD *head);

        void LIST_INSERT_AFTER(TYPE *listelm, TYPE *elm, LIST_ENTRY NAME);

        void LIST_INSERT_BEFORE(TYPE *listelm, TYPE *elm, LIST_ENTRY NAME);

        void LIST_INSERT_HEAD(LIST_HEAD *head, TYPE *elm, LIST_ENTRY NAME);

        LIST_ENTRY *LIST_NEXT(TYPE *elm, LIST_ENTRY NAME);

        void LIST_REMOVE(TYPE *elm, LIST_ENTRY NAME);

]]

The code for NAME and SYNOPSIS,
which are the sections that are ready in list.3,
is the following:

[[
.TH LIST 3 2020-10-19 "GNU" "Linux Programmer's Manual"
.SH NAME
LIST_EMPTY,
LIST_ENTRY,
LIST_FIRST,
LIST_FOREACH,
.\"LIST_FOREACH_FROM,
.\"LIST_FOREACH_SAFE,
.\"LIST_FOREACH_FROM_SAFE,
LIST_HEAD,
LIST_HEAD_INITIALIZER,
LIST_INIT,
LIST_INSERT_AFTER,
LIST_INSERT_BEFORE,
LIST_INSERT_HEAD,
LIST_NEXT,
LIST_PREV,
LIST_REMOVE
.\"LIST_SWAP
\- implementation of a doubly-linked list
.SH SYNOPSIS
.nf
.B #include <sys/queue.h>
.PP
.BI "int LIST_EMPTY(LIST_HEAD *" head ");"
.PP
.B  "LIST_ENTRY(TYPE);"
.PP
.BI "LIST_ENTRY *LIST_FIRST(LIST_HEAD *" head ");"
.PP
.BI "LIST_FOREACH(TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ");"
.\".PP
.\".BI "LIST_FOREACH_FROM(TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY 
" NAME ");"
.\".PP
.\".BI "LIST_FOREACH_SAFE(TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY 
" NAME ", TYPE *" temp_var ");"
.\".PP
.\".BI "LIST_FOREACH_FROM_SAFE(TYPE *" var ", LIST_HEAD *" head ", 
LIST_ENTRY " NAME ", TYPE *" temp_var ");"
.PP
.B  "LIST_HEAD(HEADNAME, TYPE);"
.PP
.BI "LIST_HEAD LIST_HEAD_INITIALIZER(LIST_HEAD " head ");"
.PP
.BI "void LIST_INIT(LIST_HEAD *" head ");"
.PP
.BI "void LIST_INSERT_AFTER(TYPE *" listelm ", TYPE *" elm ", LIST_ENTRY 
" NAME ");"
.PP
.BI "void LIST_INSERT_BEFORE(TYPE *" listelm ", TYPE *" elm ", 
LIST_ENTRY " NAME ");"
.PP
.BI "void LIST_INSERT_HEAD(LIST_HEAD *" head ", TYPE *" elm ", 
LIST_ENTRY " NAME ");"
.PP
.BI "LIST_ENTRY *LIST_NEXT(TYPE *" elm ", LIST_ENTRY " NAME ");"
.\".PP
.\".BI "LIST_ENTRY LIST_PREV(TYPE *" elm ", LIST_HEAD *" head ", TYPE, 
LIST_ENTRY " NAME ");"
.PP
.BI "void LIST_REMOVE(TYPE *" elm ", LIST_ENTRY " NAME ");"
.\".PP
.\".BI "void LIST_SWAP(LIST_HEAD *" head1 ", LIST_HEAD *" head2 ", TYPE, 
LIST_ENTRY " NAME ");"
.fi
]]

I'll continue working on other sections;
please tell me if you find anything that could be improved.

I'll work on list.3 only, so that we then have a pattern for the rest.
Also, this way they can be merged to master separately,
resulting in shorter patchsets and times.


Cheers,

Alex
