Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F7972DB3D6
	for <lists+linux-man@lfdr.de>; Tue, 15 Dec 2020 19:36:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730597AbgLOSfX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Dec 2020 13:35:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729693AbgLOSfN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Dec 2020 13:35:13 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FAA2C0617A7;
        Tue, 15 Dec 2020 10:34:32 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id a12so20838655wrv.8;
        Tue, 15 Dec 2020 10:34:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gRgfzQaIFy0V5rFcYsUhKIb8omuCxZhK+l0NYjp69+M=;
        b=fxyp/k1ho0TqF4WRRGyid38pP611amsztbmr0xO4uVbWPJhyGRw+SagSATmfEkm7c2
         ap1YqyLob1kvfGDvdseUTZXrqtSmpjPeIvSWXwIO0hJFhPLzn9aRWChb1UdP+fb8AzZf
         MWH6rD6OBw48fbElL53VeQTbO3rQBHxzpDWocOs4LYk/VVbOUSK3UaAQGSHgZ5Oi94AF
         e5VMVv9HKxfmbipuQPm38cbig7iH3UQv5vugxyUPJYdc4/VW5q4zBNU623/ni7dfh39M
         06GVoZjYcBIVLOLfB+g3AdVreMykjjLVE1nJZSrxLsecAahLnXCRX3PHFgDA21+CuNid
         43yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gRgfzQaIFy0V5rFcYsUhKIb8omuCxZhK+l0NYjp69+M=;
        b=UkWYf7/To0HJ88hU6R969oDYkrpgEdYp0qOtSl1/sTW0YSGrvJ7l6Fo9Xn85Z0nx0C
         3tTMUIudl5WpLCNiLz+YcrJj42HcPOtFlOHpUaytrEzRnwMLNsgzkK9xEF9rVErTwru5
         Col/7JP8Hq4SDkxByZdd+bK+DIqe/jlQpF0Rpln9e7pw8oAi3eqYLcdRCHRpUYVIebOR
         4ZLFC4ZltcvTuqTJ3LDDp9G+j6uEgiVIg9LAV2Ev5BCaxSuCFGYnTpX7TZpIbLD3+cTt
         ldsgy+cLRowHlOVLGYB5INKGY/9nghSHW4B+CGClNMf0se5aK324QGV1ideTH+rAdIXa
         QZMA==
X-Gm-Message-State: AOAM530TTtBmOjp4vkU032csuucSYBrJuMQQdl0SszVvMt76giK7WsFF
        IBG9cCjMPCsYaTz6rROHeqvycBWISlw=
X-Google-Smtp-Source: ABdhPJzNDri79Y1YdNn5Zn0O4BXcMkAr6g05b6+csskzHpzDodIJeLQXjdiACTxmF4Awae4u90Lshg==
X-Received: by 2002:a5d:5552:: with SMTP id g18mr36232138wrw.145.1608057271174;
        Tue, 15 Dec 2020 10:34:31 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id z8sm38071888wmg.17.2020.12.15.10.34.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Dec 2020 10:34:30 -0800 (PST)
Subject: Re: [Bug 210655] ptrace.2: documentation is incorrect about access
 checking threads in same thread group
To:     Ted Estes <ted@softwarecrafters.com>,
        Pavel Emelyanov <xemul@openvz.org>,
        Oleg Nesterov <oleg@tv-sign.ru>,
        Andrew Morton <akpm@linux-foundation.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Kees Cook <keescook@chromium.org>, Jann Horn <jann@thejh.net>
Cc:     linux-man <linux-man@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
References: <feef4f9a-4ed8-8a2e-d330-88e7f516faae@gmail.com>
 <b416e106-c11d-1471-de3d-fb9d5b1b6747@softwarecrafters.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <223477a0-0b92-3a01-46bb-c06f7d5d5901@gmail.com>
Date:   Tue, 15 Dec 2020 19:34:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <b416e106-c11d-1471-de3d-fb9d5b1b6747@softwarecrafters.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Ted,

On 12/15/20 7:31 PM, Ted Estes wrote:
> Per my research on the topic, the error is in the manual page.  The
> behavior of ptrace(2) was intentionally changed to prohibit attaching to
> a thread in the same group.  Apparently, there were a number of
> ill-behaved edge cases.
> 
> I found this email thread on the subject:
> https://lkml.org/lkml/2006/8/31/241

Thank you for all the details and links!
I'll fix the page.

Thanks,

Alex

> 
> Thank you.
> --Ted Estes
> 
> On 12/15/2020 11:01 AM, Alejandro Colomar (man-pages) wrote:
>> Hi,
>>
>> There's a bug report: https://bugzilla.kernel.org/show_bug.cgi?id=210655
>>
>> [[
>> Under "Ptrace access mode checking", the documentation states:
>>    "1. If the calling thread and the target thread are in the same thread
>> group, access is always allowed."
>>
>> This is incorrect. A thread may never attach to another in the same
>> group.
>>
>> Reference, ptrace_attach()
>> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/kernel/ptrace.c?h=v5.9.14#n380
>>
>> ]]
>>
>> I just wanted to make sure that it is a bug in the manual page, and not
>> in the implementation.
>>
>>
>> Thanks,
>>
>> Alex
>>
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
