Return-Path: <linux-man+bounces-4013-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BA6BAE785
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 21:40:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D12B9188D0B4
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 19:40:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CFF3286D40;
	Tue, 30 Sep 2025 19:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nA+gOrv5"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6731F1BEF7E
	for <linux-man@vger.kernel.org>; Tue, 30 Sep 2025 19:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759261210; cv=none; b=HqbiYYYs+uAQDSi3YNPvIQ5nSRQ1UgSRpfRTqflyc7Ux8cDsVWTHWRkKHqiaw63NJlx8RY4Y9CjML5Y0ePpbdlFz9NgSWpY0XjAa1bR81sKXUv8eu/uN0WPiIysZMmx3SGnMTapgh8NtmOBZVx4Lg/g+rgcJLdIGRoFAnbJxMu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759261210; c=relaxed/simple;
	bh=tnmzgMqHzC3RM0oMa7OQ+bjmiZrlJcPRUdXRIu+XK4s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j8ZqQw7zycwQ6T7pnGfre52H5PCOZROpEODtHjh4K+qDCirJQ9EVJMl3rhun68mre+fVN33cQu6QSVOgJbjdxXIvn/izIUExswA2/R5JcX0OP2U77CMInv8J+bOHi8KGc32UdRZP/sp0EXOT1aMSREjbasGinu0oguO27tLuDAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nA+gOrv5; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-74625f748a0so71638217b3.2
        for <linux-man@vger.kernel.org>; Tue, 30 Sep 2025 12:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759261207; x=1759866007; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VxqbVdAscm2loqZ2efmRFej+m6M/o4SVwwWAyWSUQRE=;
        b=nA+gOrv5U+Ui59oJkD7XSGjf6XcyU2Yj97P0pKD+uSIqIYwj71g8paOdicI3kpqt7X
         Dw4xXJkDInTcmDKaNx7O6YjnRdpW7Li6uHE6wLgjPzOw09/8GhPC707xcZWiYMvA6DT3
         EjhRC69IgnKVDyAM20NyiBSZDPxnOK6X/Ybui+xx/9EXeM5BUBbSc7kvvfz27rLKvwhD
         X39s9P5O0pzIHywplMviB+bcrd3QNghQg1qj+mqff9lVpn5b/uJdxJHBp9V/pexAAMVv
         dEYfBBddR1+/7dnFWlPgOm0ILSOIRgmis30lZB/GmXYvhRE5KhXYDipSQil5RSTkJSoy
         JZhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759261207; x=1759866007;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VxqbVdAscm2loqZ2efmRFej+m6M/o4SVwwWAyWSUQRE=;
        b=QFExvaEybBuo8t+QbbAb2IP8rzR7tzZlBEzUrjgPJkisb2/Qmkvcaduq1i39FYkuKy
         Ndki3QBj+4b7pcZS+PbXiscWnQMBqOutSgamCVQkhBQoyWRq3v+DVq59HuTxntXbCT+p
         IlJBuKtTGZkloVqccWXs/vF8iixr7bubWo6GEgY51CbTFQqiZ9uXqmKGHQ8e57gNTOkm
         hg7ttxrTwQ8uo06kB3O9LU/NOO57xKM8LQiLehcOpxLkZjY9XxNg45xMXSdpzx6Jy0E9
         uWw5aqpx8gyAC7jTeFk9Mfiemv5Uk2SSdAaMdCX632B3VLC0dyuOzorUQAxGVgQLfkAr
         2Tgg==
X-Gm-Message-State: AOJu0YxhUVdEaisVwjHXeWuBpnmwxPTsMwXc73IiYwLyfLAPRTyP/7zF
	amnD1pwMf8zS1sG7A/DN4c9MSVVDNYR+8sQETAmpIlb+OxWDZTdZS6bYWxSKzQ==
