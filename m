Return-Path: <linux-man+bounces-4129-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A3EBDB993
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 00:16:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D38FD4E451B
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 22:16:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06CFD2F5A2E;
	Tue, 14 Oct 2025 22:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gcQf7UPb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4512FD7D9
	for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 22:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760480176; cv=none; b=SbOJTz+A7Q7JOnweWP36NCYhJFBco1Gt4OGt/R6gZKBzgxgUR+HNBgnjUmbDtG36vL5kwVYXS88xDgfjodoGNYlJ943cSXg7yPTo5sLaEyZtZAaJEYs4i5JvxcaPWyq2QdPMaNrsliRQBfye4sZQ3c96CHab9XIfhVORKkl66Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760480176; c=relaxed/simple;
	bh=w+p0z2cTAIere52k34mOv6PontpKxaJbLH5j4XuhWAc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=E6jRAPC879p46rgh/NM2NvSvrNfee078HDdvvjne2KfLhhlZ7geJ7CjHnBKC/jtvRzq6IU3aGjodRTCojLiFw4X092fEZkKfEv60gBlaXXjRs+Q/aRxCaqyB88v2kdKSshNmAFV9pu2rcBoeF1tFDreG6bu3Q3hb6lnQPKE6dBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gcQf7UPb; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7930132f59aso7850721b3a.0
        for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 15:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760480173; x=1761084973; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=w+p0z2cTAIere52k34mOv6PontpKxaJbLH5j4XuhWAc=;
        b=gcQf7UPb2CvpXktv8HjjDHwtBStIhWdCUpW32cn8OZnkjz8l/KJnqnPYMlfdqZG9NV
         BMkfygDfgDNQ2x7LfSoreG4ZYykbxNapYzMUF0uh9zAAVnrKH3EY8llDBdj7s4XzQkT5
         dCMlbzDjCjEiPU/bFmw934czpF2Mb166DCtrhC7v1ZqcE4gxnMjmOp+WLKnE0VLcnKNX
         RVhXdgkmkatosy9wki8seECZ9nH5Xzc9gZh2AJFmtLQmIFYHjWnP1PGFx6p5BM793LMl
         oUw0uYFa0VOmg+yP1BO0leFO8G188acdTq6Hqlw7ZuHvlnklcsf/40l+SVhHawsu9cqI
         RiPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760480173; x=1761084973;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w+p0z2cTAIere52k34mOv6PontpKxaJbLH5j4XuhWAc=;
        b=kIcaWyGGxKFLaV/fa9sMQALyiaWKrf0FaDVqMC0BGKKj47fa2Rc8hVgOVyUE78+LxH
         rQF98ZtW5Bz4lan8E/rVxiTSHNU6tmO1F46dcOY4gw3nx/w83sOzkZZV3VX3ZYmtgPL3
         Q9sKAFsWs/vNI2+dA3QX9DPQwWMYy/8DyZv0PP7V9kHiVywIt/oC1HQb8hfUWuzijLaV
         xaZVevW9Pt4IKFLT6Nnpzui6AzXBiSJiZAk+84G6ew8oFYGBH2lbpsBdR+ARVl+wvoYf
         J4N1Kk7YN5zPFvvqYWwW/jgfZgHEBa/TP1FGkxxJveEerlOl7EmJvOK2n/5fUe1SKRiv
         7n2w==
X-Forwarded-Encrypted: i=1; AJvYcCXYkZDLyor11v4u/ON1rE/3101sC8tSeb5xoqLq+wNCfKMPhiIXhlccOpsi9c6iEKr/zHFg9t9dgiY=@vger.kernel.org
X-Gm-Message-State: AOJu0YzJKvAVIpSCBN3tRM7tByb6kkSY8MC3ZcWSXBkOb+svY9/JIhp7
	V4slOa/uZxr54dKU2QUtt9LDRu8ojDbs4m764Qp6Gh7Mwc8Lbqgk+ur4osc5aTxL
