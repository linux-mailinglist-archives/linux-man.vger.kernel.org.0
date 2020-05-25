Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB7081E128A
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2020 18:21:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729381AbgEYQVr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 May 2020 12:21:47 -0400
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:21133 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1729338AbgEYQVq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 May 2020 12:21:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1590423704;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=VOm1VqdUMC/hzJRpeh6fhGZuDveUBAESus1pK/Jp8cE=;
        b=c7Z+9ME2dEr/8ET5QfPSU0qBpQMBFQRr4z+3VVUK4laf1PYv+9ptjXHJtrAcw0iW4uOHNt
        9yTFaMPEVVOExSE/Qj6+JqJ0n+SzQM0eN1s0iKyZDcE3Ebw02gSU/3Nu9zep2lb66Wjmzn
        JQtD/F6fw2oj0m9FzFwOg86XtGf6fo0=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-108-wH0EPdyQOsejrj-qU-lamQ-1; Mon, 25 May 2020 12:21:43 -0400
X-MC-Unique: wH0EPdyQOsejrj-qU-lamQ-1
Received: by mail-qt1-f200.google.com with SMTP id e44so19902751qta.9
        for <linux-man@vger.kernel.org>; Mon, 25 May 2020 09:21:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=VOm1VqdUMC/hzJRpeh6fhGZuDveUBAESus1pK/Jp8cE=;
        b=Fm7NJuv46DV1+FejbRnz10dU4Rit7U9FUAte2C5NcMAtuFK6Pv7GhdRGjCrBg0JjeG
         QDEHgyw5CpYGmTWvojepTnNwjOuo9Y8+6onRI8k+novHJPvkLsxG4I72XTfsrfoW0Cm7
         ZMs2OqvFg/XRnxGcaRmjFMlwIFl3+/spwwmK9BSweG8xHIgKamDaTd7nwT21974vOXXg
         +kv7gE/6IkVSajSagz28RSWzpArgFs/l7FZZtsFYTKuatyvuSFqQ5DOKF5nvoRMfAYgH
         wx/eIaw14Zw+KFqH7L2/Qyl3tT6QK/qtyPorF9WCj6AQ4fdkHO730eN7py2qxfZzExc2
         GXCA==
X-Gm-Message-State: AOAM5329Egc2QU95GhozzN0mOp0qp2uPb7CnHbjrbdMOgUSY0wO7cpG2
        uT2yi28JpHt4SG7vj6zBHoqPSqiqKfC2gP/+dpaZxi9A0KHbtss0OJv5mE0w30wA+0TKGVEQGMV
        O1gA6gGzSDRSvbIvfLnVP
X-Received: by 2002:a05:6214:905:: with SMTP id dj5mr16434034qvb.222.1590423702458;
        Mon, 25 May 2020 09:21:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzgOcuN1jXSO5t8fcLVOLib7qy+g2cqgS/DfU75Z0BpeITz1wGTLjLtYDnPLnN7juNsPKYz/A==
X-Received: by 2002:a05:6214:905:: with SMTP id dj5mr16434007qvb.222.1590423702146;
        Mon, 25 May 2020 09:21:42 -0700 (PDT)
Received: from [192.168.1.4] (198-84-170-103.cpe.teksavvy.com. [198.84.170.103])
        by smtp.gmail.com with ESMTPSA id g1sm15498250qkm.123.2020.05.25.09.21.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 May 2020 09:21:41 -0700 (PDT)
Subject: Re: The GNU C Library Manual - Authoritative or not?
To:     J William Piggott <elseifthen@gmx.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
References: <501e5e0c-f293-b838-5106-764c6b18e061@gmail.com>
 <875300cf-92ca-c115-c42d-19dda5de5a4a@redhat.com>
 <b7102d1a-67b9-0f4f-8295-224fd7afba94@gmail.com>
 <6cf523c0-848c-911f-47e5-e663499db744@redhat.com>
 <7cc4b69e-af8a-d5ad-ac39-9b95deb19a71@gmail.com>
 <7d109eae-7993-d08c-0355-a03ebc56eeb2@redhat.com>
 <CALxWeYro-8KASpy--aMAsMzMK_mPN-ZFjdUgftaXXCTfy6rY5A@mail.gmail.com>
 <nycvar.YAK.7.77.849.2005251130450.1230@zhn.tzk.pbz>
From:   Carlos O'Donell <carlos@redhat.com>
Organization: Red Hat
Message-ID: <f8efd06e-31ee-8ee9-0410-1519a6488184@redhat.com>
Date:   Mon, 25 May 2020 12:21:40 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <nycvar.YAK.7.77.849.2005251130450.1230@zhn.tzk.pbz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/25/20 11:51 AM, J William Piggott wrote:
> 
> 
> On Mon, 25 May 2020, Michael Kerrisk via Libc-alpha wrote:
> 
> ... >8
>>
>>> We really need to engage with technical writers
>>> and involve a broader set of industry skills in our projects.
>>
>> I want to add a note of caution here. It's great to have technical
>> writers (and like good developers companies should be paying them),
>> but they can't do the job on their own. A lot of developer input is
>> still required.
> 
> Another caution, many HR departments hire 'technical writers' that in
> reality are copy editors, who's knowledge base is grammar/writing/language.
> In my experience, they tend to make things a lot worse. Wordsmiths like
> to use words, lots of words. They want to create novels. The complete
> opposite of what technical writing should be.

Agreed. We don't need copy editors. We need true technical writers that
understand C and C++. Sadly, I've rarely met such people, and I agree with
Michael, that I also find describing my code to be an illuminating part of
design. Even though others don't share my interests, the linux man pages as
a project shows there are enough of those people that the project can thrive
and keep all the man pages well enough updated that they are more useful for
API reference than the glibc manual.

-- 
Cheers,
Carlos.

