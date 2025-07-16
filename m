Return-Path: <linux-man+bounces-3272-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13044B0776B
	for <lists+linux-man@lfdr.de>; Wed, 16 Jul 2025 15:55:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB129503D00
	for <lists+linux-man@lfdr.de>; Wed, 16 Jul 2025 13:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E0531C8621;
	Wed, 16 Jul 2025 13:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="rneFnwhU"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EC8314A09C
	for <linux-man@vger.kernel.org>; Wed, 16 Jul 2025 13:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752674146; cv=none; b=qU0Ld+R5WkB/ag0Wy8k6tNiNBzhL1/kZUCRUjnjnMJsDMnnHrgecTTMrLFmBi8M3DdHT+QaD/X4NdKJ19Ytc3zgGxx3eGAeL3wL0rTr85unRpMNpfFKH60i4U0lpsXw0stZh852QOMVB48ZD9Ls4xrtH7KoE+J44MOlxXdUoKRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752674146; c=relaxed/simple;
	bh=aWIEZt2D0VOVEQnSuNGOAwmHz1bUE/jTMUX3BLarxTk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=neKh3s2GZiIPyb7FrwyMBOIA8M2/HF836/EgAByZksXZJEMnACA57upew8yiTZRV/MwYhhOF9CzeiJztlh3/Iu0xzI5tB4HLtcv0Kzp8wFYkTr/J5pwxEh0bDMO7+S/hVRKUxKqyjWCPyqyeV1ki7CR/LW3FYT2m9YG4A5RKT1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=rneFnwhU; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-2eacb421554so2511856fac.1
        for <linux-man@vger.kernel.org>; Wed, 16 Jul 2025 06:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1752674143; x=1753278943; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mmnP1Ssej2yubXvelAcsto/lH6WhEhKjiPhtfUGRH8k=;
        b=rneFnwhUCsP9qP+gfF/VxJq6yj1sZZxofLRl/Hl1ErxShurY10pI7M7qBuUeiorLqv
         gLXtd3+6MxpU+l2rnHnb0REMK7hIJ9Ojok6cThYUshQnfcT2U+RXNmEfUafU2q9i0TMg
         X1IogYEPTGfjYHfUmaXkDMdDo2C/LtHTB2it/dsEI4+B0VHMfU55A0DF9+QAOW9hRa/D
         FdnlfT9ZQfNUGYxd6V6P8lKiB28jTrnxxZF+sS94zyMx1qcTMVpMZv87lCE6CfoVg7P4
         QumPWQ2bMEzia9+V2i3yThkFYU9l/qNMoU3yXOaGo+/Z1JT0+aGVkeCLdbqzJUXbks4P
         xnTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752674143; x=1753278943;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mmnP1Ssej2yubXvelAcsto/lH6WhEhKjiPhtfUGRH8k=;
        b=IEGo9GljopRM1q1LSLqJm1ed+2vB5Fc5kVOhOPLdXU1LmblADxhDZO8UsSLNGG2wZE
         zblj0lhVaMu9B2IfzCe2kFtVYTwg3ZVQGiSbLcuntDv6fO2Y/TYgtegSmi+wukUVzcir
         Odu4FnpDnqhU6uWfBOTI+9bBJjFbUXl8qv503b4brZVs86A86PlvuySDrZ7V5XPVLrMY
         INLkreUulPA8hz//l5kFmyfysSX/a/kpTr70k59FYm3iqMMXQhgB8/BM2FPMxAlOdbKq
         VHjQw+l82Fzp7PLwRO9JiQqx+QYAcRMssBG8vtwiE5WaEO7+lk4Lk9LfRIV1tFZgUGpG
         AT+g==
