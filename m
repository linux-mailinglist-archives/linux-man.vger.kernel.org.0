Return-Path: <linux-man+bounces-2378-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB4AA2E712
	for <lists+linux-man@lfdr.de>; Mon, 10 Feb 2025 09:56:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5C8F57A1D1A
	for <lists+linux-man@lfdr.de>; Mon, 10 Feb 2025 08:55:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C54051C1F04;
	Mon, 10 Feb 2025 08:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TKICD+pz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E8C178395
	for <linux-man@vger.kernel.org>; Mon, 10 Feb 2025 08:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739177804; cv=none; b=XxRgirBB/Gmddq0vnnaCYt2K+r3lQFoyWXUlDCuKQIDjfjuj1Eno9CHmyVQUtch8n42FoT89ilRXDNg/w3+3S9S3/bjxpkawrZ0vnN9H7Ssx6udtoAjCbl2P3C/ksZCSG3cYkfHZzptOxlEJfUYklPwqjvgkSI4MWmevaRLlh/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739177804; c=relaxed/simple;
	bh=eUi15UtJ0i+ZIFibFtIM9Z6mm9ag6b6sYJP+XPvdeSE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JvpckI1IuvWRSHPE2taoMFfEr/9ylehTZ1QlSoTqoIGogWOIv7aBepg7yuk+HZYWn+KjR+y1IhFxtdVf+dy6sESm64wN4zNjrnu1/1nWWGXcPr02pd/xG/ZMn2YQH8r+Ch53HtwAEnHUFqKsaijjLJe7bEhXIZu2IhfnMNEerfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TKICD+pz; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5de56ff9851so4122485a12.2
        for <linux-man@vger.kernel.org>; Mon, 10 Feb 2025 00:56:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739177801; x=1739782601; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3qZAR6HQzevf7HP1e1GO3il0u7RKGpdGvXgouvaT9OY=;
        b=TKICD+pzAhwKiWMSc4u95nu+skTyOeLVUIYTRSVWhYKbEoimO0HO649vhschtrPbGk
         XGzW9bJjv6TpqUWY7QHXxugcp6FOlMTf8jt3Re29weiuItZdue6BRLn55HdcfNArrbAy
         jNfFZeNEwks/IhSCdOD3xFvR2nH5XU3RoNcmzRP2lLayf8/a4qydvX6stTDbZhGg+lQj
         vIdgT2ZdxxNhobCDF7EyxdrBR0g3nkDqYinDEGWOIzjEJWyj6J0pywwF5758biAFytAf
         OvbChf6ObIE2wmAiWHt5a2zTiegwSW6KSQq/qyFlHwYukqtbFCedIQxLAJ2GniL4Lpgp
         Q82A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739177801; x=1739782601;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3qZAR6HQzevf7HP1e1GO3il0u7RKGpdGvXgouvaT9OY=;
        b=ZSo2Q3/7IZaVoRJheAbVuhJiZT++0GZgHCBsByWpnIzHfCQK/OqnmFjjGbtyygRwt9
         +pHEHcu/iFlT5g1LuXbRmapb8AZHszsIHkzUw7O1d30Ft8qiwuIf8SfkYMyEUnoi4wk+
         xpBb08JBjGTiemWvOXcV7ZIXfsnxB8u4mMiHptqYkL/LZJ8XQnawXsv6CJlvE7mPOu2V
         MdLcs+uM7HwEOTGOLIK2kT5ovhRp22RxI3+4l+L7l4wwBxbL9rhZEyqPnBRYkYqxy/dH
         WnlzhRP1x8VP0HDllrfBDosIlT5wpbxyxJkn7simaFlfVTOSwELPQZA4ejamTqEdujmz
         ggzA==
X-Gm-Message-State: AOJu0YwSfPcAf64tIL0INlkUofwjHZScbY/PlOxtd8zYDE3kKsrhVzK3
	A5DOdC7neYUw9lmy17OU7xoHV/e6qdBsxOrX5G1mqHIQSC68jGFR
X-Gm-Gg: ASbGncsUh66l/eHfeEFePpxCr60qGtSEPtpINTxMUSauMhmmlUelMWAVk1s+bD73Nr5
	nwjMeCCFvfbGSe6i0gDHYgxgeegj9K3olBMKSRBjmVli8dfexSoEROx3JqWFXgYLrJBRuZcoy0s
	6P+71f98tALJPkU8xILWc+6I3qiXT2MvoTDuV6HqayAtGamCmXKPIY8UN2pBizVnekApwZw0c35
	HlOphB+IpSRTSV5NNScgqg+9kpCmzQKzv89Alxgp2KyfbZks6tHFtmdE6BnwpRb3Ug40PVXCKBC
	IDMqNxAp1m78yHWhcJcnb5z3PYA239SSLPYbODzQelPq02kzLlXO
