Return-Path: <linux-man+bounces-2971-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9963EABB0F9
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 18:54:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE33B18921F4
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 16:54:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4159B202969;
	Sun, 18 May 2025 16:54:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Jv5BjixB"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E020142E83
	for <linux-man@vger.kernel.org>; Sun, 18 May 2025 16:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747587267; cv=none; b=e260JbMViXRfHhyyYtqj+2AauEAvZi9tLy3Vcmr4stYYTi9H7RY/N+1UKotAFaAa+RtIsw49RzqmziRiU3sVgjSxESdd4+d/BHpy7RF9Lq+lBYFnFAcH9ixIWdJtAf+4LWKunRQfk39WzrQedQmur5q+SmqTjRIR6CVVjArDzTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747587267; c=relaxed/simple;
	bh=+/bv3nt3Gf5oeUNgtLCegi7XAWsxCNA58ywYLxrdFUg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=YWXZ0gs8pQkeSvGvEAsNL1Av7+TogWLN7/yGrk85bZ8hPGSYHkSOdtLZ3mD+TPLx01qUXzgecg4GE7MgFEh42KbuGHtbV6yICH9SQEQz20zKdPV2Uo42SkDJR4JrSFnZAppnsO+ueRXrhsV/vdmKySYBQm8BD5bDiQILg0jrpmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Jv5BjixB; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-879d2e419b9so3052342a12.2
        for <linux-man@vger.kernel.org>; Sun, 18 May 2025 09:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747587265; x=1748192065; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qTaqNmYwLOi4Bk9ssKD9c6QO/cmmchZaD5rqvZ2gzKw=;
        b=Jv5BjixBd0Y5o5E+arFb245oVvqB4+k/30D+WbdCs9oH8hNczktSnies7W07AODO2e
         RbFugFQKQz9Lws1peCSOJlGYQhPSkxXVu+zqzwaXiOzCAZayCaZSc2a1cBHN9r5jzboy
         xctZcihpDg+4IirS4q+SPZOiGKl9cTV18/dMUNn6ESBfq1pVsluKD9fQJ/cR/8+Hj4kZ
         yutfEGxvgGbdxTgQqe1VhbWc7kh66ZZG+PYohR0g82PD3yoI7Z0vZODMJUHuDiOoeiL+
         MQ/rAFbVtgv7GaPsUh2Jz/zp/1DCxwN99VKegGZ6js5VTfFDDrl06/nDRMOnJk32sQRA
         d7jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747587265; x=1748192065;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qTaqNmYwLOi4Bk9ssKD9c6QO/cmmchZaD5rqvZ2gzKw=;
        b=Sz0lxdo4iRW5ynRnjQyrTsAVOtZXCPJB8NAlb8Jq5tvmAqZo6JruMvK2uOsfDU/WZ1
         /pyqtAnbYtF3OJxIBn5mtOj5aNK1T2mnIUjRxev+5QBPQRPoNwxyG5X1zZqD54Kfp4Aa
         clz5mIZbMV3Hp+RJK58Ejhi9kz67MxMV6yfxTPVk5h/j+8d6DXdGyAQWHqVlccpkX6Ru
         qOaQlb5w+YBEiFNH/m1LT/MBW2A4gfto9Kxspm8p0Dn6lCpXhAJqRyCYo9i3fBxUxn8d
         DlFOez0diDdW1sLSOlaSy+JmPKIwZoz50wmiMyht83m9du8MWEUQa/1dl2RX0kDc1LG7
         IRtA==
X-Gm-Message-State: AOJu0YyxVdI03ebslhkRqM2URr81Dazve7xS/7kzOFN9hNiC3XL+2p0S
	eKirFO5bIFokHmvI9DSyf/rA9Sc7elJ3Q6a+S5pHG9IoDvkDU1nfwWnl
