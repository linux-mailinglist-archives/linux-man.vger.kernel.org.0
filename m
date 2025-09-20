Return-Path: <linux-man+bounces-3906-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 84823B8D187
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 23:22:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 869B91B240E0
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 21:22:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0653F279DAF;
	Sat, 20 Sep 2025 21:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hu8fQlkg"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73F5B25F78F
	for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 21:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758403328; cv=none; b=U7ccB7UdxW/XnPK3dltJXZdSsWrApmfmhhz9KSG3RIdlsMeXVciMDHK+PeRelha4AXilb9hVfKt029wDaDEB/e3vjD05S+atMZRu3WwVfUDjgDLa+X+xbJ9iRC+BTaXvn7Ad3Xhf+oeWb19oD/Br1g3huCqGHalbCnlieYXuUi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758403328; c=relaxed/simple;
	bh=qhZQi/F4VP7qHgpjGGqdmyILjOjgXVf134iTN1z2vx0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=dBBcplUPOhHHCcHxAd6jsf5XKGcaVLV8qiQj/NGAXk7tSIXEAZX5KFudabrICaEmxbb9LNugwjoqiSO1h9Vre4kAYJxzVjFd6bim5kXHEZ4/B26LzK1uaJQUq0RuwaN3IWV1wAzmUR5Q88+LANm1gYuiunO5dveN0sMp7ZMIZFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hu8fQlkg; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-330469eb750so3689661a91.2
        for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 14:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758403327; x=1759008127; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=00M36KZNH1/GD0pELQ42HlHgaP1u5ebGkjTpft+NblI=;
        b=hu8fQlkgSNv5Tm4LqjWyVXzJNdS4Ldn75oblnINMxnZBjhTs/z4F3XMgPIykx+XYMA
         cueCV3pDP4N47qXr6GYSUKsqnxOyri91qF/IVwQaVUMRNJzhSu3YOVBHqf5yf8fAbNpV
         Uj1821jeOsAVzsiIdqfhhlWlsN0G0b8gjUCIwghYJGURji5sPDXtLHdDH0+VuNzaDHrD
         FpTz6Cm3Com9qA81vKiXsUMm4lIal86XPSg8QbATSE3SyJC0Db+7ZA3pj4z/Sw1yuB86
         O7mytB/5/vDfxL85KAB1LebRzFa1jdRfySmrl2agcFUh/0gTYWLT0Dij2RG8qMSROJMQ
         wFCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758403327; x=1759008127;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=00M36KZNH1/GD0pELQ42HlHgaP1u5ebGkjTpft+NblI=;
        b=FLUF6tr86UutvTTiBhCF0mD+8A93bb4vDRTYwuVKEyOmaHFxHDEMyOXxdacL8Mz961
         Pa5VEs8R2cBRpcLivA6pA7L5hTRJmnV0qSaFqjkBWLmxIHgS6K+Y1QnKwJgr4UVvJPtQ
         3oVQ5fi9taWf38UT+gx1iFsuh3esQhGOHDdqTs2/y8pASE1+z0AFMeprsuOhX07XJKng
         qH+LBWGS7STDlA8IqK98lIaA8nBP0ZOpHiUQ/a3eGzy/hjGbXjvD9xhRPn8QoUXpCeNB
         4agKfye0qVOv5P5ae37sF1pfJ2ZtGtQ0bb5xCO1QyX0dYhCqdfJuRD/mDcNC/6ITiIeJ
         SDCw==
X-Forwarded-Encrypted: i=1; AJvYcCWyIvBjYgZ0n78SMYuZrJ5WTAjpynvQAqgHEmCIhx/QOfrqsqTQMJY3xMeBMPVhKeP0to1koO0hDKg=@vger.kernel.org
X-Gm-Message-State: AOJu0YypHjUa/zOj2MrwUmofiibHcpZtikRgJHKYOA2KhDJCb5gUfJRj
	wRWkp45HWvcVBfnwv+jWYXqKOm4FVn7OggoIyjtKbo4T2FfC6plsXFy/7ZlOww==
X-Gm-Gg: ASbGnct5mSaEPXZBkph65FUjaSpzByb+lctBiWZMeyk1tskLaT7dLh5iLkikDAerbrI
	IhXDuFXbuVhH60v49A3cByplwZjjV4DoXTXdhlPruLSJ/5BFempacA7hcDVL2eZ3KEuXaqYfUfR
	akTVPX/mXqHj3Ruk9+YLZw8r5wJNVXnuOLpnae/dmwKsrmjY3f5Y4cSfCXKUF/q/8gzSTjR8f6T
	iBrAYRptphSO2JRU8xQRSiTamtL29fL4HV5egieXTaHjJ8ieMKqwAaTpb5Nvggqgo2sRSW5YsbB
	UaBscB1+7ANmF5sURAcfyJnjBrdmpV/8/vmZrSRlTtcjIzUBmI5Zpkg/gQ7u6nFqrtbfN+pdTg1
	voUm7
X-Google-Smtp-Source: AGHT+IGiasGZbGtSPlzGW+J5VnVls6g5ITG4xp/Z63QaJ/yXPLZUCZOKVDsa+AH5P+essyDudKjt0w==
X-Received: by 2002:a17:90b:3ec4:b0:330:5c2c:7513 with SMTP id 98e67ed59e1d1-33097ff70f6mr8561885a91.15.1758403326755;
        Sat, 20 Sep 2025 14:22:06 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::641b])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77f1786b056sm3277464b3a.10.2025.09.20.14.22.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 14:22:06 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jakub Wilk <jwilk@jwilk.net>,  linux-man@vger.kernel.org,
  coreutils@gnu.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
In-Reply-To: <pmx25futce2ey74t4fm3c4hmmzbcwv4l6pxok4e5emsw226ohk@dim2ryyfaal3>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
	<e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com>
	<53jjjhuovjnbju4ex56hwoke2zz5rshxr6qjeqe3tidgcls4sw@zfnfbdktmtpb>
	<4e842b01-5251-495a-9a49-1ce59676acc9@draigBrady.com>
	<20250920174022.zjqt6fiv4vxo6vh2@jwilk.net>
	<pmx25futce2ey74t4fm3c4hmmzbcwv4l6pxok4e5emsw226ohk@dim2ryyfaal3>
Date: Sat, 20 Sep 2025 14:22:05 -0700
Message-ID: <87frcglszm.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Alejandro Colomar <alx@kernel.org> writes:

> Hmm, I'll try!  How does it compare to piping to less as this?:
>
> 	$ info libc | less;
>
> BTW, to someone who doesn't know perl, how do I install the File::Which
> module?

On Debian:

    $ sudo apt install libfile-which-perl

On Fedora:

    $ sudo dnf install perl-File-Which

You could also install it through 'cpan' but that is more effort.

Collin

