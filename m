Return-Path: <linux-man+bounces-3896-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F25EFB8CD5C
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 18:34:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 375577A323C
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 16:32:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76A6021D3DF;
	Sat, 20 Sep 2025 16:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="luRHrbSV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4647118EFD1
	for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 16:34:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758386049; cv=none; b=VWpUqCV5/nYDhtZBBfzAZohn/JIoCpW2Zzzw6+wIctKDv1o7ksYFQAQBmZS4BQxpMeIVaePRzjC3zLgjohKmzoqvidps9UOO005RHOEbeeavAka/g0oJ4moDZ/Qk1dbk+oe0+J7dZ5Atuhehy3kf8dW9yBiAwTO+K7wxefi1eS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758386049; c=relaxed/simple;
	bh=sQ+R9Z8UjpsMvSLNcI0dzxtwBcgOx+mFkmchvlStA6w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jO3wIzAYibV48jekXCcru50cYXP9kzL2Az4/vsubHRTdVzooekUo+tLVdR45vpxCm0OS2fr9VZR+ZamTOhTDeP76GWWol9DbuL5ouE9JBqOWGEFyOrxOTsctqsFJm098V+hdocWlX3IDxa+s36btHpohq7NYNw6Gafn9bHnKXnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=draigBrady.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=luRHrbSV; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=draigBrady.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3ece0e4c5faso3715027f8f.1
        for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 09:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758386045; x=1758990845; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=swBFNKZgY6u+XgrC+Ag8yK5cGDtWl4AASU2RjuCeiYo=;
        b=luRHrbSVtq6oxMq4VKheWNrudwT9IY97W3M21isCsVxHTikXrzli7idICM2ZpVFpTD
         131K9O+vo2L605xPUG7n2Unjkni9/lZpPzroXkHLw07vHrtrEgy6+e6xaI03zrzgNe7g
         lJHZWjulgMssKdVcMKwCd+DUBhX273o3zbzzt6O+bRRhGtXPcl63BzMKe2M4G6uYaoMD
         Pj8pScVbCV9tgDhDKfKp68VlZHi4HPxCU4+pnMaWq/5QSGDXpA3lQX3dVoivLzcB1sjB
         z3x6+pFdkmoBus2Km9xKt0WnUyyJuTW03inGYEX7AEEBPY39Ym6vVJvhCisWDAeKYGsg
         yE9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758386045; x=1758990845;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=swBFNKZgY6u+XgrC+Ag8yK5cGDtWl4AASU2RjuCeiYo=;
        b=ePfzH1SKHrRIYYICgOXrESOCOux2SWxhVATgUWFEpDg9d41La2TLdfeEe9GLkZwIAi
         IjO5zsIjYx5QCXt9yEv1cGgyLUDkMRg6d9cCZAWop17E1+xpcXxh6XzZkOtp/zEYBd1+
         xy+MnUNI0JjBaALE0GEVDllzwEnjRTGedY4AqkbIPRxKHX2ZqTcmvhAjPOyy31CzOYio
         nJD4gDhDC+SxVKEbaKpm7PuRqOkrkxh96ZeccUHtd/vM4J3xh4bgHrDXk5n1BuxY3uzl
         VXTKhdq0hG4GAEKciUYadnSjKNxzrozDTKpsHWQ1UY29kdvkZPqAvY4CalaBGsyjZY9J
         paPA==
X-Gm-Message-State: AOJu0YwIn7ygIg5JcsmvgiFyWRyLwwYynUV+2wd5dyIgMYQg8uzhERCr
	2w7nMETE3wvs7LyLWRKO9UE6FiXJgqrJxzpG557Q1vTWtbb21nZ4qjNT
X-Gm-Gg: ASbGncvp8G9lxPl252fWvTw4OWgNlEJ7KBTwZ1bBFkj0lqBdIiTohvnne+vJorjQQ25
	RJyxBtbhjrH50fz2P+fBlHdO487zFY17EhQCHV1dcLh3REIXmnlkmKapAxX98GpiAGmB9CepgDx
	JHOU+3mkpRBWlvh5OKZQL7KBbPQX+S4gotFxf7+iKXsQgXT1lH61MOAvEVCEk4G3hobYJQrnmp4
	IkpMSAA68b4oomQinBiWqxwBkrCwMlEuw4efaC6qMHkE36NYLm8u/ZRQU+Osteu1u9A9AVZejUY
	61c1QgmXbunW3n51IJ2xJ0yAilO3hp6kzj6/pBK8X1gJ2rRdyoHzHb+e1T5X1q0S4+n1F2bf4pM
	+ay1ns3bfdHOEw+UyybuuTVGTm3PDZwJ1Jx51NhfUPK90uWqtXq/3h+264lpXgcnLhQdGd7skc/
	+gws+cxh0mn8mw
X-Google-Smtp-Source: AGHT+IGJqG7GzHcOuH6gaDD732yvrHUmV7wasAO5Rf5ZZ7iphAiVEjzoyWJ/rrWUGbzm5I11sLCeiA==
X-Received: by 2002:a05:6000:2888:b0:3ec:db87:e8a8 with SMTP id ffacd0b85a97d-3ee861f8326mr4770539f8f.37.1758386045292;
        Sat, 20 Sep 2025 09:34:05 -0700 (PDT)
Received: from [192.168.1.31] (86-44-211-146-dynamic.agg2.lod.rsl-rtd.eircom.net. [86.44.211.146])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4613dccb5e2sm169830615e9.17.2025.09.20.09.34.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Sep 2025 09:34:04 -0700 (PDT)
Sender: =?UTF-8?Q?P=C3=A1draig_Brady?= <pixelbeat@gmail.com>
Message-ID: <e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com>
Date: Sat, 20 Sep 2025 17:34:03 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: Move GNU manual pages to the Linux man-pages project
To: Alejandro Colomar <alx@kernel.org>, coreutils@gnu.org
Cc: linux-man@vger.kernel.org
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
Content-Language: en-US
From: =?UTF-8?Q?P=C3=A1draig_Brady?= <P@draigBrady.com>
In-Reply-To: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 20/09/2025 17:08, Alejandro Colomar wrote:
> Hi!
> 
> GNU coreutils manual pages are to some degree incomplete.  I was told
> today that "tsort(1) is a bad joke".  I wonder if you'd be interested in
> moving the maintenance of the manual pages of GNU coreutils to the Linux
> man-pages project, where I could take care of them, and improve their
> contents.
> 
> I understand GNU's stance on manual pages, and that you might not be
> interested in improving them much, but maybe you're open to them being
> improved elsewhere.
> 
> The Linux man-pages project already documents the GNU C library, so it
> wouldn't be extraneous to also take ownership of the coreutils manual
> pages.
> 
> What do you think?

The man pages are programmatically generated from the sources.
I.e. $cmd --help is processed by help2man.

All of the man pages have links to the info docs for full documentation.

Any concise improvements for the man pages are gladly accepted,
but would be applied to the source (also for --help).

cheers,
Padraig

