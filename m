Return-Path: <linux-man+bounces-5690-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id e+KJDj6xRmr1bgsAu9opvQ
	(envelope-from <linux-man+bounces-5690-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 02 Jul 2026 20:43:10 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BE16FC3B8
	for <lists+linux-man@lfdr.de>; Thu, 02 Jul 2026 20:43:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=gsSp6aEf;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5690-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5690-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6017C307B646
	for <lists+linux-man@lfdr.de>; Thu,  2 Jul 2026 18:40:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A4253655DA;
	Thu,  2 Jul 2026 18:40:04 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDBA9356773
	for <linux-man@vger.kernel.org>; Thu,  2 Jul 2026 18:40:02 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783017604; cv=pass; b=RasBKxC3j35ksom8kG0oR0ZmSwFPovB8kvDTRxfJJGABPBDM2PfC2Efzlc299x85jx3Y3NP8z6cbgWXfXSHSxrpmergkkuPRSE6Ite4fOxmfTiYGGC4URUL4fbySJT19f2whCvz7H/ugugCzuOdvQ38pNogoQEjptAh20ES//tM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783017604; c=relaxed/simple;
	bh=aNYeCOJuMWpifumhfmWiiQml+4j64Op5VYjJmjfobeA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fIhNIoisb93Jvi90Ot7JuD6McGOwnXDlwOJJH08Epw5enKEIE1Ldn6FKB1ds3avs6fXn5scc+1UY7Q9Bbc9WqpyQLd0/rK22/ohUJvk8QvkLMChdEH8Cz1Gx1hQkwmJ0D4W9P4bKi5sO735FO0iwZqegmuXUuXtMmvEVNg2XG8A=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gsSp6aEf; arc=pass smtp.client-ip=209.85.217.49
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-7377dde7bc6so512796137.0
        for <linux-man@vger.kernel.org>; Thu, 02 Jul 2026 11:40:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783017602; cv=none;
        d=google.com; s=arc-20260327;
        b=k5GmyZxJNEP0a/+C4KPASuDYK99DT08plUO9yPxktODQJNfqo889rnzQx1+wDcFR2g
         UNPYdlMrwivJ+LbkqW/lY/2Mkli3iBfoqsHzbz94CasiGu5yZ42b5fLpYNG1JsvUQlKm
         NiAYxs03V2WSdPPXDMOqbWssTFLuUOm0AlUsh3dG8SPSl88cI7HoAUyzIlOVOYxdacV2
         L/fQYm06Q+3cE5oaDzdMwnvkmWpPOY9XyyI7tGqpjMOz2oiB5nSFqVz1k8QjZGAWGRxv
         0l2sJ0bfIUPXdB2sbsDss6LpXZjQ/Swo2nXkTnAey/aeso1GOcYJo+PlTnuxm+xAjsWu
         vyDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=TmhNw3L6RIGYZOctKp7vhdJCCb6kc6CFe9OkUmyo4gc=;
        fh=cXlsbC4aR9v5UZaEj5EmAyTHzc9v+PlVA11Y3ix8odI=;
        b=kAQpZGy0dkGZUOqLPAPi17j+LT6myeNJubbavCmZ35PQaFhj9XZuR8v6CIJ2Ws9q41
         wEePdUg9Sjyss4BVMabaqPN3D07yBQ9rNOO0Uq0z8hZ0S0gun39pPYd/WpQT10OapMM4
         CFmPN2DTXP6FHlPPjjuSlPIaDy+EynPpdPktIN2+rqfyU9WLnDCMGDf/lpkFflM1qeBc
         FBpimssvb9zx9oU1vmr1yPdu7OpmpnRWyJ4sSU3ceMGvK62APmwTcZRZS25MlFeSkbd9
         ebECKAKbXV05iJA6OwI2ieHgBlsUgZW9KtRebMybNB+Syz/aK53JlSUdmgzKZenWGBc/
         zYGw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783017602; x=1783622402; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TmhNw3L6RIGYZOctKp7vhdJCCb6kc6CFe9OkUmyo4gc=;
        b=gsSp6aEfknNlrSC4kI9izb0uxBWdZcL5hWY02nCrZOhuys6idcv3AmFN7SKM8umrDa
         gcV4IkuFkEP1ZnRRTg+dlSqkCgVyHA3/ir8z3l3bwUE9iuoxXmETutwxpGhcH2A4f8xw
         TFyv2dQo6DgY4yw2mpZSFkh51Si7G88LqSEBDN9PDrTEXevvkspxud11kSqMgMlNs1vz
         Xcgg49oJWm3aW+UFZe1Dt9EEzeWb9BnwBhcZ6XP4gRika/4Opi2ruwqYl8GjuClIc216
         VEX12RnLjrkMaEIqBrjUnPUgg+k0t9U0clboDot4C/13Gqbqxjpd0hCAXpVohGa2Lk0O
         q3ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783017602; x=1783622402;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TmhNw3L6RIGYZOctKp7vhdJCCb6kc6CFe9OkUmyo4gc=;
        b=RDw+br+znD7BemqXC3pj5MT5I9paDvU0v0cbrhbx9yIbngVP4FkrhzyyAmOcYuZWx4
         SVTDKdwfSllPJFZCOOWwY8jnoM+94HWnxWLJmdh0o26WJql1jW8wraa52KyORI+X3+4q
         tRzcluNgOMbTBKjatn11DHNkUJ6f1L+Nz8qpuPtomr+m3vrvNDsM+ZaqVl0GGMGczvuV
         0O/bkQhExfokQl4mtHjsztHKqsZoGgjlZiQnBolqqRJxTiLjKx+mPdfyafRxh3KpBvpM
         opLyzXOU+cXdLF4+ICsHehS0O5Q6BVdajZshqFsjETpgmdXsSfjjztqsS/YUpVnSFi4i
         PGsQ==
X-Gm-Message-State: AOJu0Yx7+q5zq/Y+bUi/7fIOcJCppmj7DQj0Ww78AvoxA6ry304fmxgB
	19SgYevp7NkH5Ksx1fGrLTPDuBTmUm0tACgbfhdwfysLCdbGnT8NvFvaxYr6XGQPgOjuQxzRp5P
	DT/pzs7KnXBbcoBT/tETcZSHisIwpxulA2g==
X-Gm-Gg: AfdE7cntOHsJJ7YwnTXLc5FEU+5y3H0kK8koIf97kYyRuZ86hACgsrlzla0acpcfB5Z
	1tQN7PblsLuOSsXLLnGFQbAkEx/FGuzJ0eIJ/j4pk8WNUsT8HnE767YA5Fej/jmPhCjVIYScSqo
	04I3jj+5GsVaRLKWJ0C2Q4GgLxuTre1wwKFcZiaHyTrLa3st+x54ri2J7uGZUlHCzau9bEcAiC7
	7veWKxX7UtfS1Vxi56bZtDLIg/72sU+l0qpZPvbn6cInNtGrHiup+gHFQRlL9zIlvdeL+pB9qQz
	/cPdzpAa4kyj7ILhEs0/DgWe4vlh
X-Received: by 2002:a67:f5c9:0:b0:631:4385:15cc with SMTP id
 ada2fe7eead31-73f64995ad9mr412479137.1.1783017601711; Thu, 02 Jul 2026
 11:40:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260426111707.36541-1-dorjoychy111@gmail.com>
 <20260426111707.36541-3-dorjoychy111@gmail.com> <akZPkMmKbyKsn3Jh@devuan>
In-Reply-To: <akZPkMmKbyKsn3Jh@devuan>
From: Dorjoy Chowdhury <dorjoychy111@gmail.com>
Date: Fri, 3 Jul 2026 00:39:51 +0600
X-Gm-Features: AVVi8Cd9zCPgyNOTvO4biRhhbWdw8RRjqGs4hwrrgqNyuVuIX0_Cxmtg71CDtFA
Message-ID: <CAFfO_h50it9J=n7EHFyd5A3KLvn2QTOO6cxTqw5s20h9z5fTQw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] man/man2/openat2.2: Document OPENAT2_REGULAR flag
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, brauner@kernel.org, jlayton@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:linux-man@vger.kernel.org,m:brauner@kernel.org,m:jlayton@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5690-lists,linux-man=lfdr.de];
	FORGED_SENDER(0.00)[dorjoychy111@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dorjoychy111@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 85BE16FC3B8

Hey Alex,

On Thu, Jul 2, 2026 at 5:47=E2=80=AFPM Alejandro Colomar <alx@kernel.org> w=
rote:
>
> Hi Dorjoy,
>
> On 2026-04-26T17:14:26+0600, Dorjoy Chowdhury wrote:
> > Signed-off-by: Dorjoy Chowdhury <dorjoychy111@gmail.com>
>
> Thanks!  I've applied the patch, with some minor changes and removals in
> the wording.  It's already pushed.
>

Thanks for fixing up and applying the patch!

Regards,
Dorjoy

