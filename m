Return-Path: <linux-man+bounces-4091-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FCBBCAFEF
	for <lists+linux-man@lfdr.de>; Thu, 09 Oct 2025 23:58:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DEF7A4222CB
	for <lists+linux-man@lfdr.de>; Thu,  9 Oct 2025 21:58:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28DB6283FF4;
	Thu,  9 Oct 2025 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NrZjOexx"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55267283C9F
	for <linux-man@vger.kernel.org>; Thu,  9 Oct 2025 21:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760047095; cv=none; b=sktm80M625/TI2H98g+ZlXa2Kx7EEDxcg/qAUq66qkubjuntIYHXRltUoxxouoajpArJOJ1Q7upqQ9TLtt0mhs8NZAlEng8pRUtN8Q32L2GK8Hb5ZWa/rnXBLz/hbOoXAip8bkj/hbu4kkqMiq18QoNVzHTg0o2VSANy4N+4kFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760047095; c=relaxed/simple;
	bh=fqRXU9ZTc1j6FONUgE5QURiWJoApTBvyJ7Hx6gM3Jso=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IZQnNM83+coJZZ4v2iT54wxtkct+80lczsUaKo6LLVhjz4Ulk/Ejf3FgJGQ3H2xFT6oivvHnQ4nCNPdJoMCNz1rNYfMWPnft0RKpe8sri4hGJexsduhMnbq2H4hwmjLFpFX6ZOyUk/FnA9hXosh8nKTxtLXAw7y+oJ/cbNeOvX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NrZjOexx; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-35acca93e00so925329fac.2
        for <linux-man@vger.kernel.org>; Thu, 09 Oct 2025 14:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760047093; x=1760651893; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bab7KuKXARUBmqiwaUFqZ9vVLx5R8UwpTd62ANXBaoA=;
        b=NrZjOexxBZp3ZZ7pyzhQ8G33vwiRxcOUqSy2QoJO1zaACuGd8z+NIqv4emRrfhoT3o
         G1vbVVmISqcM3FLxT9GSLulJ9GDuSlGs4Y1C4Rc92aXzYNHveyBSYUZQqEqtGqfXSe6m
         LK16Nz5f42LYNUgr4TFD2RA7wPxtZHEzYwoKa3w4/SgaufLm7rr5sHWXmXxLCBK3IbE6
         lr6LmaaJ0PSgAKDKsY+44Z7R7SH1RSuzXG/WRGr+8e9na2doDe4g/wLAYPb3oIdzxndK
         KZO/JOQgO96pbH3aJnoCQYE5bISENAuT5vrMGEAgG+6MGRQyx4YO+P42WI96NJDovquC
         FD/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760047093; x=1760651893;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bab7KuKXARUBmqiwaUFqZ9vVLx5R8UwpTd62ANXBaoA=;
        b=NSzoqRnvVvNjhGS3mXNDSssDyVo1zWuys3oBuvOmVvANVgxWxhwppnQBONKHv0Czrz
         s9FsNeI9lO3mRe7yMq9JdPVRGqfwfw9m6H8qxtgYsrh2nMMSktkXuCenTb8jhQqhH6eD
         O+k4sAkUi5jpDkon9Cs6zwiiftyqR2wixFg4CEbpybY8ragzQHzJdkAzkIcHYqSUEnYJ
         fnNxuPVTFj4HOXrn/k6Ke5lJw6hR3xrqTjJWoc9lQ/3HBpuNVLdytP4KDazMIczcmIn4
         C18zE2+YSZw0bYcmZoL37ok36i0XW5Kr/ftEFtwf7RXyHrg6BCKv0RuZVJRZYMlNKXx5
         vzUw==
X-Gm-Message-State: AOJu0Yw2nxz5mbK1RMjn/bNQQolUnLva3oIgrwmnK5Jyil22FzYZ4o5g
	qnak6QEHE0G8Q70AdXoxOOUyloakvU1OMiAHISdu4KcZfnCOPzuXJIcLELKKJw==
X-Gm-Gg: ASbGncuzYAUc4R/0ejcIkjncB5HIY7PRixwVisF3SVCSNF4UB+VdlC4BL8GuqZkHkvI
	lap+pE6d+hjTNQtoXU5Alz3w1curqM71NsJcuKhRy4ZyR59BwxPP7u4n2mUGVLRv4qciLKUJnCF
	ePHn1lpc7nUCd6zkc6RM0hyqyls/OeMC38LWN12r/emYeyki0HHVr2BPxlf/DDXI0bZ6hxwrS16
	Sg+mEGfGsj7oL02wzSEm3WQaH69Edun82Uec5xXbEMP8eDu/SNrnT9L/PHjq+6s/8PQazjcjyKb
	6Lh4+71bCCnLFzDjcmG8tCm01O0tWnmqg3+emN70IlxYqP6Z4CH+l1p5HK48JNlO9I0tEVQzb5D
	Vm1+EmDi/A0TUEUWFFezawBq//gKb5JZ5MqaMXv/d9Vh6zM8=
X-Google-Smtp-Source: AGHT+IEYWHe3gnIAz5hn2MskI336al31OEnzwy4m9my5olhfUbwxqEz69tCwxJICzDPw610ucEXdQw==
X-Received: by 2002:a05:6870:701f:b0:330:758c:4cb1 with SMTP id 586e51a60fabf-3c0f93a36cfmr4337193fac.23.1760047093282;
        Thu, 09 Oct 2025 14:58:13 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3c8c8e81981sm273492fac.16.2025.10.09.14.58.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 14:58:12 -0700 (PDT)
