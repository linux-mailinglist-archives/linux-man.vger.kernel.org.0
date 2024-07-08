Return-Path: <linux-man+bounces-1373-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B105F92AC42
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 00:49:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F156282974
	for <lists+linux-man@lfdr.de>; Mon,  8 Jul 2024 22:49:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14B7E14F9D9;
	Mon,  8 Jul 2024 22:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="J3L2WZmm"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A01414EC42
	for <linux-man@vger.kernel.org>; Mon,  8 Jul 2024 22:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720478938; cv=none; b=XtMTfrK2sYGImtRp7m7VmaEQR79IhrUcQXr0FnLC1sfNxV2T2HglY1GuPnlDsWfMHpPRSxTyDChZEvTuiSxCDmN4ifSpH1V0ugVWfawEEU3smEstlJVaBYKXqHF7n4xVJZKipS7TmsisyicDEiII1yjx6u9z4+SBDI7RqU+dtcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720478938; c=relaxed/simple;
	bh=3gnTx7l6Av4l4Z165pBHWChFCLSBPMLXH1Dnb8rnqLc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=fXYvHD+93BIvbtnaUmVAlCwkAILVlWJSNlq18ZMeythDeQvTPaW8ALpPVbwXCzt1OFi36QdCNkZDYv5dqTn0LC1V2gUvYVCCAxBdeRMtynlHJeFKzoVI/SR4+ap0vujJUfUyE0OVtu4zQcoOBobEM03hdFAao09+QiGvbDZ+tUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=J3L2WZmm; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1720478935;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3gnTx7l6Av4l4Z165pBHWChFCLSBPMLXH1Dnb8rnqLc=;
	b=J3L2WZmmXG/nED1hNb1w62+OeERsLqfWnz1o8aoTlpSoBPspiDBmRDeHNTobhpGBh7DnsE
	fLeY5mWJRl34LqnjULvS0I4PAu0p79fwSMkzOWFk+fZwe9yBbtUcNFNt3iAZbNky6GhdlZ
	bxFAI37BSHnzPDwg9/Sdo85v+PhKyIM=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-75-cGsTnsXUMnqZQLYgRZAtFg-1; Mon, 08 Jul 2024 18:48:53 -0400
X-MC-Unique: cGsTnsXUMnqZQLYgRZAtFg-1
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6b07ef34bfcso88100716d6.1
        for <linux-man@vger.kernel.org>; Mon, 08 Jul 2024 15:48:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720478933; x=1721083733;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3gnTx7l6Av4l4Z165pBHWChFCLSBPMLXH1Dnb8rnqLc=;
        b=kcHdtvSa8tk5wEFmsOZj3rDntr+EOd5B/k9l/T+OoWN+2wWSvyYy51aWb90jnCH/oN
         74upCZpzK6CuF/7Rbb0fIo+C9+gdB9DsL6zXqCwWCDnWFvzjcPvQFvNzVofJWpbzvnSE
         we32NTTPj/emEBUABl+Xk0ogBaOomZu2YecWEsc8UKKH79ZcFqhu5eXrqbvfMr/7Ezdi
         g/11uY2+vAApagpzbQxl9HZ3chMJVoD6y0uWQQWc0S8tdKm3MaAMAT4omzHydIkCfwD9
         wtrxS1W8bR+2f233czf5S+Z0SzTNrGxK5LkkSJYGcoCoFDeYttsDbdv2+oeZibXgrrQp
         Fbyg==
X-Forwarded-Encrypted: i=1; AJvYcCUi16zDxw0uChmnaOhryFij20mj3o//NrY8hTIYe3d1aobUYW/FPzIS90su9YwTvuCJMeJsjShVHVvxBIzR2kylZ75n67v6KOIY
X-Gm-Message-State: AOJu0YyUYK7eJcJzKvy65WaqyZEpWFcM8ApZggGmWc9WyOkBlykEEDhR
	seTL5GJpn7+IngelA8bHVE9D8TlYU8qWJd/th31FASuAvR2HbW87DvT1SispftQuYx0znAliEkq
	K2HqLeDv2F8oGp3PrGD/GdEJI2MeyFD9kMapFs+1gz6S+5aZ6U6jFmod1fw==
