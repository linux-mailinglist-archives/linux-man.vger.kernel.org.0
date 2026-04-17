Return-Path: <linux-man+bounces-5340-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKPnOS/W4WnQyQAAu9opvQ
	(envelope-from <linux-man+bounces-5340-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 17 Apr 2026 08:41:51 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C066417813
	for <lists+linux-man@lfdr.de>; Fri, 17 Apr 2026 08:41:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5028E301AF7E
	for <lists+linux-man@lfdr.de>; Fri, 17 Apr 2026 06:41:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77B58334C1C;
	Fri, 17 Apr 2026 06:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="YJFsw8mN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D9D33688D
	for <linux-man@vger.kernel.org>; Fri, 17 Apr 2026 06:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776408098; cv=pass; b=tz+eck/waRuVmTgfNGnH1p0p4nizp6npsWVq8RnKAReueRVBYxGt7x4TVNLpFkmUDuOSy10aP3bso7ctX3V/ZhFOzndixywZg7a/sAFxCcK+xJISSIBCj3cWdoJKtkjLnu0ptZKdfb01XUi04ukIsbygsFzFTwFMk2G71EFviTc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776408098; c=relaxed/simple;
	bh=Ghu8BoQ9ZLro8HMrgIUStgPoFcgB4zyl1Ex41ZnDw7c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pqD61G8yqB05I1X57y44bLgrr2jmcmoRguKiUws2TdljhfUxX1kAAtXtyGTIIhZ7aiJYm6VkB80QPd+N38AeIY56g9IezibddQZqT1Z07LWLUoEy/TVb2wyQ2x2AGhFYtqXY7RR7zTgw08gQU1ojmoAMHSUeN3eg9Rg9m+9jshI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=YJFsw8mN; arc=pass smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b9c11eba219so44102466b.2
        for <linux-man@vger.kernel.org>; Thu, 16 Apr 2026 23:41:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776408094; cv=none;
        d=google.com; s=arc-20240605;
        b=F4cGJ6t84e2PMzX9G4AUFO0ZD/+8auL2UuIAXkgwefcarNUgDrswpu5yevDwxPR1QD
         Fke7IWi15TNHwtBUIppPGIJY2uO0DxWN7HA+xc896SdRE0AmNmhD79186rgNGHmtcCYb
         wi6OgZ3dO1nUCOF8hz7zLB79f4AqMNCN7CvhyviPJ8VDfj/dByX31ofeiV0TPgM0Kesj
         2HCMHolCybWdfad9J2BTo1X0Zngu3KkrgEfMQQkm+WgoK7qyrVwquv//oYMQZWFog1T/
         oD/TTU32sqZhVsO2utAkK7NeXqb12pX/u+R3yPW02/9ViUW23ST44RBfd0MbjO3t4/07
         LETA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2c8D4GX30D1cmXk5tfK5Lljyn3lIb7kfbPddJDDLpLM=;
        fh=H6LxYOs+tbaxJIuiz2GjZtErgcNLy49F/Y4DIFIJtGw=;
        b=MGhncpELXPDL016DqDvYNXxqNkQXE/Wd+O+GogQyhRBz/7NWnibDvP1rgLrdEkc+iB
         JT2Z9dPSy2KukjFZO2gwdlmCe7B516iEahDajpWiLNmxMLIRWjkKCtIzJU834nQ8Cdj6
         9QydZEXTaQOxN1liF9bZRqNYZ9hb4JplZGlJna8B4Y8g0TX1p8r4KvXizhlCNNRdq+Cs
         rDVXXo5bLHyvHzKe590CW/vWqa02cJqDJJMUwluar48ir23fDKimFNOmfdo9BIS3E5QW
         McPdMMkzE+ywL/FN3d9L2wOlFJT0qYCD45X0/dMgIBpBdaieOukSHrEOOeEcD+9ljb6C
         WGew==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1776408094; x=1777012894; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2c8D4GX30D1cmXk5tfK5Lljyn3lIb7kfbPddJDDLpLM=;
        b=YJFsw8mNRj+u8RMHfb/BYbqFpFgGCY5ENR1gWhSEFBrt/vOHGY1Or255Kx7I7wOfY/
         /bMxym/g+HETZIMRgFZJ4rDtjr0Nd3gukcgsrU4Y7+0mPPwNCKEtZajMvwGpEU6sSHmN
         3hx0jvQbHPOHtP5ah4QGz0SfTK/ikJBzgKMstsEHCNbDwqoTL2p3z/Z/gopqG8Q5iQ7h
         Ge+ayZ0uzfm6eUAILyAEKixQgB8zzeGwIwRm9v6A20E6KvihKqs+AvLT9kt/DboovpLI
         g0zkQw4nsBWNIEmSL+2Z0xaaJrZBIustmwPg2HYWuGJRgCWsfjQfEGCgiByzNnqQQ6Dk
         Mwfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776408094; x=1777012894;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2c8D4GX30D1cmXk5tfK5Lljyn3lIb7kfbPddJDDLpLM=;
        b=fqmV0lQ7FYycaTQJ5KezHdw4yUEzvFcr42mTa7DEzFc0wnTjJH4IdXaH7CwuLlWwB/
         pigVekDbW3nsAKB9vV3S2Yoixdv9jkH6qKDNh+5CJjGZkSdAATyHOZ5oHPSE0dXpo9QX
         EK22cGnwGX0FhdomSSU7F2pn1HKymG/VgVvROOhG5sbCW/2z3b+ZVdu028ag2n0BQyOY
         stqL6GWL20fb9gch1aFnvwAuIJIkXDbHI54QG2+Ic0+oWHRCtMIZX6bL/hPbIlr93Yji
         mxBmEZMtk/HmZAggG4XugvlG72kvO0jB5MY9VuyFTC7UKs9cCz7rmx1l+2GRWM+nQ/2S
         qdCw==
X-Forwarded-Encrypted: i=1; AFNElJ/Zs12b/GLNE2EIeTBtng4TZ5uoJAxqugKCF3xwOdxF0faQw3XAMGbiPA14KXTtrnE9wxsy0Q9IXzc=@vger.kernel.org
X-Gm-Message-State: AOJu0YzJIRcTTtRnoRTe+v/fNYm8lNc6g7hBonIoFlDjIoa3+48TkU0P
	HWBhteaI8FmJJ2CJ5MOGEIpns0FKZVhWHSazugMiktuhATeVdW9aORXGbtJrNVLaVF2CYgReyqk
	3JnOcZtoxshbnMTt1F112T+FGnvUoMDLbPDSPYgDZ3A==
X-Gm-Gg: AeBDievVGVcm5WDU4g99vQ3JQXhuoPJQK91+1XKxZdrQHAEO0CP1yYcVUQgMum3mrLU
	YNNRphGigvjouLgHKAh3T5VgdxiHjdyD00HwD4WHLysIPOD8HOVRd3RiZFrjCbYi4G9/JdGwtnb
	Vmg8dXzQRl/qbSe4FP/o8lgVgrPQfU8nkeaenDrb33/E5dhd1rcralvQ65D1sN7kYql/qLUQK59
	vNRAaazDEiena7E2veGsfhX1QVMFN75KcUqCwAo38FInIr8k947k7V7TNznTyDeUX+/o/MfhN7Y
	NRJElxyg+7IrCxMrBgA0+KFWLTiEw8vPeCxrqR6IuY6oLaACO38d1p9mKAFnOOQbaHfbNXNfStT
	1fzZpVEmE++Qzho0xDnjXIV2zx/LolGzLqxLg1zp3Xk4F/w14wAlOgzKgXt2apTPgY3L3o/+gj+
	txrLtsDBJBsNUbq5BTCHsAxlHh7fNOARPiqh6CKfn94zBFzMZmP0W4AIGX4Wj5QfJ9j64/oROFA
	x31dbA=
X-Received: by 2002:a17:907:a316:b0:b9e:618:6d66 with SMTP id
 a640c23a62f3a-ba41b3e3b5cmr68079666b.44.1776408094222; Thu, 16 Apr 2026
 23:41:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAN6Ha9b5Tujw=sB5MwhLhnt1XJodmH1TOfeZWJk_VWnWE_smzg@mail.gmail.com>
 <20260415182417.b6cvefbzk6ss3lmw@illithid> <CAN6Ha9YYK7jD6D-_eKhHQA0dT3kfkGZuka31Pg+ka=mzt+QtxA@mail.gmail.com>
 <aeADVnt6NpZ8qC9E@devuan> <CAN6Ha9YD1T41jTLDux_fwFGQnWEWKQfwPGUC54GrRRG5XXtXog@mail.gmail.com>
 <aeActTSkTKUvMSSW@devuan>
In-Reply-To: <aeActTSkTKUvMSSW@devuan>
From: =?UTF-8?B?RGlyayBNw7xsbGVy?= <dmueller@suse.com>
Date: Fri, 17 Apr 2026 08:41:22 +0200
X-Gm-Features: AQROBzABTXe3qTS6D1UzBdv6DzjP_d6Jb8WFbjOUT_RhynPSTcoK3tC3XoZK0uM
Message-ID: <CAN6Ha9Z0TTQ5HoA5GthQcExK-3rAf0mi-1svpL8W8TDw2KZBxA@mail.gmail.com>
Subject: Re: [BUG] typo in man2/readlink.2
To: Alejandro Colomar <alx@kernel.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[suse.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[suse.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5340-lists,linux-man=lfdr.de];
	DKIM_TRACE(0.00)[suse.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmueller@suse.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 4C066417813
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Alejandro,


> If you can reproduce the difference, please share the details.  Maybe
> there's something wrong that I'm not seeing.

Sorry for the noise, this was a downstream issue which I now resolved.
Thanks again for your help.

Greetings,
Dirk

