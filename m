Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CE19281C87
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 22:03:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725781AbgJBUDs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 16:03:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725300AbgJBUDs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 16:03:48 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 191BCC0613D0
        for <linux-man@vger.kernel.org>; Fri,  2 Oct 2020 13:03:48 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id m6so3075449wrn.0
        for <linux-man@vger.kernel.org>; Fri, 02 Oct 2020 13:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=eQjuEz5eAwOwW/nc+HtvbL4AUeoXfg5eRlYjkEYY6/o=;
        b=c5Bo09d84M8BHWgz80SRI19zvyH9cB6jDiy6Z93e7EF0obZNTOg4fvJIFgMX6ZJbwn
         K4M/0VH7gdf3rItfYqScwswbwqxzkxZK6M6gpW3LRymbEeHOwTl2aXf01PNqEbqepQJO
         CvW0zq2qyAWuok5ShbLlOS/yjgsuuH5ivIU12xvWW/gX04nT7B2UVEDYPeOp2BSboqIj
         mTU2JzFp/P2I63+koEKd/oD8WxN6Nhsg668kyqdi4R6N+jhc47Fuf0xF5Q3J2PfHW0M1
         x/FsfI6ukrI7mobxIzKs8ezOjX4zsMUhcbiE+zM/ji8rVenu3r//qYWm8JPuAEzTg8+O
         kAPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eQjuEz5eAwOwW/nc+HtvbL4AUeoXfg5eRlYjkEYY6/o=;
        b=YKV8Hak+YLmkNvDerd4YUxzLn9R1N1H/Lcgp/M0Zn0kkN/c3IPTKT9dUUf+3C00JK7
         33w/SsXSBQnJTGu2mLbvxMZRcgJQKGRnYMhk9ZAFEGgm8lhsx3H5tveg7eGGLiMKwxqH
         xIOQnVyB8NnwZIl9tvk0umrXCbZ/Xrm2iT2iJJJchirwfqmeougO/AAdDAGM8XQiOywq
         xkW8Aa6q6A8qULPGvassp3B1UKuiWZxb7AteygbV3Iwp3ZiZ/7tqjEnOGEQ3+AvOnze1
         F0LZydFSlHhlacoYSBxM4a0Bsh92dWaLjpbsjLrx3RXxc8+pQY6yTHJ8sZGWiME8tNSj
         pZWg==
X-Gm-Message-State: AOAM532mTBvIGcUci+X+RIJjkw7GFsvXlkVSP8X+s9JDxLpXhwwe8jQL
        XRNLnXjCumIxTjsCXvpu8JA=
X-Google-Smtp-Source: ABdhPJyCFgdpBHDeyHD/6Lu/qGNR6Rdegs6C6CVAFqsDIweqJN4NlVuXn/i/NBLma0si8l+xYNQqjw==
X-Received: by 2002:adf:e385:: with SMTP id e5mr4733377wrm.129.1601669026733;
        Fri, 02 Oct 2020 13:03:46 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id g8sm2754819wmd.12.2020.10.02.13.03.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 13:03:46 -0700 (PDT)
Subject: Re: [PATCH 1/4] system_data_types.7: Add '__int128'
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     Florian Weimer <fweimer@redhat.com>,
        Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        mtk.manpages@gmail.com
References: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
 <20201001163443.106933-2-colomar.6.4.3@gmail.com>
 <87eemg97ew.fsf@oldenburg2.str.redhat.com>
 <f08ea5cf-d4ae-54aa-405b-829909156186@cs.ucla.edu>
 <bcce5f89-6682-e089-d129-43c36fe3f392@gmail.com>
 <daa5c152-0462-19d2-d327-0042f405a40c@cs.ucla.edu>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <be53c11a-1729-e895-e5a5-b9b6a42f29de@gmail.com>
Date:   Fri, 2 Oct 2020 22:03:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <daa5c152-0462-19d2-d327-0042f405a40c@cs.ucla.edu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Paul,

On 2020-10-02 21:54, Paul Eggert wrote:
 > On 10/2/20 12:01 PM, Alejandro Colomar wrote:
 >> If you propose not to document the stdint types either,
 >
 > This is not a stdint.h issue. __int128 is not in stdint.h and is not a
 > system data type in any real sense; it's purely a compiler issue.
 > Besides, do we start repeating the GCC manual too, while we're at it? At
 > some point we need to restrain ourselves and stay within the scope of
 > the man pages.

I know it's not in stdint,
but I mean that it behaves as any other stdint type.
So I see value in having them documented together in the same page.
And it's very useful in some (very specific) cases
where portability isn't in mind
(although many compilers are starting to provide this type).

 >
 > PS. Have you ever tried to use __int128 in real code? I have, to my
 > regret. It's a portability and bug minefield and should not be used
 > unless you really know what you're doing, which most people do not.

I have.
I used unsigned __int128, for operating on a big bit matrix.
This type helped me remove a whole abstraction for the columns:

unsigned __int128 mat[128];	// This is a 128x128 bit matrix.

This way I avoided either having to use a shorter type,
which would have been a bit weird:

uint64_t	mat[128][2];	// This is more complicated to see.

Or having to use GMP,
which would have also complicated unnecessarily my code.

And of course, I didn't care about portability,
because I just wanted it to work.

Thanks,

Alex