X-Gm-Gg: ASbGncvrbSJZleIARiij3yRBc4+dubOv6HdJEAhvUsDNI+5dcTrKk6l+HgEjAeuJDEy
	LReWTAiutPVAjRHwNuDNJeHFs8JA2mlhZTT+LrQhuNvzxaZcL5go0n7mwbEFiUyUKKlvTQ48seh
	mS4cs7rZ8ilrJtbrB204QSE5mPKOAnIDN1bahjsHD7PMlL7XhGSDgYWe6HWCuqxYGK3rTQGeXsd
	XvygzwyAxT8jg4lViTFc91NcsYyHsDSDMEkBIya4UYr6MHKkmURGzOzPDbrQRdry8UVpsX+5Lu/
	4L2ThptpoiEZ6+LLHz6g17FO+cn/779fsmPLE7SULlsAeToHd/bLJ6todhuOFHViEbw73HwsAsE
	LFUQv0NT1c1qn+lltF0KF8NA=
X-Google-Smtp-Source: AGHT+IEQ0DtNpjFXMrLufNY4cIXPW5Wyca+Iu9sNOgy7vkw2/Y83NdGVtGWoThggB1lR/R5KJxR/Jw==
X-Received: by 2002:a05:6a20:a125:b0:319:fc6f:8ad1 with SMTP id adf61e73a8af0-32da84ea4eamr37847500637.52.1760480172599;
        Tue, 14 Oct 2025 15:16:12 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::2714])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992b733355sm16160904b3a.26.2025.10.14.15.16.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 15:16:12 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Alejandro Colomar <alx@kernel.org>,  linux-man@vger.kernel.org
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
In-Reply-To: <e6af212b-7efa-4f36-b39d-35f3856f657c@redhat.com>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
	<877bwx6u48.fsf@gmail.com>
	<e6af212b-7efa-4f36-b39d-35f3856f657c@redhat.com>
Date: Tue, 14 Oct 2025 15:16:04 -0700
Message-ID: <87y0pd5duj.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Carlos O'Donell <carlos@redhat.com> writes:

>> My main concern with accepting AI contributions is the current lack
>> of
>> legislation and case law in the United States with respect to the
>> copyright-ability of the output. I also don't trust AI answers much, but
>> that theoretically could change in the future as technology improves (or
>> less people blindly trust the output).
>
> ... and what about EU contributors?
>
> Upstream has to deal with the complex jurisdictional intersection of laws.
>
> I recommend simple and easy to follow policy.

Thanks for mentioning it. I didn't mean to imply that the EU and other
jurisdictions are not important. I just do not know much about their
situations.

Collin

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmjuy6QACgkQjOZJGuMN
fXU47xAAqNGPKYR7qgydCQn4AL7Z3LfiEiWXahRLWyxB66lRgRWVqKSjGuxWk14s
p8qfXVAjo27BJikK+T+o2bt0qzBwSsVFGi3PWwWN3o/oDwgtGEFf7/jVfY7DKEQG
qzuEEdIFYUd1O5KC3fKWJiZ6QQzWRUppbplvLWDtQyiOoEsmfIK2y0ZxxsmjVrwt
5oRM/eqvtxLFcEF62yzWpSLPijtc2f0OOBYTLGPfkA+to1tdbrWAXyOmXcRnfMaY
MAPLuY9AVYuceh9nfLEdCYeZcXMP9wx6Is61zZUWy/K86Vrw/E8x4feDa3dsb1H+
QTju7OuKUaT04+BUKloh7UvZZYOgf198sen9xC5ljutyfMKD3SHaU3fV/UCdBmfl
PsKM25kU8qd275lHglh9JlnbV/oizAEWNpfzlFKd5R780yc7ArSh6RHT4WNzI/q3
P+or8xPRRT3cJpoaENpzubYuOQMZz3UJhXeGSkn+gvkaF29Vbfxka+O9vKAP5oE3
Rpp/vbe0WPU64S5DjPaPTY5llPsPv15tHJmG7xHHfXU5tvgRke5ub/mPrRjtiFO1
ANTA1lRXiDxzdT+5trF/xA6x+TaKfzRqRn7951uvNN2sNGbMz9WKsyeHNJoJeYnW
W2nkikCRQ1wTIG0S6jBDvtQYqRSU6F4WZldqKhj4rbbn/MAvIYE=
=QI5R
-----END PGP SIGNATURE-----
--=-=-=--

