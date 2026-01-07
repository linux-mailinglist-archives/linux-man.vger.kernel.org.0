Return-Path: <linux-man+bounces-4712-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E01D00448
	for <lists+linux-man@lfdr.de>; Wed, 07 Jan 2026 23:04:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2418B30255B8
	for <lists+linux-man@lfdr.de>; Wed,  7 Jan 2026 22:01:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 664112FB630;
	Wed,  7 Jan 2026 22:01:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="IsYfNvzG";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="hEKhxxtT"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E0C20F079
	for <linux-man@vger.kernel.org>; Wed,  7 Jan 2026 22:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767823298; cv=none; b=f14uWTV4JNIMRI4tLyV3/+gCEeAyhRVtK6FFVlSu7QL7ZJPln3oaV953igh54OyUE7AWEZmddMzMlAyOU2NOVYgBWJojMye7hF4K0CXq2fKdDK4UmaW3r2TwhC7Jne91KIWywakbHOUrULDoZ5Vr6/mszFMeL/KUNFjQrVV8c9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767823298; c=relaxed/simple;
	bh=jJD+wMluDSJbJR9EaskpRxS58I03YBXveelrkM+wRDk=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=SRUFQDGRyI+Bew+phLwH+5c9IoF8ZLPtItLJDfmnB9xVsNwHOATgyzrOL+7vcd4zFiZuIwo45afGcj/mQFnT6zL4GOG5m8EvxJUwozfjFqWkH1h8byaAU0Te473TiqUFOLu7zEPB0YIt4vHOHViftrZE2npI1VtHIqqZzB6o8yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=IsYfNvzG; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=hEKhxxtT; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767823295;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=WgEkjCq/eeWfalypLcZcxL2NfVBAbzWa4XCtbK7BcR8=;
	b=IsYfNvzGB40Jm7MZE5E+JgCqdFgArr+30i8kxSu1I/czfwVM+GzlAWiflr0BywS2/APRLl
	I1dLsaA3jdKQSH5NZkfejjyA3WYTQ50dfOqt3mfS8qmGKDs+cW6NAP9dkqKSMThFSh+Z+6
	qFa9rTGFKAOBNgajCdULzjRdkn5+WMg=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-670-yZdJ79sEPDmf8CSIep1kjA-1; Wed, 07 Jan 2026 17:01:34 -0500
X-MC-Unique: yZdJ79sEPDmf8CSIep1kjA-1
X-Mimecast-MFC-AGG-ID: yZdJ79sEPDmf8CSIep1kjA_1767823293
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-4775d110fabso23486065e9.1
        for <linux-man@vger.kernel.org>; Wed, 07 Jan 2026 14:01:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767823293; x=1768428093; darn=vger.kernel.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=WgEkjCq/eeWfalypLcZcxL2NfVBAbzWa4XCtbK7BcR8=;
        b=hEKhxxtTgteS2bl9KWgk33XODOqf67JCXoweD6HrVYKvCExMhnZ+tPVWD/AYwRhhFt
         tVfAuMGVJ0Za1/mddOlYta6fPowxmd9Q5M7bpV/adk3/ZExhsSWej9l6y9mfDCIn2vxn
         uqjOnTj1h3BAGfvmjIEvFGoUHKBQyYjAfGN0c/6bUzgA0GHsVGzng10XDJTfuwoN68aG
         UndFw++WR6nuYbew8WBUsvQI5jYh3UieGsqYl6Gm1tXG9m9bl3/jDbF5OVoY+2zUm43u
         hma7/1mm031aPkWGQJkB2Hddc4mub1fO9gGh3oZfsTOLX3U2Iaabeowv0zsMK76shCRZ
         M9yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767823293; x=1768428093;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WgEkjCq/eeWfalypLcZcxL2NfVBAbzWa4XCtbK7BcR8=;
        b=W6G7hlDIAOydtzSChJ70Cy0Cj3hSS2V+FP+Rk9p6zfNSOGjy69JUvJ0PHcgGZbDBOA
         xTZlNvyVDR9IpggxA4CNFVLQVpuEa4GPYUE2xRfpQXjWijC0Cb1wwmfB3/ki1npvlQKN
         3gJXihw2/olMcTvkGEFp9AB3iEekgfvaATgHTa8YaBKWuiwyPxGhVF97WdyOYOCQsnym
         n0kGDdvxSsdedbYw/yBhB3yoRL26HXqw+G3IOTS6buGwuFjCc0BjR8ZG7tuxq6pyNYjk
         uicTYg+qhL8rMfe+TP14JlHcf2hUYwc9Z6iPgD9loTKQ6BsY0TYCFO/MmNp40XsECRAL
         veFQ==
