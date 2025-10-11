Return-Path: <linux-man+bounces-4099-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F463BCFD4D
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 00:40:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CDE4A4E237E
	for <lists+linux-man@lfdr.de>; Sat, 11 Oct 2025 22:40:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18A8523D7EF;
	Sat, 11 Oct 2025 22:40:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EhjQBsr5"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63AF7202F65
	for <linux-man@vger.kernel.org>; Sat, 11 Oct 2025 22:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760222444; cv=none; b=FVAwljBUe3GrRoS8fyzOoff1KDaR26F6EWsDyKUyu3CUwWu0xOAzDCB8um6AA+na4E4pBaaUpmdxgjK5+30rtz6RIsazxQevA6bIB2gVq4HQIjq/A5CiO1TIbhgE7gauiwgI8F2juql8V8wEk84UOvZuAia9ITmYFgn4nEq918M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760222444; c=relaxed/simple;
	bh=PolTj7uup/1lT6uElklvkvPNMDYRt3d4zfBsylbdThA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=XbISAgLbCGEZKuUbeoNa/NNeALosCfjrpGlpHLF0Jf2iGbMRpuaWqDMaLEOUZDtqSMUTCtPzZkvaKAIltW4nStz4Jq4KViU9QkTQrnPGOFmKCFYWoTzlXxpYM+fu6aVcZxzmZ/KqoUx5JypCDhts5JA8nv8HCDGFe3+JmpM0jr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EhjQBsr5; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-28832ad6f64so35200795ad.1
        for <linux-man@vger.kernel.org>; Sat, 11 Oct 2025 15:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760222442; x=1760827242; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PolTj7uup/1lT6uElklvkvPNMDYRt3d4zfBsylbdThA=;
        b=EhjQBsr5iHbIxhpDQH0tSd109p3pVD6mILRTuM1oYafdGaIhRN9Y2FnOCdk5ousY8P
         VY6PYdrpH+fmfqMkJptvaipU3alDn4Ov2i6qJpqCvoJuSRaDWko0L1d2itCTNsyHjUeP
         GqFlR6szuaMykCBFMSgcDbNrQk6WccHLUIQq38F2XurEklN15kdV9GfBR82BSkP27nSB
         0GITUgvv8jFKpfyh2ZB1U6iSlxtT8eaUf1g854pQmQxqS8jUEe4zT4cSr4CnBGm2Cm0o
         g6b9Ix/ww+PLJWeD/VoGpvIz8dCKQgD23gicUZtBySW+fpXgcHFKlBkJ9oJi52k0d3Dw
         XXhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760222442; x=1760827242;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PolTj7uup/1lT6uElklvkvPNMDYRt3d4zfBsylbdThA=;
        b=IIdWRg/qkkMn2HDWrtwripaDr8XXe1rViNcQ9a361fDC/JdAXv2z5ZCJLVPkH4n9U8
         RexmW8pcs5KC51WX+lGpHbIMRhVRTlL9tg192i3MujzDH8oTyOJm2U//yN1X4s3HYAd4
         MTfh20xkmHRBOa7FjuUAWn3pPykRYdENW1st714NzbIHQCsHpBcwux58kU0dp9fh6jrp
         52BMK+qc1O62xecEhIB2DHNCDwDPg1y3AdnJZ7t0VAMd6HCd1op42IdnJQxu6X8y0bzV
         AuZ0D92Tq8pbjbTs8oGow/IsqNtmQk0NGw6eAGYqMx0OdTX6Vs1F31RT7sPO7unMlI9A
         6Thg==
X-Forwarded-Encrypted: i=1; AJvYcCWqANS+hrFC92o7hXJpuOYY5GU3RdAaFcbLSYe3wwv/H0bLnyIZOh9vjX3Spq4Wq8WGgDXp2WQ9bPg=@vger.kernel.org
X-Gm-Message-State: AOJu0Yxno03EsSykFY1Xy9bG6rdZSDtUkIvuq3ACvDhCEtdPHarwBlym
	QQSznIHvB2dPi9uOApRJsigWCWYnCIyOzcDLZKDpbn/aDKHV3V5OQXmLBbLpdg==
