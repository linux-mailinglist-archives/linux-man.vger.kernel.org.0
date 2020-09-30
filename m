Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3BE827F2A9
	for <lists+linux-man@lfdr.de>; Wed, 30 Sep 2020 21:38:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725814AbgI3Ti0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Sep 2020 15:38:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725799AbgI3Ti0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Sep 2020 15:38:26 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4602AC061755
        for <linux-man@vger.kernel.org>; Wed, 30 Sep 2020 12:38:26 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id s13so665865wmh.4
        for <linux-man@vger.kernel.org>; Wed, 30 Sep 2020 12:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Y5nQanRM8zeX4v5O6Q7JE7pfLTKkzK7e67KcBbUt93Y=;
        b=F2YTkLYD6w3S0DBymmdRFWwrCXRjZ5mENk6Upxigd1u358UewtzmG7bQthInOn4ox0
         cxt5CXrIXOoOW0kNr4IZk+VQ+EOzNpDSluevQCp41PTJ+hE/wg56++UbXIYdhLu+UKfq
         E3IG/D8mA0KMoWRsuM6eAMH2s7SD/epVdN7TMM0sLtJN6mLwQ05S2odw4CWnzNo01P72
         aJOA0s9PoflbJjbHUD5yxRhMZD4wCVBddU+0aDp69FfCFBZqD105wttoWR9n53t0v42D
         JV7aHo7DvCl+I0kWvkpTARWuwiA1n+cofF3XBQtaUfzgszxjvDDqjEnVXvZJk8i9HLi0
         /d/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Y5nQanRM8zeX4v5O6Q7JE7pfLTKkzK7e67KcBbUt93Y=;
        b=q3h8qEqhvseYFYj3kd+YGCUpDeyKHBn+xpBALO+QyWKTqiPrZRtOLzs9OjifSl0UeR
         AjtzQcaT21MOhm99lzkSmhXU2EMK6OlyUepdgLDBYJiZW5OaI+HnQUAdRV7yf9Gjx9FC
         LCJoPXfhAimPWyOyC7xKLF4YIGhlXoeJiwm/O/UAv6ssPv6XGqglURsquwOD+CYJvxCY
         kUsbNLWb0aToOjqUJp/lmKKd77G7mqbLqj9pB0ODtkFsLYDNZxS6guJuiIkHKfSiiceS
         ciWqkaMsVXoUw8hsHxSOV31xw0n23qP+vtut7JgvB0aWhT991/8ksJv0kSmyZavo+Pnx
         CP8Q==
X-Gm-Message-State: AOAM530HBOY3gzMn3+stZGIEUMkVPw0dGJLkUYqlGC5qZdUQD2eq/RXU
        KPgJawTDTfWZ8b+ReUfv79MgHSLKmco=
X-Google-Smtp-Source: ABdhPJzr8MaHDo8o8i96E+65s4dZ6ijChzf0NzxeUmruv4IfBWzynAASfco16473XVsnQAwNabmVPg==
X-Received: by 2002:a1c:5458:: with SMTP id p24mr4684067wmi.160.1601494704420;
        Wed, 30 Sep 2020 12:38:24 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id n2sm4770913wma.29.2020.09.30.12.38.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 12:38:23 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Typo in stat(2)
To:     Florian Weimer <fweimer@redhat.com>,
        Christoph Kalchreuter <christoph@kalchreuter.de>
References: <373374d2-851f-67f6-4059-90130aaab344@kalchreuter.de>
 <87pn63tpx4.fsf@oldenburg2.str.redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <060e7ecf-3590-2fcb-9f28-a1534d97ac7b@gmail.com>
Date:   Wed, 30 Sep 2020 21:38:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <87pn63tpx4.fsf@oldenburg2.str.redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/30/20 2:22 PM, Florian Weimer wrote:
> * Christoph Kalchreuter:
> 
>> There are three Letters "e" missing in Section "DESCRIPTION",
>> Subsection "The stat structure":
>>
>> struct timespec st_atim;  /* Time of last access */
>> struct timespec st_mtim;  /* Time of last modification */
>> sruct timespec st_ctim;  /* Time of last status change */
>>
>> should possibly be:
>>
>> struct timespec st_atime;  /* Time of last access */
>> struct timespec st_mtime;  /* Time of last modification */
>> sruct timespec st_ctime;  /* Time of last status change */
> 
> This typo is also present in POSIX, so we cannot change it (like the
> creat function).

Hi Christoph,

Florian was being very deadpan in his humor! The names 
really are correct. In the header files, one can find

[[  # /usr/include/bits/stat.h

    struct timespec st_atim;            /* Time of last access.  */
    struct timespec st_mtim;            /* Time of last modification.  */
    struct timespec st_ctim;            /* Time of last status change.  */
# define st_atime st_atim.tv_sec        /* Backward compatibility.  */
# define st_mtime st_mtim.tv_sec
# define st_ctime st_ctim.tv_sec
]]

And struct timespec is defined as

              struct timespec {
                  time_t  tv_sec;  /* Seconds */
                  long    tv_nsec; /* Nanoseconds */
              };


Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
