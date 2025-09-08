Return-Path: <linux-man+bounces-3843-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2ACB4916E
	for <lists+linux-man@lfdr.de>; Mon,  8 Sep 2025 16:30:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F38B1202E33
	for <lists+linux-man@lfdr.de>; Mon,  8 Sep 2025 14:30:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFB5930E0ED;
	Mon,  8 Sep 2025 14:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V4qo2CQA"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3208A30E0C6
	for <linux-man@vger.kernel.org>; Mon,  8 Sep 2025 14:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757341761; cv=none; b=jAZNAt+hfmZKRUoWm1sy2ghq2zSreOGCAmyczRpJyOYtyKxO3g+nvWuiVIAhCjYaVfJZZqxSPLO0tLmXuVdW3hH6lYZAD8gHI3natLi03d+HLGDfLM8ktZmwXap0l4J/qk7z0aZ+M5j6xfujLv/VmUc9qHv0EDyl4gAlYFm+HHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757341761; c=relaxed/simple;
	bh=GHYjsHGfGZKmcKVEdm9CJOFAxYPyTyDSRs9hCz+SM7s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OOA/jWKONFvMcXA/toNYq9YWe44WOk3zQMO0HH4wHfIWeuG0NKoOS3JLAtkD9rzeeibhX3MDAVtnht61o8ffbL2sOEB7fLXNvEpmc0iTIK45FOHLjU5evNYSXnXFb8gviMDTOV0Y6eG8EcwwapgbUOMQydR5FG1IQR7MJlOZitE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V4qo2CQA; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e96d8722c6eso3497055276.3
        for <linux-man@vger.kernel.org>; Mon, 08 Sep 2025 07:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757341759; x=1757946559; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cAblUooQIEGgpt9pHu89Srt03eqHX+csnEj8W2idN+Y=;
        b=V4qo2CQA9GeFkfn7K+nTF0IvUic2945X61dyDmWuuRGliKiI4aOL6ZWVC9XHaQOHNI
         uO2OSkw6nlKRP6GqPSiO2MubDI8cxnUWbLZyjdOlW+DuP8hpHpBEuYf8H58BnekdKL2p
         kSxKKTLa9jwmvN3B0LfWo37x8H4sVyHIMF+0og8ES+v0n0Cldn6nwtb40Kf+Gnn2vtmb
         ATN6orALqu0usNJrxFaeFFCnlKD/0cxwYUKV4ZFrOSWdmFS8YpF8auiDBI6tmlI1vDyV
         LjeNk7n/kCi7aXlX88DmpboafGg/gSIadmjhvKBBks60Qk3+IwMvW1EsRI01Fbms7fyc
         1PAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757341759; x=1757946559;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cAblUooQIEGgpt9pHu89Srt03eqHX+csnEj8W2idN+Y=;
        b=h675g7W0PYyFjJkLfbFKGnxsKbsXSglzRGUR68Dr7WIfvz8j72kgMJCiQw6hltkE/c
         h+FL4KdNJUA/S+nR2hutcgME1AKaRpyTRz8e99v2qrGXyS1KoNPVf0wFzUs5FF7652N9
         ilADxyihnxtRCI7Z0jotaeIrJlE96ybJp4xNpfctpKs8PvfI1JCCCBMa0qS9SjYHSE7M
         hv5zSQ99dyVLxY1tKFojhKjt0GAdbrfzqpOPlU7LgffMotnJXixEwSXyD44Pl9zqodEe
         zgpLTdWoRuvJOpst+zhQni9Kylf+3bTAlVEbl0Zdv6FBXeRbjchlCS+mfTNPKZ0BEHeB
         tcDQ==
X-Gm-Message-State: AOJu0YyezUxNAc9Puj7hjZ+ThgvtoUNQVRinx4uthOOyQqGYGiesLBbV
	Sl5pVJ9J66/umyxDeseU7Wtm3S/zuyEdVRKezpXeYAUPfmtgvi5ERe2p
X-Gm-Gg: ASbGncuuvfhSDN5NzGCloqnmrGM+cPsizrmxvLdUgHKjJtHsMENpIJ3xrF0wwFy0QoD
	WZcYQg9AgKJURTgl3CddzkFEiIoAK6ahTvG8VZHZ5rsUAJBsdtsqa3P13oiMbcEx8xGHDDvsjz9
	ox+BM2Rl7TQ5ehEDwHVLTHHuyElk39vGskB65I5DLAbHR/RaXaGjekeu4/TQmMCndzGdAYMnVru
	ih9+EW9PaWJLWctMqrhHHsdQnASEYwUQa5m4ZTeZM0BSCBQW6DTVJX3Iws3qFV5IsCM4DN39ld0
	Yj+uJ1qEZSLQVXWQHbrZlyY5uXPJRxHPU6EnBdHEevI8AD75UUFBgqXWZEag0o+UWrJB7CKANJN
	0LheEwyrPKP86+6XYCwoW8U8=
