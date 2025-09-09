Return-Path: <linux-man+bounces-3850-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFD1B50530
	for <lists+linux-man@lfdr.de>; Tue,  9 Sep 2025 20:26:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 13E991BC864D
	for <lists+linux-man@lfdr.de>; Tue,  9 Sep 2025 18:26:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F4FF352FFE;
	Tue,  9 Sep 2025 18:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="J1ye9cgb"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFD235CEDA
	for <linux-man@vger.kernel.org>; Tue,  9 Sep 2025 18:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757442379; cv=none; b=PW/MvftFqE+Dt66XwY/yYrR6Ffpu3QOUx1dUHmocXWRIDpHPIBFXym9G8kkxOpLt/6whdR9LIY9mkcXMCbggNMRdDrJZjT72uAf9bmA4DTweI+14yX6ofISD2wZBFK9xZxLEpUrc1FsnBz8k6TDsH1U/fnWil/NJfCw9sRszqE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757442379; c=relaxed/simple;
	bh=BgxMx/CPQ3WcUD2g5HxDlr4vDRKwXGvPahD4bAKLIU4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JJxp1bVFmPD+ywSojKoJplsq9NLNo0RFBLi2KF2PEcbkL42Xq9O4NJHG0dRrRxLPV6u/RVGI1jvScviM/P9hiBqTvYfGh7Bb5MQ/t2yurFQC+EySCjMdVLmjZshb15OgF95fnGdv0buf2c5nv5GVdvtpzE/heD4GtALAdxB2V98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=J1ye9cgb; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1757442376;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=bJaRH1pcZeCvHLNuoma/bnk6A6sOpxnuBD2jOfT3U4Y=;
	b=J1ye9cgbhHU8tPZEMC8b4LdVc4icyNjTzxn9d8Zn093oJFlyQcRz6FTK9pWuH5I+BLG7l9
	b8l414mJsIlrEE0eNLd9fXax9unY6FzAbQ5cKleMH+Yz2bE2hRya1NlGfWLWIAuqiWD8ka
	XBjHUmbz7CgCZFs19iVpq4k/5x2Pkhg=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-264-LDBMMVywN3a_riX2fHj8bQ-1; Tue, 09 Sep 2025 14:26:14 -0400
X-MC-Unique: LDBMMVywN3a_riX2fHj8bQ-1
X-Mimecast-MFC-AGG-ID: LDBMMVywN3a_riX2fHj8bQ_1757442374
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-7585b6deccaso15479556d6.0
        for <linux-man@vger.kernel.org>; Tue, 09 Sep 2025 11:26:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757442374; x=1758047174;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bJaRH1pcZeCvHLNuoma/bnk6A6sOpxnuBD2jOfT3U4Y=;
        b=Z/dDyAS4v7BHvbAeFoTLNfUx4cSH0Qze03TgCboLiduyDLDxApTTuMBbRnKwUqD4CK
         AKmttMcrVoTKFFSR0kEtkRZ2c3OdO79rKIZmNh2BAvStqhlVfgN6x8zGaHGWcGUwbRZn
         em7InxhgwX71lWLYzHwlio8zCyA1Wc31W9naPq9WEUU3h7zrT8aWpJiTzaBt5MfEzJZ4
         FJ1LnOUoHP78y6LpVgmvN9yQfE8WGVcMluIguQZwQXlDtk0wOyr8cESkKd+procSnP6o
         +rRCoMmzFQlzaza/1xlJHDf3uqocVdRwZfzRiGPFNn5fnAdlWA/T/gQP3k/cjHUBPtKk
         LpsA==
X-Gm-Message-State: AOJu0YyfNc180bjVRSEqUVr1a7P7CqCasi3d5PB/sWJ4hsStYjWv0yjv
	ojzLwbC75irjTTYpK9WoyQ1RWs0hsCo6jfkL1uj5hL6BvvnaTrr84u/tIzOsPPgjzKvsLJS1UdU
	0mcLzAH0sixKRJyy1j1OMZn4rd2JMYSRSj126qIPSfjo8+IQsy7abBGAFlq5ihw==
