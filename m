Return-Path: <linux-man+bounces-23-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6E27E855C
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 23:14:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 69CCC1C208DC
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 22:14:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D9453C6AB;
	Fri, 10 Nov 2023 22:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="HAg0q5xb"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EEFD3C6A2
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 22:14:17 +0000 (UTC)
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84BEC4205
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 14:14:15 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id A2B433C011BDF;
	Fri, 10 Nov 2023 14:14:14 -0800 (PST)
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id Rs2tiNvtQcFF; Fri, 10 Nov 2023 14:14:14 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 55C833C011BE2;
	Fri, 10 Nov 2023 14:14:14 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 55C833C011BE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1699654454;
	bh=p/jocmba7ufOkHL/aOYodvW3sIpUsOwm8oAZByyVQNw=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=HAg0q5xbSxFlTSoh4r2ropCQ1Ue/1VKhlpbBRTjkhe9a+baS3MUjiDK7zbc3QqLUB
	 305vGDn7gqou6ctkzBZsCmdCdqphYCiLKn5i9KBhm5KzNxNpZ/hTo6H2KsCZT4lOpf
	 bVI/w5nAJZaPMUJaOh23c8lqdk0rOPquUXoZP3K65z3yzXp6Y80T6glbMmoezx4xaX
	 8eyCUrZQeHZ77HIK09GiQyE9YyoZsdFHHzhFbgtCQGJu6bL6RYP/MpxkJt6vpgpU4l
	 dkb6UhoUMcGyXTIZA0xyj1DfLmxmWhW7VSac+2QRHTXYVFBXRXastj3JXmzmyokPDY
	 JuQyvLKHYvXrg==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id kHdDUmP2EEol; Fri, 10 Nov 2023 14:14:14 -0800 (PST)
Received: from [192.168.254.12] (unknown [47.148.192.211])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 280733C011BDF;
	Fri, 10 Nov 2023 14:14:14 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------LFm28fZxLvMoZQG7ncEsHTQG"
Message-ID: <49daa0a7-291a-44f3-a2dd-cf5fb26c6df2@cs.ucla.edu>
Date: Fri, 10 Nov 2023 14:14:13 -0800
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: strncpy clarify result may not be null terminated
Content-Language: en-US
To: Alejandro Colomar <alx@kernel.org>
Cc: Jonny Grant <jg@jguk.org>, Matthew House <mattlloydhouse@gmail.com>,
 linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>
References: <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian> <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org> <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu> <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu> <ZU4OgiVSyM98EHVN@debian>
 <a64f4aa6-bca2-4dc0-8dc2-ac3de95b55ee@cs.ucla.edu> <ZU6KCkN1-dgszJJy@debian>
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <ZU6KCkN1-dgszJJy@debian>

This is a multi-part message in MIME format.
--------------LFm28fZxLvMoZQG7ncEsHTQG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2023-11-10 11:52, Alejandro Colomar wrote:

> Do you have any numbers?

It depends on size of course. With programs like 'tar' (one of the few 
programs that actually needs something like strncpy) the destination 
buffer is usually fairly small (32 bytes or less) though some of them 
are 100 bytes. I used 16 bytes in the following shell transcript:

$ for i in strnlen+strcpy strnlen+memcpy strncpy stpncpy strlcpy; do 
echo; echo $i:; time ./a.out 16 100000000 abcdefghijk $i; done

strnlen+strcpy:

real	0m0.411s
user	0m0.411s
sys	0m0.000s

strnlen+memcpy:

real	0m0.392s
user	0m0.388s
sys	0m0.004s

strncpy:

real	0m0.300s
user	0m0.300s
sys	0m0.000s

stpncpy:

real	0m0.326s
user	0m0.326s
sys	0m0.000s

strlcpy:

real	0m0.623s
user	0m0.623s
sys	0m0.000s


... where a.out was generated by compiling the attached program with gcc 
-O2 on Ubuntu 23.10 64-bit on a Xeon W-1350.