X-Google-Smtp-Source: AGHT+IFEJAKQmao7B2gQSY/wkAkNQyDQGXSECbqhAFoNckq9uFmmPsUIqEL6Hu2H3nKUFcFmvEzTdQ==
X-Received: by 2002:a17:907:c15:b0:aab:dc3e:1c84 with SMTP id a640c23a62f3a-ab789ada5a2mr1146138666b.17.1739177800811;
        Mon, 10 Feb 2025 00:56:40 -0800 (PST)
Received: from [192.168.145.35] (p508aef01.dip0.t-ipconnect.de. [80.138.239.1])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7c9550012sm100132866b.95.2025.02.10.00.56.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 00:56:40 -0800 (PST)
Message-ID: <8058a323-1d7c-4af8-b030-8ad69999751b@gmail.com>
Date: Mon, 10 Feb 2025 09:56:40 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: man-page-6.10 make share/mk/src/sh.mk:16: *** unterminated call
 to function 'shell': missing ')'
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, sam@gentoo.org
References: <38f900b3-28f2-4854-bec3-5b79759eb5b6@gmail.com>
 <ytgxskuvjqldvv4amftqx27t4fh7lpw32nwyirjdxkeazduyxo@vfi5tfoa72h6>
 <26a527c3-f7dd-470d-8b19-c6ac45a33e7a@gmail.com>
 <eb65be1e-b885-442d-806e-ca209576ccbc@gmail.com>
 <5ajfvthbrexcmjd4trqvfaitnqrvfkyiabhvanm3gwga4y6g7l@qqrdmg6rd2qe>
Content-Language: en-US
From: Boris Pigin <boris.pigin@gmail.com>
In-Reply-To: <5ajfvthbrexcmjd4trqvfaitnqrvfkyiabhvanm3gwga4y6g7l@qqrdmg6rd2qe>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Alex,

as my email was rejected by the mailing list due to containing HTML part 
here is the second try.

  ╭─ 🐺 borisp@blacksun  bash 5.2.37  🕑09:46:35  🖿 ~ 🧬 📦 🐾1
  ╰ $ rm test/
rm: cannot remove 'test/': Is a directory

  ╭─ 🐺 borisp@blacksun  bash 5.2.37  🕑09:46:40  🖿 ~ 🧬 📦 🐾2
  ╰ $ rm -rf test/

  ╭─ 🐺 borisp@blacksun  bash 5.2.37  🕑09:46:44  🖿 ~ 🧬 📦 🐾3
  ╰ $ mkdir test

  ╭─ 🐺 borisp@blacksun  bash 5.2.37  🕑09:46:47  🖿 ~ 🧬 📦 🐾4
  ╰ $ cd test

  ╭─ 🐺 borisp@blacksun  bash 5.2.37  🕑09:46:50  🖿 ~/test 🧬 📦 🐾5
  ╰ $ wget 
https://kernel.org/pub/linux/docs/man-pages/man-pages-6.10.tar.gz 
 >/dev/null 2>&1

  ╭─ 🐺 borisp@blacksun  bash 5.2.37  🕑09:47:03  🖿 ~/test 🧬 📦 🐾6
  ╰ $ ls
man-pages-6.10.tar.gz

  ╭─ 🐺 borisp@blacksun  bash 5.2.37  🕑09:47:09  🖿 ~/test 🧬 📦 🐾7
  ╰ $ tar xf man-pages-6.10.tar.gz

  ╭─ 🐺 borisp@blacksun  bash 5.2.37  🕑09:47:17  🖿 ~/test 🧬 📦 🐾8
  ╰ $ rm man-pages-6.10.tar.gz

  ╭─ 🐺 borisp@blacksun  bash 5.2.37  🕑09:47:22  🖿 ~/test 🧬 📦 🐾9
  ╰ $ ls
man-pages-6.10

  ╭─ 🐺 borisp@blacksun  bash 5.2.37  🕑09:47:26  🖿 ~/test 🧬 📦 🐾10
  ╰ $ cd man-pages-6.10/

  ╭─ 🐺 borisp@blacksun  bash 5.2.37  🕑09:47:31  🖿 
