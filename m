Return-Path: <linux-man+bounces-5042-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCsUNAL3hWnHIgQAu9opvQ
	(envelope-from <linux-man+bounces-5042-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 06 Feb 2026 15:13:22 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBD6FEAC0
	for <lists+linux-man@lfdr.de>; Fri, 06 Feb 2026 15:13:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F3940301AD0A
	for <lists+linux-man@lfdr.de>; Fri,  6 Feb 2026 14:09:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96D423EF0B3;
	Fri,  6 Feb 2026 14:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="bxZ1XQKx";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="HEL2xlF0"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE902FF164
	for <linux-man@vger.kernel.org>; Fri,  6 Feb 2026 14:09:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770386967; cv=none; b=cPCcwD5JLLUVVsf+xekKOG6wCEhTdn8bMmfCv0wfYJmSqdPyg9prI3EC+LQvteWWRBVp6HLPGjh/mo5iM3nGL6IPnQycAc1bAi5D42m55Er4zJmuSDfazypUlRW+ztneFp80mfD5Us7oHc7kLiv2dTu5gX39UDYMN7eiKv+vpqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770386967; c=relaxed/simple;
	bh=HAoHqe16opjBcgguJNw82PBYfv2+McKQYJ944osmJJ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MLWfP6/wqpSvEs5pvwAZ6ghyz6c95VaYtlRopcj5sJzKzVt9Z8Sg34GKhGD1hH95b4AHvEa6cA/fayD2Kt6oClqLm/ZvfphGxCkNhxUbfw1z6i8+qDo343N1K2dFEoMehl1RY81tWqsgmU3fB3N7fZA5dOpuH3Mfm2vGghqOT2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=bxZ1XQKx; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=HEL2xlF0; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1770386966;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=MYpvSrScCFNVCZhjlOzUFXp4uxcCe7pvjyOftAzClrE=;
	b=bxZ1XQKx6n1ZdHethEZDM6N084qwQa5dsmAME6filzFlCOKQ8cYb4ZTLXijCH3aNue/m21
	NyIa5kGDr/FbSP+sasQ0oYoFPSVMneMkBYH4TMY8mE8spQaG4EMqw8K+o5TDe4xvE1/ILp
	VfIhTIVzEbOYvUDoyVmT9xPQmWLcqTM=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-35-XtioV8xWMleqSzpMWyMToA-1; Fri, 06 Feb 2026 09:09:24 -0500
X-MC-Unique: XtioV8xWMleqSzpMWyMToA-1
X-Mimecast-MFC-AGG-ID: XtioV8xWMleqSzpMWyMToA_1770386964
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8905883e793so74059796d6.2
        for <linux-man@vger.kernel.org>; Fri, 06 Feb 2026 06:09:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1770386964; x=1770991764; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=MYpvSrScCFNVCZhjlOzUFXp4uxcCe7pvjyOftAzClrE=;
        b=HEL2xlF0tG5qXoUkpIXwuvO5ZHpFPv9xSUzCfei1YmZROHW3wfugqAS/jSr/r1E6Z5
         j9sVcGLSjLeS6Yr9Bi7O3FXBzsmXihHFMmo2ILF0rcMXWLvc3pdhr1zLtJhbIPHO9dw3
         uD8M0YwMgcubsYZotiGPdaoJQYYhhRGgqxbl9uH/NReF4Kww1w4HuyEX2Ovtz7yvip6W
         P1WS10Zxia5moed2zbuLNw9gC0wxVC8zc/XOsb4pVm3T51/V+cJRBK4OambyQK/E+m03
         N6WPNoZU4c0FV1PKzS/GeB7mCwZUck77bS0OIEiJayVs/IZxQyTrItrFhQHONP2jQ3FU
         Z/IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770386964; x=1770991764;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MYpvSrScCFNVCZhjlOzUFXp4uxcCe7pvjyOftAzClrE=;
        b=htCXN/uQ5jNdUM4oD3/LgSidImYHYedyyeE8SstXHs080sgOLmTm4OW0wloo2SFmso
         /cnARJAm/av3md576TcawguLRBvu4dBEeV0dYQdDFZvQ9ahrARNRv5oVKfOnOFCh+p+E
         EdPwAhiRpW7sB2LL4DhnETXeQMgBC3HbxPPrFnL7s6R8Lh23FzrODr6B8JqWRakvQlWs
         lYTwFBxGbAffsDbrkfOIDa61m6XV7v9O1ZyJctqXk30kv6V1PzejWbqCH7TJTfK2OGkD
         qgnbxcw+drnBEvbGjoWwSd9P+XJGF1kSxycuDeEkYfvSUtctcMO1nIYmk/IJFe/U7ZF3
         Vg1A==
X-Forwarded-Encrypted: i=1; AJvYcCU/9EApi7rTGvkWeJoeAagnaeaMTVjoj4+NIwLbnbJo15LzGl8zhWFYVG3I9VdKCpBubyUAn0euymQ=@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj6B144SAajV1WfsXaMYD+kjq5bMx3AobGriTiI6neu+rH5fr7
	oP0EV1x2W7OdW4G9SP/cdV7aSjjt7Wp2d62HOzJOVUvRQpE5KhlVq7DUxAZGyoRPdG2Gpb/e1Q2
	Z2F5Dz/GGgxCbSho3GVGyRKnWqIBvB5tAG1HL9mh2WG0IhV7HEOY5rkOhcu+hJw==
X-Gm-Gg: AZuq6aLFhIGoRQAAM7ZwJlc0qxb2igV9n0l+z/FaRCYe7JdwaKjIU5i0M8y0x8ZzWpA
	lDYyIs/8UNrWFlVmeo6Zj1K6aodzU7NWd9v+IHOvlAdj2T93kZ0gTkDsO79O37Gfo1BRnqPsELl
	X+CmdF8nBv7aGoCVbhlp1wNfgX9eAQTVDUMtABVpnXZoxOW4AprWELOk0QiGfoCruK337q2+GGD
	CrmQYveMgIIlLK8omgkKHOqbBbx3dwgn3H6vbVgPmUubqbGGf6sL4t1vNSuzEgHN7hn2To6zjjn
	R/Kb5neOirmV2DJf9IuJEnoEaVhbjyKmdQsVbGSUopaAAIsF1ds85pJtpOlcTzThqnvKiVWgNK9
	+ZhUSVj3JUIQOYIdFp6jhhsvRvNsoYG29UjNNq1g6zZBh55H2uF4/HQeddYlk3c4UDkEEQUweng
	oAn9d1YHjWhg==
X-Received: by 2002:a05:6214:1cc9:b0:894:71b0:6afd with SMTP id 6a1803df08f44-8953cd83f7bmr40132906d6.59.1770386964095;
        Fri, 06 Feb 2026 06:09:24 -0800 (PST)
X-Received: by 2002:a05:6214:1cc9:b0:894:71b0:6afd with SMTP id 6a1803df08f44-8953cd83f7bmr40132266d6.59.1770386963645;
        Fri, 06 Feb 2026 06:09:23 -0800 (PST)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8caf7aed5d9sm158631385a.14.2026.02.06.06.09.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 06:09:22 -0800 (PST)
Message-ID: <65b65d5f-aae6-410c-90b3-dbfe3c84d865@redhat.com>
Date: Fri, 6 Feb 2026 09:09:21 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: aligned_alloc man page and restrictions on alignment values
To: Alejandro Colomar <alx@kernel.org>
Cc: Jonathan Wakely <jwakely@redhat.com>, linux-man@vger.kernel.org
References: <CACb0b4nujtK-twnRzjWmXPyJW+0uvbM_AFx3_1xFRj86yPiHFw@mail.gmail.com>
 <aYSXSY4968FXnvRZ@devuan>
 <CACb0b4mDZx9YrpFDCmoSHvjvZpHaHMsauwzcBR-JYib0467hUw@mail.gmail.com>
 <3210db06-d56a-45e5-9d54-618b16940cb2@redhat.com>
 <4cqhak4mye43xtmfoc44nya3eyhvxeyq44y35eu4djnakjnlrq@2utokgcosyev>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <4cqhak4mye43xtmfoc44nya3eyhvxeyq44y35eu4djnakjnlrq@2utokgcosyev>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-5042-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[carlos@redhat.com,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3DBD6FEAC0
X-Rspamd-Action: no action

On 2/5/26 10:53 AM, Alejandro Colomar wrote:
> P.S.:  Carlos, I remember needing you to review a patch from a guy that
> discussed with you.  Do you have that in your TODO list?  That was a few
> months ago.
No, I might have missed that. URL? I can review today.

-- 
Cheers,
Carlos.


