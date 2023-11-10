Return-Path: <linux-man+bounces-8-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DF57E7EF9
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 18:48:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46BEE281A07
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 17:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 296D121A1F;
	Fri, 10 Nov 2023 17:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jguk.org header.i=@jguk.org header.b="AyCQIjLm"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 913303B29F
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 17:46:50 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C644A5E9
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 03:06:48 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40859c466efso13711335e9.3
        for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 03:06:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1699614407; x=1700219207; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D5fxKb0h6GfVCcvhlT/egQ3j3WAvxElS/dene/XITCQ=;
        b=AyCQIjLmvdof5hlKsZwDRLF+oAkFa5lDuRjoVZncNoSBbZ/FMrrIGzk5pPIm99cZEx
         dudqFzd7veXiHH1OkZcL0J/ZuRFrhYW89uVG+wD1AyCp3jOIjXy+jy7QEfmix+f9p+B4
         IL6KduEqIWDxW6YOCI3l1SSBkjhSMOP9m6JacS7VBBAcwBJ2in6F+9WI2869ONGpoUax
         gIpINnMOW8Tevn77xljAQs7Up/R/bIiYJ7mCt2+eOOnWbgUY40Rl9jt0dHoZ5Me6LFeC
         1wLH0BAyH+FHdkc9n/WlgCSO6t2Hs2ByicHK73UN199ohMwXpfUkmxkHIlkxDgWJcVRE
         TwZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699614407; x=1700219207;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D5fxKb0h6GfVCcvhlT/egQ3j3WAvxElS/dene/XITCQ=;
        b=e9W7665D+X7iAPvogUTiRiA3v5xcH91K1Pr9ANnu8QJ5dCnd5w9dK/masiE5hLZ8BN
         Q1S2lz5P15HIByKzJqBC9j+/s5C+2DIS8AYc51VPqycntJD2yXGGpEQfTra/K2VBJ9Q5
         6YFBI38XmRuL+X2BZacKiHLLe+T3ZDuz/c15L9eMOo2ty0R5r0n7/3OABGbd4Q0mj/7H
         NPNrclINEhf4fO2MNAKMAfbDiKUoK3wa015/1u2HN7RGx8DGVNYI+xYe7xAf6NL06cD5
         DpQqPeQmffqZRuQElLcpeFqcpn1bWaMNIKSo4ZOAPbs7hOUdFy0c60rADwOdfCqxrko/
         SwVA==
X-Gm-Message-State: AOJu0Yxgr8Ap7B8VcW6nJtXtFuUej9FjOqrWbssXc+6TSXZ5Fbu2L4Xt
	OMZE17dSlxsfaHLKrO25EKiPdPZaj70o9/AHafQ=
X-Google-Smtp-Source: AGHT+IHMfnaJKbRPnYfaf2oWVZ1i+lySMn6mA6mw+NYzqyC5sHGvmFpfQIFn5DsoxT5oAyxB51AAhQ==
X-Received: by 2002:adf:f84d:0:b0:32d:a4c9:8ab4 with SMTP id d13-20020adff84d000000b0032da4c98ab4mr5349834wrq.65.1699614406827;
        Fri, 10 Nov 2023 03:06:46 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id h8-20020adffa88000000b0032d9337e7d1sm1682034wrr.11.2023.11.10.03.06.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Nov 2023 03:06:46 -0800 (PST)
Message-ID: <766ffee7-bd3d-4463-9b68-0c4e0814419f@jguk.org>
Date: Fri, 10 Nov 2023 11:06:45 +0000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: strncpy clarify result may not be null terminated
Content-Language: en-GB
To: Stefan Puiu <stefan.puiu@gmail.com>, Alejandro Colomar <alx@kernel.org>
Cc: Matthew House <mattlloydhouse@gmail.com>,
 linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian> <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian> <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan> <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian>
 <CACKs7VDsTdSNwbC6+2LtQ67J_eJiD814xkw2_5XM1Q=iMjLXJA@mail.gmail.com>
From: Jonny Grant <jg@jguk.org>
In-Reply-To: <CACKs7VDsTdSNwbC6+2LtQ67J_eJiD814xkw2_5XM1Q=iMjLXJA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 10/11/2023 10:40, Stefan Puiu wrote:
> Hi Alex,
> 
> On Wed, Nov 8, 2023 at 9:33 PM Alejandro Colomar <alx@kernel.org> wrote:
> [.....]
>> strncpy(3):
>> CAVEATS
>>      The  name  of  these  functions  is confusing.  These functions produce a
>>      null‐padded character sequence, not a string (see string_copying(7)).
> 
> I'm a bit confused by this distinction. Isn't a null-padded sequence
> technically also null-terminated? If there's a '0' at the end, then
> it's a string, in my understanding. Or was the intention to say "a
> character sequence that may be null-padded", where the case in which
> there's no padding at all being the reason for the distinction?

This is a null padded sequence of characters in an array:

char buf[4] = {'a', '\0', '\0', '\0'};

I'm sure we are all well aware from this long email thread, strncpy is designed to fill fixed sized arrays, and pad with NUL bytes '\0' if any space left. Otherwise, the array buffer is left not padded.. there in lies the trouble, a possibly not terminated sequence of characters. Someone thought saving the extra byte was a good idea. It would have been better if that programmer had crafted their own local function rather than put out the strncpy function which is similarly named to strcpy(), they could have called it copy_to_array_nul_pad().

// a not terminated array - using printf, or strlen will carry on reading off down the memory until it finds a NUL byte '\0', perhaps reading out side the addressable space of the process, causing a SEGV.
char buf[4] = {'a', 'b', 'c', 'd'};

Hope that helps.

Kind regards, Jonny

