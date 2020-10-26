Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2278629988B
	for <lists+linux-man@lfdr.de>; Mon, 26 Oct 2020 22:08:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730080AbgJZVIm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Oct 2020 17:08:42 -0400
Received: from mail-wr1-f49.google.com ([209.85.221.49]:38079 "EHLO
        mail-wr1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730063AbgJZVIm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Oct 2020 17:08:42 -0400
Received: by mail-wr1-f49.google.com with SMTP id n18so14430955wrs.5
        for <linux-man@vger.kernel.org>; Mon, 26 Oct 2020 14:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lJk9QfZQZUceMUJaUPcAoWS+qJUfRerAz5JuPySYyeU=;
        b=Hg1EeiAwjCzy0zqL05O2HI2fqN6pItguGArU31KoXPwwZEJ7yqagtAwwDvyzYl0PTO
         8uUSOB423mFybewlRv7VwJjJ9Qf1yJ+Bh3fRO/IiNz/TcXlvPxqVawNsglBAEaHnzts1
         BBl3G0hoDbkJ7MhMjlk5oELYMqMTlDwdyHsCl7TTh6qi57uGUoQXH5wEMy2TYbdd6LD6
         i5D3BqKCTcVw9vOF/Ke46wyEgcY65HTYabuTVKY35S/8TZh298COtRi6kID4BZTA/wWF
         xBoXQ1ywEpPjGjyEhsepZA455rCW7z7QboIfYeAqsxnNG3J9S0tDdUtCKDnLyf/Aab1Y
         AjTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lJk9QfZQZUceMUJaUPcAoWS+qJUfRerAz5JuPySYyeU=;
        b=A/l8ws1EmNpfkKh/B9vjOyOn84BL9kjpQpXiqAuHfOFmQ/ZolHU2Gi01jFJYd3WFQJ
         Eq4J5Ua1ZZ49xQN0obmZkmF1of7LBz1wiTVm0nP/7UIgQE+j5UpfwjM+IQqzUhKlTR4i
         IhD6nMtLWRJpn4THAYNAiQYe+U2K62VcYHlazIyp1QgW85pW36bnct461heADJ3+mlA5
         vlOsFY2SWgQtTZ+q3yfovCkd/3wZKHTtREDvtrSGDB0KDvCFZ+SD1zhEMGmRY5QA38y/
         qd9/xVVIVR/EE7gG9+wgKIJPONaQlz3GeqUWqT2bhbSAtj/+sHjh9upMx3jC7IrMkb4E
         p8CA==
X-Gm-Message-State: AOAM532S1FgjFlix+e8cQzR3kuvC5HWdCYXw3FbTFinEJ61j3P7b58YN
        F2evQbssrk0xLNLAdUI21XHfbigxU5QxBg==
X-Google-Smtp-Source: ABdhPJz82BUg5u2osuEJf2ABp1hMIXwVuzmbA45NFiExjAO6qEN2qVYbPdHu5jCYx68B4E+8oPquTg==
X-Received: by 2002:adf:c592:: with SMTP id m18mr3966716wrg.347.1603746518418;
        Mon, 26 Oct 2020 14:08:38 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id f62sm81738wmf.37.2020.10.26.14.08.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 14:08:37 -0700 (PDT)
Subject: Re: argz_create
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <c1b5cd3d-8be5-3845-1458-10d96ef29e11@jguk.org>
 <e795c4f3-e273-684a-012e-2b03d1f74285@gmail.com>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <02ae6a59-c689-9d4f-36f0-7698cb50a20c@jguk.org>
Date:   Mon, 26 Oct 2020 21:08:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <e795c4f3-e273-684a-012e-2b03d1f74285@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 26/10/2020 16:08, Michael Kerrisk (man-pages) wrote:
> Hello Jonny,
> 
> On 10/26/20 3:18 PM, Jonny Grant wrote:
>> Hello
>>
>> https://man7.org/linux/man-pages/man3/argz_create.3.html
>>
>> BUGS         top
>>        Argz vectors without a terminating null byte may lead to Segmentation
>>        Faults.
>>
>> Doesn't feel like this is a BUG to me. Is there a better section to
>> add this? Almost all string handling functions may cause SEGV if
>> passed a string without a null byte. Or even being passed a NULL ptr
>> like strlen(NULL)..  I expect some of these may crash if passed
>> NULL.
> 
> Take a look at this paragraph:
> 
>        An argz vector is a pointer to a character buffer together with  a
>        length.  The intended interpretation of the character buffer is an
>        array of strings, where the strings are separated  by  null  bytes
>        ('\0').   If  the  length  is nonzero, the last byte of the buffer
>        must be a null byte.
> 
> These functions have a surprising interface. The 'char **argz'
> are pointers to pointers to character buffers that have the form:
> 
>     ...\0....\0...\0
> 
> That is, the buffers are not strings, but a series of strings laid end
> to end. The text you referring to is trying to say that there better
> be a '\0' t the end of the buffer... I'm not sure how necessary the
> sentence is, but this is not like a typical string handling function.
> (Probably 

Yes, it's a kind of serialised buffer right? using the '\0' to denote the end of each.
I'm sure everyone would '\0' terminate the end..

I saw strcpy has a similar warning BUGS, so actually that looks fine.

Jonny
