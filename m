Return-Path: <linux-man+bounces-4184-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B029BBF31C2
	for <lists+linux-man@lfdr.de>; Mon, 20 Oct 2025 21:05:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5921B3B67D9
	for <lists+linux-man@lfdr.de>; Mon, 20 Oct 2025 19:05:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B50E25A65B;
	Mon, 20 Oct 2025 19:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="FdIEdC31"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B64B3242D6A
	for <linux-man@vger.kernel.org>; Mon, 20 Oct 2025 19:05:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760987110; cv=none; b=FxX3kxl4bDJsOpMBltwa8H4Aj+a3Oa701v10SWoRFShaxuNRehuwxbW1lSPx4RymN+IqEySANWqHVdjLGvcwGPkmnKuf4DmkmQpEEJFiKQ7R5tgt9UP95Y+Aalm5QYxfSucoCSXmGXuSPRg0ISY3vcwo9GxEvjl+BZO9TY+egT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760987110; c=relaxed/simple;
	bh=WZtmfsqkD16/HJsleV1zVM0XjDvABBiuTScUozzI+L8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ms4ORJORFwLHJCqbsHNtqOmvh7ZnmSldpaVEuMkIahFRG6qhcQKSSsFXKlaEGcHLKxmH/Ww8fhMFLYewudddkitHdAYb1fUhlxq/xLuogHwu5OYG5uSP4D8C652bBzN64rMeuPyN+ZZ9avb2GPxHHFNm+YxISFK1ESb8iMpZuao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=FdIEdC31; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760987107;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=7bs7keFnEM6PY74ZAkxm9lBJLAuR0jx96xiPwluI4cs=;
	b=FdIEdC311jLDe5fqiJtQ8t7jeERP4ieTtQ89BLSN/wJnS4Nz28U/ZtyC9WGtBSFs91a2ej
	sL5Aqj/O60HX/w2/N0JqBX/N86XQaChWAqmvrud4XtFhO7uP2cRSONa+nScU3cJaVf8qJV
	0mT+PmiA61d/wa/8gegyMSaQ1IZ5fSE=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-121-QsUVhvNSMv6heFI3p03ZRg-1; Mon, 20 Oct 2025 15:05:06 -0400
X-MC-Unique: QsUVhvNSMv6heFI3p03ZRg-1
X-Mimecast-MFC-AGG-ID: QsUVhvNSMv6heFI3p03ZRg_1760987106
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-88f1dad9992so542012285a.1
        for <linux-man@vger.kernel.org>; Mon, 20 Oct 2025 12:05:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760987106; x=1761591906;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7bs7keFnEM6PY74ZAkxm9lBJLAuR0jx96xiPwluI4cs=;
        b=D2GNl8tqi7kktKAOfdyF2FjSXxPaddxhACcAY42kFBhzVRiRSXoxUzz4tpkHSymTAf
         Yd+16GE/rKVGJ/FKxuZA5ZLOjm9jPujuLwI80egfy1ZZaEPcFfj4rAACSe/ZFfMzxxNq
         osA8dBhFYsqRjuEjvJ+8vD2KPoNY28BOFx7P3AJEB42rIrh0miysMRESbLcK8py2fXH1
         2f2EqUdCzzIgMYDIv2xmBjyAvhQZPuBFm6e2uMzr6fftb6swYDGl3X0Vt9NQKQX7o0Lq
         +TkrVSM1IbzgCHl1bXxGO0er9JwVvzBQopwPhXwKm6IgjAIzmPvh1j6MmLMQTPQe2frS
         EO0A==
X-Gm-Message-State: AOJu0Yy602b8PcTeRMHsvA42XQQkMrLtnNESXbLyBlkH5g65iYZBjSJT
	Dq8S+jsgohwuhtcVMODEUt175riOjydQkB51rQKIaDXEKPOsHqLFbfsXF7tya5nT9C/sAFW6Jlo
	0pBl5MHKBa1sVZjNHi/VEcsST9LX0zf5ypei2XJWJ8y22JDffkHbOaVD+VGP/Sw==
