Return-Path: <linux-man+bounces-253-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAF780F507
	for <lists+linux-man@lfdr.de>; Tue, 12 Dec 2023 18:56:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 281C81F21712
	for <lists+linux-man@lfdr.de>; Tue, 12 Dec 2023 17:56:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EC3D7D8BA;
	Tue, 12 Dec 2023 17:56:03 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.ekdawn.com (mail.ekdawn.com [159.69.120.39])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4414BA1
	for <linux-man@vger.kernel.org>; Tue, 12 Dec 2023 09:55:59 -0800 (PST)
Received: from [10.42.0.205] (dynamic-176-003-198-135.176.3.pool.telefonica.de [176.3.198.135])
	by mail.ekdawn.com (Postfix) with ESMTPSA id 545C0181004;
	Tue, 12 Dec 2023 17:55:49 +0000 (UTC)
Message-ID: <2c20d504-e6a4-476e-879f-be5618a4fd35@horse64.org>
Date: Tue, 12 Dec 2023 18:55:22 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Suggestion for clarifications on "man 5 proc" page regarding
 /proc/[pid]/self race conditions
Content-Language: en-US
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>
References: <e170ffa6-986a-4e55-9d44-27d7d7520151@horse64.org>
 <ZXhrblTGLBirUpki@debian> <c78fe5eb-65cd-4705-8628-d07240906bff@horse64.org>
 <ZXiaxx3mjXhLDayT@debian>
From: ellie <el@horse64.org>
In-Reply-To: <ZXiaxx3mjXhLDayT@debian>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Alejandro,

Thanks so much for elaborating! Just to clear it up, I hope it's obvious 
enough readlink("/proc/self/exe") to get a path, and then using open() 
on the result has a race by design: of the binary targeted by that path 
being renamed and replaced with a different one between the readlink and 
the open. Yet this approach seems to be commonly used, so a warning on 
the man page listing /proc/self/exe not to do that seems useful.

Now whether open("/proc/self/exe") has the same race condition would 
likely deoend on what that does behind the scenes. If /proc/self/exe is 
internally resolved to a path string first and not directly to an inode, 
then it should suffer the same race condition but with a smaller time 
window. If instead the kernel implementation is smart enough to not 
actually handle it like a "true" symlink, but rather look up the inode 
associated with the process directly, it would likely be safe.

Since I vaguely remember /proc/self/exe still working when the inode was 
deleted, I assume it's likely something smarter and might be 
race-condition safe when directly opened. But it would be nice to have 
some more definite info on that in the man page, just to be safe.

My apologies if I got some of the technical parts of this wrong, but 
hopefully it provides some explanation of why I brought this up.

Regards,

ellie

On 12/12/23 6:39 PM, Alejandro Colomar wrote:
> Hi ellie,
> 
> On Tue, Dec 12, 2023 at 05:55:13PM +0100, ellie wrote:
>> Thanks so much for the response!
>>
>> For what it's worth, I checked my code again for the correct path, what I
>> meant was /proc/self/exe which links to the binary of the currently running
>> process, as far as I understand it.
>>
>> I'm not sure it's easily possible to write a test program, because the
>> open() wrapper by the libc on the /proc/self/exe symlink would need to be
>> intercepted at just the right time in case /proc/self/exe is actually
>> vulnerable. The breakpoint wouldn't be in the regular user code, might even
>> be kernel code I guess, depending on where the race condition is located if
>> it exists. (For FreeBSD a developer told me it supposedly exists for
>> /proc/curproc/file which is apparently the equivalent, although that was
>> about two years ago so I don't know if that has changed since.)
> 
> Do you suggest that open("/proc/self/exe", ...) could have a race within
> the kernel?  It might be useful to CC <linux-kernel@vger.kernel.org> or
> some other mailing list to be sure.
> 
>>
>> The wrong approach via readlink() on /proc/self/exe and then libc open() on
>> the resulting path should be easy to intercept and break, but that doesn't
>> really say much about the question at hand. I guess that this readlink
>> approach isn't a good idea, even if commonly used, should be relatively
>> obvious.
> 
> Now I'm not sure if the question at hand is that readlink(2)+open(2) has
> a race (which of course it has), or if open("/proc/self/exe", ...) is
> the race you're suggesting.  A patch for the former is welcome, and you
> could add something like this to the commit message (or you could skip
> it if you feel lazy, but these things help).
> 
> 	int   fd, r;
> 	char  path[PATH_MAX];
> 	char  text[BUFSIZ];
> 
> 	if (readlink("/proc/self/exe", path, NITEMS(path)) == -1)
> 		err(EXIT_FAILURE, "readlink");
> 
> 	sleep(100);  // Give some time for the race
> 	// $ readlink /proc/$pid/exe \
> 	//   | while read f; do
> 	//           mv $f $f.bak;
> 	//           echo malicious >$f;
> 	//   done;
> 
> 	fd = open(path, 0_RDONLY);
> 	if (fd == -1)
> 		err(EXIT_FAILURE, "open");
> 
> 	r = read(fd, text, NITEMS(text));
> 	if (r == -1)
> 		err(EXIT_FAILURE, "read");
> 	if (write(STDOUT_FILENO, text, r) == -1)
> 		err(EXIT_FAILURE, "write");
> 
> Have a lovely day,
> Alex
> 