X-Gm-Gg: ASbGncuCqx2Gl+qR+09kdCVm4MUBNmEvoSs+DGFuZxvE1vUyYbUEPx0S5ow07wt/5fQ
	f4087VwnMFFWUpKImlLLPFdPldpg+S10/EEj5l+oIZ2rNWfBjQnLPmwhyMsLfHod15WoeCykzKB
	3ts9PW1cLwTDnXRqLOk2jcN0EJR+HJN4oRaDnGQ2maWTuqQDYO+3drnvBmqKU7O+eNRnaPrIc6j
	vjpfRHO0bqmvDNe3bWZWzwbycJ2YwWxiLRUb0xdGhxkvBz6C6Xb+Mf5nUnPymY8NFPIV4ba+Y1d
	OAQXCJuGf0xRJ7SAAR0pNzOdadYCPt6YDxEXyfmP
X-Received: by 2002:a05:6214:2589:b0:721:59cc:7ae3 with SMTP id 6a1803df08f44-7392a31c638mr125278646d6.15.1757442373946;
        Tue, 09 Sep 2025 11:26:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFiTkPoF3b19onNhxrsqBbYTOg2+5X9ccV8huCYB+NbN91Z2RnhwhVulqC48dFp7MOSjqiDdw==
X-Received: by 2002:a05:6214:2589:b0:721:59cc:7ae3 with SMTP id 6a1803df08f44-7392a31c638mr125278166d6.15.1757442373289;
        Tue, 09 Sep 2025 11:26:13 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7243de51ad4sm124872586d6.53.2025.09.09.11.26.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 11:26:12 -0700 (PDT)
Message-ID: <e42e4ca6-6e3e-4b5a-9028-0ccf578a2d66@redhat.com>
Date: Tue, 9 Sep 2025 14:26:10 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] man/man2/sigaction.2: Update si_code list with Linux
 v6.16
To: Alejandro Colomar <alx@kernel.org>,
 Thiago Jung Bauermann <thiago.bauermann@linaro.org>
