Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B4BD447B85
	for <lists+linux-man@lfdr.de>; Mon,  8 Nov 2021 09:05:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230265AbhKHIIR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Nov 2021 03:08:17 -0500
Received: from zimbra.cs.ucla.edu ([131.179.128.68]:59060 "EHLO
        zimbra.cs.ucla.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234057AbhKHIIQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Nov 2021 03:08:16 -0500
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 6EDA71600C4;
        Mon,  8 Nov 2021 00:05:32 -0800 (PST)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id r-NSlqfJD-Hs; Mon,  8 Nov 2021 00:05:31 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id B23B51600FD;
        Mon,  8 Nov 2021 00:05:31 -0800 (PST)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id ePmSA2f5pJ75; Mon,  8 Nov 2021 00:05:31 -0800 (PST)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id 810C61600C4;
        Mon,  8 Nov 2021 00:05:31 -0800 (PST)
Message-ID: <82810efd-eb98-0a1c-d9b7-602b51c1b5e7@cs.ucla.edu>
Date:   Mon, 8 Nov 2021 00:05:31 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH v2 2/2] timegm.3: Remove recommendation against use of
 timegm()
Content-Language: en-US
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     libc-alpha@sourceware.org, linux-man@vger.kernel.org,
        Joseph Myers <joseph@codesourcery.com>
References: <a8e09a03-3eb2-d6c0-c662-e3db800fe2fc@gmail.com>
 <20211011111237.9414-2-alx.manpages@gmail.com>
 <15d7b96d-13d0-86c1-48f3-24a637ab8e30@cs.ucla.edu>
 <e46d9e6b-c2c8-66e3-6b18-f24ef718f59f@gmail.com>
 <38fa4e31-f70d-f3f3-e964-b4831b750271@cs.ucla.edu>
 <532c26f8-25e4-699a-49be-a3368a6ea84d@gmail.com>
 <5cb8ec23-6e71-0619-3df4-b554942e66c6@cs.ucla.edu>
 <73e53c80-6bdf-0d50-f359-f98e1490d79e@gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <73e53c80-6bdf-0d50-f359-f98e1490d79e@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/4/21 17:47, Alejandro Colomar (man-pages) wrote:
> Since C2X will add timegm(3), it's good news.

Yes at that point we can remove or reword the portability warning.


> the following restriction could be added without altering the behavior of any existing program:
> 
> [
> If any of the fields of 'struct tm' would overflow 'int32_t', the behavior of timegm(3) is undefined.
> ]

No, timegm should not be documented to have a 32-bit limit on struct tm 
components. It should be documented only to have an int limit on struct 
tm components. I.e., the same as mktime, localtime, gmtime, etc.


> It would simplify very much glibc code, by imposing small restrictions to the user. 

The general glibc philosophy is to not impose arbitrary limits on the 
user, even if the limits are "small restrictions". Occasionally limits 
need to be imposed anyway for a good reason, but there's no good reason 
here.
