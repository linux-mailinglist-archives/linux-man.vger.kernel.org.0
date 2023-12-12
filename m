Return-Path: <linux-man+bounces-251-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A368680F3B1
	for <lists+linux-man@lfdr.de>; Tue, 12 Dec 2023 17:56:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4CE1B1F2167A
	for <lists+linux-man@lfdr.de>; Tue, 12 Dec 2023 16:56:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BF657B3A6;
	Tue, 12 Dec 2023 16:55:55 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.ekdawn.com (mail.ekdawn.com [159.69.120.39])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BE47E8
	for <linux-man@vger.kernel.org>; Tue, 12 Dec 2023 08:55:51 -0800 (PST)
Received: from [10.42.0.205] (dynamic-176-003-198-135.176.3.pool.telefonica.de [176.3.198.135])
	by mail.ekdawn.com (Postfix) with ESMTPSA id A94C2185EB3;
	Tue, 12 Dec 2023 16:55:40 +0000 (UTC)
Message-ID: <c78fe5eb-65cd-4705-8628-d07240906bff@horse64.org>
Date: Tue, 12 Dec 2023 17:55:13 +0100
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
 <ZXhrblTGLBirUpki@debian>
From: ellie <el@horse64.org>
In-Reply-To: <ZXhrblTGLBirUpki@debian>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Thanks so much for the response!

For what it's worth, I checked my code again for the correct path, what 
I meant was /proc/self/exe which links to the binary of the currently 
running process, as far as I understand it.

I'm not sure it's easily possible to write a test program, because the 
open() wrapper by the libc on the /proc/self/exe symlink would need to 
be intercepted at just the right time in case /proc/self/exe is actually 
vulnerable. The breakpoint wouldn't be in the regular user code, might 
even be kernel code I guess, depending on where the race condition is 
located if it exists. (For FreeBSD a developer told me it supposedly 
exists for /proc/curproc/file which is apparently the equivalent, 
although that was about two years ago so I don't know if that has 
changed since.)

The wrong approach via readlink() on /proc/self/exe and then libc open() 
on the resulting path should be easy to intercept and break, but that 
doesn't really say much about the question at hand. I guess that this 
readlink approach isn't a good idea, even if commonly used, should be 
relatively obvious.

Regards,

ellie

On 12/12/23 3:17 PM, Alejandro Colomar wrote:
> Dear ellie, Petr,
> 
> On Tue, Dec 12, 2023 at 09:47:58AM +0100, ellie wrote:
>> Dear Alejandro Colomar,
>>
>> I hope I'm emailing this to the correct place, I found this contact
>> information on https://man7.org/mtk/contact.html regarding man page
>> feedback:
> 
> Yep, this is the correct place.
> 
> Petr, Michael retired from maintaining the project a couple of years
> ago.  As Michael says in <https://www.man7.org/mtk/contact.html>,
> reports about the Linux man-pages should be reported to this mailing
> list, following the ./CONTRIBUTING file
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUTING>.
> 
>>
>> I'm suggesting that the "man 5 proc" page is expanded with a section
> 
> I've recently splitted the proc(5) page into many small pages, one for
> each file or directory.  You may want to check the current manual pages.
> You can do that by reading directly from the repository, or by reading
> the PDF book (thanks to Deri James, from gropdf(1), for contributing the
> scripts to produce the book).
> 
> To check the book as of the latest commit in git HEAD, you can check
> <https://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pages-HEAD.pdf>
> 
> You will probably want to check proc_self(5) --which is a link page; the
> text is actually in proc_pid(5)--.  proc(5) still contains some small
> mention of /proc/self, so you'll want to check that too.
> 
>> clarifying /proc/[pid]/self
> 
> You probably mean /proc/self/, or /proc/[pid]/.
> 
>> race conditions, I described details and even
>> made a text suggestion here:
>>
>> https://bugzilla.suse.com/show_bug.cgi?id=1216352
> 
> After seeing the suggestion, you'll want to check proc_pid_exe(5):
> 
> <https://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pages-HEAD.pdf#proc_pid_exe.5>
> 
> You could add a CAVEATS section in that page.  Please write also a test
> program that reproduces the race condition, and another one which
> demonstrates how your solution doesn't.  Those test programs will be
> useful to include in the commit message.
> 
>> (The text suggestion might be wrong, however, since I don't actually know
>> what the exact technical state of this is.)
> 
> It looks good.  With a small example program that demonstrates it,
> you'll be able to answer your doubts.  ;-)
> 
> Have a lovely day!
> Alex
> 