Cc: linux-man@vger.kernel.org
References: <20250828210752.619435-1-thiago.bauermann@linaro.org>
 <66a84774-0c5b-4dc1-af25-1e6d35e3e5ef@redhat.com> <87h5xkgrly.fsf@linaro.org>
 <1131d940-b487-4ce4-8316-533cffbdc173@redhat.com> <87plc071y7.fsf@linaro.org>
 <pb4yns6tmw5x25tvflkgnyqwfkusthtrnd66il7e22adisk5in@4qzbdyda3ro2>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 xsFNBFef5BoBEACvJ15QMMZh4stKHbz0rs78XsOdxuug37dumTx6ngrDCwZ61k7nHQ+uxLuo
 QvLSc6YJGBEfiNFbs1hvhRFNR7xJbzRYmin7kJZZ/06fH2cgTkQhN0mRBP8KsKKT+7SvvBL7
 85ZfAhArWf5m5Tl0CktZ8yoG8g9dM4SgdvdSdzZUaWBVHc6TjdAb9YEQ1/jpyfHsQp+PWLuQ
 ZI8nZUm+I3IBDLkbbuJVQklKzpT1b8yxVSsHCyIPFRqDDUjPL5G4WnUVy529OzfrciBvHdxG
 sYYDV8FX7fv6V/S3eL6qmZbObivIbLD2NbeDqw6vNpr+aehEwgwNbMVuVfH1PVHJV8Qkgxg4
 PqPgQC7GbIhxxYroGbLJCQ41j25M+oqCO/XW/FUu/9x0vY5w0RsZFhlmSP5lBDcaiy3SUgp3
 MSTePGuxpPlLVMePxKvabSS7EErLKlrAEmDgnUYYdPqGCefA+5N9Rn2JPfP7SoQEp2pHhEyM
 6Xg9x7TJ+JNuDowQCgwussmeDt2ZUeMl3s1f6/XePfTd3l8c8Yn5Fc8reRa28dFANU6oXiZf
 7/h3iQXPg81BsLMJK3aA/nyajRrNxL8dHIx7BjKX0/gxpOozlUHZHl73KhAvrBRaqLrr2tIP
 LkKrf3d7wdz4llg4NAGIU4ERdTTne1QAwS6x2tNa9GO9tXGPawARAQABzSpDYXJsb3MgTydE
 b25lbGwgKFdvcmspIDxjYXJsb3NAcmVkaGF0LmNvbT7CwZUEEwEIAD8CGwMGCwkIBwMCBhUI
 AgkKCwQWAgMBAh4BAheAFiEEcnNUKzmWLfeymZMUFnkrTqJTQPgFAmiCl2sFCRLD5s0ACgkQ
 FnkrTqJTQPjADA/9EtX1AuwVtpdGqaAqaW3lrOPSqJk5NiI3LiZQFpgVOrMs9VF1BEOGpv2h
 Cy54VjgUGYX4YnnoocC9FCmUkVqUPPkNJr3iElNJF3oAU/MtLCZCDxeJQY8vRRh4idpc61CO
 EnE4bl7nFnPiK1YzZhN1nvdIqvKXkzfFPdHUyejoFso3qX1eMfBf7GciPwT9gjIDovUwHN6n
 0qsYPxl/eFKleN2hPLDfrucfs/398zAbL5N0EVwrmtG4OZeV6SyN6HiSy7knLW9bg7TMvN8P
 vvEAJ5CbpgEW90JMGAqb10VAjs2vZehXh+gEqVSAfEjT6rVWZBzUzYCl89eaN+usMDIi7NN0
 CqIVv6NKH0dIswYC8J5hPeeV2q52d2s1g8NzJHL/3s7Hc+ot10DsOeoJA2bXhuH3LCveQHzs
 7Pi0Pm9olLEVVfoo0E2K+oYzb1t1qHBPiR9zcccW7sCFZhDjVtBbFdXXp+bQ+3tqiveMttUB
 NPKl5AFDoa/0Uc2L7piGQ0fqUaHT24BmOGmlEUUWueqFbln0033t1L02i8lPAMo4Fu1k1akP
 3s0x/e/TOaKY9qJb7h5rFe130HrNQS2TzOSKCjaKmCvRxlDRz8xYdVnEmlTvIeG38apgTNJ+
 moD6aE3qj81BqD1LaR7Dfw07F1TPKbtzswaB+al/iWsK8uOl6P7OwU0EV5/kGgEQAKvTJke+
 QSjATmz11ALKle/SSEpUwL5QOpt3xomEATcYAamww0HADfGTKdUR+aWgOK3vqu6Sicr1zbuZ
 jHCs2GaIgRoqh1HKVgCmaJYjizvidHluqrox6qqc9PG0bWb0f5xGQw+X2z+bEinzv4qaep1G
 1OuYgvG49OpHTgZMiJq9ncHCxkD2VEJKgMywGJ4Agdl+NWVn0T7w6J+/5QmBIE8hh4NzpYfr
 xzWCJ9iZ3skG4zBGB4YEacc3+oeEoybc10h6tqhQNrtIiSRJH+SUJvOiNH8oMXPLAjfFVy3d
 4BOgyxJhE0UhmQIQHMJxCBw81fQD10d0dcru0rAIEldEpt2UXqOr0rOALDievMF/2BKQiOA7
 PbMC3/dwuNHDlClQzdjil8O7UsIgf3IMFaIbQoUEvjlgf5cm9a94gWABcfI1xadAq9vcIB5v
 +9fM71xDgdELnZThTd8LByrG99ExVMcG2PZYXJllVDQDZqYA1PjD9e0yHq5whJi3BrZgwDaL
 5vYZEb1EMyH+BQLO3Zw/Caj8W6mooGHgNveRQ1g9FYn3NUp7UvS22Zt/KW4pCpbgkQZefxup
 KO6QVNwwggV44cTQ37z5onGbNPD8+2k2mmC0OEtGBkj+VH39tRk+uLOcuXlGNSVk3xOyxni0
 Nk9M0GvTvPKoah9gkvL/+AofN/31ABEBAAHCwXwEGAEIACYCGwwWIQRyc1QrOZYt97KZkxQW
 eStOolNA+AUCaIKXfAUJEsPm4gAKCRAWeStOolNA+B0WEACEIb+2+irwJzvzwVKha7oB5Dub
 GCvnHLvvXShYDoHzvajTnLTULWAepp05NiAxI8cP9QNpmj8PPzh1eJ4A53vXogWftATT9N7V
 WEAqVLo3wYAILfnzIOxr5qro148eY++pLMVxHhqrbol4D0CBG+WSAUZdAhK3hKeuA91sUjGa
 iSpwnihXhegHzeFcRgyaC+NhQsj8EoUpdSQtlmea5FxcV0jxiAdPS/8TvBsalMHNQTqOBr+Q
 eyGauXNrS3wT7qVbwNRVdRPHC61qR6RH1TPHAPorZ5p/XQisuxyLXDOJZR0yCsxvqoRWDTJu
 fb8xLrfLxy/LqtE5JNzG1OJL1Bbu9wwiXTkTyj82Zg1KmrDSdSZUvGa3Q7kk5dG38Iel8LEF
 a/Ri/cYKhk7XjJ8xHBMB6KCJueItjyv2qG7vokhxm8ep0XQNVR+rIKVJH60TKIKonLXNYfK/
 znfxUttwFIjjLso6WPHxRjPr1ot1AbgDbuFspRbG7mR2H20ZLjgLPWWAsiHfjyktQ7Dk0hjv
 r0uSJR1R7X5Cdh3uJCl02Rp1jTZNBDWGVdxA8MSY1ej0yOO+VI8OukA75K0u72wvJD4Dg+Sq
 6mzR3XVZmF7FAZNTSV+1GCekJlnCSp4M8HItrojuEtrdH8Ba4WWxK+cIKejqzhwKFpQYBLg9
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <pb4yns6tmw5x25tvflkgnyqwfkusthtrnd66il7e22adisk5in@4qzbdyda3ro2>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/9/25 2:32 AM, Alejandro Colomar wrote:
> Hi Thiago, Carlos,
> 
> On Tue, Sep 09, 2025 at 12:13:36AM -0300, Thiago Jung Bauermann wrote:
>> Carlos O'Donell <carlos@redhat.com> writes:
>>
>>> On 9/2/25 11:08 PM, Thiago Jung Bauermann wrote:
>>>> To be honest, my motivation to write this patch was just to fix the fact
>>>> that SEGV_CPERR was not mentioned. Then I noticed that other constants
>>>> were missing too, and thought it would be easy enough to add them as
>>>> well...
>>>
>>> Welcome to the rabbit hole! :-)
>>
>> Thanks? :-)
>>
>>>>>    (a) Adding the constants to C libraries in a conformant way.
>>>>>
>>>>>    (b) Cleaning up the UAPI header to be conforming and work with
>>>>>        the existing C libraries to include it indirectly.
>>>>>
>>>>>    (c) Cleaning up both headers to allow dual inclusion with
>>>>>        additional constants showing up as needed.
>>>>>
>>>>> In summary:
>>>>>
>>>>>    - This patch contains 2 constants that don't work today in a glibc-based
>>>>>      userspace.
>>>>>
>>>>>    - The existing man page documents 1 constants that doesn't work today
>>>>>      with the standard #include <signal.h>.
>>>> As you suggested (thanks!), I sent a patch to the glibc mailing list
>>>> adding the si_codes it's missing to its siginfo-conts.h header:
>>>> https://inbox.sourceware.org/libc-alpha/20250903024151.3030839-1-thiago.bauermann@linaro.org/
>>>> If that one is accepted, hopefully this patch can go in?
>>>
>>> Yes, that works for me.
>>
>> Just FYI to the people on this mailing list, the glibc patch was
>> committed today.
> 
> So, all the things that Carlos said weren't in glibc are now in glibc?

Yes. https://sourceware.org/cgit/glibc/commit/?id=6f120faf649f03a261e3e64d5b5991030383c1b3

> Would you mind adding "(since glibc X.Y)" to them in the patch?

You could write "(since glibc 2.43)" though it won't be released until 2026-02-01.

-- 
Cheers,
Carlos.


