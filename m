Return-Path: <linux-man+bounces-1916-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B20169C9074
	for <lists+linux-man@lfdr.de>; Thu, 14 Nov 2024 18:05:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4FF44B30FEA
	for <lists+linux-man@lfdr.de>; Thu, 14 Nov 2024 16:27:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FF2C14A0B8;
	Thu, 14 Nov 2024 16:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l+MGcUyj"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27108181334
	for <linux-man@vger.kernel.org>; Thu, 14 Nov 2024 16:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731601481; cv=none; b=A8LC8X5kC7PgzNikIjeul88i+zRRySCbA4owaXsuu55Dcw8fXAK6m2b+LEoXzt0sgPOn3DKr4POu1k5wPr+9QTNHAR+D03SBk5JPNOBaQCdQwTy1leOCQFkDaDJBbYbD6CTQGisNeIQ6ElwoMlJT3yZ2ppQv2hSspZTJcOwSGnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731601481; c=relaxed/simple;
	bh=LMLTDDBeanZO+g3esx1zGri1uBkcN4LLiaK3ZRUwpvA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M3dtYPP4MEdZ8/tWfw3d2bj1sRd9sLYsOhRsLjOJsC7ys/AimqyduBSt3HKo/0Ft46A+ijZypAh4y0hq8Tfes81lkwAei+OLRwZn4N2Q4pNzoSLO4Dfa0EYHRQA5RObXTvBBN4RzmBOaFdUJ9ZygpgjgWVZSeeXx5DyD1/UJEnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l+MGcUyj; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-539f2b95775so1122299e87.1
        for <linux-man@vger.kernel.org>; Thu, 14 Nov 2024 08:24:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731601478; x=1732206278; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ttBTyUM/O4bqPlqBUfmL70W9C/xta6I8RNJcjRK+qmA=;
        b=l+MGcUyjaw1+TMCUcH7iAioipdX9DZzaXM7zaRojkJemAGPd11GGuEZxreDAPu5WLl
         nTnhBKJXbCefWLWU96C9BEGD4SJyH0aziuLY22Ba1ZK9D02yMRrhgsfTlEOljGSSH82M
         H2JVrWu1Vl9CZ86s2H49U8zF7Hcyo8+kd8WF/wJbqWLuEaCtwWsg3of21DEENJTbTwp8
         cTW8e9mbkZk3uci2g4O6F83ozpJs9B5nBFqyjqkTLiN4SiZDrlSPxMDk/Mes+4bi05Ka
         2vULC47ItZtZp2tG31xpSIZwxlm4kHgXdb5GCMckKsynNKV5rNYjDp7WLGIomy/jXemY
         z9bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731601478; x=1732206278;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ttBTyUM/O4bqPlqBUfmL70W9C/xta6I8RNJcjRK+qmA=;
        b=G6PQxsP+jd4/s3rWPyAIr3p5T7ZVopceS0MHhP2CjFTDlcXIa/njgwNqIfg9VZr9yr
         WXOYdPfyTqQb38xCF5H74IIrvkxuZj2Y4ObUKmE60fo/eeEHMhBsfyvXo7jEo8PTHejv
         TrFNhGhl06HXNspabDHcWwbNmCxAzBhcKJMctPgXahJ+9mLjE/HLa9zpJemEjJSsQHVm
         vtMHWgyIPsLNtjMPjB1UEj/sBUhVmhaoupsKd1OhqL8Jk2MuTCRJ23ccMBalg9gtJayw
         Z2wifWg6R7hAoRPUcs9WfdI7TCitopk5r64Wev13grvAaqoLsMvptlDseCrYncD0Nzy+
         sXPQ==
X-Gm-Message-State: AOJu0Yz+OiQsw4Avs2KrVs7VkxJLlDP2lHBBATc9FVX5gZWo/clP02Cj
	ROU2qZ3klVMFhIbcQr0A3LvS1yYPZJ+CuwmYtQ/T9pYsnALkOhr7cH0/BL+G
X-Google-Smtp-Source: AGHT+IF/MMDebLrCxZ7SQmXQmOCaNKqINEzednzM9hpj8hRJ+fSW+CRwe2zhPRr4GxPGmXwCin0p4w==
X-Received: by 2002:a05:6512:281d:b0:530:ab68:25c5 with SMTP id 2adb3069b0e04-53da5c27958mr2316843e87.2.1731601477933;
        Thu, 14 Nov 2024 08:24:37 -0800 (PST)
Received: from ?IPV6:2a07:b944::2:2? ([2a02:6ea0:1703:5033::24])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20df56962sm79206866b.78.2024.11.14.08.24.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Nov 2024 08:24:37 -0800 (PST)
Message-ID: <7e0401be-0435-4c76-a987-0ef833483cbe@gmail.com>
Date: Thu, 14 Nov 2024 17:24:36 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: lfind(3) $3 type should be const
To: Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org
Cc: linux-man@vger.kernel.org
References: <dhl6sjfzoeezrefjsjt4igcn3jlqxvvbrz5uozxjmmmskxse6l@qtfpmwhgfiod>
Content-Language: en-US
From: Gabriel Ravier <gabravier@gmail.com>
In-Reply-To: <dhl6sjfzoeezrefjsjt4igcn3jlqxvvbrz5uozxjmmmskxse6l@qtfpmwhgfiod>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/14/24 3:38 PM, Alejandro Colomar wrote:
> Hi!
>
> lfind(3) does not modify its third argument, *nmemb.
>
> It's already suspicious that it takes a pointer, but I guess it's due to
> historic reasons, and that's already set in stone.
>
> However, I don't see why we should not make it 'const'.  The function
> doesn't use it as an output pointer.  Should I sent a patch for
> constifying it?


I believe the reason is that it aims to mirror lsearch, and to be able 
to be used with it interchangeably as a function with the same type - 
doesn't `const` make the pointer types distinct and incompatible ?

I'd imagine it's not even used much at all elsewhere given how simple it 
is and how cumbersome it is to use compared to an directly inlined 
implementation. That is, I think making it non-const might just happen 
to break a majority of uses of it.

The only way to plausibly rectify this, I think, would be to make the 
compatibility implicit in the standard for any similar function (in the 
same way one might like to make it standard to e.g. pass a pointer to a 
pointer to const char to strtol).


>
> Have a lovely day!
> Alex
>


