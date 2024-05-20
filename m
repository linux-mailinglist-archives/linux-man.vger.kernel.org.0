Return-Path: <linux-man+bounces-941-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B7C8C9C23
	for <lists+linux-man@lfdr.de>; Mon, 20 May 2024 13:36:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 25F181C21E2D
	for <lists+linux-man@lfdr.de>; Mon, 20 May 2024 11:36:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E37E535C9;
	Mon, 20 May 2024 11:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QkqqF4uK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFF754669
	for <linux-man@vger.kernel.org>; Mon, 20 May 2024 11:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716204955; cv=none; b=QnUNglYnwg/LTaBK50VkEVx4RAIQ9F7V6uO69x0AiQ4r0Ld+Uur6p4eUwae4ejOxO2qyiFOwEqOyovG/Ro8Aw1d/6gJjGnAlwK9boJQ6b1rVxquB+8DVjyw2rfVWCUs4Sy3QPvX5VRzMI7iapztvVU5N7ugXeynRuCUmxDQautA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716204955; c=relaxed/simple;
	bh=kjErZZpCdT2IbGMrfZxh7iw294iWMBYSHNXXc4D/STQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nhN8VSkgfEPu7z6IO4McWmLjgdpVBHVUWi6FumDy6h7RT+EWSlcZwR90bie0KYL0ne1lLbP4+hs7PcpW0+vnABD/D0Xj8n5KLcUAHzbqmPPGSckmN/vJ8eVAJyLThy8m4etLWFVyD577D1In4j04jLNd+d4Wo98Hsq4rT+pLMAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QkqqF4uK; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-6f44a2d1e3dso146257b3a.3
        for <linux-man@vger.kernel.org>; Mon, 20 May 2024 04:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716204953; x=1716809753; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=cMPWfHH5/di8b72YvEimaoA7fb1j/pwahYrDlVszN3k=;
        b=QkqqF4uKRsWDKtwtXo3NHcIjFS12Jpxfte9kQcDjA9O51LOSVYFSZIN4hZSOY8dBbd
         JeQTafrcw7Dvbd3ZzDxCTeEwDsElusC4o6wCe/mM97tQyWgfWxMTZ7GyYayLqUnXVlAp
         e4+AoLZQs6F+AhfjMtsMvISmHh3lNb4ZsXhr9WfK3dSrz2sa4p4AnV6u6EqZJiYa/pAr
         apdGuHhWcnD8LlYy3vu9dEsxVNTthZ5l7tBhm7hndbqrKS5Lrvdw2y/U1K++K20RR48x
         29ncPM7vZSEaQ/1NBELOX+Kzr7T7YzGKOAqu1yj8//opoMLCLsETt7y5J5MsQBQmnAlv
         ag6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716204953; x=1716809753;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cMPWfHH5/di8b72YvEimaoA7fb1j/pwahYrDlVszN3k=;
        b=ltwJn594giR7oBCEnBmN+MZ794yaOCakxb+X6KNOtyNsZ3bNthjRxnA9JW3s3afZt4
         CMrT+mVf3Yad1VZ95P3fuT3i5Toxks7kwXVoTnhtmitjYJnASTzgbsedsXtEWlvApM66
         bu4X9woy6UWw2HY2T1USLpe8hr5viDrHEeYo/Uly/7yvJGTje4BlEZlb3FRjo8GReeW/
         NnoH6kyDrw/sqwBNKlIcMxtP5+AxSdpvNeYIojrTq+NOCK+5VG9+frwkdlgtrzpxpKHz
         ZJAotr7sVaq/PpS+GF1G69RxMyM7Y80HbZKL34UpLlA29FL6LyTI3zfM4FIhh3O9D7Qt
         WO+Q==
X-Gm-Message-State: AOJu0YwRgauEifbjOXWCYZg4PzcaQsWkkc46tYy5z110RE2ppkkI+oON
	ToS23RlH3VktwSyUbH7adK++UqIlRRYdzZ06YdjV8l/HukIHOxk7Q3EV7pDiiZo=
X-Google-Smtp-Source: AGHT+IEY7boouN5jG4ZC1pktW5UqinMDH5VaIrLv5Sdy70+79h+DhN64hw1NLaa1JP0C25Hd6bqVHA==
X-Received: by 2002:a05:6a00:174c:b0:6f4:5504:59b6 with SMTP id d2e1a72fcca58-6f4e038300cmr31893484b3a.29.1716204953352;
        Mon, 20 May 2024 04:35:53 -0700 (PDT)