X-Forwarded-Encrypted: i=1; AJvYcCUhLApCiUx2sIjCWu1XVan8Qy6aTS5o1aK1q0LgvfV9lxtd8a8kA0lnkt3Fsdy6S96b5x1g5bg8MZI=@vger.kernel.org
X-Gm-Message-State: AOJu0YyvaipkvevLMPy5UvclLMIhblA3nq8RdA8ydH5mXOJPWhl5d34M
	258fGiCCi2XhR+e/1edfdfe8Va9oTW7utx/m25p27N4m4g6Jh0YXMIi/Emvity16kAlMEE+3mAY
	mb1k/mS0wCQi4OuZqCr3/2I5YZhBfYpf4n7n9POEr
X-Gm-Gg: ASbGnctxJscgHwJY0LmoAQiQRQSTIY1l19omYzBBc3n6LHdjgE/7PZjCtueSQEqYXi6
	N51d8VRtAfKH+/jY43SAYeDZOUD+gsAkFp1sXRoYS1WDkMiMLR40tlJufKMx3NAHbfg+ila/sXu
	cfLIYroujW/icWIwMknGSHRaSnJ5qUDkgvbQiECPOVN++wx7QuFZgUNyIM9GJTlEAdNdCb9SvuD
	n93rjZCoGwfBDk=
X-Google-Smtp-Source: AGHT+IHvtY/z9cvHqmNCifZxx2Ub+dYH9t1adPRVNBC9GSnFaRJcY8noiBbwOuWbIqk8Q67VvzJAweZ89TDU+4hxfBg=
X-Received: by 2002:a05:6870:8996:b0:2ef:f0bf:f121 with SMTP id
 586e51a60fabf-2ffb2521a9dmr2262465fac.33.1752674143157; Wed, 16 Jul 2025
 06:55:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJgzZopjpJJY8F7khF6SN=-UuYPiR70vqOE4voaQz79U_HqhAQ@mail.gmail.com>
 <uxmsabvotuwrcv5xmobyzakdfxibmkvet5f55idux2peyeto3k@zz7wo32lk4cr>
 <forno7r2gzmghoj5tr2ze2eehjfni6xcxatvqeuvuxoppypnqw@mmcrxxnlb6kw>
 <CAJgzZoq_352z=YNOOCe+G3fq2xAuZQU=r16p22XC4euhaidKDg@mail.gmail.com> <cfyjj5fpvoowasfqy3c4xyxm64vqxx6b6vw3ez6anlxrwwj5le@b7whzrldtxtt>
In-Reply-To: <cfyjj5fpvoowasfqy3c4xyxm64vqxx6b6vw3ez6anlxrwwj5le@b7whzrldtxtt>
From: enh <enh@google.com>
Date: Wed, 16 Jul 2025 09:55:31 -0400
X-Gm-Features: Ac12FXxIpmpgBVSm-LRH-b2ldwzkXKq6PXVMgmSh48evAkyEfWu2Ypgknlb1zkI
Message-ID: <CAJgzZoqkoYnrDGGpkCyUM8_0yGpP3GVjwsAUoPkGsdEHbUG6xQ@mail.gmail.com>
Subject: Re: [PATCH] printf.3: mention Android's %m support.
To: Alejandro Colomar <alx@kernel.org>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, linux-man <linux-man@vger.kernel.org>
Content-Type: multipart/mixed; boundary="000000000000b68b0e063a0c3f20"

--000000000000b68b0e063a0c3f20
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

