Return-Path: <linux-man+bounces-1830-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D3E9B9ECE
	for <lists+linux-man@lfdr.de>; Sat,  2 Nov 2024 11:17:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BBCC1C22CB7
	for <lists+linux-man@lfdr.de>; Sat,  2 Nov 2024 10:17:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31D8E15B543;
	Sat,  2 Nov 2024 10:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b1A8HNjo"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B7C523CB;
	Sat,  2 Nov 2024 10:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730542647; cv=none; b=rXvBPEe59y4MpFsURjuP0dtWSVv0EA9ewBmCljIlHJbOJ/60GyNn4O2kYQ0jy9nAhxWlH/g2lRTtI2z1m9W8L82b8B17wwuBjTETJtzkpir+EQY9wrRjZAIvnjUn8oap7NLrr6w5oYEpWBeGU4Q+Vmvg4REAidwqNZYSZocE0K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730542647; c=relaxed/simple;
	bh=txwRNj41QMCu1NgmDYV/xdy/Fz30Ms9isTxG3ebYBkc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZBngkRfKJFGmbauygZc3RAYYomkkJUEsyH1uhQK6IL14dpaWQgerBbeYwYKdLMcYAYGP2fSq8senycyAfiHGv4UjRFVIrPUJaN9HfRYHBMIlepKPXLc9DabGripAwa+aTGXpR+JjtBqdhwLr/MH7muQgn/AWVmw4MhTIlWiCqVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b1A8HNjo; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-71822fabf4fso1445722a34.2;
        Sat, 02 Nov 2024 03:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730542644; x=1731147444; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vynadvg6iX3sID33azO+FlsPSY6tF6gRoM9qSXItYIg=;
        b=b1A8HNjot6g1uFI6M+cpOJdLXWGfB9bQKe4pyd24F2y6fDRjqmshrzyaTLzIKkmB7u
         dPYWwsCjkL8xNXAqU5ZRbLN2CfQdKKr7adBwyihLe+PK9blLamUXhYAC+Y76DO2aHmTE
         czq7nVzpyZaxHx3CPD6jjAPFCK1DBcRtLO+dzTm8TwAvrBQzFBtloFPz/y6w34pSCZim
         zy46SY9zrcPI7Qf/tfAQLqH5HQPmZv6iqmbeyOuW+gMhFY6qPHfAxVp2Hx/yKUfdDRcW
         Bi8D9weZcb7VDqE4kGovnO4OBEdYdfX+dabeK3sS5mFazonc38X5Pk8GOExk+af6P8ts
         cfkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730542644; x=1731147444;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vynadvg6iX3sID33azO+FlsPSY6tF6gRoM9qSXItYIg=;
        b=Hc/yOCFuWiBJRRpXPNcyXLq6D6A+Len/nkliCgZ8YLyg29/UFHXEl1ZD+gdyvoOCCD
         UM+fmKzKKV9c5FXgmxURFBeaV8Awp/VMYwcYINRkerjYo0cXLSam3A3xn1s+VfMWMtyt
         hipAbNgSrOJJ8ms+L3J7FXOH35dgYl7W5AOyXPAZdlRh1Nd3K3G6PmLoVx95LBYEEK7B
         LoRRQ0Yv0EOKe7SWxOv99jG8q3rbVzMoB5cVM/s1IO/LG8QfOnCUieWasJExsRDjl60Q
         INpDqZNXcPTeg2jnexphaKmY9wpVKPnaWEu5+V/F/cLJVjC3+eA0yR5WHFhJ8pp/Xyjr
         PTeA==
X-Forwarded-Encrypted: i=1; AJvYcCV9DbqEbH90gie7Gd8pWUWcnwjg/LDg/hZzEj3oJDPRRnwuElIYe6WtUANrWry0Aen92BNKlmMK1ToM@vger.kernel.org, AJvYcCX6D+hw4lmKhEQ0TrD6BF2f0JBEG8FNXpXqe0EqiyEboYf3NDIb53OEOaID0kMlBDjljngB8+ulXXs=@vger.kernel.org, AJvYcCXdorYMYoY2lfCobwpcPqZ1Hvqpjre7iWe1g3VFcFz9CKn2zwxDY7bUlWkJXnpwr9bXsOdLwB4IiWiHenci@vger.kernel.org
X-Gm-Message-State: AOJu0YyDxSU2ICqOv/SyZZzpogcQDjxXArmOJ6sa0kQOMx5BQF1gsrBl
	h3hZ2Hug77YxcCZXsAW5u5gmWbS9/k2sZA4JYcFeutk9ebBEUGjk
X-Google-Smtp-Source: AGHT+IHidLOCarYXK3bOwQUlD9L2dhpcG4PxlbHDpS91JTZGSTCQoRppL25J2s1Ke4EKjF3/LoK0/A==
X-Received: by 2002:a05:6830:2690:b0:718:a52:e1cc with SMTP id 46e09a7af769-7186828d81emr25889797a34.25.1730542644492;
        Sat, 02 Nov 2024 03:17:24 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ec70607719sm980306eaf.30.2024.11.02.03.17.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2024 03:17:23 -0700 (PDT)
