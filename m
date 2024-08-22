Return-Path: <linux-man+bounces-1648-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1019695B4E6
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 14:21:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42D451C2093D
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 12:21:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0E75178372;
	Thu, 22 Aug 2024 12:21:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MSAeZuig"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED4426AF6
	for <linux-man@vger.kernel.org>; Thu, 22 Aug 2024 12:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724329297; cv=none; b=eddXX9f3T4mNltBo4ncZhIhc7ampuvc+OnTLIxQ/cBSZ5TFxUh8GEqTA/YFZ5lt1UF2JFR/lpoxP1/FVLTrYIRauvLBZULwGAG5BgSedfjRlYFw7PQ4KGloM55Ck73HRAEL7T2SAC8P3qae3053M9jy9b9OWVmBBNTRqj+spHu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724329297; c=relaxed/simple;
	bh=yv6nOf/zfzOGHISS64HB7PNsuL/p96CG4TReq1Wu7/8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ClUTKRrJ5asDgyfW8YTOh51DS/pLOK08MkMiDMwg9cYXvcrELD/XylkZKnQbGe6pXJXzNClkukBu9F2FTRR9IgSZNZ5PC4RWskgRw0EXZLNLiutFaI1QbvvWuM0l7GFO0u4RuMk4mqL3mHEj5AUnTiyDPTmOa2QmFHA2KEO9Rr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MSAeZuig; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-202146e9538so6585735ad.3
        for <linux-man@vger.kernel.org>; Thu, 22 Aug 2024 05:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724329295; x=1724934095; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=LF/RcuBjWdjD/SHLeChgq531PBJRaiWaSVV/ScfCtDc=;
        b=MSAeZuigxsYfefG5WMS1nv1EUFqKERBEaDTDCeTKqxuPfcoirGDI7Bttln9ouktlAD
         w1gIY4q25sRhAaQDsnnVWeCg3xOQhAp0jdl3p6su7pDlRapSE9Mt0xHYM82eOoI8xV6q
         BcPjGiw+5mZdp6mByS26yPerN7ctoMIfVRXMcHHBKZj30ZAwAqayGlp28RLdkTxtwhWa
         0INOOv6GMGNEeDplPMV7fsTvE43PEJblqvzcJskoIWt+XVhjXHtld9L3NyGcWZGIcotw
         oGrQI4Kyo+f75f37Z7HB2wlW2soLTCKrohUERqB36kWgoXackmOvJFI5tkajIU/Rnsm6
         qORA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724329295; x=1724934095;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LF/RcuBjWdjD/SHLeChgq531PBJRaiWaSVV/ScfCtDc=;
        b=ZxMBiVUDSMIH0Ne0YaAWj/6hdQs68eNr/JSjXLZvU7LFPTsyR8+5ByQD+pNmbNmjZW
         O8IPkriqP52A6Wtn329TRP4B+R9YYc77Jr5pivFMOEFBI1ocSI9p+sURelSHWlh9Zkfp
         LEXUEXXHnGWZKKHC2okvuJBf2rO7A6eTaKU7IMvxyOcBbm/NLC7rgHF99qGNkKEBGR/s
         z8HT2JFA5lpdWbeV9HaoSCvq1SCL00oEJNVhUytA1GOB2sfqbdzOuQW9dWrjXHrDfSkM
         AP7ughtrCiSIeHyMwEo+IsKXuHrwH6voJ1JCrMBpxj9+qb7dm0sV3WI0bOpklZHXIR6s
         kYLg==
X-Forwarded-Encrypted: i=1; AJvYcCUdBrmRdwt6L8/vKzuovSEAtCzODVZ/dxtpQr1D/MXZIYGflPVpi0gX6UIe7xoHBecPCJ/Yqu8JpgM=@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5Ms1YgaGILqzKAWWU7iqCzGtDB0+C0wuEONBfKPclQ0GbWZ4H
	u9hfDRiQwbXFs9qz3+SuYoIe83YsGi+bM4UpjtIVN2y88T/TUh/6wpKtpD1YIqe6vm3HLk4YG/e
	w