Received: from ?IPV6:2804:1b3:a7c2:f76a:4d8e:551e:8ee4:7221? ([2804:1b3:a7c2:f76a:4d8e:551e:8ee4:7221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2b2f8b3sm18908190b3a.211.2024.05.20.04.35.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 May 2024 04:35:51 -0700 (PDT)
Message-ID: <2c45b22d-7800-4c53-b145-3ca1944c0c02@linaro.org>
Date: Mon, 20 May 2024 08:35:48 -0300
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: pidfd_open.2: PIDFD_NONBLOCK is not defined by the listed headers
To: Alejandro Colomar <alx@kernel.org>,
 Emanuele Torre <torreemanuele6@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <ZkrZb91EgZoaOybZ@t420>
 <e4avr4d44fpkqtby6i53qthlkvhvum7fxkq63hkmuqtqgougyr@cropbgglzx2a>
 <5j4gyoh75xrmuljl3dlobviroi3huhriufk6gzcwsyeibupov3@lpmy4moyjjhn>
Content-Language: en-US
From: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Organization: Linaro
In-Reply-To: <5j4gyoh75xrmuljl3dlobviroi3huhriufk6gzcwsyeibupov3@lpmy4moyjjhn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 20/05/24 05:53, Alejandro Colomar wrote:
> Oops, I mistyped the glibc list.  Below is included the original email.
> 
> ---
> 
> On Mon, May 20, 2024 at 07:02:39AM GMT, Emanuele Torre wrote:
>> Hello.
> 
> Hi Emanuele,
> 
>> pidfd_open(2) only lists sys/syscall.h and unistd.h in its SYNOPSYS:
>>
>>   SYNOPSIS
>>          #include <sys/syscall.h>      /* Definition of SYS_* constants */
>>          #include <unistd.h>
>>
>>          int syscall(SYS_pidfd_open, pid_t pid, unsigned int flags);
>>
>>          Note:  glibc provides no wrapper for pidfd_open(), necessitating
>>          the use of syscall(2).
>>
>> Then it mentions PIDFD_NONBLOCK as one of its flags:
>>
>>   PIDFD_NONBLOCK (since Linux 5.10)
>>          Return  a nonblocking file descriptor.  If the process referred
>>          to by the file descriptor has not yet terminated, then  an  at‐
>>          tempt to wait on the file descriptor using waitid(2) will imme‐
>>          diately return the error EAGAIN rather than blocking.
>>
>> But PIDFD_NONBLOCK is not defined in any of the listed headers.
> 
> Hmmm.  Thanks!  We need to add its header.
> 
>> I have noticed that PIDFD_NONBLOCK is the same value as O_NONBLOCK,
>> so perhaps this flag could be listed as
>>
>>   O_NONBLOCK or PIDFD_NONBLOCK (since Linux 5.10)
>>
>> like O_NDELAY and O_NONBLOCK in open.2.
>>
>> This way the user would know that O_NONBLOCK may be used instead of
>> PIDFD_NONBLOCK if PIDFD_NONBLOCK is not available.
> 
> No.  That's an implementation detail, which shouldn't be abused.
> 
>> I have also noticed that GNU libc (in its linux-api-headers submodule)
>> provides a linux/pidfd.h header that just defines PIDFD_NONBLOCK as
>> O_NONBLOCK, perhaps another solution would be to list in linux/pidfd.h
>> in the synopsis and say it is required to use PIDFD_NONBLOCK.
> 
> Yep, that's the kernel uapi header.  I didn't know glibc redistributes
> those.
> 
> Anyway, we should indeed include <linux/pidfd.h> for this macro.

The glibc provides the pidfd_open, pidfd_getfd, and pidfd_send_signal
since 2.36 [1][2][3], and pidfd_getpid since 2.39 [4].  It also provides the
pidfd_spawn and pidfd_spawp [5], which are similar to posix_spawn, but
return return a pidfd.

> 
>> Then, I also noticed that GNU libc now also provides the sys/pidfd.h
>> header with the definition of PIDFD_NONBLOCK, and prototypes for
>> pidfd_open, pidfd_send_signal, pidfd_getfd, and also a prototype for
>> pidfd_getpid that is an helper function that parses the "Pid:" field
>> from /proc/self/fdinfo/FD and currently does not have a man page.
> 
> Hmmm, I've CCed glibc for a question:  When you provide a macro like
> this one, without providing a syscall wrapper, should we include the
> glibc header or the kernel one?  Do you provide all kernel uapi macros,
> or just select ones?

For pidfd function we decided to add the function on sys/pidfd.h which
is a distinct header.  Maybe we should follow other kernel header 
integration and include it if existent and only define the required
macros if not existent (like we do on mount.h). 

> 
> As far as I understand (I have never tried to use it in a program),
> 
>   pid_t pid = pidfd_getfd(pidfd);
> 
> Is equivalent to the following command in shell:
> 
>   pid=$(grep -Pom1 '^Pid:\t\K.*' proc/self/fdinfo"$pidfd" || echo -1)

Yes, and it sets errno depending parsing and 'Pid:' value (you can check
on the pidfd_getfd documentation on glibc manual).


[1] https://sourceware.org/git/?p=glibc.git;a=commit;h=97f5d19c45799e3abedef771430b5562f1b8764f
[2] https://sourceware.org/git/?p=glibc.git;a=commit;h=32dd8c251a431c90451092653f0231a4ad2665e5
[3] https://sourceware.org/git/?p=glibc.git;a=commit;h=56cf9e8eec3bdc0ce44efeda373de9d6b825ea1e
[4] https://sourceware.org/git/?p=glibc.git;a=commit;h=e7190fc73dbc8a1f8f94f8ccacd9a190fa5e609c
[5] https://sourceware.org/git/?p=glibc.git;a=commit;h=0d6f9f626521678f330f8bfee89e1cdb7e2b1062

> 
>>
>> So probably the best solution is to just make the pidfd_open(2),
>> pidfd_send_signal(2), and pidfd_getfd(2) man pages tell users to include
>> sys/pidfd.h and call the GNU libc functions instead of including
>> sys/syscall.h and unistd.h and calling syscall(2) directly; now that
>> sys/pidfd.h exists.
> 
> Ahh, interesting.  I'm using glibc 2.38 and still don't have that one.
> It seems added in 2.39.  We can directly document that in
> pidfd_getfd(2).
> 
>> And maybe to also add a pidfd_getpid(3) man page for the new pidfd
>> helper function.
> 
> No, usually we document the glibc wrapper in man2, unless there's a big
> difference between the kernel syscall and the glibc wrapper.
> 
> Thanks for the detailed report!
> 
> Have a lovely day!
> Alex
> 
>>
>>
>> o/
>>  emanuele6
> 

