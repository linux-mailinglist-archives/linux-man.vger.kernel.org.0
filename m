Return-Path: <linux-man+bounces-5536-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kEpNKB2zCWq3lgQAu9opvQ
	(envelope-from <linux-man+bounces-5536-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 17 May 2026 14:22:53 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 386F1560F16
	for <lists+linux-man@lfdr.de>; Sun, 17 May 2026 14:22:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 48CCD3007F66
	for <lists+linux-man@lfdr.de>; Sun, 17 May 2026 12:22:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCE8B36212D;
	Sun, 17 May 2026 12:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FqBvjNO3"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-dl1-f54.google.com (mail-dl1-f54.google.com [74.125.82.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8174B361DBE
	for <linux-man@vger.kernel.org>; Sun, 17 May 2026 12:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779020566; cv=none; b=c594//XCcEIt0tVJXdammRrCTSxR4A81CBphYSU6glnO7KRfIyYvgchiijHxvoWYrx2m1i9+bin8d7SrbgH0sR3CZvLTCSJ7rPu60fueBNyksDLpl5y+tnuOHpZZ2OxyTnkqW5e2Uj9m5a7u9zZ5aVI3HtZGtOG5TDCqQ/Ov/Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779020566; c=relaxed/simple;
	bh=i+31P7kcIhN0LMsQ8/Ex4lRX+bGn005nv3+e7X787lc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Kt1Lw3I+ad2mdwWrEMX1spt59ycVJPAPrqnvq3sPgg9s8AZYsTXNakKUihlJ7RgMqFSNCGSbVAevzSIh2P8YfV5HAVBfJmaw9/bm2Y/2c9zJhzbf+e2AI4aI83rvVvk5JNwbOu0HdN2T44Xs3xGeog6lpU9UfX4jfYOlmK0AJyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FqBvjNO3; arc=none smtp.client-ip=74.125.82.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-dl1-f54.google.com with SMTP id a92af1059eb24-1357c851a48so314823c88.1
        for <linux-man@vger.kernel.org>; Sun, 17 May 2026 05:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779020564; x=1779625364; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=V3iiKD2eMwoSQ79tsXaHOrjDA+YFIKcI3Xgl+V6iSDk=;
        b=FqBvjNO3KIahpCLxb9Nq82y/c7bWOXc1T8hy1HzTUbNofMiQ8LclXlKx4YDtjZfncy
         Zak+sil7moa0+JwSZTQbFTpLRdxhp/z/MejNq2YnS11MhTWHn5KhZp8/Y70bF1daAZkc
         ixsj/dWV91bHUMUjtCsgysL/sN0iWPan2yE3TaZsez3EXgTupiJM3Grm5TxBhlwx92jF
         9TACRVMseL1c36d2hDXBYj8vyj8PD6Cn/wKoK84EHyefZvS+ajR1B80prlWHGttqCbHB
         jvKW3flyKiYEpF0kvGSGy8k3k9KNrGrWKELT4J1AOQWwTDVmxqwYiisMVGZm/NdAW3SA
         eDFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779020564; x=1779625364;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V3iiKD2eMwoSQ79tsXaHOrjDA+YFIKcI3Xgl+V6iSDk=;
        b=HRtbjD6TQdqi8tzYvKJojzs5JN+WV7dOkbauDe/Vv6bns93bQJXI5ApsCCBeFCceQG
         K1Kaepc+oTSlw8ZgtWQmWLSq+NkwwMSOq6NqcGmW3WCoLLaCM0B00WKWhoIrCa+vxU3j
         CWJUakChjSJg+zpuvf5+4TTAjbGJHyEzzbE06DQA4BdumHdBqjLVnDxROIYWrxxaMa67
         2WUonsB9CxsAmP1GiiCQHzZlWKlj9S6K3QtVj/8ngCaAUHHzP1lfxZIGEEp7EV8osbIF
         Gee+ujStbK5CjvnW3ku67ktsoFj7YWRXhRrdcx+9akLTLjvkc9h0us/i9wKi3xnP0ktV
         oPIQ==
X-Gm-Message-State: AOJu0Yy+3kcKyIsQ8iGlDWKV72N5BuzWrFieYb4hEsr5rGQEPvsL7VD/
	mfF46HBIjkqjag33MXgupcxX4maopSUxGkorGS5zV+0qchZ6wF53a6NiWL48/XrzfwUyBWwpRP3
	Qdenu
X-Gm-Gg: Acq92OEJmbOs2Y3syuhAr6F1m2GtJpAyv9dUQU5f/CyWOIdOfeMevMKxldJlixfIvb+
	7jj2Z25Ya66FgN6D6QilCurNu7Zb17LfY7GeQ8DJnbiBpUYyfn5um0M6JrT3cP+Nh6JIarTseKp
	v+Z1mVGhIIyciZvEcCb3lHI5DAwDmvmD072IwEInQF1XQ98ZHHxgos/A5pEEzJQqPoFha605cg0
	zTKyKCmZioRDrXuGXsfQY0KY+CxtbDmOArPhmXJyzlevJwhP3I6TrcwUVVQH9KsAEqqy3nlNyqx
	STTkRJiwPkLV31+Iyr2ZZsgG2uudlt7+brNr9DcQJ6RmMf3Z+KfkAEsCBUCJR3Hj5fBmTT2xHYv
	cxPpT7Y172N5Utb+1KHAD/nswILVz1q2WJVUBcRtdM85tZlOjS2y64ToLwO4X81Pds0KMuBoDc+
	TcWImljeOuilgSk5WMfkz8kzOyScvDu35Eh7+eMyk9saRObiBWcBSYXZ6MLMiGFqeaaCuOY3w/Q
	eFiYHrwQ90GtYyBqz7g2PMKINPwMo1I2g==
X-Received: by 2002:a05:7022:45a7:b0:134:df7f:a5cf with SMTP id a92af1059eb24-1350484244bmr4163876c88.29.1779020564415;
        Sun, 17 May 2026 05:22:44 -0700 (PDT)
Received: from ?IPV6:2804:1b3:a7c1:d905:84db:45cd:c147:22e0? ([2804:1b3:a7c1:d905:84db:45cd:c147:22e0])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-134cc33a618sm17451800c88.12.2026.05.17.05.22.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 May 2026 05:22:43 -0700 (PDT)
Message-ID: <c57574d1-9031-4ae6-8cd1-0e74931b9af6@linaro.org>
Date: Sun, 17 May 2026 09:22:41 -0300
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: non-standard const-preserving string APIs
To: Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org
Cc: linux-man@vger.kernel.org
References: <agizh06CdDnhDvAB@devuan>
Content-Language: en-US
From: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Organization: Linaro
In-Reply-To: <agizh06CdDnhDvAB@devuan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 386F1560F16
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-5536-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adhemerval.zanella@linaro.org,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action



On 16/05/26 15:15, Alejandro Colomar wrote:
> Hi!
> 
> I'm working on documenting the recent API change of strchr(3) et al.
> to adapt to C23.  While doing that, I've realized that the related APIs
> that are not standardized by ISO C, such as memrchr(3), have not been
> changed consistently with their relatives.  Has this been discussed?
> 
> I think the inconsistency might be dangerous.  Should we change the
> other string functions accordingly?
I think it is reasonable to support const-preserving to the GNU interfaces as
well. Are you preparing a patch?

