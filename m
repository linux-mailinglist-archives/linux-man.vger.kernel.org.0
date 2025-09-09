Return-Path: <linux-man+bounces-3848-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A9823B49FC8
	for <lists+linux-man@lfdr.de>; Tue,  9 Sep 2025 05:13:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76E2C446C42
	for <lists+linux-man@lfdr.de>; Tue,  9 Sep 2025 03:13:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD82F25A32E;
	Tue,  9 Sep 2025 03:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LEN5NbqT"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDE531F130A
	for <linux-man@vger.kernel.org>; Tue,  9 Sep 2025 03:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757387621; cv=none; b=C54o8h8DseUCEiNMgw2+5y5jCMMPIh8e3Xg/luw57xAsIHMabXBM++83SdjPAdVg5IyzM8mhivbrCaQgIza2kQjvnVpmEHyRiLPi11V53X/rwOTnivbe9g1z//y1TBsKXnf4CSQCNl8dmpGI6Eiqml4lrJ/a99kKc47SZ3xcHLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757387621; c=relaxed/simple;
	bh=vDyeCL0VEUdqIj0ampMJesbb6oi+t1+skPVigIK5HsM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=DAIBIzfu5JRjwy7JLQumIqezYR9VaqrWtbv+VF9sd17UnU3lRJLbD6t4HBWJqRGbYVLd3fkAtFUWy7MAJt01bsXpdeHDwCs3Ue+ii3idLzu06hpkeSNCuIzcklvqJjQ83/hONGFu9L0qKsZBtO0xBTc65MP++wgwE+IdVKwmsss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LEN5NbqT; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b4d118e13a1so3340449a12.3
        for <linux-man@vger.kernel.org>; Mon, 08 Sep 2025 20:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757387619; x=1757992419; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=85hCzQ8LZOtQ/DWmirnIadRk7ynG7M13xaCQqu61nZ4=;
        b=LEN5NbqT2dYCzCSUYdgQ9lNVWP8IzWDMRpXIbHKKUU7TJYnJScBC7CsrmMUAnuHtuP
         92cg2Ixiji9HZjSH8TypqBcgEtF7nU90njMkPfSVik14zuu+WAVLhD2yS9WGmTJlrAiF
         X86VBnejHofUgejSKIEZaomDcq6OOqTmCnxuidT9xyOnFXhlzDTXNnV3DFyTUW4SQ7F4
         GfxuX/Lm+/mMRDKHSXsKAjy8C41DZGRuw9ATzYertcJqGSOvReugnYNgQTNdZAPa4f3b
         QeREWQV7E9aE7nKKdmLiX0igZv6HoSpRQsjRaBGa14r0XhIif5TQhgpQVO2Rpap7Nasf
         gtCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757387619; x=1757992419;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=85hCzQ8LZOtQ/DWmirnIadRk7ynG7M13xaCQqu61nZ4=;
        b=T4MQE0V5oNRRVomCSLTqYiOq9vqvEq+UmPIVhm8uNBfGLLO90QOHcDVJOAZZmFQd87
         3yyva+xGY/54GRR0lbvzwbnoTLPUcs9f2HA74YDaFYxjNuPC/FI/cvnGAY6HdMA2ZORD
         JZlICPwMQnASXuQ6fIkSvmElsuujbwbaPqUlvMx020m03WSLaVmxmdTBdYNznutzb1C0
         GAJ+8OHGm/Iq29XrOMe/X3Jp4OF0uxJ4qXtbU2ntWtEEnu0vrpv7PkdqCVI6OHpFqXeO
         zk2cNCXMG4n27y0K16/3qP5JzonEZ8ev6XX7lqzHbYNQlDK2Y2T7HIT1kZXubr/Kf9HP
         MHUQ==
X-Gm-Message-State: AOJu0Yx3cvJfHIoYkJRi4P8TlTwH96x76M+cW+9miiPvlIOvGy9eKEeW
	+QZpax5eTzL12oB+yIwbbArz6jPwh6YsubNQi6MBuA+CMo5JJvKeitoIMkl4FuEd4Vgx2tbfpu9
	Drp7Z