X-Received: by 2002:a0c:e288:0:b0:6b4:fea6:4df8 with SMTP id 6a1803df08f44-6b61d9c49eemr11063486d6.19.1720478933336;
        Mon, 08 Jul 2024 15:48:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEoW21E5tQjSjxEX97jWQgZbOdGDKDF79TX4pmnQ4/IS+3tzzvFmVH7k6yZrHchhwEa3I4KhQ==
X-Received: by 2002:a0c:e288:0:b0:6b4:fea6:4df8 with SMTP id 6a1803df08f44-6b61d9c49eemr11063336d6.19.1720478933007;
        Mon, 08 Jul 2024 15:48:53 -0700 (PDT)
Received: from t14s.localdomain (c-76-28-97-5.hsd1.ma.comcast.net. [76.28.97.5])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b61baa25d9sm3487966d6.145.2024.07.08.15.48.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jul 2024 15:48:52 -0700 (PDT)
Message-ID: <bf77f96425a17ee62f31ca760fb6487e3ede3685.camel@redhat.com>
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
From: David Malcolm <dmalcolm@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>, gcc@gcc.gnu.org, 
 linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com,
 uecker@tugraz.at,  lh_mouse@126.com, jwakely.gcc@gmail.com,
 Richard.Earnshaw@arm.com, sam@gentoo.org,  ben.boeckel@kitware.com,
 heiko.eissfeldt@siemens.com, libc-alpha@sourceware.org
Date: Mon, 08 Jul 2024 18:48:51 -0400
In-Reply-To: <flrf5shec7kc466bze35ohi5u2r7svf3nky5dvpnih2djcybo3@f5yvxiwfivos>
References: <20240705130249.14116-2-alx@kernel.org>
	 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
	 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
	 <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
	 <e2d7b36d5716f1799ba43d1373a0a2d65cc7cb16.camel@redhat.com>
	 <flrf5shec7kc466bze35ohi5u2r7svf3nky5dvpnih2djcybo3@f5yvxiwfivos>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36) 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2024-07-08 at 17:01 +0200, Alejandro Colomar wrote:
> On Mon, Jul 08, 2024 at 10:30:48AM GMT, David Malcolm wrote:
> > > > Why is this change worth
> > > > making? Real-world programs do not make calls like that.
> > >=20
> > > Because it makes analysis of 'restrict' more consistent.=C2=A0 The
> > > obvious
> > > improvement of GCC's analyzer to catch restrict violations will
> > > trigger
> > > false positives in normal uses of strtol(3).
> >=20
> > Hi Alejandro
>=20
> Hi Dave,
>=20
> > I'm author/maintainer of GCC's -fanalyzer option, which is
> > presumably
> > why you CCed me on this.
>=20
> Yup.
>=20
> > One of my GSoC 2022 students (Tim Lange)
> > looked at making use of 'restrict' in -fanalyzer, see e.g.=20
> > https://lists.gnu.org/archive/html/bug-gnulib/2022-07/msg00062.html
> >=20
> > Based on Paul's comment here:
> > https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D99860#c2=C2=A0(and its
> > references) I came to the conclusion at the time that we should
> > work on
> > something else, as the meaning of 'restrict' is too ambiguous.
>=20
> restrict, as of the formal definition of ISO C is useless crap.=C2=A0 The
> more I read it, the more I agree.

Please note that "useless crap" was your wording, not mine.

>=20
> restrict, as of what -Wrestrict warns about, seems a reasonable
> thing.
>=20
> How about a [[gnu::restrict()]] attribute, similar to
> [[gnu::access()]],
> which is simpler than the qualifier?=C2=A0 Since restrict is only
> meaningful
> in function boundaries, it would make sense to have a function
> attribute.=C2=A0 We don't want a qualifier that must follow discarding
> rules.

If it doesn't have the same meaning as "restrict" then perhaps call the
proposed attribute something other than "restrict"?

That said, I don't have strong opinions on any of this, except to note
that I have more than enough *other* work on improvements to GCC's
static analyzer and usability to keep me busy, so getting sucked into
discussion/implementation on 'restrict' is something I want to avoid,
and -Wanalyzer-overlapping-buffers is getting the job done for me at
the moment.

[...snip...]

Hope this is constructive; sorry again if I missed anything due to only
skimming the thread

Dave


