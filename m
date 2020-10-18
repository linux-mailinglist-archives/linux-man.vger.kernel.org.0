Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0393F29168C
	for <lists+linux-man@lfdr.de>; Sun, 18 Oct 2020 11:02:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725877AbgJRJCo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Oct 2020 05:02:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725320AbgJRJCn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 18 Oct 2020 05:02:43 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7886CC061755
        for <linux-man@vger.kernel.org>; Sun, 18 Oct 2020 02:02:41 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id s9so8018429wro.8
        for <linux-man@vger.kernel.org>; Sun, 18 Oct 2020 02:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GysqkzBfoD3q0sDk/uCXfgjLTUDlRaWu+bBXnzGCXqQ=;
        b=LL0hcQfZyWpYvy+Io2p0o1oZgPnWAV2xRssOjlpFNKTFXZ/L969fKUah/wrw2Av1qD
         a24uhyQVIJp94WA/80AuBP0tJpCzona7Afz6/IywCPemI9/ldlqQF+9OxYevc8bdn26+
         b5EKFwcIeWizGveuuWTkelJ1Pkue23rKefb8jY9PE0LF3y74P9bz7+5vZO0JXHQvl/Lf
         LafFZw/iV4xJOEHTdzP/MD0fgClmnXKPgAh7kIfsa2pXZgxzpQjU1pcn1ur7wEdQAZ7Z
         k/GLTTmaGCcsbE7JG+QwUurSkN3+JD8RAKOaC8k0CIQuJkr85l+3sUxiaWV5nUs4NSvX
         w60A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GysqkzBfoD3q0sDk/uCXfgjLTUDlRaWu+bBXnzGCXqQ=;
        b=XBwCo5Fkn9yJlsFDShGBweaMfMXwPhIbCmK8xi19Zh6/Z06lONorIN0HN39WIKcelz
         kZFMtvNMRdQHCR0CJLErZwcmiJbPPpOq/ZPonviMHEdWUu5vpsSZYc/GF2qllWb9nrcp
         Aai1iN3ulc7GSLawiel0fGi/MVqh4agNBxh2Pr4hD47u33r8hwOXYxMy9GnY0Za7pPX8
         doYscxFNqoRwL+yenayiHpk5UBNDKM6ZcYT9UAmjd2QQ7eo+BJhPx6+q7RhLgWy7Ke5b
         ejTvSxj446HcDjDS22XQHOZfnQid8DhD78lPy4rOfXAtTKKqaQ2CN7aOYJVGEpRDk0GR
         z0zA==
X-Gm-Message-State: AOAM533rmcQtxbfMyVPvtMjSXHdAvkRpwqP9RDKqAAgQproSG1tDcwyt
        AEeFpJNvn4MpDjP8UqI+c7YatxIiiAk=
X-Google-Smtp-Source: ABdhPJzkqs/FVMtjIU1RxvYmGcJFU6rGZrypbM72xrC1Pbck35kcL+EdK7y/Z0rRF8RtTpI1Vwi0gg==
X-Received: by 2002:a5d:640d:: with SMTP id z13mr13436532wru.28.1603011760087;
        Sun, 18 Oct 2020 02:02:40 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id b15sm12780351wrm.65.2020.10.18.02.02.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 02:02:39 -0700 (PDT)
Subject: Re: [PATCH 1/3] system_data_types.7: time_t: Add Versions note
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Zack Weinberg <zackw@panix.com>
References: <20201017213758.9270-1-colomar.6.4.3@gmail.com>
 <7dc0c08b-ebf8-3d79-75c8-7579f537cd48@cs.ucla.edu>
 <78f7baf9-bd40-39d5-bbca-403381ec369a@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <2b275610-95cb-5d40-158e-3b1d9e7adde0@gmail.com>
Date:   Sun, 18 Oct 2020 11:02:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <78f7baf9-bd40-39d5-bbca-403381ec369a@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-10-18 07:46, Michael Kerrisk (man-pages) wrote:
> On 10/18/20 3:05 AM, Paul Eggert wrote:
>> On 10/17/20 2:37 PM, Alejandro Colomar via Libc-alpha wrote:
>>>    since POSIX.1-2008.
>>> +.PP
>>> +Prior to POSIX.1-2008,
>>> +the type was either an integer type or a real-floating type.
>>
>> No actual POSIXish implementation ever made it a real-floating type, though, and
>> that point should be made lest some conscientious programmer worry about a
>> nonexistent porting issue.
> 
> Thanks for catching this, Paul!
> 
> Alex, I suggest either we drop this patch, or you could reword as
> something like:
> 
> "In POSIX.1-2001, the type was specified as being either an integer
> type or a real-floating type. However, existing implementations
> used an integer type, and POSIX.1-2008 tightened the specification
> to reflect this."
> 
> Thanks,
> 
> Michael
> 

Thanks, Paul!

Michael, I would opt for the simpler: drop the patch.

Thanks,

Alex
