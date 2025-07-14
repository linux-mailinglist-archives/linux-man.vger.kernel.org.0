Return-Path: <linux-man+bounces-3264-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCA4B04C86
	for <lists+linux-man@lfdr.de>; Tue, 15 Jul 2025 01:46:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB7AA4A4925
	for <lists+linux-man@lfdr.de>; Mon, 14 Jul 2025 23:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9D2D235045;
	Mon, 14 Jul 2025 23:46:06 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from newman.eecs.umich.edu (newman.eecs.umich.edu [141.212.113.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F60367
	for <linux-man@vger.kernel.org>; Mon, 14 Jul 2025 23:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=141.212.113.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752536766; cv=none; b=af5cumBqn7UcUbalL8gyjSqPHHqNe3/nHBAKkeK39aBYjN9HqfrKf4G80q32lABizdqQvXiL3hrMZw49K4d7yEvMOvuzBJ1OHdmXXK3G8xYd1+OrMyGGv5Z8szWYex2tuZXie45MmoZ0IMhaT0IrBFUfn7vOmDY/V/VJpZuHUlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752536766; c=relaxed/simple;
	bh=MJkjBCdcKF4CLVhlQBUzEeHO4xzwOXQuC+K68MMLfx8=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=FgHEwHWGAMjK6ycDCtUJYWPb9Dxm2yLQSdtOpxFCzC2wyUwPD4FiOnXXgNvp8nAl8Fr5OL40VD2KT0+Ba6LuXKETi8ChQCYAe8MZlJm8uKiXpiZbR07B518UkXOYDhblJh4GlyKcKXbpUdvGqlhAVjUesHG0t+Ao16E8cGIU7gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=eecs.umich.edu; spf=pass smtp.mailfrom=eecs.umich.edu; arc=none smtp.client-ip=141.212.113.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=eecs.umich.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=eecs.umich.edu
Received: from email.eecs.umich.edu (email.eecs.umich.edu [141.212.113.194] (may be forged))
	by newman.eecs.umich.edu (8.15.2/8.14.4) with ESMTPS id 56ENk0We1669607
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 14 Jul 2025 19:46:00 -0400
Received: by email.eecs.umich.edu (Postfix, from userid 36916)
	id 8358012A03F0; Mon, 14 Jul 2025 19:46:00 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by email.eecs.umich.edu (Postfix) with ESMTP id 82B1012A02BC;
	Mon, 14 Jul 2025 19:46:00 -0400 (EDT)
Date: Mon, 14 Jul 2025 19:46:00 -0400 (EDT)
From: Terence Kelly <tpkelly@eecs.umich.edu>
Reply-To: Terence Kelly <tpkelly@eecs.umich.edu>
To: Alejandro Colomar <alx@kernel.org>
cc: linux-man@vger.kernel.org
Subject: _exit(2) vs. syscall(SYS_exit)  (was: Re: for man seccomp)
In-Reply-To: <ima6z2tqxkogu4zevqd2dww6oglouienk26qa25nk2sjere5h5@3ve4lzz2utgv>
Message-ID: <37dc9e2f-e478-9573-bbd6-2987ac6809aa@eecs.umich.edu>
References: <45c2afdf-729d-d137-e15a-074123f5c87b@eecs.umich.edu> <4oxc4pfspkqg3v7exajv42lw7s6tgy7xcji2yjyx2bi6b3pcya@sl7bllkflzcg> <259aabe5-aa71-5165-8ec1-f55baa04036e@eecs.umich.edu> <ima6z2tqxkogu4zevqd2dww6oglouienk26qa25nk2sjere5h5@3ve4lzz2utgv>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="-728907151-682822188-1752536538=:2553170"
Content-ID: <af405a97-ac80-c7e3-5c66-1341dea8b499@eecs.umich.edu>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---728907151-682822188-1752536538=:2553170
Content-Type: text/plain; CHARSET=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <7edd202a-4629-d46f-a200-223e9f66c34e@eecs.umich.edu>



Hi Alejandro,

[separating out different sub-threads of the conversation]

The attached tarball "exit_example.tar.gz" shows why I don't use 
"_exit(2)" per your suggesion.  On a late-vintage Ubuntu 24.04, it doesn't 
do what I expect, but my way does: Compile and run both my way and yours 
with "run.csh" and look at the output I get from that script in 
"run.csh.out".

I'm not sure I ever figured out why this happens.  Any idea what's going 
on?  Maybe the C wrapper function is making a syscall that seccomp bans.

-- Terence



On Sat, 12 Jul 2025, Alejandro Colomar wrote:

>>> Why do you call _exit(2) through syscall(2)?  There's _exit(2).
>>
>> Try calling _exit(your_favorite_exit_value) from within a sandbox, after
>> SANDBOX_CREATE_STRICT, on a late-vintage Ubuntu and Fedora box.  I'm pretty
>> sure we tried doing it the obvious way and seccomp didn't like it. If
>> necessary I could dig up the details.
>
> Yes, those details would be very interesting.  I expect _exit(2) or 
> _Exit(2) to be fine everywhere, since _Exit(2) was standardized in C99, 
> and _exit(2) was standardized in POSIX.1-2001.
>
> There are some differences between the system call (using syscall(2))
> and the library function:
>
>   C library/kernel differences
>     The  text above in DESCRIPTION describes the traditional effect of
>     _exit(), which is to terminate a process, and these are the seman‐
>     tics specified by POSIX.1 and implemented by the C library wrapper
>     function.  On  modern  systems,  this  means  termination  of  all
>     threads in the process.
>
>     By  contrast  with  the  C library wrapper function, the raw Linux
>     _exit() system call terminates only the calling  thread,  and  ac‐
>     tions  such  as  reparenting child processes or sending SIGCHLD to
>     the parent process are performed only if this is the  last  thread
>     in the thread group.
>
>     Up  to  glibc 2.3, the _exit() wrapper function invoked the kernel
>     system call of the same name.  Since glibc 2.3, the wrapper  func‐
>     tion  invokes  exit_group(2),  in  order  to  terminate all of the
>     threads in a process.
>
> But I don't expect they would be meaningful here, and anyway, you 
> probably prefer the semantics from the library call.
>
>> If I recall correctly this was one of several instances where seccomp's
>> behavior surprised us and made the code more weird.
>
> This would be interesting to note somewhere.
---728907151-682822188-1752536538=:2553170
Content-Type: application/gzip; name=exit_example.tar.gz
Content-Transfer-Encoding: BASE64
Content-ID: <1de5529d-ad35-fa13-483b-f1f0ef8a6fcd@eecs.umich.edu>
Content-Description: 
Content-Disposition: attachment; filename=exit_example.tar.gz

H4sICKSxdGgCA2V4aXRfZXhhbXBsZS50YXIA7Vh7U9tGEPff+hQbwYykGRvr
YdkZ0TRDjdMyAdzBZqBtikaWzrJa+UR1p2DSx+RjtF8vn6R7eti4AUKSAdqp
fjMga+92b2/v9qEli4i7ZOHNz2PSbtwPdERP18XT6NlrzwoNw9Yt27D0rmk0
dMMwTL0BduMBkDHupQCNwLx93ofG/6MgV8/fu/Aut/x7Of/OLeffM+3y/M1e
1+ri+Ztmx26AXp//vaPdhp2Y/OTRIE0UBngBJGkjINOIEnB3By92jvfH7mh4
fNQf4EBE/TgLCHzBeBrRcGv25RVaRiPGg3Uau2Rt/PO9OF4fiCOaLdqM+H4y
PxdDy1VP1DkLNQD1dRIF2kUacaKOxruDoyP3xd7+4HDYBJzQBFQhJjSfrElS
RDnMvYgWXPCrBIBbK+VDkBBGFQ5ejBtkkBKepRRaBiQUSJomKYpL4IIAmyVZ
HIA/I/7PME1SoAl9Q9IExUVTUMutqGqc0FAbfTdyyxWaMBr0+8ODb93RYOwe
DHcH7mh8tNcfN0FvwuHx/j4qCYgTVa6UmnpRTIJXVNa2pXxA+CJaFS6TLBUn
sY16ixfcBgFlgKPwVIHnzysWVzCoT/Pf5Zb0bel3SfpU/08zuuWz2X34v32L
/3eNXuX/XcvuCf/vdKza/x8CG0/ak4i2OR47tKaSxAiHc/RtLi7Gay/OSEFL
prEXMngGSgud/JlvGNA6QVfA/2TBUw9aQ0sRFxw2cr+Zewu8winF+8xyAeGH
BYTQCpVKwIQwDgGZZGHoTaI44hiYkE48fyZ8A1Tg4iFSFmiCaUxSQn1SBDHA
gPZeYBPaEX+WgKKsfst46WETh+Wcls7RDPk7bEPo+7BZ7ryVFNTNPEfeMDe8
ce5We7NSYcW2phGhwUd57j3k/9L/t5KMP2D+t8yOuaz/Opj4dcMysQyo/f8B
IInrLzxJ4vlldcyOg3eyzETzyyIP5UmoSI1Xc5FUPCUplyJcUSpKSAf2KEwz
6vMIM+y7t3+K1Pzu7V9ONW7ojmk5VYRwIAppIiqKKo/lkQeDjuDNSwBkxmjg
x15KAriI+Aw8jjXIJOMkn4OC3IxmjARuSlgWc8HwQ+ukoLUK2o/C4QwdfoPP
KjbyMIdCrsfZH3fB0hC2YztYZXCCRsBiZHHuUSaMhnufe36aiN2d4GZy1e1y
1RuriJViZ7Wp/2nqrmPd3dTdfNVPqMoqhc9qX6h9ofaF0hfuyim9jGI8wyKz
GFbvEUqi/xXW6j/+KP0fo9O1lv0fo2fk/Z+uWdd/D9T/Wftweuzuz8hUmVZ8
R7IVsaIVw0v69+q8pLt53HRdkB0Zp7vu/t4hvmr4DiDDHGQMSUu+weneWKWC
VS0i8Pt9HeEXTcBJ2mq5g9HX5YIqSXFihF+z18ZuodcyeIuXq1JOczFNXF4t
BDYrfVZz+t+8VEmxkng+LxOFDk7BLpcNqjzf4Q4VGTYIyIrcBEN0w5aG2znc
/Wp46vaPBjvjqiUFrzAyixWewOf1s65rujEWvSEuh8JA20UX7peMxPlne9EP
AG+CX5ir5FvYUFtLwijqWuVFVilMcMdvFDTJWodMRaW1pXa3qOfhVkKKaR+T
vciUIDL6R3bXatSoUaNGjRo1atSoUaNGjX8H/gZInNS/ACgAAA==

---728907151-682822188-1752536538=:2553170--

