Return-Path: <linux-man+bounces-3361-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 357A0B1C961
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 17:56:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E35F189A235
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 15:56:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77E6F28D85D;
	Wed,  6 Aug 2025 15:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="Is1dhqOW"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71CDC3AC1C
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 15:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754495781; cv=none; b=mFB5vuIhIFmjzhvWssby27L63VnY8q+4nZbVXQgozREYHZLmm5VXaT8dUSQ8UxOqrXVgmJZIewxbUrHFZV6G3xw4K5cLC2y/edfhIsSS9jY+7w4isH1ZjlEri5YC+jFiugrn7FJvLn6S3GLkytYIoSvYekvWLOE8Gv5H1/iH/vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754495781; c=relaxed/simple;
	bh=ozHmFLF1+XbRJGr2c6Aoou2w93JCGjsmg6sZzPpKkb4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xr8ljAYtpJM/0uCoy1QjVQs16lVf8Fs1OwVlL3aJgv8s3dYBzu5+vc5G7MOY0Im+F6o0RcUcyNPIQtWNhNy3TVEwwONN5IPB9mddMr6NQYgxGI1JW+TplzPF/7fXjVUAVWQ8gE2YU1Hfygbtds8IdtQQxXjNgQ36cDr4QOHbwVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=Is1dhqOW; arc=none smtp.client-ip=80.241.56.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp102.mailbox.org (smtp102.mailbox.org [IPv6:2001:67c:2050:b231:465::102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4bxvzM2cdYz9tcl;
	Wed,  6 Aug 2025 17:56:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1754495775;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=wI/ftpZ0ppqxIBwyEhC638zucgqYJKu4XPbrwfMNgNU=;
	b=Is1dhqOWgk/yqfLYSqrYFiWlU2imHkL3/LXOgPjlwdkl/bqBIYuGlwn9bnFiLNQoysWshf
	veTIJJbundNdhMh42dFYPUU9cEVAEa5LsBR83gRsq7U1P9PCyY52EYj5NzwF3ShDbosv0h
	eXov88Aij2NTyTIzL61qXarKo74waQANxGG3PJr5AELkNpKgDXQeOV/FKK2wGXPtRAb8VH
	hV+T9fbOANr/smoD2uNFOlSESoplraqi0sMfOeuAJKqpQUABpw56k/YGmbt8j8rYe2xJpz
	lNRjm3F6Rky24xWERUZp+zaMKIjK+FdPyKJhRuUjci8GxKHcabh2Rc2/PpAUMw==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of cyphar@cyphar.com designates 2001:67c:2050:b231:465::102 as permitted sender) smtp.mailfrom=cyphar@cyphar.com
Date: Thu, 7 Aug 2025 01:56:03 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Askar Safin <safinaskar@zohomail.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>, brauner <brauner@kernel.org>, dhowells <dhowells@redhat.com>, 
	jack <jack@suse.cz>, linux-man <linux-man@vger.kernel.org>, 
	"mtk.manpages" <mtk.manpages@gmail.com>, viro <viro@zeniv.linux.org.uk>
Subject: Re: How and when to control hyphenation (was: [PATCH 05/10]
 fsconfig.2: document 'new' mount api)
Message-ID: <2025-08-06.1754495159-milky-sorcerer-initial-handbook-chief-sabers-600j6C@cyphar.com>
References: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
 <20250806074619.59685-1-safinaskar@zohomail.com>
 <20250806075021.ndodyx44xsyzxcu6@illithid>
 <2025-08-06.1754469395-mega-bleep-potent-sharpie-prepaid-quiz-2a9Vy3@cyphar.com>
 <20250806091157.ldpnbcbtik4eudjh@illithid>
 <k34wjawrqcq2aqohsovkca2kad3ba3kmg57zwvrzw4wujq62dg@rittgebtd6ev>
 <1987fc9ace9.ad1bf95b21215.9089923989658816796@zohomail.com>
 <nrs5g7ftfyft5oxyywxpfvqfzp2pz7aevpp2j3s2rlohg2cedi@ahriex4sfjbk>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aoyomrpitjqwsgqs"
Content-Disposition: inline
In-Reply-To: <nrs5g7ftfyft5oxyywxpfvqfzp2pz7aevpp2j3s2rlohg2cedi@ahriex4sfjbk>
X-Rspamd-Queue-Id: 4bxvzM2cdYz9tcl


--aoyomrpitjqwsgqs
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: How and when to control hyphenation (was: [PATCH 05/10]
 fsconfig.2: document 'new' mount api)
MIME-Version: 1.0

On 2025-08-06, Alejandro Colomar <alx@kernel.org> wrote:
> I've also worked on a build system that will help you with diagnostics
> if you make mistakes.  Please run 'make -R help' to see what it has to
> offer.  'make -R lint-man' is the most obvious thing one should run to
> verify their manual-page patches.

Maybe it's just me, but I was confused by the output of "make -R help".
It wasn't clear to me the first few times I read it that the output is
telling me to run

  $ make -R -p nothing \
          | grep '^\.PHONY:' \
          | tr ' ' '\n' \
          | grep -v '^\.PHONY:' \
          | sort;

in order to get a list of make targets (and is actually a generic way of
getting a list of make targets). Would it be possible for "make -R help"
to have a pre-defined list of the most common commands to run, like the
kernel makefile does?

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
https://www.cyphar.com/

--aoyomrpitjqwsgqs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS2TklVsp+j1GPyqQYol/rSt+lEbwUCaJN7EgAKCRAol/rSt+lE
b6zKAQDLUAzGvWXg3DqSxPBs2M6qfeVhrtAjkIRFAgxMNYISeQD8D4hytzZLzCrP
QQjxtnfiEv5Rn0tDFkRVbbkzCgpZTwk=
=jc8U
-----END PGP SIGNATURE-----

--aoyomrpitjqwsgqs--

