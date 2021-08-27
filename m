Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0EE513FA1D6
	for <lists+linux-man@lfdr.de>; Sat, 28 Aug 2021 01:34:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232405AbhH0Xfa convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Fri, 27 Aug 2021 19:35:30 -0400
Received: from zimbra.cs.ucla.edu ([131.179.128.68]:38676 "EHLO
        zimbra.cs.ucla.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232501AbhH0Xf3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Aug 2021 19:35:29 -0400
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id A853A160084;
        Fri, 27 Aug 2021 16:34:39 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id o4AGZVDeb7dG; Fri, 27 Aug 2021 16:34:39 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 067A21600CC;
        Fri, 27 Aug 2021 16:34:39 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id Ty7gBUn6DmtH; Fri, 27 Aug 2021 16:34:38 -0700 (PDT)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id D6872160084;
        Fri, 27 Aug 2021 16:34:38 -0700 (PDT)
Subject: Re: [PATCH] malloc_hook.3: modernize for glibc 2.34
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
References: <20210810193708.10277-1-eggert@cs.ucla.edu>
 <20210810193708.10277-2-eggert@cs.ucla.edu>
 <6bb93825-0a24-75ad-9c56-9913f6e2978e@cs.ucla.edu>
 <87b23795-ac94-9ba4-087a-8c75e3d30764@gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Message-ID: <56b090e7-3b39-7a1d-5e59-1e836eb0cca4@cs.ucla.edu>
Date:   Fri, 27 Aug 2021 16:34:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <87b23795-ac94-9ba4-087a-8c75e3d30764@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 8/27/21 4:11 PM, Alejandro Colomar (man-pages) wrote:

> All good until here.  (Maybe the glibc commit that removed this could go 
> in the commit message, if you know it.)

I don't know it, unfortunately.

>>>   Programmers should instead preempt calls to the relevant functions
>>> -by defining and exporting functions such as "malloc" and "free".
>>> +by defining and exporting
>>> +.BR malloc (),
>>> +.BR free (),
>>> +.BR realloc (),
>>> +and
>>> +.BR calloc ().
> 
> Did this change with glibc 2.34?

The glibc manual changed (it started documenting this stuff) but this 
part of the implementation did not change.

> If not I think this should go to a separate "wfix" commit.

Please feel free to do that. (I don't know what a "wfix" commit is, and 
don't particularly want to know. :-)
