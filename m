Return-Path: <linux-man+bounces-838-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF1E8B534B
	for <lists+linux-man@lfdr.de>; Mon, 29 Apr 2024 10:39:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0C8C4B216DB
	for <lists+linux-man@lfdr.de>; Mon, 29 Apr 2024 08:39:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C94D171B6;
	Mon, 29 Apr 2024 08:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IXkYxi2N"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A82175AD
	for <linux-man@vger.kernel.org>; Mon, 29 Apr 2024 08:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714379978; cv=none; b=vD2/wOHfgAQ5Dwm6l6P/fAfq7a4l7LSqb1+Sx+ZA53wlYw6TwBGdzvxeV9Pi0PzxvguiVGZceKOB4YS/iWWMd7WyqZNQ/Hhh9EUWgqnRVemvSqhj8vkT0fAkLO35yp9l/GnGZwBu7wlivl01CQ82TOVf0QXsFwkVpY4limyn3A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714379978; c=relaxed/simple;
	bh=tJeieYO0mDGbfwAPCNiCbc7fwPSl8Q8rtXxLZ+u1JvQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZiGmKLtlhSuIoMwl4fxnqKwNSOUy8fqJtzbiNFbPNJfyRqRWSGjH1eQ/uhcNas9wIHErD16EPu19NTubqnmzE1xw6+QsajvO+/vZjn6lYOUU9a3eqhA/gnxo4E5M6YO8GDsjPJ5TDPeKJ6M/9s2yBaoNaFNmeXEIJbcQpBybf18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IXkYxi2N; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6ee3a7cb9f1so261255a34.1
        for <linux-man@vger.kernel.org>; Mon, 29 Apr 2024 01:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714379975; x=1714984775; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9bklyrczc0V01GPLEAsqss59aG/oYpGgpgW8Fniw9jg=;
        b=IXkYxi2Nuz8VZXGHgEobmObt58vLpVwEImtj6PjNGcWykDC9SjY7tV5kQqELko3LhV
         YNpjMvYnJb0bwTFHdmU75Yxv3sgsVOeHYdmOiPn5yxD3knOcg3+UosVGL/GD9A0/YGLN
         x6M8ODZtq0ve6tJYU0Tps2eHV9z6zaJmPUj12aOt4VgAtr1lpGyqO76b5wvHaXJXUV53
         QY82n+cbZMW/SDPIiiZ+yzC+swfgVy953jgziv0wTlgz0GMuLfbBSqsGBRRLogf99jeg
         nmAZl5WUL7AXVMfHmPT8An79gXSdQ49JruF4xZGI1+mcgf5Pw56v630MEyt/I7eLN6uo
         B+5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714379975; x=1714984775;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9bklyrczc0V01GPLEAsqss59aG/oYpGgpgW8Fniw9jg=;
        b=IPauDNMPDOmWLKmMxrK0I7MJwq0dtSqCoauLFWzY/pdR5gWzTCv4ohmegyAhINgU/C
         lo+vw8fIJeMpd8Zz4J6XkZaCMYb462qY3A+6vK+Lgi4CmS+6ygRXFzW1tzSN2MElvrZB
         69j+FMzZfDiEupPItXwWQteVap0YUkjnFefSmCb9kmmbHssnC4wlD4oi7YNJEydlcdft
         zqJy9XmdInrPZPRqSEqnr6fgYXgGAcFjWTKfljBTyB31q+teEdDd+Ssrvi4y5vN0+tFf
         NdoKSdMKAlqQ9z99wFh5bCOoIsQdTHJCji2RrjRQdiFlXfYGp/GX7oVBu7V8xCiNsiMN
         XJWQ==
X-Gm-Message-State: AOJu0Yzh/rzGjgh74LR4r4aPH/3lHEYSWOSDCRTR7qiV4xcn4GpZ0MqE
	+M9loASOFvUx9UDTDt3RsWiZW93QLE9ct+3vxSvS3jvIwp9lH1mh