Date: Sat, 2 Nov 2024 05:17:20 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Ian Rogers <irogers@google.com>
Cc: Alejandro Colomar <alx@kernel.org>, David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jonathan Corbet <corbet@lwn.net>, dri-devel@lists.freedesktop.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-man@vger.kernel.org
Subject: Re: [PATCH v3 2/4] proc_pid_fdinfo.5: Make pid clearer in the name
 and 1st paragraph
Message-ID: <20241102101720.cwp7lcidqbzkrub6@illithid>
References: <20241101191156.1272730-1-irogers@google.com>
 <20241101191156.1272730-2-irogers@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5pnc5f5hp5bdfe73"
Content-Disposition: inline
In-Reply-To: <20241101191156.1272730-2-irogers@google.com>


--5pnc5f5hp5bdfe73
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 2/4] proc_pid_fdinfo.5: Make pid clearer in the name
 and 1st paragraph
MIME-Version: 1.0

Hi Ian,

At 2024-11-01T12:11:54-0700, Ian Rogers wrote:
> diff --git a/man/man5/proc_pid_fdinfo.5 b/man/man5/proc_pid_fdinfo.5
> index 87e6dbe56..935b54b4c 100644
> --- a/man/man5/proc_pid_fdinfo.5
> +++ b/man/man5/proc_pid_fdinfo.5
[...]
> -this is a subdirectory containing one entry for each file which the
> -process has open, named by its file descriptor.
> +this subdirectory contains one entry for each file that process
> +.IR pid
> +has open, named by its file descriptor.

`IR` is better used with two or more arguments.

As of groff 1.23 (July 2023), the man(7) package will warn you about
problem like this if you ask it to.

$ nroff -man -rCHECKSTYLE=3D1 /tmp/proc_pid_fdinfo_mini.5
an.tmac:/tmp/proc_pid_fdinfo_mini.5:7: style: .IR expects at least 2 argume=
nts, got 1
proc_pid_fdinfo_mini(5)       File Formats Manual      proc_pid_fdinfo_mini=
(5)

Name
       /proc/pid/fdinfo - information about file descriptors

Description
       Text text text text.  One pid to rule them all and in the darkness b=
ind
       them.

example                           2024=E2=80=9011=E2=80=9002           proc=
_pid_fdinfo_mini(5)

I think Alex has a make(1) target that assists with running groff this
way.

groff_man(7):
   Font style macros
     ... It is often necessary to set
     text in different styles without intervening space.  The macros
     .BI, .BR, .IB, .IR, .RB, and .RI, where =E2=80=9CB=E2=80=9D, =E2=80=9C=
I=E2=80=9D, and =E2=80=9CR=E2=80=9D
     indicate bold, italic, and roman, respectively, set their odd=E2=80=90
     and even=E2=80=90numbered arguments in alternating styles, with no spa=
ce
     separating them.

One reason to pay close attention to this point is that

=2EIR foo bar

formats as "foobar" (with "foo" in italics), whereas

=2EI foo bar

formats as "foo bar", with both words in italics.

The different handling of the space is a common manifestation of error.

Regards,
Branden

--5pnc5f5hp5bdfe73
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmcl/DAACgkQ0Z6cfXEm
bc6BNg//Z3bHTZ3wx1TbS0lEh0b8tKloBfFBMkOkYm/YtDcADzujhdVn/gI2YeX/
M440Gik5t3w8nEE27yCZJdAE6lbho9KzT7W36m6FIX0ZxvU5FfUetJz0+DfeZ9jc
mKuqdqSriHk6C2QIekNAWLUvxpOzy9fg9iIiUNbMGzKi+v3b+b1yYCfWND80fx07
7G1/8XNrV2bpoLj+5fbFkO7vgO6aFdXOIgQHjV2LmPSgQv7yF+Dq8265m2u/dnXn
0bPxX/V118CPYqYB04rQ5BS+4r+BPBiAJo9r544jj3iqSL/Yr/7dpSU3b50YCJpT
uLs+1ZiUV4whb8dbJiDnqbHipnREQtCrK4DS92Bgg+n+sSdslnJIu2oZqYrkDNPi
uAvp4RBUuQbd2gz+T68fE9Fc3zFpCqLtk7GWxyVvRPj2rd6gqVbkW7cB+YLylxQs
DqoUIFJXPkjTclto/5RrWcXviC0yqEHjuD19t1hdYYy1ETDVuLwgPH+O5d/MgWMV
0aYCPfKiG4brg9HUI0kbxfnewSlkncqPsrWWDH3dMV+fY0OcWQpnA1OmDgSQPm6x
iKjYEqYIJiMmr3tWn9I6sU0F+6foe4wfLluNHKOzdNi2o0732uJtZwYCxrg57Hdh
uBd/5EI67WCnK7KYns0av+fzV3cqGRFDm/LpY5VH3lApDUHQFYQ=
=N03W
-----END PGP SIGNATURE-----

--5pnc5f5hp5bdfe73--

