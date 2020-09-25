Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA487278FD7
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 19:46:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729110AbgIYRqI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 13:46:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728527AbgIYRqI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 13:46:08 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF355C0613CE;
        Fri, 25 Sep 2020 10:46:07 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id z4so4579726wrr.4;
        Fri, 25 Sep 2020 10:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DasmCBY/wQlr/0J2E3YdX27/0Xwh8coAPdNm+mY0gxo=;
        b=gRjk+y/MXB5zoiWXwk0JODeINZZzLf91SeuV/00YvCR2aPwQBiG2V/iv6aPAFcjSU0
         zlpwzu5+UQwDHe3cT5CZ/cfFGg6w/xYrwHxj+nv6RiVdVpg9FjjR4NmJ9ZbjvkE7wQ6I
         T7W5hcwC8EWNoHGFaI2O7QzhxBu4FXdBrQrtAldpewD2MBQE+4VY9SAcKXQHXmhV1r93
         d+HRYPOUTr7ig84CKLQlcUvuuyRWw14laA/ANyF7g/wWgcV4GbLB6mhNTd4fzxxCf/fX
         7RtRejVafnL1zojD8viZRY4PN6kXfpunXKxbG2kqI+7edOdal8s5LqdIRpbwAwLXzdw0
         1bSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DasmCBY/wQlr/0J2E3YdX27/0Xwh8coAPdNm+mY0gxo=;
        b=H/JJut2hjj8JL3PC74uNWuzm4L6/TPmC6WlrTNA7dCOZolrAzGPWvnz9a2A1ZryxK4
         IOPm6aZYnh9OcdxV31S9tIi9Zk5NFXGptLdbKQyFjYaN1wnwraR1Eru3ha4S/hqfQQdd
         7XAVM0m6aFwvrRD9MQDgGOyS6Owa/PQ39a31nplFQmvQdIOwvEOXKMXmLuynA4NYGfWD
         LvTXdjwJBdut8sXeFwS9Y1XnVC8DWO6VnkoSMYIT3WQ2iVjkB6AbJaiWHTYStscSrW7H
         hkP04xQpO6FUDCyfp0gyOZ7Sw7x00EpxvRQMIQJe39yQo6kHYZzgBxKEb/GMXiHzufvx
         L05w==
X-Gm-Message-State: AOAM532HOBoB2jzc5kJxyPd3EpN7eqCqx2NH8oRU8cUh3rvQiAow7lEo
        y4pUFasCjnVNCdy0PUeGRBQlS0KktYJR5Q==
X-Google-Smtp-Source: ABdhPJyh3QXyThiBe9yeSw9Yh8lRFZO7Hu9wXz+dDehB5AoOPFjOAG3ht3gxa02t+7zFBo6lMXuHkw==
X-Received: by 2002:a5d:4486:: with SMTP id j6mr5520651wrq.278.1601055966425;
        Fri, 25 Sep 2020 10:46:06 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id w21sm3880599wmk.34.2020.09.25.10.46.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 10:46:05 -0700 (PDT)
Subject: Re: [PATCH v2] <sys/param.h>: Add nitems() and snitems() macros
To:     Jonathan Wakely <jwakely@redhat.com>
Cc:     fweimer@redhat.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org, rusty@rustcorp.com.au,
        linux-kernel@vger.kernel.org, libstdc++@gcc.gnu.org,
        libc-coord@lists.openwall.com, enh@google.com
References: <20200922145844.31867-1-colomar.6.4.3@gmail.com>
 <20200925132000.235033-1-colomar.6.4.3@gmail.com>
 <f6257d7d-1cea-b45c-a858-b80bbc1f18b1@gmail.com>
 <20200925144822.GM6061@redhat.com>
 <22c110fe-4c92-e5e6-dc35-dbf00a97cfa2@gmail.com>
 <20200925174252.GO6061@redhat.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <a7f33e89-4815-2210-7627-14757198a666@gmail.com>
Date:   Fri, 25 Sep 2020 19:46:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200925174252.GO6061@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-09-25 19:39, Jonathan Wakely wrote:
 > Yes, I'm aware of all the rationale. I already said that it makes
 > sense in C++ where you have generic code. I am not convinced that it's
 > necessary to add to <sys/param.h> when all it does is a cast from
 > size_t to ptrdiff_t.
 >

While I would prefer a signed version, I could live with only 
'nitems()'.  Having all the __must_be_array thing is the most important 
part.

On 2020-09-25 19:42, Jonathan Wakely wrote:
> On 25/09/20 18:30 +0200, Alejandro Colomar via Libstdc++ wrote:
>> I have a similar number of ARRAY_SIZE() and ARRAY_SSIZE().
>> I could have '#define snitems(arr) ((ptrdiff_t)nitems(arr))' in my 
>> projects,
>> but is it really necessary?
> 
> The barrier for adding something to glibc headers should be a LOT
> higher than "I could [do it in my own code], but is it really
> necessary?"
> 
>> Did I convince you? :-)
> 
> No.
> 
> 

Well, you convinced me :)

I'll rewrite the patch, and the problem about <stddef.h> will vanish.

Cheers,

Alex