X-Gm-Gg: ASbGncv2VzeaAhhf9PBph+DZ14YIwnNVXRLdC+EhJn2GyJdJj08PGUG1iXUgTIAeZyZ
	qzghRSjh6YwA53qMLcjpVP3wJ6sdkJFdHWny6LfYC0GvfFni/Q8cA+YSXz3SIsWhMvtlh9TWXIf
	uRd4rf3eMdp/vIPmQpZ1pZl/cfvaUPR+3jBe9o6qIRQkPw1b0bLGSDjEn2HhWsRQ7SA8Mnk6b4C
	ES0z56c4VlTFTgpqo7RAl+NTXG47ZSB/myi8yKXCe0I2b0PqhE88ObAkwvA3xGEHhCf+xJk7W+6
	5yHWrrMqXFUBqiFX5GslZpXfto0Ka9ddxoMfZ3kAxeYGTd6w4qzNXwcIFgtjl3lneR6UJnW6x+4
	X84wc5l4=
X-Google-Smtp-Source: AGHT+IGU5d7c19HRVS8gahkWfNL2CMrLE46aNtt0uuLlYRInil97f/iD6XAcd3FL7lqBt7tkAW17rg==
X-Received: by 2002:a17:903:1987:b0:223:5e76:637a with SMTP id d9443c01a7336-231d451906dmr156754735ad.23.1747587264677;
        Sun, 18 May 2025 09:54:24 -0700 (PDT)
Received: from fedora (static-23-234-80-63.cust.tzulo.com. [23.234.80.63])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4eb9fc1sm45286445ad.160.2025.05.18.09.54.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 May 2025 09:54:24 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,  libc-alpha@sourceware.org
Subject: Re: POSIX.1-2024 requires 64-bit time_t
In-Reply-To: <zagbrxifsyor6bxzkqi7b66ixw3q67vez2nng7aqjpykkohph3@plmaq4pfz3yf>
References: <zagbrxifsyor6bxzkqi7b66ixw3q67vez2nng7aqjpykkohph3@plmaq4pfz3yf>
Date: Sun, 18 May 2025 09:54:23 -0700
Message-ID: <87plg5hnb4.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Hi Alejandro,

Alejandro Colomar <alx@kernel.org> writes:

> POSIX.1-2024 seems to require a 64-bit (or wider) time_t.  I don't know
> how's the state of things as of now in glibc, so would you mind checking
> the time_t(3type) manual page and letting me know if anything needs to
> be updated or moved to history?
>
> At first glancce, I see
>
> DESCRIPTION
>        time_t Used for time in seconds.  According to POSIX,
>               it is an integer type.
>
> where I'll have to append "of at least 64 bits".  Then, there's
>
> NOTES
>        On some architectures, the width  of  time_t  can  be
>        controlled  with  the  feature test macro _TIME_BITS.
>        See feature_test_macros(7).
>
> Which sounds redundant with the new requirements.  That sounds like it's
> for architectures that are non-conforming only, right?  In the
> conforming ones, it wouldn't make sense.  So, we'll need to clarify
> which architectures are conforming and which are not.  Please let me
> know.

I documented this in glibc in commit
363bbdbd2aeaae1e00f3872f2ba19a4a3c17bdf1:

    manual: Mention POSIX-1.2024 requires time_t to be 64 bit or wider.
    
    * manual/time.texi (Time Types): Mention POSIX-1.2024 requires 64 bit
    time_t.
    
    Signed-off-by: Collin Funk <collin.funk1@gmail.com>
    Reviewed-by: Adhemerval Zanella  <adhemerval.zanella@linaro.org>

But as you mention and as documented in the manual, some older platforms
default to 32-bits unless _TIME_BITS is set to 64:

    Currently the @code{time_t} type is 64 bits wide on all platforms
    supported by @theglibc{}, except that it is 32 bits wide on a few
    older platforms unless you define @code{_TIME_BITS} to 64.

I'll have to investigate the full list of architectures which that is
the case.

Collin

