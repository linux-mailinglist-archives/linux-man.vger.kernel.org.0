Return-Path: <linux-man+bounces-44-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB557E8F65
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 10:52:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 55764280C70
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 09:52:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42BD25238;
	Sun, 12 Nov 2023 09:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jguk.org header.i=@jguk.org header.b="KqXqR1BT"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3475C6FBF
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 09:52:26 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4916D2D62
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 01:52:23 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40a46ea95f0so17355705e9.2
        for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 01:52:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1699782742; x=1700387542; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VGRdMtoHLAT3fP1EuepCKhEZvBPapFlukEgYRbCG01I=;
        b=KqXqR1BT1alDaFBRapCtZafKVxh31y0pLiYR04GDx0CLJEfU/PysUGBQ+OTOfVds1w
         80uAvYCP0sBs5CV6R6PhPVZTeELBcKrNRsGuU91ZhnuEG1TMUI9gpNUAJakBqAvpEumR
         ENQrfQpfWPO8YSSyPKXt7LUp3LM8QKDvkwwX8ydNHp3OmVcL2EN+YvBlJhfHhlK9gBue
         i+zrLmradYR3ORiup6y2gkDU6hxz9OvAq02Q5J+6N0LDrfd04nTfo+4ikiCVofiVkKQi
         alUoV137zJ8x6Qjzamps3MJbMa9XuJGVAYCueU3sXX8vRSiFJjCWejITUNYrYeTwbjIE
         0SCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699782742; x=1700387542;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VGRdMtoHLAT3fP1EuepCKhEZvBPapFlukEgYRbCG01I=;
        b=onbqD42796Vj4ehmBzZt7mLcvXlQLPgfqof5ioGryDISqIypXiOKUyFTzS0+dAoK7+
         FfCUrPrrN1aEuGpMwtxuTGhsMkoYaO0qM+vy3nicB1cF9+oFpdpGFLHUnw1TWNON738F
         vIHjBuTiF6YmzL1ZpuuNMmFaaKyJg6Ob/5T/Sb8HrUnCaCGka9o5zS2xaHl3Flfm8AiM
         1Yz4jcTpI+VHWF0mVhq8UJ01DBk0Fo+TpxI9mbm6TRX/amTPGedFtlFtucJh/T+Pz8+M
         dL8l8Gxcn17IngmV28V5aGVrQSY8kzITU0GdqJjZrRCUGcDQp5QasusUXQjPsl8aqT2x
         4XcQ==
X-Gm-Message-State: AOJu0YzumrBe4DD2Chfobk7kO+sT17VsJxt21Cy6rv0ZiARJPkyjnOBH
	bUm2M8mocl94vbSW8F0B4VT7a37XjddYaER9y3M=
X-Google-Smtp-Source: AGHT+IGS3jBphDwSCxtgOMMLsL0mqAgeTRiNfG4A+KprGyIjnHQxmwsi722m6Gyl0rxtkXT7wL6cMw==
X-Received: by 2002:a05:600c:4fd1:b0:3fb:a100:2581 with SMTP id o17-20020a05600c4fd100b003fba1002581mr3600618wmq.14.1699782741520;
        Sun, 12 Nov 2023 01:52:21 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id w21-20020a05600c475500b003feae747ff2sm10478359wmo.35.2023.11.12.01.52.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Nov 2023 01:52:21 -0800 (PST)
Message-ID: <f5ad0785-8f5f-4ed6-a043-c0e2c303c90e@jguk.org>
Date: Sun, 12 Nov 2023 09:52:20 +0000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Jonny Grant <jg@jguk.org>
Subject: Re: strncpy clarify result may not be null terminated
To: Alejandro Colomar <alx@kernel.org>, Paul Eggert <eggert@cs.ucla.edu>
Cc: Matthew House <mattlloydhouse@gmail.com>,
 linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>
