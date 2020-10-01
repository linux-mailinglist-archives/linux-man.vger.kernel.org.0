Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44B3B27F964
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 08:20:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725878AbgJAGUI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 02:20:08 -0400
Received: from mo4-p00-ob.smtp.rzone.de ([81.169.146.221]:13038 "EHLO
        mo4-p00-ob.smtp.rzone.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725883AbgJAGUI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 02:20:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1601533206;
        s=strato-dkim-0002; d=kalchreuter.de;
        h=In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:
        X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
        bh=0qaO5Hye2ZeaZ3ESNnCdsiUCPa0xe3NPNR75m9miX6c=;
        b=X3EHklqUXOLB0i5ix30CkYkoryle8HCkKx4YWABQwe3/9FXvm6xczWp7kfhub58eKc
        9WyAhZ2vElbxxLIu3XSXUmJxrMoXQtIYEh+k+D0xNIrLebqRLmC3+4hdOH4B+g5X6GaB
        1Yx8ccpzeX8/l6TYsjs4xye/+UC9gicZOTL1EZoEnBQLWIAncrRjODU9TF5sPPau9/T4
        ULUEW3EzPtaumizZO1BCsAocwmznJ+q8wpmiroCMPfXjRqQj3BN/Nz+tjmPaLuwPwDPC
        hkGEt9QJ+47W7sAbzeWjjzCKyYqaystz/No5j5902BWQfBFN8TEesO0CfTurP2/cWP6b
        /L2g==
X-RZG-AUTH: ":L2QWfFO8dO93X8MypduWHW/c7aDr3kz0lzYyuq1XNdzyRSRMf4tWwy7sZzbRGGFWRXvnUBwgLDCtJUflLINcIQVHccJHy1aTAGXI1NQ="
X-RZG-CLASS-ID: mo00
Received: from [IPv6:2003:e5:7737:bc00:ca60:ff:fec3:2d13]
        by smtp.strato.de (RZmta 47.1.9 AUTH)
        with ESMTPSA id f0902ew916K25Nf
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
        Thu, 1 Oct 2020 08:20:02 +0200 (CEST)
Subject: Re: Typo in stat(2)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
Cc:     linux-man@vger.kernel.org
References: <373374d2-851f-67f6-4059-90130aaab344@kalchreuter.de>
 <87pn63tpx4.fsf@oldenburg2.str.redhat.com>
 <060e7ecf-3590-2fcb-9f28-a1534d97ac7b@gmail.com>
From:   Christoph Kalchreuter <christoph@kalchreuter.de>
Message-ID: <013759c3-5ca3-749e-abe9-120c00f6007c@kalchreuter.de>
Date:   Thu, 1 Oct 2020 08:20:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <060e7ecf-3590-2fcb-9f28-a1534d97ac7b@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

you're right, st_ctim is in struct stat if it's read via lstat and I missed the 
NOTES-section where it's clearly stated ("The nanosecond components of each 
timestamp are available via names of the form st_atim.tv_nsec").

I originally came from nftw(3) where I concluded from the sentence "sb is a 
pointer to the stat structure returned by a call to stat(2) for fpath." that I 
can find the description for struct stat in stat(2).

In stat(2) I found that "struct timespec st_mtim" exists in struct stat, so I 
tried to read st_mtim.tv_sec from struct stat that nftw returned.

But the compiler complained: "‘const struct stat’ has no member named ‘st_mtim’; 
did you mean ‘st_mtime’" and I concluded that there is no st_mtim in struct stat 
and as there isn't any description of st_atim, st_mtim and st_ctim in the 
explanation "The fields in the stat structure are as follows:" I assumed that 
it's an typing error in the manual.

It isn't and I surely did something wrong somewhere (I've to admit that I'm not 
that experienced programmer).

So, sorry for false alarm.

Best,
Christoph



On 9/30/20 9:38 PM, Michael Kerrisk (man-pages) wrote:
> On 9/30/20 2:22 PM, Florian Weimer wrote:
>> * Christoph Kalchreuter:
>>
>>> There are three Letters "e" missing in Section "DESCRIPTION",
>>> Subsection "The stat structure":
>>>
>>> struct timespec st_atim;  /* Time of last access */
>>> struct timespec st_mtim;  /* Time of last modification */
>>> sruct timespec st_ctim;  /* Time of last status change */
>>>
>>> should possibly be:
>>>
>>> struct timespec st_atime;  /* Time of last access */
>>> struct timespec st_mtime;  /* Time of last modification */
>>> sruct timespec st_ctime;  /* Time of last status change */
>>
>> This typo is also present in POSIX, so we cannot change it (like the
>> creat function).
> 
> Hi Christoph,
> 
> Florian was being very deadpan in his humor! The names
> really are correct. In the header files, one can find
> 
> [[  # /usr/include/bits/stat.h
> 
>      struct timespec st_atim;            /* Time of last access.  */
>      struct timespec st_mtim;            /* Time of last modification.  */
>      struct timespec st_ctim;            /* Time of last status change.  */
> # define st_atime st_atim.tv_sec        /* Backward compatibility.  */
> # define st_mtime st_mtim.tv_sec
> # define st_ctime st_ctim.tv_sec
> ]]
> 
> And struct timespec is defined as
> 
>                struct timespec {
>                    time_t  tv_sec;  /* Seconds */
>                    long    tv_nsec; /* Nanoseconds */
>                };
> 
> 
> Thanks,
> 
> Michael
> 
