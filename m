Return-Path: <linux-man+bounces-3760-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1CBB3C8C4
	for <lists+linux-man@lfdr.de>; Sat, 30 Aug 2025 09:33:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4559D1C21C77
	for <lists+linux-man@lfdr.de>; Sat, 30 Aug 2025 07:34:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A695722D793;
	Sat, 30 Aug 2025 07:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Gd1e49hr"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030E316F0FE;
	Sat, 30 Aug 2025 07:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756539232; cv=none; b=SFPYCw3qfASxElEwK5g4IBzEctLLfQ6JNFPEcyPKHLGFsDWEpeRsTmJfhILDH+1uOfxi9q7/MZDFRWRjFr8yYtXKB/eAy+xwPqRyq4cOYQrQIa1hnb6s/LqMpRotZ8ksOlivLNaMh8vsLmc4OhFgYB6t6jhzQ2R+6gooyeb2Sfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756539232; c=relaxed/simple;
	bh=yx5WKlUCgfoqGHse0A+UTn42ZESS5T8sisrrMPHWOp4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lWitIzwe1YtAl5UTZCQOK+d+rTCKDSuQsDjZ1FUsTQiwcVY4TjwpvfGs6vBKXcv2ha+rfkhUMsxQLdZAT/3QbEX79f1OA2oF4cPmNH1FJw7HpRspTq6VwWWMazMDP+QUlVtfl8wnHAknhHwGQJUIkFbIxUYY9Kci+bBMrGz2V28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Gd1e49hr; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e96dc26dfa2so2340762276.1;
        Sat, 30 Aug 2025 00:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756539230; x=1757144030; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fZBnJZ74Fu0arWlzftFzjtzGoLDNy7BxofIjGGsbtSk=;
        b=Gd1e49hrqWj0LkyCKDhWBFZ23QfLkfdWnG/kb2zjaBhlPBydJnfLv9onwMLwJFdviB
         UGRoBbRsLxosuVyxrfMLHzLJ+3tQGks3CUqpyLR1Sv6Pg/YcnpoQ7mXOTQO9LRWCrUbD
         UzOWJt1jcp+4B4y9GNsS+/W/JyRf8Lr7LnldpiHJh1ZkJwV08zR8q3ftfLCgpHkpkcwY
         GIO1iNLS15+vcTq62SxTd32s0b1CTZzOIT1Ow0mUoLNadOWco7rVyDKwd5YkCSw33WBg
         +odEnGrtJqvPb0Rqfq/ylIQVEmCYFBJ7t3ORxEoTkVphFpZsr8hjZj13rrp5ls0HLbL0
         /OBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756539230; x=1757144030;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fZBnJZ74Fu0arWlzftFzjtzGoLDNy7BxofIjGGsbtSk=;
        b=w2M7O5QYsGyjSalVgrlaF5I4DwiRqbXGIN77UrVCpfnyWO++98jvzj2t1x3BF2Uzw4
         eVGUDQOnjjAMuKQ/0fDrXyCwrZMOZhmRpWnJZS4LbTE+jQ2n1aYgGUTsxJmlNT/llis+
         9ib29hDwvwHhPdk2pVzz9LV6sHE8/Ip1dToKERczMTIe2+Dwtdrk4T/8seWEY7xK3/Kf
         YB0edmYYyTRJTEAUlcANWCgu8vdnqJ9EdAJ9WOJt8UILTCtQ9TdaqtwDjOPq0WLQ+Dyd
         oYayJdOfOjI7phwKy2xKshqPC/gsQgNGldPvUDwYJ1jnLhZeDh/GeHYLg5YMfqUJbdZe
         3Aig==
X-Forwarded-Encrypted: i=1; AJvYcCWfnsN1ihsJWbPHM/DfgR9f9ncu9ZXIzQkSd8jjvtyAwFpCp6uAgNDREdjTNxfJo2XmURr5yA+zab4=@vger.kernel.org
X-Gm-Message-State: AOJu0YwgYgK5JoYIyO4paRAOvi3KD3Xg5J1IFzpn9NiN5dTjeip6QsJu
	dxz0tcZX65pe1SbxXcgNdbZ8yW9v45SlqpE9z8VyAHFaHDD2rwsXzIg3MrAc0DSa
X-Gm-Gg: ASbGncvkxIolNO1rh9IiEbE+x2qs2EqlhUQuCsu8HVAutqBnWhWaKV2tIAuCaqusNT+
	ULbq5g3+JQffPejEtBsLKlKeZW0NRxsSyFSgixo5Y9UP6s4EvrklcDrMgxKJyqD7F8mtabh/PRD
	wNJ8tNxim4DGfO7jRvlJ85/U6YgPdP9dF6akGkyOoce4Y/YsbKrOuknI7pnJSYcIv43VWj8l7Yt
	gx5c83OyZJSS/PcofLQT1EwPyclUq6zKRgkExK1rfqVBxxrm9WE9E0Zn5uFccdVrov/KT8gOpPe
	tQkabb6+kMZuFh44nGPX+TSQfhUoIe0d+Hnb2gfNDZas3WeMbmGpGGk8buemmj6BoPhHREEnqWH
	DoBPhqnH8rWpU