X-Gm-Gg: ASbGncvGz+KZPtUfr1NgyWNlJrja5Xdqsxj9vp1ccS716f2jNXT+CZOeoaUx9l9g+lV
	VRNRvEOwdFuDh33pvMe16bbs8eJ9zucM5UIEk3PJLPvrVmZj0mInnjzrnZv2Jb/vOkH5inDwLU+
	4k/zdrxEkyfYReU1ma/5eZNbMlU3DnFWvG7Pv6OyAp8Ofl9PSpqSgKXfMAUKP34ToCyhyGxgjUb
	9xrYjnbD6icPmWGFzRxoAMoM9Qq4jrx4t8x3YSuDSjinQ0iJEmIsqga5QtnulrmLRWtJTgojU/T
	eSvMXBbgibuKrdUBvmaQa8e3OhM9GvuLZI+YXLoTVstfCd2NEjTtCwee5Qp85cZkDzzUZ1Wj1jB
	S
X-Received: by 2002:a05:620a:4004:b0:893:1fde:110e with SMTP id af79cd13be357-8931fde12d1mr699355885a.5.1760987105626;
        Mon, 20 Oct 2025 12:05:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF5Q0PCB+OoF/Kjl1sn41Rhtn2acF7N7P6LylGXXmLUW1GyZoc3f9sHZpLu1EDrc5ungW4ALg==
X-Received: by 2002:a05:620a:4004:b0:893:1fde:110e with SMTP id af79cd13be357-8931fde12d1mr699351285a.5.1760987104990;
        Mon, 20 Oct 2025 12:05:04 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-891cfb566c4sm616465485a.58.2025.10.20.12.05.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 12:05:04 -0700 (PDT)
Message-ID: <4ff2124b-3468-4ef4-a046-492d132bd9b7@redhat.com>
Date: Mon, 20 Oct 2025 15:05:02 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Collin Funk <collin.funk1@gmail.com>,
 Sam James <sam@gentoo.org>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
 <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>
 <20251015165624.2xm73mgtymbwil6y@illithid>
 <abtyuyzyayvfpclfcfmexoiqe3umhpijytxguquyee3stkvyy2@26ohhywcpbjf>
 <20251015192422.5ytbfcvpfr42c2ad@illithid>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <20251015192422.5ytbfcvpfr42c2ad@illithid>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/15/25 3:24 PM, G. Branden Robinson wrote:
> Hi Alex,
>> Let's consider again the case that AI is a fancy version of a chat
>> with Jia Tan.  Should we trust contributions where Jia Tan has
>> influenced in any way?  I strongly believe that we shouldn't.
> 
> I don't think the Jia Tan scenario is a useful litmus test.

Agreed.

The attack vector of "indirect influence" is very hard to both carry
out and successfully exploit.

One mitigation is to ask for at least one different human reviewer.
That person reads the change and understands what it does and the
intent behind the change.

As Collin and Sam can attest that's what we're doing in glibc with our
consensus and Reviewed-by: policy (and cost of compliance applies [1]
since we're stalling at ~60% review of all changes).

Even then an indirect influence attack could cause us to accept a
seemingly innocuous change in behaviour within the norms of the standard
that impacts a downstream application that is actually the attack target.

The only defense against this is the continuous integration efforts by
various distributions to place brand new component builds continuously
into testing in the hopes that one of them exercises the same API in
the same non-conforming way e.g. Hyrum's law [2] but applied to testing.

Then we get a report and fix the issue quickly.

The solution is more humans, trust, and relationship building.

-- 
Cheers,
Carlos.

[1] Maxim: Cost of compliance approaches infinity as compliance approaches 100%.
[2] https://www.hyrumslaw.com/