References: <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org> <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu> <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu> <ZU4OgiVSyM98EHVN@debian>
 <a64f4aa6-bca2-4dc0-8dc2-ac3de95b55ee@cs.ucla.edu> <ZU6KCkN1-dgszJJy@debian>
 <49daa0a7-291a-44f3-a2dd-cf5fb26c6df2@cs.ucla.edu> <ZU_ui2gbSBrTKXnX@debian>
Content-Language: en-GB
In-Reply-To: <ZU_ui2gbSBrTKXnX@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11/11/2023 21:13, Alejandro Colomar wrote:
> Hi Paul,
> 
> On Fri, Nov 10, 2023 at 02:14:13PM -0800, Paul Eggert wrote:
>> On 2023-11-10 11:52, Alejandro Colomar wrote:
>>
>>> Do you have any numbers?
>>
>> It depends on size of course. With programs like 'tar' (one of the few
>> programs that actually needs something like strncpy) the destination buffer
>> is usually fairly small (32 bytes or less) though some of them are 100
>> bytes. I used 16 bytes in the following shell transcript:
>>
>> $ for i in strnlen+strcpy strnlen+memcpy strncpy stpncpy strlcpy; do echo;
>> echo $i:; time ./a.out 16 100000000 abcdefghijk $i; done
>>
>> strnlen+strcpy:
>>
>> real	0m0.411s
>> user	0m0.411s
>> sys	0m0.000s
>>
>> strnlen+memcpy:
>>
>> real	0m0.392s
>> user	0m0.388s
>> sys	0m0.004s
>>
>> strncpy:
>>
>> real	0m0.300s
>> user	0m0.300s
>> sys	0m0.000s
>>
>> stpncpy:
>>
>> real	0m0.326s
>> user	0m0.326s
>> sys	0m0.000s
>>
>> strlcpy:
>>
>> real	0m0.623s
>> user	0m0.623s
>> sys	0m0.000s
>>
>>
>> ... where a.out was generated by compiling the attached program with gcc -O2
>> on Ubuntu 23.10 64-bit on a Xeon W-1350.
>>
>> I wouldn't take these numbers all that seriously, as microbenchmarks like
>> these are not that informative these days. Still, for a typical case one
>> should not assume strncpy must be slower merely because it has more work to
>> do; quite the contrary.
> 
> Thanks for the benchmarck!  Yeah, I won't take it as the last word, but
> it shows the growth order (and its cause) of the different alternatives.
> 
> I'd like to point out some curious things about it:
> 
> -  strnlen+strcpy is slower than strnlen+memcpy.
> 
>    The compiler has all the information necessary here, so I don't see
>    why it's not optimizing out the strcpy(3) into a simple memcpy(3).
>    AFAICS, it's a missed optimization.  Even with -O3, it misses the
>    optimization.
> 
> -  strncpy is slower than stpncpy in my computer.
> 
>    stpncpy is in fact the fastest call in my computer.
> 
>    Was strncpy(3) optimized in a recent version of glibc that you have?
>    I'm using Debian Sid on an underclocked i9-13900T.  Or is it maybe
>    just luck?  I'm curious.
> 
> 	$ for i in strnlen+strcpy strnlen+memcpy strncpy stpncpy memccpy strlcpy; do
> 		echo; echo $i:;
> 		time ./a.out 16 100000000 abcdefghijk $i;
> 	  done;
> 
> 	strnlen+strcpy:
> 
> 	real	0m0.188s
> 	user	0m0.184s
> 	sys	0m0.004s
> 
> 	strnlen+memcpy:
> 
> 	real	0m0.148s
> 	user	0m0.148s
> 	sys	0m0.000s
> 
> 	strncpy:
> 
> 	real	0m0.157s
> 	user	0m0.157s
> 	sys	0m0.000s
> 
> 	stpncpy:
> 
> 	real	0m0.135s
> 	user	0m0.135s
> 	sys	0m0.000s
> 
> 	memccpy:
> 
> 	real	0m0.208s
> 	user	0m0.208s
> 	sys	0m0.000s
> 
> 	strlcpy:
> 
> 	real	0m0.322s
> 	user	0m0.322s
> 	sys	0m0.000s
> 
> -  strlcpy(3) is very heavy.  Much more than I expected.  See some tests
>    with larger strings.  The main growth of strlcpy(3) comes from slen.
> 
> 	$ for i in strnlen+strcpy strnlen+memcpy strncpy stpncpy memccpy strlcpy; do
> 		echo; echo $i:;
> 		time ./a.out 64 100000000 aaaabbbbaaaaccccaaaabbbbaaaadddd $i;
> 	  done;
> 
> 	strnlen+strcpy:
> 
> 	real	0m0.242s
> 	user	0m0.242s
> 	sys	0m0.000s
> 
> 	strnlen+memcpy:
> 
> 	real	0m0.190s
> 	user	0m0.186s
> 	sys	0m0.004s
> 
> 	strncpy:
> 
> 	real	0m0.174s
> 	user	0m0.173s
> 	sys	0m0.000s
> 
> 	stpncpy:
> 
> 	real	0m0.170s
> 	user	0m0.166s
> 	sys	0m0.004s
> 
> 	memccpy:
> 
> 	real	0m0.253s
> 	user	0m0.249s
> 	sys	0m0.004s
> 
> 	strlcpy:
> 
> 	real	0m1.385s
> 	user	0m1.385s
> 	sys	0m0.000s
> 
> -  strncpy(3) also gets heavy compared to strnlen+memcpy.
>    Considering how small the difference with memcpy is for small
>    strings, I wouldn't recommend it instead of memcpy, except for
>    micro-optimizations.  The main growth of strncpy(3) comes from dsize.
> 
> 	$ for i in strnlen+strcpy strnlen+memcpy strncpy stpncpy memccpy strlcpy; do
> 		echo; echo $i:;
> 		time ./a.out 256 100000000 aaaabbbbaaaaccccaaaabbbbaaaadddd $i;
> 	  done;
> 
> 	strnlen+strcpy:
> 
> 	real	0m0.234s
> 	user	0m0.233s
> 	sys	0m0.001s
> 
> 	strnlen+memcpy:
> 
> 	real	0m0.192s
> 	user	0m0.192s
> 	sys	0m0.000s
> 
> 	strncpy:
> 
> 	real	0m0.268s
> 	user	0m0.268s
> 	sys	0m0.000s
> 
> 	stpncpy:
> 
> 	real	0m0.267s
> 	user	0m0.267s
> 	sys	0m0.000s
> 
> 	memccpy:
> 
> 	real	0m0.257s
> 	user	0m0.256s
> 	sys	0m0.001s
> 
> 	strlcpy:
> 
> 	real	0m1.574s
> 	user	0m1.574s
> 	sys	0m0.000s
> 
> 	$ for i in strnlen+strcpy strnlen+memcpy strncpy stpncpy memccpy strlcpy; do
> 		echo; echo $i:;
> 		time ./a.out 4096 100000000 aaaabbbbaaaaccccaaaabbbbaaaadddd $i;
> 	  done;
> 
> 	strnlen+strcpy:
> 
> 	real	0m0.227s
> 	user	0m0.227s
> 	sys	0m0.000s
> 
> 	strnlen+memcpy:
> 
> 	real	0m0.190s
> 	user	0m0.190s
> 	sys	0m0.000s
> 
> 	strncpy:
> 
> 	real	0m1.400s
> 	user	0m1.399s
> 	sys	0m0.000s
> 
> 	stpncpy:
> 
> 	real	0m1.398s
> 	user	0m1.398s
> 	sys	0m0.000s
> 
> 	memccpy:
> 
> 	real	0m0.256s
> 	user	0m0.256s
> 	sys	0m0.000s
> 
> 	strlcpy:
> 
> 	real	0m1.184s
> 	user	0m1.184s
> 	sys	0m0.000s
> 
> 
> -  strnlen(3)+memcpy(3) becomes the fastest when dsize grows a bit over
>    a few hundred bytes, and is only a few 10%'s slower than the fastest
>    for smaller buffers.
> 
>    It is also the most semantically correct (together with
>    strnlen+strcpy), avoiding unnecessary dead code (padding).  This
>    should get the main backing from the manual pages.
> 
>    However, it can be useful to document typical alternatives to prevent
>    mistakes from users.  Especially, since some micro-optimizations may
>    favor uses of strncpy(3).
> 
> Cheers,
> Alex   
> 
>> #include <stdlib.h>
>> #include <string.h>
>>
>>
>> int
>> main (int argc, char **argv)
>> {
>>   if (argc != 5)
>>     return 2;
>>   long bufsize = atol (argv[1]);
>>   char *buf = malloc (bufsize);
>>   long n = atol (argv[2]);
>>   char const *a = argv[3];
>>   if (strcmp (argv[4], "strnlen+strcpy") == 0)
>>     {
>>       for (long i = 0; i < n; i++)
>> 	{
>> 	  if (strnlen (a, bufsize) == bufsize)
>> 	    return 1;
>> 	  strcpy (buf, a);
>> 	}
>>     }
>>   else if (strcmp (argv[4], "strnlen+memcpy") == 0)
>>     {
>>       for (long i = 0; i < n; i++)
>> 	{
>> 	  size_t alen = strnlen (a, bufsize);
>> 	  if (alen == bufsize)
>> 	    return 1;
>> 	  memcpy (buf, a, alen + 1);
>> 	}
>>     }
>>   else if (strcmp (argv[4], "strncpy") == 0)
>>     {
>>       for (long i = 0; i < n; i++)
>> 	if (strncpy (buf, a, bufsize)[bufsize - 1])
>> 	  return 1;
>>     }
>>   else if (strcmp (argv[4], "stpncpy") == 0)
>>     {
>>       for (long i = 0; i < n; i++)
>> 	if (stpncpy (buf, a, bufsize) == buf + bufsize)
>> 	  return 1;
>>     }
> 
> I've added the following one for completeness.  Especially now that
> it'll be in C2x.
> 
>   else if (strcmp (argv[4], "memccpy") == 0)
>     {
>       for (long i = 0; i < n; i++)
> 	if (memccpy (buf, a, 0, bufsize) == NULL)
> 	  return 1;
>     }
> 
>>   else if (strcmp (argv[4], "strlcpy") == 0)
>>     {
>>       for (long i = 0; i < n; i++)
>> 	if (strlcpy (buf, a, bufsize) == bufsize)
> 
> This should have been >= bufsize, right?
> 
>> 	  return 1;
>>     }
>>   else
>>     return 2;
>> }
> 
> 

Maybe we're gonna need a bigger benchmark.

Probably there existing studies. Or could patch something like SQLite Benchmark to utilise each string function just for measurements. Hopefully it moves around at least 2GB of strings to give some meaningful comparison timings.

As Paul mentioned, strlcpy is a poor choice for processing strings. Could rely on their guidance as they already measured.
https://www.gnu.org/software/libc/manual/html_node/Truncating-Strings.html

Maybe the strlcpy API is easier, safer for programmers; but the compiler can't figure out that the programmer already knew src string length. So the strlcpy does a strlen() and wastes time reading over memory. If the src length is known, can just memcpy.


When I've benchmarked things, reducing the memory accesses for read, write boosted performance, also looked at the cycles taken, of course cache and alignment all play a part too.

Maybe could suggest in your man page programmers should keep track of the src size ? - to save the cost of the strlen().

At least the strlen functions are optimized:
glibc/strnlen.c calls memchr() searching for '\0' memchr searches 4 bytes at a time.
glibc/strlen.c searches 4 bytes at a time.

glibc/strlcpy.c __strlcpy() is there a reason when truncating it overwrites the last byte, twice?

memcpy (dest, src, size);
dest[size - 1] = '\0';

Kind regards, Jonny