X-Forwarded-Encrypted: i=1; AJvYcCXyzXxms/NjEr1bMcAD7Vc6mLd8+Z2zrLip/ztQPFgmj6RV6ss24+jqU1jWPqL27ff1B5+YGqCRQw0=@vger.kernel.org
X-Gm-Message-State: AOJu0Yyt2Sv6Wjua2arsjcZG2mxaHSHDJ9esaf6d6aAeFQEkP3Br67Cl
	MtVF6DPSzmyznlXhg/SUQO94C20GP4xvUQf5rf3cMZdPikZvhVHuD+dW52bmkgirZnw7ISESP+z
	ilNIVL3T7d56E/DUPgXEN5DgZwxRjm3oNxIDOdU3SdDFXuDCIaoKndsKE6RXlWA==
X-Gm-Gg: AY/fxX7+lKsO2UAiyRWosLwrvZWfuYu0n6burGd88a7i+5esSO2OTRKMFeo/uLNUtx0
	Jt0NNUaU+s9M886bKS12ezNJIPzVVrRyAICvE/2mOS9ocDQ4gl9L1n772z0ivAu4Z1L2wmuE7a/
	qARhhnVuPoo+hFQNRbE4hwAdF3FThsLUb9x8Rb1f6bN/7zk68NyCGBCA/rv/uJ7tcVc9Ah7nHI+
	Qq7FJdaLHPZf9VZ/PR8uZ2APuAinAFVnbynmlfhHZdnsqz6c5fiIPiLSMwLqPA7PueXXeZuCt+R
	fvRDah8/3tPJ79iSBw/5B0c2AM8QTlKsGVJczyzXbqS/i89vlTo7/0N9e1EksBaX7b9Xz1gUAiu
	GRVvPTg4ljqqhkYarrFoqNROgqXiPyzJtiPtasg8B
X-Received: by 2002:a05:600c:a48:b0:477:9eb8:97d2 with SMTP id 5b1f17b1804b1-47d84b08652mr48445225e9.8.1767823292691;
        Wed, 07 Jan 2026 14:01:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEFFBQ6f4dgqT66Z2rtHVbZLTL54Uls3e70dgvt5NOwL8/PHkCJK05N0l/jLQPYCDX9LJ5nNA==
X-Received: by 2002:a05:600c:a48:b0:477:9eb8:97d2 with SMTP id 5b1f17b1804b1-47d84b08652mr48444995e9.8.1767823292323;
        Wed, 07 Jan 2026 14:01:32 -0800 (PST)
Received: from digraph.polyomino.org.uk (digraph.polyomino.org.uk. [2001:8b0:bf73:93f7::51bb:e332])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d8662ffaasm22483475e9.6.2026.01.07.14.01.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 14:01:31 -0800 (PST)
Received: from jsm28 (helo=localhost)
	by digraph.polyomino.org.uk with local-esmtp (Exim 4.98.2)
	(envelope-from <josmyers@redhat.com>)
	id 1vdbas-00000008QTE-30LT;
	Wed, 07 Jan 2026 22:01:30 +0000
Date: Wed, 7 Jan 2026 22:01:30 +0000 (UTC)
From: Joseph Myers <josmyers@redhat.com>
To: Alejandro Colomar <une+c@alejandro-colomar.es>
cc: David Svoboda <svoboda@cert.org>, Robert Seacord <rcseacord@gmail.com>, 
    "sc22wg14@open-std. org" <sc22wg14@open-std.org>, 
    Florian Weimer <fweimer@redhat.com>, Carlos O'Donell <carlos@redhat.com>, 
    Aaron Ballman <aaron@aaronballman.com>, 
    "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>, 
    "musl@lists.openwall.com" <musl@lists.openwall.com>, 
    "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [SC22WG14.34664] n3752, alx-0029r8 - Restore the traditional
 realloc(3) specification
In-Reply-To: <aV69o8h0I3Px7ryV@devuan>
Message-ID: <190a03f2-4818-7061-59d7-276508931a3d@redhat.com>
References: <20251223161139.196AB356CF9@www.open-std.org> <20251223164349.F0BC5356D1A@www.open-std.org> <CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com> <20251223211529.6365A356CF9@www.open-std.org> <CACqWKsNQCchFZnFKKAyi-3HDtJYQ6sc=UZeb+hX48WQ1e7yj_w@mail.gmail.com>
 <20260106210527.AA3FA356D3A@www.open-std.org> <20260106214930.A5C8E356D2B@www.open-std.org> <PH1P110MB1636A1DEC402A702C28EBA9ECC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM> <aV4N-0egpfxhmnta@devuan> <PH1P110MB1636D74EDD4F3074AC98F12FCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <aV69o8h0I3Px7ryV@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Wed, 7 Jan 2026, Alejandro Colomar wrote:

> I thought you were talking about the UB introduced in C23, but that one
> seems not documented in Annex J.  In fact, it's still documented
> incorrectly as ID (J.3.13 entry 41, in N3220).

See 
https://stackoverflow.com/questions/78691087/reallocptr-0-in-c23-now-what 
regarding the lists of UB related to realloc being out of date.  I think 
this could be fixed editorially via a merge request (to make the Annex J 
lists in C2y agree with the actual current realloc semantics in C2y) but I 
haven't got round to writing such an MR myself.

-- 
Joseph S. Myers
josmyers@redhat.com