X-Gm-Gg: ASbGncsuVGI6ujlM/+A7o8q9cebCMy5yesGNRmc4wuE2/a/zWb5WqRZvEaAGYmQs2dh
	Nw7HW7lVpD+izc12iJuAgGogZTBHAtUTBYiHsQRHiBlQhjwwWOt1O14uD7zubG08J4LYbNywdMy
	zxTdgAicV+MaBHb7AsYFgGBdier6a8xmyIXwsfMjY8GsPsb28oiHnCQmQNCQ/Rh3yiUcyoUH8QA
	8+GoaZYBgOi2whb5ZJzBYcWg+wt34psSqJeoFID2WmHb1H5JdIxdgUS0Cg1v7bmn0Xp+wu8CXfD
	yZlSbMBAp01WvbofDvfq1EJieZpOSzTee7hd8zT/iPFEA02xRxpb33n8LaX9cQdrBpgtQSTK5KQ
	CCElx1S5meGvQUlnyi7hzfv+DQC9yOjDPWzU/17dGn04tf0E=
X-Google-Smtp-Source: AGHT+IHwAoaNxb7s6YpV0VytGT404BbsiZoF0qVWXIfloNc/ue1M3wz4FxJ6K63IetMvOywWVvICOA==
X-Received: by 2002:a05:690c:6901:b0:744:2935:12e2 with SMTP id 00721157ae682-77f6f2e1f55mr13590707b3.42.1759261206563;
        Tue, 30 Sep 2025 12:40:06 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-770fce3f86esm29493337b3.7.2025.09.30.12.40.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 12:40:05 -0700 (PDT)
Date: Tue, 30 Sep 2025 14:40:04 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>
Subject: Re: '^\}$' is changed to a space character
Message-ID: <20250930194004.btcbo4xspyo3j3ua@illithid>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jq2rfhzgmjwygdgt"
Content-Disposition: inline
In-Reply-To: <aNwetmt-I0cT-u93@kassi.invalid.is>


--jq2rfhzgmjwygdgt
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: '^\}$' is changed to a space character
MIME-Version: 1.0

At 2025-09-30T18:17:26+0000, Bjarni Ingi Gislason wrote:
>   This is shown with (my version of test-groff)

It's not just your version of "test-groff", a shell script built but not
installed by the groff build process, but your version/fork of groff as
a project.

In particular,

> test-groff -man -t -ww -b -z man7/vdso.7
>=20
> troff: backtrace: file 'man7/vdso.7':146
> troff:man7/vdso.7:146: warning: trailing space in the line

=2E..the foregoing is not a diagnostic message that GNU groff emits.

It's an unhelpful message in at least two respects.

* It doesn't identify a problem.  This sort of noun phrase is not a
  useful diagnostic.
* Because input lines and output lines are distinguishable in any
  program that fills, joins, breaks, or "folds" text, this diagnostic is
  furthermore unclear.

Moreover, trailing spaces on input lines are not _invalid_ in any *roff,
excepting possibly yours, which is private to you.

[...]
>   Visible change is two empty lines after a table instead of a single
>   line.

If that's the problem, then that is the defect you should report, not a
wall of (arguably spurious) warning diagnostics.

>   A full stop should be used in front of '\}' to make the line a
>   control line.

This counsel has nothing to do with the diagnostic you quoted
(repeatedly).

Here's the source:

$ sed -n '143,147p' man7/vdso.7
The exact name should not matter to any code, so do not hardcode it.
=2Eif t \{\
=2Eft CW
\}
=2ETS

There are other valid (and economical) ways to employ the `\}` escape
sequence.  I've pointed this out to you before, recently.

https://lists.gnu.org/archive/html/bug-groff/2025-08/msg00177.html

So this is one possible fix:

 The exact name should not matter to any code, so do not hardcode it.
 .if t \{\
 .ft CW
-\}
+.\}
 .TS

=2E..but so is this:

 The exact name should not matter to any code, so do not hardcode it.
 .if t \{\
-.ft CW
+.ft CW\}
 .TS

=2E..and this:

 The exact name should not matter to any code, so do not hardcode it.
-.if t \{\
+.if t ft CW
-\}
 .TS

=2E..and this:

