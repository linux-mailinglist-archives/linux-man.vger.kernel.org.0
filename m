Return-Path: <linux-man+bounces-5035-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AEO2BnqhhGmI3wMAu9opvQ
	(envelope-from <linux-man+bounces-5035-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 14:56:10 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AFBF39BE
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 14:56:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5FE26301C910
	for <lists+linux-man@lfdr.de>; Thu,  5 Feb 2026 13:56:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D63593D9045;
	Thu,  5 Feb 2026 13:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="D366TDGL";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="B+s/1cxA"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E393B52F7
	for <linux-man@vger.kernel.org>; Thu,  5 Feb 2026 13:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=170.10.133.124
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770299766; cv=pass; b=tR/+NZojr6SScleCzZm7XGak0E8hi377erhVbO/R/QpKXQJ6WfDooAo7NhFqULazEEBhl/X7a8rJ2fuWMY/sbjJyRHfT4HTNyBIWMQLgON7uUvBaB1GmG6eFQzIv40TA2MJ753/wR/rlHLeM5gHH2Qv9xbRv66vfAS291dfrHrU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770299766; c=relaxed/simple;
	bh=hp4ZMWFlT4TLeW/vlIah0dEG8N1NHIhYo2ceOZlkKUM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AcqeCWtNUZwzgWw8k6SuQ1iAQgnm/Seo50UPtJeHje8CPn3fGokwiiIOKa6v91DD9ggRMOxzPECXirPHcoEJuMA0nnctqBesNAoGtn+7AD6lVyQ/kj2/C+hpJegk/cJ/qOL4vvNr2yWgeQ2j4/Kr+Y5jk4VuIrK19fu2IlKUHng=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=D366TDGL; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=B+s/1cxA; arc=pass smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1770299765;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iUIQ2mlWXyQl0SfpACTkyB0RRL9cR26JtPNIsH9qJVs=;
	b=D366TDGLvFg6SqzlxabwYOLDYtfq+o/iPoL3w12xLsvbgG6+pqfzk0E6w61zhaicoTQB2X
	LgBX1OTvxUVtrp3S1QnXwYCouHRyL34Y/tRWESpq3TlGDdQL5tBVIvSVH45QwRdrNEHDbQ
	G6xXwe35XVeHnHF93uQY3bxCVFLGD/8=
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com
 [209.85.128.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-316-1JUWTu7eMFOKq-3wtXSpxw-1; Thu, 05 Feb 2026 08:56:04 -0500
X-MC-Unique: 1JUWTu7eMFOKq-3wtXSpxw-1
X-Mimecast-MFC-AGG-ID: 1JUWTu7eMFOKq-3wtXSpxw_1770299763
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-7942395ecc1so12605317b3.3
        for <linux-man@vger.kernel.org>; Thu, 05 Feb 2026 05:56:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770299763; cv=none;
        d=google.com; s=arc-20240605;
        b=A/2P2kil5lT7uZkNQmN86G7HK+6gK0DnrH1FPgC7bo8Dz+i5U5IXZ0oz7ctxxNSOII
         GluMC7qglP8n7ZV6W8D2YhGcSgQFTKCiUu9LorJQ/D/J/nzdDyfk/o9tTvflgSlwsO74
         svj+rHKUKrU4dKwsnK7LZ5rQvCbL9549aFF1iJrokhyUcLduOX6gv5w9iQhQG4jXOWpQ
         oUbMc9WdT3Aw+omUYAWXhEWkcdKruY07JPwJZIpPLBcPSto7iV3J2wAInzRWKbmouGQM
         Ckgo+mfQHcf5Y8jNvHJJt3huaGTi7TD06Bg1ut2UQpR/k/GPFoJnRMCmhvfatjlxBehz
         3UUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=iUIQ2mlWXyQl0SfpACTkyB0RRL9cR26JtPNIsH9qJVs=;
        fh=kTbk4pccRQ7ywKItoF6eFeVMUIye+84NI5zbIP4rQ9Q=;
        b=Hp0p3fVYT69iLz2UI8REbElbeQxG/HGVrMd0weOilVP01FyWtrKm4Xf3o0NeCw0qpA
         7VcUvo/O8apmATAmNuVI6pJOQrciJskslrfU+4Ddkq9Fhc7zyoAYHVDP6NZ8GgD2G4tZ
         E0Y679gBDsVC7oSkj+pVwuInHNQseEiUuDF35HmO8hYn3JmjZH0u65zazMXIvtL+6R1y
         k08bdQ3nU0HQKEDbK1MlCZXtLEI+2EzBB7aha5oulhHhIndcXukPuK6HpNnOgpHUDMhQ
         Nsn7rMSY22mC2mqYIVqKrHiFNyMJqJNC05zNtJ97d8Pcok9PE4o14o4Y/0qISaWlaCvp
         rHIQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1770299763; x=1770904563; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iUIQ2mlWXyQl0SfpACTkyB0RRL9cR26JtPNIsH9qJVs=;
        b=B+s/1cxAru4Uder6nde2R22eujvQGPU5gspI6OVE4SSI5ezhVZ7pm4KSYc1Sp0PlyV
         FooBCADmApgd/UMYTmo4Ls3LcgU4mQz+dZlrqFnfyQ6uoJsk7KsSmz9AwnLHyTniS/xY
         SsaFWDKbAdLNCDJDJ7mmfGagnhay9SPDC/vu1GA4AYrhrB/RUXBig6U2bgd75K6x4O8D
         BiZRyCt4P/Gcdqtf1eKKk19hXkf9Il2iwFM8Dfm4rIqS4QyELZWjmQa7WNHHL8s/l8OG
         mtmhYn17V2+ZffbBbNgBy1dObeyaANdBuUg4kue2AD+h7SnxmOeZDJx3HSLYjrROgSGY
         H61A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770299763; x=1770904563;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iUIQ2mlWXyQl0SfpACTkyB0RRL9cR26JtPNIsH9qJVs=;
        b=Pe3gvKYZzzX9SEYE40EBjiuBC3K5m8I/NnExs9Q6rzaKPy7sv7WPkK82UV7d/6mwtI
         EFIpTrln4/VrAShyisHiClj6sOBTsgKZ5wx7GLgpV5/DP9GhILO+GhoSgkb6OYnAERcu
         qcxhaH+vnXvkEmo3R59ObVnmxrZ3ze2b80MvlrsEkWuVaFzSxoHoiQ/AfMrkC7Bbr4Z9
         i/m0iUmj3+QLakve2AUdM0DNZxzdOSGFKi77/XXGONyOkGwXbUKcFcXghpoK9O/EGxNo
         0fkIaICykzgTa5v/U/7uJ9Uxvpp8YvmE/nRgz38lQRBRb5fF07TAvWwep6EJ9iOJQFfL
         +s/w==
X-Gm-Message-State: AOJu0Yx6WOgbGGZD9GkILMZ0ZdDcKC6/3iIj0Zeo93EW7oXXMRNC42Ar
	4B6x43ZJ1YzcdWxYLnITHsc1pso3iuDV+lFyVSoy6Pthuh2GM55/Lx2avCHyJd35wNp7vWT3Q8c
	es0fJJeXRnlaZFp7fcz3oyKMOm1pKSSkQHyGLUXTBrIrhBfuEq+qCI/TwXQgNafP3XNCTvzxe6E
	ADr7rW9xLL32xHskevvyj16pGPc9OSr90sipFXcO9vktHn
X-Gm-Gg: AZuq6aKEoxpPVy7otwJywMUNlg4uK3ruoXooeiMQQH5s2cHJAo8u0AqaX2hqQj8u4vN
	9j8CSMZaknowgg4e04g4f8i8VL60kN1yO515T4vpN/MTdcza1YJgePkva5dG3G651NYo01vRUjv
	S6NNAZ/fko5RQEPnLqeftIoa/Xi6rvpQs6deAKnIEnCARvJU2a9I1/BSw9XFHWNB7bKn+xYP67z
	mi6aBv2mR1xbWDHu+xRE9fcXUyIoY3s8/BTzVgtZxwA7+vTVPm20Eg=
X-Received: by 2002:a05:690c:b1b:b0:794:1ec3:30f0 with SMTP id 00721157ae682-794fe7b3d36mr63686637b3.54.1770299763618;
        Thu, 05 Feb 2026 05:56:03 -0800 (PST)
X-Received: by 2002:a05:690c:b1b:b0:794:1ec3:30f0 with SMTP id
 00721157ae682-794fe7b3d36mr63686507b3.54.1770299763198; Thu, 05 Feb 2026
 05:56:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CACb0b4nujtK-twnRzjWmXPyJW+0uvbM_AFx3_1xFRj86yPiHFw@mail.gmail.com>
 <aYSXSY4968FXnvRZ@devuan>
In-Reply-To: <aYSXSY4968FXnvRZ@devuan>
From: Jonathan Wakely <jwakely@redhat.com>
Date: Thu, 5 Feb 2026 13:55:47 +0000
X-Gm-Features: AZwV_QhD7sN6mCwE5-14ODf3XgI-o6A9Gf8xRNtV3IViBSV1CIr4Zb_XIVk1scI
Message-ID: <CACb0b4mDZx9YrpFDCmoSHvjvZpHaHMsauwzcBR-JYib0467hUw@mail.gmail.com>
Subject: Re: aligned_alloc man page and restrictions on alignment values
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5035-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jwakely@redhat.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[posteo.net:email,pm.me:email,mail.gmail.com:mid,openbsd.org:email]
X-Rspamd-Queue-Id: 83AFBF39BE
X-Rspamd-Action: no action

On Thu, 5 Feb 2026 at 13:26, Alejandro Colomar <alx@kernel.org> wrote:
>
> Hi Jonathan,
>
> On 2026-02-05T10:05:08+0000, Jonathan Wakely wrote:
> > Hi,
> >
> > I don't understand what "except for the added restriction" means in
> > aligned_alloc(3) here:
> >
> >       The  obsolete  function  memalign()  allocates  size bytes and re=
turns a
> >       pointer to the allocated memory.  The memory address will be a  m=
ultiple
> >       of alignment, which must be a power of two.
> >
> >       aligned_alloc() is the same as memalign(), except for the added r=
estric=E2=80=90
> >       tion that alignment must be a power of two.
>
> That was fixed (removed) in

Oh great, thanks! I was only looking at the Fedora man-pages, I should
have checked git first.

>
>         commit 90f18b452a7113f42ea4e222f819257e692ce57b
>         Author: Alejandro Colomar <alx@kernel.org>
>         Date:   Wed Dec 10 12:14:01 2025 +0100
>
>             man/man3/posix_memalign.3: Remove confusing exception
>
>             This is already a requirement of memalign(3).  aligned_alloc(=
3)
>             is indeed exactly equivalent to memalign(3), since ISO C17.
>
>             Fixes: 7fd1e0f2be21 (2023-05-20; "posix_memalign.3: Update al=
igned_alloc(3) to match C17")
>             Reported-by: Seth McDonald <sethmcmail@pm.me>
>             Signed-off-by: Alejandro Colomar <alx@kernel.org>
>
>         diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.=
3
>         index 397f65aec..9c4a0bff9 100644
>         --- a/man/man3/posix_memalign.3
>         +++ b/man/man3/posix_memalign.3
>         @@ -83,10 +83,7 @@ .SH DESCRIPTION
>          .P
>          .BR aligned_alloc ()
>          is the same as
>         -.BR memalign (),
>         -except for the added restriction that
>         -.I alignment
>         -must be a power of two.
>         +.BR memalign ().
>          .P
>          The obsolete function
>          .BR valloc ()
>
>
> I'm planning to do a release this or next week, FWIW.
>
> You may also be interested in checking the diff from
>
>         commit 5695edc7e9a3b301403aa7773b316c8d51af650c
>         Author: Alejandro Colomar <alx@kernel.org>
>         Date:   Mon Dec 15 15:14:48 2025 +0100
>
>             man/man3/aligned_alloc.3: HISTORY: Document bogus specificati=
on from C11
>
>             Document the turbulent past of aligned_alloc(), and how libra=
ries have
>             actually implemented it.
>
>             Fixes: 7fd1e0f2be21 (2023-05-20; "posix_memalign.3: Update al=
igned_alloc(3) to match C17")
>             Reported-by: Eugene Syromyatnikov <evgsyr@gmail.com>
>             Reviewed-by: "G. Branden Robinson" <branden@debian.org>
>             Cc: Seth McDonald <sethmcmail@pm.me>
>             Cc: DJ Delorie <dj@redhat.com>
>             Cc: John Scott <jscott@posteo.net>
>             Cc: Paul Floyd <pjfloyd@wanadoo.fr>
>             Cc: <misc@openbsd.org>
>             Cc: Ingo Schwarze <schwarze@openbsd.org>
>             Signed-off-by: Alejandro Colomar <alx@kernel.org>
>
> (I haven't pasted the diff because it's large.)
>
> And you may also want to check other patches applied near those two.
>
>
> Have a lovely day!
> Alex
>
> >
> >
> > Does it mean that aligned_alloc doesn't have the power of two
> > restriction? If so, describing that as an "added" restriction is very
> > confusing. What was it added to? It's not added to aligned_alloc if
> > it's absent from aligned_alloc.
> >
> > Does it mean "aligned_alloc() is the same as memalign(), except that
> > alignment need not be a power of two"? That would match my
> > understanding of the C standard, which says that aligned_alloc() has
> > well-defined behaviour for invalid alignments, failing by returning a
> > null pointer.
> >
> > But posix_memalign also has well-defined behaviour for invalid
> > alignments. POSIX requires that posix_memalign handles invalid
> > alignments by returning NULL and setting errno to EINVAL. Which is
> > what aligned_alloc does too. So what exactly is the restriction here?
> > Does memalign have UB for invalid alignments, or does it fail and set
> > EINVAL? How is that different from aligned_alloc and posix_memalign?
> >
> > Wording the linux man page in terms of "must be" and wording POSIX in
> > terms of "shall be" makes it sound like you get UB if you fail to meet
> > it, but as far as I can tell you just get a null pointer. The APIs are
> > well-defined for invalid alignment arguments.
> >
> >
>
> --
> <https://www.alejandro-colomar.es>