X-Google-Smtp-Source: AGHT+IGAs/IsIdo95++meLknLKM2hoTVy4yxdrusmlx0fG9l37+Tuc+tqbw9NYx/ccWawibCSGQNCg==
X-Received: by 2002:a17:902:ed82:b0:1fd:96e1:801e with SMTP id d9443c01a7336-20388cfb77amr15674185ad.51.1724329295115;
        Thu, 22 Aug 2024 05:21:35 -0700 (PDT)
Received: from ?IPV6:2804:1b3:a7c2:d053:dcce:7860:767:d035? ([2804:1b3:a7c2:d053:dcce:7860:767:d035])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20385be048bsm11424965ad.263.2024.08.22.05.21.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Aug 2024 05:21:34 -0700 (PDT)
Message-ID: <a580c3e7-2489-445d-8ea0-cbac245092a7@linaro.org>
Date: Thu, 22 Aug 2024 09:21:31 -0300
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: arch_prctl()
To: Alejandro Colomar <alx@kernel.org>
Cc: enh <enh@google.com>, libc-alpha <libc-alpha@sourceware.org>,
 linux-man <linux-man@vger.kernel.org>
References: <CAJgzZoq7rTQ5mQm9JzSkeGJ8fqu1aDw0BfQnUqs4F24YuxV0Wg@mail.gmail.com>
 <937dcbd1-69c3-48ba-ada1-6b25e5381672@linaro.org>
 <CAJgzZoq+PgP71mP3XBnJsiD_wr58Z-7mAix7NxBWV2K_=0cxKA@mail.gmail.com>
 <CAJgzZorYAxxxa0+RFz706ip1J97hz0oDz32et_FONMu-bLpeKQ@mail.gmail.com>
 <138cac72-3ec9-42c0-9c1d-982aae975fc3@linaro.org>
 <xryntaw4ltavijpf7ejf4v7uhvwfp2lytgfzeablezxlvex4ky@yfkfhw7jtzch>
Content-Language: en-US
From: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Organization: Linaro
In-Reply-To: <xryntaw4ltavijpf7ejf4v7uhvwfp2lytgfzeablezxlvex4ky@yfkfhw7jtzch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 21/08/24 16:41, Alejandro Colomar wrote:
> Hi Adhemerval, Elliott,
> 
> On Wed, Aug 21, 2024 at 03:19:02PM GMT, Adhemerval Zanella Netto wrote:
>> I would use either the kernel interface: 
>>
>> arch/x86/kernel/process_64.c
>> 961 SYSCALL_DEFINE2(arch_prctl, int, option, unsigned long, arg2)
>>
>> Where is seems to what most caller do, or maybe something like:
>>
>> union __arch_prctl_arg
>> {
>>   unsigned long addr;
>>   unsigned long *vaddr;
>> };
>>
>> int arch_prctl (int option, union __arch_prctl_arg *arg);
> 
> Or you could use a transparent union:
> 
> 	$ cat arch_prctl.c 
> 	union __attribute__((__transparent_union__)) __arch_prctl_arg {
> 		unsigned long  set;
> 		unsigned long  *get;
> 	};
> 
> 	int my_arch_prctl(int op, union __arch_prctl_arg arg2);
> 
> 	int
> 	main(void)
> 	{
> 		unsigned long  u = 0;
> 
> 		my_arch_prctl(1, u);
> 		my_arch_prctl(1, &u);
> 	}
> 	$ gcc -Wall -Wextra -S arch_prctl.c 
> 	$ 

Although we do use __transparent_union__ we have to still handle very old
compilers:

socket/sys/socket.h

 51 /* This is the type we use for generic socket address arguments.
 52
 53    With GCC 2.7 and later, the funky union causes redeclarations or
 54    uses with any of the listed types to be allowed without complaint.
 55    G++ 2.7 does not support transparent unions so there we want the
 56    old-style declaration, too.  */
 57 #if defined __cplusplus || !__GNUC_PREREQ (2, 7) || !defined __USE_GNU

I guess this is not really required anymore.

> 
>> And for constants, it would require a x86_64 specific sys/prctl.h header
>> with either the has_include tricks to include the kernel one or to just
>> copy the kernel one (along with possible a test to check the sync with
>> kernel definitions).
> 
> I think including would be simpler, if it's possible.
> 
> I've seen some problems arise from copying kernel stuff in glibc
> headers, such as being unable to include both a some kernel and some
> glibc headers in the same program due to redefinitions.
> 
> 
> Have a lovely night!
> Alex
> 
> 

