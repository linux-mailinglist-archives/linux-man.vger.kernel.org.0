Return-Path: <linux-man+bounces-4118-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9E4BDB6B2
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 23:32:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A373B3E5BDD
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 21:32:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D4301DDC1D;
	Tue, 14 Oct 2025 21:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="a6IuZFf7"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F68188596
	for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 21:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760477546; cv=none; b=PPb5kLuBL7SJc5IoUUQ3u3DQ9sMXJN5I0B5CyGZ1GvmHjl9Roi+0cqo5BVmMAbpoolTAwO+daH3AZbZTCyrI4Xvu1swIgcane3d0yNDFoIt4NFyZLic+G7y7dVVvbJOB8l0DFEewJBbMkCKJL24E4rqjxBNuKG678K7lXmD2B4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760477546; c=relaxed/simple;
	bh=E3Oo6/79WlAgDj1yz7n2cM4ee5n3sn8ng18vlCGyb4s=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=VgFgDsyMJ6lhofvsXK7ej67tYVW4QNTkhtGz8XpN+kqkuHakPt6k+JYFcUfd/YS3ZFQr2H7JfwLOKXyT9ElnhimDQfdeZ8wURvh/zQhsTGAjV1do5gBDtkfYPU6JNYpkdzLAcKB60K/S8bWEi/XRbksmox+OOvcl9zag0uTq7Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=a6IuZFf7; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760477542;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=fuSucTHiGLjdd2G7h0Q0bxIFHe5ecvjGld1ZafAc3oM=;
	b=a6IuZFf7udlv+wPqxc9huQ5nw0fohVm0QCY2ZJWdshHptsUVzcOaQZKXVSr9x+SIONdK+B
	+Hpsf5raPg5Kd0Mn4knoDm5LL0LpRlixb53KUIE5i+GkfAkSMk9QcofBUNH7B9eY/WoGWY
	D+U4TaDvNR67dYi8ddWLPCYCI8uKodk=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-607-FHbf5DMxPvOnnJ5M4D0G1g-1; Tue, 14 Oct 2025 17:32:21 -0400
X-MC-Unique: FHbf5DMxPvOnnJ5M4D0G1g-1
X-Mimecast-MFC-AGG-ID: FHbf5DMxPvOnnJ5M4D0G1g_1760477540
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8741223accfso351965296d6.1
        for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 14:32:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760477540; x=1761082340;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fuSucTHiGLjdd2G7h0Q0bxIFHe5ecvjGld1ZafAc3oM=;
        b=iSslGKUl1ovBVoQ2G25mqM3gGnwCU0jpes8XqiY9Y4XmzqmV7DrRr5ef39adRvC64m
         iYF7orVsAv/k9GzK6dH7Eu1LC54Zh6X1vnT4cDjIQlseobiEU0k+wPRWpePVTjg3AFYS
         2AyfltDIDHm2TibXNXHH0eJd3Z1ckl+Wv4xQ164F+qSBifE00/PEXXTCua4o8yAuqu/R
         5IErNbpri2VKdF7Eju6np8Q2d4Z0wb4gEgP406LoRMEzNS9WSckKtvSQBMcV/yaAo6Aw
         8nHQnpEfZU0oYNjn05L/i9AEjdO0L6KDfhIZgHQdjG7zuCmVHibROMRL8+90mhE72IHm
         Ajeg==
X-Forwarded-Encrypted: i=1; AJvYcCUDR8/Vmy38trF4Uf0wpGl23UgSyweIjDx6P4JHYIG8KowB1a4qcePi3nxJML/bAfBpXLGizRlEoTY=@vger.kernel.org
X-Gm-Message-State: AOJu0YyYeWKyuSkTqlZrY8j4el2BtOuzJdzzm/M5Y/MNuynuoWSZ3qkG
	HwhSmwFITdj4x2nE2SKQNNmiVAs0xds7sJP5FL+7H+5zPbFvwpdoe2+5nzQxJSCU27LGQ6+R5Ff
	bAqXwFHgZZgoMlqasOQ2RtArHA/+h4b+PDVkzsq1X657MK57DMzvxy65zTHWDahFRxqne/g==
X-Gm-Gg: ASbGnctbxRn8Rh9Q3p9wtSXC/bnMNXB5AN/H3XdJEq2pphV/5Ae+ajUsgIPLae7Vban
	HqQ4X5/6Cd6e75q5yG+MDG0Gxn0ZlfohEXo28zqKY9MM04axPerZqmL1woO2lEGF3ePzw4Zslgw
	ckH5+i8MKOl8qRCeXepEGA6g2zX/UocEdn674Wq/zi7hHlaLJuezFUXMv751Hdjul4xAqJaQdQz
	SGJxXwaRXBCtkbJi/25uHSnQhX7ayhz2nWVsgAZ6R2YQksNsou3kczEi4SHFPu5npRIURYTjz9o
	k1t3V9dTATfu28Fl7lz0CPBUbYOg3kQXFwYECUaqKg==
X-Received: by 2002:a05:622a:5cb:b0:4db:2034:9f1 with SMTP id d75a77b69052e-4e6ead62e5cmr383353331cf.59.1760477540099;
        Tue, 14 Oct 2025 14:32:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGalERC+USwGFzdkoXohjLVjDZUWLyOqZRShBqztb0vXJ5/5UvoNu59BlGAmfSi2yS22sdehw==
X-Received: by 2002:a05:622a:5cb:b0:4db:2034:9f1 with SMTP id d75a77b69052e-4e6ead62e5cmr383352441cf.59.1760477538951;
        Tue, 14 Oct 2025 14:32:18 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e881d1796dsm5982341cf.29.2025.10.14.14.32.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 14:32:18 -0700 (PDT)
Message-ID: <f733e521-e3a0-4c35-922c-85461e0b1c1d@redhat.com>
Date: Tue, 14 Oct 2025 17:32:17 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/14/25 5:27 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
> 
> Hi!
> 
> I've already been DDoSed in my own home server by AI crawlers (which is
> the reason I decided to move the HTTPS server to port 80, just to break
> links and stop the madness.  I could install Anubis, but I'll resist for
> some time.
> 
> So far, I haven't noticed any contributors using AI.  Probably, the
> combination of relatively few people contributing documentation,
> combined with still working on a mailing list, has helped us avoid the
> wave of AI contributions.
> 
> However, it's better to take preventive measures.  AI is entirely banned
> in this project.  The guidelines are clear and concise.
> 
> 
> Have a lovely night!
> Alex
> 
> 
>   CONTRIBUTING.d/ai | 5 +++++
>   1 file changed, 5 insertions(+)
>   create mode 100644 CONTRIBUTING.d/ai
> 
> diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
> new file mode 100644
> index 000000000..1e211a4de
> --- /dev/null
> +++ b/CONTRIBUTING.d/ai
> @@ -0,0 +1,5 @@
> +Name
> +	AI - using artificial intelligence for contributing
> +
> +Description
> +	Any use of AI for contributing to this project is unacceptable.

Does this ban the use of LLMs in assistive technologies like screen readers
for the blind, or speech to text for those with mobility issues?

-- 
Cheers,
Carlos.


