Return-Path: <linux-man+bounces-4108-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C47B0BD03A9
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 16:26:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A52B1895F94
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 14:26:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB87F285C99;
	Sun, 12 Oct 2025 14:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LvUM0Saw"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f47.google.com (mail-yx1-f47.google.com [74.125.224.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C73D828489F
	for <linux-man@vger.kernel.org>; Sun, 12 Oct 2025 14:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760279152; cv=none; b=jqSJImS67Qf319QFzlp6XODeuwaiSKsicoMacZfZXIUVBSiRY6t+3LH+i616UFfnZ+BLpJoV3yxDiLYRsF9pXt1M7M+HPD9A5VPwFW0lC/kggaANxl+C3cIfINFn9Jsy8hTREXkDZZQU0dJ3afH8dSShk8kbDI1yR0Cb5w4YYts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760279152; c=relaxed/simple;
	bh=PpEZLAkPjAJdXnEnlZlPVoCkMKKS3ABCk+fUadrptZk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NCwlhw1oLzZJ6HJXMhsa44cVk5cplf6PBTYCovlmA6INKfEkp2K3tPaygbWeCrnmmFtn/uYiZg0YMpdSlZKWWY8lz90EaPYKAFnDuWBgJGCkUmS/DEZq3+LD6uT2Lht2IAxMZG0qLisekKHRs4+sX7FVM/Oywt323EU5u9M2b3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LvUM0Saw; arc=none smtp.client-ip=74.125.224.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f47.google.com with SMTP id 956f58d0204a3-633be3be1e6so5173269d50.1
        for <linux-man@vger.kernel.org>; Sun, 12 Oct 2025 07:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760279149; x=1760883949; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8fMV5+oJY4Oj9tnMbJ06MZM6D9GED7063UwCEjj637k=;
        b=LvUM0SawsWEBC0Xj1/TnPr4Ff4qx/gYOjIhfZKeDdhy+mwpwZYAdMrtoKWbzbsg3N/
         wpJed9DPpV55cGAKqUgmjNIvCYFx39fmFRA3tVgBuE2JBZ2IRCHlIkFMCbC2QSKHE4s2
         3vwP/SrLo2Q6SxdcuE7A1aHl9cJGvgZbVu0g2b56CBSqVy74+I+3UAZBfrPduaxbskdl
         5Vsxi8M8F2iplozG+TM1C0fbGcXvCQfcs5+4BjOUKRknjPkTpiqwmqnNYHC5JTqkowXx
         lgJKdQgPwURDOkmkZ9zZhHLLFsWtk9HGwerHYr2F0VCJzx+WlMWlfh74OYK1/zg5WaSB
         ltNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760279149; x=1760883949;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8fMV5+oJY4Oj9tnMbJ06MZM6D9GED7063UwCEjj637k=;
        b=QIc6Kp3WtBQPMHoSgCODtSK1aFi2Zie2HjRNYakFiJ9KgP2F4vgmNRbi+03L5Vh2Q2
         wklZ5DR3LM4FNQrppR6psXZHDfXlULKGECp7WuqNyFWZjXe69/MfGXnwjpxelP4AYSpY
         YZzL1fCUKgLoLySc7a7Riqdu9SQogSe+J1vN62rQ6Fdc2S/YAn8/PyO0XtkwV+ucDLRY
         XTXWCsztrchrgqLY5/PJ9Ek0fo7KtYRuErUywrsAW+qSHFp10IYhSgAvahc2WPUBjAJ1
         KJAdTaUyUGueIdjK0K6kNVt4pcXqwtpfZxfaTgr00X5iSFG8JMDp7YgeV16/7gpilRLS
         06Qw==
X-Forwarded-Encrypted: i=1; AJvYcCVfQVX94kcBIs9v+z32h6/VThfvIo6oiHq7IPPYn+trfnr8SnU+F/4WqCKtTChczGTEECIjs28Wm6k=@vger.kernel.org
X-Gm-Message-State: AOJu0YwRF3C6oJhTsCEnoHKS6Fja2ldTypiwLqEhYA2rAV+I25kHmty7
	wDKq3/U3ZXq89FSb3WRQlM1AxH6J5Ueh8NXFAqvpQLO+0YpmLz17bGtjZaO4zEMhUd2iOJc6m0z
	AfYjrMf/9WhNQoXpmXrADP6zjho4LHls=
X-Gm-Gg: ASbGncvipwcRJi31wcWsK2/geUtVjqmBFCY3IWpinM+Cx/LwWL5ZUajPvXM4gccdmhe
	2bcKSbzQRCKpLg9nCsE6wxMGvBy9/OM8DelmDlbSLQH7p/326DoYCqz74A1lX+aCid/Lm7srUm0
	WMbZWetkJSBUSt5QVf8sJwxCnsNxey9Baqafj0OjlrusImRM51GDRCnO7qBa3G35jIt7KPrqfdE
	0zlM+iW0blysF0tME1unX/RPOjBrh7AkXZgpcdcjfjB+ZdCq7Lz0zZREbx0kEgVJW3RvJM=
X-Google-Smtp-Source: AGHT+IHmxiF7nVA3plgtnQqzvawJieYggf79AOyr68QSOl695ikP7vNaryvJojZvuI4FaLPjbXvyeSFSgXSKkGbnvCk=
X-Received: by 2002:a53:acc3:0:10b0:63c:da71:e38f with SMTP id
 956f58d0204a3-63cda71ff12mr10421050d50.3.1760279148739; Sun, 12 Oct 2025
 07:25:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAMw=ZnSBMpQsuTu9Gv7T3JhrBQMgJQxhR7OP9H_cuF=St=SeMg@mail.gmail.com>
 <20251012125819.136942-1-safinaskar@gmail.com>
In-Reply-To: <20251012125819.136942-1-safinaskar@gmail.com>
From: Luca Boccassi <luca.boccassi@gmail.com>
Date: Sun, 12 Oct 2025 15:25:37 +0100
X-Gm-Features: AS18NWBVfoyBRd5-fZ6Zr5cXh7eUoOgNBeTIO1AtyhLxiUaPpLgGuteQi54v9Ow
Message-ID: <CAMw=ZnTuK=ZijDbhrMOXmiGjs=8i2qyQUwwtM9tcvTSP0k6H4g@mail.gmail.com>
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple instances
To: Askar Safin <safinaskar@gmail.com>
Cc: alx@kernel.org, brauner@kernel.org, cyphar@cyphar.com, 
	linux-fsdevel@vger.kernel.org, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 12 Oct 2025 at 13:58, Askar Safin <safinaskar@gmail.com> wrote:
>
> Okay, I spent some more time researching this.
>
> By default move_mount should work in your case.
>
> But if we try to move mount, residing under shared mount, then move_mount
> will not work. This is documented here:
>
> https://elixir.bootlin.com/linux/v6.17/source/Documentation/filesystems/s=
haredsubtree.rst#L497
>
> "/" is shared by default if we booted using systemd. This is why
> you observing EINVAL.
>
> I just found that this is already documented in move_mount(2):
>
>     EINVAL The  source  mount  object's  parent  mount  has  shared  moun=
t propagation, and thus cannot be moved (as described in mount_name=E2=80=
=90
>     spaces(7)).
>
> So everything is working as intended, and no changes to manual pages are
> needed.

I don't think so. This was in a mount namespace, so it was not shared,
it was a new image, so not shared either, and '/' was not involved at
all. It's probably because you tried with a tmpfs instead of an actual
image.

But it really doesn't matter, I just wanted to save some time for
other people by documenting this, but it's really not worth having a
discussion over it, feel free to just disregard it. Thanks.

