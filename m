Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A7653BAA0E
	for <lists+linux-man@lfdr.de>; Sat,  3 Jul 2021 20:56:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229473AbhGCS6k (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jul 2021 14:58:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbhGCS6j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Jul 2021 14:58:39 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 577FAC061762
        for <linux-man@vger.kernel.org>; Sat,  3 Jul 2021 11:56:05 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id a5-20020a7bc1c50000b02901e3bbe0939bso8556523wmj.0
        for <linux-man@vger.kernel.org>; Sat, 03 Jul 2021 11:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hKLKe8wmdl0EwpyTduqk70wNbFBVoNszbvJuynC84JI=;
        b=g4kltd5Y+WSPIjqxaKqXp2ItInQQI23jWIYT3ynsY5YQKiIZjWvSKT50zvOU4TJhqm
         4bJiNbmv14gYH9ernaiV5HYMZVLnNCZCNHCww8rhMQ0wpqpFtpwjxvJ8yI6Fsa7/DBmV
         qtvheBwKoguqC/rHxr/SO8hB0P3S/Dojz0HDTnnAS32ViDVT8+Zv9LnArz/IvMYKn/F5
         QLjlHtiioeb3tWABn9yGrclDOtgN6C0vc3Rf4iRQ3jr7b4LIu72vQ1UiU5TgjUeQ3jPg
         7JLB621qKa4PO8A67xIUgXzcrcgjszniz7yeyXdAs9r1/xgPPvHAuA+NGVDBISVmW6eQ
         XMcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hKLKe8wmdl0EwpyTduqk70wNbFBVoNszbvJuynC84JI=;
        b=r4dGaKlB+573oaHpmKb79y8t91yDtklEzAXCnAsuqx/Fro56hR2SnvGy6ChUPFGFty
         Dd/vY5w/xUlT4QvaCxv0xY5x+n09qRUd6xFcY58z22mtYBMfqErh0tYD63afSFXv9CRf
         jY8FE4KpZEJyMJsV2jf1CN00dt3w/ocA8Cu3PkHz9O8RVwWKDD0P2Tm+fdxTy5CnDD49
         GIMEve+CPhpPN4DzTz1nPeamq6cRF/s/Mr6ASyUqmZPeE7QXF/tn7SBN6hsL7DHxT89O
         Wx4VNu1eWfaCJt+BoiyUoL41sWiJDD7mySBs0oXhkl1+X/ZcQXE6oejWPQFbltBNppAe
         9KYA==
X-Gm-Message-State: AOAM531H648YDlS5aJGXwMP9xfqLdt+xpW4vuESBmQ9+qpkEhBUYF9t/
        BDaI+coV+CXp/lkbPAZEAQUyGlaJLQE=
X-Google-Smtp-Source: ABdhPJx7VJK4vysmnRoNnNxTm0i4HvwhhjANbmq5R+vap7HV1dYCPk/cGinSLGor2fzgjsSN5+r52A==
X-Received: by 2002:a1c:f016:: with SMTP id a22mr6122033wmb.65.1625338563717;
        Sat, 03 Jul 2021 11:56:03 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f18sm7570610wru.53.2021.07.03.11.56.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Jul 2021 11:56:03 -0700 (PDT)
Subject: Re: execve(2) man page: "absolute pathname" inconsistency
To:     Nora Platiel <nplatiel@gmx.us>, mtk.manpages@gmail.com,
        Shawn Landden <shawn@git.icu>
Cc:     linux-man@vger.kernel.org
References: <trinity-131cbf9a-6570-4d3c-8b80-a808d1ad445a-1624567328724@3c-app-mailcom-bs07>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <9558b097-7760-beb5-be4d-13e298461e82@gmail.com>
Date:   Sat, 3 Jul 2021 20:56:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <trinity-131cbf9a-6570-4d3c-8b80-a808d1ad445a-1624567328724@3c-app-mailcom-bs07>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Nora,

On 6/24/21 10:42 PM, Nora Platiel wrote:
> Hello,
> I'm reporting a problem with the execve(2) man page (see the "absolute pathname" part):
> 
>> If the pathname argument of execve() specifies an interpreter
>> script, then interpreter will be invoked with the following
>> arguments:
>>
>>     interpreter [optional-arg] pathname arg...
>>
>> where pathname is the absolute pathname of the file specified as
>>                       ^^^^^^^^^^^^^^^^^
>> the first argument of execve(), and arg...  is the series of
>> words pointed to by the argv argument of execve(), starting at
>> argv[1].  Note that there is no way to get the argv[0] that was
>> passed to the execve() call.
> 
> Then in the final example:
> 
>> $ ./execve ./script
>> argv[0]: ./myecho
>> argv[1]: script-arg
>> argv[2]: ./script
>> argv[3]: hello
>> argv[4]: world
> 
> According to the description, argv[2] is supposed to be the *absolute pathname* of "./script" but it is not.
> (In path_resolution(7), an absolute pathname is defined to be a pathname starting with a '/' character.)
> 
> I tested the example with kernel 4.4.246 and the output is the same as the one in the man page (relative paths are preserved).
> I don't know about newer kernels, but if I understand correctly, either the "absolute pathname" wording is incorrect or the example is.
> (In the latter case, perhaps the man page could also mention the change in behavior.)
> 
> The "absolute pathname" wording was introduced here:
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=60f16bf2fe6bd2d2d001d0a41936e778b1e7e3f6
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=63059c4b527d0da73666da5ff29dcc902e219371

Thanks for all of the info and links.

I think you're right.  In fact, POSIX talks about pathname, and not
absolute pathname
(<https://pubs.opengroup.org/onlinepubs/9699919799/functions/exec.html>).

However, the kernel documentation talks about 'full path', so I'm not
sure if maybe some versions of the kernel did not support relative paths
 (<https://www.kernel.org/doc/html/latest/admin-guide/binfmt-misc.html>).

I added Shawn to the thread, so maybe he can shed some light (he added
that text).

Regards,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