X-Google-Smtp-Source: AGHT+IFE7l0QzF639MmJZxB0unxAmuNk4Hu3GTjmW4IlTtCz8dCs/OTsaGH4nZ1UT+oHC67GQ/hJxQ==
X-Received: by 2002:a05:6902:2a82:b0:e98:991a:ccbf with SMTP id 3f1490d57ef6-e9f65e11c62mr6205925276.14.1757341758505;
        Mon, 08 Sep 2025 07:29:18 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e9d69ab7ba8sm4151881276.28.2025.09.08.07.29.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 07:29:17 -0700 (PDT)
Date: Mon, 8 Sep 2025 09:29:15 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH 2/4] man/man7/sched.7: Update the documentation references
Message-ID: <20250908142915.gse3a3wde3jyruxh@illithid>
References: <20250829160200.756194-1-bigeasy@linutronix.de>
 <20250829160200.756194-3-bigeasy@linutronix.de>
 <20250830072857.mw224c532jj5xdlj@illithid>
 <20250908135134.lMIYucZP@linutronix.de>
 <20250908141102.ie4yoo5xasiimybe@illithid>
 <20250908142508.QWJtvSuJ@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jtbam6pvdmd3i6sf"
Content-Disposition: inline
In-Reply-To: <20250908142508.QWJtvSuJ@linutronix.de>


--jtbam6pvdmd3i6sf
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 2/4] man/man7/sched.7: Update the documentation references
MIME-Version: 1.0

Hi Sebastian,

At 2025-09-08T16:25:08+0200, Sebastian Andrzej Siewior wrote:
> On 2025-09-08 09:11:02 [-0500], G. Branden Robinson wrote:
> > Hmm, that sounds like a bug.  What versions of man(1) and groff is
> > your system running?
>=20
> Just to be clear: The following
> | .P
> | .UR https://docs.kernel.org/\:scheduler
> | The Linux kernel documentation for the scheduler
> | .UE
> | .P
> | Worth looking at:
> | .UR https://wiki.linuxfoundation.org/\:realtime/\:start
> | .UE
>=20
> rendered via "man $file" as:
> |
> |       The Linux kernel documentation for the scheduler
> |
> |       Worth looking at: https://wiki.linuxfoundation.org/realtime/start

Understood.  It might be the problem I think it is.

> > $ man --version # This will fail if it's mandoc(1)'s "man".
> > $ groff --version
>=20
> man 2.13.1
> GNU grops (groff) version 1.23.0
> GNU troff (groff) version 1.23.0

Okay.  What terminal type are you using?  xterm, gnome-terminal, Linux
VT, etc.?

Also, try this:

$ MANROFFOPT=3D-rU0 man $your_sched_page

Regards,
Branden

--jtbam6pvdmd3i6sf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmi+6DMACgkQ0Z6cfXEm
bc5FYw//Wj64FHUDBP4kxvvzehz8cdRZoXBiqPsn+Da+zvmct80jPSxTteDb2i2z
z7KfjV8n5s+H6jx1UFyxWxpdSsNbMneKBrMSgs8sl+SPsHPBxo0XbL9pciIKkoVU
q3r3NA/SNxWtue9kfLK6aGNQ/Qr3epZFHOXoJoqp/q6dpbIGq1PtgoyjnxnJ3G3n
/l9yBpLJowe3ZbQWKs1uapisWztgP4kM3ePnXiR3w2kfqsaMsK8XWAvMnjI97zKL
fzDbCG/OSHTxVnso7CFtMIWC10/JNpjfESPRGQY7zv8fOd/RKyqG3p3osNKAXlpS
bIGpnygXf617i5ic0GfgVUxWE+h8wWyOYvkwWel8pto+oI3xQonIHeeidfEWEHfK
eEDj+TNdWp3/cyCUUX4quz5XDvcAvq0tByWSmQevUu6VDHZdXZvBsjvfhJgAJuXE
CbCoyXrhipmoi7yWvgh2+azP/RmORSUx24eaqcdtj+BppwjwLsBDN6irgVLXNMft
Q+mn/s+17kp6jJvb8mNbOl/fWHGEGxFbhPX0iBswHJqn90jRTcOEcHdlKd8tAv2U
rNZPZDNmjIhxbz43t7CyY+tJzzkXxc94YRW796wdENhAlAXOxxBiytvVG0Dkeal0
LT9GOMC1kGHWbRCeZJOyDB/fBFLxWhHxZUNZW447ZBmF5v3o7bE=
=PB8S
-----END PGP SIGNATURE-----

--jtbam6pvdmd3i6sf--