X-Gm-Gg: ASbGncvG4ZhiN/wGFmsHw4UXRc6yL8AwqD8LQevvhsd4kxUPjlYbuUOnHFtYcwEanuF
	MlMjAmCt7/ZJqltqu31rXJE3lfyje9UmR2JkMeko47aLTKGoL2nETQpEI7wR+Ptg9P60H0ma6Sd
	XeEWNPdNKPf0/c78LWtR+ZwVxLIbziZ8PS4wO46wVl6vFfTF/uhwxXIAse3KH8MHS3utY8eCrs7
	qSrBhzxof3Z4t1Zf1kSno3AeaJZ8KHe4ojanCn+grbraTx544YwDFdgjmyWrMwm860vg0jpEfJs
	5jqkxIUG0F8nyOFfTb28Z9utJEtOKJsUeGQ2GH4KNzPaZ/igwb/IIvDrzBbhh90g++a1H2IePhq
	/v0iGfSu36ujHErwRVvUbkj0=
X-Google-Smtp-Source: AGHT+IFGrZSGK4WOmyNnBHb8FcnI+O1P3kNDbINWuAWODOTLW+R9zAYdu/Ewc6C7W5AhVdm5J+KMXg==
X-Received: by 2002:a17:903:faf:b0:26a:ac66:ef3f with SMTP id d9443c01a7336-290272161e2mr185958535ad.8.1760222442086;
        Sat, 11 Oct 2025 15:40:42 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::e735])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f05bcasm92353445ad.84.2025.10.11.15.40.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 15:40:41 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: "Sertonix" <sertonix@posteo.net>
Cc: "Alejandro Colomar" <alx@kernel.org>,  <linux-man@vger.kernel.org>
Subject: Re: swab.3: mention UB when from and to overlap
In-Reply-To: <DDFUAR7OXZ38.3SGS6R89CDDMD@posteo.net>
References: <DDFUAR7OXZ38.3SGS6R89CDDMD@posteo.net>
User-Agent: Gnus/5.13 (Gnus v5.13)
Date: Sat, 11 Oct 2025 15:40:34 -0700
Message-ID: <875xclm599.fsf@gmail.com>
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

"Sertonix" <sertonix@posteo.net> writes:

> The current swab.3 page doesn't seem to mention anything about what
> happens when from and to overlap. In POSIX any overlap is UB.
>
> glibc handles cases when from == to but it will choke when for example
> from == to+1. I am uncertain if from == to is meant to be a feature.
>
> If it is, would it be possible to mention that overlap is only safe when
> from == to and it's glibc (not eg. musl)? If it's not intended would it
> be possible to include the same information as in POSIX?

The prototype uses restrict for both pointers which is how you tell the
C compiler that two objects will not overlap.

But maybe it is better to be friendly to those new to see and state it
explicitly? Alex will know better than I.

Collin


--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmjq3OIACgkQjOZJGuMN
fXWanQ//b+ivUBrCets+jZ33ZWFc1euFqmLqVCjl7hteNizCpaBd5dHZd7YGOW3p
Cd4Y0Xvr91VWbNnpEK2pF4XCyFnJ3E7gt4AX/gkaykpiSPBaEhXx2yBT/hKmcDo8
nIEiQspiHPnK/pY0Wd81XEKjeABV78VSIsDaAx6ImpYOTUKmRXFWhETu5NXJBOJB
WeZeZTiJaYa9LbfVmY15gpK+4L6pVH8U1EDyDR635AaVKe/ZHWrd+ZGaQNjTYg3/
uId69lmo4Ua8xu1Rkl7LElWMBwEQ9hwXVt7whPoiFiHWQp+qLj2FsWLsYw6KwFqI
1Lu+yFzWE/B0urRNflIoTpHnA+1T1Xi1Ir9lja0EdpIHEZWtMPFrJV05H9LIA4Vm
BVB4ELaNhMf+iPi9uxcTLFttiKFxbMnH+yuL3uX007PbUqrh+wLM5iq78VkDLH0c
5GQO6FAOjM+iK/984UVYDz7DIvsMubiHSQHaeBq2mnvzbXHOOyfrUfw/1whaGS75
TYfzgjaHP5ibCAX1cGDgB0r+6M8yZjTMHaMJixamoKG6wYTR8mcZ3HexIBNysJyr
EDAEkuBD5rkbeQpAAIWW9yh7j2C+mf5FHRLNIkDsGpXnKZmEQf6M4qhEf81sZZQM
z+yP6CaeO8Qs+SHbmkrumCWZ0TlcWO6eZOLvBPU+Yi1SyJFzKgU=
=XUWB
-----END PGP SIGNATURE-----
--=-=-=--