X-Google-Smtp-Source: AGHT+IGPTIRxfQ3jdMunutqLyxe3dngdUToDfTIFxIpOBdPBH3+uOtY5IT3loFn6KNP9LDvm8C23mg==
X-Received: by 2002:a05:6870:e9a2:b0:232:f991:8fc4 with SMTP id r34-20020a056870e9a200b00232f9918fc4mr13110630oao.46.1714379975436;
        Mon, 29 Apr 2024 01:39:35 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id op10-20020a0568702dca00b0023c6ce5d25bsm535742oab.17.2024.04.29.01.39.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 01:39:34 -0700 (PDT)
Date: Mon, 29 Apr 2024 03:39:33 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: groff@gnu.org
Cc: linux-man@vger.kernel.org, bug-ncurses@gnu.org, alx@kernel.org
Subject: Re: Proposed v2: revised man(7) synopsis macros
Message-ID: <20240429083933.avuzyktl4p3xo6yh@illithid>
References: <20240426055958.3hzal6m4r7mgzhqj@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oap7gervjhoxccqy"
Content-Disposition: inline
In-Reply-To: <20240426055958.3hzal6m4r7mgzhqj@illithid>


--oap7gervjhoxccqy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[slight correction]

At 2024-04-26T00:59:58-0500, G. Branden Robinson wrote:
> (The \~ escape sequences keep the line from breaking between the
> data type and the formal argument name.  Documents needing to be
> portable to DWB or Solaris 10 troff will need to use the unadjustable
> space escape sequence `\ ` [backslash, space] instead.)

I have stricken "Heirloom Doctools" from the foregoing.  I got so used
to typing the DWB/Heirloom/Solaris trio that I forgot that it doesn't
apply here.

As groff_man_style(7), notes, Heirloom Doctools troff has supported the
`\~` escape sequence for nearly 20 years.

     \~        Adjustable non=E2=80=90breaking space.  Use this escape sequ=
ence
               to prevent a break inside a short phrase or between a
               numerical quantity and its corresponding unit(s).

                      Before starting the motor,
                      set the output speed to\~1.
                      There are 1,024\~bytes in 1\~KiB.
                      CSTR\~#8 documents the B\~language.

               \~ is a GNU extension also supported by Heirloom Doctools
               troff 050915 (September 2005), mandoc 1.9.14
               (2009=E2=80=9011=E2=80=9016), neatroff (commit 1c6ab0f6e, 20=
16=E2=80=9009=E2=80=9013),
               and Plan 9 from User Space troff (commit 93f8143600,
               2022=E2=80=9008=E2=80=9012), but not by Solaris or Documente=
r=E2=80=99s Workbench
               troffs.

> * An example document, renderable with groff Git HEAD, 1.23.0, 1.22.4,
>   and 1.22.3 (at least), illustrating use of these macros.  View it
>   with "nroff -man".

Also, for the reader's edification, I'm including an inline rendering of
this example document, using groff 1.23.0.  Font styling is of course
lost in email.

$ nroff -man -Tascii /tmp/branden/synopsis-examples-portable.man
synopsis-examples(7)   Miscellaneous Information Manual   synopsis-examples=
(7)

Name
       synopsis-examples - examples of SY/YS macro usage

Description
       Here's a command synopsis.

       foo [-ab] -c param [-d param2] ...
           [--option-with-ridiculous-long-name-to-cause-line-break] file ...

       foo --help
       foo -h

       Now here's an example of a C function prototype.  This ncurses funct=
ion
       takes  many arguments and is otherwise challenging for man page auth=
ors
       to typeset.

       int wborder(WINDOW *win, chtype ls, chtype rs, chtype ts, chtype bs,
                   chtype tl, chtype tr, chtype bl, chtype br);

       Now let's test the behavior of synopses under a variety of condition=
s.

                 Let's first create a ten en (10n) relative inset  with  ma=
