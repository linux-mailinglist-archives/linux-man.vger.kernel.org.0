Return-Path: <linux-man+bounces-1090-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBDC903BD1
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 14:25:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE7D4284A5A
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 12:25:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4877E17B437;
	Tue, 11 Jun 2024 12:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kWx0e0Kn"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE44217623D
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 12:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718108698; cv=none; b=IG/wrAcCAUD1IcTDYbejk5RPkyP4r7F+D7Lx1ao1XJjgyy6C0kau8EeIWN9Erv08y+KWtybSdF9uPSt7EQX50f+MWsYfpXRb84SNsqxd6+ufTR7K8ytBtS5+Mvy5WPAzfVgw9vXK5vit/tGEkcba8RoHrNmIIL8Yvf+yJkMLfRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718108698; c=relaxed/simple;
	bh=+Wo6UDE+YG3Evr79sLLdaOL9jrYzcXIVFDBpbUplxsc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R0WDL/rLs/2nYuNihqzNeB8M4Un0SXSPHmCPskmW+MOgbK3S1jzR4Izq/8fX7okTOXe0gSUSDt80xahyd7jL56s5EQ7Bunf76YeaZGR/JUrJewBOTbE+zIWrKiNZDaQaDbW3+WByGo2+pb5qllHytqOYvZ8b2qGrFjDz/Rs94KE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kWx0e0Kn; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-254c22faf4cso954036fac.2
        for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 05:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718108695; x=1718713495; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AswIq9qBLS9vqJnwmy109/xdKQMc5Lw4zoREcdETk4Y=;
        b=kWx0e0Kn0KrXKIsfT+C7EPMm+DTR/RA8nMNv8ZaqdWZzZbHppEyVFcKbKeO3sO19fJ
         DlX7KKC2p949F5aIQgN1w4LFGJeHfWWHqFfdp5ubdLqxl/rmL0JkERkd8Lxpo5ijqTcl
         eH6fD31SpT7GxII+VTUCi+Z1mQL0RPCDbYT4Rt+d76i+MaieuwyZuPqGNxhEjsZs8qRZ
         yU+G9jeNsk6RJceuE2nDS482NyGPPvc/KPIWr+6OfbaeQ4vjo04Adgj7oO01tAWJepVq
         bmIOq8oEWUVEzrH4+QneQ1cP+bkiTzB/vLbu0kivGi7AwMNE07TDL16rVZRA0jpR2902
         6wNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718108695; x=1718713495;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AswIq9qBLS9vqJnwmy109/xdKQMc5Lw4zoREcdETk4Y=;
        b=jnd8Axwt9GXiNnAB3tLZf7LfksYEifvTM/JxghYKt/mvpF49rFDcBN12mwAHNsO7MT
         JX8o8/xW9nnKEJltFQxOA5qvmmANmmGgSQVw5Oxckcl6Gr1GCz2tqXdKlZHQyMzj1IgX
         nt0J2LKHPh6mS1J8ZuzJJ4HuUIVnJovdavz4IA18zFG9HSwz7VHcnWjN1HEjZ9LZ5/4O
         UWdOEgfUMnvTxwpu1XT0zpzN53EyphZcytG4iWlNBzNDHwTMdCK7ANSE+Z1yRUP3fIxx
         NtNjHpDgAlZndH2NkU+uh2nAfIBl8Z50/xOeR8Hsyc2ihHMGZZFxTMwDavlB+afIlp3D
         QM7A==
X-Forwarded-Encrypted: i=1; AJvYcCW5Pooaoiqa0l82Hhy93+/b6z7PQ+GgXohuIDl6ijpVFnlpRPWFsy5O7Ino2W6CQnBf+w1/JgQY4WDKvV4NujTzfot8AUwl70Vb
X-Gm-Message-State: AOJu0YwTHfhNpL+cTguXlb6WGX9q1MQJ4EAdbeBTxWvfct7ebWAw1ieC
	o9DOnnZBsflLnvkXEl3x/4Piq4SgdtVgGRtHmcP0UA52jALa3rj2
X-Google-Smtp-Source: AGHT+IGE7sNvQrIYUyJ8jAMLBO20siuJdWly6vE0fGwxKs/b96caf7Lp5rzT+Dp1YuMntDufGZiZhw==
X-Received: by 2002:a05:6870:3117:b0:24f:e09d:3c83 with SMTP id 586e51a60fabf-254648e966fmr12415687fac.36.1718108695425;
        Tue, 11 Jun 2024 05:24:55 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2547e79b20esm2046949fac.41.2024.06.11.05.24.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 05:24:54 -0700 (PDT)