X-Gm-Gg: ASbGncvxD3mQLTZQgQZZHEbeEPYM3dJz0qhTzQgEgluKB6s71cZ1P03Fpppx7JwkOvd
	l2oc934lUvtvB6MGWdyf1Ugpa5DAGQhXt1U0uukYBxnxQCXbF4FQTyy0QSZyRqQcQe0CoAjE1mB
	XrV1v+2WysnKBCUS6OgUHwXHR9oHsIw4ckYMZfa36dzQfZCi7Z8JdBq0I3RB9viBGl5KdQgvO4/
	OQ76/G1Cjd45Dx3Uxq9rHZXe/ecZKrrIUQG4StZh1D+MXuaaNKjN36O3KxJXplVAEC/oZXqFyAz
	lUHsINCiZEjOVsMWfPj29UOK6f2exNUXculwjrSoDPCryKWcGsy1D9aacL0PvY7ycvckShSS5L3
	pb/MaiDrlDPECV94XOe9mNGWz6m70UN+eGSjvLRPatH0=
X-Google-Smtp-Source: AGHT+IFbBQAfLIUNE/CWeI11muPMurBjsY3pNyMUG8AH4dqWdd+h0WDcTSXynlUkD+0uUNigeOB9Hg==
X-Received: by 2002:a05:6a20:734a:b0:24c:1f78:1811 with SMTP id adf61e73a8af0-25343c5f206mr13460267637.37.1757387619224;
        Mon, 08 Sep 2025 20:13:39 -0700 (PDT)
Received: from localhost ([2804:14d:7e39:88d6:1570:d618:be8f:1609])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4cd28aecd0sm27331366a12.30.2025.09.08.20.13.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 20:13:38 -0700 (PDT)
From: Thiago Jung Bauermann <thiago.bauermann@linaro.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH] man/man2/sigaction.2: Update si_code list with Linux v6.16
In-Reply-To: <1131d940-b487-4ce4-8316-533cffbdc173@redhat.com> (Carlos
	O'Donell's message of "Wed, 3 Sep 2025 11:37:31 -0400")
References: <20250828210752.619435-1-thiago.bauermann@linaro.org>
	<66a84774-0c5b-4dc1-af25-1e6d35e3e5ef@redhat.com>
	<87h5xkgrly.fsf@linaro.org>
	<1131d940-b487-4ce4-8316-533cffbdc173@redhat.com>
User-Agent: mu4e 1.12.11; emacs 30.1
Date: Tue, 09 Sep 2025 00:13:36 -0300
Message-ID: <87plc071y7.fsf@linaro.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Carlos O'Donell <carlos@redhat.com> writes:

> On 9/2/25 11:08 PM, Thiago Jung Bauermann wrote:
>> To be honest, my motivation to write this patch was just to fix the fact
>> that SEGV_CPERR was not mentioned. Then I noticed that other constants
>> were missing too, and thought it would be easy enough to add them as
>> well...
>
> Welcome to the rabbit hole! :-)

Thanks? :-)

>>>   (a) Adding the constants to C libraries in a conformant way.
>>>
>>>   (b) Cleaning up the UAPI header to be conforming and work with
>>>       the existing C libraries to include it indirectly.
>>>
>>>   (c) Cleaning up both headers to allow dual inclusion with
>>>       additional constants showing up as needed.
>>>
>>> In summary:
>>>
>>>   - This patch contains 2 constants that don't work today in a glibc-based
>>>     userspace.
>>>
>>>   - The existing man page documents 1 constants that doesn't work today
>>>     with the standard #include <signal.h>.
>> As you suggested (thanks!), I sent a patch to the glibc mailing list
>> adding the si_codes it's missing to its siginfo-conts.h header:
>> https://inbox.sourceware.org/libc-alpha/20250903024151.3030839-1-thiago.bauermann@linaro.org/
>> If that one is accepted, hopefully this patch can go in?
>
> Yes, that works for me.

Just FYI to the people on this mailing list, the glibc patch was
committed today.

-- 
Thiago

