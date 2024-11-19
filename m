Return-Path: <linux-man+bounces-2047-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B931F9D2703
	for <lists+linux-man@lfdr.de>; Tue, 19 Nov 2024 14:35:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EBF81B28EC4
	for <lists+linux-man@lfdr.de>; Tue, 19 Nov 2024 13:15:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5CD81CC170;
	Tue, 19 Nov 2024 13:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="MxzluChg"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC391991D2
	for <linux-man@vger.kernel.org>; Tue, 19 Nov 2024 13:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732022097; cv=none; b=C/sJbTC2R01OXHwcT93rurpsDWK/QTKRC7laWWoeIFdMLBYO24kkyToJpiJGPl8E60QsiD5xwi6SLvVsCD6sleXu8FXXvAQUKzIrfQNHLYxqAwUG7XOReRxI31fBk6NBNcPnsX+jGo91r/dcQpmH9/m+Xo/p9hz5vMLuwIqrSl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732022097; c=relaxed/simple;
	bh=x3Fym2C1IK6N3FGHCg/P3+VL8Fq/5ONGtf54/jSIKF4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Lv9r/2NPFR8ncS1OuWqpRlNvXa0Mwic0ASCjBZ0cG0WIe9LUCm1YjKxPU1WB7pbljX6KNKR9bJsufZvaqLlUKfvZdhAwQO0t03in8ZU84F7la28hgaCMlL/dJm4Ek/EYkMWSQ8A1YL0nVbXDtlFjHEpZ0L8GzFC/fPxEs8RmIP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=MxzluChg; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1732022094;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=WlRsnE/3v397rF88PcAUWmNf1Pxm8f7KgDN3b2NYXwc=;
	b=MxzluChgfxyUO3zWj3K9WHwakBCc8Q56vBrktnnhl0Rf1DDTNFy9jOXjLOL71CZHtQiZ8u
	g+dK1KhuFbUtL9/rPVShyCGDdGj+BOXVr25FXKG/kwr6ReURFpaUtNWyiuk1BinDtiWAxS
	jnw/7HTJE7lQyK1L11xb0+7zDrFhU20=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-134-pBv-hdK4Mt2YhC4FP9kUmg-1; Tue, 19 Nov 2024 08:14:53 -0500
X-MC-Unique: pBv-hdK4Mt2YhC4FP9kUmg-1
X-Mimecast-MFC-AGG-ID: pBv-hdK4Mt2YhC4FP9kUmg
Received: by mail-io1-f72.google.com with SMTP id ca18e2360f4ac-83ab1b39ab1so102825739f.1
        for <linux-man@vger.kernel.org>; Tue, 19 Nov 2024 05:14:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732022092; x=1732626892;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WlRsnE/3v397rF88PcAUWmNf1Pxm8f7KgDN3b2NYXwc=;
        b=HC/37ckNAfDnqoqJS4obfyAisGjQovgB0+yGWrBA1UPTJ/xiVCZ4WzOg0SUkJkXVZE
         EVx3gnUg8tCW9XhCOHY9Osu2thpRRlIgHo4R6uWOjSz8kPiEypOzoNqRHvC5JU7rdOUv
         mo0/uBW/aA+zLeHqwTdTU0YH6rcrtMOb8CD8qrV7/DeI2eHIa2Xs5Y1mscN0bo1FjZTC
         HUCfZETlCDggFBMg5tqTpPoomS47RnWdZUPELBzUG5GaCfRaUw4nwIhZ2v4p9qJaf5XX
         b+mdWbB99sfK1jy3RWn+OAj43+6mr/IfTy8V4aSxUuBZilNtRHWvSV1LNNNGJP7K7VTZ
         RY/A==
X-Forwarded-Encrypted: i=1; AJvYcCW+cDLQniInv/DERw4/bkr6yHbSmr3dlCDEZ6nvuM9Nnwoh9YFub2paE6gpxCRoyNBiplDc9u/bKsM=@vger.kernel.org
X-Gm-Message-State: AOJu0Yxa2bnzznRMoCcfOz2huc0srhFmn7ijUzvSCjdpgD7o7NyTg/K1
	x0GFjvPDN5TGiGulXT5gPTbGW/NucsnYddZBbVFSZDqNRrCU1r5UTcdRKQ4P3sC8E2ewnPx2MAb
	oDEq6ijArvbL95xVAoB0v6iJWm+rxOWPNBkm/toJuQX/IhUG9fhi3C7xxVQ==
X-Received: by 2002:a05:6602:6d8a:b0:81f:75bf:6570 with SMTP id ca18e2360f4ac-83e6c2b351amr1440103039f.5.1732022092372;
        Tue, 19 Nov 2024 05:14:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHosc5hpHW8lcZ+Y9XB15fa69jCjs5F3FpB3ZIOH/YA3Y+5IpzuoiEBVFNK7sCJhcYUdKDoVw==
X-Received: by 2002:a05:6602:6d8a:b0:81f:75bf:6570 with SMTP id ca18e2360f4ac-83e6c2b351amr1440101539f.5.1732022092037;
        Tue, 19 Nov 2024 05:14:52 -0800 (PST)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4e06d70b256sm2686772173.59.2024.11.19.05.14.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Nov 2024 05:14:51 -0800 (PST)
Message-ID: <4b802b9f-dc7a-49c1-a363-7ac987c82474@redhat.com>
Date: Tue, 19 Nov 2024 08:14:48 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Issue in man page getent.1
To: Helge Kreutzmann <debian@helgefjell.de>, alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <ZznJgjKF5psWsP3d@meinfjell.helgefjelltest.de>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <ZznJgjKF5psWsP3d@meinfjell.helgefjelltest.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 11/17/24 5:46 AM, Helge Kreutzmann wrote:
> Without further ado, the following was found:
> 
> Issue:    No "in succession" here on purpose?
> 
> "When no I<key> is provided, use B<sethostent>(3), B<gethostent>(3), and "
> "B<endhostent>(3)  to enumerate the hosts database.  When one or more I<key> "
> "arguments are provided, pass each I<key> to B<gethostbyaddr>(3)  or "
> "B<gethostbyname2>(3), depending on whether a call to B<inet_pton>(3)  "
> "indicates that the I<key> is an IPv6 or IPv4 address or not, and display the "
> "result."

This text is for the "hosts" database.

> … and in many other paragraphs (I can provide you the full list). Last
> time you said, that this is under review with glibc - are there any
> results on this?

As an upstream glibc maintainer I can comment on this.

The getent program today iterates over the keys passing them in succession to the calls
as listed for the "hosts" database i.e. nss/getent.c:hosts_keys.

I think the text could be improved by making it consistent for "hosts."

Each one of these instances is different so they each should be enumerated and reviewed
separately.

-- 
Cheers,
Carlos.


