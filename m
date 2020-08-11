Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E623724184D
	for <lists+linux-man@lfdr.de>; Tue, 11 Aug 2020 10:32:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728178AbgHKIc6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Aug 2020 04:32:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728060AbgHKIc6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Aug 2020 04:32:58 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEFE7C06174A
        for <linux-man@vger.kernel.org>; Tue, 11 Aug 2020 01:32:57 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id f1so10652800wro.2
        for <linux-man@vger.kernel.org>; Tue, 11 Aug 2020 01:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=reply-to:cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Jpk5BFbj6UKeVfTjgHgwwhPbBqIHStSXe+uluAFaKAM=;
        b=aEOqTw2AxVy60ckDC5g/uqr/crjk13oGnanGEod4PvAQYXfm2SBOXcB6iXB9SJBzaR
         IILnQD/Zdh89FSk4tZH+wCCodoFWnlZfpXaMSMlOd6NL9P00+pub4tlmn3UX0qq9Sh9j
         uBt9iqlCOGXemc43EQ5ceiR0N9oYVDG71EwxwGv+1BV+wNunkalNjZcRYvb4CqKxf1Ck
         t4cRP/Ny6ycYgshsuzs6H99WQ5A0giyq5Csny+6P32ayl9VLl4Mee2jSEVpYY0/CySgF
         p48xfFCScGQFjfuPad1n+huT8BLaElv3Nl21nF7ONLa/qXbczy/e8rmbW+jBbgg4kZrX
         xXmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:cc:subject:to:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=Jpk5BFbj6UKeVfTjgHgwwhPbBqIHStSXe+uluAFaKAM=;
        b=p7+/FGIaaUDmX0/+t/+beYrN9lBKngRTPpWgU2g72Sr4Y3QaA3LMQA9ss+I5bw+Xqe
         tXnfwUMbLdgwlPwsS9WlK/yBuk4f61CKEN0rcAtP669nDwT0+UdIdhYqQqJofrPaboQH
         T2rM0LbKGdQiIhA5tPzlWO2jaM3ClzCLNKNUffQcV/z1p+/yXHbR8nILQuwcz8eLOG2m
         VhL5qNxTDSZ66GVlft4fpEPgxDe9GP8az1oTff7Zs8xY4zWIxbS4srQ0cYF3UMdsoaac
         epCVJKUNaljZnuBmLOMXCkgOKrHJVtDOtx7+kzXIb1czEnl6iBXjl9t941gIQA2mbSW4
         dewg==
X-Gm-Message-State: AOAM532kbc84qyaYl8+tjK/uhrLwnJ0ZqWQDudP4Yo9wIjRF4oGWyOVk
        ezF7X6GcrGsFU1hO3znrrS8=
X-Google-Smtp-Source: ABdhPJw00T/Rq7qRVU8eG/j3gXNGje1kGuogdXBCNU2hB5a7XgWhM1+467Q9yPwayFSApqSe2vK9cA==
X-Received: by 2002:a5d:5588:: with SMTP id i8mr28429811wrv.177.1597134776559;
        Tue, 11 Aug 2020 01:32:56 -0700 (PDT)
Received: from ?IPv6:2001:a61:241a:1101:8c63:f991:aa91:da82? ([2001:a61:241a:1101:8c63:f991:aa91:da82])
        by smtp.googlemail.com with ESMTPSA id d14sm24963715wre.44.2020.08.11.01.32.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2020 01:32:55 -0700 (PDT)
Reply-To: mtk.manpages@gmail.com
Cc:     mtk.manpages@gmail.com, Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        larryd.kbd@gmail.com, gwc@opengroup.org,
        austin-group-l@opengroup.org, ajosey@opengroup.org, enh@google.com,
        Joseph Myers <joseph@codesourcery.com>
Subject: Re: Pseudoterminal terminology in POSIX
To:     Zack Weinberg <zackw@panix.com>,
        Joerg Schilling <Joerg.Schilling@fokus.fraunhofer.de>
References: <CALxWeYrisuzEPVEHOQSFJ8G_=8-VTAOTNBquyszOZMid7YfT=Q@mail.gmail.com>
 <6425d636-7f48-3a73-ef0e-7bb5b991360c@gmail.com>
 <5f3149ad.G/e/1Ac5SJF38sra%Joerg.Schilling@fokus.fraunhofer.de>
 <CAKCAbMgmuha1qTB_TKNSVxKvoWKVU-eG27+G-S9kP6rR021fGA@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.lists@gmail.com>
Message-ID: <041a0f0f-1b24-69d8-6f05-69d9e92e83d5@gmail.com>
Date:   Tue, 11 Aug 2020 10:32:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAKCAbMgmuha1qTB_TKNSVxKvoWKVU-eG27+G-S9kP6rR021fGA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Zack,

On 8/10/20 8:10 PM, Zack Weinberg wrote:
> On Mon, Aug 10, 2020 at 9:21 AM Joerg Schilling
> <Joerg.Schilling@fokus.fraunhofer.de> wrote:
>> Larry Dwyer via austin-group-l at The Open Group <austin-group-l@opengroup.org> wrote:
>>
>>> How about the "control" side and the "terminal" side (of the paired
>>> device files)?
>>
>> The Solaris man pty page since a really long time has this:
>>
>>     By default, 48 pseudo-terminal pairs are configured as  follows:
>>
>>        /dev/pty[p-r][0-9a-f] controller devices
>>        /dev/tty[p-r][0-9a-f] slave devices
>>
>> so I would be OK with "controller" side and "terminal" side.
> 
> (libc-alpha, Michael - sorry about not responding to any of this
> thread last week, my actual job has had me swamped.  I still mean to
> give a whack at revising the glibc manual with this terminology but I
> won't be able to get to it until *next* week at the earliest.)
> 
> I like "terminal side" for the tty[p-r][0-9a-f] | pts/[0-9]+ devices,
> but "control(ler) side" still gives the wrong impression IMNSHO.  The
> pty[p-r][0-9a-f] | ptmx devices don't exert any actual control over
> anything.  They are just the other side of a bidirectional
> communication channel.  It's not like USB, where the "master" side is
> the only one that can initiate a data transfer.

Yes, but on the other hand, the program on the master side is often
providing a some kind of "driving" functionality to operate the
program on the salve slide. So the term "control" here doesn't seem
completely out of place. And Joerg's observation that "controller"
is existing terminology in at least one implementation is an 
interesting data point.

> The relationship between "real" terminals and "pseudo" terminals is
> very much like the relationship between remote network sockets and
> loopback sockets.

Well, maybe, but...

> Data received from, or written to, a "real"
> terminal is transferred over a hardware communications channel from/to
> an external device, such as an RS232 serial line or a
> directly-attached console.  With a "pseudo" terminal, on the other
> hand, the data is transferred over a software queue from/to another
> program running on the same computer (e.g. sshd, screen, xterm).  

... the analogy is not obvious (it was only clear to me after
you elaborated it).

> So I
> think an inside/outside metaphor is more appropriate: how about
> "outside", "exterior", or "external" device for the pty[p-r][0-9a-f] |
> ptmx devices ?

We can certainly add it to the list of candidates, but there
are others proposals that feel better to me.

I'll let the conversation run a bit longer, and then try to
summarize the list of proposals we have so far.

Thanks,

Michael
