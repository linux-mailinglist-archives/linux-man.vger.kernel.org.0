Return-Path: <linux-man+bounces-116-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6344B7F213C
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 00:09:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 906C51C20FB7
	for <lists+linux-man@lfdr.de>; Mon, 20 Nov 2023 23:09:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71D523AC39;
	Mon, 20 Nov 2023 23:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jguk.org header.i=@jguk.org header.b="lvfVA7Te"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D383A2
	for <linux-man@vger.kernel.org>; Mon, 20 Nov 2023 15:09:01 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-32f8441dfb5so3835365f8f.0
        for <linux-man@vger.kernel.org>; Mon, 20 Nov 2023 15:09:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1700521740; x=1701126540; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XCdODA/AV/fhXg3nPjfwHVmy3o0w3BziTW10AiYv6S8=;
        b=lvfVA7TeneSri7uJrj6rHjh7dX/BPr3pxPw8+aWLr9Y+K2iAxpO+KTeJsOES+CrmvE
         btRAarXxqO0jXvhshltgKscUrEXzNfTMqzKvpQAi99KZN6S6WW0UZQuFt9aRAaP75WD8
         aBqoCGkqSZIS0X0CFFN+SKEcyXS+opkjVVSxdzpDlPQIKo1iH3H2nUdHmt+uKYOLn3uw
         reK34hOpfhYgVzcHzuXaFcczq75yIy8F5PxOJ64cu1hDO6XV3TeEtBEapZWeHgOPRHGL
         bCP9VyS4tBY81LmcTcgrTDNbVq7byGgbGn4PJ6HtVgve+xeCn9vnYCogRD0ZZO/21eGJ
         ldYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700521740; x=1701126540;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XCdODA/AV/fhXg3nPjfwHVmy3o0w3BziTW10AiYv6S8=;
        b=kPM2mQYil6mGYqqueWVn/UUbr8096pTqShENbMOW2JWy/1Pjofh/SmGUMmKamX41kG
         B2UUO33mWBg5bwMFov9fbpekqdvWmOQIx7XAcXiD+lhqV269JIApwnIR9zk43LGVUPPV
         liludz1YEVVd5lnxpLzDZJ8yjHFTPmgdpcQoir7bVlYbGsGwWXdXvZSGQhB2m7CrDxcK
         tYJIg4NyDyyNPSjswjGK0fF3AAp07IPmDsgCRdlrPbtCbSskt4xmXrKIPlx+gBZriEed
         NsFtI1iv4Mky35OucR8LSJaXyWR/PkelOCtKl9GwiEkVISqvE3V6dbMyAVginn5VX1OL
         5G3Q==
X-Gm-Message-State: AOJu0Ywlg3pYJQZrkSHYzC52Jg6ffqIirm8MxUDDxWLgEjPuOmnyXUTN
	BnWaXHGsECKZiKIc0HJ5GgtV3+Yd3g2+QfbPQwM=
X-Google-Smtp-Source: AGHT+IEnpq0keAAiMC23QDV/MbpxErk28V6ELSTLW2gWixyGK3ugFeiBzYIHX91wjXvSzOAL2oldTw==
X-Received: by 2002:a5d:47c8:0:b0:32f:7db1:22fe with SMTP id o8-20020a5d47c8000000b0032f7db122femr7234493wrc.15.1700521739948;
        Mon, 20 Nov 2023 15:08:59 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id m5-20020a5d6a05000000b0032d2489a399sm12313412wru.49.2023.11.20.15.08.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Nov 2023 15:08:59 -0800 (PST)
Message-ID: <24ade47a-a9b5-4be6-a322-babc0543f4bd@jguk.org>
Date: Mon, 20 Nov 2023 23:08:58 +0000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: strncpy clarify result may not be null terminated
Content-Language: en-GB
To: Alejandro Colomar <alx@kernel.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>, Matthew House
 <mattlloydhouse@gmail.com>, linux-man <linux-man@vger.kernel.org>
References: <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org> <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu> <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu>
 <ebccf5c0-f125-4eb9-8820-e71e77f4f7ed@jguk.org> <ZU4s6Vm-jBjFCcJ2@debian>
 <66296bd3-9918-4dd1-8570-bccfbfd85239@jguk.org>
 <317576b1-a2cd-4f23-84d7-830c242d7e86@jguk.org> <ZVt3U_muGCT4mk5v@devuan>
From: Jonny Grant <jg@jguk.org>
In-Reply-To: <ZVt3U_muGCT4mk5v@devuan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 20/11/2023 15:12, Alejandro Colomar wrote:
> Hi Jonny,
> 
> On Mon, Nov 20, 2023 at 11:56:40AM +0000, Jonny Grant wrote:
>> BTW, GCC has a useful warning for truncation that may help code bases that use strncpy, you've probably seen this and the article, just sharing for completeness.
> 
> It's actually the opposite.  GCC's warnings about strncpy(3) are
> nefarious, as it warns in valid uses of strncpy(3) for writing a
> null-padded character sequence (the use for which strncpy(3) was
> designed), recommending the bogus use as a function for copying
> truncated strings.

You're right, I can see this warning is issued for valid uses of strncpy(3) to copy a sequence of characters, (without even a single NUL pad). It does not warn when the byte sequence count includes a NUL byte.

>>
>> warning: ‘__builtin_strncpy’ output truncated before terminating nul copying XYZ bytes from a string of the same length [-Wstringop-truncation]
>>
>>
>> Martin's article from 2019
>> https://developers.redhat.com/blog/2018/05/24/detecting-string-truncation-with-gcc-8#forming_truncated_strings_with_snprintf
> 
> I discussed with Martin about this, IIRC, and he told me they had to
> decide which use of strncpy(3) to support, with the side effect that
> other uses would be warned about, and they chose the one that I think is
> bogus.

Fair enough.


While I remember, the strlcpy discussion has been going on for over 20 years.

https://sourceware.org/legacy-ml/libc-alpha/2000-08/msg00053.html

https://news.ycombinator.com/item?id=6940601


Kind regards, Jonny