Date: Tue, 11 Jun 2024 07:24:53 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Joe Damato <jdamato@fastly.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ioctl_epoll.2: New page describing epoll ioctl(2)
Message-ID: <20240611122453.qn6jyl4go4bvwkqm@illithid>
References: <20240610231206.1788738-1-jdamato@fastly.com>
 <20240610231206.1788738-2-jdamato@fastly.com>
 <wc5gyvvlsez7xnmpu564lhcm6ay4xlydtyp7jphib2x346twi7@4naqolg4fvml>
 <ZmeaUg_SsLfe_5V-@LQ3V64L9R2>
 <w6l72bmqi6vefojnzedbrpphbbvnofdplvb5ajz3isepvkt2gq@63s5rrseh5te>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mk45pntkrbu2zljh"
Content-Disposition: inline
In-Reply-To: <w6l72bmqi6vefojnzedbrpphbbvnofdplvb5ajz3isepvkt2gq@63s5rrseh5te>


--mk45pntkrbu2zljh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2024-06-11T10:54:27+0200, Alejandro Colomar wrote:
> > > We use '\e', not '\\'.  (I haven't checked whether it also works,
> > > and don't remember.)
> >=20
> > Change this to '\e' and tested it. It looks like it works to me :)
>=20
> Hmm, yep, both work the same.  I remember there's a small difference
> in meaning, but I don't know why we use \e.  Anyway.

GNU troff's Texinfo manual explains:

--snip--
   The escape character is nearly always interpreted when encountered;
it is therefore desirable to have a way to interpolate it, disable it,
or change it.

 -- Escape sequence: \e
     Interpolate the escape character.  '\e' is interpreted even in copy
     mode (*note Copy Mode::).
=2E..
   The complement of copy mode--a 'roff' formatter's behavior when not
defining or appending to a macro, string, or diversion--where all macros
are interpolated, requests invoked, and valid escape sequences processed
immediately upon recognition, can be termed "interpretation mode".

 -- Escape sequence: \\
     The escape character, '\' by default, can escape itself.  This
     enables you to control whether a given '\n', '\g', '\$', '\*',
     '\V', or '\?' escape sequence is interpreted at the time the macro
     containing it is defined, or later when the macro is called.(1)
     (*note Copy Mode-Footnote-1::)

          .nr x 20
          .de y
          .nr x 10
          \&\nx
          \&\\nx
          ..
          .y
              =3D> 20 10

     You can think of '\\' as a "delayed" backslash; it is the escape
     character followed by a backslash from which the escape character
     has removed its special meaning.  Consequently, '\\' is not an
     escape sequence in the usual sense.  In any escape sequence '\X'
     that GNU 'troff' does not recognize, the escape character is
     ignored and X is output.  An unrecognized escape sequence causes a
     warning in category 'escape', with two exceptions--'\\' is the
     first.
--end snip--

This matters when you use "\\" inside macro arguments, for example.

Personally, if what you want is a _backslash_, to the Linux man-pages
project I would recommend the special character escape sequence that
_means_ "backslash".

GNU troff, Heirloom Doctools troff, and mandoc all recognize it; that
should be (more) than enough for places where the Linux man-pages get
installed.

groff_man_style(7):

     \(rs   Reverse solidus (backslash).  The backslash is the default
            escape character in the roff language, so it does not
            represent itself in output.  Also see \e above.

You can of course spell it \[rs], which is even better.

I would not give the same advice to bash or ncurses, which must be
portable to geriatric commercial Unix, for example.

Regards
Branden

--mk45pntkrbu2zljh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmZoQgsACgkQ0Z6cfXEm
bc5CJxAAnTOP+XRZiup8MqCvZ1dhkiEk934/cPsPWNBVlC44tH5Xzp+HD8N7TWsH
Q35ovvqYtWXZom6Bhmm6Be4cmAONB+MXeFJkJZzoLJJB1vFZq3CVHMZFikUMfP1q
qInArlgI5baA4P28zWiR6/CoQMtH+qsP2EBuh/146DMnTqpxQfq1OCxPAYaeCrSM
S+/nhLid2jfv4RzqXI4ZkOinl/rNqC6VHAnh+kn4sMz3VtlmOABiK2k4qUQHrbti
dbxDfT0CGWum5TnYUY7JR0rx/D9P6uxGowm6h2QFO44pZWOKRMyHRcQZ1xVmbbZc
qQrQX0XeQFvaorPggtYulNbt6dEoY0JMl/W88IASxQn5PiQp09xMdyGirHW02Dxf
QYoNpDbJHXRDJtvXySpoW8sug253Ti5JOMbnAoMnCshEZS2Qpvu+T51krM1XsFLH
yo8e9URnq5q3e24XqLX22cbQILS8+5d7Y9dtr1572v1OJ0HzNp9xWnGxOqNDqIhK
CB7CBBVSxrcW7bgJq4uRQdtNN9wzSOmlxhuu97ZWNSBRIn/JGPXqVyzz1nXAAgdA
T4fzpuWHGlzljok9eYynGHpuedyA1jCUwO3yhba1LInWaImb6yBsGWeipCjets/Q
j1l/6mDuFWS4MQMM8aMxWvnyeB2SYd7WoDfSB2262lLG2oeNWu8=
=6f9k
-----END PGP SIGNATURE-----

--mk45pntkrbu2zljh--

