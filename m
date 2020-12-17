Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F33ED2DD889
	for <lists+linux-man@lfdr.de>; Thu, 17 Dec 2020 19:42:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729054AbgLQSkJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Dec 2020 13:40:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727368AbgLQSkI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Dec 2020 13:40:08 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 662A2C0617A7
        for <linux-man@vger.kernel.org>; Thu, 17 Dec 2020 10:39:28 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id v14so6429319wml.1
        for <linux-man@vger.kernel.org>; Thu, 17 Dec 2020 10:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GqTOGErL/tYYQBpy0q2LHd5JipBv+H/8oIOsfTaYHGI=;
        b=kc8zu33e2lPEOYrgR4gOo8DpbI85UO1MVe1F/Mwnc8qsSDUc9MwiCg9+VjMu5/H53e
         bY6eNRhFxwI3UhnCW4fswBWI6fYlzNZ84imTGxXCv6D8eKPCAhsD4PYjmVyYOsuw6PYl
         E+4lmfwxzeHKtCy3sirVRxJBxpxsSF6zU979efIcAi9Fj7ah1mtHlHcejy1IjEybPKbe
         m5ae5wEh/Jdm/5KeRSjTT/hY1cgqYmKbUk3fm5U582ZFK3BoDcZNoA8EE+oNivJ/Wxy5
         h+QEnvtYu7WzXu/wBmhS5p7lNxcyVkJNHeF8RrbigVk7rmyHytX7inAnBv+u73BS1Bhd
         50gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GqTOGErL/tYYQBpy0q2LHd5JipBv+H/8oIOsfTaYHGI=;
        b=Jr8ZB2ma9keLCb4/3NsTEebjbdo0g/8gyuvz3xprfaRoIzh2b2/2QRynq9TeqAUNo9
         9LlbXtO6qu5M6M24fyRZP+uZ5YdKRIRvwSYrYCegmCpBzXtXSt6n6gII5ErSeRgOuMaF
         pUhkm49MyTcNmdt22W5LIEkAg0Vnm7VdU1Bz9gXPjQq2iGT/Gl90qdmBtvfCFQCaPMjb
         jKOpZcX98UX7r44pMcV/hquTTABsvRGfuu9MJJkBSCzSjzrFq9DquQOHCN6wqXQwhzin
         iB7aV7Wug0pNUizX5DdS5yCqe/723OP3P04OOTP0zT0bz93fN/JHTMnJsTfGkHXhzb/5
         iJAw==
X-Gm-Message-State: AOAM533327qWEsV7z9oLGxtTjl7qGwkEx/mKfgvOeru2POgVyTXo0U5Q
        UUMGU5eGgl6M1BUANIH10Uk=
X-Google-Smtp-Source: ABdhPJwknYOWX9XxFpcVF6V8a8tejAJWq+MvZHsIHybmlMIQuXMqNraImnzratI3ogSJo3D/Dcou1A==
X-Received: by 2002:a1c:4156:: with SMTP id o83mr679113wma.178.1608230367221;
        Thu, 17 Dec 2020 10:39:27 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id n14sm9315827wmi.1.2020.12.17.10.39.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Dec 2020 10:39:26 -0800 (PST)
Subject: Re: [PATCH 2/2] filesystems.5: note ncpfs removal from kernel
To:     =?UTF-8?Q?Ahelenia_Ziemia=c5=84ska?= 
        <nabijaczleweli@nabijaczleweli.xyz>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <4443342faae85cfa74bae6efa1a12ff40efe18c0.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
 <365585882722e9c64478aab1b558923e3153b671.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
 <71269cb4-db6e-2908-5c42-2747eb930a53@gmail.com>
 <20201217164028.rphpncqtdavr27uy@tarta.nabijaczleweli.xyz>
 <09db431f-0fac-f1d3-be94-ee2cc3b0921b@gmail.com>
 <20201217175916.vx7fox46aqpzkcde@tarta.nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <d24c6130-38aa-8087-f539-af361ab1d5ff@gmail.com>
Date:   Thu, 17 Dec 2020 19:39:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201217175916.vx7fox46aqpzkcde@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Ahelenia,

On 12/17/20 6:59 PM, Ahelenia Ziemiańska wrote:
> On Thu, Dec 17, 2020 at 05:56:00PM +0100, Alejandro Colomar (man-pages) wrote:
>> Hi Ahelenia,
>>
>> Please, could you append that into the first paragraph?
> Sure, see updated scissor-patch below.
> 
> I also broke the line above on the comma, because the alternative would
> be either

Thanks!

>   is a network filesystem that supports the NCP protocol, used by
>   Novell NetWare. It was removed from the kernel in 4.17.
> which sucks for reasons I assume obvious, or
>   is a network filesystem that supports the NCP protocol, used by
>   Novell NetWare.
>   It was removed from the kernel in 4.17.
> which is three lines anyway.
> 
> -- >8 --
> Subject: [PATCH 2/2] filesystems.5: note ncpfs removal from kernel
> 
> Relevant Linux commits:
>  * moved to staging in 1bb8155080c652c4853e6228f8f0d262b3049699
>    (describe: v4.15-rc1-129-g1bb8155080c6) in Nov 2017,
>    described as "broken" and "obsolete"
>  * purged in bd32895c750bcd2b511bf93917bf7ae723e3d0b6
>    (describe: v4.17-rc3-1010-gbd32895c750b) in Jun 2018,
>    "since no one has complained or even noticed it was gone">
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>

Patch applied.
Thanks for the detailed commit msg!

Cheers,

Alex

> ---
>  man5/filesystems.5 | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/man5/filesystems.5 b/man5/filesystems.5
> index 6ec2de9f0..71be05230 100644
> --- a/man5/filesystems.5
> +++ b/man5/filesystems.5
> @@ -152,8 +152,9 @@ filenames can be no longer than 8 characters, followed by an
>  optional period and 3 character extension.
>  .TP
>  .B ncpfs
> -is a network filesystem that supports the NCP protocol, used by
> -Novell NetWare.
> +is a network filesystem that supports the NCP protocol,
> +used by Novell NetWare.
> +It was was removed from the kernel in 4.17.
>  .IP
>  To use
>  .BR ncpfs ,
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
