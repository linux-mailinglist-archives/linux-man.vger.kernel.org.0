Return-Path: <linux-man+bounces-4125-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3FEBDB8E9
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 00:04:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 150B518A82AB
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 22:05:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6217330F945;
	Tue, 14 Oct 2025 22:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="YGSGPm0K"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68CCA30CD8D
	for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 22:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760479399; cv=none; b=LdQEBvniyPa7gqoaWjYy9yfMfqsjrutl1PB7LQSkVDW11pfeslIN0opn3w8SfBrfwZrOR0/iyiDmahP2gSPHGnNWtP0rLbzlIcudBXkIiL+TeIjDNeDPKGXfyhXD84cpfkxdYLDxyVyxJVMDBbA+60IKSJPtg3z30ToJltBCj3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760479399; c=relaxed/simple;
	bh=qSGAK2JH548gNTH9p5mI1GJ3esx28wRm+DFqILx897Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gv2eKoSUqGe4hi/7DdlgUmCuRAinhAs7pvgnKA67xp+Olmd6l9LMH55X/A4a/fClNnUPqAMeS/fO/ptxCXR6aVyHofXUizZvBVYGJ8JjXZ6T8n6WRx1Zs6qyDC0cdhr/b3rn8+FBKHIGZLTs13SqpVatW+IirTCHhapZ1ZOobL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=YGSGPm0K; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760479396;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=PBosT1S/Gwls0sK4NnGdLR9qXRMZX9GJspyFj0GxbGg=;
	b=YGSGPm0Ke8gNfEWZHlEi57rBJWxvFzNtCX9lhuiyKksZ08CZjCcmvMGQBNfF61kBSJVi3H
	5ELqWcbL05GzBbkpMSxid44gJYP7iLsfcoOTByXlQ43hGSDJsrv16uiJ3i95r3Uw060gwq
	/wr8OvdjQwgSN7FyLrHO1odLaOcEza0=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-670-EZKaqW64NcSLtGvrxzx40g-1; Tue, 14 Oct 2025 18:03:15 -0400
X-MC-Unique: EZKaqW64NcSLtGvrxzx40g-1
X-Mimecast-MFC-AGG-ID: EZKaqW64NcSLtGvrxzx40g_1760479395
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-78f6250f0cdso257122436d6.2
        for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 15:03:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760479394; x=1761084194;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PBosT1S/Gwls0sK4NnGdLR9qXRMZX9GJspyFj0GxbGg=;
        b=tDwD+EVooPkc4p8R6xZcoMQDcgBJ3wNBBNsgman+PYFwpiiZqHzs9WikicYS2FaIaA
         CuMbkbcsKxGa/CKqtWSMOqGBDJ6M7ihZ1siMAq06ICwZ3LdLnU/a5nuilLr+g4UlT4oS
         UGY9vnnZ8ZRIinb04BL+D8fcLVH8OcfYbPzZ+uhRlTdvWQCBJ3haYsfmhZG3BrLOAobk
         vInrcJ9d4hpxUBRxg+frq1tmk4Yp+DV35iKK9+5wP2lmaLzGYbQQsPYg9JOdNtwQqVzo
         jCsZUQZI16xyn8exglp2UI8MBGX+z9IF7gc8ByN7ajv/rRbE0sdvG59gdomoS4/Xl05H
         zjZw==
X-Gm-Message-State: AOJu0Yw/fD8QBEhHerhgU/yDgsud8DipS4Tcbu1yQggEXOZajima15Jq
	PcvIN2AFBgIdYeKKharXcGD7Bl9R/WtTV7YimaaTOV1C4yGHepQODWjAfBN84nVNkd0J7naOTT+
	HQz0mhR5rS7NdhmVQXkVr4fgr+yiMD6ME6oK9lyIXnmE5+ln0XOm/bcOLKkHNIrijB562EQ==
X-Gm-Gg: ASbGncsSxRI75Qgbqneiwn0Cgg/ppcqA1QS5woE4sE+wyUbbJoNMan4RK2X+EHPjB6n
	Uptr4sPXEUnNLOgXw5vZaI8Mc5VHw+cBooAtnXVWKqEwtkfFJLh7iW7VAVBYUFBD+o9oIZDu9+h
	VVodKdCRTjQAauKOKp14eDCV9sqsTCW5QQpXivH0yoqFCWLgF0znUqS66zYQK5UvXswT9iUktcg
	oaOwF3h39StVfgTJuufmKDYaPx+DuFxhSWx0xUoJKgH2Ady0c5eyEZopv1dJ4V9pmh/BGnIfgWF
	d9oMrJbUeUzFnVo0c5iOIUdgXDDrnnzuVBJzwretJg==
X-Received: by 2002:a05:6214:2503:b0:746:e5b3:e123 with SMTP id 6a1803df08f44-87b2efc1fecmr375874266d6.59.1760479393961;
        Tue, 14 Oct 2025 15:03:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFUne54PESv5SZ1Wpl54udgZw28+YaAIaKGwlcKxJXNpCr5Ivbe2eUzT4fVm4xR9lYJhimBuw==
X-Received: by 2002:a05:6214:2503:b0:746:e5b3:e123 with SMTP id 6a1803df08f44-87b2efc1fecmr375873646d6.59.1760479393358;
        Tue, 14 Oct 2025 15:03:13 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87c0122d19asm6150006d6.29.2025.10.14.15.03.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 15:03:12 -0700 (PDT)
Message-ID: <0d2c1adb-ec94-4411-9ca3-d137feb076d9@redhat.com>
Date: Tue, 14 Oct 2025 18:03:12 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
To: Alejandro Colomar <alx@kernel.org>, Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <877bwx6u48.fsf@gmail.com>
 <xcupkgdicaihwfxnggznr2wkks6d4axm23is6arlly6zyeftlb@xf2gci2joaeu>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <xcupkgdicaihwfxnggznr2wkks6d4axm23is6arlly6zyeftlb@xf2gci2joaeu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/14/25 5:59 PM, Alejandro Colomar wrote:
> Hi Collin,
> 
> On Tue, Oct 14, 2025 at 02:39:19PM -0700, Collin Funk wrote:
>>> So far, I haven't noticed any contributors using AI.  Probably, the
>>> combination of relatively few people contributing documentation,
>>> combined with still working on a mailing list, has helped us avoid the
>>> wave of AI contributions.
>>>
>>> However, it's better to take preventive measures.  AI is entirely banned
>>> in this project.  The guidelines are clear and concise.
>>
>> It might be good to provide a sentence or two of reasoning, to avoid
>> repeated questions on the list.
>>
>> My main concern with accepting AI contributions is the current lack of
>> legislation and case law in the United States with respect to the
>> copyright-ability of the output. I also don't trust AI answers much, but
>> that theoretically could change in the future as technology improves (or
>> less people blindly trust the output).
> 
> I have many concerns, including copyright, licensing, quality, and also
> harm to the environment.  I posted this patch to the mailing list so
> that we have a resource to point to for complete discussion, instead of
> just including a sentence or two, which would necessarily be incomplete.
> 
> I might include a note saying something like
> 
> 	if you believe your use of AI is necessary for a major reason,
> 	please disclose it and ask for an exception
> 
> for covering some cases where health is involved (such as what Carlos
> mentioned).

Requiring such disclosure of health issues may be illegal and discriminatory
in many jurisdictions. I urge caution here and recommend we not go in that
direction.

-- 
Cheers,
Carlos.


