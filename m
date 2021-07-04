Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3049E3BACE6
	for <lists+linux-man@lfdr.de>; Sun,  4 Jul 2021 13:27:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229543AbhGDLac (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Jul 2021 07:30:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229529AbhGDLac (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Jul 2021 07:30:32 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2183C061574
        for <linux-man@vger.kernel.org>; Sun,  4 Jul 2021 04:27:55 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id t6so8519616wrm.9
        for <linux-man@vger.kernel.org>; Sun, 04 Jul 2021 04:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=v+pTNjtMfCe1/YpSIecJRCWQZhXgp2tEJ3A348/GgQ8=;
        b=Vya5URSpnFVsj4czndGCRdn5jg3OJDtbQVa/NYWCWiAipA/zYPRQbyS/7zRMjhZslq
         wbDkVRFio7YPgNGK5wRjcoLKjdWrHKcxSTuz//4KXnzvTwNB/oBxzyEFL6iv0cZOl5XM
         OTwSaPVAJNg++kxq/lVSr8wsHH5gsn3pnM6tLfT+GUBXBDoJFb3e2m+vbRBUSg2SAr4Y
         EdZfEkz/Tpt/CrWPTMKhJVU5o+XNhQxEH0AmMUGoNEEHJ/YtyrlDlV8vCQBMviN5IhiY
         9ZG0IHNAU6WQg8opTnGINYtFLwwLJLDiecRwv4t8dyufnoBM4svnN92tiHHGmJm8A6/Q
         13TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=v+pTNjtMfCe1/YpSIecJRCWQZhXgp2tEJ3A348/GgQ8=;
        b=BsGrKf32t3g6ssJCmQ4mzZ4RPNFCEMR6JJ8+ZowtuZ7o79PIC3nBP4AfttWV7MnAt7
         1AlcUWi3dRo4Nmdzy6DNfMEXT0PP96iy1gmUorfd573YmivhocXvZ+rg+8NDl8G4Z1FS
         feZtvv36ZxTwou0c8mv1Xe/XuS2uVEa55FQAv9+iLNrxHqHrWGaKOs+kgAYRFf4JNSgg
         V8CmKQQzbBGZ0mjUjRRVt/TQfNH/Vur5Z4f+zIkpiB5xWTGGq90rpasP/YGkyAvbBVz4
         qBDv9VQAihXcVi7zTcr2vcY5+vIgsW/KyVJ0XssW5Qt0ixrFBhSyV7oHX5bLcxXE5EAg
         e/qQ==
X-Gm-Message-State: AOAM533bB8yfqA93eQcfm+opuOAclYtF9KD18M/wbK8Pjt0og/W8dOhw
        UzG4djDR6C+xKdCzPWCt+3CPE5QVYM4=
X-Google-Smtp-Source: ABdhPJzCht/8BlCqoaDB+1X/xV6nQLlQmAkKk282jQhkbD0NbNysvuDpndsK3jAmGm6MpF776N4Ihg==
X-Received: by 2002:a5d:46cc:: with SMTP id g12mr9543758wrs.136.1625398074352;
        Sun, 04 Jul 2021 04:27:54 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y13sm9561151wrp.80.2021.07.04.04.27.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Jul 2021 04:27:54 -0700 (PDT)
Subject: Re: [PATCH 1/1] man2/fallocate.2: tfix documentation of shared blocks
To:     Dan Robertson <dan@dlrobertson.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com,
        "Darrick J. Wong" <djwong@kernel.org>
References: <20210621004453.7437-1-dan@dlrobertson.com>
 <20210621004453.7437-2-dan@dlrobertson.com> <20210621042550.GG158232@locust>
 <342ad836-cb11-ed19-d867-51d2906b3b27@gmail.com>
 <YODD/v/bn6ILbIUO@dlrobertson.com>
 <91a46f14-2337-e39a-386b-120a7b4ceb99@gmail.com>
 <YODq+ZGxJLDxu5JY@dlrobertson.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <7be3ce11-d562-92bc-87ff-28297e52d5ab@gmail.com>
Date:   Sun, 4 Jul 2021 13:27:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YODq+ZGxJLDxu5JY@dlrobertson.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Dan,

On 7/4/21 12:55 AM, Dan Robertson wrote:
> Alex,
> 
> On Sat, Jul 03, 2021 at 11:31:32PM +0200, Alejandro Colomar (man-pages) wrote:
>>>>> On Sun, Jun 20, 2021 at 08:44:53PM -0400, Dan Robertson wrote:
>>>>>> Fix a typo in the documentation of using fallocate to allocate shared
>>>>>> blocks. The flag FALLOC_FL_UNSHARE should instead be documented as
>>>>>> FALLOC_FL_UNSHARE_RANGE.
>>>>>>
>>>>>> Fixes: 07c7a6a35497 ("man2/fallocate.2: Document behavior with shared blocks")
>>>>
>>>> BTW, I can't find that commit hash in git.  I have that commit as
>>>> 63a599c657d8.
>>>>
>>>> However, git doesn't fail...  It's weird.  Could you confirm that?
>>>
>>> Gah! You are correct. My bad. I used copied the commit hash for the commit in
>>> the kernel that introduced the FALLOC_FL_UNSHARE_RANGE flag. My bad.
>>
>> I thought so, but I couldn't find that commit in Linus' tree either :/
>>
>> [
>> .../linux$ git log -1 07c7a6a35497
>> fatal: ambiguous argument '07c7a6a35497': unknown revision or path not
>> in the working tree.
>> Use '--' to separate paths from revisions, like this:
>> 'git <command> [<revision>...] -- [<file>...]'
>> .../linux$ git log -1 07c7a6a35497 --
>> fatal: bad revision '07c7a6a35497'
>> .../linux$ cd ../man-pages/
>> .../man-pages$ git log -1 07c7a6a35497
>> .../man-pages$ git log -1 07c7a6a35497 --
>> .../man-pages$
>> ]
>>
>> I can't understand that.  It fails in the kernel tree, but not in the
>> man-pages tree.  But it doesn't find it in either.
>>
>> It doesn't matter, but I'm curious...
> 
> Ah! Got it! 07c7a6a35497 is the tree hash for 63a599c657d8 in the man-pages
> repo.
> 
> .../man-pages$ git rev-parse --short=12 63a599c657d8:
> 07c7a6a35497
> 
> I bet I copied the wrong hash from git blame in vim-fugitive when trying to
> find the commit that first contained the typo.

Hmm, interesting.  I didn't knew about tree hashes (well, I guessed
there was something like that, but I had never seen them).  I learnt
something new today :)

Cheers,

Alex

> 
>>
>>> I can
>>> submit a second version of the patch with the correct commit hash if you'd like.
>>
>> No, don't worry; I fixed it.
> 
> Thanks!
> 
>  - Dan
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