I wouldn't take these numbers all that seriously, as microbenchmarks 
like these are not that informative these days. Still, for a typical 
case one should not assume strncpy must be slower merely because it has 
more work to do; quite the contrary.
--------------LFm28fZxLvMoZQG7ncEsHTQG
Content-Type: text/x-csrc; charset=UTF-8; name="strncpy-bench.c"
Content-Disposition: attachment; filename="strncpy-bench.c"
Content-Transfer-Encoding: base64

I2luY2x1ZGUgPHN0ZGxpYi5oPgojaW5jbHVkZSA8c3RyaW5nLmg+CgoKaW50Cm1haW4gKGlu
dCBhcmdjLCBjaGFyICoqYXJndikKewogIGlmIChhcmdjICE9IDUpCiAgICByZXR1cm4gMjsK
ICBsb25nIGJ1ZnNpemUgPSBhdG9sIChhcmd2WzFdKTsKICBjaGFyICpidWYgPSBtYWxsb2Mg
KGJ1ZnNpemUpOwogIGxvbmcgbiA9IGF0b2wgKGFyZ3ZbMl0pOwogIGNoYXIgY29uc3QgKmEg
PSBhcmd2WzNdOwogIGlmIChzdHJjbXAgKGFyZ3ZbNF0sICJzdHJubGVuK3N0cmNweSIpID09
IDApCiAgICB7CiAgICAgIGZvciAobG9uZyBpID0gMDsgaSA8IG47IGkrKykKCXsKCSAgaWYg
KHN0cm5sZW4gKGEsIGJ1ZnNpemUpID09IGJ1ZnNpemUpCgkgICAgcmV0dXJuIDE7CgkgIHN0
cmNweSAoYnVmLCBhKTsKCX0KICAgIH0KICBlbHNlIGlmIChzdHJjbXAgKGFyZ3ZbNF0sICJz
dHJubGVuK21lbWNweSIpID09IDApCiAgICB7CiAgICAgIGZvciAobG9uZyBpID0gMDsgaSA8
IG47IGkrKykKCXsKCSAgc2l6ZV90IGFsZW4gPSBzdHJubGVuIChhLCBidWZzaXplKTsKCSAg
aWYgKGFsZW4gPT0gYnVmc2l6ZSkKCSAgICByZXR1cm4gMTsKCSAgbWVtY3B5IChidWYsIGEs
IGFsZW4gKyAxKTsKCX0KICAgIH0KICBlbHNlIGlmIChzdHJjbXAgKGFyZ3ZbNF0sICJzdHJu
Y3B5IikgPT0gMCkKICAgIHsKICAgICAgZm9yIChsb25nIGkgPSAwOyBpIDwgbjsgaSsrKQoJ
aWYgKHN0cm5jcHkgKGJ1ZiwgYSwgYnVmc2l6ZSlbYnVmc2l6ZSAtIDFdKQoJICByZXR1cm4g
MTsKICAgIH0KICBlbHNlIGlmIChzdHJjbXAgKGFyZ3ZbNF0sICJzdHBuY3B5IikgPT0gMCkK
ICAgIHsKICAgICAgZm9yIChsb25nIGkgPSAwOyBpIDwgbjsgaSsrKQoJaWYgKHN0cG5jcHkg
KGJ1ZiwgYSwgYnVmc2l6ZSkgPT0gYnVmICsgYnVmc2l6ZSkKCSAgcmV0dXJuIDE7CiAgICB9
CiAgZWxzZSBpZiAoc3RyY21wIChhcmd2WzRdLCAic3RybGNweSIpID09IDApCiAgICB7CiAg
ICAgIGZvciAobG9uZyBpID0gMDsgaSA8IG47IGkrKykKCWlmIChzdHJsY3B5IChidWYsIGEs
IGJ1ZnNpemUpID09IGJ1ZnNpemUpCgkgIHJldHVybiAxOwogICAgfQogIGVsc2UKICAgIHJl
dHVybiAyOwp9Cg==

--------------LFm28fZxLvMoZQG7ncEsHTQG--

