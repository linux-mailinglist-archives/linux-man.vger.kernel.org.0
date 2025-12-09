Return-Path: <linux-man+bounces-4376-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E7ECB13ED
	for <lists+linux-man@lfdr.de>; Tue, 09 Dec 2025 22:54:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 26AE8318E773
	for <lists+linux-man@lfdr.de>; Tue,  9 Dec 2025 21:52:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57AAD2DCBE3;
	Tue,  9 Dec 2025 21:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bUmF4IET"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f43.google.com (mail-yx1-f43.google.com [74.125.224.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 972D22DC783
	for <linux-man@vger.kernel.org>; Tue,  9 Dec 2025 21:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765317115; cv=none; b=fx9aNXO+U6QqhhPbtnlv3I9EUe5Kra1eaGWNeDuRX0pJ1/S/Sa1q3biB0vpfvKykPwdE4OZXwuWWIgPvwb0gCKPkXV24J5FiZbS/34YLh1TKntxXoCVz/3pRCM28P56u7YjfaCYwQGHOR3wOjEUWabUhWEakb84xTjDJYWWrlr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765317115; c=relaxed/simple;
	bh=WbYfm9Y+F+PQh7H4qxs8H33WCF6bWZm3r8xCoeQ2l20=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XRyKVnPspKp9cvYMR2gchHnPHzdzDbOfkOXc2QH8PLX8fdlLYbfE+cJE01wkt5NVn1wzP9kpQLqfRoXB1Pq5kgHz52IscX2Sw08ir3VkNjEzil17Sc/Ymp0iImmoJn1r5ZMPh8oHxHuRwmk2m8spiKPZUuBChEm7VMSkYhSOmr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bUmF4IET; arc=none smtp.client-ip=74.125.224.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f43.google.com with SMTP id 956f58d0204a3-644458ec093so3690987d50.1
        for <linux-man@vger.kernel.org>; Tue, 09 Dec 2025 13:51:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765317112; x=1765921912; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cnrJ/2ayLZ/y+H+tm/GP2GkYEt5BU6d172Mx8K5Ys8M=;
        b=bUmF4IETuuIH4ojZDd7LRI54qpiFPSOyiTWkzEYcpqqbTsOYK89PCAVFKVWzH95It+
         Jl+earGB6CJrK6LW5KVjMrAjdZGNxy7qqATj1HwUOJXU+14+UU//EygjpSrROTTf51Xw
         /i2goG84p6BJpVTIWkZ/cLEFPRKUHLxDxDd+CU9w3i6aPvI5z07FSD/zleum4LjgXUZx
         jyZqAbZ/D+1fF+KYDjWuwPQluoWEmiztOsdbpjrjlujJUc3+5AFKYCn5olGMyevxCN7l
         6VU6ymDgdAEqnUif3X5UYFCtX9sbg+645mTSS8Qd9xSgKaYu8ej2qdpdr7U8SA23oBK2
         tUNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765317112; x=1765921912;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cnrJ/2ayLZ/y+H+tm/GP2GkYEt5BU6d172Mx8K5Ys8M=;
        b=mkai8wwWXrtes3tMXbG8u0O5uwRumvuEaQU1g0NjJqENtecCKA1xrEpo87ys0zWc3B
         HUUZXJdXqbsOc/6tpqIrvCpaGlUg1ED/BYjMsyr0v3mhScjtxMNYairSqSaPwrvUk0RE
         iduxJ1zzVVwXzCp8cCrVmSXrsMWOBjzQqjO1ax3lfTSFL+TjddBzqfjfMlqm4Q7H/Ixs
         YO9VSKgCQ7lFTAsE4KQRup2cnv9kmIjTRCjJLMcU2nKW6MOJZhjFzgizv73fF2QsjMn4
         IAyOhYwWm5dlgWvan95Zcw9VKoLa557ta3h0mKwl/HtNRXn9vfYd7GN8eyVW/rn+3X44
         LRIg==
X-Forwarded-Encrypted: i=1; AJvYcCWcNdid7xxMHZ3Ew6aKrlwps9GgaWtmOaccL9m+/GjPnYkQ07lLFml+UYZcPBlZeAdYj2Yn1lYOvH0=@vger.kernel.org
X-Gm-Message-State: AOJu0YwsMvpgzlxKdogPSCsoKob5WmlQH5LLCx94nFcJYz3Pc4MNI6q4
	q27DD1eddwM1j/8XxRGCpuaGoT2K60Zbfju84GGlQ7wXU9lE8ucHT6a6uFJhBA==
X-Gm-Gg: AY/fxX5I5OX3cS1+6JkkzGHnxujsSgbv9msXAi0VWdBTGZkau8gZW2UUw6Xt//M/itr
	n0rLdrNzMzBV8pgwiRXUZfTC50E1pr6Zu+yQHj3VxXTzUpJBlOs2P727QhgMbvCBiPFOBBFk+Em
	iJ77tF5Pltcv2e9sIPBbPFbJgJkqSdtHrszLbRN3KPZfvcJmEqNkyUb5gheicfaZE4yVzOq3uTm
	hMw4yx2XrbRjXMuyeY+RhzaaGK1/Y8ndCJQcsaVOgw7w0rbopfG9GfO05FXirqELA2DUwFTjAfD
	og2YUIk+HE87qUOq9dG54mTQoZ+a4fy/w+PJZ6HQ83l/TtSu9ypsZX6vudFtAsVCo9N9th68w4c
	Vo8bQh8chOToPp7F6LHdIHBJxCkUg1mcWFp54KvS5lDBN/Eq8ytAEjo4DHgyQ9RejePoZTbN0fo
	Kp