git commit --amend without a git add :-(

should be right this time!

On Tue, Jul 15, 2025 at 6:26=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Elliott,
>
> On Tue, Jul 15, 2025 at 05:04:44PM -0400, enh wrote:
> > (moved the API 29 note to the man page and reworded the commit message
> > text about the BSDs.)
>
> Did you actually forget the 29 detail?  I don't see it in the patch.
>
>
> Have a lovely night!
> Alex
>
> >
> > On Tue, Jul 15, 2025 at 4:50=E2=80=AFPM Alejandro Colomar <alx@kernel.o=
rg> wrote:
> > >
> > > On Tue, Jul 15, 2025 at 09:48:50PM +0200, Alejandro Colomar wrote:
> > > > Hi Elliott,
> > > >
> > > > On Tue, Jul 15, 2025 at 02:50:06PM -0400, enh wrote:
> > > > > Unclear to me whether it would be useful to explicitly mention th=
at it's
> > > > > _not_ available on iOS/macOS and the BSDs, since that's the cavea=
t I
> > > > > usually give when recommending %m to people.
> > > >
> > > > We can omit that for now, but please not it in the commit message.
> > >
> > > s/not/note/
> > >
> > > >
> > > > >
> > > > > Technically this is available on Android from API level 29, if we=
 wanted
> > > > > to be more specific.
> > > >
> > > > Yep, that might be useful.
> > > >
> > > > Thanks!
> > > >
> > > >
> > > > Have a lovely day!
> > > > Alex
> > > >
> > > > > ---
> > > > >  man/man3/printf.3 | 2 +-
> > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > >
> > > >
> > > > --
> > > > <https://www.alejandro-colomar.es/>
> > >
> > >
> > >
> > > --
> > > <https://www.alejandro-colomar.es/>
>
>
>
> --
> <https://www.alejandro-colomar.es/>

--000000000000b68b0e063a0c3f20
Content-Type: application/octet-stream; 
	name="0001-printf.3-mention-Android-s-m-support.patch"
Content-Disposition: attachment; 
	filename="0001-printf.3-mention-Android-s-m-support.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_md60x3wj0>
X-Attachment-Id: f_md60x3wj0

RnJvbSBjNzJjNjNhYmM0OTJlMTkxNjhkY2JhNmU1OGQwNGY4YmQ2NjVhZGQxIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBFbGxpb3R0IEh1Z2hlcyA8ZW5oQGdvb2dsZS5jb20+CkRhdGU6
IFR1ZSwgMTUgSnVsIDIwMjUgMTg6NDI6NTYgKzAwMDAKU3ViamVjdDogW1BBVENIXSBwcmludGYu
MzogbWVudGlvbiBBbmRyb2lkJ3MgJW0gc3VwcG9ydC4KCkluIGZ1dHVyZSB3ZSBtaWdodCB3YW50
IHRvIG5vdGUgdGhhdCBpdCdzIF9ub3RfIGF2YWlsYWJsZSBvbiBpT1MvbWFjT1MKYW5kIHRoZSBC
U0RzLCBzaW5jZSB0aGF0J3MgdGhlIGNhdmVhdCBJIHVzdWFsbHkgZ2l2ZSB3aGVuIHJlY29tbWVu
ZGluZwp0aGUgdXNlIG9mICVtLgotLS0KIG1hbi9tYW4zL3ByaW50Zi4zIHwgMyArKy0KIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9t
YW4vbWFuMy9wcmludGYuMyBiL21hbi9tYW4zL3ByaW50Zi4zCmluZGV4IDIyZmUwNjU3Ni4uODNl
YWJmN2FiIDEwMDY0NAotLS0gYS9tYW4vbWFuMy9wcmludGYuMworKysgYi9tYW4vbWFuMy9wcmlu
dGYuMwpAQCAtODcxLDcgKzg3MSw4IEBAIC5TUyBDb252ZXJzaW9uIHNwZWNpZmllcnMKIGFueSBm
bGFncywgYSBmaWVsZCB3aWR0aCwgb3IgYSBwcmVjaXNpb24uCiAuVFAKIC5CIG0KLShnbGliYyBl
eHRlbnNpb247IHN1cHBvcnRlZCBieSB1Q2xpYmMgYW5kIG11c2wuKQorKGdsaWJjIGV4dGVuc2lv
bjsgc3VwcG9ydGVkIGJ5IHVDbGliYyBhbmQgbXVzbCwKK2FuZCBvbiBBbmRyb2lkIGZyb20gQVBJ
IGxldmVsIDI5LikKIFByaW50IG91dHB1dCBvZgogLkkgc3RyZXJyb3IoZXJybm8pCiAob3IKLS0g
CjIuNTAuMC43MjcuZ2JmN2RjMThmZjQtZ29vZwoK
--000000000000b68b0e063a0c3f20--

