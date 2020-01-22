Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 83B0414527E
	for <lists+linux-man@lfdr.de>; Wed, 22 Jan 2020 11:24:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727847AbgAVKYm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Jan 2020 05:24:42 -0500
Received: from vie01a-dmta-at02-2.mx.upcmail.net ([62.179.121.149]:55057 "EHLO
        vie01a-dmta-at02-2.mx.upcmail.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726191AbgAVKYm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Jan 2020 05:24:42 -0500
Received: from [172.31.216.42] (helo=vie01a-pemc-psmtp-at51)
        by vie01a-dmta-at02.mx.upcmail.net with esmtp (Exim 4.92)
        (envelope-from <aaron_ng@inode.at>)
        id 1iuDBf-0003KS-SY
        for linux-man@vger.kernel.org; Wed, 22 Jan 2020 11:24:39 +0100
Received: from [192.168.178.32] ([85.127.196.46])
        by vie01a-pemc-psmtp-at51 with SMTP @ mailcloud.upcmail.net
        id tNQK2101810YYfp0BNQdy2; Wed, 22 Jan 2020 11:24:39 +0100
X-SourceIP: 85.127.196.46
X-Authenticated-Sender: aaron_ng@inode.at
X-CNFS-Analysis: v=2.2 cv=SdWHTrZu c=1 sm=2 tr=0 cx=a_idp_f
 a=qiKEvOGefcE38X2qemJq6A==:117 a=qiKEvOGefcE38X2qemJq6A==:17 a=GcyzOjIWAAAA:8
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=fk0CAeaJ59kA:10 a=IkcTkHD0fZMA:10
 a=3dSk2FiCwbIiM6wRv4YA:9 a=QEXdDO2ut3YA:10 a=AOKk7AoyvNQA:10
 a=hQL3dl6oAZ8NdCsdz28n:22
Subject: Fwd: Re: bug in example in
 http://man7.org/linux/man-pages/man7/pkeys.7.html void -> int
References: <188feb2f-d52e-1d35-1baa-3d8a3199647e@inode.at>
To:     linux-man@vger.kernel.org
From:   Aaron <aaron_ng@inode.at>
X-Forwarded-Message-Id: <188feb2f-d52e-1d35-1baa-3d8a3199647e@inode.at>
Message-ID: <06fe4ab4-d903-3863-9cc6-12541e31a686@inode.at>
Date:   Wed, 22 Jan 2020 11:24:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <188feb2f-d52e-1d35-1baa-3d8a3199647e@inode.at>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I replied to Michael, but missed to address the list. Jakubs 
interpretation is right. See my response below.


Hello!

Sorry, there is a typo on my side, and I have been less specific then 
desirable.

The problem is there:

static inline void
wrpkru(unsigned int pkru) ... <== returns void
...
int
pkey_set(int pkey, unsigned long rights, unsigned long flags) <== 
returns int
{
unsigned int pkru = (rights << (2 * pkey));
return wrpkru(pkru); <== here the V O I D I S R E T U R N E D A S I N T
}

Regards, Aaron


On 1/22/20 12:58 AM, Michael Kerrisk (man-pages) wrote:
> Hello Aaron,
>
> I'm sorry. I don't understand your bug report. As far as I can see,
> the manual page never looked like the text you quote. But, maybe I
> misunderstand you?
>
> Thanks,
>
> Michael
>
> On Wed, 3 Apr 2019 at 16:10, Aaron <aaron_ng@inode.at> wrote:
>> Hello!
>>
>> In http://man7.org/linux/man-pages/man7/pkeys.7.html
>>
>> We have
>>
>> void
>> ...       wrpkru(unsigned int pkru);
>>
>> ...
>>
>> int pkey_set(int pkey, unsigned long rights, unsigned long flags)
>>
>> ... returnwrpkru(...
>>
>> Regards, Aaron
>>
>>
>>
>

