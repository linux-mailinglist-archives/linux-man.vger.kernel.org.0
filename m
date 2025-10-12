Return-Path: <linux-man+bounces-4110-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD78BD0A30
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 20:57:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EB7824E2D53
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 18:57:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F7882868AD;
	Sun, 12 Oct 2025 18:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Oh4ZR8Jq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A92581C6FEC
	for <linux-man@vger.kernel.org>; Sun, 12 Oct 2025 18:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760295429; cv=none; b=OzBemUNClU+sbtuEl20gldRdWTiDuNKikb+UuZh0dkhAA6A1uRoEo7NHz4AtALU+UpPh8h2oTdh47U/obvbUHhLDezNxlpwQTaxwBdrx1JmHVM9m8PogNvcEPOt+Qka2KwzXQaNj4DBJ/6i+8kbvIOOQ7hhqBh9v8ByZdv1wxK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760295429; c=relaxed/simple;
	bh=4t1KgkvGLDOY/afepAUqen0EL2Dg4r8NXZIU2T5kjDc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=figkm4lpxAalD5HJ292NV8wiWW+c02llBST3KhcBIpv7VrnTFMxlQsXCID0v3VVWRvbn6TjJxVL/4U+TmDVih1X++tybG8h5y8I8bb8W0UxXj8vjDq4MM7cmv87N5HFHa+ShF/xrqH96SKMvPuTGLxG5zSxx5UU78gB9QjnJu/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Oh4ZR8Jq; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-73f20120601so33093897b3.2
        for <linux-man@vger.kernel.org>; Sun, 12 Oct 2025 11:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760295426; x=1760900226; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q7MNnihLOdl4kGpyFcL5pafrv2p1dBfh3yuS3Lgj/oI=;
        b=Oh4ZR8Jqc/L5Q46eXDyv5HzNlR+W0d9KtNjc/LKxWdt/3uB3wq2iit59tdOKR/pxoB
         3KwkUXHH3iYzJMer8SJhSHb0OAEgHgzftJU5yZ4CKLIogo+FzQDU4FUWl+aX0ljsCR2H
         lZrz2C0QWYYD7ezvBawxVGL5yIZi5hH9p8Db0D+e6ANYMzFK/q1VGRTO9BpIF3CyIyDc
         OcukbobhAygGcwK3XQ9kgh/OSUT1v7HphChIZsVkszgoEfNjHdcTj+aogC5iHJjNguPr
         W4mpg6IkZ+6Z04Qpv9r+cf3OO7mRBxx6/x6J1YT2yVdrFpuDzb6TRIGaFiOAj3cbsOpd
         HNWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760295426; x=1760900226;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q7MNnihLOdl4kGpyFcL5pafrv2p1dBfh3yuS3Lgj/oI=;
        b=us/iZSsxOdMTgjOJsocAa5YHtqBJWXo4e3fH6Ul7d0rfDcr+SywUgjHj/jL1Q4BklA
         mUofjBHL9NNs4X+4rI1RhZgvrxkFOSbNgFs0od3AMXndkWNRiW+97xpkB3KcbZRqaeiJ
         LF54zl/G/wWQu/2SfhNyuQXt+2oBaZGDJv1/ZkUnSoBJKvS0YtPY926xEpzCe0TlR3xF
         bPIsPmVih1zXWHD7nypRla1Jx0KA69y3IIkHXv/klaHDeHLJ0sUEvd8l2lLoUUqF0Cxh
         1jfOmznu3h1I5SBRattWBicOPcDjiBoAHlvQ37tuI+GW2VhEL8M0vCsTvgLyHW/qDUN2
         Axjw==
X-Forwarded-Encrypted: i=1; AJvYcCV1v+tgRzjweffu/5qnpYWI4CxWvWtQ3NxJ92UISap+KajDLypkBdmvZG55/l7qg5Ot/t3ERbhSSew=@vger.kernel.org
X-Gm-Message-State: AOJu0YyHidPPyqVOPNhp36pVL9uEcabmhD4+dXdkPujnZORkSYKsutQk
	amnfK/KeuDAR/hNYEYdcPIYT67IxuXLJNqHmTrYAeTXM1vCay9ev9Z/6
X-Gm-Gg: ASbGncuHijJogimFLvCH1LyccBb3Oxi0HfG0xlxcNZTwmYb8IP4I4E3lrw4w/+hkw21
	gi11D9GBLlnTAnxUI0x2esawzjSiEX01aa0qO8SmTTmPaq4EMFgJ5tvgu9e8oHh1oy0Lcequz+p
	Jr+cy9e+/j7thvBJfavt5WEFFlK4083xL626r1HR9NxEJAjqtQIjZcKcHHoqHF5CoPCaifKVD7h
	BfKYJ0CGXNeaW2MWetYcLmwrdRzXFfmgdGW12YmYdjUlM+YEQrMOg+u0oq5d3eIWrXiN0SxVLwH
	DR+oz/dzVLb7EBLS0T3fbvUg3jSrPKr9zB9sIWut19ajI3nxGiGNErlOn+1QpkLlrBiCA991San
	7zQPFctDL0C5sgDGQL+35QSPnzcH63Cdimet27tOmaA==
