Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7AEB2ED53B
	for <lists+linux-man@lfdr.de>; Thu,  7 Jan 2021 18:12:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726165AbhAGRMS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 7 Jan 2021 12:12:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725835AbhAGRMS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 7 Jan 2021 12:12:18 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCB9AC0612F5
        for <linux-man@vger.kernel.org>; Thu,  7 Jan 2021 09:11:37 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id 190so5814342wmz.0
        for <linux-man@vger.kernel.org>; Thu, 07 Jan 2021 09:11:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9kDzP0KZefqGtKoPrn4Kwc+sp9eKZa9au/odtpl9gs4=;
        b=UEyYUnaAe99mHjIpxiC+ACkIyharTtj7m0zXmHeVhyj3Rcztd+1YhsFlD26XvA1sqD
         9ZmCCYHl/LIUys0TyGRxb5KnVArTLgEDgs81KPuAx8CyeVnTpS9V2a+wJEBXBRyzP8fl
         qrJBZrnjNGGJwTUsgqUd8l01ZlnbaCcYJoomr5UAWyWmAPnnWhr5440b3F6tI0ezPYnF
         YgxlpbHO0lWuGsbkI7dWUelbD+pjJjA0QykCANgVhm6LpeOOiSohmsxgxBxOH223Wm75
         LYqw9qC5PsEFH+5p0OQB23VxoT7BUZYS89jY72Inwe/zWH00ya/IA0vznqhk0G+yr1G9
         UtcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9kDzP0KZefqGtKoPrn4Kwc+sp9eKZa9au/odtpl9gs4=;
        b=Oojm0CGR9W99+TQeYGmtDQt6Tkw8T8lP4q7SzbyZOVnh81qhk8mnX8WUfJ0NP8Qn9o
         2myCVTB6EAp983KO0JfTcHrNeBhEyk6K43XzzN8lgXcc4Jd/Qiw53JeViAXB1vDvSvlH
         2Vmihxx6ImceUcTcx73lfqIiXZTZjXTeL7jJMl8MR6fwFNGgP+FZYFuVSwh/Ipy7eV+1
         o0Bw7HdEqeDESoWUWyW9tY2Xp6nGLwzYyW/lEjhPPz8p2S2I9LZENQJ8bR32I+PTGOeC
         k5MvkmC8OQVFxX0MD1t/xdiCytUCMzJamYEw50G++FhsuSK/HCUk+5SV2Lp59+3pHP9k
         OKLA==
X-Gm-Message-State: AOAM531/8dzB/De1J8SCLaOcWkJNF7usE+utMVGWId1Dk+v1XPZVikKD
        7TswSbfBeNJXcF9GV+X185eRlFtwijU=
X-Google-Smtp-Source: ABdhPJwz0iVrAQk1YyWiJ5Cy0/fMtyNdev4Nm5R0Y25tqCFBZvc+eyk6U4Smdgu658B5Gaev18z8bg==
X-Received: by 2002:a1c:2003:: with SMTP id g3mr9003870wmg.136.1610039496652;
        Thu, 07 Jan 2021 09:11:36 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id r7sm8188314wmh.2.2021.01.07.09.11.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 09:11:36 -0800 (PST)
Subject: Re: Escaping whitespace
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <307e6584-f163-4768-ffe9-b6b4f439e4a0@gmail.com>
 <5058547d-c021-0aa9-4698-667c4917a12b@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <d5e5fc9f-d283-1457-167b-d2716648656d@gmail.com>
Date:   Thu, 7 Jan 2021 18:11:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <5058547d-c021-0aa9-4698-667c4917a12b@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 1/6/21 1:51 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 1/5/21 10:56 PM, Alejandro Colomar (man-pages) wrote:
>> Hi Michael,
>>
>> While having a look at your latest commits,
>> I saw that there's a bit of inconsistency in escaping whitespace
>> (existing previous to the commit):
>>
>> Sometimes it's [!\ (], and sometimes it's [! (].
> 
> Thanks for prodding me about this.
> 
> Yes, it's inconsistent. And given the use of .nf/.fi 
> around the text blocks, escaping the spaces serves no
> purpose. So I made a more radical fix; see commit
> 5c10d2c5e299011e34adb568737acfc8920fc27c

Nice!

After your following commit (422d5327a88fa89394100bafad69b21e50b26399),
I found that there are many such cases.  Just [[grep -rnI '\\ ' man?]]
and you'll see.  Some of them are valid, but a lot of them aren't.
What do you want to do about them?

Thanks,

Alex

> 
> Thanks,
> 
> Michael
>>
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
