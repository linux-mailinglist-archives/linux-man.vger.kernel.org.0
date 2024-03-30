Return-Path: <linux-man+bounces-708-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 41407892810
	for <lists+linux-man@lfdr.de>; Sat, 30 Mar 2024 01:17:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 92426283CFC
	for <lists+linux-man@lfdr.de>; Sat, 30 Mar 2024 00:17:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DED7A197;
	Sat, 30 Mar 2024 00:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="22QvbRXG"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175C1181
	for <linux-man@vger.kernel.org>; Sat, 30 Mar 2024 00:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711757852; cv=none; b=dpJHzIg9MozsluqDCrpeJC9U3wufpFkLY0Tx9J3vZjNYBCksTugWknOsejwnG6u4jaBRRTNt1ZdxC4Vs8QNbkQwCzxNS6KHEncstFGZS5Yv0o6iTzT4EPzFXQaS74EL38nl7EXJcKI4BeM8nLU6Rf0/cICdXwnmVXpdfMirzcb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711757852; c=relaxed/simple;
	bh=bD2yhTTIm1/i3w3Y8Q6sQqZs6c6qOiMV2VKEBkU0IQA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YUmBRJHTGvXcMhrhZS1CVOxaVndFGr/kD5B5NoHUMiyJVd4M/mALTwlU1lezdlH1FEmt+9eGOgpSPomTUa3M5m3NiJHTkjQd7JJHL/94TPNm+EtHJGsRw62j5F4DwYvKcNnJKRAn5Fr7sedTtBD1ah2BhJmu8vnURLALmKG82GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=22QvbRXG; arc=none smtp.client-ip=209.85.167.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3c3e2e0e407so1725187b6e.0
        for <linux-man@vger.kernel.org>; Fri, 29 Mar 2024 17:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1711757850; x=1712362650; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eT7qV7cx/P7mxfSgz1R06f4mpr8zRaS+KqX+W4xBSt0=;
        b=22QvbRXGUYl1a6dvwre2t/jBDgQH6C4aQdRWUioIBbTJTWSZTbngm6nCX8AR0WY+fZ
         VknEQCf5e11irVSsQB2VoONykfVqcoYeLT7M9ZLSfQ3ln0zUcTd8ubGelypBib0oOHaz
         ozJ0sXFPdcvHwfuR8ENZtpRSnYrF3+gyYTL1XiTS2Z9fw6bi/cqsi5+iH0cSMXynB2ZK
         lQ6jZCqOsoLBovl5Vievq8WVS0Pot6viPv6vWH0ICcNxEErw4Lv1De0VD4Ar94IZ9yvz
         pTuWQl7JH4N5r0vquCtDYkrGZCMkk7oRsutDU0iLe00uv3sfJUa6uFTYeEjDa8afdUwG
         A8gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711757850; x=1712362650;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eT7qV7cx/P7mxfSgz1R06f4mpr8zRaS+KqX+W4xBSt0=;
        b=YS4zZZwrYuH+FKSFJo8wDRV086K3tjAcGTdESF/Jp+FTpOH/58OULSkLU9QjaLPQaI
         BLqzaVFx9Tg2RzLj0yAmf4agJa/kRG0iDh2wTHo95tDlECzPzUZHeO5q/pcH4Yea1+dE
         9g8StQ9cdDSgnJUcm/Embp3Uzqphfp/pK3IjBJMTKNx2oaLJz1AfR5AmXMtvweE33g/c
         3JXX+06NOZqFvqf7SCrDK3VJGA7PJyUBLM3kLbx9eX9KUWCJB0G8IjzAjFANrl67eWVT
         Qka785R8W8q+AjBirkMMu50YvNfheRXeqKiQ9xzhhGz0JO9gFpFw3yZXOq/F1FPG3bLq
         /qLg==
X-Gm-Message-State: AOJu0YxuOYy17tjnwKz4eKpM7FFZaCY0p19k93Sd1npTxYM/RZpjNBPO
	Ect9O9SfK+lJroJBNq7riZ3OT6R3qZ3O2bPOB43sB1GCbeJKTSfB2BxAhIsBt5S9qqI317abC0h
	AEs6zAGSzPgNCdB7I1zzN9rhfrLSHXavmDG+/