Date: Thu, 9 Oct 2025 16:58:11 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 7/8] man/man4/console_codes.4: ffix
Message-ID: <20251009215811.3a6ughmxcskgae3s@illithid>
References: <20251009215344.tcknw7iexu3kbhnm@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5duxpnjafyippkxf"
Content-Disposition: inline
In-Reply-To: <20251009215344.tcknw7iexu3kbhnm@illithid>


--5duxpnjafyippkxf
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 7/8] man/man4/console_codes.4: ffix
MIME-Version: 1.0

Stop meddling with adjustment.

A lengthy comment in groff's man(7) package explains why attempts to
meddle with text alignment and adjustment with the `ad` and `na`
requests--outside of tbl(1) text blocks--exhibits contempt for reader
preferences and often comes to grief anyway.

=2E\" Resetting the adjustment mode is a complicated dance.
=2E\"   1.  Man pages sometimes disable adjustment--when they do, they
=2E\"       often forget to put it back the way it was.
=2E\"   2.  When they do remember to put it back, they often fail to do
=2E\"       so correctly because of the `ad` request's quirky semantics
=2E\"       starting from Seventh Edition Unix troff/nroff.  Briefly, the
=2E\"       `ad` request without arguments turns adjustment back on after
=2E\"       an `na` even if the previous adjustment mode was `l` (align to
=2E\"       the left with NO adjustment).
=2E\"   3.  The default adjustment mode historically has not been
=2E\"       predictable; it can depend on nroff vs. troff mode and on the
=2E\"       vendor of the *roff system in use.
=2E\"   4.  It's possible (and portable) to obtain the previous adjustment
=2E\"       mode via the `.j` register so that it can be saved prior to
=2E\"       meddling and restored later, but in practice man page authors
=2E\"       neglect to do so.
=2E\"   5.  groff man(7)'s `AD` string isn't supported everywhere.
=2E\"   6.  We want user preferences, if expressed, to override the page
=2E\"       author's.
=2E\"   7.  Even if we didn't want (6), one page author's can override
=2E\"       another's when formatting multiple man(7) documents in
=2E\"       sequence[.]

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man4/console_codes.4 | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
index 2fd963128..04723c01e 100644
--- a/man/man4/console_codes.4
+++ b/man/man4/console_codes.4
@@ -124,7 +124,6 @@ .SS Linux console controls
 is equivalent to ESC [.
 .P
 .B "ESC- but not CSI-sequences"
-.ad l
 .P
 .TS
 l l lx.
@@ -201,7 +200,6 @@ .SS Linux console controls
 the red/green/blue values (0\[en]255).
 T}
 .TE
-.ad
 .P
 .B "ECMA-48 CSI sequences"
 .P
@@ -216,7 +214,6 @@ .SS Linux console controls
 (The idea is to ignore an echoed function key.)
 .P
 The action of a CSI sequence is determined by its final character.
-.ad l
 .P
 .TS
 l l lx.
@@ -322,7 +319,6 @@ .SS Linux console controls
 Move cursor to indicated column in current row.
 T}
 .TE
-.ad
 .P
 .B ECMA-48 Select Graphic Rendition
 .P
@@ -334,7 +330,6 @@ .SS Linux console controls
 semicolons.
 An empty parameter (between semicolons or string initiator or
 terminator) is interpreted as a zero.
-.ad l
 .P
 .TS
 l lx.
@@ -417,7 +412,6 @@ .SS Linux console controls
 set background, same as 40..47 (bright not supported)
 T}
 .TE
-.ad
 .P
 Commands 38 and 48 require further arguments:
 .P
--=20
2.30.2


--5duxpnjafyippkxf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjoL/IACgkQ0Z6cfXEm
bc6BPxAAnfnrnAIpKPw5YBiiG6Uwarf1t1lhBYmCsFV6CKNt4yND/62qmRYj1mux
d7elrEKhl+SjofOeEHqUPBxg47wA8Cp/3UbAa1lpIKK0S/8xs3XEohEGOnYzhNWH
JSHgvbkvMIs21IGDoIfoPYpLhsnxPbM312tBS0XDi6TkFBVjS5NxIeKlhTFQk+wh
TS7LuUOtpuDzpMO99xhj7kDSs6Kq926hM9FveqPOtW1/nGjIwbmB3CdC+CjWuxfc
TjvB4Hs/oZ5EHdaGuCpHNU1ffv7KAY1yWODuA1tjT5y9yXuIY4WlDlOcTJGPtVyN
oezNJA+yopFqZxM297BPqAdkLe+Zy7tRs/X1FxtDMC9Urr5A7ANYIyEaJiTvMFUx
RVSIX8AW33K0yxrp7lG92lYWFYGZz9ahlIiolrX2WB6i5Ic9qScQ1y0NtV4z3nvn
llSNFxT9DIkF8z3puCuX8p8OKaR8FoqEBI0ezhHRNAKyHyhoGS16gM3PoKr6HN6K
U2plLwmcRSw8X1zokYHH4RMG+/wd2SDRk64bqiD7eHgaps4looDW2DpY2xn/11wZ
kd6I2IFtO+3eHHlOwN3jFXBzkyF3WQSan9lXBn14MEFe4ptEHB0YHq/+9t1qQbtN
+hOVYT1UNoiAAaoQNMsQyhMc7mak9omhsooiuPaqFrR9u8YqxKc=
=Q12+
-----END PGP SIGNATURE-----

--5duxpnjafyippkxf--

