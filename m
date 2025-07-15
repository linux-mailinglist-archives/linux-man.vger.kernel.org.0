Return-Path: <linux-man+bounces-3270-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D614B06841
	for <lists+linux-man@lfdr.de>; Tue, 15 Jul 2025 23:05:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A406118917BD
	for <lists+linux-man@lfdr.de>; Tue, 15 Jul 2025 21:05:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 954EC274B5A;
	Tue, 15 Jul 2025 21:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="4NZNqEWM"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7FA82741A3
	for <linux-man@vger.kernel.org>; Tue, 15 Jul 2025 21:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752613498; cv=none; b=DwuLA0JqzC0nCx61aXLn2nsJPyhlVwscn3PJwvtz/uuFomc/HPm/erRFpZ5C3HNa2MqOrk/qpmfGWdqXmv0aSNmrEUMdILhkfSr+kUI2WHXyixqofxqHObrbwA1RgPnSZvWPrsIaVjiIifOL9hEcUiBrM6vFMgnJAKvvfvBiHyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752613498; c=relaxed/simple;
	bh=EgDA8yeZeshwwc9vXtZhaMIbgx8h7O3HS4aVw31ujwA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YsxcGgTL5dhcgf//T4NhDcBlmU/kJVxQlmklphV8qKH9wPFv6snB5J9cK3axuI3dhpejza5hSCA6pjoBzSlVwdsoqgqX/IslcA0qmFfNaayezjeMltjAfooPje0t6iTWmY4SQOrQ6GdIJ7C+SDIk/wvHP2pVG6F5myt7hF4m1LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=4NZNqEWM; arc=none smtp.client-ip=209.85.161.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-6159466e80aso606854eaf.1
        for <linux-man@vger.kernel.org>; Tue, 15 Jul 2025 14:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1752613496; x=1753218296; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jf+c0al7tduX2smP6zeajKnx8Kd9NoJcCrys1VvPe2c=;
        b=4NZNqEWM4kOHmThHS+hqrcbEZNYaQuGMsc4j+sAjRZfhOsvoxvnenwdkKZAL9RnRDB
         f+F0KsbV/dVn0SIPwNE44qzJwPNJmnexFWO09Rz2Vt+DNDiTJYJAirU9VHljULxbCKKk
         b7fiu9HMfsg5+TaPHMp9PXGQ+5c/hnbFRV7/ftnZt3thivhtaCeTt179eU+tQjE/nUZ6
         Ff/Iv1UYZLAgLSG3RnbdkuvuhDhcpYpowaH17R23apkxciD9e0m5qxz5wEniSYFtOkE8
         zQnfxZGp8AZ5XngR4wiVZ+lLORYMyFcbKQ0p/X62dAng0u8VWFJHBfinlYBO3oeAqWhP
         Nyww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752613496; x=1753218296;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jf+c0al7tduX2smP6zeajKnx8Kd9NoJcCrys1VvPe2c=;
        b=aaBsBnL7+7OXfULGBVLQxr/aXE8U9cPhfjRQkdpR4SguhFIINKOnHGBL/djIlzGbmg
         u4AoFOFZyFsWKicvgZ/dE1JZvPoIZEMg+iRTKNIxyG+XdlZqHK4Ppxrcl0liyxwA+lnu
         EBa9kFcavnW0oXNu9MbFoHFd8g9b/wVpjW3kh5OaZ2gIDfPg/1nTQtPxZ/fz0egYvlEH
         /zja/tt1FBSZdhEr9V3SLOPw30a3c//slX8x3BkrU7g2ty/lei/wjIBtDFedas9Xo3xF
         nee1LhprUqUqRMiYsWkmIkZMM6Pn3uFrDwLw4iGWcPo71EcU/2gS1wJ9yRDhFihj7/gW
         iTqg==
X-Forwarded-Encrypted: i=1; AJvYcCXMfzO2PBBsXKpQBICCv66eVmxSGN+N1aiX6cGsOk1pm3dUU7XchDwC23yYBc9yTcsSCBVwzJNwQsQ=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9eMXDDonvsCl/NC6TTK0XvFqKspAv0HVXVWiMnPSAMhpqXDJ5
	py9KiI21JWmu9ByBgznsPjvzZkdVTqoDLrU+UwZ/oPL1z3mmDVzfYTVF7TEj7dnZFLmBvM4C4it
	XN9J/MisxZxurBvdMkhhvVTxkgOOT4YTgi+LKHKjulAHbf0DSkXgW3Wag
X-Gm-Gg: ASbGncvvG9CvvOahF/d2kwqeubhsI4ZHt3jMCidd6cBRWzqpoumOL6GdgVTaOUMhHO4
	iFIpkl+velw4jMIUEAnNDU6fFIy0bmMQfomIbHsO+BQh/mzbeNWOS4/xKWXGl4T1Y88NGoOLQPe
	Qny8YNpUgSWyc0LlWQ9zwazeQrpSMUqVR84aGEbI7Ch0qQ6e43kTMKTvfMncoM5TVbBHtHJ9lcB
	vOQ