X-Google-Smtp-Source: AGHT+IEFHtM/p6tXg7yL3ghC+FjQjHwh3rvnVctxc4gD3f81SrvPUMYG4T8+AMZz5I43kCovb1kY2NEE/J3ADGF6coQ=
X-Received: by 2002:a05:6808:bd5:b0:3c3:ce25:ac5d with SMTP id
 o21-20020a0568080bd500b003c3ce25ac5dmr3865241oik.7.1711757849955; Fri, 29 Mar
 2024 17:17:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJgzZooCY7EV5LZSom08k0wVB2SW3KAk-HL9VMsioxivQB=MeQ@mail.gmail.com>
 <ZgNYTXW4qHm7fBxi@debian> <CAJgzZoqO_pdy_=+D0AHYhikXMDbTKKn94EttuUeE5EHjxct5vQ@mail.gmail.com>
 <ZgU0PKbECOOBaSZ7@debian>
In-Reply-To: <ZgU0PKbECOOBaSZ7@debian>
From: enh <enh@google.com>
Date: Fri, 29 Mar 2024 17:17:18 -0700
Message-ID: <CAJgzZopUR3=QbOyy=101GrBArTxBfP2GFzfJXR75gbu90Ew_aw@mail.gmail.com>
Subject: Re: getpagesize.2
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>, 
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Content-Type: multipart/mixed; boundary="0000000000009786b20614d5ae73"

--0000000000009786b20614d5ae73
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 28, 2024 at 2:11=E2=80=AFAM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Elliott,
>
> On Wed, Mar 27, 2024 at 05:20:18PM -0700, enh wrote:
> > > Do you intend to send patches?  Otherwise, let me know, and I'll prep=
are
> > > something.
> >
> > i can do, but it also sounds like enough of a bikeshed that i imagine
> > you'd only want to rewrite it again anyway :-)
>
> Actually, I tried to write something, and felt like you'll definitely do
> better; I didn't like my text.  Please send a patch.  (I can do the
> bikeshed when applying it, if you don't feel like entertaining it.)  :-}

heh, i didn't even write mine out and had the same worry. oh well,
i've attached something so at least we have something concrete to talk
about!

