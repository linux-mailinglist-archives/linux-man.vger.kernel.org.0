Return-Path: <linux-man+bounces-5555-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBBPGfhKC2o7FQUAu9opvQ
	(envelope-from <linux-man+bounces-5555-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 19:23:04 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AA3571952
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 19:23:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B524303E2D5
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 17:19:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6CBD383C80;
	Mon, 18 May 2026 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tw2z6I00"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709841DC1AB
	for <linux-man@vger.kernel.org>; Mon, 18 May 2026 17:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779124793; cv=none; b=eUzmrqHRESMBKHCk9gFOjU9nc23WVzK5zAO3uRTmWuP45Ag3SVOOObRDAnkpcPCsaP97r/yTJOrPxxdvcqyO+EHKo6dQJn/9ylGff/Ikcqqaa667AdPF/GcJIuWhHxGvj5pZpGch+E2NOTlIbIHQY9H8Pm2iSF47JMJao5L0aCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779124793; c=relaxed/simple;
	bh=h7vN+FR8/l4rOzQm5Mol67F9VlbVk6QD84EgaLr6GJ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y7/cU6cLF6NIh/Cl9BiUg2ufqBz/6wWxQlS8EnSRPyMBrZ1EW8eGFxMbhcGYQ1Q3L8hmW4QDjNcwU5Roack/E4arZMYd+D8aKFQ5qTyAuTk4HsbqvooshTgLIBHn8E4GUAlXPQ9f+Yl4NlzVqpInZ3aeHV72RWLRGt+KbrEtFls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tw2z6I00; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-51306c36c3eso31730771cf.0
        for <linux-man@vger.kernel.org>; Mon, 18 May 2026 10:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779124791; x=1779729591; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ho9+fH+gp3mSGU3Jbw9Q/JjZyUGLdNr3d0SpXBmC3Uw=;
        b=tw2z6I002oyQe51HoxCdrsyUmklj9RnJsfXV6MVbRm1D7U8UtSxbk7cKdlK9MyFK8S
         62PIAXZaVNTVPLMIirojd//jWIULQmBAQzx9BTV14AAZ9oqH1K+sgymw9RlHZMOobpTK
         4lhhDbl1EEhWPPoIqqm4TWiSav8lGm7OVPOyeOd/F2ldno5khWmbQNtbIU6KrA4s5IHf
         Zdp2kD3hcZ3hLj5YtuUk58m3W2fc7bPlb5LQKFIXznWdLHCqTFdAfwHazIbxq0b7e3Vn
         afzwdqf8lN2HILTJGuYSYLoSanl76FYUr9l3D3dTpqXAIT/bO04jje1kCdAoF2v96rpv
         8lfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779124791; x=1779729591;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ho9+fH+gp3mSGU3Jbw9Q/JjZyUGLdNr3d0SpXBmC3Uw=;
        b=ExNpTK9jIOqBvcvIaeXpDsyXSnQxF6DUW4hwhVj7N+gYndeQPCIIkFEJ8x6q3RgszN
         /Y9GzIfu76C0EqcBYsxqd3tmUcPM7Fn6JHCiJII52/EgAgphUGjt5OxFXIW1dyS1Mi86
         Bwa/RJF0mzYkwTxouhSTuP+y3LbcB8q6O54rnvsLmXoEfQ+ez+K4/NV+SLHqPBujRonV
         OJ54xcoY0FnExQgAf84AroboqlXOcwTLOma4rd27e/++0CKXUZf7w22dg7qWKDXE91ff
         SctvFqX5MBtApzsB9YcQ6lO+vdqIKdF3nyz84JEFi0IHFvFti0HGhg99/b48fJ1293PN
         oShw==
X-Forwarded-Encrypted: i=1; AFNElJ+7J79HOXANHZW+NkNyOqVYnEnoW1hddx/b7HfBbbB5qUtGQhpH5/PG/OxFL9KT/5Xxl2UFGdwqwKM=@vger.kernel.org
X-Gm-Message-State: AOJu0YwpuoNaPL3RArKDsPMZelweQFYaHRYUQgWrH8S9eig3mKzOGGOS
	1OwfR1K/88c5u6B+xwzrE2Onvm7lju8/Wgs+JMOJB9fb83+v0lWzt6ajo1P1Yma+UrY=
X-Gm-Gg: Acq92OFsixwclvu3vOMMrmJdbEKsEuMJInLdH+BHsHbyKAolZBi2yz9XSaHbadtxKSI
	O3sM8I/vnVF7ViYHqtaDysbRHjhScC3LSi8H4JQc4a82/eWGq6Yt2KUj5f08XSYiXKgGgWmqSze
	LlQKEM9As093VKZvliSLvUa7VHtZjCStv9twNlkxMucF8R+SC0RC+WTH1ZVpxYhv+d5xnOFTLTc
	7rixG0FxbxY2V09D0Scsai9CsfWGE1Q0AOyNSxCacarsA7PFXXs2sAWY2TP0Mg8G8Cn1w8hXS9R
	WgS+x24uSzlDXMp/OG1iqU3WrryP2SgjNd9OW72NKyYaYMnJGemEyqI76rMi+PBO+wmdy/5RHbB
	FQuj+UNZoXlgPVExJVtX+KyirHvEzgPAEn6O5OmpXnHfMFhbVf03kuFx/uVleXhZRUsyF12NsTj
	4XBsNR4A2F1C+By1/fLwvcMt0jqchnl3D/el9YrTFCqhNETbllBgYVr0kr4ovqquQKAarXyoRof
	/Crj2q8YkTWTiALTMkITFerZKe7p0+ROA==
X-Received: by 2002:a05:622a:4d8d:b0:50d:db76:55cd with SMTP id d75a77b69052e-5165a3053a9mr230983181cf.52.1779124791144;
        Mon, 18 May 2026 10:19:51 -0700 (PDT)
Received: from ?IPV6:2804:1b3:a7c1:d905:ade5:9efb:f9fb:f113? ([2804:1b3:a7c1:d905:ade5:9efb:f9fb:f113])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8ca3618fe0bsm61287856d6.25.2026.05.18.10.19.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2026 10:19:50 -0700 (PDT)
Message-ID: <0c1e8b52-68d3-4be4-84aa-8ab5bdfee29a@linaro.org>
Date: Mon, 18 May 2026 14:19:46 -0300
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: non-standard const-preserving string APIs
To: Alejandro Colomar <alx@kernel.org>, Florian Weimer <fweimer@redhat.com>
Cc: libc-alpha@sourceware.org, linux-man@vger.kernel.org
References: <agizh06CdDnhDvAB@devuan>
 <c57574d1-9031-4ae6-8cd1-0e74931b9af6@linaro.org> <agnIOfwI5KKGwS_I@devuan>
Content-Language: en-US
From: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Organization: Linaro
In-Reply-To: <agnIOfwI5KKGwS_I@devuan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5555-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adhemerval.zanella@linaro.org,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: C3AA3571952
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 17/05/26 10:59, Alejandro Colomar wrote:
> Hi Adhemerval,
> 
> On 2026-05-17T09:22:41-0300, Adhemerval Zanella Netto wrote:
>>
>>
>> On 16/05/26 15:15, Alejandro Colomar wrote:
>>> Hi!
>>>
>>> I'm working on documenting the recent API change of strchr(3) et al.
>>> to adapt to C23.  While doing that, I've realized that the related APIs
>>> that are not standardized by ISO C, such as memrchr(3), have not been
>>> changed consistently with their relatives.  Has this been discussed?
>>>
>>> I think the inconsistency might be dangerous.  Should we change the
>>> other string functions accordingly?
>> I think it is reasonable to support const-preserving to the GNU interfaces as
>> well. Are you preparing a patch?
> 
> Yup, I will.  Thanks!
I will try to take a look, but I recall from previous weekly calls that Florian
has raised objection that this does not solve the overflow issue (not without
further extra changes).

I am not sure if he still keep his objection, nor if it is would a blocker for
this new api.