X-Google-Smtp-Source: AGHT+IHF638dA2BJIhfRjFaXZzQ95royloU27Yg5C1cNoxiJFOYAQ15P6o8WIQomjPEtoKSFdZxS1ne/eYD4rSkRxg8=
X-Received: by 2002:a05:6870:9585:b0:2ea:7d72:23f7 with SMTP id
 586e51a60fabf-2ffb22614aemr280308fac.16.1752613495642; Tue, 15 Jul 2025
 14:04:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJgzZopjpJJY8F7khF6SN=-UuYPiR70vqOE4voaQz79U_HqhAQ@mail.gmail.com>
 <uxmsabvotuwrcv5xmobyzakdfxibmkvet5f55idux2peyeto3k@zz7wo32lk4cr> <forno7r2gzmghoj5tr2ze2eehjfni6xcxatvqeuvuxoppypnqw@mmcrxxnlb6kw>
In-Reply-To: <forno7r2gzmghoj5tr2ze2eehjfni6xcxatvqeuvuxoppypnqw@mmcrxxnlb6kw>
From: enh <enh@google.com>
Date: Tue, 15 Jul 2025 17:04:44 -0400
X-Gm-Features: Ac12FXx1ngHOMUfnmqB0xZupD-OgCFB4t7NIlK77BGVpdfOOz_SnFJ_9eus6tuc
Message-ID: <CAJgzZoq_352z=YNOOCe+G3fq2xAuZQU=r16p22XC4euhaidKDg@mail.gmail.com>
Subject: Re: [PATCH] printf.3: mention Android's %m support.
To: Alejandro Colomar <alx@kernel.org>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, linux-man <linux-man@vger.kernel.org>
Content-Type: multipart/mixed; boundary="000000000000d7345f0639fe2041"

--000000000000d7345f0639fe2041
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

(moved the API 29 note to the man page and reworded the commit message
text about the BSDs.)

On Tue, Jul 15, 2025 at 4:50=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> On Tue, Jul 15, 2025 at 09:48:50PM +0200, Alejandro Colomar wrote:
> > Hi Elliott,
> >
> > On Tue, Jul 15, 2025 at 02:50:06PM -0400, enh wrote:
> > > Unclear to me whether it would be useful to explicitly mention that i=
t's
> > > _not_ available on iOS/macOS and the BSDs, since that's the caveat I
> > > usually give when recommending %m to people.
> >
> > We can omit that for now, but please not it in the commit message.
>
> s/not/note/
>
> >
> > >
> > > Technically this is available on Android from API level 29, if we wan=
ted
> > > to be more specific.
> >
> > Yep, that might be useful.
> >
> > Thanks!
> >
> >
> > Have a lovely day!
> > Alex
> >
> > > ---
> > >  man/man3/printf.3 | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> >
> >
> > --
> > <https://www.alejandro-colomar.es/>
>
>
>
> --
> <https://www.alejandro-colomar.es/>

--000000000000d7345f0639fe2041
Content-Type: application/octet-stream; 
	name="0001-printf.3-mention-Android-s-m-support.patch"
Content-Disposition: attachment; 
	filename="0001-printf.3-mention-Android-s-m-support.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_md50sul20>
X-Attachment-Id: f_md50sul20

RnJvbSA3NTcyZDQ4ODczMjQ4MTJiNTViYmUxNzI5YzdiMjc3ZGM0NTYxMGU3IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBFbGxpb3R0IEh1Z2hlcyA8ZW5oQGdvb2dsZS5jb20+CkRhdGU6
IFR1ZSwgMTUgSnVsIDIwMjUgMTg6NDI6NTYgKzAwMDAKU3ViamVjdDogW1BBVENIXSBwcmludGYu
MzogbWVudGlvbiBBbmRyb2lkJ3MgJW0gc3VwcG9ydC4KCkluIGZ1dHVyZSB3ZSBtaWdodCB3YW50
IHRvIG5vdGUgdGhhdCBpdCdzIF9ub3RfIGF2YWlsYWJsZSBvbiBpT1MvbWFjT1MKYW5kIHRoZSBC
U0RzLCBzaW5jZSB0aGF0J3MgdGhlIGNhdmVhdCBJIHVzdWFsbHkgZ2l2ZSB3aGVuIHJlY29tbWVu
ZGluZwp0aGUgdXNlIG9mICVtLgotLS0KIG1hbi9tYW4zL3ByaW50Zi4zIHwgMiArLQogMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvbWFu
L21hbjMvcHJpbnRmLjMgYi9tYW4vbWFuMy9wcmludGYuMwppbmRleCAyMmZlMDY1NzYuLjhjNDU1
NDJiMiAxMDA2NDQKLS0tIGEvbWFuL21hbjMvcHJpbnRmLjMKKysrIGIvbWFuL21hbjMvcHJpbnRm
LjMKQEAgLTg3MSw3ICs4NzEsNyBAQCAuU1MgQ29udmVyc2lvbiBzcGVjaWZpZXJzCiBhbnkgZmxh
Z3MsIGEgZmllbGQgd2lkdGgsIG9yIGEgcHJlY2lzaW9uLgogLlRQCiAuQiBtCi0oZ2xpYmMgZXh0
ZW5zaW9uOyBzdXBwb3J0ZWQgYnkgdUNsaWJjIGFuZCBtdXNsLikKKyhnbGliYyBleHRlbnNpb247
IHN1cHBvcnRlZCBieSB1Q2xpYmMgYW5kIG11c2wsIGFuZCBvbiBBbmRyb2lkLikKIFByaW50IG91
dHB1dCBvZgogLkkgc3RyZXJyb3IoZXJybm8pCiAob3IKLS0gCjIuNTAuMC43MjcuZ2JmN2RjMThm
ZjQtZ29vZwoK
--000000000000d7345f0639fe2041--

