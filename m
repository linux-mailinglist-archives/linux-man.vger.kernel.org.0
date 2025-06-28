Return-Path: <linux-man+bounces-3227-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA16AECAC2
	for <lists+linux-man@lfdr.de>; Sun, 29 Jun 2025 01:23:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E08AA189AE34
	for <lists+linux-man@lfdr.de>; Sat, 28 Jun 2025 23:23:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B230C239573;
	Sat, 28 Jun 2025 23:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FRAS47Hz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BC223B631
	for <linux-man@vger.kernel.org>; Sat, 28 Jun 2025 23:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751152981; cv=none; b=BKAPCD/aAMbLoeaIDoqXcWQND+sw6JNerx46O7HI6zi+iuBhdCJpilJiVazkNN4czzAIOHSRGiekWsOWbIZoGi+Wjt/PkCQSBzmoKFtNZ2SiRE5aNRbU4aI4LEq4v6sN9AHFIRF5NlhOMAJ75BnXay/MC4FxK9YGdysuCs6q9wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751152981; c=relaxed/simple;
	bh=Gzz3+RoCTyTi/y6jmpQ1dln7mX82fS/2tAnLQTYWO5g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PD8fpikb6WtS/njpo2cGuDfnitAmZeNb7vArr71jM1wTOuMLU73XLVOmbNpv6Np8HPjNm1SeRkS4l1mXZsW8RloPaMDAI/gvht5eT4Rsjxuy7efo6mVfARr8/2Z45NbWJswwYs6WQkOCIEbg7aHtK2985Omekq25fx8ApimEPHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FRAS47Hz; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-313336f8438so814718a91.0
        for <linux-man@vger.kernel.org>; Sat, 28 Jun 2025 16:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751152978; x=1751757778; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SzpejIZH2cTS6HkVkTsLPQQipIvxxx/I4fNsz9oqxds=;
        b=FRAS47HzmLxU7VkBvLA6PyXIxmzb0vvZxBACnTdp7ng9yc1N4OfmYvdkrF5tIOtYyi
         othh9m3d0osxb/x9mA3LHqcpBW4v2txMAg2mECL7cq1BdcADfVj1E0tcedRNcKf/2g2H
         wUJGLk5KSgpr57lbnUnKKFv37/F3hsO2PsDTHboD2HZAnuGfuxPDsJZX66ATIrNDuS/j
         EOJ2nT9Cfp1bdUw5UYkttWF14k8m1W5Nmk/UGf3mdvxXGQAZCj/65tnY8yC2EBL8l2Qc
         PGB+evHTZll8ZGhJ+CyF74cm8pZpHHGdbXBRCrGKC/dseUX74eWqWem5b4XQ6avbZcwp
         ClWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751152978; x=1751757778;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SzpejIZH2cTS6HkVkTsLPQQipIvxxx/I4fNsz9oqxds=;
        b=NwqBibpDLlGLtH5MnJ2CxdSswFLKpjiBYY/aZVXKvzNW5QOyiNhscapcfLNdm3FbYi
         5dAb22vlj8A+nLVjQG/DbZNWeY1w/n4yHx9mSQwvvx7LDAP2hjF7wdj83ETPIr4qBSM5
         888n8ThJHCPNplRiGUU3hjbLagN0bLkHXTXxqflKCWh/aXZcZQ+9YSj1sEA+bee6kJRw
         k5D1aIvHbdUmbxHpJkvq/9xrdyNGuu507HE+KgCYFz46mJJvKYmXvvnOxTxhkrCaRl5a
         3QR6FmNmBfHeBcUpMOod44CN6AfaD5LDtA3ox4I9Lrkagewn1qHQ6WQGkIndE6UgVcIz
         QPOA==
X-Gm-Message-State: AOJu0YzEoMITuxTkpgQHT1dX9NjB2c83kC0M58jm0dMKQGJY4YS8gB9g
	R52nkzZ0Z7ONrBGp5ZZR0arCXSWsyc/4HrQ9QXKDBuN2MJCDISuNPMI+xSyUI1cZp3PNrJ/syRr
	6Swjx3qWhQAWJrWEa2O9LPSViR1lmzVg=
X-Gm-Gg: ASbGnctbFqqefeL5NfGdC6c0c8nmHnGb79yPpB44wdOZyJZqrepn2p1beUmNqrjUUcx
	Dk2R3s/xIcPe/D0/v1uj7wUpHYc9O9DqaRaRBVBQ+csPYxUb6tCVAFoiaZ3XCR6dubG1e8iiOVO
	H4rm9zSqfZG+BDfOUem3EZ/spqVoMjsUix2sqic2QZI+rnms08bEXe5PffFWVPMjTarDQvNvs4t
	KCYXg==
X-Google-Smtp-Source: AGHT+IHJjqtmZ2FhqPiVmg8kLDglZrUWDFlIjbn1wNf06UbuxZ+9iow9ulf6DVcWxGLg0NOeJfxPPz2avRwIQSN8JPY=
X-Received: by 2002:a17:902:d4cf:b0:235:737:7bf with SMTP id
 d9443c01a7336-23ae88d7e56mr28204115ad.3.1751152978201; Sat, 28 Jun 2025
 16:22:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CACbk2c9mr7-jHodA=0P73RCDXep6Bvpq8snh5zD-Gze+4NgGLg@mail.gmail.com>
 <blbpv2wtlyy6ofkbeyymgkgsza245ekipe37ggldcv6j7jaqa3@f4fsnkllnjpi>