n's
                 RS  and RE macros so that we are more likely to get breaks=
 in
                 synopses when formatting for typesetters.   Here's  a  sim=
ple
                 case of a command that takes no options and no operands.

                 simple

                 Here's a case of multiple prototypes re-using the indentat=
ion
                 of the first because the first gives its YS call an argume=
nt.

                 int wborder(WINDOW *win, chtype ls, chtype rs, chtype ts,
                             chtype bs, chtype tl, chtype tr, chtype bl,
                             chtype br);
                 int border(chtype ls, chtype rs, chtype ts, chtype bs,
                             chtype tl, chtype tr, chtype bl, chtype br);

                 We  can  still  separate  such  synopses  with a paragraph=
ing
                 macro.  Here's a third function prototype using wborder's =
in-
                 dentation.

                 int bogusfunc(WINDOW *win, int y, int x, chtype ch, int n,
                             void * lengthy-formal-argument-name);

                 Between synopses, the previous indentation, as  well  as  =
the
                 adjustment  and and automatic hyphenation modes, configura=
ble
                 in groff man, are all restored.  In the  bogusfunc  synops=
is,
                 we  called YS without an argument to discard the computed =
in-
                 dentation.  Our next synopsis computes its indentation ane=
w.

                 int border(chtype ls, chtype rs, chtype ts, chtype bs,
                            chtype tl, chtype tr, chtype bl, chtype br);

       Let's end the relative inset and present our friend  wborder  one  m=
ore
       time.

       int wborder(WINDOW *win, chtype ls, chtype rs, chtype ts, chtype bs,
                   chtype tl, chtype tr, chtype bl, chtype br);

       Let's try a function returning a pointer to void (and taking a funct=
ion
       pointer as a parameter).

       void *bsearch(const void * key, const void * base, size_t nmemb,
                     int (*compar)(const void *, const void *));

       Finally, if we invalidly call SY without arguments, we do (essential=
ly)
       nothing.  Text between the SY and YS calls is typeset normally.

       This concludes the demonstration.

groff test suite                  2024-04-25              synopsis-examples=
(7)

Regards,
Branden

--oap7gervjhoxccqy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYvXL0ACgkQ0Z6cfXEm
bc5XohAApgR1C7BQlzoN8lx0OU/SOvekL/E2tgDt4AxAUS1s7gqMXDBrGFNmhp9/
KBkrY+QWhivIkGmyMoZXUKqeqetm/r/VDlwMWkL6g5ffinV1IypR80F1N8Sjt4aH
TAUUDjNTsYszTlMBisu/uJYka+zKfwxTTXDKMRIi1yZy9s5vYmqpWX5pY9PwD1DA
ppL9d2ZKOSARXKA/Cm7nAJiXSiv5cDp9FfmWIBl+hTLfulqMz6PuAZQ+DHCsIacD
NDA2U8HQk3B4sBDF/lgefh4bQQRRsZxyqSw/jQRbdcIm9CX4y+26VDH16QPjl1CM
6URLUdISkc24cXauQLaEpiFEK/WNiXoZ2G9k4HHB3pQ0XRIyMgAnmEi2vM0yoyFK
4DrsyfRgbNIoXNjcOpUwyXmZcsV2IGsp/zZXBjy1T4gacNGNuQrXq+XgrGbrQaQ/
LtTOaYU3UhPQb91ub6HlRbCgeVfXSMO/TfCFBIzDMv5nKbC6qQZFqI88P6iOR1A4
L5u9Fj4l0eP8nE/Ohux7K2MODN9kWLLoUB2YG5q/ryUI28vZJZuQoFKQPmkM/eQw
DQEXM09v4smLGolEetc2qBkDTl8zrSoxPKIePlxJjn4AUw04th0nJLKzHSe0AZjU
91fmt3Z+Dx8SAJFAQwHAggRZKPhsVVKp6djumxqdziKhKwMJ/FQ=
=v+Pp
-----END PGP SIGNATURE-----

--oap7gervjhoxccqy--

