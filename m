Return-Path: <linux-man+bounces-53-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C021A7E92C7
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 21:49:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4CD7F1F20FBC
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 20:49:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A93D19465;
	Sun, 12 Nov 2023 20:49:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="miymh3Qk"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3013216435
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 20:49:48 +0000 (UTC)
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD74FD1
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 12:49:45 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 623B03C011BE9;
	Sun, 12 Nov 2023 12:49:45 -0800 (PST)
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id FZSiwK08Eyb2; Sun, 12 Nov 2023 12:49:45 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 097263C011BEA;
	Sun, 12 Nov 2023 12:49:45 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 097263C011BEA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1699822185;
	bh=tBfRFu5Z4xObv2VpkjcmgNOaeTeFmPnnCbzKXUueeQ8=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=miymh3Qklbc0iHcS4t82Ylo4fvIPmAcsibykpQEftHhUf577kyJdF9etsuYpoZZAu
	 HKtav+q+Phnev8Rh7V6pjZ2IZYW0va2Za+hGd8aKzl3LjIaJJHjOby6JrXkm3QVrf/
	 3t503ksfN185KG0gAYGJ1cpD5km/0Spv06kEWL06ZwE6L/I1q2kfaQFLkAOh4eLrdb
	 JnsRNavkqlWO40I0B8vOnaEK3ZHQEMbfpGUf8vkOrhC8e5AaAgx25gks6DHM2VDbLB
	 kC5JvLbL42Cvgnv5CM6oOwXO7iqyiT7Taj0subAGiYfO7K3eD5SggBUL71g+UiTwGn
	 LDuN5zf0G5R0w==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id Jn5k61WHPs9N; Sun, 12 Nov 2023 12:49:44 -0800 (PST)
Received: from [192.168.254.12] (unknown [47.148.192.211])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id DB0BE3C011BE9;
	Sun, 12 Nov 2023 12:49:44 -0800 (PST)
Message-ID: <497f3940-b533-4018-8212-ffe931e514fa@cs.ucla.edu>
Date: Sun, 12 Nov 2023 12:49:44 -0800
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: strncpy clarify result may not be null terminated
Content-Language: en-US
To: Alejandro Colomar <alx@kernel.org>, Jonny Grant <jg@jguk.org>
Cc: Matthew House <mattlloydhouse@gmail.com>,
 linux-man <linux-man@vger.kernel.org>
References: <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu> <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu> <ZU4OgiVSyM98EHVN@debian>
 <a64f4aa6-bca2-4dc0-8dc2-ac3de95b55ee@cs.ucla.edu> <ZU6KCkN1-dgszJJy@debian>
 <49daa0a7-291a-44f3-a2dd-cf5fb26c6df2@cs.ucla.edu> <ZU_ui2gbSBrTKXnX@debian>
 <f5ad0785-8f5f-4ed6-a043-c0e2c303c90e@jguk.org> <ZVCwKBJyCsP8Aam9@debian>
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <ZVCwKBJyCsP8Aam9@debian>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

[dropping libc-alpha since this is only about the man pages]

On 2023-11-12 02:59, Alejandro Colomar wrote:

> I think the man-pages should go
> ahead and write wrapper functions such as strtcpy() and stpecpy()
> aound libc functions; these wrappers should provide a fast and safe
> starting point for most programs.

It's OK for man pages to give these in EXAMPLES sections. However, the 
man pages currently go too far in this direction. Currently, if I type 
"man stpecpy", I get a man page with a synopsis and it looks to me like 
glibc supports stpecpy(3) just like it supports stpcpy(3). But glibc 
doesn't do that, as stpecpy is merely a man-pages invention: although 
the source code for stpecpy is in the EXAMPLES section of 
string_copying(7), you can't use stpecpy in an app without 
copy-and-pasting the man page's source into your code.

It's not just stepecpy. For example, there is no ustr2stp function in 
glibc, but "man ustr2stp" acts as if there is one.

The man pages should describe the library that exists, not the library 
that some of us would rather have.


> It's true that memcpy(3) is the fastest function one can use, but it
> requires the programmer to be rather careful with the lengths of the
> strings.  I don't think keeping track of all those little details is
> what the common programmer should do.

Unfortunately, C is not designed for string use that's that convenient. 
If you want safe and efficient use of possibly-long C strings, keeping 
track of lengths is generally the best way to do it.


>> glibc/strlcpy.c __strlcpy() is there a reason when truncating it overwrites the last byte, twice?
>>
>> memcpy (dest, src, size);
>> dest[size - 1] = '\0';
> 
> -1's in the source code make up for off-by-one bugs.

The "dest[size - 1] = '\0';" is there because strlcpy(dst, src, sz) is 
defined to null-terminate the result if sz!=0, so that particular "-1" 
isn't a bug. (Perhaps you meant that the strlcpy spec itself is buggy? 
It wasn't clear to me.)

That "last byte, twice" question is: why is the last argument to memcpy 
"size" and not "size - 1" which would be equally correct? The answer is 
performance: memcpy often works faster when copying a number of bytes 
that is a multiple of a smallish power of two, and "size" is more likely 
than "size - 1" to be such a multiple.