In-Reply-To: <blbpv2wtlyy6ofkbeyymgkgsza245ekipe37ggldcv6j7jaqa3@f4fsnkllnjpi>
From: Brian Beuning <bbeuning@gmail.com>
Date: Sat, 28 Jun 2025 19:22:45 -0400
X-Gm-Features: Ac12FXxAeHjQpjHJj7j34yqBAtOR9YziWvWMJVjkLXUWEebDF__OxnJ1ZjUDYT8
Message-ID: <CACbk2c-7AC5vWuFmsev+3XDOt6v_dH43WBW=ejpkJm=TYcNeOQ@mail.gmail.com>
Subject: Re: add_key(2) missing error ENODEV
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: multipart/mixed; boundary="00000000000036b48a0638aa1349"

--00000000000036b48a0638aa1349
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Here is a patch and a 30 line test program to demonstrate the problem.
There are comments at the top of the program showing how to compile it
and the expected output.

Brian Beuning

P.S.  This is my first time making a patch.



On Fri, Jun 27, 2025 at 11:51=E2=80=AFPM Alejandro Colomar <alx@kernel.org>=
 wrote:
>
> Hi Brian,
>
> On Fri, Jun 27, 2025 at 11:24:01PM -0400, Brian Beuning wrote:
> > The man page for add_key(2) does not list ENODEV as an error code.
> > It happens when the "type" argument is invalid.
> >
> > I spent about 6 hours figuring this out.
> > I looked at enabling TPM and UKI.
> > Then got the kernel source code documentation which explained it.
>
> Would you mind sending a patch?  Please include links to those sources
> in the commit message.  Please have a look at
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIB=
UTING>
> if you'll prepare a patch.
>
> >
> > Brian Beuning
> >
> > P.S.  This is the second sending of this message.  The first had HTML.
>
> Thanks!
>
>
> Have a lovely night!
> Alex
>
> --
> <https://www.alejandro-colomar.es/>

--00000000000036b48a0638aa1349
Content-Type: text/plain; charset="US-ASCII"; name="test_add_key_ENODEV.c"
Content-Disposition: attachment; filename="test_add_key_ENODEV.c"
Content-Transfer-Encoding: base64
Content-ID: <f_mcgv726c1>
X-Attachment-Id: f_mcgv726c1

Ly8gU3lzdGVtOiBVYnVudHUgMjQuMDQKLy8gTGludXgga2VybmVsOiA2LjguMC02MgovLyBDb21w
aWxlciB2ZXJzaW9uOiAxMy4zLjAKCi8vIENvbXBpbGU6IGdjYyB0ZXN0X2FkZF9rZXlfRU5PREVW
LmMgLWxrZXl1dGlscwoKLy8gT3V0cHV0OgovLyAgICB0eXBlIEtNUyBrZXlfc2VyaWFsIC0xIGVy
cm5vIDE5IEVOT0RFViAxOQovLyAgICB0eXBlIHVzZXIga2V5X3NlcmlhbCAxMDk4OTQ0OTIgZXJy
bm8gMCBFTk9ERVYgMTkKLy8KCiNpbmNsdWRlIDxlcnJuby5oPgojaW5jbHVkZSA8a2V5dXRpbHMu
aD4KI2luY2x1ZGUgPHN0ZGlvLmg+Cgp2b2lkCm1haW4oKQp7Cgljb25zdCBjaGFyICogdHlwZSA9
ICJLTVMiOwoJY29uc3QgY2hhciAqIGRlc2NyaXB0aW9uID0gIjAiOwoJY2hhciBwYXlsb2FkW10g
PSAiYWJjIjsKCXNpemVfdCBzaXplID0gc2l6ZW9mKHBheWxvYWQpLTE7CglrZXlfc2VyaWFsX3Qg
a2V5cmluZyA9IEtFWV9TUEVDX1BST0NFU1NfS0VZUklORzsKCglmb3IoIGludCBpID0gMDsgaSA8
IDI7IGkrKyApIHsKCQllcnJubyA9IDA7CgkJa2V5X3NlcmlhbF90IGtzID0gYWRkX2tleSggdHlw
ZSwgZGVzY3JpcHRpb24sIHBheWxvYWQsIHNpemUsIGtleXJpbmcgKTsKCQlwcmludGYoICJ0eXBl
ICVzIGtleV9zZXJpYWwgJWQgZXJybm8gJWQgRU5PREVWICVkXG4iLCB0eXBlLCBrcywgZXJybm8s
IEVOT0RFViApOwoJCXR5cGUgPSAidXNlciI7Cgl9Cn0K
--00000000000036b48a0638aa1349
Content-Type: application/octet-stream; name="add_key.patch"
Content-Disposition: attachment; filename="add_key.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_mcgv6xwl0>
X-Attachment-Id: f_mcgv6xwl0

ZGlmZiAtTmF1ciBvbGQvYWRkX2tleS4yIG5ldy9hZGRfa2V5LjIKLS0tIG9sZC9hZGRfa2V5LjIJ
MjAyNS0wNi0yOCAxMjozOTozOS4wMDAwMDAwMDAgKzAwMDAKKysrIG5ldy9hZGRfa2V5LjIJMjAy
NS0wNi0yOCAxMjo1NTo1OC43MTM3NTk0MDAgKzAwMDAKQEAgLTE4Nyw2ICsxODcsMTAgQEAKIC5C
IEVLRVlSRVZPS0VECiBUaGUga2V5cmluZyBoYXMgYmVlbiByZXZva2VkLgogLlRQCisuQiBFTk9E
RVYKKy5JIHR5cGUKK2lzIG5vdCBvbmUgb2YgdGhlIHN1cHBvcnRlZCB2YWx1ZXMuCisuVFAKIC5C
IEVOT0tFWQogVGhlIGtleXJpbmcgZG9lc24ndCBleGlzdC4KIC5UUAo=
--00000000000036b48a0638aa1349--

