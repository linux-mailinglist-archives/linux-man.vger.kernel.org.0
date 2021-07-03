Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D88D93BAA55
	for <lists+linux-man@lfdr.de>; Sat,  3 Jul 2021 23:31:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229807AbhGCVeJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jul 2021 17:34:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229562AbhGCVeJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Jul 2021 17:34:09 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDE21C061762
        for <linux-man@vger.kernel.org>; Sat,  3 Jul 2021 14:31:34 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id f14so16666384wrs.6
        for <linux-man@vger.kernel.org>; Sat, 03 Jul 2021 14:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZmKKhbUP5cURhitTRJUCoZygfpqub/jLYuxZc2dhjwY=;
        b=MmyfnyOiUWA1s47BT1M64crf9Tqst1nnXTGOOFdJefiqu3JQiaoQwteXhfoAqJTM0z
         Jjf7VqExpdYtAxv2AWsf19MSO5fqyCRsZ/axu0L5blKnezpdIenUljjZtoNb0Co2lBGL
         ARE3Ub8+FSY7xgZCY6+OjyRMWbJvFPNnzyQXTIWRtQv0UY2WY1E/qAMC/zaXFDV+Zhzt
         alkdFyjH9gM9jh3sOVblv/PioE+V5mZKU3TCPbksHbtHMbq+z4VPFQUcQNZ4oaojubzS
         jx3IPnl+AzkxzkXs77zA8FtddmyAcPLCOhW5otzvbEFZ8hgzGpHVrM2eLTpVIktUNbaC
         uHrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZmKKhbUP5cURhitTRJUCoZygfpqub/jLYuxZc2dhjwY=;
        b=Qpy89Px9jI3L9AQStfmViq5ScCwKogEEoKyIC70xz1+FAp86RlHZeLfXSiIl68Udme
         4NxEIHRoUUH8s6sC7L9q+zlQhe2BiScBIhsa81Gx2RSdGVO+ZuJLxI7pi6YYRS8p43ls
         kmj7E8QQILb7GMkcnz+yZtvVfsXDxc71JuGsyDF6ITT0u0/fH9i9DR3JfmSWiPmOuFvc
         ZqbTa9T0OPZShHB6+Ri/onkRiiiomfpM+796R8fGhPVVnqvgC3hjOLg9lOsk+3qk4mNp
         uj5kU57P7yIwDFJELS8dNAyaRanh27CGSY0IGua9QQyl84JL+eLzdxy1w/XWnAWiB4Zy
         NtbA==
X-Gm-Message-State: AOAM532hgzKcUOaFza1h/N8AOzNhKoGZv4d9nmBsYMlLktcquVz3s/x6
        sb8eXWs6W1jC2TECOzxd1CmMrKtM0pE=
X-Google-Smtp-Source: ABdhPJwVH3rUX3IXWEOvj7ux17MPzse6Xjql+xbcDf5kK0wMBMkC0ClAC9oNy89l3UHPkguC1XH9/A==
X-Received: by 2002:a5d:614d:: with SMTP id y13mr6841875wrt.403.1625347893663;
        Sat, 03 Jul 2021 14:31:33 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h9sm7112425wmb.35.2021.07.03.14.31.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Jul 2021 14:31:33 -0700 (PDT)
Subject: Re: [PATCH 1/1] man2/fallocate.2: tfix documentation of shared blocks
To:     Dan Robertson <dan@dlrobertson.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com,
        "Darrick J. Wong" <djwong@kernel.org>
References: <20210621004453.7437-1-dan@dlrobertson.com>
 <20210621004453.7437-2-dan@dlrobertson.com> <20210621042550.GG158232@locust>
 <342ad836-cb11-ed19-d867-51d2906b3b27@gmail.com>
 <YODD/v/bn6ILbIUO@dlrobertson.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <91a46f14-2337-e39a-386b-120a7b4ceb99@gmail.com>
Date:   Sat, 3 Jul 2021 23:31:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YODD/v/bn6ILbIUO@dlrobertson.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Dan,

On 7/3/21 10:09 PM, Dan Robertson wrote:
> On Sat, Jul 03, 2021 at 08:26:26PM +0200, Alejandro Colomar (man-pages) wrote:
>> Hi Dan,
>>
>>> On Sun, Jun 20, 2021 at 08:44:53PM -0400, Dan Robertson wrote:
>>>> Fix a typo in the documentation of using fallocate to allocate shared
>>>> blocks. The flag FALLOC_FL_UNSHARE should instead be documented as
>>>> FALLOC_FL_UNSHARE_RANGE.
>>>>
>>>> Fixes: 07c7a6a35497 ("man2/fallocate.2: Document behavior with shared blocks")
>>
>> BTW, I can't find that commit hash in git.  I have that commit as
>> 63a599c657d8.
>>
>> However, git doesn't fail...  It's weird.  Could you confirm that?
> 
> Gah! You are correct. My bad. I used copied the commit hash for the commit in
> the kernel that introduced the FALLOC_FL_UNSHARE_RANGE flag. My bad.

I thought so, but I couldn't find that commit in Linus' tree either :/

[
.../linux$ git log -1 07c7a6a35497
fatal: ambiguous argument '07c7a6a35497': unknown revision or path not
in the working tree.
Use '--' to separate paths from revisions, like this:
'git <command> [<revision>...] -- [<file>...]'
.../linux$ git log -1 07c7a6a35497 --
fatal: bad revision '07c7a6a35497'
.../linux$ cd ../man-pages/
.../man-pages$ git log -1 07c7a6a35497
.../man-pages$ git log -1 07c7a6a35497 --
.../man-pages$
]

I can't understand that.  It fails in the kernel tree, but not in the
man-pages tree.  But it doesn't find it in either.

It doesn't matter, but I'm curious...

> I can
> submit a second version of the patch with the correct commit hash if you'd like.

No, don't worry; I fixed it.

> 
>>
>> Thanks,
>>
>> Alex
>>
>> -- 
>> Alejandro Colomar
>> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
>> http://www.alejandro-colomar.es/

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
