Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 648A73CC33B
	for <lists+linux-man@lfdr.de>; Sat, 17 Jul 2021 14:29:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233378AbhGQMb5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 17 Jul 2021 08:31:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbhGQMb4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 17 Jul 2021 08:31:56 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8DCDC06175F
        for <linux-man@vger.kernel.org>; Sat, 17 Jul 2021 05:28:59 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id i94so15237306wri.4
        for <linux-man@vger.kernel.org>; Sat, 17 Jul 2021 05:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=iVabmgEVgAXsQ8jNM3nX2G7yzo/prpfiSceDlRY0AWA=;
        b=rfKwqCfb2Fh7UZ+LDN1HlaItEBNr+B64LFVcLxM/s4L3tTr4DxmiwX0FyIYFHcM8vt
         dd+rY7VC9K/G1Yxob7wq3sshg8LWKbGXgv+rqTlAyo5mc7w5Y9uf+sfU2ZBze+HHKGv0
         4SWNKtykcoyPaXnhgp6TRleMZ3KrYh8kmpZhBmwPT9w3J7RIxOfMYDrsRJX7DmbrEKiG
         70wN0G+LMdHa+ZBOLSp3hBzMBsU5VcTk4on2HeyzZjcJpxhPWEgUz4d7sed636RqK8ri
         prcswwdKYEQbHIXL5jJ88xmMYzdFwUGvXNZMVrAc4e1CxtDmo9ke0Jm8C7QNSqjVdVcD
         ojkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=iVabmgEVgAXsQ8jNM3nX2G7yzo/prpfiSceDlRY0AWA=;
        b=df2m89cA/DBfahYSQY+/GXU2EXXwXIz1PSY0QlE23EFj0/6prSBUy3m/WNXmBel9WH
         M8rR9rm9AI3yp3SC5gz0GsQ8zq9Aui+X/WdYp9YfdwxnHIfHJ6lF8fSRg5xX39W+IXrq
         4P53m7T0AFsUvv3ZKTclT44zft+PSiygx6B5/mZBjj3ycKULjYbP96ihQBH7ZOFTj+Pl
         UdFRxXzLwYMMQKmx+S6RUCPla9gp5MbsUwuf45D1WO7Z4GJM+mDo5ZMQMqqD8DP/8oAk
         sEjLWWi04jquGYqaQlnT9nsrlibIW45fOGDThPs0CufPErnhJ+8GY+QNRx5En/auQ6L7
         b96Q==
X-Gm-Message-State: AOAM532xMhLpS5GmrJajG0VjQW9yK4hZmCnF7UJYw/qZhYjIGI9aCs6V
        rEDySRjtTJJFKiTLrgkXh8M=
X-Google-Smtp-Source: ABdhPJwpWfv6RjaYhUx9aTiVxLvAVCetG5bhzr8YMqRYcStiQ3md8GIl5QimdMAGwst1znc6y38UNg==
X-Received: by 2002:adf:df12:: with SMTP id y18mr19031281wrl.189.1626524938005;
        Sat, 17 Jul 2021 05:28:58 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o15sm5763336wmh.40.2021.07.17.05.28.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Jul 2021 05:28:57 -0700 (PDT)
Subject: Re: execve(2) man page: "absolute pathname" inconsistency
To:     Nora Platiel <nplatiel@gmx.us>, Shawn Landden <shawn@git.icu>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <trinity-131cbf9a-6570-4d3c-8b80-a808d1ad445a-1624567328724@3c-app-mailcom-bs07>
 <9558b097-7760-beb5-be4d-13e298461e82@gmail.com>
 <1778431625342219@mail.yandex.com>
 <trinity-545d117b-65f0-4935-91cb-0ea54b07c375-1626365388128@3c-app-mailcom-bs05>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <858e578f-f04c-be47-f306-f177d23f229a@gmail.com>
Date:   Sat, 17 Jul 2021 14:28:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <trinity-545d117b-65f0-4935-91cb-0ea54b07c375-1626365388128@3c-app-mailcom-bs05>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Nora and Shawn,

On 7/15/21 6:09 PM, Nora Platiel wrote:
> On 2021-07-03 21:58, Shawn Landden wrote:
>> The absolute pathname is available in the Linux-specific auxiliary-vector
>> feature. Here is a suggested patch:
> 
> I haven't made sense of the comment on the last added line, but the "visible" part looks good to me.

Thanks for the review!  Mind if I add a Reviewed-by line?

I also couldn't understand the comment so much.  Shawn, would you mind
to explain it (or just remove it)?

Thanks,

Alex
> 
>> diff --git a/man2/execve.2 b/man2/execve.2
>> index c18ca5412..66a18af27 100644
>> --- a/man2/execve.2
>> +++ b/man2/execve.2
>> @@ -344,20 +344,27 @@ will be invoked with the following arguments:
>> .EE
>> .in
>> .PP
>> where
>> .I pathname
>> -is the absolute pathname of the file specified as the first argument of
>> +is the pathname of the file specified (may be relative to
>> +.Br getcwd (3)
>> +of the caller) as the first argument of
>> .BR execve (),
>> and
>> .I arg...
>> is the series of words pointed to by the
>> .I argv
>> argument of
>> .BR execve (),
>> starting at
>> .IR argv[1] .
>> +The absolute pathname of the script is also available in same auxiliary vector the environment and argument variables are in, as
>> +.BR AT_EXECFN .
>> +See
>> +.BR getauxval (3).
>> +,\" I am not sure if this claim is as clear as it can be, but we are already wasting so much memory for these so.....it would be possible to copy what is needed out of the environment, and then move the stack back into the massive environment vector Linux passes (and which has an almost unbounded size).
>> Note that there is no way to get the
>> .IR argv[0]
>> that was passed to the
>> .BR execve ()
>> call.
>> --
>> 2.30.2
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
