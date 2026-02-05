Return-Path: <linux-man+bounces-5037-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFR/HUu2hGk54wMAu9opvQ
	(envelope-from <linux-man+bounces-5037-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 16:24:59 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA44CF48F7
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 16:24:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 64F6D302000F
	for <lists+linux-man@lfdr.de>; Thu,  5 Feb 2026 15:24:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FBA14219FD;
	Thu,  5 Feb 2026 15:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="VBJSEshc";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="dVU4H8CN"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 929C5286D5C
	for <linux-man@vger.kernel.org>; Thu,  5 Feb 2026 15:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770305039; cv=none; b=urNQWQ8u+JAAy7zcwyVzZqCOoesQ4j6pE3SGtJ5r7z6HQGg7ASKfyAGLPvXGsbhGI40dmw93Ag4Z21OJV3qJfHV+R5QUZwpgAq0gnn7FJ0LBapbKSk9br2ppeTaWVVgMWRsZcECWHaJEneVl8Orijl9gSf/Ak+PO3AacuUy4dMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770305039; c=relaxed/simple;
	bh=BuuLgEwDuYvlpqfo4B4ehEdJA9WULdUPbioo+PiuD88=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D/+StzfTE3e3/RxlinV3MXH5/TwWgsWtOVnx2ZfpvRimYoVGgk+8g8HjK9XPa1xqUxKpERnOGLiupov0HENQ3gAJO5PZWwDUAdQe88S+3Xg8nv8hITleKsK56kFHj9uFInQEodpj3mVsUGqvnnYapnka3UenMmtMHogxl69+518=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=VBJSEshc; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=dVU4H8CN; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1770305038;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=esIQEFa9RelEESKkIMcFv2ZmdEO2u5POt46uaJPiAIM=;
	b=VBJSEshc0d1vz+OqfROo/uAq0J17OKVE7LVIpN3lbhf9M0Xz6Ro1111bvmiYhSrZ6oGg2x
	pe+0udBwyX1W9kFdz7kICCWRwrcnfLX45DPIAoJxbuArfA18xJ4d1tMu7+SAYTiWES83Og
	qU64hYVip1ZU+s3vwSyfbYCqA4XrDfs=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-479-7SDhT6yDPZCbRt37MmSyGA-1; Thu, 05 Feb 2026 10:23:57 -0500
X-MC-Unique: 7SDhT6yDPZCbRt37MmSyGA-1
X-Mimecast-MFC-AGG-ID: 7SDhT6yDPZCbRt37MmSyGA_1770305037
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5015175bbb0so60595361cf.0
        for <linux-man@vger.kernel.org>; Thu, 05 Feb 2026 07:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1770305037; x=1770909837; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=esIQEFa9RelEESKkIMcFv2ZmdEO2u5POt46uaJPiAIM=;
        b=dVU4H8CN9BsndxPukBYWLOZGuVYWMdG9GVTYTfGhHTTmKdM8uwmLN/4UoR3mGft7OO
         gh3Djbf6CDOZ1Jm0YztcavAzZ24U94ckigi0fMWVmtsfeJ2kvpe3t5JPVBsOdRIiwgTe
         EhVQKe84hGkRay36c/nnIaj4TzBm2R4RGJh15/0ecjvE5RFpUqk01IBArF7b4q19v2K7
         YRROYOTGouU+AAed2/PBgkvZeNmqUau/PTEcEWWnaykEv4TE9t0NK4jlART0/3Egx93d
         gpZIfv2JxcqCKaYZeYoG57bpxAToyvAoRciQ8Bbd5vorRVVWYZn8tn64kQ5y0PlUxgVq
         ExNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770305037; x=1770909837;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=esIQEFa9RelEESKkIMcFv2ZmdEO2u5POt46uaJPiAIM=;
        b=GNMAia5fKpgapiCyDnf6G+XAmVD9VX/rIQ63cq/bBAMGyhsJ4yLiA08qkD7L6bYisI
         4zjbb+hjbVvNXDM3qra/aharlH8OHWqyxcv692uwT65PsFd61cnNsV9YzOqzGNFc/gK1
         SCBXhMYGDgQQlRAflr0Qr8YOXTNItmImzHi6jWk0V4KzJdkOWoU9jMutbMFW2Zh26oIv
         fJEIHhZ2WILVK+XI9iz57RPLRTyH0/CENBsRkKR7vQ11y8jx4IeOuKbPGx/OLlFoDNVd
         oqiiaNWuyAFEr76tMAkoND4d+xEM6sJYlQeZd6iHZlTg8QyehMJCnDTG2sO5ogJEeESY
         puDA==
X-Gm-Message-State: AOJu0YwZk8wBllkIFCR8Z/kaYGGk2FF+kEzOEIvStRpD6PwlJCYC49G2
	98Q1MuD24p6Qvg8Mn1IvZtP8nzexSAQNjBTqJJzjCoMT/HTWL7E03g9Qu32PxpeD4orP6yBSA1q
	zzRuR41LzRtu3lS7zLX+FGBb8CSb+nEnQWIi+zHZJO5pQQmhMl0o7g/f6rewyuw==
X-Gm-Gg: AZuq6aIUwMuvW0sjRNu/zl2WubPunHPukmzGho9xTv1yo9voCng/7K8hcrUt8gra6pO
	aMhmgXmDuduYjZpfp08ZCedl8/oP9TY0/y+vqXfrFlxYt2E4TaHQd4SoWqUBjQoMLxmYGLENUB9
	4H9h2URce319AikKmgpqI1mBD1T02Uh7dJIZ1RYAzkoh2suHFn1APXWl8IIGHvd7ydJsn5vDA1z
	X9qaKHwWUENFDnj/6Y4qbYZ4MwnhfwtRPDXrCIDLjp5PmsyLeQACfTSF+7XhfmBIHyAegLyvzsk
	TmnHK8jgBAqL+aBhswrurBMTasGFSuP6zpXFSKXfdzt0b0c8UOJlHbyS72OM8oHOmRoXrFPACTg
	AhCU0wpiDaOpov7qgsfWW+J0gfZaiVjIcmAu5U1EcBl7RBqcWcegjmiJ8/5QQj3DDlGVoIwkwTO
	YpvA6ucfY/Lw==
X-Received: by 2002:ac8:59d3:0:b0:4ec:f260:57bc with SMTP id d75a77b69052e-5062ad982e9mr29615731cf.10.1770305036751;
        Thu, 05 Feb 2026 07:23:56 -0800 (PST)
X-Received: by 2002:ac8:59d3:0:b0:4ec:f260:57bc with SMTP id d75a77b69052e-5062ad982e9mr29615361cf.10.1770305036212;
        Thu, 05 Feb 2026 07:23:56 -0800 (PST)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-5061c177e66sm38103311cf.14.2026.02.05.07.23.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Feb 2026 07:23:55 -0800 (PST)
Message-ID: <3210db06-d56a-45e5-9d54-618b16940cb2@redhat.com>
Date: Thu, 5 Feb 2026 10:23:54 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: aligned_alloc man page and restrictions on alignment values
To: Jonathan Wakely <jwakely@redhat.com>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <CACb0b4nujtK-twnRzjWmXPyJW+0uvbM_AFx3_1xFRj86yPiHFw@mail.gmail.com>
 <aYSXSY4968FXnvRZ@devuan>
 <CACb0b4mDZx9YrpFDCmoSHvjvZpHaHMsauwzcBR-JYib0467hUw@mail.gmail.com>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <CACb0b4mDZx9YrpFDCmoSHvjvZpHaHMsauwzcBR-JYib0467hUw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5037-lists,linux-man=lfdr.de];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[carlos@redhat.com,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: CA44CF48F7
X-Rspamd-Action: no action

On 2/5/26 8:55 AM, Jonathan Wakely wrote:
> On Thu, 5 Feb 2026 at 13:26, Alejandro Colomar <alx@kernel.org> wrote:
>>
>> Hi Jonathan,
>>
>> On 2026-02-05T10:05:08+0000, Jonathan Wakely wrote:
>>> Hi,
>>>
>>> I don't understand what "except for the added restriction" means in
>>> aligned_alloc(3) here:
>>>
>>>        The  obsolete  function  memalign()  allocates  size bytes and returns a
>>>        pointer to the allocated memory.  The memory address will be a  multiple
>>>        of alignment, which must be a power of two.
>>>
>>>        aligned_alloc() is the same as memalign(), except for the added restric‐
>>>        tion that alignment must be a power of two.
>>
>> That was fixed (removed) in
> 
> Oh great, thanks! I was only looking at the Fedora man-pages, I should
> have checked git first.
As the Fedora man-pages maintainer I'll chime in here briefly.

Fedora man-pages is currently pinned to 6.13, which is the last
release that contains the required copyright notices.

Will the next release of man-pages include the changes discussed
here to restore copyright notices?

https://lore.kernel.org/linux-man/b6prio6ck56jekesw5v5gmmzrkfqdtjqwaq5jzgugkhy7tznc6@jhag73ju3qq3/

-- 
Cheers,
Carlos.


