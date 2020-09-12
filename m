Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 85CBF267902
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 10:59:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725813AbgILI7Q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Sep 2020 04:59:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725805AbgILI7N (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Sep 2020 04:59:13 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36D96C061573
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 01:59:12 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id l9so6807126wme.3
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 01:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UyFSbZp0exl2zLsx0kPlJoF2+vJDvhEyYY849tLRD+Q=;
        b=GyuV90rTYMmFB9lAkYpmxxzw4v1WJllVnghUKnIUAJMMEhfqVH/HKR9D80fnCxG005
         kCo3ehtcKwycI50rTJLmNBkgynYZrqSHTyniGr38xUqS+MH4woRI5Q7OwVYqZIk63JW2
         3oMkZhw5V78GCDV/Cyy+4pB9DWN3vAQstU7JPmQSfk/x0tC8RUqJraC3inl744rFdb5Q
         U2PklxbiZsMWmpFulKhTIHvWH0xjd3Mvb8s6hwWbPN5ZdRDQivZKriWS8HGHDcC19tRq
         ktpgipRXE+KTtfN3zV0xtrofw+AXhJDCwvzYFMP0VWW+VCwq77O01VXYSjM2V83xybDm
         rfWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UyFSbZp0exl2zLsx0kPlJoF2+vJDvhEyYY849tLRD+Q=;
        b=WVyvw9JcIF8xFhBC1dVONfcA/Y3mc10ABHp2Qk1+P3p1JMiCW3+Xr6ho1pCYuoD5HS
         Njn0hjgscZ1MELcEH3f8BFJqjDWyrCDYll5tCXlZmHNM24XLHmXHH5E5eKMYtpZSkHW4
         G5/61KvSdbBfWZqZjNSeiIMPa1SyHp5fsfRmATs2zJ1zmkn5Lz+U02EgDcDGvFfmO4gK
         o2WgL3jXWY7wRSOhtMQ+GhBOvLAaEmUtQvj1WGBOzS9arzjNzioQTqFPJGuFtc83VYeL
         a6TMnFTd5Q4EOgQZ8H5s5GS7uIaxOfTB4Fpjoo2UcWl8Vtdh93i1grhgu1HgaXdbcvHh
         zogw==
X-Gm-Message-State: AOAM530Xw/PicWjPqgZfTxbbiIbZs4sUJQb50xp1UPBWeqa37zeueMgk
        IvrP2v4OrRMb0b2iAjtNjW3haOSuRAqh3g==
X-Google-Smtp-Source: ABdhPJzJx/hqYQBGAH6JLOBYMDc4UqgmoIfFPq2J3p2e9Hu7sH8jZiYPanv8RX0PSlk3LZHEXhLbXA==
X-Received: by 2002:a1c:4c05:: with SMTP id z5mr5722173wmf.47.1599901150698;
        Sat, 12 Sep 2020 01:59:10 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id v204sm9133636wmg.20.2020.09.12.01.59.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 01:59:10 -0700 (PDT)
Subject: Re: [IDEA] New pages for types: structs and typedfefs
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Florian Weimer <fweimer@redhat.com>,
        libbsd@lists.freedesktop.org
References: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
 <6c5b89f8-4281-4434-cbee-28f88d07920c@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <4ea99048-4bfd-9cba-44cd-9c37fdad8fce@gmail.com>
Date:   Sat, 12 Sep 2020 10:59:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <6c5b89f8-4281-4434-cbee-28f88d07920c@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-09-12 08:33, Michael Kerrisk (man-pages) wrote:
 > Your not the first to suggest this. Most recently, if I recall
 > correctly, Florian also suggested it.
 >
 > The idea seems reasonable, but I wonder about the best way of doing it.

libbsd already provides a few pages on types.  Maybe we could have a
look at them.  At least I've seen 'man timespec' (which redirects to
timeval.3bsd):

https://gitlab.freedesktop.org/libbsd/libbsd/-/blob/master/man/timeval.3bsd

 >
 > I propose the desired information for each type would be
 >
 > * Type name
 > * Short explanation of the type (often this mcould be just a
 >    few words, I think)
 > * Whether the type is specified in POSIX; POSIX requirements on
 >    the type.
 > * Header file that defines the type (in some cases, there
 >    may be more than one. This info can be discovered in the
 >    POSIX spec. (Alex, do you have a PDF of the POSIX spec?)
 > * Cross references to manual pages of relevant APIs that use the type.

I think that would be reasonable.

No, I don't have a PDF.  I usually search here:

https://pubs.opengroup.org/onlinepubs/9699919799/

 >
 > There are some weird corner cases. For example, clock_t:
 >
 > * times(2): clock_t == clock ticks (sysconf(_SC_CLK_TCK))
 > * clock(3): clock_t measures in CLOCKS_PER_SEC

That would just be 1 or 2 more lines in the explanation, I guess.

That's also similar to the typical (mis?)use of size_t as a ptrdiff_t.

 >
 > Then, do we do one page per type? At first glance, that seems
 > unwieldy to me. (I could be wrong.) And it seems to me that
 > there might be benefits in having all of the information in
 > one place rather than spread across multiple pages. (For example
 > cantralizing the info would make it easier for the reader to
 > get an overview.)

I agree in that everything should be centralized, at least in the
beginning.  That would make it much easier to maintain and find the
information.  If the future requires the information to be spread
across many pages, let the future solve that problem :)

 >
 > Alternatively, we could have one big page that is a list of the
 > types with the above information. Say "system_data_types(7)".
 > That page might be an alphabetically ordered hanging list of
 > entries that look like this:
 >
 >      timer_t     <time.h> or <sys/types.h>
 >          POSIX timer ID.
 >
 >          Conforming to: POSIX.1-2008.
 >
 >          See: timer_create(2), timer_delete(2), timer_getoverrun(2),
 >          timer_settime(2)

I'd say here is missing the POSIX requirements on the type.

Is it a 32-bit or 64-bit or may vary? Is it signed or unsigned?

 >
 > Then of course, we'd need to have links to that page, so that
 > people could just type 'man timer_t'. What section should the links
 > be in? The reasonable candidates would be section 3 or 7. I'm not
 > yet sure which is better. But the point is that we'd have files
 > such as timer_t.3 (or timer_t.7) that are link pages containing the
 > line:
 >
 >      .so man7/system_data_types.7

Sure.  And for the structs, I'd allow:

'man struct timespec'	(For simplicity)
'man struct-timespec'	(Similar to the git man pages)
'man timespec'		(For compatibility with libbsd)

Your thoughts?

 >
 > For the moment at least, I'd favor the "one big page plus
 > links" approach.

Yes.

Thanks,

Alex