~/test/man-pages-6.10 🧬 📦 🐾11
  ╰ $ make | wc -l; echo $?
/home/borisp/test/man-pages-6.10/share/mk/src/sh.mk:16: *** unterminated 
call to function 'shell': missing ')'.  Stop.
0
0

  ╭─ 🐺 borisp@blacksun  bash 5.2.37  🕑09:47:37  🖿 
~/test/man-pages-6.10 🧬 📦 🐾12
  ╰ $ make
/home/borisp/test/man-pages-6.10/share/mk/src/sh.mk:16: *** unterminated 
call to function 'shell': missing ')'.  Stop.

  ╭─ 🐺 borisp@blacksun  bash 5.2.37  🕑09:47:43  🖿 
~/test/man-pages-6.10 🧬 📦 🐾13
  ╰ $ bash -version
GNU bash, version 5.2.37(1)-release (x86_64-pc-linux-gnu)
Copyright (C) 2022 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later 
<http://gnu.org/licenses/gpl.html>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

  ╭─ 🐺 borisp@blacksun  bash 5.2.37  🕑09:50:38  🖿 
~/test/man-pages-6.10 🧬 📦 🐾14
  ╰ $ make -version
GNU Make 4.2.1
Built for x86_64-pc-linux-gnu
Copyright (C) 1988-2016 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later 
<http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

  ╭─ 🐺 borisp@blacksun  bash 5.2.37  🕑09:50:45  🖿 
~/test/man-pages-6.10 🧬 📦 🐾15


Best wishes
Boris

On 2/9/25 22:27, Alejandro Colomar wrote:
> [CC += linux-man@]
>
> Hi Boris,
>
> I realized the mailing list wasn't CCd.  I've added it to CC now.
>
> On Sun, Feb 09, 2025 at 09:40:16PM +0100, Boris Pigin wrote:
>> Bash and make
> Hummm.  I don't see why it would fail on bash and (assuming GNU) make.
> Especially if previous versions of man-pages releases worked well.
>
>> On 2/9/25 21:38, Boris Pigin wrote:
>>> Hi Alex,
>>>
>>> I'm on Funtoo.
> I've also added Sam James to CC, in case he knows anything.
>
>>> On 2/9/25 18:43, Alejandro Colomar wrote:
>>>> Hi Boris,
>>>>
>>>> On Sun, Feb 09, 2025 at 05:13:51PM +0100, Boris Pigin wrote:
>>>>> Hello Alejandro,
>>>>>
>>>>> I see here a problem with the man-page-6.10. If I call make I get the
>>>>> following error
>>>>> I downloaded the package from
>>>>> https://www.kernel.org/pub/linux/docs/man-pages/man-pages-6.10.tar.xz
>>>>> I don't see the problem with the earlier version e.g. 6.9, 6.9.1.
>>>>>
>>>>> '''
>>>>>    ╰ $ pwd
>>>>> /home/user/src/man-pages-6.10
>>>>>    ╰ $ make
>>>>> /home/user/src/man-pages-6.10/share/mk/src/sh.mk:16: *** unterminated call
>>>>> to function 'shell': missing ')'.  Stop.
>>>>> '''
>>>> Hmmm, I can't reproduce the problem.  Could you please run the following
>>>> commands?  Also, could you detail what's your shell, and what's your
>>>> make(1), and what's your OS?  Let's see if we can learn why that's
>>>> happening.
>>>>
>>>> alx@devuan:~/tmp/foo$ wget https://kernel.org/pub/linux/docs/man-pages/man-pages-6.10.tar.gz >/dev/null 2>&1
>>>> alx@devuan:~/tmp/foo$ ls
>>>> man-pages-6.10.tar.gz
>>>> alx@devuan:~/tmp/foo$ tar xf man-pages-6.10.tar.gz
>>>> alx@devuan:~/tmp/foo$ rm man-pages-6.10.tar.gz
>>>> alx@devuan:~/tmp/foo$ ls
>>>> man-pages-6.10
>>>> alx@devuan:~/tmp/foo$ cd man-pages-6.10/
>>>> alx@devuan:~/tmp/foo/man-pages-6.10$ make | wc -l; echo $?
>>>> 2965
>>>> 0
>>>> alx@devuan:~/tmp/foo/man-pages-6.10$ make
>>>> alx@devuan:~/tmp/foo/man-pages-6.10$
> Can you run exactly these commands?  I'm puzzled.
>
>
> Have a lovely night!
> Alex
>

