Return-Path: <linux-man+bounces-511-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF8A87011B
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 13:17:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ECD561C210D8
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 12:17:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64DF32BB10;
	Mon,  4 Mar 2024 12:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e1MTMoLe"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B051F3C07B
	for <linux-man@vger.kernel.org>; Mon,  4 Mar 2024 12:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709554648; cv=none; b=S3nag/wkkZPZZdTJKWd8Iw/vBdnsfSG++1/I6AfZhR3vHHO6GZsKR2QBds7OQ60gEFztXmMOLtBgC666LlCqLkKDDwhsMU9TkZNVG7rUqs0kTHv0ZGNwolihWY0Cy0fG/827eoodODENo+fhYRxpUHgDauSNoh+2Bx8OBTXgGvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709554648; c=relaxed/simple;
	bh=nef/MYxyB10PabMVgSra5KLeLMvtYyzRWdF4pr5hxrI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l8aovFJZtvbJFmuI8VLkNt1o1fhUhbsUYZsWyeklMZzZUIHe1P8Q22TV4RTsN4U45VQMUDiGA9Y6r6DXWASb7oRRQaYsSbW8jFZvB+Klyg/n6fK9bB2pU0YflOS8LwZUvXNKz0J402jsctSm86+b+8XgPNQK8M0P93cUZO2Hn2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e1MTMoLe; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-6e56d594b31so2139736b3a.1
        for <linux-man@vger.kernel.org>; Mon, 04 Mar 2024 04:17:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709554641; x=1710159441; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=eAJhPGwQZE9p0Rl21KdGiGpaSgF/H8lQWJ0uaosfR1Q=;
        b=e1MTMoLeZ7TZhGYeUE65wuxVzSe7ObfM6z8uMhadNocOUChk7rlNzGsstLwp2MioX3
         fqCcVMuc4apuJU/gkbaWHOXuBtj1hK5sjiV5hYsfWC/gLgoLDvswnnJUNKkSbK6Uwc7W
         Lz7Vdkm/2BCG++iRYL0uBZdwhacFq2v5kra+PC6Br2P5KOJalWwFfu/msKKs/HlafWBv
         EC/sWF07pDnmuud2cu5Ndvoz63wvWQuIdgW4mbnhIR2k/ygu7L5WsvxyDsoGt3KMn6tu
         DI1UizewSDL6fXXiz+O551MnduefMaade08HxILc9O18xOycZJ3ywyn+9j53xXYC1RKE
         CJzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709554641; x=1710159441;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eAJhPGwQZE9p0Rl21KdGiGpaSgF/H8lQWJ0uaosfR1Q=;
        b=gv0kv1ZfRaH7vaSEoqtjHyzIdyiAu42xOkFWFje9J5+9swJ2cSWS8gENGXk6Ilu0Pz
         3cAjwrjCkrXNnLZzty2+jCBROf8F7sup1RJZYUNGVIO+BPAU536yncaB6AaIsY/Yunl5
         dgZA7HkyBbAOEa9YlJSGFu5OFIjjK7DDrPNAVo5bOTFkg8Zz1uUnScxEajQAwwmXd0Zw
         /kNh7iiRWIxU6K28XjHKJ+H+kSNNK7AyCWSd3ZKaI4gzqn2MSVr8vUw3wTS/AKWvdqtr
         EhKEaqorqTi/nEar62NEvfXJQAKe5d41Y96tGDO0ZV/YJpJHJ0l/8pXHwWQ8b/v5+7i9
         WJxg==
X-Gm-Message-State: AOJu0Yy3vk666lYQa5FFvvwRsYcTMU4MtFyP1kYJOItEmvdXdvMVxCDf
	/eAqf+F0sH15Z1UCJA3kWpUW3Nj2Gbn/rMPgQrZnJsTgZegrpbuAF2A9B5+9u+s=
X-Google-Smtp-Source: AGHT+IEVypwxeFqGTJWRPHhHWxZQAXIYhRwa6bNAQAJy/O8DKHW6uGGKUyf0IrDX/so2fdAOuNtCWg==
X-Received: by 2002:a05:6a20:baa8:b0:1a1:4d4c:ca91 with SMTP id fb40-20020a056a20baa800b001a14d4cca91mr460972pzb.51.1709554641411;
        Mon, 04 Mar 2024 04:17:21 -0800 (PST)
Received: from ?IPV6:2804:1b3:a7c1:ec17:6807:fa0e:d54a:aeda? ([2804:1b3:a7c1:ec17:6807:fa0e:d54a:aeda])
        by smtp.gmail.com with ESMTPSA id a3-20020aa78643000000b006e0debc1b75sm7241322pfo.90.2024.03.04.04.17.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Mar 2024 04:17:20 -0800 (PST)
Message-ID: <354cee2d-6581-4f10-9c08-92c625a97b70@linaro.org>
Date: Mon, 4 Mar 2024 09:17:16 -0300
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Man page issues: logb, significand, cbrt, log2, log10, exp10
Content-Language: en-US
To: Morten Welinder <mwelinder@gmail.com>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org,
 jsm-csl@polyomino.org.uk, newbie-02@gmx.de
References: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>
 <ZeEnJB96mMC5bfBz@debian>
 <CANv4PNmMpiwfv5acr7U6VEVe7PE_AMTzkkpNoNN9jrtVzk_93Q@mail.gmail.com>
 <ZeOgFPCtzqY90kIR@debian>
 <CANv4PNm0xvB-GVb+z1yXPRVfeZYHU9533+VRTQfysjaycSbHBw@mail.gmail.com>
From: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Organization: Linaro
In-Reply-To: <CANv4PNm0xvB-GVb+z1yXPRVfeZYHU9533+VRTQfysjaycSbHBw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 02/03/24 23:02, Morten Welinder wrote:
> Thanks.
> 
> There is (was?) already crlibm out there.
> https://core-math.gitlabpages.inria.fr/  No particular need for wheel
> reinvention here.
> 
> FWIW, it appears that the author of the glibc exp10 implementation
> agrees with me that the implementation is sub-standard:
> 
> https://codebrowser.dev/glibc/glibc/math/e_exp10.c.html

This code was not used by any port and we recently removed to avoid this
very issue [1]. The exp10 implementation used by all ports
is at sysdeps/ieee754/dbl-64/e_exp10.c (i386/m68k are exceptions and my
plan to eventually remove this implementation in favor the generic
one [2]).

And the exp10 implementation was recently improved [3], with the
author suggesting the worst-case error in round-to- should be
nearest to 0.513 ULP (I am not sure if he did some empirical testing
to verify this value, at least with libm-test-ulps the resuts are
bounded to 2 ulp max).

> 
> /* This is a very stupid and inprecise implementation. It'll get
> replaced sometime (soon?). */
> return __ieee754_exp (M_LN10 * arg);
> 
> 
> Compare with musl:
> 
> https://github.com/rofl0r/musl/blob/master/src/math/exp10.c
> 

[1] https://sourceware.org/git/?p=glibc.git;a=commit;h=9c61303ebbdc6e727c89591bff3229c9fbfa438b
[2] https://sourceware.org/pipermail/libc-alpha/2024-January/154107.html
[3] https://sourceware.org/git/?p=glibc.git;a=commit;h=63d0a35d5f223a3f4b68190567b7d4d44545bce5