diff --git a/man/man7/vdso.7 b/man/man7/vdso.7
index 0dc8bf6f2..88a561222 100644
--- a/man/man7/vdso.7
+++ b/man/man7/vdso.7
@@ -141,11 +141,9 @@ .SS vDSO names
 .BR ldd (1)
 output.
 The exact name should not matter to any code, so do not hardcode it.
-.if t \{\
-.ft CW
-\}
+.EX
 .TS
-l l.
+L L.
 user ABI       vDSO name
 _
 aarch64        linux\-vdso.so.1
@@ -162,10 +160,7 @@ .SS vDSO names
 x86-64 linux\-vdso.so.1
 x86/x32        linux\-vdso.so.1
 .TE
-.if t \{\
-.in
-.ft P
-\}
+.EE
 .SS strace(1), seccomp(2), and the vDSO
 When tracing system calls with
 .BR strace (1),

=2E..but my recommendation is be the following.

diff --git a/man/man7/vdso.7 b/man/man7/vdso.7
index 0dc8bf6f2..750119996 100644
--- a/man/man7/vdso.7
+++ b/man/man7/vdso.7
@@ -141,11 +141,10 @@ .SS vDSO names
 .BR ldd (1)
 output.
 The exact name should not matter to any code, so do not hardcode it.
-.if t \{\
-.ft CW
-\}
+.P
 .TS
-l l.
+Lb Lb
+L  L .
 user ABI       vDSO name
 _
 aarch64        linux\-vdso.so.1
@@ -162,10 +161,6 @@ .SS vDSO names
 x86-64 linux\-vdso.so.1
 x86/x32        linux\-vdso.so.1
 .TE
-.if t \{\
-.in
-.ft P
-\}
 .SS strace(1), seccomp(2), and the vDSO
 When tracing system calls with
 .BR strace (1),

=2E..and so on similarly for the rest of the tables in the document.

I can't imagine why anyone wanted them all in a constant-width face.

>   This also the case in some other files.

That claim doesn't help anyone.  If trailing spaces in "the line" don't
cause rendering problems in "other files", then there is no urgency to
change them, and, arguably, not even a defect in the first place.

Regards,
Branden

--jq2rfhzgmjwygdgt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjcMgsACgkQ0Z6cfXEm
bc5/YA//aFdgJNLbNY7f4+LvyOpHOBoUOjZ82SM1vNB8dlnPBS4Xv8ZS1ieRoLce
u6D/4TQ4g4nQ69OCcAigPEZo2Hx/i1sZfw6Hl9NaqFVX0DwuLyNB1ikqzUBw1zxD
wzAULp/SiACLvFlS5dn/2LOSgnzB4UtbRKeB/83v5i5g9IZGId0+9PD/3lFi4wmE
BNwui1TX4meuANQGwCip6BE86eHaBGRH956uvFC70MrR+q0m8cwSsoiDGl0DYODc
eZ36n5cN7Noejpzf6S2IT3/7+N1wjBCaZlQfLAZdmAgn5Ja43gO1Gj8K2/lYkrH8
KGeVS/Y9ErwOmy0SFzpTuoqAo1IhB2PH89rBcS8DMJHIFqoeWzfmqPZeJpbR8VQm
hU6iFWFCNfbq0tXzPkdMhIGZakxNfACs64PVrEhblbCmqTqTCCFSUJZUQf9pyDfQ
gBarrinLuIt34Qv5bl4r0O/2/lcpu9XjrZd3NqUnEt2J3VGwDkJNK1AaYTYqF/+P
v07PNS0oz4/evqyY9GAp6/HzOyS6py/y8TASzXMmHhuG6ucG99q0WC5LHYfNwX0x
ijrbW8z1uqnUjEb2WzUz/YRlRvMo7x3FoJwdlf010xlj2zprTuLVAM3xazPmqkIv
f1cCQEHSOhJ0n5xZvf2QNyk9iY7JIwzGLoKQPonBY5zcr9wEi0Q=
=r1oL
-----END PGP SIGNATURE-----

--jq2rfhzgmjwygdgt--