X-Google-Smtp-Source: AGHT+IG16tqDojPL+XeCJmtx1xxJDRJtJG3aJPZ7aW8BzjkhrIBmcu1LO0uFQXtvozcari/BkARnXg==
X-Received: by 2002:a05:6902:1005:b0:e96:cf40:97f2 with SMTP id 3f1490d57ef6-e98a5876670mr1305889276.50.1756539229870;
        Sat, 30 Aug 2025 00:33:49 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e98ac57c06dsm80625276.26.2025.08.30.00.33.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 00:33:48 -0700 (PDT)
Date: Sat, 30 Aug 2025 02:33:45 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
	Alejandro Colomar <alx@kernel.org>,
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>,
	Darren Hart <dvhart@infradead.org>,
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>,
	Juri Lelli <juri.lelli@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Valentin Schneider <vschneid@redhat.com>,
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH 4/4] man/man2/futex.2: Add a pointer to Linux'
 memory-barrier
Message-ID: <20250830073345.3imuyvaluskxdjnc@illithid>
References: <20250829160200.756194-1-bigeasy@linutronix.de>
 <20250829160200.756194-5-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4x7pcxn567hblx56"
Content-Disposition: inline
In-Reply-To: <20250829160200.756194-5-bigeasy@linutronix.de>


--4x7pcxn567hblx56
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH 4/4] man/man2/futex.2: Add a pointer to Linux'
 memory-barrier
MIME-Version: 1.0

Hi Sebastian,

At 2025-08-29T18:02:00+0200, Sebastian Andrzej Siewior wrote:
> diff --git a/man/man2/futex.2 b/man/man2/futex.2
> index 027e91b826bf1..fe4a239c3812c 100644
> --- a/man/man2/futex.2
> +++ b/man/man2/futex.2
> @@ -84,16 +84,14 @@ on the same futex word.
>  .\"     would be sufficient? Or perhaps for this manual, "serialized" would
>  .\"     be sufficient, with a footnote regarding "totally ordered" and a
>  .\"     pointer to the memory-barrier documentation?
> +Please see
> +.IR https://docs.kernel.org/\:next/\:core-api/\:wrappers/\:memory-barriers.html
> +for the definition of atomic operations and memory ordering.
>  Thus, the futex word is used to connect the synchronization in user space
>  with the implementation of blocking by the kernel.
>  Analogously to an atomic

(not a gating/blocking suggestion)

As with my previous comment, you might make the new text a hyperlink.

+See the
+.UR https://docs.kernel.org/\:next/\:core-api/\:wrappers/\:memory-barriers.html
+Linux kernel's guide to atomic operations and memory ordering
+.UE .

Regards,
Branden

--4x7pcxn567hblx56
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmiyqVkACgkQ0Z6cfXEm
bc4zyg//aDLrwhMav405imVo14OkqNFF5c8VBXKgwUQyCFJr4XLLPNA+/OTOlH96
mlJ3XDA31e3b8aSx2Nsp7GNy9/UBznTi0jshQ9SWsu6Q7GhAI9vvi+WZYI7QTejf
KUy6ZBlZvwKI0GHelszKmyScnLoDW+/h3b1oaBQbiklqQYUzR43+MfbikSbLp/wj
KIbh/lLJ5wW1Fop36dWBRrHyuJhqCHeEYi5tAUXSxjdUyVEzzGTNSMmwjvhbkajO
VRLutVQ+s52Lnd3izxG9a/tg/y7reMyIOJJjwuKkdEeqZSQlBhtCRTf7ykhvcrjE
OtVB11CTrDtEImyCsySOHxx2rEg8i0s+Mo6fxAq6K4VdDveICVGBpwLj8/AvN5Ks
dUOcCiZMeP/7gMrY/m6slE8FgQhpBroKsfXDu9NlX4j9LE2TBPB/8saOIFelMx4O
ElHfN8rDiJ6rT61Zj93dmQ04mUDgvio1FqnnNYZoRavm53WgKiFZV+BFhu/VnSip
UmNwf3yH31e7OZEYdyj1fxeNm218gwHQU3s5FwO8/waytTqQddVQ4xsuDuYnqxR+
jwUHNzueSFCWxd4FJANzTArrcYViYdnQxQGXf2neuOVDz3gSWjXVikTKcF5Z2Eh0
T9Ho/y2fws/tUGiAZHn1AgCuAb9sde/M38KliUhN6zsLW9pUOZU=
=pPdK
-----END PGP SIGNATURE-----

--4x7pcxn567hblx56--