X-Google-Smtp-Source: AGHT+IFUVIu2gMixMjpKY/p6m2rNtMWQmyKAA+JID8u4kkGtTjjMtQ00/bBlBuhsr8VXoAHfYB9wNA==
X-Received: by 2002:a05:690e:885:b0:63e:17d8:d985 with SMTP id 956f58d0204a3-6446eb4de47mr281811d50.53.1765317112372;
        Tue, 09 Dec 2025 13:51:52 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-6443f5bca83sm6826619d50.25.2025.12.09.13.51.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 13:51:51 -0800 (PST)
Date: Tue, 9 Dec 2025 15:51:49 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Ash Holland <x-hv2j5m@keysmash.solutions>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/man.7: Don't warn if groff_man.7 is not
 installed
Message-ID: <20251209215149.6ah577ddtqabyypi@illithid>
References: <03f1e33dd6200c05afaff1f116f5b254cebd45dc.1765314181.git.x-hv2j5m@keysmash.solutions>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="m3vtszz5hy6s36wb"
Content-Disposition: inline
In-Reply-To: <03f1e33dd6200c05afaff1f116f5b254cebd45dc.1765314181.git.x-hv2j5m@keysmash.solutions>


--m3vtszz5hy6s36wb
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] man/man7/man.7: Don't warn if groff_man.7 is not
 installed
MIME-Version: 1.0

Hi Ash,

At 2025-12-09T21:38:00+0000, Ash Holland wrote:
> When I invoke e.g. `man man`, I see a warning:
>=20
>     /home/ash/.nix-profile/bin/man: can't resolve man7/groff_man.7
>=20
> This is observed by others too: <https://askubuntu.com/q/1521258/478436>
>=20
> To avoid this, we can simply ask troff not to emit this message:
> <https://www.gnu.org/software/groff/manual/groff.html#index-_002esoquiet>

I'm the GNU maintainer of groff and the author (instigator?) of the
`soquiet` request.  Your patch isn't wrong, but I must point out that
the `soquiet` request is new to groff 1.23.0 (which isn't that new
anymore--it was released in July 2023).

> -.so man7/groff_man.7
> +.soquiet man7/groff_man.7

If Alex applies this, it means the page redirection[1] will stop working
_where it had been before_ for any systems using groff 1.22.4 or older.

If Alex wants to make the Linux man-pages require groff 1.23.0 or later
(there's been no subsequent release, but I'm working on it[2]), that's
fine with me, but such a decision should be announced so that
distributors of man-pages packages can judge whether they need/want to
increment the versioning of their package dependencies accordingly.

Regards,
Branden

[1] that's not really what it is, but let's pretend
[2] https://savannah.gnu.org/bugs/?65099

--m3vtszz5hy6s36wb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmk4me8ACgkQ0Z6cfXEm
bc4ing//bbuvi3Wy3qPKOVpSqv0UnnqQP0aAEIA8yWyPB26MI7ZSYfxdcDAEU3ru
WB/YrVr2sXyEjwcKnvehuzfZipLZv9I+/5+RUM/XpukHrw+hCMrM4eKwu67zM3kl
XY5P5pY216qhBBopE0bDapaJT0bT+j6Sie4RfN5/oMAUCj8+J8m6xj+XXgjFgg8v
vTvxoJ6RtFHLheosQyajwmpE/S5w+hsd13eTffD6D9dYWJag09MH9dQD9TBW8JqC
4qh+ZEDLMFwedoq5BwEjJecxesXN16EwZKRiM7BWpGA5kglfC714Iu5KNkP5Xems
0EyU43dPKONpM4TFYBfuLpgC3JmUFyr0XqHqB2JsirMb8/E63VFMS92AYw9hCPsc
9UbK//+WGE+0XCHWKSARsA17AAB0T4V62EnPjW4BebYNV/xS2zKb4YmB37h1X56I
PRLJORJKZhGAxC6XEDauzaBRS+AXmMxHmyKrLhhpMxScSpobF0DGG1zPWsE8m0hA
xh+/Xu2HOPeYM8MGbhs1T7WN3lb6kQ4v8F8ZDCzpqZIVTR3rH0bdQaWV5yszqd9O
oINtGywxiYRNhpDS03sy1IBaMi5T+ITQZeOQF5c5vKDzn6Nn5a6ITZaHMY/jtNkP
VynnzuXE5SV83CrFiTFMBeAVsSPY0hadlTbVfIlnXSUBdmysDOw=
=ZqXq
-----END PGP SIGNATURE-----

--m3vtszz5hy6s36wb--

