Return-Path: <linux-man+bounces-5259-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJqVMcB5tGmOogAAu9opvQ
	(envelope-from <linux-man+bounces-5259-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 13 Mar 2026 21:55:28 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FED1289EE5
	for <lists+linux-man@lfdr.de>; Fri, 13 Mar 2026 21:55:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 311EF30F0E75
	for <lists+linux-man@lfdr.de>; Fri, 13 Mar 2026 20:52:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE06537F755;
	Fri, 13 Mar 2026 20:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MA2Q0i+M"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3762337CD4C
	for <linux-man@vger.kernel.org>; Fri, 13 Mar 2026 20:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773435132; cv=pass; b=e21r5Zi8wieJCtQadKsh3vaek/OQl2KzjBYGy5Tcm/a/3NRAP7lwIt5cd61DN3kPztoIrYsGr1H/JrrMCNEKPabyWeifNS+iWcBb3ZGUpIBGV7Ncd8qJUUfv1a7R/4hLdTZYTCm3bN6l5eMUp32jWKhX6Hfu8aEkjV6xdaVZQ24=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773435132; c=relaxed/simple;
	bh=HhdMuMqI/TLdZMuIrRLsO5/cABeL8vWpbq2Z+ktbd/c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=so2L+n9S1oMhtv+378XjiVut1d/bjFup5RcEf1AVcrT5CSTVmWRHHmR0wlKJ5GZvEiAttdALht3wZblJ9wajOIr2OSi+NKP8eOA3OTT6aZiMe6PgihQbiq29pjG/ChbgEW+m9dvrZgjWyaxmqBZaVyGk2gJRyisEu+2ifhmEAHg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MA2Q0i+M; arc=pass smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b97610d8bd3so24600066b.0
        for <linux-man@vger.kernel.org>; Fri, 13 Mar 2026 13:52:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773435128; cv=none;
        d=google.com; s=arc-20240605;
        b=ScbXs6b3qczybY1L5YjXPYJ3tVHAA7TzDOpZUSj7Wu54R1uRGaXfjMEsoiqIBA6yig
         kw1zSUa507dmz2m7tVgXS0Ur9zUGCFembqD2+UUG3CmpIIsgi5h2+TLSRsWw6VxEayYh
         eFWH1jfQuSOSTRZqXgpWitcJKj8Tj9LkiGsgGRvpfzH8W476Avmdo0mikslMbe7vhB3Q
         8s9HNR1LvHACaJOm1gB7JyKJi0a0x/t6i94UBM+qlxjMJ90YUjHFEC8vSdv/3nUhO371
         Xmr8JTegNBtyZ6fyp4NJ6bHmq/ICSGdDDk+dTEq+HdBaPUV7nXUMK8WCMHx/s5xioDTX
         D/zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zODJp3Q/ylJKtuOCWeTiMp9ZrT7Y7L+dmGvHafNLJ/A=;
        fh=pd+tqJfRw1Up3Al65mPLlj17jcqqWJUj+8rVsWp4NT8=;
        b=BVIuc66MQC7svSIXE2asudtAaEzfXn87snX2vvcWOg/h6QwPnCnNfQXxKXqxPLQlg+
         VAnNlB04asd9TgaZG37fz/gf+pf5XrmgdWdEBNt1umfTDUMCM8kdBvvTYUl0IZAFPpZp
         lKHO6bdZVYaFv+jqycpV/TQsfISJ42sdFEYfmAppb+77uJ4fEeGJU4VuGl7+YJKOL1ry
         R1I7SMDwut8d6lQvlBQ2Xdd9lByRE9KNvSw8/QUHvCA/Rg0cvuAPA2ktO5xab3YYh5ok
         w3Sbr6EIjMUhdDcoGZ1OWJvatSX0t3CIMT8hy4h19hO+4t0LkmG2bmOQrSwXylZC0HYG
         73sg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773435128; x=1774039928; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zODJp3Q/ylJKtuOCWeTiMp9ZrT7Y7L+dmGvHafNLJ/A=;
        b=MA2Q0i+MwziPC1R8tNrCJkgiQYLIZLM8R0iEjKBNrWwE0UzSzIlpB7nS00ZfFGc20x
         7dxDXPy/jbe1aAE0S7LlY8KJunKDJVszc90/f4qD0b09w5HYn76oBuFQz8lE+ULOqFEt
         j/PiLTQq6ogjxSUUppIFp40TXnSRHEnGg7QETO9IjYFqIqoalFdBCgvazimG0kkyjaUf
         BbVUq2mtYPdeqWRK7DN3N3LzC/Q68ypIWtuYWrX343miwZeWrOPZ5xOVYD006tnaQwMM
         0GXWkB0IiKlP1LBxoSooh7rpvD3FYfjx24cu6pvprA8829zibjtsoSatIx9CJ+2LLgBP
         ZY2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773435128; x=1774039928;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zODJp3Q/ylJKtuOCWeTiMp9ZrT7Y7L+dmGvHafNLJ/A=;
        b=bvDHpwYavK/yi5mif638igJgXSqx6MKADga/2lSFHLpc/iKGUaeHXwFFX1aKI/iCxv
         dIbEqcpqIiUXxdhQyxGGpVISPNEd5h2oucOQPF7OfPlwsSlnuPVhXI8oskkA+s/ZmHqd
         gZ5f8jpsGctTk32p7D4O5ZczeUeB3tcOpN0mZEKV4J0skB2CJTp8ID9El2CupA73UHfz
         6/Y6KGRhtgENVdlNAEg0grR+iOhugw+Sz9QcCGUfB4OYF/HfUbIapCz7gK6LMDeMDPsr
         6r8jed6GR35FsOZo5rxmJcFDX8/pz1Fgx/tNvus83JpplJ/RnQij9Lwtpl1PJDzS3Okg
         ULHw==
X-Forwarded-Encrypted: i=1; AJvYcCXQyqx3VpkCsfsRNxP2wKwPvmdOivb/CDCg2cH6tflCEtP0pjtWuqymSTMOacE9+I6WesFHsejKpzk=@vger.kernel.org
X-Gm-Message-State: AOJu0YwaW4WT6uoq7EAWovVZ4h6y33n2qtFIpwwegN5F6dyrKZSXjHkK
	GHrzZ5MLfcBdCblP9HPrmBvZ64BspuDdby0i20TMJlTx+K7c/aoy68H+YVmOjjYkTYpuf59wp3z
	NScFPGfUXnxtk57GO5Y7+ydFrI7bezlh87CbL6PI=
X-Gm-Gg: ATEYQzzZL52OLsmXM83atOCnJ9x9G8T6/plk2R2AabLV7uNXahjyGGYe6O/INN3E/zX
	y78XrC4mTrbf2VOH7v10cOg/TdgtR370hEbSNyqabioQeWGvE372e5zvo6EL/l/erR9M6XV+ifI
	FoUZP1b//VLgbyPFHMtV5wSaHvy+XUtH1cCbOzHYbdjam3ktiBh/R1nkmALbbvg0aunlkoK4ud0
	iMFUAemGs1P6G0xAGUYNeBwkorxAQw/8lYAirYvW1sMm9Ew1vc+wqm8xhZcuF+joOyRPeBjYlvG
	zBXLjRN7xvFR93A7mCktApbf320jnlFuHvhvzBb/qsRmM3xw
X-Received: by 2002:a17:907:c11:b0:b94:1740:7311 with SMTP id
 a640c23a62f3a-b97650efde9mr139385166b.4.1773435128062; Fri, 13 Mar 2026
 13:52:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <abRiap_UrhFzNxPs@NH27D9T0LF> <4718783.LvFx2qVVIh@natalenko.name>
In-Reply-To: <4718783.LvFx2qVVIh@natalenko.name>
From: lepton <ytht.net@gmail.com>
Date: Fri, 13 Mar 2026 13:51:56 -0700
X-Gm-Features: AaiRm502kuUKxqbPMLwMbzJyeLHRFqy7-lRiT7dJZm_SGOfIKYvF86HPsrY9LdQ
Message-ID: <CALqoU4xVdo_-W+yv7Rf77+G0wG6Dvit5dqZyhmPHpU+Qhbsm=Q@mail.gmail.com>
Subject: Re: [PATCH] core.5: document the %f and %C core_pattern specifiers
To: Oleksandr Natalenko <oleksandr@natalenko.name>
Cc: Alejandro Colomar <alx@kernel.org>, Emanuele Rocca <emanuele.rocca@arm.com>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-5259-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ythtnet@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: 2FED1289EE5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 1:29=E2=80=AFPM Oleksandr Natalenko
<oleksandr@natalenko.name> wrote:
>
> On p=C3=A1tek 13. b=C5=99ezna 2026 20:15:54, st=C5=99edoevropsk=C3=BD sta=
ndardn=C3=AD =C4=8Das Emanuele Rocca wrote:
> > Whilst going through the relevant kernel code in fs/coredump.c, I notic=
ed that
> > two core pattern specifiers supported by Linux are missing from man5/co=
re.5.
> > Document them now.
> >
> > Signed-off-by: Emanuele Rocca <emanuele.rocca@arm.com>
> > ---
> >  man/man5/core.5 | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> >
> > diff --git a/man/man5/core.5 b/man/man5/core.5
> > index 8c26aa07e..4da5819b6 100644
> > --- a/man/man5/core.5
> > +++ b/man/man5/core.5
> > @@ -154,6 +154,11 @@ A single % character.
> >  %c
> >  Core file size soft resource limit of crashing process (since Linux 2.=
6.24).
> >  .TP
> > +%C
> > +CPU the task ran on
> > +.\" commit 8603b6f58637ce196d68f7749633ea81af196d66
> > +(since Linux 6.2).
> > +.TP
>
> For this part:
>
> Acked-by: Oleksandr Natalenko <oleksandr@natalenko.name>
>
> Thank you.
>
> >  %d
> >  .\" Added in git commit 12a2b4b2241e318b4f6df31228e4272d2c2968a1
> >  Dump mode\[em]same as value returned by
> > @@ -179,6 +184,11 @@ Pathname of executable,
> >  with slashes (\[aq]/\[aq]) replaced by exclamation marks (\[aq]!\[aq])
> >  (since Linux 3.0).
> >  .TP
> > +%f
> > +Actual filename of executable, which may differ from %e
> > +.\" commit f38c85f1ba6902e4e2e2bf1b84edf065a904cdeb
> > +(since Linux 5.9).
> > +.TP
For this part:

Acked-by: Lepton Wu <ytht.net@gmail.com>

Thanks!
> >  %F
> >  PIDFD of dumped process
> >  .\" commit b5325b2a270fcaf7b2a9a0f23d422ca8a5a8bdea
> >
>
>
> --
> Oleksandr Natalenko, MSE