X-Google-Smtp-Source: AGHT+IF5s6J3a7QaH3wwQiA8Xqa4ZxNIbS8ROMPVM4SO6egGedyk+meh11rm3Zc21KkiU1pdZN8/ZQ==
X-Received: by 2002:a05:690e:250f:10b0:63c:eef0:221d with SMTP id 956f58d0204a3-63ceef047camr6905554d50.48.1760295426485;
        Sun, 12 Oct 2025 11:57:06 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-63cd95f5645sm3470076d50.31.2025.10.12.11.57.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 11:57:05 -0700 (PDT)
Date: Sun, 12 Oct 2025 13:57:03 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Luca Boccassi <luca.boccassi@gmail.com>,
	Askar Safin <safinaskar@gmail.com>, brauner@kernel.org,
	cyphar@cyphar.com, linux-fsdevel@vger.kernel.org,
	linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple
 instances
Message-ID: <20251012185703.oksyg4loz5fcassb@illithid>
References: <CAMw=ZnSBMpQsuTu9Gv7T3JhrBQMgJQxhR7OP9H_cuF=St=SeMg@mail.gmail.com>
 <20251012125819.136942-1-safinaskar@gmail.com>
 <CAMw=ZnTuK=ZijDbhrMOXmiGjs=8i2qyQUwwtM9tcvTSP0k6H4g@mail.gmail.com>
 <bc7w4t422bvpcylsagpsagl3orryepdbz4qimkuttd3ehtdsfu@thng5d5wn567>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="l3koxqkgi73t4cll"
Content-Disposition: inline
In-Reply-To: <bc7w4t422bvpcylsagpsagl3orryepdbz4qimkuttd3ehtdsfu@thng5d5wn567>


--l3koxqkgi73t4cll
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple
 instances
MIME-Version: 1.0

Hi Alex,

At 2025-10-12T16:57:22+0200, Alejandro Colomar wrote:
> On Sun, Oct 12, 2025 at 03:25:37PM +0100, Luca Boccassi wrote:
> > On Sun, 12 Oct 2025 at 13:58, Askar Safin <safinaskar@gmail.com> wrote:
> > > So everything is working as intended, and no changes to manual
> > > pages are needed.
> >=20
> > I don't think so. This was in a mount namespace, so it was not
> > shared, it was a new image, so not shared either, and '/' was not
> > involved at all. It's probably because you tried with a tmpfs
> > instead of an actual image.
> >=20
> > But it really doesn't matter, I just wanted to save some time for
> > other people by documenting this, but it's really not worth having a
> > discussion over it, feel free to just disregard it. Thanks.
>=20
> I appreciate you wanting to save time for other people by documenting
> it.  But we should also make sure we understand it fully before
> documenting it.  I'd like us to continue this discussion, to be able
> to understand it and thus document it.  I appreciate Aleksa and
> Askar's efforts in understanding this, and the discussion too, which
> helps me understand it too.  I can't blindly take patches without
> review, and this discussion helps a lot.

I have some unsolicited project management advice to offer.

I think you should say "won't" rather than "can't" in your final
sentence.  You are defending a point of policy--rightly so, in my view.
If someone wants to argue your preference on the subject, policy is the
correct ground upon which to engage.

The practice of distinguishing mechanism from policy is a valuable skill
in domains outside of software design where we most often speak of them.

It's even more important in the instant context to articulate matters of
policy when a contributor indulges a passive-aggressive outburst like
Luca's, above.  Confusion of mechanism with policy is the lever by which
that sort of emotionalism operates; obviously we _could_ just do
whatever a contributor wants without discussion and without
interrogating the wisdom of doing so.

Regards,
Branden

--l3koxqkgi73t4cll
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjr+fgACgkQ0Z6cfXEm
bc60hA//bTD9anqvdZWCJVtEKIsdKs/xQ0MhNadNhVgj7cwnxf8SroWTxcJ3MV0H
ebn08UDbfeOupAjguqgc/j7zUHh0fg+wqBT78xGX74Lv+q/MBLYD5Z/TdkI8Gy9f
xjZdlZ5l3/bJcAxOIXqklK0L4cPCQikw6jYZF1IVcQFSkETEHRcPFTwjl9H0UeW3
Nlzwkns4xi5Y+05uyIsSwiOIn+VEADWrk2xktFohekjZQsBGJpotn6gNlysWhC0g
lGcNawSn5ZkeUT2nJt1YHg38g9ED81fRBtyKXCqwAvwJG5Lp8nTZ2Z41HbYghAUB
GfCpDUAY+vIYhUShErOFm52i+B94EyCfANauu0q31LJ3vwH19InTTjFEvj563mVh
tOjf4g6KWJaGNfXDlt7FjRgttjr7aCNZCEjiZjtBa4/cVnctg3aFOfYqLFlA6H7T
RwGlCPAisagaZrrcwhkdLg7UVELyArZCTMvzrE5Vgj31no9j1mRLjVXCHyIleXal
Imy4upbz1YvXB5fkTKnKLOJDi8tPucmfuivjwAtLUB6uwQ7QTblFFFbdqros5mc2
mMMVsRUouuXPMt7LEhe3b7j12eFit9zHE4ePMsHm+sZQ8KVe23ViprYobJA7JKYK
vTbx7o3KeXnANL3ssnReygpvQ89oC2X9w2+pVhCLVCkfhr5VyzM=
=AVSk
-----END PGP SIGNATURE-----

--l3koxqkgi73t4cll--

