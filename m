Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6414723F97A
	for <lists+linux-man@lfdr.de>; Sun,  9 Aug 2020 01:18:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726009AbgHHXSU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Aug 2020 19:18:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725950AbgHHXSU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Aug 2020 19:18:20 -0400
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com [IPv6:2607:f8b0:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06CF8C061756
        for <linux-man@vger.kernel.org>; Sat,  8 Aug 2020 16:18:19 -0700 (PDT)
Received: by mail-pl1-x643.google.com with SMTP id q17so2916389pls.9
        for <linux-man@vger.kernel.org>; Sat, 08 Aug 2020 16:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=TuZd5rQ0GqJIAdVm4soumHo7Agco5ov5qnu2djGPXGg=;
        b=b99pcrJZUG05cwdbDeO2v2oXunctElMwxvNhU0ewQVo9Bum5WuRj2Taz/htNFUjBAW
         uLmYQouMTPy7Kx1d3iM1/B+lUdj+H7Xo96Gkk8gr5BAlt2kxcrWEu6GkU87OJFYGwR0K
         h8yKs/8cOPWwLZ8X7dBdEn7IJSwP+1pndTIlWO7knjDvOKfEWYxeegmSQDAd5NjCWlH6
         oRKOhtxySobGayr6F/dRXu+Gg+972zJz3d4YK/8LwPQJAdt86mc+Q1yyiADVTKu5/ZJm
         z5QdLD825aix0DrF2pALrZLOs4refo0QIDEwNQUkKtwuzhYR6hkkDIBsp31avdA8lBWw
         uCrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TuZd5rQ0GqJIAdVm4soumHo7Agco5ov5qnu2djGPXGg=;
        b=RJCZfj7k74ggSvOOSKagTE0W2fQM9+Ni3KxIwVBsf5ZqGR1p42PbIHBujmYFuE9Sqt
         hsz7U7Gj0tAKlgQat+A6Ng1h/RLQnO3XtpVbcL7wDu9CPlPYpFMF+aSKPENNhO24z4f6
         OtNVabc/OvyglHWezEJPM7++CkyllCKvagEmeMCKL05zDF1ahjvY2UhyitwwvnDZoR+l
         AwSlYNDqDHb5IdkJpj7RV3r3CqdX4eovOC3OuMuD+Jz9yuynXrnZr6jOzEfQaFxk4ZHg
         5Ibss81pA8uNECObQzaJbxMowDPrWgRfyVRnu0UZUNVSW1oJpE/xU4sBLYAInLvh4ndC
         U6Lw==
X-Gm-Message-State: AOAM531KSmVcBbtd619Qgz/caCbeE+cBtq9FBX0uVi5Eap4u7O1FgGeS
        d66jUcHi/TnPfv6kSz48zbs=
X-Google-Smtp-Source: ABdhPJyJP6GGcnWznHAZM5pvWuBY4KpVlOTyczF5JYt3q54oR9IUQ9ACQjRR3jL9NWHYF7bVEIfHlg==
X-Received: by 2002:a17:90a:19d1:: with SMTP id 17mr10959872pjj.93.1596928696062;
        Sat, 08 Aug 2020 16:18:16 -0700 (PDT)
Received: from [192.168.43.169] ([107.242.120.52])
        by smtp.gmail.com with ESMTPSA id d9sm15867871pgv.45.2020.08.08.16.18.13
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Aug 2020 16:18:15 -0700 (PDT)
Subject: Re: Pseudoterminal terminology in POSIX
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        austin-group-l@opengroup.org
Cc:     Carlos O'Donell <carlos@redhat.com>,
        Zack Weinberg <zackw@panix.com>,
        Florian Weimer <fweimer@redhat.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        Andrew Josey <ajosey@opengroup.org>,
        Joseph Myers <joseph@codesourcery.com>,
        linux-man <linux-man@vger.kernel.org>,
        Geoff Clare <gwc@opengroup.org>,
        Elliot Hughes <enh@google.com>,
        libc-alpha <libc-alpha@sourceware.org>
References: <CALxWeYrisuzEPVEHOQSFJ8G_=8-VTAOTNBquyszOZMid7YfT=Q@mail.gmail.com>
From:   Larry Dwyer <larryd.kbd@gmail.com>
Message-ID: <6425d636-7f48-3a73-ef0e-7bb5b991360c@gmail.com>
Date:   Sat, 8 Aug 2020 16:18:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CALxWeYrisuzEPVEHOQSFJ8G_=8-VTAOTNBquyszOZMid7YfT=Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

How about the "control" side and the "terminal" side (of the paired 
device files)?

Cheers,
Larry

On 8/5/2020 4:21 AM, Michael Kerrisk via austin-group-l at The Open 
Group wrote:
> Elliot Hughes and I both noticed a point from "Minutes of the 3rd August 2020
> Teleconference":
> 
> [[
> On Tue, Aug 4, 2020 at 5:52 PM Andrew Josey <ajosey@opengroup.org> wrote:
>>
>> All
>> Enclosed are the minutes of yesterdays teleconference
>> regards
>> Andrew
> 
> [...]
> 
>> * General news
>>
>> We discussed terminology usage, in particuler terms such as
>> master/slave, blacklist/whitelist.  It was agreed some terminology
>> for pseudo-terminals could be better described using more functionally
>> descriptive terms, but the details of this are left to a future bug
>> report.  Andrew and Geoff took an action to investigate further
>> and come back with an analysis.
> ]]
> 
> I see that Elliot already replied to the Minutes with some thoughts
> about this. I had already been working on thismail on the topic, which
> reiterates some details that Elliot gave, but also adds some
> information, and brings a lot of relevant people into CC. (I've
> already notified those people that only subscribers can post to the
> Austin list, and presumably those not already subscribed will
> subscribe if they want to add to the discussion.)
> 
> The master-slave terminology with respect to pseudoterminals has
> recently been under active discussion in the GNU C library and Linux
> man-pages mailing lists (see [1]). Currently, we are considering at
> least one possible proposal for a language change, but there may yet
> be others. In any case, I and others thought it would be a wise idea
> to involve TOG in this discussion, so that, ideally, we could come up
> with a shared standard for replacement terminology.
> 
> The proposal that has seen some discussion, and met with some positive
> feedback, is [2]. The concept was proposed by Elliot, inspired by a
> similar change that was made in relevant golang libraries; I've
> written an implementation of the idea (i.e., a proposed patch) for the
> Linux manual pages (again, see [2]).
> 
> The essence of the idea is simple. Let's not invent completely new
> terms, but rather rework existing (familiar) terminology a little, as
> follows:
> 
>      pseudoterminal (device) ==> "pseudoterminal device pair"
> 
>     slave ==> "terminal device"
>             (or "terminal end of the pseudoterminal device pair")
> 
>      master ==> "pseudoterminal device"
>             (or "pseudoterminal end of the pseudoterminal device pair")
> 
> The resulting language (as it appears in the proposed changes for the
> Linux manual pages) is reasonably clear, albeit a little clunky in
> places (wordings like "the (pseudo)terminal end of the pseudoterminal
> device pair" are clear, but a little verbose).
> 
> Aside from the obvious points (raising a bug on the Austin bug
> tracker, and proposing line edits to the standard), is there anything
> else that we can do to help along the process of changing the
> terminology in POSIX? Also, any feedback on the proposal in [2] would be
> welcome.
> 
> With best regards,
> 
> Michael Kerrisk
> 
> [1] https://sourceware.org/pipermail/libc-alpha/2020-July/115792.html
> 
> [2] https://lore.kernel.org/linux-man/b3b4cf95-5eaa-0b4e-34cc-1a855e7148b6@gmail.com/
> 
> 