> > (i was actually surprised how many references to glibc 2.0 there are
> > in various man pages, and even more amused by references to "ancient
> > versions of glibc" being defined as "before glibc 2.0", as  if 1997
> > isn't ancient :-) )
>
> You can move anything like that to HISTORY sections in any page you see
> it.  In some cases, it might make sense to remove it, but only if it was
> a small bug.
>
> Have a lovely day!
> Alex
>
> --
> <https://www.alejandro-colomar.es/>
> Looking for a remote C programming job at the moment.

--0000000000009786b20614d5ae73
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-getpagesize.2-syscalls.2-modernization.patch"
Content-Disposition: attachment; 
	filename="0001-getpagesize.2-syscalls.2-modernization.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_ludcez860>
X-Attachment-Id: f_ludcez860

RnJvbSBlNGUyNGE2YTdlZjY2MDE2ZWRjZDczNWYzY2ViYzdmNjU4M2U3MTZhIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBFbGxpb3R0IEh1Z2hlcyA8ZW5oQGdvb2dsZS5jb20+CkRhdGU6
IEZyaSwgMjkgTWFyIDIwMjQgMTc6MTA6MjYgLTA3MDAKU3ViamVjdDogW1BBVENIXSBnZXRwYWdl
c2l6ZS4yL3N5c2NhbGxzLjI6IG1vZGVybml6YXRpb24uCgpSZW1vdmUgdGhlIEhQLVVYIHBvcnRh
YmlsaXR5IGFkdmljZSwgc2luY2UgZ2V0cGFnZXNpemUoKSBpcyBhIHNsaWdodGx5CmJldHRlciBv
cHRpb24gdGhhbiBzeXNjb25mKCkgZm9yIExpbnV4IHN5c3RlbXMuCgpFeHBsYWluIHdoeSB0aGlz
IGZ1bmN0aW9uIGV4aXN0cywgYW5kIHdoeSB0aGlzIG1hbiBwYWdlIGlzIGluIHRoZSB3cm9uZwpz
ZWN0aW9uLiAoVGhlIHByZXZpb3VzIHRleHQgdHJpZWQgdG8gZG8gYm90aCBhdCB0aGUgc2FtZSwg
d2hpY2ggd2FzCmNvbmZ1c2luZy4pIEFsc28gZXhwbGFpbiBob3cgdGhlIHZhc3QgbWFqb3JpdHkg
b2YgYXJjaGl0ZWN0dXJlcyB0aGF0CmRvbid0IGhhdmUgYSBzeXNjYWxsIChidXQgZG8gc3VwcG9y
dCBtdWx0aXBsZSBwYWdlIHNpemVzKSBhY3R1YWxseSB3b3JrLgoKQWxzbyBkZS1lbXBoYXNpemUg
dGhlIGdsaWJjIDIuMCBidWcsIHNpbmNlIG1vc3QgcGVvcGxlIGRvbid0IG5lZWQgdG8Kd29ycnkg
YWJvdXQgY29tcGF0aWJpbGl0eSB3aXRoIHZlcnNpb25zIG9mIGdsaWJjIGZyb20gMTk5Ny4KCkZp
bmFsbHksIGNoYW5nZSAibm90IG9uIHg4NiIgaW4gc3lzY2FsbHMuMiB0byBzYXkgd2hlcmUgdGhl
cmUgX2lzXyBhCnN5c2NhbGwuCi0tLQogbWFuMi9nZXRwYWdlc2l6ZS4yIHwgNDcgKysrKysrKysr
Ky0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogbWFuMi9zeXNjYWxscy4yICAg
IHwgIDQgKysrLQogMiBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAzOCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9tYW4yL2dldHBhZ2VzaXplLjIgYi9tYW4yL2dldHBhZ2VzaXpl
LjIKaW5kZXggYjgyNTg2ZjM2Li41ZDAwMDZmMDQgMTAwNjQ0Ci0tLSBhL21hbjIvZ2V0cGFnZXNp
emUuMgorKysgYi9tYW4yL2dldHBhZ2VzaXplLjIKQEAgLTQ0LDQ2ICs0NCwxOSBAQCBUaGlzIGNh
bGwgZmlyc3QgYXBwZWFyZWQgaW4gNC4yQlNELgogU1ZyNCwgNC40QlNELCBTVVN2Mi4KIEluIFNV
U3YyIHRoZQogLkJSIGdldHBhZ2VzaXplICgpCi1jYWxsIGlzIGxhYmVsZWQgTEVHQUNZLCBhbmQg
aW4gUE9TSVguMS0yMDAxCi1pdCBoYXMgYmVlbiBkcm9wcGVkOwotSFAtVVggZG9lcyBub3QgaGF2
ZSB0aGlzIGNhbGwuCitjYWxsIHdhcyBsYWJlbGVkIExFR0FDWSwgYW5kIGl0IHdhcyByZW1vdmVk
IGluIFBPU0lYLjEtMjAwMS4KIC5TSCBOT1RFUwotUG9ydGFibGUgYXBwbGljYXRpb25zIHNob3Vs
ZCBlbXBsb3kKLS5JIHN5c2NvbmYoX1NDX1BBR0VTSVpFKQotaW5zdGVhZCBvZgotLkJSIGdldHBh
Z2VzaXplICgpOgotLlAKLS5pbiArNG4KLS5FWAotI2luY2x1ZGUgPHVuaXN0ZC5oPgotbG9uZyBz
eiA9IHN5c2NvbmYoX1NDX1BBR0VTSVpFKTsKLS5FRQotLmluCi0uUAotKE1vc3Qgc3lzdGVtcyBh
bGxvdyB0aGUgc3lub255bQotLkIgX1NDX1BBR0VfU0laRQotZm9yCi0uQlIgX1NDX1BBR0VTSVpF
IC4pCi0uUAotV2hldGhlcgotLkJSIGdldHBhZ2VzaXplICgpCi1pcyBwcmVzZW50IGFzIGEgTGlu
dXggc3lzdGVtIGNhbGwgZGVwZW5kcyBvbiB0aGUgYXJjaGl0ZWN0dXJlLgotSWYgaXQgaXMsIGl0
IHJldHVybnMgdGhlIGtlcm5lbCBzeW1ib2wKLS5CUiBQQUdFX1NJWkUgLAotd2hvc2UgdmFsdWUg
ZGVwZW5kcyBvbiB0aGUgYXJjaGl0ZWN0dXJlIGFuZCBtYWNoaW5lIG1vZGVsLgotR2VuZXJhbGx5
LCBvbmUgdXNlcyBiaW5hcmllcyB0aGF0IGFyZSBkZXBlbmRlbnQgb24gdGhlIGFyY2hpdGVjdHVy
ZSBidXQgbm90Ci1vbiB0aGUgbWFjaGluZSBtb2RlbCwgaW4gb3JkZXIgdG8gaGF2ZSBhIHNpbmds
ZSBiaW5hcnkKLWRpc3RyaWJ1dGlvbiBwZXIgYXJjaGl0ZWN0dXJlLgotVGhpcyBtZWFucyB0aGF0
IGEgdXNlciBwcm9ncmFtCi1zaG91bGQgbm90IGZpbmQKK0EgdXNlciBwcm9ncmFtIHNob3VsZCBu
b3QgaGFyZC1jb2RlIGEgcGFnZSBzaXplLAorbmVpdGhlciBhcyBhIGxpdGVyYWwgbm9yIHVzaW5n
IHRoZQogLkIgUEFHRV9TSVpFCi1hdCBjb21waWxlIHRpbWUgZnJvbSBhIGhlYWRlciBmaWxlLAot
YnV0IHVzZSBhbiBhY3R1YWwgc3lzdGVtIGNhbGwsIGF0IGxlYXN0IGZvciB0aG9zZSBhcmNoaXRl
Y3R1cmVzCi0obGlrZSBzdW40KSB3aGVyZSB0aGlzIGRlcGVuZGVuY3kgZXhpc3RzLgotSGVyZSBn
bGliYyAyLjAgZmFpbHMgYmVjYXVzZSBpdHMKK21hY3JvLCBiZWNhdXNlIHNvbWUgYXJjaGl0ZWN0
dXJlcyBzdXBwb3J0IG11bHRpcGxlIHBhZ2Ugc2l6ZXMuCisuUAorVGhpcyBtYW51YWwgcGFnZSBp
cyBpbiBzZWN0aW9uIDIgYmVjYXVzZSBBbHBoYSwgU1BBUkMsIGFuZCBTUEFSQzY0CithbGwgaGF2
ZSBhIExpbnV4IHN5c3RlbSBjYWxsCiAuQlIgZ2V0cGFnZXNpemUgKCkKLXJldHVybnMgYSBzdGF0
aWNhbGx5IGRlcml2ZWQgdmFsdWUsIGFuZCBkb2VzIG5vdCB1c2UgYSBzeXN0ZW0gY2FsbC4KLVRo
aW5ncyBhcmUgT0sgaW4gZ2xpYmMgMi4xLgordGhvdWdoIG90aGVyIGFyY2hpdGVjdHVyZXMgZG8g
bm90LCBhbmQgdXNlIHRoZSBFTEYgYXV4aWxpYXJ5IHZlY3RvcgoraW5zdGVhZC4gZ2xpYmMgMi4w
IHJldHVybmVkIGEgY29uc3RhbnQgZXZlbiBvbiBhcmNoaXRlY3R1cmVzIHdpdGggbXV0bGlwbGUK
K3BhZ2Ugc2l6ZXMuCiAuU0ggU0VFIEFMU08KIC5CUiBtbWFwICgyKSwKIC5CUiBzeXNjb25mICgz
KQpkaWZmIC0tZ2l0IGEvbWFuMi9zeXNjYWxscy4yIGIvbWFuMi9zeXNjYWxscy4yCmluZGV4IDZj
MjMxMzUwNi4uNjlmMjRlZjI5IDEwMDY0NAotLS0gYS9tYW4yL3N5c2NhbGxzLjIKKysrIGIvbWFu
Mi9zeXNjYWxscy4yCkBAIC0zMjQsNyArMzI0LDkgQEAgVH0KIFxmQmdldHBlZXJuYW1lXGZQKDIp
CTIuMAlUewogU2VlIG5vdGVzIG9uIFxmQnNvY2tldGNhbGxcZlAoMikKIFR9Ci1cZkJnZXRwYWdl
c2l6ZVxmUCgyKQkyLjAJTm90IG9uIHg4NgorXGZCZ2V0cGFnZXNpemVcZlAoMikJMi4wCVR7CitB
bHBoYSwgU1BBUkMvU1BBUkM2NCBvbmx5CitUfQogXGZCZ2V0cGdpZFxmUCgyKQkxLjAKIFxmQmdl
dHBncnBcZlAoMikJMS4wCiBcZkJnZXRwaWRcZlAoMikJMS4wCi0tIAoyLjQ0LjAuNDc4LmdkOTI2
Mzk5ZWY5LWdvb2cKCg==
--0000000000009786b20614d5ae73--

