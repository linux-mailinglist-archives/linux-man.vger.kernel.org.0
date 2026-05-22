Return-Path: <linux-man+bounces-5563-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBNjCY6wD2rmOgYAu9opvQ
	(envelope-from <linux-man+bounces-5563-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 03:25:34 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9B65ADA97
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 03:25:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E57573002F84
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 01:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47DE023D281;
	Fri, 22 May 2026 01:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jAHaA1kM"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77B571E5207
	for <linux-man@vger.kernel.org>; Fri, 22 May 2026 01:24:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779413054; cv=pass; b=FKwLIvVlUtYqH4JxD/GCHaD3GRqKRqC6M84dFRJe3XouDQB1whdneSpws2MODq/57sypJRCApWlDz6WywbH6rJaasKqDdGmHC4DCDHns5BdtcAwf5T8Is/lw/VHSluXD2bVwQs2zQv6AviACjCvdnuRN11wOktSrUh2qSZqpNck=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779413054; c=relaxed/simple;
	bh=Lhu/GqatGHztqJOlykLk6UAQzpVZGm1nJ9jg2KOYgsI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Content-Type; b=hILkv4g5oneYWU1MmC90jnqOnGrAhLkroV0cAVcmemuFdlW1TbeTBkSkLkpDSLV9N9QWE3unUujmXdrSRDfFv3W9DHBzSB++LR3izcZzj1VRnY205mRdgwJxV88LDvHMH0o2fA8Da5809bbR0JL1NWsssy1mwIi1wovFC0FeFFs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jAHaA1kM; arc=pass smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-bd11a3729e8so1063990266b.0
        for <linux-man@vger.kernel.org>; Thu, 21 May 2026 18:24:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779413050; cv=none;
        d=google.com; s=arc-20240605;
        b=gEFqIE4B48oBhbp1DkIjclzD8xTTQW8azOdvO3seL/CPwTSD2GUgnd5ga7l5Uw4mfF
         HDWuGsUqRWuHoGkZvsYgyieHJdETA8IRav3n88jirGDvTN8Cpb52SZYMRDXPZWzF0V6E
         Td3bBRTWSeRcJl+J0IGV6clfE/zPUL29h/UEAgkHWcmqS2Ndb/De4M0gHpNW6j9kEICP
         WnX5wzKsT4SQl2nP4EEy4qGyjyDSgN7iEzKQS0JzlTHtq0llXJmP19k2ejl/FgrxHD85
         4mU/qRjJXt+gqKPrXfPVJPk5JDods/iVmluVqRMiVpZ5dsjpkk2aFTdo/wMGBkhTBMZY
         HvKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Lhu/GqatGHztqJOlykLk6UAQzpVZGm1nJ9jg2KOYgsI=;
        fh=OclAtLKJTQTIvPXBcbgjquIcuF1L0TED2I15vb2Dds8=;
        b=grGv1Lh2BFU0edCTHgHSUCZ6ieKqETHmPazrl1ADZ6ieNwFjGZ52ndq7rEBjiZyy6G
         2qjiFpnnfT0sdD4oEHU5OwAU1OyGnxxSjKvylHedUflV4vSIlfA4uF8wyA46EdWyNPEt
         GNLxDhfNQQG75khLaxE6/07H8iyWbW+r7xuxFGA548H/IhLwFFyKnRFPkvgh2Q5pE4JN
         IWPG1AZxoSTADMotd7yMXzGl4QME+OD0jSMpnF3XOv4Lz6dqfYLDnJarpf28GO+HQ4Vi
         UA2nBv7cDv+jH+dQODkBcEhpIFJXhaQvxqjOMp+uLav4fRipunhiddD6cnVCa8wt/2JR
         gp7w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779413050; x=1780017850; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lhu/GqatGHztqJOlykLk6UAQzpVZGm1nJ9jg2KOYgsI=;
        b=jAHaA1kMOMlMsU7xhTRCAOJah7Z6Wo+OtFFYrlJeBrqKTACevVel7ZmT3E2HRw8yOt
         I8sxXgzVKbTRegUWjGPTYWn4Nw0jkypYevJ5JVX3Zz8vu5Yl67RTCWtwYVEfm5nu3eVO
         O54ub+jPF4QCM6g+3UoZNeweaiDQzIWpAYFJSM1mgZGY9QuEF9BEw9Zy79EJr7+Q0h74
         h9GvKgFqMjAL+W01vyhALFdKNyGHbefrYtGWIaZsF81MlIDstS8iBJERd0/T4MA/HPuV
         Xh7l3htIsvI2CN5NIpKulKs681YgfQsBu8bUP1I+hODWUekfuFLib3nuQ+9XB0tuyoUe
         +UCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779413050; x=1780017850;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Lhu/GqatGHztqJOlykLk6UAQzpVZGm1nJ9jg2KOYgsI=;
        b=M4DxdZf8yfm9bpQreVOBBVGr6S0RKsyIACiBoEutOh8EhcX6kuMDOK4YwKJUOIIJpm
         /FxtO6UQ0nValq6oWyIZ9hSq1GAMcUeXvr0E4y8sOx0LmC1oWcSg+X2esrEgAsxf+QWT
         6cMdZzN+IomX97a7w0LU1AauCwsLKOt8sKGIVsCeJxPpufThHG9Ade//6f83BX8ts/CK
         rMQC4ts90utkQK/v78pRK1DgNQTl6gng5l/+svbig3EQuOmthrVMcZhvwdR2SZoHqhmZ
         Kopr7hWHMdMpIiX7+ieWpcmcQY7wKKQNN2YC0dxopfqsIkdOo9VYaGIhrmMrVGtGRqe/
         HdAg==
X-Gm-Message-State: AOJu0YytASywJAVgkX+DkXggEdw2Ib78nXCbk0y2HPUAzvx0hestDVyh
	qTZlk5w0MTds0EE1jCUJl9WYUGxXO2igmQ8sYyi3LN55ApmilP1kWYTytDdLVDGaensmRgE+s47
	F3M4BWpfBIkAqCpPAv8Fj0S2ZJtoSkVsdYWGuDhs41g==
X-Gm-Gg: Acq92OGehTVzuIYX02pncCxdr+wArnpFPGi1RsdFnca9QR59ZNGG+K5X/m6Gxd7p03y
	gy24FmGa5H8C+mVEsnQ5TQbKyp0jxs8gILrCIX6HH3SVqWxUbKPHwy69wMzp5faAj2xm73AqA3N
	jxJ6AUe8gz851vUE/0/gupUoVKVELnoNsMED0LPw1TRIcRGRgNb6vSkkTCGm+NRcVPYMebAe33h
	YXnW12ygPaHb445hW0eVwmqBhtbhIA9ANV7u1U7eSHcyjxxg1d1QNkKRU9LGeSJ5s8iMnz9v43b
	i5RiwtAhsU/dlHgdFOWHkRyiSomRhiQ1VLvXoZ78lI+DWy4AVepFPTYG1DINhCBVIlg=
X-Received: by 2002:a17:907:9285:b0:ba4:94f8:4df with SMTP id
 a640c23a62f3a-bdd235ffe60mr90687266b.17.1779413049894; Thu, 21 May 2026
 18:24:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CADDzAfOZqQgVdEdn5skkkGPzUf7XiOGnmA0w7HZMkcQTpE7VKw@mail.gmail.com>
In-Reply-To: <CADDzAfOZqQgVdEdn5skkkGPzUf7XiOGnmA0w7HZMkcQTpE7VKw@mail.gmail.com>
From: Kang-Che Sung <explorer09@gmail.com>
Date: Fri, 22 May 2026 09:23:55 +0800
X-Gm-Features: AVHnY4ILYx6qwI5quUsGSvF7exLCqLdYfkrxvKJGjxPptu6ZUTXMY1ns_tveI-A
Message-ID: <CADDzAfPRptY_yTxVAL-5vmqf01UMdmnMLL6f3ocTm1kTXC+keg@mail.gmail.com>
Subject: Fwd: mbrtowc(3) state after an invalid sequence "undefined" or "unspecified"?
To: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-1.16 / 15.00];
	SUBJECT_ENDS_QUESTION(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5563-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	FREEMAIL_FROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[explorer09@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 7E9B65ADA97
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

---------- Forwarded message ---------
From: Kang-Che Sung <explorer09@gmail.com>
Date: Thu, May 21, 2026 at 11:08=E2=80=AFPM
Subject: mbrtowc(3) state after an invalid sequence "undefined" or
"unspecified"?
To: Alejandro Colomar <alx@kernel.org>
Cc: <linux-man@vger.kernel.org>, <libc-alpha@sourceware.org>


Hi, Alejandro (or anyone else interested),

There's a discrepancy in the wording of the mbrtowc(3) function (and
similarly, mbsrtowcs(3) function) between in POSIX and ISO C. It could
be reported as an issue to POSIX (the Austin Group), and I am not sure
if you can do that.

In ISO C (I checked in both C99 and C23, in particular the N3220
draft), there's a statement that if mbrtowc() returns a (size_t)(-1)
as an encoding error occurs, "the conversion state is unspecified".

POSIX (see <https://pubs.opengroup.org/onlinepubs/9799919799/functions/mbrt=
owc.html>),
for the same part it says "the conversion state is undefined".

This wording difference matters when the "unspecified behavior" and
"undefined behavior" are technically different. An example is how the
mbstate_t object can be reused after an invalid sequence is
encountered. When the state is said to be "undefined" it's implied to
be not usable again (unless it is reset, e.g., by an `mbrtowc(NULL,
"", 1, ps)` call). When it's "unspecified" then implementations can
allow the state to be reused for certain encodings (possible for
UTF-8, for example).

This is something I discovered accidentally when researching the
multibyte functions in the C standard library and how they work with
an encoding like UTF-8.

