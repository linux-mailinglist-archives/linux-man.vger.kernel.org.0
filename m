Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 309C0435DE0
	for <lists+linux-man@lfdr.de>; Thu, 21 Oct 2021 11:27:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231334AbhJUJ3o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Oct 2021 05:29:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231320AbhJUJ3n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Oct 2021 05:29:43 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 410ACC06161C
        for <linux-man@vger.kernel.org>; Thu, 21 Oct 2021 02:27:28 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id m42so154wms.2
        for <linux-man@vger.kernel.org>; Thu, 21 Oct 2021 02:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=6wR5V8pJh9cSBVQR4mBDspIzXMgPxvbNjBpspLsBP8o=;
        b=YAMpjHfTk2ptoYOsyx13glN3Kt+78I8xbFFdRBIWYP8YagUewJ1Cxln0kZDvBsNzuh
         ELRh98DIREFfEknz/Pak5eaYNMkN86Plin8mbAkzohglhnsCuJqfNCa4DtDlkBFruvCm
         EOwoQsLENvpU78ZgwzNgaalxAPSzt0sfKB1Epv2lCmZSupVOX/T47Scfmfc2dfdndEj9
         018Zn65T0GuuAcoLArPTYQ1uxo4yLzgzwnOsRMFygE0WsyWhjEhZnh3BVCXHmjRwOdcd
         poB4JJSZ5/mThuI3BTZWvU2uUzNjFSsCO5MiNIBB99u2KOPC/gz8Op4p+tXcPMldFowV
         069Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:from:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6wR5V8pJh9cSBVQR4mBDspIzXMgPxvbNjBpspLsBP8o=;
        b=F2KY5ECzkda3phckcdGCBLermvDWPbSaFoamV4qoQp3PACM/kzlK+rbdNeV7ZzDN0P
         2BdWodWossKseyGrKqFsUwRzx7pydnXuki0m9rPhtLLfwTe73r4WPwCxkfB8HvZgshEw
         vkqtSZBrrRYckwwaRtLVNvL/nq1TlvHBwYiGLa1lY4nZlc2DG0xjhIT1uvbdGzw0Lntr
         zc8s5MDzHFZrd0yeZfdOY8h9w7bzRhql+DjvcM/sYvNWskvpZUECqZAJvNlwFAHmj10z
         2cz7zK5kTmd9md/EATz+Ti8ACzPEcZQyG5K8+VbMG8O8gy7PErldHrzzIZKIIn0Egt2Y
         a3Mg==
X-Gm-Message-State: AOAM533/s9hXdEdd6YgLYNsqdHZhvodtr+qAZBS+DL6OekYr9kSUMT9z
        Yy4ZB2dbK0fCcw98V8bjh880vhAEsoo=
X-Google-Smtp-Source: ABdhPJzwIx1m8NnfpJ+iHtRN6xmQ48wEskSEeJxJc7/O0sU89lPUtcUQHSAe3HiOtDrTqOx6oi6k1g==
X-Received: by 2002:a1c:9ad4:: with SMTP id c203mr5346024wme.41.1634808446890;
        Thu, 21 Oct 2021 02:27:26 -0700 (PDT)
Received: from [10.8.0.138] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id k17sm8391700wmj.0.2021.10.21.02.27.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 02:27:26 -0700 (PDT)
Subject: Re: [PATCH 1/2] ctime.3: Use VLA notation for [as]ctime_r() buffer
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     =?UTF-8?B?SuKCkeKCmeKCmyBHdXN0ZWR0?= <jens.gustedt@inria.fr>,
        linux-man <linux-man@vger.kernel.org>
References: <20211020202241.171180-1-alx.manpages@gmail.com>
 <20211021092746.78bc82f8@inria.fr>
 <20c1e58b-ba2b-f9df-ab1f-f80725414cf5@gmail.com>
 <5782a3ea-9774-3acb-e365-1e4d03ed3358@gmail.com>
 <20211021110311.52541d69@inria.fr>
 <ec620c5e-0952-fe16-353c-0210d3bea6e8@gmail.com>
Message-ID: <eebb99c0-dd12-152b-53fc-4ec1326fc29f@gmail.com>
Date:   Thu, 21 Oct 2021 11:27:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <ec620c5e-0952-fe16-353c-0210d3bea6e8@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Just forwarding a conversation to the list

On 10/21/21 11:20 AM, Alejandro Colomar (man-pages) wrote:
> Hello Jens,
> 
> On 10/21/21 11:03 AM, Jₑₙₛ Gustedt wrote:
>> Hello Alejandro,
>>
>> On Thu, 21 Oct 2021 10:27:48 +0200, Alejandro Colomar (man-pages) wrote:
>>
>>> I rethinked it a bit after seeing pipe(2) again.  I never understood
>>> why 'static' should be needed at all in an array parameter.  The
>>> standard could have also accepted [26] as requiring at least 26
>>> elements in the array, without requiring the use of static.
>>
>> That's just speculation. They didn't, so for the compiler the
>> expression can just be ignore.
> 
> Since static is not required to give a diagnostic, I don't see a real 
> difference.  Both can be ignored.  But yes, that's speculating, and 
> maybe I should probably propose to the committee having the same 
> requirements for [26] as for [static 26] for C3X, and see what they come 
> up with.
> 
>> With what we have `static` conveys the
>> intent, and we should stick to that, I think.
> 
> Yes, maybe sticking to the standard will be better.
> 
>>
>>> There
>>> may be reasons for that that I ignore, of course; maybe backwards
>>> compatibility.... But since the man-pages can present the same
>>> information without the static keyword, I'll edit my patches to just
>>> use [restrict 26], instead of [static restrict 26], which is more
>>> compact.
>>
>> For the man pages that may be ok, but I still prefer that the headers
>> in the man page convey exactly the same normative information as the
>> specification of the standard.
> 
> Okay.  That makes sense.
> 
>>
>>> BTW, I just noticed that these emails were offlist.  If you want to
>>> keep them offlist, I'l do so, but we typically CC the list to have
>>> open discussions.  If you give me permission, I'll forward these
>>> emails to the mailing lists.
>>
>> Do as you feel, no problem with me. I just didn't want to "fall in
>> your back" on a public list for which I don't have an idea of their
>> actual dialogue culture.
> 
> Thanks!
> It's a small list with 2 maintainers and just a handful of other typical 
> contributors.  Typically, very nice compared to other lists, IMHO :)
> 
> And BTW, thanks also for your many StackOverflow contributions!  They 
> have been very helpful to me :-)
> 
>>
>> Thanks
>> Jₑₙₛ
>>
>>
> 
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
