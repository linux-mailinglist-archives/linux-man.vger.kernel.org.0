Return-Path: <linux-man+bounces-3900-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4282CB8CD86
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 19:01:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D6601B260F1
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 17:01:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24AE6192598;
	Sat, 20 Sep 2025 17:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QnviOpSc"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292A01CD15
	for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 17:01:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758387686; cv=none; b=Uqqfqc6fS2+6p795uK+Tys9fY6MaUdMXa71AQUW6m5nSzNb+n63HTmLXnoZt45DTXSxyohUstPIksCjEzIyIU+yuxNsx1mruq3FAqEOO5c3tG4eGAaRIX8anf6cFYUeGvJnfDjcR/Iq5yxMbFRA1J2mdHKUyyYj31wpkQ8Yrna4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758387686; c=relaxed/simple;
	bh=h5+U/U0hrt9StJIlm2TdxM1rCvIx2CtD0wduZY0xEBw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zaxwx2fKIAXxChqaZmYS/2xzJXm8jscg/e+1yc7kEyZ7GEQw295yPgAYNwhCrzfVUq7zwJLAKf6gberpO+C8BewD2WxlgIxfwhPeZgPzJSEN2Inya2+nlZsAcjydyWULO5n5I+bytjfIk95sXVNiJqr9I8qqW4znIn4kQas00uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=draigBrady.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QnviOpSc; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=draigBrady.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45b9a856dc2so20478465e9.0
        for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 10:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758387683; x=1758992483; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=j93FldGBq3CmXdCDr+c3TQcCkVvLo4OSesh5EAqJcWU=;
        b=QnviOpScR2lDbznq0eoB0uofmBh+70QmcBqWhV1WeR1xrXsdj6GwNpZU34/O2dOLfZ
         WGAMgqS3VXsTNUCR+LLLtZmHheNLy7GI36M10F9bfwXOatFYW/Qc1LTqAqQzBf8CYuLQ
         1+pTBpW0Vv0Sjr//4cPU+pq4+Ar7j6CTVOKNJw8PS12Ub1Hrzy9fY8mW9vmjrGW+BZek
         ejPuoGHSEZz69cjYSW+3dAMEOZZbEH+R2XGJBUkBRyHnYv/mpiuMuCYHkbz1yP6Qzf76
         zWX4LEj3Ax1+oPBe6lS6Y41iFBtqGMvFlP2QoViiboW8X42BDBZnQzmHpiRyQURPwROQ
         dRZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758387683; x=1758992483;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j93FldGBq3CmXdCDr+c3TQcCkVvLo4OSesh5EAqJcWU=;
        b=PXfjHO3HFFq5yno7UsO7e4d7dFeHoPR5JLLQboSfquTMkSIhgXkbqlROzj6EiDeFVN
         2j6XNpfQHnh5WepsVjzokVuoemkxitIHaAlKHNduuirEqq3qP7nAmVCNxshWS2ss68ug
         xT//o06mm4CuT2o/OFQZNgT2wZ+zAWAjZqXzgGwmurGSXeSoMvDE4bjKPbdcQOw7ey7j
         MMyRcpnVpWSCG/Sx47gERHYhqR6rtd9bX9RrU7nTS/pvu+BLGxJdha4ZFu//iC4OPxVF
         LQVVL4n3Zw3mRasaFw4yodyapvHwpbbgXveJVhYiVDkPiKvORRkJMqxUubkwrIYhCzOf
         lt+w==
X-Forwarded-Encrypted: i=1; AJvYcCVageJUjMjvYwQVjrYaYMlS6fneg08vsEtJkbU83hvdNmlTG7RgCVhPoQmuG7QKAIsiebWXdCWCTMM=@vger.kernel.org
X-Gm-Message-State: AOJu0YwXdqmCLSYfILprS4KHuZ044pzY6BCRYykBPTQZ3ucvIiaUVFn6
	fYuz57KeEOkin/CzLRkAlkCbCDCdZ78T9TfX8qqHnCcFdXBWbuw4zhEO
X-Gm-Gg: ASbGnctV2POmY/YeqFyrRuWhpoK6xDALDLhdrw5GWMo3TUonDKAmfVgqSB26jc117CA
	pH8awXfupjJK5xxhlExZBIML7uZWS5EdNQ+80W58RZ5c/VzWNRDC9vYGVKZ5NcK3rhtn0zNqD/z
	hb5o0t43qigeTufj5WHsWDEYFjZTso/Ad9tKaaeEwDkeoV5OyaA7tPNQlPTT6ll1dntvnPsxxmw
	hYr37gyUFtLNAFStgBpMS9gwE/u3eD3nOKG3CM+2bQ4mFdYQsQsnbQAScPEJOPihCrmeWH+Ds0o
	up2ds4I+7/xQBrOBXGyUN83kNzWbQID5ZauQyVrmEWctK3XFSwWrctSyzSpMsbBKZCdCO5s1rT8
	XrzTTHG4UQVp7/3zKn34JmCVR3dzP3N54/mYQSRz7MtI+zcx5BY/y0tx1pZ8JJ4W1FAZBJhifCZ
	1rDA==
X-Google-Smtp-Source: AGHT+IGljI8uO6DkAmCqwBt5gGx868BZ+XVKS0g2GRutwafMnldKALXgDZxMtHHoll/DKF2/WDNJHQ==
X-Received: by 2002:a05:600c:468a:b0:45d:cfee:7058 with SMTP id 5b1f17b1804b1-467ea89da77mr72629585e9.22.1758387683090;
        Sat, 20 Sep 2025 10:01:23 -0700 (PDT)
Received: from [192.168.1.31] (86-44-211-146-dynamic.agg2.lod.rsl-rtd.eircom.net. [86.44.211.146])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-45f3252260csm113497175e9.2.2025.09.20.10.01.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Sep 2025 10:01:22 -0700 (PDT)
Sender: =?UTF-8?Q?P=C3=A1draig_Brady?= <pixelbeat@gmail.com>
Message-ID: <4e842b01-5251-495a-9a49-1ce59676acc9@draigBrady.com>
Date: Sat, 20 Sep 2025 18:01:21 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: Move GNU manual pages to the Linux man-pages project
To: Alejandro Colomar <alx@kernel.org>
Cc: coreutils@gnu.org, linux-man@vger.kernel.org
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com>
 <53jjjhuovjnbju4ex56hwoke2zz5rshxr6qjeqe3tidgcls4sw@zfnfbdktmtpb>
Content-Language: en-US
From: =?UTF-8?Q?P=C3=A1draig_Brady?= <P@draigBrady.com>
In-Reply-To: <53jjjhuovjnbju4ex56hwoke2zz5rshxr6qjeqe3tidgcls4sw@zfnfbdktmtpb>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 20/09/2025 17:55, Alejandro Colomar wrote:
> Hi Pádraig,
> 
> On Sat, Sep 20, 2025 at 05:34:03PM +0100, Pádraig Brady wrote:
>> The man pages are programmatically generated from the sources.
>> I.e. $cmd --help is processed by help2man.
> 
> Hmmm.  That's a problem.
> 
>> All of the man pages have links to the info docs for full documentation.
> 
> I know.  However, many users don't enjoy the info docs.

I my experience user don't enjoy the info _reader_, while the docs are fine.
The full docs are on the web though and also linked from each man page.

cheers,
Padraig

